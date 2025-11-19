@interface TIAsteriskCorrectionAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (BOOL)checkIfSession:(id)a3 isFromAllowedApp:(id)a4;
- (TIAsteriskCorrectionAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TIAsteriskCorrectionAnalyzer

- (void)registerEventSpec
{
  v54[6] = *MEMORY[0x277D85DE8];
  v49 = MEMORY[0x277D6F300];
  v2 = MEMORY[0x277D6F308];
  v54[0] = @"None";
  v54[1] = @"SingleWord";
  v3 = [@"SingleWord" stringByAppendingString:@"BeginAsterisk"];
  v54[2] = v3;
  v4 = [@"SingleWord" stringByAppendingString:@"EndAsterisk"];
  v54[3] = v4;
  v5 = [@"MultiWord" stringByAppendingString:@"BeginAsterisk"];
  v54[4] = v5;
  v6 = [@"MultiWord" stringByAppendingString:@"EndAsterisk"];
  v54[5] = v6;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:6];

  v51 = [v2 stringFieldSpecWithName:@"correctionType" allowedValues:v52];
  v53[0] = v51;
  v50 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"prevMessageAutoCorrectionType"];
  v53[1] = v50;
  v7 = MEMORY[0x277D6F308];
  v8 = &unk_28400B8F8;
  v48 = [v7 stringFieldSpecWithName:@"bundleId" allowedValues:&unk_28400B8F8];
  v53[2] = v48;
  v9 = MEMORY[0x277D6F308];
  v10 = kFeatureKeyboardUsage;
  v47 = TIFeatureUsageAllowedValues();
  v46 = [v9 stringFieldSpecWithName:v10 allowedValues:v47];
  v53[3] = v46;
  v11 = MEMORY[0x277D6F308];
  v12 = kFeatureContinuousPathUsage;
  v45 = TIFeatureUsageAllowedValues();
  v44 = [v11 stringFieldSpecWithName:v12 allowedValues:v45];
  v53[4] = v44;
  v13 = MEMORY[0x277D6F308];
  v14 = kFeatureAutocorrectionUsage;
  v43 = TIFeatureUsageAllowedValues();
  v42 = [v13 stringFieldSpecWithName:v14 allowedValues:v43];
  v53[5] = v42;
  v15 = MEMORY[0x277D6F308];
  v16 = kFeatureCandidateBarUsage;
  v41 = TIFeatureUsageAllowedValues();
  v40 = [v15 stringFieldSpecWithName:v16 allowedValues:v41];
  v53[6] = v40;
  v17 = MEMORY[0x277D6F308];
  v18 = kFeatureMultilingualUsage;
  v39 = TIFeatureUsageAllowedValues();
  v38 = [v17 stringFieldSpecWithName:v18 allowedValues:v39];
  v53[7] = v38;
  v19 = MEMORY[0x277D6F308];
  v20 = kFeatureStringTypingSpeed;
  v37 = TITypingSpeedAllowedValues();
  v36 = [v19 stringFieldSpecWithName:v20 allowedValues:v37];
  v53[8] = v36;
  v21 = MEMORY[0x277D6F308];
  v22 = kFeatureStringAssetAvailabilityStatus;
  v35 = TIAssetAvailabilityStatusAllowedValues();
  v23 = [v21 stringFieldSpecWithName:v22 allowedValues:v35];
  v53[9] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v53[10] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v53[11] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v53[12] = v26;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v53[13] = v27;
  v28 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v53[14] = v28;
  v29 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v53[15] = v29;
  v30 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v53[16] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:17];
  v32 = [v49 eventSpecWithName:@"asteriskCorrection" inputModeRequired:0 fieldSpecs:v31];

  v33 = [MEMORY[0x277D6F318] sharedInstance];
  [v33 registerEventSpec:v32];

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = &unk_28400B8F8;
    v11 = [(TIAsteriskCorrectionAnalyzer *)self checkIfSession:v8 isFromAllowedApp:&unk_28400B8F8];

    if (v11)
    {
      v38 = v9;
      v12 = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = v8;
      v13 = [v8 userActionHistory];
      v14 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (!v14)
      {
        v16 = 0;
        goto LABEL_26;
      }

      v15 = v14;
      v42 = 0;
      v16 = 0;
      v17 = 1;
      v18 = *v44;
      v39 = v13;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          if ([v20 actionType])
          {
            v21 = [v20 documentState];
            if (![v21 documentIsEmpty] || !objc_msgSend(v12, "count"))
            {

              goto LABEL_21;
            }

            if ([v20 actionType] == 2)
            {
            }

            else
            {
              v24 = [v20 actionType];

              if (v24 != 11)
              {
                goto LABEL_21;
              }
            }

            v25 = [TITypingSession alloc];
            v26 = [v40 locale];
            v27 = [(TITypingSession *)v25 initWithLocale:v26 keyboardLayout:0];

            v28 = [v40 sessionParams];
            [(TITypingSession *)v27 setSessionParams:v28];

            v29 = [v40 featureUsageMetricsCache];
            [(TITypingSession *)v27 setFeatureUsageMetricsCache:v29];

            [(TITypingSession *)v27 setUserActionHistory:v12];
            v41 = [MEMORY[0x277CBEB18] array];

            v30 = [TIAsteriskCorrectionMessageEvent alloc];
            [v40 applicationID];
            v31 = v15;
            v32 = v18;
            v34 = v33 = v16;
            v35 = [(TIAsteriskCorrectionMessageEvent *)v30 initWithSession:v27 andPrevMsgAutocorrectionType:v42 andBundleId:v34];

            v18 = v32;
            v15 = v31;

            [(TIAsteriskCorrectionMessageEvent *)v35 analyzeEvent];
            v42 = v17;
            v17 = 1;
            v12 = v41;
            v16 = v35;
            v13 = v39;
          }

          else
          {
            v22 = [v20 wordEntryType];
            v23 = 2;
            if (v17 != 3)
            {
              v23 = v17;
            }

            if (v22)
            {
              v17 = 3;
            }

            else
            {
              v17 = v23;
            }
          }

LABEL_21:
          [v12 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (!v15)
        {
LABEL_26:

          LOBYTE(v11) = 1;
          v8 = v40;
          v9 = v38;
          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)checkIfSession:(id)a3 isFromAllowedApp:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 applicationID];
        LOBYTE(v10) = [v11 isEqualToString:v10];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (TIAsteriskCorrectionAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TIAsteriskCorrectionAnalyzer;
  v2 = [(TIAsteriskCorrectionAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIAsteriskCorrectionAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end