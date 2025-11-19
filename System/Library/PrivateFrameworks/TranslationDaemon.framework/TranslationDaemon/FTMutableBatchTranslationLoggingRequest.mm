@interface FTMutableBatchTranslationLoggingRequest
- (FTMutableBatchTranslationLoggingRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)time_to_first_response;
- (int)time_to_page_complete;
- (int)time_to_viewport_complete;
- (void)setSession_id:(id)a3;
@end

@implementation FTMutableBatchTranslationLoggingRequest

- (FTMutableBatchTranslationLoggingRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationLoggingRequest;
  v2 = [(FTMutableBatchTranslationLoggingRequest *)&v6 init];
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

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)time_to_first_response
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_first_response"];
  v3 = [v2 intValue];

  return v3;
}

- (int)time_to_viewport_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_viewport_complete"];
  v3 = [v2 intValue];

  return v3;
}

- (int)time_to_page_complete
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"time_to_page_complete"];
  v3 = [v2 intValue];

  return v3;
}

@end