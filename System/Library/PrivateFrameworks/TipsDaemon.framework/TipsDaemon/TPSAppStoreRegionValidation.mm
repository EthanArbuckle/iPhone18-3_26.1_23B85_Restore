@interface TPSAppStoreRegionValidation
- (BOOL)hasStoreFrontRegionPrefix:(id)prefix fromRegions:(id)regions;
- (id)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppStoreRegionValidation

- (BOOL)hasStoreFrontRegionPrefix:(id)prefix fromRegions:(id)regions
{
  prefixCopy = prefix;
  regionsCopy = regions;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TPSAppStoreRegionValidation_hasStoreFrontRegionPrefix_fromRegions___block_invoke;
  v10[3] = &unk_2789B0348;
  v12 = &v13;
  v7 = prefixCopy;
  v11 = v7;
  [regionsCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __69__TPSAppStoreRegionValidation_hasStoreFrontRegionPrefix_fromRegions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)validateWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetRegions = [(TPSRegionsValidation *)self targetRegions];
  if ([targetRegions count])
  {

LABEL_4:
    getCurrentState = [(TPSAppStoreRegionValidation *)self getCurrentState];
    targetRegions2 = [(TPSRegionsValidation *)self targetRegions];
    v10 = [targetRegions2 count];

    if (v10)
    {
      targetRegions3 = [(TPSRegionsValidation *)self targetRegions];
      v12 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:getCurrentState fromRegions:targetRegions3];
    }

    else
    {
      v12 = 1;
    }

    excludeRegions = [(TPSRegionsValidation *)self excludeRegions];
    v14 = [excludeRegions count];

    if (v14)
    {
      excludeRegions2 = [(TPSRegionsValidation *)self excludeRegions];
      v16 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:getCurrentState fromRegions:excludeRegions2];

      v17 = !v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = v12 & v17;
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = v21;
      targetRegions4 = [(TPSRegionsValidation *)self targetRegions];
      v24 = [targetRegions4 componentsJoinedByString:{@", "}];
      excludeRegions3 = [(TPSRegionsValidation *)self excludeRegions];
      v26 = [excludeRegions3 componentsJoinedByString:{@", "}];
      v27 = 138413314;
      v28 = v21;
      v29 = 2112;
      v30 = getCurrentState;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v26;
      v35 = 1024;
      v36 = v18;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking appstore region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v27, 0x30u);
    }

    goto LABEL_13;
  }

  excludeRegions4 = [(TPSRegionsValidation *)self excludeRegions];
  v7 = [excludeRegions4 count];

  if (v7)
  {
    goto LABEL_4;
  }

  getCurrentState = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(getCurrentState, OS_LOG_TYPE_DEBUG))
  {
    [(TPSAppStoreRegionValidation *)self validateWithCompletion:getCurrentState];
  }

  v18 = 1;
LABEL_13:

  completionCopy[2](completionCopy, v18, 0);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentState
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  ams_storefront = [ams_activeiTunesAccount ams_storefront];

  return ams_storefront;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSAppStoreRegionValidation *)self getCurrentState];
  v6 = getCurrentState;
  if (getCurrentState)
  {
    null = getCurrentState;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v8 = null;

  completionCopy[2](completionCopy, v8, 0);
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude appstore region(s) is specified.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end