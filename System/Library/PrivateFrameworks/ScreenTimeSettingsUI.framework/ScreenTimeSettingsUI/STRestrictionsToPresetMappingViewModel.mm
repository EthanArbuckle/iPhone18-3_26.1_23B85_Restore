@interface STRestrictionsToPresetMappingViewModel
+ (id)BOOLPresetKeys;
+ (id)presetKeys;
- (STRestrictionsToPresetMappingViewModel)initWithSelectedValueProvider:(id)provider;
- (id)_presetForValuesByRestriction:(id)restriction;
- (id)_restrictionsWithValuesByRestriction:(id)restriction presetKeys:(id)keys;
- (void)loadPresetMatchingCurrentRestrictionsWithCompletionHandler:(id)handler;
@end

@implementation STRestrictionsToPresetMappingViewModel

+ (id)presetKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__STRestrictionsToPresetMappingViewModel_presetKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (presetKeys_onceToken != -1)
  {
    dispatch_once(&presetKeys_onceToken, block);
  }

  v2 = presetKeys_presetKeys;

  return v2;
}

void __52__STRestrictionsToPresetMappingViewModel_presetKeys__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D4BB58], *MEMORY[0x277D4BB48], *MEMORY[0x277D4BB50], *MEMORY[0x277D4BB60], 0}];
  v3 = presetKeys_presetKeys;
  presetKeys_presetKeys = v2;

  v4 = presetKeys_presetKeys;
  v7 = [*(a1 + 32) BOOLPresetKeys];
  v5 = [v4 setByAddingObjectsFromSet:v7];
  v6 = presetKeys_presetKeys;
  presetKeys_presetKeys = v5;
}

+ (id)BOOLPresetKeys
{
  if (BOOLPresetKeys_onceToken != -1)
  {
    +[STRestrictionsToPresetMappingViewModel BOOLPresetKeys];
  }

  v3 = BOOLPresetKeys_BOOLPresetKeys;

  return v3;
}

uint64_t __56__STRestrictionsToPresetMappingViewModel_BOOLPresetKeys__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D4BB18], *MEMORY[0x277D4BB20], *MEMORY[0x277D4BB30], *MEMORY[0x277D4BB28], *MEMORY[0x277D4BB10], *MEMORY[0x277D4BB38], *MEMORY[0x277D4BB08], *MEMORY[0x277D4BB40], 0}];
  v1 = BOOLPresetKeys_BOOLPresetKeys;
  BOOLPresetKeys_BOOLPresetKeys = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (STRestrictionsToPresetMappingViewModel)initWithSelectedValueProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = STRestrictionsToPresetMappingViewModel;
  v5 = [(STRestrictionsToPresetMappingViewModel *)&v8 init];
  selectedValueProvider = v5->_selectedValueProvider;
  v5->_selectedValueProvider = providerCopy;

  return v5;
}

- (void)loadPresetMatchingCurrentRestrictionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selectedValueProvider = [(STRestrictionsToPresetMappingViewModel *)self selectedValueProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__STRestrictionsToPresetMappingViewModel_loadPresetMatchingCurrentRestrictionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B7E4C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [selectedValueProvider loadValuesByRestrictionWithCompletionHandler:v7];
}

void __101__STRestrictionsToPresetMappingViewModel_loadPresetMatchingCurrentRestrictionsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) _presetForValuesByRestriction:a2];
    if (v5)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D4BBD8] code:571 userInfo:0];

      (*(*(a1 + 40) + 16))();
      v7 = v6;
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_presetForValuesByRestriction:(id)restriction
{
  v13[1] = *MEMORY[0x277D85DE8];
  restrictionCopy = restriction;
  if ([restrictionCopy count])
  {
    presetKeys = [objc_opt_class() presetKeys];
    v6 = [(STRestrictionsToPresetMappingViewModel *)self _restrictionsWithValuesByRestriction:restrictionCopy presetKeys:presetKeys];
    v7 = [objc_alloc(MEMORY[0x277D08318]) initWithValues:v6];
    v8 = [objc_alloc(MEMORY[0x277D08320]) initWithIdentifier:@"com.apple.ScreenTime" configuration:v7];
    v9 = objc_alloc(MEMORY[0x277D08310]);
    v13[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11 = [v9 initWithIdentifier:@"current-preset" minAge:0 maxAge:0 sources:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_restrictionsWithValuesByRestriction:(id)restriction presetKeys:(id)keys
{
  v21 = *MEMORY[0x277D85DE8];
  restrictionCopy = restriction;
  keysCopy = keys;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(restrictionCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = restrictionCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([keysCopy containsObject:{v13, v16}])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

@end