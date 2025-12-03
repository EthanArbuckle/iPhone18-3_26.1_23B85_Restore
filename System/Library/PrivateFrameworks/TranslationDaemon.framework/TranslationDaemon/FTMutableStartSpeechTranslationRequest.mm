@interface FTMutableStartSpeechTranslationRequest
- (BOOL)restricted_mode;
- (BOOL)streaming_mode;
- (FTMutableStartSpeechTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)app_id;
- (void)setConversation_id:(id)conversation_id;
- (void)setOpt_in_status:(int64_t)opt_in_status;
- (void)setOptions:(id)options;
- (void)setRequest_id:(id)request_id;
- (void)setStart_speech_request:(id)start_speech_request;
- (void)setText_to_speech_requests:(id)text_to_speech_requests;
- (void)setTranslation_locale_pairs:(id)translation_locale_pairs;
- (void)setTranslation_request:(id)translation_request;
@end

@implementation FTMutableStartSpeechTranslationRequest

- (FTMutableStartSpeechTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartSpeechTranslationRequest;
  v2 = [(FTMutableStartSpeechTranslationRequest *)&v6 init];
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

- (void)setConversation_id:(id)conversation_id
{
  v4 = [conversation_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_locale_pairs:(id)translation_locale_pairs
{
  v4 = [translation_locale_pairs copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)start_speech_request
{
  v4 = [start_speech_request copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_request:(id)translation_request
{
  v4 = [translation_request copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText_to_speech_requests:(id)text_to_speech_requests
{
  v4 = [text_to_speech_requests copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)restricted_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"restricted_mode"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setApp_id:(id)app_id
{
  v4 = [app_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)opt_in_status
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"opt_in_status"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setOpt_in_status:(int64_t)opt_in_status
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:opt_in_status];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)streaming_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"streaming_mode"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setOptions:(id)options
{
  v4 = [options copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end