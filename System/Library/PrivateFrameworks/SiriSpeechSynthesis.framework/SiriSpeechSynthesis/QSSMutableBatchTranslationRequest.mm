@interface QSSMutableBatchTranslationRequest
- (QSSMutableBatchTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)app_id;
- (void)setOpt_in_status:(int64_t)opt_in_status;
- (void)setParagraphs:(id)paragraphs;
- (void)setRequest_id:(id)request_id;
- (void)setSession_id:(id)session_id;
- (void)setSource_language:(id)source_language;
- (void)setTarget_language:(id)target_language;
- (void)setTask:(id)task;
- (void)setUrl:(id)url;
@end

@implementation QSSMutableBatchTranslationRequest

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

- (void)setUrl:(id)url
{
  v4 = [url copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApp_id:(id)app_id
{
  v4 = [app_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParagraphs:(id)paragraphs
{
  v4 = [paragraphs copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableBatchTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationRequest;
  v2 = [(QSSMutableBatchTranslationRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end