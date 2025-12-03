@interface WBSTrialManager
+ (id)shared;
- (BOOL)getBoolFactor:(id)factor forCF:(BOOL)f forDefault:(BOOL)default;
- (BOOL)inExperiment;
- (BOOL)isAllowFavoritesInFrequentlyVisitedEnabled;
- (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled;
- (BOOL)isCFEnabled;
- (BOOL)isDropOutliersInFrequentlyVisitedEnabled;
- (BOOL)runCFFlow;
- (WBSTrialIdentifiers)identifiers;
- (WBSTrialManager)init;
- (double)CFSearchTimeoutForDefault:(double)default;
- (double)getFloatFactor:(id)factor forCF:(BOOL)f forDefault:(double)default;
- (id)factorWithName:(id)name;
- (id)getFactorValueAsString:(id)string;
- (id)getNumberFactorWithName:(id)name;
- (id)getRetrievalFactorName:(id)name forCF:(BOOL)f;
- (id)prepareLogDictionary:(BOOL)dictionary withExperimentId:(id)id withTreatmentId:(id)treatmentId isCounterFactualSearch:(BOOL)search withFactorData:(id)data;
- (id)stringFactorWithName:(id)name;
- (int64_t)getIntFactor:(id)factor forCF:(BOOL)f forDefault:(int64_t)default;
- (unint64_t)_weightedRandomIdentifier;
- (unint64_t)trialABGroupIdentifier;
- (void)fetchFactorsInNamespace:(id)namespace;
- (void)registerDiagnosticInfo:(id)info;
- (void)setFactorWithName:(id)name value:(id)value;
@end

@implementation WBSTrialManager

+ (id)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WBSTrialManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"WBSDisableTrial"];

  if ((v4 & 1) != 0 || (v13.receiver = self, v13.super_class = WBSTrialManager, (self = [(WBSTrialManager *)&v13 init]) == 0))
  {
    selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
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
  isAllowFavoritesInFrequentlyVisitedEnabled = [MEMORY[0x1E69C8880] isAllowFavoritesInFrequentlyVisitedEnabled];

  return [(WBSTrialManager *)self getBoolFactor:@"enableAllowFavoritesInFrequentlyVisited" forCF:0 forDefault:isAllowFavoritesInFrequentlyVisitedEnabled];
}

- (unint64_t)trialABGroupIdentifier
{
  v3 = [(WBSTrialManager *)self getNumberFactorWithName:@"enablePostFixSearchEngineSuggestions"];
  bOOLValue = [v3 BOOLValue];

  v5 = [(WBSTrialManager *)self getNumberFactorWithName:@"checkServerCompletionForPrefixNavigationalIntent"];
  bOOLValue2 = [v5 BOOLValue];

  v7 = [(WBSTrialManager *)self getNumberFactorWithName:@"enablePrefixNavigationalIntent"];
  integerValue = [v7 integerValue];

  if (!bOOLValue2)
  {
    return 36;
  }

  if (integerValue)
  {
    v9 = bOOLValue;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return 35;
  }

  if (bOOLValue && !integerValue)
  {
    return 31;
  }

  switch(integerValue)
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)runCFFlow
{
  selfCopy = self;
  v29 = *MEMORY[0x1E69E9840];
  if (![(WBSTrialManager *)self isCFEnabled])
  {
    return 0;
  }

  factors = [(WBSTrialManager *)selfCopy factors];
  allKeys = [factors allKeys];

  customFactorsDictionary = selfCopy->_customFactorsDictionary;
  if (customFactorsDictionary)
  {
    allKeys2 = [(NSMutableDictionary *)customFactorsDictionary allKeys];

    allKeys = allKeys2;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = allKeys;
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
        v15 = [(WBSTrialManager *)selfCopy getNumberFactorWithName:v14];
        v16 = 1;
        v17 = [(WBSTrialManager *)selfCopy getRetrievalFactorName:v14 forCF:1];
        [(WBSTrialManager *)selfCopy getNumberFactorWithName:v17];
        v18 = v12;
        v19 = v11;
        v21 = v20 = selfCopy;

        LODWORD(v17) = [v15 isEqualToNumber:v21];
        selfCopy = v20;
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
  inExperiment = [(WBSTrialManager *)self inExperiment];
  if (inExperiment)
  {
    isDropOutliersInFrequentlyVisitedEnabled = [MEMORY[0x1E69C8880] isDropOutliersInFrequentlyVisitedEnabled];

    LOBYTE(inExperiment) = [(WBSTrialManager *)self getBoolFactor:@"enableDropOutliersInFrequentlyVisited" forCF:0 forDefault:isDropOutliersInFrequentlyVisitedEnabled];
  }

  return inExperiment;
}

- (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled
{
  isAllowLogOnURLsInFrequentlyVisitedEnabled = [MEMORY[0x1E69C8880] isAllowLogOnURLsInFrequentlyVisitedEnabled];

  return [(WBSTrialManager *)self getBoolFactor:@"enableAllowLogOnURLSInFrequentlyVisited" forCF:0 forDefault:isAllowLogOnURLsInFrequentlyVisitedEnabled];
}

- (double)CFSearchTimeoutForDefault:(double)default
{
  v4 = [(WBSTrialManager *)self getNumberFactorWithName:@"CFSearchTimeout"];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    default = v6;
  }

  return default;
}

- (BOOL)inExperiment
{
  if (![(WBSTrialManager *)self isReady])
  {
    return 0;
  }

  treatmentId = [(WBSTrialManager *)self treatmentId];
  v4 = treatmentId != 0;

  return v4;
}

- (void)fetchFactorsInNamespace:(id)namespace
{
  v36 = *MEMORY[0x1E69E9840];
  queue = [(WBSTrialManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  trialClient = [(WBSTrialManager *)self trialClient];
  v7 = [trialClient factorLevelsWithNamespaceName:@"SAFARI_SEARCH_RANKING"];

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
          level = [v12 level];
          factor = [v12 factor];
          name = [factor name];
          [v5 setObject:level forKeyedSubscript:name];

          level2 = [v12 level];
          v17 = [(WBSTrialManager *)self getFactorValueAsString:level2];

          if (v17)
          {
            factor2 = [v12 factor];
            name2 = [factor2 name];
            [dictionary setObject:v17 forKeyedSubscript:name2];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  trialClient2 = [(WBSTrialManager *)self trialClient];
  v21 = [trialClient2 experimentIdentifiersWithNamespaceName:@"SAFARI_SEARCH_RANKING"];

  if (v21)
  {
    os_unfair_lock_lock(&self->_lock);
    [(WBSTrialManager *)self setFactors:v5];
    experimentId = [v21 experimentId];
    [(WBSTrialManager *)self setExperimentId:experimentId];

    treatmentId = [v21 treatmentId];
    [(WBSTrialManager *)self setTreatmentId:treatmentId];

    [(WBSTrialManager *)self setReady:1];
    os_unfair_lock_unlock(&self->_lock);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__WBSTrialManager_fetchFactorsInNamespace___block_invoke;
    block[3] = &unk_1E7FB6D90;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    experimentId2 = [(WBSTrialManager *)self experimentId];
    treatmentId2 = [(WBSTrialManager *)self treatmentId];
    v26 = dictionary;
    v27 = [(WBSTrialManager *)self prepareLogDictionary:1 withExperimentId:experimentId2 withTreatmentId:treatmentId2 isCounterFactualSearch:[(WBSTrialManager *)self isCFEnabled] withFactorData:dictionary];
    [(WBSTrialManager *)self registerDiagnosticInfo:v27];
  }

  else
  {
    v28 = [(WBSTrialManager *)self prepareLogDictionary:0 withExperimentId:0 withTreatmentId:0 isCounterFactualSearch:0 withFactorData:0];
    [(WBSTrialManager *)self registerDiagnosticInfo:v28];

    v26 = dictionary;
  }
}

void __43__WBSTrialManager_fetchFactorsInNamespace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E69C8D88] object:*(a1 + 32)];
}

- (id)factorWithName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  factors = [(WBSTrialManager *)self factors];
  v6 = [factors objectForKey:nameCopy];

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

- (void)setFactorWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  customFactorsDictionary = self->_customFactorsDictionary;
  if (!customFactorsDictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_customFactorsDictionary;
    self->_customFactorsDictionary = dictionary;

    customFactorsDictionary = self->_customFactorsDictionary;
  }

  [(NSMutableDictionary *)customFactorsDictionary setObject:valueCopy forKeyedSubscript:nameCopy];
}

- (id)getNumberFactorWithName:(id)name
{
  customFactorsDictionary = self->_customFactorsDictionary;
  if (customFactorsDictionary)
  {
    v5 = [(NSMutableDictionary *)customFactorsDictionary objectForKeyedSubscript:name];
    goto LABEL_13;
  }

  v6 = [(WBSTrialManager *)self factorWithName:name];
  v7 = v6;
  if (v6)
  {
    levelOneOfCase = [v6 levelOneOfCase];
    switch(levelOneOfCase)
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

- (id)stringFactorWithName:(id)name
{
  v3 = [(WBSTrialManager *)self factorWithName:name];
  v4 = v3;
  if (v3 && [v3 levelOneOfCase] == 11)
  {
    stringValue = [v4 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (id)getRetrievalFactorName:(id)name forCF:(BOOL)f
{
  fCopy = f;
  nameCopy = name;
  v6 = nameCopy;
  if (fCopy)
  {
    v7 = [nameCopy stringByAppendingString:@"_cf"];
  }

  else
  {
    v7 = nameCopy;
  }

  v8 = v7;

  return v8;
}

- (BOOL)getBoolFactor:(id)factor forCF:(BOOL)f forDefault:(BOOL)default
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:factor forCF:f];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    default = [v8 BOOLValue];
  }

  return default;
}

- (int64_t)getIntFactor:(id)factor forCF:(BOOL)f forDefault:(int64_t)default
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:factor forCF:f];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    default = [v8 integerValue];
  }

  return default;
}

- (double)getFloatFactor:(id)factor forCF:(BOOL)f forDefault:(double)default
{
  v7 = [(WBSTrialManager *)self getRetrievalFactorName:factor forCF:f];
  v8 = [(WBSTrialManager *)self getNumberFactorWithName:v7];

  if (v8)
  {
    [v8 floatValue];
    default = v9;
  }

  return default;
}

- (id)prepareLogDictionary:(BOOL)dictionary withExperimentId:(id)id withTreatmentId:(id)treatmentId isCounterFactualSearch:(BOOL)search withFactorData:(id)data
{
  searchCopy = search;
  dictionaryCopy = dictionary;
  v23[4] = *MEMORY[0x1E69E9840];
  idCopy = id;
  treatmentIdCopy = treatmentId;
  dataCopy = data;
  v14 = dataCopy;
  if (dictionaryCopy)
  {
    if (dataCopy)
    {
      v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dataCopy options:0 error:0];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
    }

    else
    {
      v16 = @"No factor data available";
    }

    v18 = @"Unknown Experiment ID";
    if (idCopy)
    {
      v18 = idCopy;
    }

    v22[0] = @"Experiment ID";
    v22[1] = @"Treatment ID";
    v19 = @"Unknown Treatment ID";
    if (treatmentIdCopy)
    {
      v19 = treatmentIdCopy;
    }

    v23[0] = v18;
    v23[1] = v19;
    v20 = @"NO";
    if (searchCopy)
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

- (id)getFactorValueAsString:(id)string
{
  stringCopy = string;
  levelOneOfCase = [stringCopy levelOneOfCase];
  stringValue = @"Unsupported value parsing";
  if (levelOneOfCase > 12)
  {
    if (levelOneOfCase == 13)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(stringCopy, "longValue")}];
    }

    else
    {
      if (levelOneOfCase != 15)
      {
        goto LABEL_11;
      }

      v6 = MEMORY[0x1E696AD98];
      [stringCopy doubleValue];
      v7 = [v6 numberWithDouble:?];
    }

    goto LABEL_10;
  }

  if (levelOneOfCase == 10)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stringCopy, "BOOLeanValue")}];
LABEL_10:
    v8 = v7;
    stringValue = [v7 stringValue];

    goto LABEL_11;
  }

  if (levelOneOfCase == 11)
  {
    stringValue = [stringCopy stringValue];
  }

LABEL_11:

  return stringValue;
}

- (void)registerDiagnosticInfo:(id)info
{
  infoCopy = info;
  v5 = MEMORY[0x1E69C8868];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__WBSTrialManager_registerDiagnosticInfo___block_invoke;
  v9[3] = &unk_1E7FB68F8;
  v10 = infoCopy;
  v6 = infoCopy;
  v7 = [v5 registeredStateCollectorWithLogLabel:@"Trial experiment state" payloadProvider:v9];
  stateCollector = self->_stateCollector;
  self->_stateCollector = v7;
}

@end