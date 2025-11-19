@interface TPSAppStoreRegionValidation
- (BOOL)hasStoreFrontRegionPrefix:(id)a3 fromRegions:(id)a4;
- (id)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSAppStoreRegionValidation

- (BOOL)hasStoreFrontRegionPrefix:(id)a3 fromRegions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TPSAppStoreRegionValidation_hasStoreFrontRegionPrefix_fromRegions___block_invoke;
  v10[3] = &unk_2789B0348;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];
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

- (void)validateWithCompletion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSRegionsValidation *)self targetRegions];
  if ([v5 count])
  {

LABEL_4:
    v8 = [(TPSAppStoreRegionValidation *)self getCurrentState];
    v9 = [(TPSRegionsValidation *)self targetRegions];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(TPSRegionsValidation *)self targetRegions];
      v12 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:v8 fromRegions:v11];
    }

    else
    {
      v12 = 1;
    }

    v13 = [(TPSRegionsValidation *)self excludeRegions];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(TPSRegionsValidation *)self excludeRegions];
      v16 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:v8 fromRegions:v15];

      v17 = !v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = v12 & v17;
    v19 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(TPSRegionsValidation *)self targetRegions];
      v24 = [v23 componentsJoinedByString:{@", "}];
      v25 = [(TPSRegionsValidation *)self excludeRegions];
      v26 = [v25 componentsJoinedByString:{@", "}];
      v27 = 138413314;
      v28 = v21;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v26;
      v35 = 1024;
      v36 = v18;
      _os_log_debug_impl(&dword_232D6F000, v19, OS_LOG_TYPE_DEBUG, "%@ - checking appstore region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v27, 0x30u);
    }

    goto LABEL_13;
  }

  v6 = [(TPSRegionsValidation *)self excludeRegions];
  v7 = [v6 count];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(TPSAppStoreRegionValidation *)self validateWithCompletion:v8];
  }

  v18 = 1;
LABEL_13:

  v4[2](v4, v18, 0);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentState
{
  v2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v4 = [v3 ams_storefront];

  return v4;
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSAppStoreRegionValidation *)self getCurrentState];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v8 = v7;

  v4[2](v4, v8, 0);
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