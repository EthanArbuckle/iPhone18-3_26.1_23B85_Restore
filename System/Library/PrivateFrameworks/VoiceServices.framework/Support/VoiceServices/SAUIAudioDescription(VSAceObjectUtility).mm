@interface SAUIAudioDescription(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SAUIAudioDescription(VSAceObjectUtility)

- (id)vsDescription
{
  formatID = [self formatID];
  intValue = [formatID intValue];

  v4 = HIBYTE(intValue);
  v5 = MEMORY[0x277CCACA8];
  v6 = BYTE2(intValue);
  v7 = BYTE1(intValue);
  v8 = intValue;
  sampleRate = [self sampleRate];
  [sampleRate floatValue];
  v11 = v10;
  bitsPerChannel = [self bitsPerChannel];
  intValue2 = [bitsPerChannel intValue];
  framesPerPacket = [self framesPerPacket];
  v15 = [v5 stringWithFormat:@"'%c%c%c%c', %.0fhz, %d bits, %d FPP, ", v4, v6, v7, v8, *&v11, intValue2, objc_msgSend(framesPerPacket, "intValue")];

  return v15;
}

@end