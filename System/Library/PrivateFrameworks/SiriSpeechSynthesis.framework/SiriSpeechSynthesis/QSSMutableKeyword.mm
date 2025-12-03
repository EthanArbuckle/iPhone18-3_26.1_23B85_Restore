@interface QSSMutableKeyword
- (QSSMutableKeyword)init;
- (double)posterior;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKeyword_orthography:(id)keyword_orthography;
- (void)setPosterior:(double)posterior;
@end

@implementation QSSMutableKeyword

- (void)setPosterior:(double)posterior
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:posterior];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)posterior
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"posterior"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setKeyword_orthography:(id)keyword_orthography
{
  v4 = [keyword_orthography copy];
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

- (QSSMutableKeyword)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableKeyword;
  v2 = [(QSSMutableKeyword *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end