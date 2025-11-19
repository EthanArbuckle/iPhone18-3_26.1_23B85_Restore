@interface FTMutableLmScorerToken
- (FTMutableLmScorerToken)init;
- (double)log10_score;
- (id)copyWithZone:(_NSZone *)a3;
- (int)ngram_used;
- (void)setLog10_score:(double)a3;
- (void)setToken_str:(id)a3;
@end

@implementation FTMutableLmScorerToken

- (FTMutableLmScorerToken)init
{
  v6.receiver = self;
  v6.super_class = FTMutableLmScorerToken;
  v2 = [(FTMutableLmScorerToken *)&v6 init];
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

- (void)setToken_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)log10_score
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"log10_score"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLog10_score:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)ngram_used
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"ngram_used"];
  v3 = [v2 intValue];

  return v3;
}

@end