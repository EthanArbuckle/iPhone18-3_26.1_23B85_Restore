@interface TIKBUserModel
+ (TIKBUserModel)userModelWithInputMode:(id)a3 userModelDataStore:(id)a4 metricDescriptorRegistry:(id)a5 fromDate:(id)a6;
- (TIKBUserModel)initWithInputMode:(id)a3 userModelDataStore:(id)a4 metricDescriptorRegistry:(id)a5 fromDate:(id)a6;
- (id)dictForPowerLog;
- (id)durableCounterKeys;
- (id)settingsDictionary;
- (id)valueForMetricWithName:(id)a3 withContext:(id)a4;
- (id)valuesByBucketedWordLengthForMetricWithName:(id)a3 withContext:(id)a4;
- (void)addDescriptor:(id)a3 toWeeklyMetricKeys:(id)a4;
- (void)addMetric:(id)a3 toWeeklyMetricKeys:(id)a4;
- (void)dispatchFeedbackAnalyzers:(id)a3 aligned:(id)a4 revisionRateAnalysisSummary:(id)a5;
- (void)doLoad;
- (void)sessionDidEnd:(id)a3 aligned:(id)a4;
- (void)trackPowerLogIfNecessary;
@end

@implementation TIKBUserModel

- (id)valuesByBucketedWordLengthForMetricWithName:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TIUserModel *)self loadIfNecessary];
  v8 = [(TIUserModel *)self valuesFromContext:v6];

  v9 = [v8 metricValuesByWordLength:v7 userModel:self forNumberOfDays:*MEMORY[0x277D6FD20]];

  return v9;
}

- (id)valueForMetricWithName:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TIUserModel *)self loadIfNecessary];
  v8 = [(TIUserModel *)self valuesFromContext:v6];

  v9 = [v8 metricValue:v7 userModel:self forNumberOfDays:*MEMORY[0x277D6FD20]];

  return v9;
}

- (void)addDescriptor:(id)a3 toWeeklyMetricKeys:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 calculationExpression];

  if (v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v6 calculationDependencies];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(TIKBUserModel *)self addMetric:*(*(&v16 + 1) + 8 * v13++) toWeeklyMetricKeys:v7];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = [v6 metricName];
    [v7 addObject:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addMetric:(id)a3 toWeeklyMetricKeys:(id)a4
{
  v7 = a4;
  v6 = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry metricDescriptorWithName:a3];
  if (v6 && [v6 isMemberOfClass:objc_opt_class()])
  {
    [(TIKBUserModel *)self addDescriptor:v6 toWeeklyMetricKeys:v7];
  }
}

- (void)doLoad
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_metricDescriptorRegistry)
  {
    v3 = +[TIMetricDescriptorRegistry registry];
    metricDescriptorRegistry = self->_metricDescriptorRegistry;
    self->_metricDescriptorRegistry = v3;
  }

  v5 = [(TIUserModel *)self weeklyMetricKeys];

  if (!v5)
  {
    v6 = objc_opt_new();
    [v6 addObject:kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard];
    [v6 addObject:kFeatureValueWithWordLenWholeWordsPathed];
    [v6 addObject:kFeatureValueWithWordLenWordCompletionsPathed];
    [v6 addObject:kFeatureValueWithWordLenPathEligibleWordsTapped];
    [v6 addObject:kFeatureValueWithWordLenPathIneligibleWordsTapped];
    [v6 addObject:kFeatureCounterDurationPathedWords];
    [v6 addObject:kFeatureCounterDurationTappedWords];
    [v6 addObject:kFeatureValueWithWordLenWholeWordsPathed];
    [v6 addObject:kFeatureValueWithWordLenWordCompletionsPathed];
    [v6 addObject:kFeatureValueWithWordLenPathEligibleWordsTapped];
    [v6 addObject:kFeatureValueWithWordLenPathIneligibleWordsTapped];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry allMetricDescriptors];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          if ([v12 isMemberOfClass:objc_opt_class()])
          {
            [(TIKBUserModel *)self addDescriptor:v12 toWeeklyMetricKeys:v6];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [v6 allObjects];
    [(TIUserModel *)self setWeeklyMetricKeys:v13];
  }

  v15.receiver = self;
  v15.super_class = TIKBUserModel;
  [(TIUserModel *)&v15 doLoad];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dispatchFeedbackAnalyzers:(id)a3 aligned:(id)a4 revisionRateAnalysisSummary:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [TIAutocorrectionFeedbackAnalyzer analyzerForUserModel:self revisionRateAnalysisSummary:a5];
  [v10 analyzeSession:v9 alignedSession:v8 withConfidence:{objc_msgSend(v10, "evaluateConfidenceInSession:alignedSession:", v9, v8)}];
}

- (void)sessionDidEnd:(id)a3 aligned:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TIFavoniusTypingSessionAnalyzer favoniusTypingSessionAnalyzerForUserModel:self];
  [v8 analyzeSession:v7 alignedSession:v6 withConfidence:{objc_msgSend(v8, "evaluateConfidenceInSession:alignedSession:", v7, v6)}];
}

- (id)dictForPowerLog
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(TIUserModel *)self contexts];
  v54 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if (v54)
  {
    v52 = *v56;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(TIUserModel *)self valuesFromContext:*(*(&v55 + 1) + 8 * i)];
        v10 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenPathEligibleWordsTapped];
        v11 = [v10 currentCounts];

        if ([v11 count])
        {
          v12 = 0;
          do
          {
            v13 = [v11 objectAtIndex:v12];
            v14 = [v13 intValue];

            v5 = (v14 + v5);
            v4 = (v4 + v14 * (v12++ + 2));
          }

          while (v12 != [v11 count]);
        }

        v15 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenPathIneligibleWordsTapped];
        v16 = [v15 currentCounts];

        if ([v16 count])
        {
          v17 = 0;
          do
          {
            v18 = [v16 objectAtIndex:v17];
            v19 = [v18 intValue];

            v5 = (v19 + v5);
            v4 = (v4 + v19 * (v17++ + 2));
          }

          while (v17 != [v16 count]);
        }

        v20 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenWholeWordsPathed];
        v21 = [v20 currentCounts];

        if ([v21 count])
        {
          v22 = 0;
          do
          {
            v23 = [v21 objectAtIndex:v22];
            v24 = [v23 intValue];

            v3 = (v24 + v3);
            v2 = (v2 + v24 * (v22++ + 2));
          }

          while (v22 != [v21 count]);
        }

        v25 = [v9 getTransientCounterForKey:kFeatureValueWithWordLenWordCompletionsPathed];
        v26 = [v25 currentCounts];

        if ([v26 count])
        {
          v27 = 0;
          do
          {
            v28 = [v26 objectAtIndex:v27];
            v29 = [v28 intValue];

            v3 = (v29 + v3);
            v2 = (v2 + v29 * (v27++ + 2));
          }

          while (v27 != [v26 count]);
        }

        v30 = [v9 getTransientCounterForKey:kFeatureCounterDurationTappedWords];
        v31 = [v30 currentCounts];

        if ([v31 count])
        {
          v32 = 0;
          do
          {
            v33 = [v31 objectAtIndex:v32];
            [v33 doubleValue];
            v35 = v34;

            v7 = v7 + v35;
            ++v32;
          }

          while (v32 != [v31 count]);
        }

        v36 = [v9 getTransientCounterForKey:kFeatureCounterDurationPathedWords];
        v37 = [v36 currentCounts];

        if ([v37 count])
        {
          v38 = 0;
          do
          {
            v39 = [v37 objectAtIndex:v38];
            [v39 doubleValue];
            v41 = v40;

            v6 = v6 + v41;
            ++v38;
          }

          while (v38 != [v37 count]);
        }
      }

      v54 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v54);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  if (v3 | v5)
  {
    v59[0] = @"WordsTapped";
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v60[0] = v43;
    v59[1] = @"CharactersTapped";
    v44 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v60[1] = v44;
    v59[2] = @"WordsPathed";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v60[2] = v45;
    v59[3] = @"CharactersPathed";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    v60[3] = v46;
    v59[4] = @"TimeSpentPathTyping";
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / 1000.0];
    v60[4] = v47;
    v59[5] = @"TimeSpentTapTyping";
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / 1000.0];
    v60[5] = v48;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:6];
  }

  else
  {
    v42 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)trackPowerLogIfNecessary
{
  [(TIKBUserModel *)self dictForPowerLog];
  if (objc_claimAutoreleasedReturnValue() && PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
  }

  MEMORY[0x2821F9730]();
}

- (id)settingsDictionary
{
  v22[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F830];
  v22[0] = *MEMORY[0x277D6F848];
  v22[1] = v4;
  v5 = *MEMORY[0x277D6F638];
  v22[2] = *MEMORY[0x277D6F7C0];
  v22[3] = v5;
  v6 = *MEMORY[0x277D6F998];
  v22[4] = *MEMORY[0x277D6F928];
  v22[5] = v6;
  [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v3 BOOLForPreferenceKey:{v12, v17}];
        v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        [v2 setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)durableCounterKeys
{
  v5[10] = *MEMORY[0x277D85DE8];
  v5[0] = kFeatureCounterTotalWordsTyped;
  v5[1] = kFeatureCounterTotalWordsPathed;
  v5[2] = kFeatureCounterTotalWordsAutocorrected;
  v5[3] = kFeatureCounterTotalWordsFromCandidateBar;
  v5[4] = kFeatureCounterTotalWordsTypedOnFloatingKeyboard;
  v5[5] = kFeatureCounterTotalWordsTypedInSecondaryLanguage;
  v5[6] = kFeedbackCounterAutocorrectionEnablementCorrectedWords;
  v5[7] = kFeedbackCounterAutocorrectionEnablementTappedWords;
  v5[8] = kFeedbackCounterAutocorrectionEnablementRevisedWords;
  v5[9] = kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (TIKBUserModel)initWithInputMode:(id)a3 userModelDataStore:(id)a4 metricDescriptorRegistry:(id)a5 fromDate:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TIKBUserModel;
  v12 = [(TIUserModel *)&v15 initWithInputMode:a3 userModelDataStore:a4 weeklyMetricKeys:0 fromDate:a6 explicitTearDown:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_metricDescriptorRegistry, a5);
    [(TIUserModel *)v13 setConfigurationDelegate:v13];
  }

  return v13;
}

+ (TIKBUserModel)userModelWithInputMode:(id)a3 userModelDataStore:(id)a4 metricDescriptorRegistry:(id)a5 fromDate:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[TIKBUserModel alloc] initWithInputMode:v12 userModelDataStore:v11 metricDescriptorRegistry:v10 fromDate:v9];

  return v13;
}

@end