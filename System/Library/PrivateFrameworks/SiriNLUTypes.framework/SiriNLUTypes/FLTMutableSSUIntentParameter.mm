@interface FLTMutableSSUIntentParameter
- (FLTMutableSSUIntentParameter)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExample_value:(id)a3;
- (void)setName:(id)a3;
@end

@implementation FLTMutableSSUIntentParameter

- (void)setExample_value:(id)a3
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

- (FLTMutableSSUIntentParameter)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUIntentParameter;
  v2 = [(FLTMutableSSUIntentParameter *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end