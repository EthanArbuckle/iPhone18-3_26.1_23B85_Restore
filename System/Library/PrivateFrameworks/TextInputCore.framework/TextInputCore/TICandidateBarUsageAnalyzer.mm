@interface TICandidateBarUsageAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TICandidateBarUsageAnalyzer)init;
- (id)stringFromInputMethod:(unint64_t)method;
- (id)stringFromSelectionType:(unint64_t)type;
- (void)analyzeWordEntry:(id)entry;
- (void)dispatchEventWithInputMethod:(unint64_t)method typingEngineType:(unsigned int)type selectionType:(unint64_t)selectionType keyboardState:(id)state;
- (void)registerEventSpec;
@end

@implementation TICandidateBarUsageAnalyzer

- (id)stringFromSelectionType:(unint64_t)type
{
  if (type - 1 > 9)
  {
    return @"None";
  }

  else
  {
    return *(&off_278732010 + type - 1);
  }
}

- (id)stringFromInputMethod:(unint64_t)method
{
  if (method)
  {
    return @"Pathed";
  }

  else
  {
    return @"Tapped";
  }
}

- (void)dispatchEventWithInputMethod:(unint64_t)method typingEngineType:(unsigned int)type selectionType:(unint64_t)selectionType keyboardState:(id)state
{
  v53[20] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v10 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_currentSession sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_currentSession sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v15 = [(TIKBAnalyticsMetricsContext *)v10 initWithKeyboardState:stateCopy activeInputModes:activeInputModes testingParameters:testingParameters];

  v52[0] = @"inputMethod";
  v51 = [(TICandidateBarUsageAnalyzer *)self stringFromInputMethod:method];
  v53[0] = v51;
  v52[1] = @"selectionType";
  v50 = [(TICandidateBarUsageAnalyzer *)self stringFromSelectionType:selectionType];
  v53[1] = v50;
  v52[2] = @"predictionEnabled";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:self->_predictionEnabled];
  v53[2] = v49;
  v52[3] = @"continuousPathEnabled";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousPathEnabled];
  v53[3] = v48;
  v52[4] = @"autocorrectionEnabled";
  v16 = MEMORY[0x277CCABB0];
  keyboardType = [(TIKBAnalyticsMetricsContext *)v15 keyboardType];
  v18 = 18;
  if (keyboardType == 5)
  {
    v18 = 19;
  }

  v47 = [v16 numberWithBool:*(&self->super.isa + v18)];
  v53[4] = v47;
  v52[5] = kFeatureKeyboardUsage;
  featureUsageMetricsCache = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v45 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v15];
  v53[5] = v45;
  v52[6] = kFeatureContinuousPathUsage;
  featureUsageMetricsCache2 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v43 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v15];
  v53[6] = v43;
  v52[7] = kFeatureAutocorrectionUsage;
  featureUsageMetricsCache3 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v41 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v15];
  v53[7] = v41;
  v52[8] = kFeatureCandidateBarUsage;
  featureUsageMetricsCache4 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v39 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v15];
  v53[8] = v39;
  v52[9] = kFeatureMultilingualUsage;
  featureUsageMetricsCache5 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v37 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v15];
  v53[9] = v37;
  v52[10] = kFeatureStringTypingSpeed;
  featureUsageMetricsCache6 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v35 = [featureUsageMetricsCache6 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v15];
  v53[10] = v35;
  v52[11] = kFeatureStringTypingEngine;
  v34 = TIKeyboardCandidateTypingEngineTypeToString();
  v53[11] = v34;
  v52[12] = kFeatureStringAssetAvailabilityStatus;
  sessionParams3 = [(TITypingSession *)self->_currentSession sessionParams];
  assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
  v21 = @"Installed";
  if (!assetAvailabilityStatus)
  {
    v21 = @"Unavailable";
  }

  v22 = v21;
  v53[12] = v22;
  v52[13] = kFeatureStringKeyboardLanguage;
  inputLanguage = [(TIAnalyticsMetricsContext *)v15 inputLanguage];
  v53[13] = inputLanguage;
  v52[14] = kFeatureStringKeyboardRegion;
  inputRegion = [(TIAnalyticsMetricsContext *)v15 inputRegion];
  v53[14] = inputRegion;
  v52[15] = kFeatureStringKeyboardVariant;
  inputVariant = [(TIKBAnalyticsMetricsContext *)v15 inputVariant];
  v53[15] = inputVariant;
  v52[16] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [(TIKBAnalyticsMetricsContext *)v15 secondaryLanguage];
  v53[16] = secondaryLanguage;
  v52[17] = kFeatureStringKeyboardSecondaryRegion;
  secondaryRegion = [(TIKBAnalyticsMetricsContext *)v15 secondaryRegion];
  v53[17] = secondaryRegion;
  v52[18] = kFeatureStringKeyboardLayout;
  layoutName = [(TIKBAnalyticsMetricsContext *)v15 layoutName];
  v53[18] = layoutName;
  v52[19] = kFeatureStringKeyboardType;
  v29 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v15 keyboardType]];
  v53[19] = v29;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:20];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  testingParameters2 = [(TIKBAnalyticsMetricsContext *)v15 testingParameters];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"candidateBarUsage" payload:v33 testingParameters:testingParameters2 allowSparsePayload:0];

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

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v29];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)analyzeWordEntry:(id)entry
{
  v48 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  acceptedCandidate = [entryCopy acceptedCandidate];
  candidatesOffered = [entryCopy candidatesOffered];
  lastObject = [candidatesOffered lastObject];

  candidate = [acceptedCandidate candidate];
  v9 = [candidate length];

  if (v9)
  {
    isContinuousPathConversion = [acceptedCandidate isContinuousPathConversion];
    if (([entryCopy wordEntryType] & 4) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([acceptedCandidate proactiveTrigger], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
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
          if (([acceptedCandidate isResponseKitCandidate] & 1) == 0)
          {
            candidate2 = [acceptedCandidate candidate];
            if ([candidate2 _containsEmoji])
            {
              input = [acceptedCandidate input];
              v15 = [input length];

              if (!v15)
              {
                v11 = 5;
                goto LABEL_35;
              }
            }

            else
            {
            }

            candidate3 = [acceptedCandidate candidate];
            if ([candidate3 _containsEmoji])
            {
              input2 = [acceptedCandidate input];
              v18 = [input2 length];

              if (v18)
              {
                v11 = 6;
                goto LABEL_35;
              }
            }

            else
            {
            }

            input3 = [acceptedCandidate input];
            v20 = [input3 length];

            if (v20)
            {
              candidate4 = [acceptedCandidate candidate];
              corrections = [lastObject corrections];
              autocorrection = [corrections autocorrection];
              input4 = [autocorrection input];
              v25 = [candidate4 isEqualToString:input4];

              if (v25)
              {
                v11 = 1;
              }

              else
              {
                candidate5 = [acceptedCandidate candidate];
                corrections2 = [lastObject corrections];
                autocorrection2 = [corrections2 autocorrection];
                candidate6 = [autocorrection2 candidate];
                v30 = [candidate5 isEqualToString:candidate6];

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
                  obj = [lastObject predictions];
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
                      candidate7 = [acceptedCandidate candidate];
                      candidate8 = [v32 candidate];
                      v35 = [candidate7 isEqualToString:candidate8];

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
    acceptedCandidate2 = [entryCopy acceptedCandidate];
    typingEngine = [acceptedCandidate2 typingEngine];
    keyboardState = [entryCopy keyboardState];
    [(TICandidateBarUsageAnalyzer *)self dispatchEventWithInputMethod:isContinuousPathConversion typingEngineType:typingEngine selectionType:v11 keyboardState:keyboardState];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (confidence)
  {
    objc_storeStrong(&self->_currentSession, session);
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    self->_predictionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F928]];
    self->_continuousPathEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F848]];
    self->_autocorrectionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F7C0]];
    self->_hwAutocorrectionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F638]];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    userActionHistory = [(TITypingSession *)self->_currentSession userActionHistory];
    v11 = [userActionHistory countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(userActionHistory);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (![v15 actionType])
          {
            [(TICandidateBarUsageAnalyzer *)self analyzeWordEntry:v15];
          }
        }

        v12 = [userActionHistory countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return confidence != 0;
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