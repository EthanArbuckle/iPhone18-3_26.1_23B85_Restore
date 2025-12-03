@interface TPSRegionsValidation
- (TPSRegionsValidation)initWithTargetRegions:(id)regions excludeRegions:(id)excludeRegions;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSRegionsValidation

- (TPSRegionsValidation)initWithTargetRegions:(id)regions excludeRegions:(id)excludeRegions
{
  excludeRegionsCopy = excludeRegions;
  v7 = [regions valueForKeyPath:@"lowercaseString"];
  v8 = [excludeRegionsCopy valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSRegionsValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetRegions = [(TPSRegionsValidation *)self targetRegions];
  if ([targetRegions count])
  {

LABEL_4:
    tps_userRegion = [MEMORY[0x277CBEAF8] tps_userRegion];
    targetRegions2 = [(TPSRegionsValidation *)self targetRegions];
    if ([targetRegions2 count])
    {
      targetRegions3 = [(TPSRegionsValidation *)self targetRegions];
      v11 = [targetRegions3 containsObject:tps_userRegion];
    }

    else
    {
      v11 = 1;
    }

    excludeRegions = [(TPSRegionsValidation *)self excludeRegions];
    v13 = [excludeRegions containsObject:tps_userRegion];

    v14 = v11 & (v13 ^ 1u);
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = v17;
      targetRegions4 = [(TPSRegionsValidation *)self targetRegions];
      v20 = [targetRegions4 componentsJoinedByString:{@", "}];
      excludeRegions2 = [(TPSRegionsValidation *)self excludeRegions];
      v22 = [excludeRegions2 componentsJoinedByString:{@", "}];
      v23 = 138413314;
      v24 = v17;
      v25 = 2112;
      v26 = tps_userRegion;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v22;
      v31 = 1024;
      v32 = v14;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking device region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v23, 0x30u);
    }

    goto LABEL_10;
  }

  excludeRegions3 = [(TPSRegionsValidation *)self excludeRegions];
  v7 = [excludeRegions3 count];

  if (v7)
  {
    goto LABEL_4;
  }

  tps_userRegion = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(tps_userRegion, OS_LOG_TYPE_DEBUG))
  {
    [(TPSRegionsValidation *)self validateWithCompletion:tps_userRegion];
  }

  v14 = 1;
LABEL_10:

  completionCopy[2](completionCopy, v14, 0);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude region(s) is specified.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end