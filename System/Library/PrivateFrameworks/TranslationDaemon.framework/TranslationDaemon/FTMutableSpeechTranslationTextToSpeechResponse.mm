@interface FTMutableSpeechTranslationTextToSpeechResponse
- (FTMutableSpeechTranslationTextToSpeechResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConversation_id:(id)conversation_id;
- (void)setRequest_id:(id)request_id;
- (void)setTarget_locale:(id)target_locale;
- (void)setText_to_speech_response:(id)text_to_speech_response;
@end

@implementation FTMutableSpeechTranslationTextToSpeechResponse

- (FTMutableSpeechTranslationTextToSpeechResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationTextToSpeechResponse;
  v2 = [(FTMutableSpeechTranslationTextToSpeechResponse *)&v6 init];
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

- (void)setTarget_locale:(id)target_locale
{
  v4 = [target_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText_to_speech_response:(id)text_to_speech_response
{
  v4 = [text_to_speech_response copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end