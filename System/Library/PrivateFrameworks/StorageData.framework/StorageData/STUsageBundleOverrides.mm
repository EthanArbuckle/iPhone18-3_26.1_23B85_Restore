@interface STUsageBundleOverrides
+ (id)overrides;
+ (id)overridesFor:(id)for;
- (STUsageBundleOverrides)initWithDictionary:(id)dictionary;
@end

@implementation STUsageBundleOverrides

- (STUsageBundleOverrides)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = STUsageBundleOverrides;
  v5 = [(STUsageBundleOverrides *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__STUsageBundleOverrides_initWithDictionary___block_invoke;
    v8[3] = &unk_279D1D130;
    v9 = v5;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v6;
}

+ (id)overrides
{
  if (overrides_onceToken != -1)
  {
    +[STUsageBundleOverrides overrides];
  }

  v3 = _bundleOverrides;

  return v3;
}

void __35__STUsageBundleOverrides_overrides__block_invoke()
{
  v27[4] = *MEMORY[0x277D85DE8];
  v24 = @"ignore";
  v25 = &unk_287C8E650;
  v26[0] = @"MailUsage.bundle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v0;
  v26[1] = @"MessagesUsagePreferencesPlugin.bundle";
  v22 = @"ignore";
  v23 = &unk_287C8E650;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v27[1] = v1;
  v26[2] = @"SoftwareUpdateUsage.bundle";
  v20 = @"replaceWithZeroSizeApp";
  v21 = @"com.apple.Preferences";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v27[2] = v2;
  v26[3] = @"VisualVoicemailUsage.bundle";
  v18 = @"replaceWithZeroSizeApp";
  v19 = @"com.apple.mobilephone";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v27[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__STUsageBundleOverrides_overrides__block_invoke_80;
  v16 = &unk_279D1D130;
  v6 = v5;
  v17 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:&v13];
  v7 = _bundleOverrides;
  _bundleOverrides = v6;
  v8 = v6;

  v9 = [STUsageBundleOverrides alloc];
  v10 = [(STUsageBundleOverrides *)v9 initWithDictionary:MEMORY[0x277CBEC10], v13, v14, v15, v16];
  v11 = _defaultBundleOverrides;
  _defaultBundleOverrides = v10;

  v12 = *MEMORY[0x277D85DE8];
}

void __35__STUsageBundleOverrides_overrides__block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[STUsageBundleOverrides alloc] initWithDictionary:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (id)overridesFor:(id)for
{
  forCopy = for;
  overrides = [self overrides];
  v6 = [overrides objectForKey:forCopy];

  v7 = _defaultBundleOverrides;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

@end