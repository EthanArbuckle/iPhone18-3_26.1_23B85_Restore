@interface TPSRegionsValidation
- (TPSRegionsValidation)initWithTargetRegions:(id)a3 excludeRegions:(id)a4;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSRegionsValidation

- (TPSRegionsValidation)initWithTargetRegions:(id)a3 excludeRegions:(id)a4
{
  v6 = a4;
  v7 = [a3 valueForKeyPath:@"lowercaseString"];
  v8 = [v6 valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSRegionsValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSRegionsValidation *)self targetRegions];
  if ([v5 count])
  {

LABEL_4:
    v8 = [MEMORY[0x277CBEAF8] tps_userRegion];
    v9 = [(TPSRegionsValidation *)self targetRegions];
    if ([v9 count])
    {
      v10 = [(TPSRegionsValidation *)self targetRegions];
      v11 = [v10 containsObject:v8];
    }

    else
    {
      v11 = 1;
    }

    v12 = [(TPSRegionsValidation *)self excludeRegions];
    v13 = [v12 containsObject:v8];

    v14 = v11 & (v13 ^ 1u);
    v15 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [(TPSRegionsValidation *)self targetRegions];
      v20 = [v19 componentsJoinedByString:{@", "}];
      v21 = [(TPSRegionsValidation *)self excludeRegions];
      v22 = [v21 componentsJoinedByString:{@", "}];
      v23 = 138413314;
      v24 = v17;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v22;
      v31 = 1024;
      v32 = v14;
      _os_log_debug_impl(&dword_232D6F000, v15, OS_LOG_TYPE_DEBUG, "%@ - checking device region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v23, 0x30u);
    }

    goto LABEL_10;
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
    [(TPSRegionsValidation *)self validateWithCompletion:v8];
  }

  v14 = 1;
LABEL_10:

  v4[2](v4, v14, 0);
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