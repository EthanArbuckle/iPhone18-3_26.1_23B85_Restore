@interface SiriCoreSpeechPacket
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriCoreSpeechPacket

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  packets = [(SiriCoreSpeechPacket *)self packets];
  [v4 setPackets:packets];

  [v4 setPacketNumber:{-[SiriCoreSpeechPacket packetNumber](self, "packetNumber")}];
  refId = [(SiriCoreSpeechPacket *)self refId];
  [v4 setRefId:refId];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SiriCoreSpeechPacket;
  v4 = [(SiriCoreSpeechPacket *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ packet number: %ld count: %ld", v4, self->_packetNumber, -[NSArray count](self->_packets, "count")];

  return v5;
}

@end