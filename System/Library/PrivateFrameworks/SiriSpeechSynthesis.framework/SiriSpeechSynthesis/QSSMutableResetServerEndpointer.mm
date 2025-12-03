@interface QSSMutableResetServerEndpointer
- (QSSMutableResetServerEndpointer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)speech_packet_count;
- (void)setSpeech_packet_count:(int64_t)speech_packet_count;
@end

@implementation QSSMutableResetServerEndpointer

- (void)setSpeech_packet_count:(int64_t)speech_packet_count
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:speech_packet_count];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)speech_packet_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_packet_count"];
  longValue = [v2 longValue];

  return longValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableResetServerEndpointer)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableResetServerEndpointer;
  v2 = [(QSSMutableResetServerEndpointer *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end