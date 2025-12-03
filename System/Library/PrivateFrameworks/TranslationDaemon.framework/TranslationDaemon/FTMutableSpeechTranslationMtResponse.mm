@interface FTMutableSpeechTranslationMtResponse
- (BOOL)contains_masked_profanity;
- (BOOL)is_final;
- (FTMutableSpeechTranslationMtResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setAlternative_descriptions:(id)alternative_descriptions;
- (void)setConversation_id:(id)conversation_id;
- (void)setN_best_translated_phrases:(id)n_best_translated_phrases;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_str:(id)return_str;
- (void)setTranslation_locale_pair:(id)translation_locale_pair;
@end

@implementation FTMutableSpeechTranslationMtResponse

- (FTMutableSpeechTranslationMtResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationMtResponse;
  v2 = [(FTMutableSpeechTranslationMtResponse *)&v6 init];
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

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_locale_pair:(id)translation_locale_pair
{
  v4 = [translation_locale_pair copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setN_best_translated_phrases:(id)n_best_translated_phrases
{
  v4 = [n_best_translated_phrases copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_final
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_final"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAlternative_descriptions:(id)alternative_descriptions
{
  v4 = [alternative_descriptions copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)contains_masked_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"contains_masked_profanity"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end