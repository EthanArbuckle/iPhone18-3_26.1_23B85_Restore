@interface SNSpeechPacket
- (NSString)description;
- (SNSpeechPacket)init;
@end

@implementation SNSpeechPacket

- (SNSpeechPacket)init
{
  v6.receiver = self;
  v6.super_class = SNSpeechPacket;
  v2 = [(SNSpeechPacket *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SNSpeechPacketInternal);
    underlyingSpeechPacket = v2->_underlyingSpeechPacket;
    v2->_underlyingSpeechPacket = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SNSpeechPacket;
  v4 = [(SNSpeechPacket *)&v9 description];
  v5 = [(SNSpeechPacket *)self packetNumber];
  v6 = [(SNSpeechPacket *)self packets];
  v7 = [v3 stringWithFormat:@"%@ packet number: %ld count: %ld", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end