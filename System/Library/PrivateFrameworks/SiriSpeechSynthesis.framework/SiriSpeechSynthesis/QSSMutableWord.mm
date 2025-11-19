@interface QSSMutableWord
- (QSSMutableWord)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)frequency;
- (void)pronunciations:(id)a3;
- (void)setOrthography:(id)a3;
- (void)setPronunciations:(id)a3;
- (void)setTag:(id)a3;
@end

@implementation QSSMutableWord

- (void)setTag:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)frequency
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"frequency"];
  v3 = [v2 intValue];

  return v3;
}

- (void)pronunciations:(id)a3
{
  v7 = a3;
  v4 = [(QSSMutableWord *)self pronunciations];
  v5 = [v4 bytes];
  v6 = [(QSSMutableWord *)self pronunciations];
  v7[2](v7, v5, [v6 length]);
}

- (void)setPronunciations:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOrthography:(id)a3
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

- (QSSMutableWord)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableWord;
  v2 = [(QSSMutableWord *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end