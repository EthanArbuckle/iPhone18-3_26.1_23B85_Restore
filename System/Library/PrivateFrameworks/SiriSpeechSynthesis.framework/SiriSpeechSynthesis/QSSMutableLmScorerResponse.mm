@interface QSSMutableLmScorerResponse
- (QSSMutableLmScorerResponse)init;
- (double)ppl;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setPpl:(double)ppl;
- (void)setReturn_str:(id)return_str;
- (void)setTokens:(id)tokens;
@end

@implementation QSSMutableLmScorerResponse

- (void)setPpl:(double)ppl
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:ppl];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)ppl
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"ppl"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setTokens:(id)tokens
{
  v4 = [tokens copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableLmScorerResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableLmScorerResponse;
  v2 = [(QSSMutableLmScorerResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end