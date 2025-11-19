@interface FTMutableStartSpeechTranslationRequest
- (BOOL)restricted_mode;
- (BOOL)streaming_mode;
- (FTMutableStartSpeechTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)a3;
- (void)setConversation_id:(id)a3;
- (void)setOpt_in_status:(int64_t)a3;
- (void)setOptions:(id)a3;
- (void)setRequest_id:(id)a3;
- (void)setStart_speech_request:(id)a3;
- (void)setText_to_speech_requests:(id)a3;
- (void)setTranslation_locale_pairs:(id)a3;
- (void)setTranslation_request:(id)a3;
@end

@implementation FTMutableStartSpeechTranslationRequest

- (FTMutableStartSpeechTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartSpeechTranslationRequest;
  v2 = [(FTMutableStartSpeechTranslationRequest *)&v6 init];
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

- (void)setConversation_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_locale_pairs:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_request:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText_to_speech_requests:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)restricted_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"restricted_mode"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setApp_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)opt_in_status
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"opt_in_status"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setOpt_in_status:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)streaming_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"streaming_mode"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setOptions:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end