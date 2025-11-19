@interface REContentRelevanceProviderManager
+ (id)_features;
- (BOOL)_suppportsPortarit;
- (BOOL)_suppportsSentimentAnalysis;
- (id)_valuesForProvider:(id)a3 context:(id)a4 features:(id)a5;
- (void)modelManagerDidUpdateModel:(id)a3;
- (void)pause;
- (void)predictorDidUpdate:(id)a3;
- (void)resume;
@end

@implementation REContentRelevanceProviderManager

+ (id)_features
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature sentimentAnalysisFeature];
  v9[0] = v2;
  v3 = +[REFeature negativeSentimentAnalysisFeature];
  v9[1] = v3;
  v4 = +[REFeature sentimentAnalysisCertaintyFeature];
  v9[2] = v4;
  v5 = +[REFeature portraitFeature];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_valuesForProvider:(id)a3 context:(id)a4 features:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v34 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v38;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      v16 = +[REFeature portraitFeature];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        v18 = +[(RESingleton *)REPortraitPredictor];
        v19 = [v7 keywords];
        [v18 userAffinityToContent:v19];
        v21 = [REFeatureValue featureValueWithDouble:v20];

        goto LABEL_18;
      }

      if (!v12)
      {
        sentimentAnalyzer = self->_sentimentAnalyzer;
        v23 = [v7 keywords];
        v12 = [(REMLSentimentAnalyzer *)sentimentAnalyzer sentimentForTokens:v23];
      }

      v24 = +[REFeature sentimentAnalysisFeature];
      v25 = [v15 isEqual:v24];

      if (v25)
      {
        [v12 postivieSentiment];
LABEL_16:
        v31 = v26;
        goto LABEL_17;
      }

      v27 = +[REFeature negativeSentimentAnalysisFeature];
      v28 = [v15 isEqual:v27];

      if (v28)
      {
        [v12 negativeSentiment];
        goto LABEL_16;
      }

      v29 = +[REFeature sentimentAnalysisCertaintyFeature];
      v30 = [v15 isEqual:v29];

      v31 = 0.0;
      if (v30)
      {
        [v12 certainty];
        goto LABEL_16;
      }

LABEL_17:
      v21 = [REFeatureValue featureValueWithDouble:v31];
LABEL_18:
      [v9 addObject:v21];
    }

    v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v11);
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_suppportsPortarit
{
  v2 = [(RERelevanceProviderManager *)self effectiveFeatures];
  v3 = +[REFeature portraitFeature];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)_suppportsSentimentAnalysis
{
  v2 = [(RERelevanceProviderManager *)self effectiveFeatures];
  v3 = +[REFeature sentimentAnalysisFeature];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)resume
{
  if ([(REContentRelevanceProviderManager *)self _suppportsPortarit])
  {
    v3 = +[(RESingleton *)REPortraitPredictor];
    [v3 addObserver:self];
  }

  if ([(REContentRelevanceProviderManager *)self _suppportsSentimentAnalysis])
  {
    v4 = [(RERelevanceProviderManager *)self environment];
    v5 = [v4 relevanceEngine];
    v14 = [v5 modelManager];

    v12 = v14;
    if (!v14)
    {
      RERaiseInternalException(*MEMORY[0x277CBE658], @"Model Manager should not be nil!", v6, v7, v8, v9, v10, v11, v13);
      v12 = 0;
    }

    [v12 addObserver:self];
    [(REContentRelevanceProviderManager *)self modelManagerDidUpdateModel:v14];
  }
}

- (void)pause
{
  if ([(REContentRelevanceProviderManager *)self _suppportsPortarit])
  {
    v3 = +[(RESingleton *)REPortraitPredictor];
    [v3 removeObserver:self];
  }

  if ([(REContentRelevanceProviderManager *)self _suppportsSentimentAnalysis])
  {
    v4 = [(RERelevanceProviderManager *)self environment];
    v5 = [v4 relevanceEngine];
    v7 = [v5 modelManager];

    [v7 removeObserver:self];
    sentimentAnalyzer = self->_sentimentAnalyzer;
    self->_sentimentAnalyzer = 0;
  }
}

- (void)modelManagerDidUpdateModel:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceProviderManager *)self _manager_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__REContentRelevanceProviderManager_modelManagerDidUpdateModel___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__REContentRelevanceProviderManager_modelManagerDidUpdateModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) sentimentAnalyzer];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v5 = *(a1 + 32);
  v6 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [v5 _scheduleUpdate:v6];
}

- (void)predictorDidUpdate:(id)a3
{
  v4 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

@end