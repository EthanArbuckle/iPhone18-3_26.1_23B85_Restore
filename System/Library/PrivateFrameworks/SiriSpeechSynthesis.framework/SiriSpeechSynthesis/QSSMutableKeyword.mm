@interface QSSMutableKeyword
- (QSSMutableKeyword)init;
- (double)posterior;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setKeyword_orthography:(id)a3;
- (void)setPosterior:(double)a3;
@end

@implementation QSSMutableKeyword

- (void)setPosterior:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)posterior
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"posterior"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setKeyword_orthography:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableKeyword)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableKeyword;
  v2 = [(QSSMutableKeyword *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end