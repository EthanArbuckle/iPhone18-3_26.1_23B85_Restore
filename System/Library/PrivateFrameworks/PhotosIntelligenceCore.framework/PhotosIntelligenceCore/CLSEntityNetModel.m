@interface CLSEntityNetModel
+ (id)_sceneTaxonomyIdentifierForBaseVersion:(unint64_t)a3;
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSEntityNetModel)initWithSceneAnalysisVersion:(unint64_t)a3;
@end

@implementation CLSEntityNetModel

- (CLSEntityNetModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() baseSceneAnalysisVersionWithSceneAnalysisVersion:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_class() _sceneTaxonomyIdentifierForBaseVersion:v5];
    if (v7)
    {
      v16 = 0;
      v8 = [objc_alloc(MEMORY[0x277D3B4C8]) initWithIdentifier:v7 error:&v16];
      v9 = v16;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 digest];
          *buf = 67109378;
          *v18 = v6;
          *&v18[4] = 2112;
          *&v18[6] = v10;
          _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting up EntityNet model version %d using scene taxonomy with digest '%@'", buf, 0x12u);
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v18 = v7;
        *&v18[8] = 2112;
        *&v18[10] = v9;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@, using latest: %@", buf, 0x16u);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D3B4C8]) initWithLatestTaxonomy];
    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating latest scene taxonomy", buf, 2u);
      }

      v11 = 0;
      goto LABEL_20;
    }

LABEL_14:
    v15.receiver = self;
    v15.super_class = CLSEntityNetModel;
    v12 = [(CLSTaxonomyBasedModel *)&v15 initWithSceneTaxonomy:v8];
    if (v12)
    {
      v12->_version = v6;
    }

    self = v12;

    v11 = self;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v18 = v3;
    *&v18[4] = 2112;
    *&v18[6] = objc_opt_class();
    _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
  }

  v11 = 0;
LABEL_21:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_sceneTaxonomyIdentifierForBaseVersion:(unint64_t)a3
{
  v3 = @"84";
  if (a3 != 96)
  {
    v3 = 0;
  }

  if (a3 == 99)
  {
    return @"99";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 96;
  if (a3 < 0x60)
  {
    v3 = 0;
  }

  if (a3 >= 0x63)
  {
    return 99;
  }

  else
  {
    return v3;
  }
}

@end