@interface STStatusItemsManager
+ (id)sharedInstance;
- (STStatusItemsManager)initWithDefaults:(id)defaults;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)resolvedStatusItemFromStatusItems:(id)items;
- (id)succinctDescription;
- (id)validStatusItemsForStatusItems:(id)items;
- (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier;
- (void)_registerForInternalDefaultsChanges;
- (void)_updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords;
- (void)recordBundlesChangedForBundleManager:(id)manager;
@end

@implementation STStatusItemsManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__STStatusItemsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, block);
  }

  v2 = qword_280D435D8;

  return v2;
}

void __38__STStatusItemsManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x277D6BB88] standardDefaults];
  v2 = [v1 initWithDefaults:v4];
  v3 = qword_280D435D8;
  qword_280D435D8 = v2;
}

- (STStatusItemsManager)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = STStatusItemsManager;
  v6 = [(STStatusItemsManager *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D6B938]) initWithBundleRecordClass:objc_opt_class()];
    bundleManager = v6->_bundleManager;
    v6->_bundleManager = v7;

    objc_storeStrong(&v6->_systemStatusDefaults, defaults);
    [(STStatusItemsManager *)v6 _registerForInternalDefaultsChanges];
    [(STBundleManager *)v6->_bundleManager addObserver:v6];
    [(STStatusItemsManager *)v6 _updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords];
  }

  return v6;
}

- (id)resolvedStatusItemFromStatusItems:(id)items
{
  v3 = [(STStatusItemsManager *)self validStatusItemsForStatusItems:items];
  anyObject = [v3 anyObject];

  return anyObject;
}

- (id)validStatusItemsForStatusItems:(id)items
{
  itemsCopy = items;
  if (qword_280D435E8 != -1)
  {
    dispatch_once(&qword_280D435E8, &__block_literal_global_3);
  }

  v5 = qword_280D435E0;
  v6 = [v5 mutableCopy];
  [v6 intersectSet:itemsCopy];
  if (self->_allowAllStatusItems)
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:itemsCopy];
    [v7 minusSet:qword_280D435E0];
    [v7 unionSet:v6];
    if ([v7 count])
    {
      goto LABEL_7;
    }
  }

  v7 = v6;
LABEL_7:

  return v7;
}

void __55__STStatusItemsManager_validStatusItemsForStatusItems___block_invoke()
{
  v9[14] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6BF40];
  v9[0] = *MEMORY[0x277D6BF48];
  v9[1] = v0;
  v1 = *MEMORY[0x277D6BF58];
  v9[2] = *MEMORY[0x277D6BF50];
  v9[3] = v1;
  v2 = *MEMORY[0x277D6BF68];
  v9[4] = *MEMORY[0x277D6BF60];
  v9[5] = v2;
  v3 = *MEMORY[0x277D6BF78];
  v9[6] = *MEMORY[0x277D6BF70];
  v9[7] = v3;
  v4 = *MEMORY[0x277D6BF88];
  v9[8] = *MEMORY[0x277D6BF80];
  v9[9] = v4;
  v9[10] = @"com.apple.mediaremoted.status-item.call-to-action.video-route";
  v9[11] = @"com.apple.mediaremoted.status-item.call-to-action.audio-route";
  v9[12] = @"com.apple.sharing.status-item.call-to-action.ask-to-airdrop";
  v9[13] = @"com.apple.arkit.status-item.lowlight";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:14];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v7 = qword_280D435E0;
  qword_280D435E0 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_visualDescriptors objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D6BB48] visualDescriptorForStatusItemWithIdentifier:identifierCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_registerForInternalDefaultsChanges
{
  if (!self->_internalDefaultsObserver)
  {
    self->_allowAllStatusItems = [(STSystemStatusDefaults *)self->_systemStatusDefaults shouldEnableUnknownStatusItems];
    objc_initWeak(&location, self);
    systemStatusDefaults = self->_systemStatusDefaults;
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__STStatusItemsManager__registerForInternalDefaultsChanges__block_invoke;
    v8[3] = &unk_279D35070;
    objc_copyWeak(&v9, &location);
    v6 = [(STSystemStatusDefaults *)systemStatusDefaults observeDefault:@"shouldEnableUnknownStatusItems" onQueue:v4 withBlock:v8];
    internalDefaultsObserver = self->_internalDefaultsObserver;
    self->_internalDefaultsObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __59__STStatusItemsManager__registerForInternalDefaultsChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = MEMORY[0x26D6A2840]("[STStatusItemsManager _registerForInternalDefaultsChanges]_block_invoke");
    if (v2)
    {
      v2 = [v4[3] shouldEnableUnknownStatusItems];
    }

    if (*(v4 + 40) != v2)
    {
      *(v4 + 40) = v2;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)recordBundlesChangedForBundleManager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  if (self->_bundleManager == managerCopy)
  {
    objc_copyWeak(&v5, &location);
    BSDispatchMain();
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __61__STStatusItemsManager_recordBundlesChangedForBundleManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords];
}

- (void)_updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords
{
  v43 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordIdentifiers = [(STBundleManager *)self->_bundleManager recordIdentifiers];
  v5 = STSystemStatusLogBundleLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = recordIdentifiers;
    _os_log_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_DEFAULT, "Bundle manager reports status item bundle identifiers changed: %{public}@", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = recordIdentifiers;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = 0x279D34000uLL;
    v24 = *v34;
    selfCopy = self;
    do
    {
      v10 = 0;
      v26 = v7;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = [(STBundleManager *)self->_bundleManager bundleRecordForRecordIdentifier:v11];
        v13 = *(v9 + 1912);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v10;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          statusItemIdentifiers = [v12 statusItemIdentifiers];
          v15 = [statusItemIdentifiers countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(statusItemIdentifiers);
                }

                v19 = *(*(&v29 + 1) + 8 * i);
                v20 = [v12 visualDescriptorForStatusItemWithIdentifier:v19];
                if (v20)
                {
                  [(NSDictionary *)dictionary setValue:v20 forKey:v19];
                  v21 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v38 = v19;
                    v39 = 2114;
                    v40 = v20;
                    _os_log_debug_impl(&dword_26C4AD000, v21, OS_LOG_TYPE_DEBUG, "Status item identifier %{public}@ associated with visual descriptor %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v21 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v38 = v19;
                    _os_log_error_impl(&dword_26C4AD000, v21, OS_LOG_TYPE_ERROR, "No valid visual descriptor for status item '%{private}@'", buf, 0xCu);
                  }
                }
              }

              v16 = [statusItemIdentifiers countByEnumeratingWithState:&v29 objects:v41 count:16];
            }

            while (v16);
            v8 = v24;
            self = selfCopy;
            v9 = 0x279D34000;
            v7 = v26;
          }

          v10 = v28;
        }

        else
        {
          statusItemIdentifiers = STSystemStatusLogBundleLoading();
          if (os_log_type_enabled(statusItemIdentifiers, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v38 = v11;
            _os_log_error_impl(&dword_26C4AD000, statusItemIdentifiers, OS_LOG_TYPE_ERROR, "Bundle %{private}@ is of unexpected type, expected 'StatusItems'", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  visualDescriptors = self->_visualDescriptors;
  self->_visualDescriptors = dictionary;

  v23 = *MEMORY[0x277D85DE8];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemsManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsManager *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

@end