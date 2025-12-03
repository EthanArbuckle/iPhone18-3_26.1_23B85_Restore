@interface QSSMutableTranslationRequest
- (BOOL)disable_log;
- (QSSMutableTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)app_id;
- (void)setOpt_in_status:(int64_t)opt_in_status;
- (void)setRequest_id:(id)request_id;
- (void)setSequence_id:(id)sequence_id;
- (void)setSiri_payload_translation_info:(id)siri_payload_translation_info;
- (void)setSiri_translation_info:(id)siri_translation_info;
- (void)setSource_language:(id)source_language;
- (void)setSpeech_id:(id)speech_id;
- (void)setSpeech_translation_info:(id)speech_translation_info;
- (void)setTarget_language:(id)target_language;
- (void)setTask:(id)task;
- (void)setTranslation_phrase:(id)translation_phrase;
- (void)setUse_case:(id)use_case;
- (void)setWeb_translation_info:(id)web_translation_info;
@end

@implementation QSSMutableTranslationRequest

- (void)setUse_case:(id)use_case
{
  v4 = [use_case copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApp_id:(id)app_id
{
  v4 = [app_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOpt_in_status:(int64_t)opt_in_status
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:opt_in_status];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)opt_in_status
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"opt_in_status"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)disable_log
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_log"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setWeb_translation_info:(id)web_translation_info
{
  v4 = [web_translation_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSequence_id:(id)sequence_id
{
  v4 = [sequence_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSiri_payload_translation_info:(id)siri_payload_translation_info
{
  v4 = [siri_payload_translation_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_translation_info:(id)speech_translation_info
{
  v4 = [speech_translation_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSiri_translation_info:(id)siri_translation_info
{
  v4 = [siri_translation_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_phrase:(id)translation_phrase
{
  v4 = [translation_phrase copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_language:(id)target_language
{
  v4 = [target_language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_language:(id)source_language
{
  v4 = [source_language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask:(id)task
{
  v4 = [task copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTranslationRequest;
  v2 = [(QSSMutableTranslationRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end