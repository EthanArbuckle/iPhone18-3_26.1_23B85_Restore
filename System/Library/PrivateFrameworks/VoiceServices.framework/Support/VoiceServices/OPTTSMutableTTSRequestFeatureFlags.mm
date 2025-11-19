@interface OPTTSMutableTTSRequestFeatureFlags
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (OPTTSMutableTTSRequestFeatureFlags)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OPTTSMutableTTSRequestFeatureFlags

- (BOOL)fe_feature_only
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature_only"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)fe_feature
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"fe_feature"];
  v3 = [v2 BOOLValue];

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

- (OPTTSMutableTTSRequestFeatureFlags)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTTSRequestFeatureFlags;
  v2 = [(OPTTSMutableTTSRequestFeatureFlags *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end