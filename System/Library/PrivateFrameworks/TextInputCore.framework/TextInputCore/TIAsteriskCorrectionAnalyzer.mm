@interface TIAsteriskCorrectionAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)checkIfSession:(id)session isFromAllowedApp:(id)app;
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

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v32];

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v48 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    v10 = &unk_28400B8F8;
    v11 = [(TIAsteriskCorrectionAnalyzer *)self checkIfSession:sessionCopy isFromAllowedApp:&unk_28400B8F8];

    if (v11)
    {
      v38 = alignedSessionCopy;
      array = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = sessionCopy;
      userActionHistory = [sessionCopy userActionHistory];
      v14 = [userActionHistory countByEnumeratingWithState:&v43 objects:v47 count:16];
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
      v39 = userActionHistory;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(userActionHistory);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          if ([v20 actionType])
          {
            documentState = [v20 documentState];
            if (![documentState documentIsEmpty] || !objc_msgSend(array, "count"))
            {

              goto LABEL_21;
            }

            if ([v20 actionType] == 2)
            {
            }

            else
            {
              actionType = [v20 actionType];

              if (actionType != 11)
              {
                goto LABEL_21;
              }
            }

            v25 = [TITypingSession alloc];
            locale = [v40 locale];
            v27 = [(TITypingSession *)v25 initWithLocale:locale keyboardLayout:0];

            sessionParams = [v40 sessionParams];
            [(TITypingSession *)v27 setSessionParams:sessionParams];

            featureUsageMetricsCache = [v40 featureUsageMetricsCache];
            [(TITypingSession *)v27 setFeatureUsageMetricsCache:featureUsageMetricsCache];

            [(TITypingSession *)v27 setUserActionHistory:array];
            array2 = [MEMORY[0x277CBEB18] array];

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
            array = array2;
            v16 = v35;
            userActionHistory = v39;
          }

          else
          {
            wordEntryType = [v20 wordEntryType];
            v23 = 2;
            if (v17 != 3)
            {
              v23 = v17;
            }

            if (wordEntryType)
            {
              v17 = 3;
            }

            else
            {
              v17 = v23;
            }
          }

LABEL_21:
          [array addObject:v20];
        }

        v15 = [userActionHistory countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (!v15)
        {
LABEL_26:

          LOBYTE(v11) = 1;
          sessionCopy = v40;
          alignedSessionCopy = v38;
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

- (BOOL)checkIfSession:(id)session isFromAllowedApp:(id)app
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  appCopy = app;
  v7 = [appCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(appCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        applicationID = [sessionCopy applicationID];
        LOBYTE(v10) = [applicationID isEqualToString:v10];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [appCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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