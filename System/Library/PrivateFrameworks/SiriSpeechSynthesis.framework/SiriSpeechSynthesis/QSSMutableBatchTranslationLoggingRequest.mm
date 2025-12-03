@interface QSSMutableBatchTranslationLoggingRequest
- (QSSMutableBatchTranslationLoggingRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)time_to_first_response;
- (int)time_to_page_complete;
- (int)time_to_viewport_complete;
- (void)setSession_id:(id)session_id;
@end

@implementation QSSMutableBatchTranslationLoggingRequest

- (int)time_to_page_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_page_complete"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)time_to_viewport_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_viewport_complete"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)time_to_first_response
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_first_response"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
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

- (QSSMutableBatchTranslationLoggingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationLoggingRequest;
  v2 = [(QSSMutableBatchTranslationLoggingRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end