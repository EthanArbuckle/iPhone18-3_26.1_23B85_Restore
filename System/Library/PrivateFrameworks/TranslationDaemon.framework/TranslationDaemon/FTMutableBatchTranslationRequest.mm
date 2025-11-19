@interface FTMutableBatchTranslationRequest
- (BOOL)is_partial;
- (FTMutableBatchTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)a3;
- (void)setOpt_in_status:(int64_t)a3;
- (void)setOptions:(id)a3;
- (void)setParagraphs:(id)a3;
- (void)setRequest_id:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSource_language:(id)a3;
- (void)setTarget_language:(id)a3;
- (void)setTask:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation FTMutableBatchTranslationRequest

- (FTMutableBatchTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationRequest;
  v2 = [(FTMutableBatchTranslationRequest *)&v6 init];
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

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_language:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_language:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParagraphs:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApp_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUrl:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)opt_in_status
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"opt_in_status"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setOpt_in_status:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOptions:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_partial
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_partial"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end