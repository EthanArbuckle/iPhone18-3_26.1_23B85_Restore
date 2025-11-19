@interface SAUIAudioDescription(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SAUIAudioDescription(VSAceObjectUtility)

- (id)vsDescription
{
  v2 = [a1 formatID];
  v3 = [v2 intValue];

  v4 = HIBYTE(v3);
  v5 = MEMORY[0x277CCACA8];
  v6 = BYTE2(v3);
  v7 = BYTE1(v3);
  v8 = v3;
  v9 = [a1 sampleRate];
  [v9 floatValue];
  v11 = v10;
  v12 = [a1 bitsPerChannel];
  v13 = [v12 intValue];
  v14 = [a1 framesPerPacket];
  v15 = [v5 stringWithFormat:@"'%c%c%c%c', %.0fhz, %d bits, %d FPP, ", v4, v6, v7, v8, *&v11, v13, objc_msgSend(v14, "intValue")];

  return v15;
}

@end