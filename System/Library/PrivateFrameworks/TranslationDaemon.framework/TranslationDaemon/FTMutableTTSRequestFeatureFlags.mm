@interface FTMutableTTSRequestFeatureFlags
- (BOOL)cache_only;
- (BOOL)disable_prompts;
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (FTMutableTTSRequestFeatureFlags)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)phoneset_type;
- (void)setPhoneset_type:(int64_t)phoneset_type;
@end

@implementation FTMutableTTSRequestFeatureFlags

- (FTMutableTTSRequestFeatureFlags)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTTSRequestFeatureFlags;
  v2 = [(FTMutableTTSRequestFeatureFlags *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)fe_feature
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)fe_feature_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature_only"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)disable_prompts
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_prompts"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)cache_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"cache_only"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)phoneset_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"phoneset_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPhoneset_type:(int64_t)phoneset_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:phoneset_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end