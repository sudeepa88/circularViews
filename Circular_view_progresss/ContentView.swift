//
//  ContentView.swift
//  Circular_view_progresss
//
//  Created by sudeepa pal on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
        ZStack{
           
            
            
            HStack{
                
            }.frame(width:390, height:230)
                .overlay(RoundedRectangle(cornerRadius:40).fill(Color(red:0, green: 0.14901960784313725, blue:0.2784313725490196))
                    .shadow(color:.gray, radius:8, x:8, y:8))
            
            HStack{
                Text("Goal Reached")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
            }.frame(height:210,alignment:.top)
            
            ZStack{
                
                Circle().trim(from: 0, to: 0.5) // 1
                                .stroke(
                                    Color(red:0.8509803921568627, green: 0.8509803921568627, blue: 0.8509803921568627),
                                    lineWidth: 30
                                ).rotationEffect(.degrees(180))
                
                Circle().trim(from: 0, to: 0.10) // 1
                                .stroke(
                                    Color(red:252/255, green:176/255, blue:0/255),
                                    lineWidth: 32
                                ).rotationEffect(.degrees(180))

                
            }.frame(width:160, height:200)
                .padding(.top,55)
                .padding(.trailing,85)
            
            
            HStack{
                Text("40%")
                    .font(.system(size:25).bold())
                    .foregroundColor(.white)
            }.padding(.trailing,75)
            
            VStack{
                VStack{
                    Text("EMG")
                        .font(.system(size:14))
                        .padding(.trailing,30)
                    
                    HStack(spacing:-4){
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                    }.rotationEffect(.degrees(170))
                            
                            
                        
                    
                    
                }.frame(width:75, height:45, alignment:.topLeading)
                    .background(Color.white)
                    .cornerRadius(10)
                    //this Vstack is for emg
                
                VStack{
                    Text("ROM")
                        .font(.system(size:14))
                        .padding(.trailing,30)
                    HStack(spacing:-4){
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                        Image(systemName:"waveform.path.ecg")
                            .frame(height:4)
                            .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                    }.rotationEffect(.degrees(6))
                    
                    
                    
                    
                }.frame(width:75, height:45, alignment:.topLeading)
                    .background(Color.white)
                    .cornerRadius(10)//this VStack is for ROM
            }.padding(.leading,240)
            
            
        }//end of a ZStack
        }//main vstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
