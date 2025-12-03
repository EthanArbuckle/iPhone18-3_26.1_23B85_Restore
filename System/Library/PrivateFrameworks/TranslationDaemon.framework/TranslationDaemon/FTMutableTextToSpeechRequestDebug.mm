@interface FTMutableTextToSpeechRequestDebug
- (BOOL)disable_cache;
- (BOOL)force_use_tts_service;
- (FTMutableTextToSpeechRequestDebug)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FTMutableTextToSpeechRequestDebug

- (FTMutableTextToSpeechRequestDebug)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechRequestDebug;
  v2 = [(FTMutableTextToSpeechRequestDebug *)&v6 init];
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

- (BOOL)force_use_tts_service
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"force_use_tts_service"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)disable_cache
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_cache"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end