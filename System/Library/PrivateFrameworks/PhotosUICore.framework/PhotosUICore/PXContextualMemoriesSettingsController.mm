@interface PXContextualMemoriesSettingsController
+ (id)sharedController;
- (PXContextualMemoriesSettingsController)init;
- (void)registerForLocationPrefetchingWithIdentifier:(id)a3;
- (void)requestUpdatedContextualMemoriesSettingsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)unregisterForLocationPrefetchingWithIdentifier:(id)a3;
@end

@implementation PXContextualMemoriesSettingsController

- (void)unregisterForLocationPrefetchingWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[Settings] Unregister for location pre-fetching: %@", &v9, 0xCu);
  }

  v6 = [(PXContextualMemoriesSettingsController *)self registrationIdentifiers];
  [v6 removeObject:v4];
  if (![v6 count])
  {
    v7 = [(PXContextualMemoriesSettingsController *)self settings];
    v8 = [v7 locationSetting];
    [v8 setMonitorsCurrentLocation:0];
  }
}

- (void)registerForLocationPrefetchingWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[Settings] Register for location pre-fetching: %@", &v9, 0xCu);
  }

  v6 = [(PXContextualMemoriesSettingsController *)self registrationIdentifiers];
  [v6 addObject:v4];
  v7 = [(PXContextualMemoriesSettingsController *)self settings];
  v8 = [v7 locationSetting];
  [v8 setMonitorsCurrentLocation:1];
}

- (void)requestUpdatedContextualMemoriesSettingsWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_opt_new();
  }

  v8 = [(PXContextualMemoriesSettingsController *)self completionHandlers];
  v9 = _Block_copy(v7);
  [v8 addObject:v9];

  if (![(PXContextualMemoriesSettingsController *)self isRequestingUpdates])
  {
    [(PXContextualMemoriesSettingsController *)self setRequestingUpdates:1];
    v10 = [(PXContextualMemoriesSettingsController *)self settings];
    v11 = [v10 locationSetting];
    [v6 accuracy];
    v13 = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __112__PXContextualMemoriesSettingsController_requestUpdatedContextualMemoriesSettingsWithOptions_completionHandler___block_invoke;
    v15[3] = &unk_1E7744F50;
    v16 = v10;
    v17 = v6;
    v18 = self;
    v19 = v8;
    v14 = v10;
    [v11 requestLocationUpdateWithAccuracy:v15 completionHandler:v13];
  }
}

void __112__PXContextualMemoriesSettingsController_requestUpdatedContextualMemoriesSettingsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) peopleSetting];
  v3 = [*(a1 + 40) peopleProximityDate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112__PXContextualMemoriesSettingsController_requestUpdatedContextualMemoriesSettingsWithOptions_completionHandler___block_invoke_2;
  v5[3] = &unk_1E774A1B8;
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  v6 = v4;
  v7 = *(a1 + 32);
  [v2 requestPeopleNamesUpdateSinceDate:v3 withCompletionHandler:v5];
}

void __112__PXContextualMemoriesSettingsController_requestUpdatedContextualMemoriesSettingsWithOptions_completionHandler___block_invoke_2(id *a1)
{
  [a1[4] setRequestingUpdates:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __112__PXContextualMemoriesSettingsController_requestUpdatedContextualMemoriesSettingsWithOptions_completionHandler___block_invoke_3;
  v3[3] = &unk_1E7739120;
  v2 = a1[5];
  v4 = a1[6];
  [v2 enumerateObjectsUsingBlock:v3];
  [a1[5] removeAllObjects];
}

- (PXContextualMemoriesSettingsController)init
{
  v10.receiver = self;
  v10.super_class = PXContextualMemoriesSettingsController;
  v2 = [(PXContextualMemoriesSettingsController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXContextualMemoriesSettings);
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    registrationIdentifiers = v2->_registrationIdentifiers;
    v2->_registrationIdentifiers = v7;
  }

  return v2;
}

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXContextualMemoriesSettingsController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken_107656 != -1)
  {
    dispatch_once(&sharedController_onceToken_107656, block);
  }

  v2 = sharedController_s_sharedController;

  return v2;
}

void __58__PXContextualMemoriesSettingsController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_s_sharedController;
  sharedController_s_sharedController = v1;
}

@end