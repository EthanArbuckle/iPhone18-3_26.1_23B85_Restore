@interface SiriCoreSpeechPacket
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SiriCoreSpeechPacket

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(SiriCoreSpeechPacket *)self packets];
  [v4 setPackets:v5];

  [v4 setPacketNumber:{-[SiriCoreSpeechPacket packetNumber](self, "packetNumber")}];
  v6 = [(SiriCoreSpeechPacket *)self refId];
  [v4 setRefId:v6];

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