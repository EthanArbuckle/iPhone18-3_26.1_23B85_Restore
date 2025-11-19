@interface CLSSceneModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSSceneModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)a3 withThresholdType:(unint64_t)a4;
- (id)modelInfo;
@end

@implementation CLSSceneModel

- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)a3 withThresholdType:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [*(*(&v19 + 1) + 8 * v13) lowercaseString];

        [v7 addObject:v11];
        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18.receiver = self;
  v18.super_class = CLSSceneModel;
  v15 = [(CLSTaxonomyBasedModel *)&v18 confidenceThresholdBySceneIdentifierForSceneNames:v7 withThresholdType:a4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)modelInfo
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v2;
}

- (CLSSceneModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() baseSceneAnalysisVersionWithSceneAnalysisVersion:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v8 = [v7 stringValue];

    v17 = 0;
    v9 = [objc_alloc(MEMORY[0x277D3B4C8]) initWithIdentifier:v8 error:&v17];
    v10 = v17;
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 digest];
        *buf = 67109378;
        *v19 = v6;
        *&v19[4] = 2112;
        *&v19[6] = v11;
        _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting up scene model version %d using scene taxonomy with digest '%@'", buf, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v19 = v8;
        *&v19[8] = 2112;
        *&v19[10] = v10;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@, using latest: %@", buf, 0x16u);
      }

      v9 = [objc_alloc(MEMORY[0x277D3B4C8]) initWithLatestTaxonomy];
      if (!v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating latest scene taxonomy", buf, 2u);
        }

        v12 = 0;
        goto LABEL_14;
      }
    }

    v16.receiver = self;
    v16.super_class = CLSSceneModel;
    v13 = [(CLSTaxonomyBasedModel *)&v16 initWithSceneTaxonomy:v9];
    if (v13)
    {
      v13->_version = v6;
    }

    self = v13;

    v12 = self;
LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v19 = v3;
    *&v19[4] = 2112;
    *&v19[6] = objc_opt_class();
    _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
  }

  v12 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 33;
  if (a3 < 0x21)
  {
    v3 = 0;
  }

  if (a3 >= 0x54)
  {
    return 84;
  }

  else
  {
    return v3;
  }
}

@end