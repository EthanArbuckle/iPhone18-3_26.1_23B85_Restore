@interface FTMutableLmScorerToken
- (FTMutableLmScorerToken)init;
- (double)log10_score;
- (id)copyWithZone:(_NSZone *)zone;
- (int)ngram_used;
- (void)setLog10_score:(double)log10_score;
- (void)setToken_str:(id)token_str;
@end

@implementation FTMutableLmScorerToken

- (FTMutableLmScorerToken)init
{
  v6.receiver = self;
  v6.super_class = FTMutableLmScorerToken;
  v2 = [(FTMutableLmScorerToken *)&v6 init];
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

- (void)setToken_str:(id)token_str
{
  v4 = [token_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)log10_score
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"log10_score"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLog10_score:(double)log10_score
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:log10_score];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)ngram_used
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"ngram_used"];
  intValue = [v2 intValue];

  return intValue;
}

@end