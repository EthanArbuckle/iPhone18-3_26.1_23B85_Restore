@interface FTMutableTranslationResponse
- (BOOL)final_message;
- (FTMutableTranslationResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setAlternative_descriptions:(id)alternative_descriptions;
- (void)setEngine_input:(id)engine_input;
- (void)setEngine_output:(id)engine_output;
- (void)setN_best_translated_phrases:(id)n_best_translated_phrases;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_string:(id)return_string;
- (void)setSequence_id:(id)sequence_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation FTMutableTranslationResponse

- (FTMutableTranslationResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationResponse;
  v2 = [(FTMutableTranslationResponse *)&v6 init];
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

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
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

- (void)setReturn_string:(id)return_string
{
  v4 = [return_string copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setN_best_translated_phrases:(id)n_best_translated_phrases
{
  v4 = [n_best_translated_phrases copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEngine_input:(id)engine_input
{
  v4 = [engine_input copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEngine_output:(id)engine_output
{
  v4 = [engine_output copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSequence_id:(id)sequence_id
{
  v4 = [sequence_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)final_message
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"final_message"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAlternative_descriptions:(id)alternative_descriptions
{
  v4 = [alternative_descriptions copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end