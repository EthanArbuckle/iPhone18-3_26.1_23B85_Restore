@interface TIPreferencesAnalyzer
+ (id)normalizedInputModeIdentifierGroupsFromInputModes:(id)a3;
- (TIPreferencesAnalyzer)init;
- (TIPreferencesAnalyzer)initWithRegistry:(id)a3;
- (id)_createEventSpecForTextInputUserPreferenceChanges;
- (id)_createEventSpecForTextInputUserPreferenceState;
- (void)_dispatchEventPayloadWithPreferenceNameToChangesEvent:(id)a3 activeInputModes:(id)a4 currentValue:(id)a5 previousValue:(id)a6 changedAt:(id)a7 analyzedAt:(id)a8 buildAtChange:(id)a9 isFreshInstall:(BOOL)a10 approxDateOfBuildInstall:(id)a11 buildAtLastAnalysis:(id)a12;
- (void)_dispatchEventPayloadWithPreferenceNameToStateEvent:(id)a3 activeInputModes:(id)a4 currentValue:(id)a5;
- (void)_recordAnalysisOfPreferenceKey:(id)a3 inDomain:(id)a4;
- (void)_registerAnalyticsEventSpecWithAnalyticsService;
- (void)_resetChangedAtForPreferenceKey:(id)a3 inDomain:(id)a4;
- (void)_updateApproxBuildAtLastAnalysisWithBuild:(id)a3 andApproxDateOfInstall:(id)a4 ForPreferenceKey:(id)a5 inDomain:(id)a6;
- (void)analyzeRegisteredPreferences;
@end

@implementation TIPreferencesAnalyzer

- (id)_createEventSpecForTextInputUserPreferenceState
{
  if (_createEventSpecForTextInputUserPreferenceState_onceToken != -1)
  {
    dispatch_once(&_createEventSpecForTextInputUserPreferenceState_onceToken, &__block_literal_global_46);
  }

  v3 = _createEventSpecForTextInputUserPreferenceState___eventSpec;

  return v3;
}

void __72__TIPreferencesAnalyzer__createEventSpecForTextInputUserPreferenceState__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"preferenceName"];
  v1 = [MEMORY[0x277D6F308] stringFieldSpecWithName:{@"activeInputModes", v0}];
  v7[1] = v1;
  v2 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"currentValue"];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  v4 = [MEMORY[0x277D6F300] eventSpecWithName:@"textInputUserPreferenceState" inputModeRequired:0 fieldSpecs:v3];
  v5 = _createEventSpecForTextInputUserPreferenceState___eventSpec;
  _createEventSpecForTextInputUserPreferenceState___eventSpec = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_createEventSpecForTextInputUserPreferenceChanges
{
  if (_createEventSpecForTextInputUserPreferenceChanges_onceToken != -1)
  {
    dispatch_once(&_createEventSpecForTextInputUserPreferenceChanges_onceToken, &__block_literal_global_8431);
  }

  v3 = _createEventSpecForTextInputUserPreferenceChanges___eventSpec;

  return v3;
}

void __74__TIPreferencesAnalyzer__createEventSpecForTextInputUserPreferenceChanges__block_invoke()
{
  v17[10] = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"preferenceName"];
  v17[0] = v16;
  v15 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"activeInputModes"];
  v17[1] = v15;
  v14 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"previousValue"];
  v17[2] = v14;
  v0 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"currentValue"];
  v17[3] = v0;
  v1 = MEMORY[0x277D6F308];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
  v4 = [v1 integerFieldSpecWithName:@"daysSinceLastChangeBucket" minValue:v2 maxValue:v3 significantDigits:0];
  v17[4] = v4;
  v5 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysSinceUpgradeToOff" minValue:&unk_28400BE08 maxValue:0 significantDigits:0];
  v17[5] = v5;
  v6 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysSinceLastChange" minValue:&unk_28400BE08 maxValue:0 significantDigits:0];
  v17[6] = v6;
  v7 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"buildAtChange"];
  v17[7] = v7;
  v8 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"valueDidChange"];
  v17[8] = v8;
  v9 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"isNewUser"];
  v17[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:10];

  v11 = [MEMORY[0x277D6F300] eventSpecWithName:@"textInputUserPreferenceChanges" inputModeRequired:0 fieldSpecs:v10];
  v12 = _createEventSpecForTextInputUserPreferenceChanges___eventSpec;
  _createEventSpecForTextInputUserPreferenceChanges___eventSpec = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerAnalyticsEventSpecWithAnalyticsService
{
  v6 = [(TIPreferencesAnalyzer *)self _createEventSpecForTextInputUserPreferenceChanges];
  v3 = [MEMORY[0x277D6F318] sharedInstance];
  [v3 registerEventSpec:v6];

  v4 = [(TIPreferencesAnalyzer *)self _createEventSpecForTextInputUserPreferenceState];
  v5 = [MEMORY[0x277D6F318] sharedInstance];
  [v5 registerEventSpec:v4];
}

- (void)_dispatchEventPayloadWithPreferenceNameToStateEvent:(id)a3 activeInputModes:(id)a4 currentValue:(id)a5
{
  v17 = a5;
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  [v10 setObject:v9 forKey:@"preferenceName"];

  v11 = [v8 componentsJoinedByString:{@", "}];

  [v10 setObject:v11 forKey:@"activeInputModes"];
  if (v17)
  {
    v12 = v17;
    if ([MEMORY[0x277D6F320] isBoolean:v12])
    {
      v13 = [v12 BOOLValue];
      v14 = &unk_28400BE08;
      if (v13)
      {
        v14 = &unk_28400BDF0;
      }

      v15 = v14;

      v12 = v15;
    }

    [v10 setObject:v12 forKey:@"currentValue"];
  }

  else
  {
    [v10 setObject:&unk_28400BE08 forKey:@"currentValue"];
  }

  v16 = [MEMORY[0x277D6F318] sharedInstance];
  [v16 dispatchEventWithName:@"textInputUserPreferenceState" payload:v10 testingParameters:0 allowSparsePayload:1];
}

- (void)_dispatchEventPayloadWithPreferenceNameToChangesEvent:(id)a3 activeInputModes:(id)a4 currentValue:(id)a5 previousValue:(id)a6 changedAt:(id)a7 analyzedAt:(id)a8 buildAtChange:(id)a9 isFreshInstall:(BOOL)a10 approxDateOfBuildInstall:(id)a11 buildAtLastAnalysis:(id)a12
{
  v63 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a11;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = v16;
  [v23 setObject:v16 forKey:@"preferenceName"];
  v24 = [v17 componentsJoinedByString:{@", "}];
  [v23 setObject:v24 forKey:@"activeInputModes"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:a10];
  [v23 setObject:v25 forKey:@"isNewUser"];

  if (v18)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v18];
    [v23 setObject:v26 forKey:@"currentValue"];
  }

  if (v19)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
    [v23 setObject:v27 forKey:@"previousValue"];

    if (!v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    [v23 setObject:@"previousValueNotSet" forKey:@"previousValue"];
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  v28 = v20;
  [v28 timeIntervalSinceNow];
  v30 = v29;
  if (v29 <= 0.0)
  {
    v31 = (v29 / -86400.0);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v53 = [v28 description];
      v54 = [v28 dateByAddingTimeInterval:-v30];
      [v54 description];
      *buf = 136315650;
      v58 = "_daysSinceChangedAtDate";
      v59 = 2112;
      v60 = v53;
      v62 = v61 = 2112;
      v50 = v62;
      _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:Preference changes saved with a timestamp in the future. Refer rdar://98151099. changedAt:%@, now:%@", buf, 0x20u);
    }

    v31 = 0;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  [v23 setObject:v32 forKey:@"daysSinceLastChange"];

  v33 = &_bucketizeDaysSinceChangedAtDate_bucketMaxBoundingRanges;
  for (i = 1; i != 5; ++i)
  {
    v35 = *v33++;
    if (v35 >= v31)
    {
      break;
    }
  }

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
  [v23 setObject:v36 forKey:@"daysSinceLastChangeBucket"];

LABEL_16:
  if (v21)
  {
    [v23 setObject:v21 forKey:@"buildAtChange"];
  }

  v37 = v18;
  v38 = [v37 BOOLValue];
  if (v20 && v22 && !v38)
  {
    [v20 timeIntervalSinceDate:v22];
    if (v39 >= 0.0)
    {
      v41 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v20];
      [v41 duration];
      v40 = (v42 / 86400.0);

      if (v40 < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v51 = [v20 description];
        v52 = [v22 description];
        *buf = 136315650;
        v58 = "[TIPreferencesAnalyzer _dispatchEventPayloadWithPreferenceNameToChangesEvent:activeInputModes:currentValue:previousValue:changedAt:analyzedAt:buildAtChange:isFreshInstall:approxDateOfBuildInstall:buildAtLastAnalysis:]";
        v59 = 2112;
        v60 = v51;
        v61 = 2112;
        v62 = v52;
        _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:Preference changes saved with a timestamp in the future relative to date of BuildInstall. Refer rdar://98151099. changedAt:%@, approxDateOfBuildInstall:%@", buf, 0x20u);
      }

      v40 = 0;
    }

    v43 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
    [v23 setObject:v43 forKey:@"daysSinceUpgradeToOff"];
  }

LABEL_27:
  v46 = v37 != v19 && v20 != 0 && a8 == 0;
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v46];
  [v23 setObject:v47 forKey:@"valueDidChange"];

  v48 = [MEMORY[0x277D6F318] sharedInstance];
  [v48 dispatchEventWithName:@"textInputUserPreferenceChanges" payload:v23 testingParameters:0 allowSparsePayload:1];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_resetChangedAtForPreferenceKey:(id)a3 inDomain:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [v5 stringWithFormat:@"%@_changedAt", a3];
  CFPreferencesSetAppValue(v7, 0, v6);
}

- (void)_updateApproxBuildAtLastAnalysisWithBuild:(id)a3 andApproxDateOfInstall:(id)a4 ForPreferenceKey:(id)a5 inDomain:(id)a6
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  key = [v9 stringWithFormat:@"%@_approxDateOfBuildInstall", v11];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_buildAtLastAnalysis", v11];

  CFPreferencesSetAppValue(v14, v13, v10);
  CFPreferencesSetAppValue(key, v12, v10);
}

- (void)_recordAnalysisOfPreferenceKey:(id)a3 inDomain:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  key = [v5 stringWithFormat:@"%@_analyzedAt", a3];
  v7 = [MEMORY[0x277CBEAA8] now];
  CFPreferencesSetAppValue(key, v7, v6);
}

- (TIPreferencesAnalyzer)initWithRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIPreferencesAnalyzer;
  v6 = [(TIPreferencesAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TIPreferencesAnalyzer *)v6 _registerAnalyticsEventSpecWithAnalyticsService];
    objc_storeStrong(&v7->_registry, a3);
  }

  return v7;
}

- (TIPreferencesAnalyzer)init
{
  v3 = objc_alloc_init(TIPreferencesAnalyzerRegistry);
  v4 = [(TIPreferencesAnalyzer *)self initWithRegistry:v3];

  return v4;
}

- (void)analyzeRegisteredPreferences
{
  v21[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8469;
  v19 = __Block_byref_object_dispose__8470;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___getSystemActiveInputModes_block_invoke;
  aBlock[3] = &unk_278733760;
  aBlock[4] = &v15;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    TIDispatchSync();
  }

  v4 = v16[5];
  if (v4 && [v4 count])
  {
    v5 = [TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:v16[5]];
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v21[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];
  }

  else
  {
    v8 = &unk_28400B988;
  }

  _Block_object_dispose(&v15, 8);
  v9 = [(TIPreferencesAnalyzer *)self registry];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__TIPreferencesAnalyzer_analyzeRegisteredPreferences__block_invoke;
  v12[3] = &unk_278730AE0;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  [v9 enumerateRegisteredPreferencesUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__TIPreferencesAnalyzer_analyzeRegisteredPreferences__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v44 = a2;
  v9 = a3;
  v45 = a4;
  v10 = v9;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__8469;
  v54 = __Block_byref_object_dispose__8470;
  v55 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___getCurrentValueFromPreferenceController_block_invoke;
  aBlock[3] = &unk_278733648;
  v48 = v10;
  v49 = &v50;
  v11 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    TIDispatchSync();
  }

  v12 = v51[5];

  _Block_object_dispose(&v50, 8);
  v13 = v45;
  if (v12)
  {
    v13 = v12;
  }

  v46 = v13;

  if (a5)
  {
    [*(a1 + 32) _dispatchEventPayloadWithPreferenceNameToStateEvent:v10 activeInputModes:*(a1 + 40) currentValue:v46];
  }

  if ((a5 & 2) != 0)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v44;
    v16 = [v14 stringWithFormat:@"%@_previousValue", v10];
    v17 = CFPreferencesCopyAppValue(v16, v15);

    v18 = @"previousValueNotSet";
    if (v17)
    {
      v18 = v17;
    }

    v42 = v18;

    v19 = MEMORY[0x277CCACA8];
    v20 = v15;
    v21 = [v19 stringWithFormat:@"%@_changedAt", v10];
    v43 = CFPreferencesCopyAppValue(v21, v20);

    v22 = MEMORY[0x277CCACA8];
    v23 = v20;
    v24 = [v22 stringWithFormat:@"%@_analyzedAt", v10];
    v41 = CFPreferencesCopyAppValue(v24, v23);

    v25 = MEMORY[0x277CCACA8];
    v26 = v23;
    v27 = [v25 stringWithFormat:@"%@_buildAtChange", v10];
    v28 = CFPreferencesCopyAppValue(v27, v26);

    v29 = MEMORY[0x277CCACA8];
    v30 = v26;
    v31 = [v29 stringWithFormat:@"%@_approxDateOfBuildInstall", v10];
    v32 = CFPreferencesCopyAppValue(v31, v30);

    v33 = MEMORY[0x277CCACA8];
    v34 = v30;
    v35 = [v33 stringWithFormat:@"%@_buildAtLastAnalysis", v10];
    v36 = CFPreferencesCopyAppValue(v35, v34);

    v37 = MGGetStringAnswer();
    if (![v36 isEqualToString:v37] || !v32)
    {
      v38 = v37;

      v39 = [MEMORY[0x277CBEAA8] now];

      [*(a1 + 32) _updateApproxBuildAtLastAnalysisWithBuild:v38 andApproxDateOfInstall:v39 ForPreferenceKey:v10 inDomain:v34];
      v36 = v38;
      v32 = v39;
    }

    if (([v36 isEqualToString:v37] & 1) == 0)
    {
      [*(a1 + 32) _resetChangedAtForPreferenceKey:v10 inDomain:v34];
    }

    LOBYTE(v40) = DMGetUserDataDisposition() & 1;
    [*(a1 + 32) _dispatchEventPayloadWithPreferenceNameToChangesEvent:v10 activeInputModes:*(a1 + 40) currentValue:v46 previousValue:v42 changedAt:v43 analyzedAt:v41 buildAtChange:v28 isFreshInstall:v40 approxDateOfBuildInstall:v32 buildAtLastAnalysis:v36];

    [*(a1 + 32) _recordAnalysisOfPreferenceKey:v10 inDomain:v34];
  }
}

+ (id)normalizedInputModeIdentifierGroupsFromInputModes:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    v38 = v5;
    v39 = v4;
    v37 = *v44;
    do
    {
      v9 = 0;
      v40 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = TIInputModeGetMultilingualID();
        if (v11)
        {
          if ([v4 containsObject:v11])
          {
            goto LABEL_35;
          }

          [v4 addObject:v11];
          v12 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();
          v13 = [MEMORY[0x277CBEB18] array];
          v42 = [MEMORY[0x277CBEB58] set];
          v14 = @"Unknown";
          if ([v12 count])
          {
            v15 = 0;
            v16 = @"Unknown";
            do
            {
              v17 = [v12 objectAtIndexedSubscript:v15];
              v18 = TIInputModeGetNormalizedIdentifier();
              if (v18)
              {
                if (!v15)
                {
                  v19 = TIInputModeGetSWLayout();
                  v20 = v19;
                  if (v19)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v16;
                  }

                  v22 = v21;

                  v16 = v22;
                }

                if (v15 == [v12 count] - 1)
                {
                  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v18, v16];
                }

                else
                {
                  v23 = [v18 copy];
                }

                v24 = v23;
                [v13 addObject:v23];
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                v48 = "+[TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:]";
                _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:nil input mode found.", buf, 0xCu);
              }

              ++v15;
            }

            while (v15 < [v12 count]);
          }

          else
          {
            v16 = @"Unknown";
          }

          v31 = MEMORY[0x277CCACA8];
          v32 = [v13 componentsJoinedByString:{@", "}];
          v33 = [v31 stringWithFormat:@"(%@)", v32];
          [v41 addObject:v33];

          v5 = v38;
          v4 = v39;
          v8 = v37;
          v7 = v40;
        }

        else
        {
          v25 = TIInputModeGetNormalizedIdentifier();
          if (v25)
          {
            v12 = v25;
            v26 = TIInputModeGetSWLayout();
            v27 = v26;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v28 = @"Unknown";
            }

            v29 = v28;

            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v12, v29];

            [v41 addObject:v30];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v48 = "+[TIPreferencesAnalyzer normalizedInputModeIdentifierGroupsFromInputModes:]";
              _os_log_fault_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:nil input mode found.", buf, 0xCu);
            }

            v12 = 0;
          }
        }

LABEL_35:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v7);
  }

  v34 = [v41 allObjects];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

@end