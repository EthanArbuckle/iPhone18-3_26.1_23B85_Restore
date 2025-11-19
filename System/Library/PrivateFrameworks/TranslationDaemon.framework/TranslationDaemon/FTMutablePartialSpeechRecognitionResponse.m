@interface FTMutablePartialSpeechRecognitionResponse
- (BOOL)is_stable_result;
- (FTMutablePartialSpeechRecognitionResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)audio_duration_ms;
- (int)confidence;
- (int)return_code;
- (void)setLanguage:(id)a3;
- (void)setRecognition_text:(id)a3;
- (void)setRequest_locale:(id)a3;
- (void)setReturn_str:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
@end

@implementation FTMutablePartialSpeechRecognitionResponse

- (FTMutablePartialSpeechRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutablePartialSpeechRecognitionResponse;
  v2 = [(FTMutablePartialSpeechRecognitionResponse *)&v6 init];
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

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setReturn_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRecognition_text:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_stable_result
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_stable_result"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)audio_duration_ms
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_duration_ms"];
  v3 = [v2 intValue];

  return v3;
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setLanguage:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_locale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end