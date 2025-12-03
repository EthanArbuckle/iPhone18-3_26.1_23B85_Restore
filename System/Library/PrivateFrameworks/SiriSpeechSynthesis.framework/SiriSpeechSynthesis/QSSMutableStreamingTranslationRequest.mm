@interface QSSMutableStreamingTranslationRequest
- (BOOL)disable_log;
- (BOOL)final_message;
- (QSSMutableStreamingTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)app_id;
- (void)setOpt_in_status:(int64_t)opt_in_status;
- (void)setRequest_id:(id)request_id;
- (void)setSequence_id:(id)sequence_id;
- (void)setSource_language:(id)source_language;
- (void)setSpeech_id:(id)speech_id;
- (void)setTarget_language:(id)target_language;
- (void)setTask:(id)task;
- (void)setTranslation_text:(id)translation_text;
@end

@implementation QSSMutableStreamingTranslationRequest

- (BOOL)final_message
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"final_message"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)setSequence_id:(id)sequence_id
{
  v4 = [sequence_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_text:(id)translation_text
{
  v4 = [translation_text copy];
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

- (QSSMutableStreamingTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStreamingTranslationRequest;
  v2 = [(QSSMutableStreamingTranslationRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end