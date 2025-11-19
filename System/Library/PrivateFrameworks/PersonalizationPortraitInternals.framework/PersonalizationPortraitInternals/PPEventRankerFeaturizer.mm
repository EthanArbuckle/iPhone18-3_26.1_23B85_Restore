@interface PPEventRankerFeaturizer
+ (id)scoreFeatureSchema:(id)a3;
- (PPEventRankerFeaturizer)initWithTrialWrapper:(id)a3;
- (id)featureSchema;
@end

@implementation PPEventRankerFeaturizer

- (id)featureSchema
{
  if (featureSchema_once != -1)
  {
    dispatch_once(&featureSchema_once, &__block_literal_global_4624);
  }

  v2 = [_cache objectForKey:@"CK"];
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = +[PPTrialWrapper sharedInstance];
  v2 = [v3 plistForFactorName:@"EventRankerFeatureSchema.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_EVENTS"];

  if (v2)
  {
    [_cache setObject:v2 forKey:@"CK"];
LABEL_6:
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v2, 2uLL);

    goto LABEL_7;
  }

  DeepCopy = 0;
LABEL_7:

  return DeepCopy;
}

uint64_t __40__PPEventRankerFeaturizer_featureSchema__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _cache;
  _cache = v0;

  v2 = _cache;

  return [v2 setCountLimit:1];
}

- (PPEventRankerFeaturizer)initWithTrialWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPEventRankerFeaturizer;
  v6 = [(PPEventRankerFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialWrapper, a3);
  }

  return v7;
}

+ (id)scoreFeatureSchema:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v39 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingSelector:?];

  objc_autoreleasePoolPop(v4);
  v7 = 0;
  if ([v6 count])
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    v36 = v6;
    do
    {
      v37 = v8;
      v38 = v7;
      v11 = [v6 objectAtIndexedSubscript:v8];
      v12 = objc_autoreleasePoolPush();
      v13 = [v3 objectForKeyedSubscript:v11];
      v14 = [v13 allKeys];
      v15 = [v14 sortedArrayUsingSelector:sel_compare_];

      objc_autoreleasePoolPop(v12);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      v18 = 0.0;
      if (v17)
      {
        v19 = v17;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            v23 = [v3 objectForKeyedSubscript:v11];
            v24 = [v23 objectForKeyedSubscript:v22];
            v25 = [v24 objectForKeyedSubscript:@"Value"];

            v26 = [v3 objectForKeyedSubscript:v11];
            v27 = [v26 objectForKeyedSubscript:v22];
            v28 = [v27 objectForKeyedSubscript:@"Weight"];

            [v39 addObject:v25];
            [v25 doubleValue];
            v30 = v29;
            [v28 doubleValue];
            v18 = v18 + v30 * v31;
          }

          v19 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
      }

      v10 = v10 + v18;
      v32 = v18 <= v9;
      if (v18 > v9)
      {
        v9 = v18;
      }

      v7 = v38;
      if (!v32)
      {
        v7 = v37;
      }

      v8 = v37 + 1;
      v6 = v36;
    }

    while (v37 + 1 < [v36 count]);
  }

  else
  {
    v10 = 0.0;
  }

  v33 = [[PPEventFeatureScore alloc] initWithFeatureValues:v39 weightedScore:v7 prominentFeature:v10];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end