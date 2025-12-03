@interface FLTMutableSSUCategoryGroup
- (FLTMutableSSUCategoryGroup)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setName:(id)name;
- (void)setNegative_examples:(id)negative_examples;
- (void)setPositive_intents:(id)positive_intents;
@end

@implementation FLTMutableSSUCategoryGroup

- (void)setNegative_examples:(id)negative_examples
{
  v4 = [negative_examples copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPositive_intents:(id)positive_intents
{
  v4 = [positive_intents copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setName:(id)name
{
  v4 = [name copy];
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

- (FLTMutableSSUCategoryGroup)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUCategoryGroup;
  v2 = [(FLTMutableSSUCategoryGroup *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end