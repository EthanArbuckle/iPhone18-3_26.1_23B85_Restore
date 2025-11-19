@interface TPSHKFeatureStatusValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSHKFeatureStatusValidation

- (void)validateWithCompletion:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSTargetingValidation *)self value];
  v6 = [v5 TPSSafeIntegerForKey:@"featureIdentifier"];

  v7 = [(TPSTargetingValidation *)self value];
  v8 = [v7 TPSSafeIntegerForKey:@"statusType"];

  v9 = [TPSHealthKitDefines identifierForFeature:v6];
  v10 = [TPSHealthKitDefines featureAvailabilityContextForStatusType:v8];
  v11 = v10;
  v12 = 0x277D71000uLL;
  if (v9 && v10)
  {
    v13 = +[TPSHealthKitDefines sharedHealthStore];
    v14 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureIdentifier:v9 healthStore:v13 countryCodeSource:1];
    v33 = 0;
    v15 = [v14 featureStatusWithError:&v33];
    v16 = v33;
    v32 = v11;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:v11];
      v18 = [v17 areAllRequirementsSatisfied];

      v19 = [(TPSTargetingValidation *)self value];
      v20 = [v19 TPSSafeBoolForKey:@"value"];

      v21 = v18 ^ v20 ^ 1u;
    }

    else
    {
      v22 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v30 = [(TPSTargetingValidation *)self name];
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        *buf = 138412802;
        v35 = v30;
        v36 = 2112;
        v37 = v31;
        v38 = 2112;
        v39[0] = v16;
        _os_log_error_impl(&dword_232D6F000, v22, OS_LOG_TYPE_ERROR, "%@ - unable to query feature status (%@). Error: %@", buf, 0x20u);
      }

      v21 = 0;
    }

    v11 = v32;
    v12 = 0x277D71000uLL;
  }

  else
  {
    v13 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v27 = [(TPSTargetingValidation *)self name];
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      *buf = 138412802;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39[0] = v29;
      _os_log_error_impl(&dword_232D6F000, v13, OS_LOG_TYPE_ERROR, "%@ - unrecognized feature (%@) or statusType (%@)", buf, 0x20u);

      v12 = 0x277D71000;
    }

    v16 = 0;
    v21 = 0;
  }

  v23 = [*(v12 + 1912) targeting];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = [(TPSTargetingValidation *)self name];
    v26 = [(TPSTargetingValidation *)self targetContext];
    *buf = 138413058;
    v35 = v25;
    v36 = 2112;
    v37 = v26;
    v38 = 1024;
    LODWORD(v39[0]) = v21;
    WORD2(v39[0]) = 2112;
    *(v39 + 6) = v16;
    _os_log_debug_impl(&dword_232D6F000, v23, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", buf, 0x26u);
  }

  v4[2](v4, v21, v16);
  v24 = *MEMORY[0x277D85DE8];
}

@end