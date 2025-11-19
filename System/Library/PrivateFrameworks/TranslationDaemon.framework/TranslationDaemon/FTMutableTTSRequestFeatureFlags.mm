@interface FTMutableTTSRequestFeatureFlags
- (BOOL)cache_only;
- (BOOL)disable_prompts;
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (FTMutableTTSRequestFeatureFlags)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)phoneset_type;
- (void)setPhoneset_type:(int64_t)a3;
@end

@implementation FTMutableTTSRequestFeatureFlags

- (FTMutableTTSRequestFeatureFlags)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTTSRequestFeatureFlags;
  v2 = [(FTMutableTTSRequestFeatureFlags *)&v6 init];
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

- (BOOL)fe_feature
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)fe_feature_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature_only"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disable_prompts
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_prompts"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)cache_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"cache_only"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)phoneset_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"phoneset_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPhoneset_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end