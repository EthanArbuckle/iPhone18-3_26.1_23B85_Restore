@interface SHMusicalFeaturesBagConfiguration
- (SHMusicalFeaturesBagConfiguration)initWithConfiguration:(id)a3;
- (SHMusicalFeaturesBagConfiguration)initWithPromise:(id)a3;
- (double)minimumDurationInSecondsForClientIdentifier:(id)a3;
- (unint64_t)availableModelsForClientIdentifier:(id)a3;
@end

@implementation SHMusicalFeaturesBagConfiguration

- (SHMusicalFeaturesBagConfiguration)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHMusicalFeaturesBagConfiguration;
  v6 = [(SHMusicalFeaturesBagConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (SHMusicalFeaturesBagConfiguration)initWithPromise:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SHMusicalFeaturesBagConfiguration;
  v6 = [(SHMusicalFeaturesBagConfiguration *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_amsPromise, a3);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__0;
    v11[4] = __Block_byref_object_dispose__0;
    v12 = v7;
    amsPromise = v7->_amsPromise;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__SHMusicalFeaturesBagConfiguration_initWithPromise___block_invoke;
    v10[3] = &unk_2788FB048;
    v10[4] = v11;
    [(AMSPromise *)amsPromise addSuccessBlock:v10];
    _Block_object_dispose(v11, 8);
  }

  return v7;
}

void __53__SHMusicalFeaturesBagConfiguration_initWithPromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v9 = v3;
    v5 = v3;
    v6 = v4[1];
    v4[1] = v5;
    v7 = v4;

    v8 = v7[2];
    v7[2] = 0;

    v3 = v9;
  }
}

- (double)minimumDurationInSecondsForClientIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"minimumDurationInSeconds", v4];
    v6 = [(SHMusicalFeaturesBagConfiguration *)self configuration];
    v7 = [v6 objectForKey:@"minimumDurationInSeconds"];

    v8 = [v7 objectForKeyedSubscript:v5];
    if (!v8)
    {
      v8 = [v7 objectForKeyedSubscript:@"minimumDurationInSeconds"];
    }

    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (unint64_t)availableModelsForClientIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"models", v4];
    v6 = [(SHMusicalFeaturesBagConfiguration *)self configuration];
    v7 = [v6 objectForKey:@"models"];

    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8;
    if (!v8 || ![v8 count])
    {
      v10 = [v7 objectForKeyedSubscript:@"models"];

      v9 = v10;
    }

    LODWORD(v11) = [v9 containsObject:@"crema"];
    if ([v9 containsObject:@"crepe"])
    {
      v11 = v11 | 2;
    }

    else
    {
      v11 = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end