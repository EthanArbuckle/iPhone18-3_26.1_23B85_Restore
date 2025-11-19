@interface FLTMutableSSUCategoryGroup
- (FLTMutableSSUCategoryGroup)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setName:(id)a3;
- (void)setNegative_examples:(id)a3;
- (void)setPositive_intents:(id)a3;
@end

@implementation FLTMutableSSUCategoryGroup

- (void)setNegative_examples:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPositive_intents:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setName:(id)a3
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

- (FLTMutableSSUCategoryGroup)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUCategoryGroup;
  v2 = [(FLTMutableSSUCategoryGroup *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end