@interface QSSMutableLatnnMitigatorResult
- (BOOL)processed;
- (QSSMutableLatnnMitigatorResult)init;
- (double)score;
- (double)threshold;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setScore:(double)a3;
- (void)setThreshold:(double)a3;
- (void)setVersion:(id)a3;
@end

@implementation QSSMutableLatnnMitigatorResult

- (void)setScore:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)score
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"score"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setThreshold:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)threshold
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"threshold"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setVersion:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)processed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"processed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableLatnnMitigatorResult)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableLatnnMitigatorResult;
  v2 = [(QSSMutableLatnnMitigatorResult *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end