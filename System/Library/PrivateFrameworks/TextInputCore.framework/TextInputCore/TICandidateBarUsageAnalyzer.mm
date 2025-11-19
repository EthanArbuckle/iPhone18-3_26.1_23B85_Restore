@interface TICandidateBarUsageAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (TICandidateBarUsageAnalyzer)init;
- (id)stringFromInputMethod:(unint64_t)a3;
- (id)stringFromSelectionType:(unint64_t)a3;
- (void)analyzeWordEntry:(id)a3;
- (void)dispatchEventWithInputMethod:(unint64_t)a3 typingEngineType:(unsigned int)a4 selectionType:(unint64_t)a5 keyboardState:(id)a6;
- (void)registerEventSpec;
@end

@implementation TICandidateBarUsageAnalyzer

- (id)stringFromSelectionType:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"None";
  }

  else
  {
    return *(&off_278732010 + a3 - 1);
  }
}

- (id)stringFromInputMethod:(unint64_t)a3
{
  if (a3)
  {
    return @"Pathed";
  }

  else
  {
    return @"Tapped";
  }
}

- (void)dispatchEventWithInputMethod:(unint64_t)a3 typingEngineType:(unsigned int)a4 selectionType:(unint64_t)a5 keyboardState:(id)a6
{
  v53[20] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = [TIKBAnalyticsMetricsContext alloc];
  v11 = [(TITypingSession *)self->_currentSession sessionParams];
  v12 = [v11 activeInputModes];
  v13 = [(TITypingSession *)self->_currentSession sessionParams];
  v14 = [v13 testingParameters];
  v15 = [(TIKBAnalyticsMetricsContext *)v10 initWithKeyboardState:v9 activeInputModes:v12 testingParameters:v14];

  v52[0] = @"inputMethod";
  v51 = [(TICandidateBarUsageAnalyzer *)self stringFromInputMethod:a3];
  v53[0] = v51;
  v52[1] = @"selectionType";
  v50 = [(TICandidateBarUsageAnalyzer *)self stringFromSelectionType:a5];
  v53[1] = v50;
  v52[2] = @"predictionEnabled";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:self->_predictionEnabled];
  v53[2] = v49;
  v52[3] = @"continuousPathEnabled";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousPathEnabled];
  v53[3] = v48;
  v52[4] = @"autocorrectionEnabled";
  v16 = MEMORY[0x277CCABB0];
  v17 = [(TIKBAnalyticsMetricsContext *)v15 keyboardType];
  v18 = 18;
  if (v17 == 5)
  {
    v18 = 19;
  }

  v47 = [v16 numberWithBool:*(&self->super.isa + v18)];
  v53[4] = v47;
  v52[5] = kFeatureKeyboardUsage;
  v46 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v45 = [v46 featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v15];
  v53[5] = v45;
  v52[6] = kFeatureContinuousPathUsage;
  v44 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v43 = [v44 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v15];
  v53[6] = v43;
  v52[7] = kFeatureAutocorrectionUsage;
  v42 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v41 = [v42 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v15];
  v53[7] = v41;
  v52[8] = kFeatureCandidateBarUsage;
  v40 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v39 = [v40 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v15];
  v53[8] = v39;
  v52[9] = kFeatureMultilingualUsage;
  v38 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v37 = [v38 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v15];
  v53[9] = v37;
  v52[10] = kFeatureStringTypingSpeed;
  v36 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v35 = [v36 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v15];
  v53[10] = v35;
  v52[11] = kFeatureStringTypingEngine;
  v34 = TIKeyboardCandidateTypingEngineTypeToString();
  v53[11] = v34;
  v52[12] = kFeatureStringAssetAvailabilityStatus;
  v19 = [(TITypingSession *)self->_currentSession sessionParams];
  v20 = [v19 assetAvailabilityStatus];
  v21 = @"Installed";
  if (!v20)
  {
    v21 = @"Unavailable";
  }

  v22 = v21;
  v53[12] = v22;
  v52[13] = kFeatureStringKeyboardLanguage;
  v23 = [(TIAnalyticsMetricsContext *)v15 inputLanguage];
  v53[13] = v23;
  v52[14] = kFeatureStringKeyboardRegion;
  v24 = [(TIAnalyticsMetricsContext *)v15 inputRegion];
  v53[14] = v24;
  v52[15] = kFeatureStringKeyboardVariant;
  v25 = [(TIKBAnalyticsMetricsContext *)v15 inputVariant];
  v53[15] = v25;
  v52[16] = kFeatureStringKeyboardSecondaryLanguage;
  v26 = [(TIKBAnalyticsMetricsContext *)v15 secondaryLanguage];
  v53[16] = v26;
  v52[17] = kFeatureStringKeyboardSecondaryRegion;
  v27 = [(TIKBAnalyticsMetricsContext *)v15 secondaryRegion];
  v53[17] = v27;
  v52[18] = kFeatureStringKeyboardLayout;
  v28 = [(TIKBAnalyticsMetricsContext *)v15 layoutName];
  v53[18] = v28;
  v52[19] = kFeatureStringKeyboardType;
  v29 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v15 keyboardType]];
  v53[19] = v29;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:20];

  v30 = [MEMORY[0x277D6F318] sharedInstance];
  v31 = [(TIKBAnalyticsMetricsContext *)v15 testingParameters];
  [v30 dispatchEventWithName:@"candidateBarUsage" payload:v33 testingParameters:v31 allowSparsePayload:0];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)registerEventSpec
{
  v57[20] = *MEMORY[0x277D85DE8];
  v48 = MEMORY[0x277D6F300];
  v2 = MEMORY[0x277D6F308];
  v56[0] = @"Tapped";
  v56[1] = @"Pathed";
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v53 = [v2 stringFieldSpecWithName:@"inputMethod" allowedValues:v54];
  v57[0] = v53;
  v3 = MEMORY[0x277D6F308];
  v55[0] = @"None";
  v55[1] = @"Typed String";
  v55[2] = @"Autocorrection";
  v55[3] = @"Prediction";
  v55[4] = @"Completion";
  v55[5] = @"Emoji Prediction";
  v55[6] = @"Emoji Replacement";
  v55[7] = @"Text Replacement";
  v55[8] = @"PQT";
  v55[9] = @"Smart Response";
  v55[10] = @"Other";
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:11];
  v51 = [v3 stringFieldSpecWithName:@"selectionType" allowedValues:v52];
  v57[1] = v51;
  v50 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"predictionEnabled"];
  v57[2] = v50;
  v49 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"continuousPathEnabled"];
  v57[3] = v49;
  v47 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"autocorrectionEnabled"];
  v57[4] = v47;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureKeyboardUsage;
  v46 = TIFeatureUsageAllowedValues();
  v45 = [v4 stringFieldSpecWithName:v5 allowedValues:v46];
  v57[5] = v45;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureContinuousPathUsage;
  v44 = TIFeatureUsageAllowedValues();
  v43 = [v6 stringFieldSpecWithName:v7 allowedValues:v44];
  v57[6] = v43;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureAutocorrectionUsage;
  v42 = TIFeatureUsageAllowedValues();
  v41 = [v8 stringFieldSpecWithName:v9 allowedValues:v42];
  v57[7] = v41;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureCandidateBarUsage;
  v40 = TIFeatureUsageAllowedValues();
  v39 = [v10 stringFieldSpecWithName:v11 allowedValues:v40];
  v57[8] = v39;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureMultilingualUsage;
  v38 = TIFeatureUsageAllowedValues();
  v37 = [v12 stringFieldSpecWithName:v13 allowedValues:v38];
  v57[9] = v37;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringTypingSpeed;
  v36 = TITypingSpeedAllowedValues();
  v35 = [v14 stringFieldSpecWithName:v15 allowedValues:v36];
  v57[10] = v35;
  v16 = MEMORY[0x277D6F308];
  v17 = kFeatureStringTypingEngine;
  v34 = TITypingEngineAllowedValues();
  v33 = [v16 stringFieldSpecWithName:v17 allowedValues:v34];
  v57[11] = v33;
  v18 = MEMORY[0x277D6F308];
  v19 = kFeatureStringAssetAvailabilityStatus;
  v32 = TIAssetAvailabilityStatusAllowedValues();
  v20 = [v18 stringFieldSpecWithName:v19 allowedValues:v32];
  v57[12] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v57[13] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v57[14] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v57[15] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v57[16] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v57[17] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v57[18] = v26;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v57[19] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:20];
  v29 = [v48 eventSpecWithName:@"candidateBarUsage" inputModeRequired:0 fieldSpecs:v28];

  v30 = [MEMORY[0x277D6F318] sharedInstance];
  [v30 registerEventSpec:v29];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)analyzeWordEntry:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 acceptedCandidate];
  v6 = [v4 candidatesOffered];
  v7 = [v6 lastObject];

  v8 = [v5 candidate];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v5 isContinuousPathConversion];
    if (([v4 wordEntryType] & 4) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 proactiveTrigger], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v11 = 8;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = 7;
        }

        else
        {
          if (([v5 isResponseKitCandidate] & 1) == 0)
          {
            v13 = [v5 candidate];
            if ([v13 _containsEmoji])
            {
              v14 = [v5 input];
              v15 = [v14 length];

              if (!v15)
              {
                v11 = 5;
                goto LABEL_35;
              }
            }

            else
            {
            }

            v16 = [v5 candidate];
            if ([v16 _containsEmoji])
            {
              v17 = [v5 input];
              v18 = [v17 length];

              if (v18)
              {
                v11 = 6;
                goto LABEL_35;
              }
            }

            else
            {
            }

            v19 = [v5 input];
            v20 = [v19 length];

            if (v20)
            {
              v21 = [v5 candidate];
              v22 = [v7 corrections];
              v23 = [v22 autocorrection];
              v24 = [v23 input];
              v25 = [v21 isEqualToString:v24];

              if (v25)
              {
                v11 = 1;
              }

              else
              {
                v26 = [v5 candidate];
                v27 = [v7 corrections];
                v28 = [v27 autocorrection];
                v29 = [v28 candidate];
                v30 = [v26 isEqualToString:v29];

                if (v30)
                {
                  v11 = 2;
                }

                else
                {
                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  obj = [v7 predictions];
                  v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
                  if (v42)
                  {
                    v41 = *v44;
                    v11 = 4;
LABEL_27:
                    v31 = 0;
                    while (1)
                    {
                      if (*v44 != v41)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v32 = *(*(&v43 + 1) + 8 * v31);
                      v33 = [v5 candidate];
                      v34 = [v32 candidate];
                      v35 = [v33 isEqualToString:v34];

                      if (v35)
                      {
                        break;
                      }

                      if (v42 == ++v31)
                      {
                        v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
                        if (v42)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_33;
                      }
                    }
                  }

                  else
                  {
LABEL_33:
                    v11 = 10;
                  }
                }
              }
            }

            else
            {
              v11 = 3;
            }

            goto LABEL_35;
          }

          v11 = 9;
        }
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_35:
    v36 = [v4 acceptedCandidate];
    v37 = [v36 typingEngine];
    v38 = [v4 keyboardState];
    [(TICandidateBarUsageAnalyzer *)self dispatchEventWithInputMethod:v10 typingEngineType:v37 selectionType:v11 keyboardState:v38];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    objc_storeStrong(&self->_currentSession, a3);
    v9 = [MEMORY[0x277D6F470] sharedPreferencesController];
    self->_predictionEnabled = [v9 BOOLForPreferenceKey:*MEMORY[0x277D6F928]];
    self->_continuousPathEnabled = [v9 BOOLForPreferenceKey:*MEMORY[0x277D6F848]];
    self->_autocorrectionEnabled = [v9 BOOLForPreferenceKey:*MEMORY[0x277D6F7C0]];
    self->_hwAutocorrectionEnabled = [v9 BOOLForPreferenceKey:*MEMORY[0x277D6F638]];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(TITypingSession *)self->_currentSession userActionHistory];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (![v15 actionType])
          {
            [(TICandidateBarUsageAnalyzer *)self analyzeWordEntry:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5 != 0;
}

- (TICandidateBarUsageAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TICandidateBarUsageAnalyzer;
  v2 = [(TICandidateBarUsageAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TICandidateBarUsageAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end