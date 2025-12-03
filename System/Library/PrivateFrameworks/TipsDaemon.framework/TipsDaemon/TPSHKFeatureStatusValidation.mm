@interface TPSHKFeatureStatusValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHKFeatureStatusValidation

- (void)validateWithCompletion:(id)completion
{
  v39[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  value = [(TPSTargetingValidation *)self value];
  v6 = [value TPSSafeIntegerForKey:@"featureIdentifier"];

  value2 = [(TPSTargetingValidation *)self value];
  v8 = [value2 TPSSafeIntegerForKey:@"statusType"];

  v9 = [TPSHealthKitDefines identifierForFeature:v6];
  v10 = [TPSHealthKitDefines featureAvailabilityContextForStatusType:v8];
  v11 = v10;
  v12 = 0x277D71000uLL;
  if (v9 && v10)
  {
    targeting2 = +[TPSHealthKitDefines sharedHealthStore];
    v14 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureIdentifier:v9 healthStore:targeting2 countryCodeSource:1];
    v33 = 0;
    v15 = [v14 featureStatusWithError:&v33];
    v16 = v33;
    v32 = v11;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:v11];
      areAllRequirementsSatisfied = [v17 areAllRequirementsSatisfied];

      value3 = [(TPSTargetingValidation *)self value];
      v20 = [value3 TPSSafeBoolForKey:@"value"];

      v21 = areAllRequirementsSatisfied ^ v20 ^ 1u;
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
      {
        name = [(TPSTargetingValidation *)self name];
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        *buf = 138412802;
        v35 = name;
        v36 = 2112;
        v37 = v31;
        v38 = 2112;
        v39[0] = v16;
        _os_log_error_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_ERROR, "%@ - unable to query feature status (%@). Error: %@", buf, 0x20u);
      }

      v21 = 0;
    }

    v11 = v32;
    v12 = 0x277D71000uLL;
  }

  else
  {
    targeting2 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting2, OS_LOG_TYPE_ERROR))
    {
      name2 = [(TPSTargetingValidation *)self name];
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      *buf = 138412802;
      v35 = name2;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39[0] = v29;
      _os_log_error_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_ERROR, "%@ - unrecognized feature (%@) or statusType (%@)", buf, 0x20u);

      v12 = 0x277D71000;
    }

    v16 = 0;
    v21 = 0;
  }

  targeting3 = [*(v12 + 1912) targeting];
  if (os_log_type_enabled(targeting3, OS_LOG_TYPE_DEBUG))
  {
    name3 = [(TPSTargetingValidation *)self name];
    targetContext = [(TPSTargetingValidation *)self targetContext];
    *buf = 138413058;
    v35 = name3;
    v36 = 2112;
    v37 = targetContext;
    v38 = 1024;
    LODWORD(v39[0]) = v21;
    WORD2(v39[0]) = 2112;
    *(v39 + 6) = v16;
    _os_log_debug_impl(&dword_232D6F000, targeting3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", buf, 0x26u);
  }

  completionCopy[2](completionCopy, v21, v16);
  v24 = *MEMORY[0x277D85DE8];
}

@end