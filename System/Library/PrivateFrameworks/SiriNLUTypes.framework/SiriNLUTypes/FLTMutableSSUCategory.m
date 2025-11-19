@interface FLTMutableSSUCategory
- (FLTMutableSSUCategory)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)type;
- (void)setGroups:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation FLTMutableSSUCategory

- (void)setGroups:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setType:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"type"];
  v3 = [v2 integerValue];

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

- (FLTMutableSSUCategory)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUCategory;
  v2 = [(FLTMutableSSUCategory *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end