@interface FTMutableResetServerEndpointer
- (FTMutableResetServerEndpointer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)speech_packet_count;
- (void)setSpeech_packet_count:(int64_t)a3;
@end

@implementation FTMutableResetServerEndpointer

- (FTMutableResetServerEndpointer)init
{
  v6.receiver = self;
  v6.super_class = FTMutableResetServerEndpointer;
  v2 = [(FTMutableResetServerEndpointer *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (int64_t)speech_packet_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_packet_count"];
  v3 = [v2 longValue];

  return v3;
}

- (void)setSpeech_packet_count:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end