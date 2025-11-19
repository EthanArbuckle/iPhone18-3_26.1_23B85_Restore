@interface WLKFeatureEnablement
+ (id)_canvasFeatureFlags;
+ (id)_utsFeatureFlags;
+ (id)tvAppEnabledFeatures;
@end

@implementation WLKFeatureEnablement

void __44__WLKFeatureEnablement_tvAppEnabledFeatures__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(WLKFeature);
  [(WLKFeature *)v3 setName:@"expanse"];
  [(WLKFeature *)v3 setDomain:@"TVApp"];
  [(WLKFeature *)v3 setEnabled:1];
  v29 = v3;
  [v2 addObject:v3];
  v4 = objc_alloc_init(WLKFeature);
  [(WLKFeature *)v4 setName:@"syndication"];
  [(WLKFeature *)v4 setDomain:@"TVApp"];
  [(WLKFeature *)v4 setEnabled:1];
  v28 = v4;
  [v2 addObject:v4];
  v5 = [*(a1 + 32) _utsFeatureFlags];
  [v2 addObjectsFromArray:v5];

  v6 = [*(a1 + 32) _canvasFeatureFlags];
  [v2 addObjectsFromArray:v6];

  v7 = objc_alloc_init(WLKFeature);
  [(WLKFeature *)v7 setName:@"teatro"];
  [(WLKFeature *)v7 setDomain:@"TVApp"];
  [(WLKFeature *)v7 setEnabled:1];
  [v2 addObject:v7];

  if (_os_feature_enabled_impl())
  {
    v8 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v8 setName:@"timbuktu"];
    [(WLKFeature *)v8 setDomain:@"TVApp"];
    [(WLKFeature *)v8 setEnabled:1];
    [v2 addObject:v8];
  }

  v9 = objc_alloc_init(WLKFeature);
  [(WLKFeature *)v9 setName:@"aether"];
  [(WLKFeature *)v9 setDomain:@"TVApp"];
  [(WLKFeature *)v9 setEnabled:1];
  [v2 addObject:v9];

  if (_os_feature_enabled_impl())
  {
    v10 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v10 setName:@"callas"];
    [(WLKFeature *)v10 setDomain:@"TVApp"];
    [(WLKFeature *)v10 setEnabled:1];
    [v2 addObject:v10];
  }

  if (_os_feature_enabled_impl())
  {
    v11 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v11 setName:@"opal"];
    [(WLKFeature *)v11 setDomain:@"TVApp"];
    [(WLKFeature *)v11 setEnabled:1];
    [v2 addObject:v11];
  }

  if (_os_feature_enabled_impl())
  {
    v12 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v12 setName:@"plato"];
    [(WLKFeature *)v12 setDomain:@"TVApp"];
    [(WLKFeature *)v12 setEnabled:1];
    [v2 addObject:v12];
  }

  if (_os_feature_enabled_impl())
  {
    v13 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v13 setName:@"FederatedV2"];
    [(WLKFeature *)v13 setDomain:@"TVApp"];
    [(WLKFeature *)v13 setEnabled:1];
    [v2 addObject:v13];
  }

  v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v15 = [v14 objectForKey:@"FeatureEnablementAdditionalFlags"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        v21 = objc_alloc_init(WLKFeature);
        [(WLKFeature *)v21 setName:v20];
        [(WLKFeature *)v21 setDomain:@"TVApp"];
        [(WLKFeature *)v21 setEnabled:1];
        [v2 addObject:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v17);
  }

  v22 = [v2 allObjects];
  v23 = [v22 sortedArrayUsingSelector:sel_compare_];
  v24 = [v23 copy];
  v25 = tvAppEnabledFeatures_appFeatures;
  tvAppEnabledFeatures_appFeatures = v24;

  v26 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = tvAppEnabledFeatures_appFeatures;
    _os_log_impl(&dword_272A0F000, v26, OS_LOG_TYPE_DEFAULT, "Enabled features: %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)_utsFeatureFlags
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(WLKFeature);
  [(WLKFeature *)v3 setName:@"catch_up_to_live"];
  [(WLKFeature *)v3 setDomain:@"TVApp"];
  [(WLKFeature *)v3 setEnabled:1];
  [v2 addObject:v3];
  if (_os_feature_enabled_impl())
  {
    v4 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v4 setName:@"capella_preview"];
    [(WLKFeature *)v4 setDomain:@"TVApp"];
    [(WLKFeature *)v4 setEnabled:1];
    [v2 addObject:v4];
  }

  return v2;
}

+ (id)_canvasFeatureFlags
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(WLKFeature);
    [(WLKFeature *)v3 setName:@"tahoma_keynote"];
    [(WLKFeature *)v3 setDomain:@"TVApp"];
    [(WLKFeature *)v3 setEnabled:1];
    [v2 addObject:v3];
  }

  return v2;
}

+ (id)tvAppEnabledFeatures
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLKFeatureEnablement_tvAppEnabledFeatures__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (tvAppEnabledFeatures_onceToken != -1)
  {
    dispatch_once(&tvAppEnabledFeatures_onceToken, block);
  }

  v2 = tvAppEnabledFeatures_appFeatures;

  return v2;
}

@end