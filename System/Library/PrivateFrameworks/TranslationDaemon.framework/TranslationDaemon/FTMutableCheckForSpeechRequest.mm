@interface FTMutableCheckForSpeechRequest
- (FTMutableCheckForSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)end_speech_time;
- (int64_t)start_speech_time;
- (void)setEnd_speech_time:(int64_t)end_speech_time;
- (void)setStart_speech_time:(int64_t)start_speech_time;
@end

@implementation FTMutableCheckForSpeechRequest

- (FTMutableCheckForSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableCheckForSpeechRequest;
  v2 = [(FTMutableCheckForSpeechRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (int64_t)start_speech_time
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_speech_time"];
  longValue = [v2 longValue];

  return longValue;
}

- (void)setStart_speech_time:(int64_t)start_speech_time
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:start_speech_time];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)end_speech_time
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_speech_time"];
  longValue = [v2 longValue];

  return longValue;
}

- (void)setEnd_speech_time:(int64_t)end_speech_time
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:end_speech_time];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end