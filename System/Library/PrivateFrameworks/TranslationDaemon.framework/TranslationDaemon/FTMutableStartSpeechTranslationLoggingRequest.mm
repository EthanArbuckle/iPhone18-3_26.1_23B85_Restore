@interface FTMutableStartSpeechTranslationLoggingRequest
- (FTMutableStartSpeechTranslationLoggingRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConversation_id:(id)conversation_id;
- (void)setDetected_locale:(id)detected_locale;
- (void)setRequest_id:(id)request_id;
- (void)setSenses:(id)senses;
- (void)setTranslation_locale_pair:(id)translation_locale_pair;
- (void)setUser_interacted_senses:(id)user_interacted_senses;
- (void)setUser_selected_locale:(id)user_selected_locale;
- (void)setUser_selected_sense:(id)user_selected_sense;
@end

@implementation FTMutableStartSpeechTranslationLoggingRequest

- (FTMutableStartSpeechTranslationLoggingRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartSpeechTranslationLoggingRequest;
  v2 = [(FTMutableStartSpeechTranslationLoggingRequest *)&v6 init];
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

- (void)setTranslation_locale_pair:(id)translation_locale_pair
{
  v4 = [translation_locale_pair copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDetected_locale:(id)detected_locale
{
  v4 = [detected_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_selected_locale:(id)user_selected_locale
{
  v4 = [user_selected_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSenses:(id)senses
{
  v4 = [senses copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_selected_sense:(id)user_selected_sense
{
  v4 = [user_selected_sense copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_interacted_senses:(id)user_interacted_senses
{
  v4 = [user_interacted_senses copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end