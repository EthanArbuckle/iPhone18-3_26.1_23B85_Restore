@interface FLTMutableSSUIntent
- (FLTMutableSSUIntent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setExamples:(id)examples;
- (void)setName:(id)name;
- (void)setParameters:(id)parameters;
@end

@implementation FLTMutableSSUIntent

- (void)setExamples:(id)examples
{
  v4 = [examples copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParameters:(id)parameters
{
  v4 = [parameters copy];
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

- (FLTMutableSSUIntent)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUIntent;
  v2 = [(FLTMutableSSUIntent *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end