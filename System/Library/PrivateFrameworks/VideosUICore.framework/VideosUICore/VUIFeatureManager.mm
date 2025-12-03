@interface VUIFeatureManager
+ (id)sharedInstance;
- (BOOL)isFeatureEnabled:(id)enabled;
- (VUIFeatureManager)init;
- (id)availableFeatures;
- (id)osFeatureFlagsJSON;
- (void)setFeatureValue:(BOOL)value forFeature:(id)feature;
@end

@implementation VUIFeatureManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[VUIFeatureManager sharedInstance];
  }

  v3 = sharedInstance_sharedSettings;

  return v3;
}

uint64_t __35__VUIFeatureManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedSettings = objc_alloc_init(VUIFeatureManager);

  return MEMORY[0x2821F96F8]();
}

- (VUIFeatureManager)init
{
  v12.receiver = self;
  v12.super_class = VUIFeatureManager;
  v2 = [(VUIFeatureManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    _allFeatures = [(VUIFeatureManager *)v2 _allFeatures];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__VUIFeatureManager_init__block_invoke;
    v10[3] = &unk_279E211F8;
    v11 = v5;
    v6 = v5;
    [_allFeatures enumerateKeysAndObjectsUsingBlock:v10];
    v7 = [v6 copy];
    features = v3->_features;
    v3->_features = v7;
  }

  return v3;
}

- (id)osFeatureFlagsJSON
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v3 forKeyedSubscript:@"pearl"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v4 forKeyedSubscript:@"hublot"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v5 forKeyedSubscript:@"monaco"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v6 forKeyedSubscript:@"sports_tier_manager"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v7 forKeyedSubscript:@"peppermint"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v8 forKeyedSubscript:@"swiftui_sports_scoreboard"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v9 forKeyedSubscript:@"cayman718"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v10 forKeyedSubscript:@"nyctosaurus"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v11 forKeyedSubscript:@"sports_app_live_activities"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v12 forKeyedSubscript:@"nimbus"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v13 forKeyedSubscript:@"opal"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v14 forKeyedSubscript:@"malone"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v15 forKeyedSubscript:@"timbuktu"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v16 forKeyedSubscript:@"cuscuz"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v17 forKeyedSubscript:@"clayface"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v18 forKeyedSubscript:@"buddy"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v19 forKeyedSubscript:@"emerald"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v20 forKeyedSubscript:@"tyria"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v21 forKeyedSubscript:@"tris"];

  v22 = MEMORY[0x277CCABB0];
  if (_os_feature_enabled_impl())
  {
    v23 = +[VUICoreUtilities isHeicFormatAllowed];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v22 numberWithBool:v23];
  [v2 setObject:v24 forKeyedSubscript:@"menkaure"];

  v25 = MEMORY[0x277CCABB0];
  if (_os_feature_enabled_impl())
  {
    v26 = +[VUICoreUtilities isHeicFormatAllowed];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v25 numberWithBool:v26];
  [v2 setObject:v27 forKeyedSubscript:@"menkaureMac"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v28 forKeyedSubscript:@"kobey"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:VUISolariumEnabled()];
  [v2 setObject:v29 forKeyedSubscript:@"solarium"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v30 forKeyedSubscript:@"aventador"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v31 forKeyedSubscript:@"huracan"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v32 forKeyedSubscript:@"mars"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v33 forKeyedSubscript:@"puget"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v34 forKeyedSubscript:@"plato"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v2 setObject:v35 forKeyedSubscript:@"juniper"];

  return v2;
}

void __25__VUIFeatureManager_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[VUIFeatureFlag alloc] initWithFeatureDict:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

- (id)availableFeatures
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  features = self->_features;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__VUIFeatureManager_availableFeatures__block_invoke;
  v8[3] = &unk_279E21220;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)features enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __38__VUIFeatureManager_availableFeatures__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isAvailableForOS])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (BOOL)isFeatureEnabled:(id)enabled
{
  v3 = [(NSDictionary *)self->_features objectForKey:enabled];
  v4 = v3;
  if (v3)
  {
    enabled = [v3 enabled];
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

- (void)setFeatureValue:(BOOL)value forFeature:(id)feature
{
  valueCopy = value;
  v5 = [(NSDictionary *)self->_features objectForKey:feature];
  if (v5)
  {
    v6 = v5;
    [v5 setEnabled:valueCopy];
    v5 = v6;
  }
}

@end