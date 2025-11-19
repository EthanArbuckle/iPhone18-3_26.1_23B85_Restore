@interface OPTTSMutableTextToSpeechRequestDebug
- (BOOL)disable_cache;
- (BOOL)force_use_tts_service;
- (OPTTSMutableTextToSpeechRequestDebug)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OPTTSMutableTextToSpeechRequestDebug

- (BOOL)disable_cache
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_cache"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)force_use_tts_service
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"force_use_tts_service"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRequestDebug)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestDebug;
  v2 = [(OPTTSMutableTextToSpeechRequestDebug *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end