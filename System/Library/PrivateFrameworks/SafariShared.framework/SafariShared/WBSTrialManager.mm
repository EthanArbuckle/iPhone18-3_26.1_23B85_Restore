@interface WBSTrialManager
+ (id)shared;
- (BOOL)getBoolFactor:(id)a3 forCF:(BOOL)a4 forDefault:(BOOL)a5;
- (BOOL)inExperiment;
- (BOOL)isAllowFavoritesInFrequentlyVisitedEnabled;
- (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled;
- (BOOL)isCFEnabled;
- (BOOL)isDropOutliersInFrequentlyVisitedEnabled;
- (BOOL)runCFFlow;
- (WBSTrialIdentifiers)identifiers;
- (WBSTrialManager)init;
- (double)CFSearchTimeoutForDefault:(double)a3;
- (double)getFloatFactor:(id)a3 forCF:(BOOL)a4 forDefault:(double)a5;
- (id)factorWithName:(id)a3;
- (id)getFactorValueAsString:(id)a3;
- (id)getNumberFactorWithName:(id)a3;
- (id)getRetrievalFactorName:(id)a3 forCF:(BOOL)a4;
- (id)prepareLogDictionary:(BOOL)a3 withExperimentId:(id)a4 withTreatmentId:(id)a5 isCounterFactualSearch:(BOOL)a6 withFactorData:(id)a7;
- (id)stringFactorWithName:(id)a3;
- (int64_t)getIntFactor:(id)a3 forCF:(BOOL)a4 forDefault:(int64_t)a5;
- (unint64_t)_weightedRandomIdentifier;
- (unint64_t)trialABGroupIdentifier;
- (void)fetchFactorsInNamespace:(id)a3;
- (void)registerDiagnosticInfo:(id)a3;
- (void)setFactorWithName:(id)a3 value:(id)a4;
@end

@implementation WBSTrialManager

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WBSTrialManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_shared;

  return v2;
}

void __25__WBSTrialManager_shared__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = shared_shared;
  shared_shared = v0;
}

- (WBSTrialManager)init
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"WBSDisableTrial"];

  if ((v4 & 1) != 0 || (v13.receiver = self, v13.super_class = WBSTrialManager, (self = [(WBSTrialManager *)&v13 init]) == 0))
  {
    v8 = 0;
  }

  else
  {
    v5 = dispatch_queue_create("com.apple.SafariShared.WBSTrial", 0);
    queue = self->_queue;
    self->_queue = v5;

    self->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, self);
    v7 = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__WBSTrialManager_init__block_invoke;
    v10[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v11, &location);
    dispatch_async(v7, v10);
    self = self;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    v8 = self;
  }

  return v8;
}

void __23__WBSTrialManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained trialClient];

    if (!v4)
    {
      v5 = [MEMORY[0x1E69DB518] clientWithIdentifier:231];
      [v3 setTrialClient:v5];
    }

    [v3 fetchFactorsInNamespace:@"SAFARI_SEARCH_RANKING"];
    v6 = [v3 trialClient];
    v7 = v3[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __23__WBSTrialManager_init__block_invoke_2;
    v9[3] = &unk_1E7FCB1B8;
    objc_copyWeak(&v10, (a1 + 32));
    v8 = [v6 addUpdateHandlerForNamespaceName:@"SAFARI_SEARCH_RANKING" queue:v7 usingBlock:v9];

    objc_destroyWeak(&v10);
  }
}

- (BOOL)isAllowFavoritesInFrequentlyVisitedEnabled
{
  v3 = [MEMORY[0x1E69C8880] isAllowFavoritesInFrequentlyVisitedEnabled];

  return [(WBSTrialManager *)self getBoolFactor:@"enableAllowFavoritesInFrequentlyVisited" forCF:0 forDefault:v3];
}

- (unint64_t)trialABGroupIdentifier
{
  v3 = [(WBSTrialManager *)self getNumberFactorWithName:@"enablePostFixSearchEngineSuggestions"];
  v4 = [v3 BOOLValue];

  v5 = [(WBSTrialManager *)self getNumberFactorWithName:@"checkServerCompletionForPrefixNavigationalIntent"];
  v6 = [v5 BOOLValue];

  v7 = [(WBSTrialManager *)self getNumberFactorWithName:@"enablePrefixNavigationalIntent"];
  v8 = [v7 integerValue];

  if (!v6)
  {
    return 36;
  }

  if (v8)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return 35;
  }

  if (v4 && !v8)
  {
    return 31;
  }

  switch(v8)
  {
    case 20:
      return 32;
    case 30:
      return 34;
    case 25:
      return 33;
  }

  return 30;
}

- (unint64_t)_weightedRandomIdentifier
{
  result = (vcvtd_n_f64_s64(random(), 0x20uLL) * 100.0);
  if (result && result - 4 >= 3)
  {
    if (result - 7 >= 5)
    {
      if (result - 12 < 5)
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

void __23__WBSTrialManager_init__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 namespaceName];
    [WeakRetained fetchFactorsInNamespace:v4];
  }
}

- (BOOL)isCFEnabled
{
  v2 = [(WBSTrialManager *)self getNumberFactorWithName:@"CF_enabled"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)runCFFlow
{
  v2 = self;
  v29 = *MEMORY[0x1E69E9840];
  if (![(WBSTrialManager *)self isCFEnabled])
  {
    return 0;
  }

  v3 = [(WBSTrialManager *)v2 factors];
  v4 = [v3 allKeys];

  customFactorsDictionary = v2->_customFactorsDictionary;
  if (customFactorsDictionary)
  {
    v6 = [(NSMutableDictionary *)customFactorsDictionary allKeys];

    v4 = v6;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = @"CFSearchTimeout";
    v12 = @"_cf";
    v23 = v7;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      if (([v14 isEqualToString:v11] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"CF_enabled") & 1) == 0 && (objc_msgSend(v14, "hasSuffix:", v12) & 1) == 0)
      {
        v15 = [(WBSTrialManager *)v2 getNumberFactorWithName:v14];
        v16 = 1;
        v17 = [(WBSTrialManager *)v2 getRetrievalFactorName:v14 forCF:1];
        [(WBSTrialManager *)v2 getNumberFactorWithName:v17];
        v18 = v12;
        v19 = v11;
        v21 = v20 = v2;

        LODWORD(v17) = [v15 isEqualToNumber:v21];
        v2 = v20;
        v11 = v19;
        v12 = v18;

        v7 = v23;
        if (!v17)
        {
          break;
        }
      }

      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  return v16;
}

- (BOOL)isDropOutliersInFrequentlyVisitedEnabled
{
  v3 = [(WBSTrialManager *)self inExperiment];
  if (v3)
  {
    v4 = [MEMORY[0x1E69C8880] isDropOutliersInFrequentlyVisitedEnabled];

    LOBYTE(v3) = [(WBSTrialManager *)self getBoolFactor:@"enableDropOutliersInFrequentlyVisited" forCF:0 forDefault:v4];
  }

  return v3;
}

- (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled
{
  v3 = [MEMORY[0x1E69C8880] isAllowLogOnURLsInFrequentlyVisitedEnabled];

  return [(WBSTrialManager *)self getBoolFactor:@"enableAllowLogOnURLSInFrequentlyVisited" forCF:0 forDefault:v3];
}

- (double)CFSearchTimeoutForDefault:(double)a3
{
  v4 = [(WBSTrialManager *)self getNumberFactorWithName:@"CFSearchTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    a3 = v6;
  }

  return a3;
}

- (BOOL)inExperiment
{
  if (![(WBSTrialManager *)self isReady])
  {
    return 0;
  }

  v3 = [(WBSTrialManager *)self treatmentId];
  v4 = v3 != 0;

  return v4;
}

- (void)fetchFactorsInNamespace:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(WBSTrialManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(WBSTrialManager *)self trialClient];
  v7 = [v6 factorLevelsWithNamespaceName:@"SAFARI_SEARCH_RANKING"];

  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([v12 hasFactor] && objc_msgSend(v12, "hasLevel"))
        {
          v13 = [v12 level];
          v14 = [v12 factor];
          v15 = [v14 name];
          [v5 setObject:v13 forKeyedSubscript:v15];

          v16 = [v12 level];
          v17 = [(WBSTrialManager *)self getFactorValueAsString:v16];

          if (v17)
          {
            v18 = [v12 factor];
            v19 = [v18 name];
            [v29 setObject:v17 forKeyedSubscript:v19];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v20 = [(WBSTrialManager *)self trialClient];
  v21 = [v20 experimentIdentifiersWithNamespaceName:@"SAFARI_SEARCH_RANKING"];

  if (v21)
  {
    os_unfair_lock_lock(&self->_lock);
    [(WBSTrialManager *)self setFactors:v5];
    v22 = [v21 experimentId];
    [(WBSTrialManager *)self setExperimentId:v22];

    v23 = [v21 treatmentId];
    [(WBSTrialManager *)self setTreatmentId:v23];

    [(WBSTrialManager *)self setReady:1];
    os_unfair_lock_unlock(&self->_lock);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__WBSTrialManager_fetchFactorsInNamespace___block_invoke;
    block[3] = &unk_1E7FB6D90;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v24 = [(WBSTrialManager *)self experimentId];
    v25 = [(WBSTrialManager *)self treatmentId];
    v26 = v29;
    v27 = [(WBSTrialManager *)self prepareLogDictionary:1 withExperimentId:v24 withTreatmentId:v25 isCounterFactualSearch:[(WBSTrialManager *)self isCFEnabled] withFactorData:v29];
    [(WBSTrialManager *)self registerDiagnosticInfo:v27];
  }

  else
  {
    v28 = [(WBSTrialManager *)self prepareLogDictionary:0 withExperimentId:0 withTreatmentId:0 isCounterFactualSearch:0 withFactorData:0];
    [(WBSTrialManager *)self registerDiagnosticInfo:v28];

    v26 = v29;
  }
}

void __43__WBSTrialManager_fetchFactorsInNamespace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E69C8D88] object:*(a1 + 32)];
}

- (id)factorWithName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WBSTrialManager *)self factors];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (WBSTrialIdentifiers)identifiers
{
  v3 = objc_alloc_init(WBSTrialIdentifiers);
  [(WBSTrialIdentifiers *)v3 setNamespaceName:@"SAFARI_SEARCH_RANKING"];
  os_unfair_lock_lock(&self->_lock);
  if (self->_treatmentId)
  {
    [(WBSTrialIdentifiers *)v3 setExperimentId:self->_experimentId];
    [(WBSTrialIdentifiers *)v3 setTreatmentId:self->_treatmentId];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (self->_customFactorsDictionary)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)setFactorWithName:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  customFactorsDictionary = self->_customFactorsDictionary;
  if (!customFactorsDictionary)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_customFactorsDictionary;
    self->_customFactorsDictionary = v8;

    customFactorsDictionary = self->_customFactorsDictionary;
  }

  [(NSMutableDictionary *)customFactorsDictionary setObject:v6 forKeyedSubscript:v10];
}

- (id)getNumberFactorWithName:(id)a3
{
  customFactorsDictionary = self->_customFactorsDictionary;
  if (customFactorsDictionary)
  {
    v5 = [(NSMutableDictionary *)customFactorsDictionary objectForKeyedSubscript:a3];
    goto LABEL_13;
  }

  v6 = [(WBSTrialManager *)self factorWithName:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 levelOneOfCase];
    switch(v8)
    {
      case 15:
        v10 = MEMORY[0x1E696AD98];
        [v7 doubleValue];
        v9 = [v10 numberWithDouble:?];
        goto LABEL_11;
      case 13:
        v9 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v7, "longValue")}];
        goto LABEL_11;
      case 10:
        v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "BOOLeanValue")}];
LABEL_11:
        v5 = v9;
        goto LABEL_12;
    }
  }

  v5 = 0;
LABEL_12:

LABEL_13:

  return v5;
}

- (id)stringFactorWithName:(id)a3
{
  v3 = [(WBSTrialManager *)self factorWithName:a3];
  v4 = v3;
  if (v3 && [v3 levelOneOfCase] == 11)
  {
    v5 = [v4 stringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getRetrievalFactorName:(id)a3 forCF:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 stringByAppendingString:@"_cf"];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (BOOL)getBoolFactor:(id)a3 forCF:(BOOL)a4 forDefault:(BOOL)a5
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:a3 forCF:a4];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    a5 = [v8 BOOLValue];
  }

  return a5;
}

- (int64_t)getIntFactor:(id)a3 forCF:(BOOL)a4 forDefault:(int64_t)a5
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:a3 forCF:a4];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    a5 = [v8 integerValue];
  }

  return a5;
}

- (double)getFloatFactor:(id)a3 forCF:(BOOL)a4 forDefault:(double)a5
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:a3 forCF:a4];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    [v8 floatValue];
    a5 = v9;
  }

  return a5;
}

- (id)prepareLogDictionary:(BOOL)a3 withExperimentId:(id)a4 withTreatmentId:(id)a5 isCounterFactualSearch:(BOOL)a6 withFactorData:(id)a7
{
  v8 = a6;
  v10 = a3;
  v23[4] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = v13;
  if (v10)
  {
    if (v13)
    {
      v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:0];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
    }

    else
    {
      v16 = @"No factor data available";
    }

    v18 = @"Unknown Experiment ID";
    if (v11)
    {
      v18 = v11;
    }

    v22[0] = @"Experiment ID";
    v22[1] = @"Treatment ID";
    v19 = @"Unknown Treatment ID";
    if (v12)
    {
      v19 = v12;
    }

    v23[0] = v18;
    v23[1] = v19;
    v20 = @"NO";
    if (v8)
    {
      v20 = @"YES";
    }

    v22[2] = @"Counterfactual experiment";
    v22[3] = @"Factors";
    v23[2] = v20;
    v23[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  }

  else
  {
    v17 = &unk_1F3A9B4D8;
  }

  return v17;
}

- (id)getFactorValueAsString:(id)a3
{
  v3 = a3;
  v4 = [v3 levelOneOfCase];
  v5 = @"Unsupported value parsing";
  if (v4 > 12)
  {
    if (v4 == 13)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v3, "longValue")}];
    }

    else
    {
      if (v4 != 15)
      {
        goto LABEL_11;
      }

      v6 = MEMORY[0x1E696AD98];
      [v3 doubleValue];
      v7 = [v6 numberWithDouble:?];
    }

    goto LABEL_10;
  }

  if (v4 == 10)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "BOOLeanValue")}];
LABEL_10:
    v8 = v7;
    v5 = [v7 stringValue];

    goto LABEL_11;
  }

  if (v4 == 11)
  {
    v5 = [v3 stringValue];
  }

LABEL_11:

  return v5;
}

- (void)registerDiagnosticInfo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C8868];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__WBSTrialManager_registerDiagnosticInfo___block_invoke;
  v9[3] = &unk_1E7FB68F8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 registeredStateCollectorWithLogLabel:@"Trial experiment state" payloadProvider:v9];
  stateCollector = self->_stateCollector;
  self->_stateCollector = v7;
}

@end