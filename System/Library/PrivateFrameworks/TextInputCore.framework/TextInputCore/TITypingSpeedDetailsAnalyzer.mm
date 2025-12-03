@interface TITypingSpeedDetailsAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TITypingSpeedDetailsAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TITypingSpeedDetailsAnalyzer

- (void)registerEventSpec
{
  v64[36] = *MEMORY[0x277D85DE8];
  v51 = MEMORY[0x277D6F300];
  v63 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalMessageDuration" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v64[0] = v63;
  v62 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalMessageLength" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v64[1] = v62;
  v61 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalWordsEntered" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v64[2] = v61;
  v60 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalFinalWordEntered" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v64[3] = v60;
  v59 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"messageDuration" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v64[4] = v59;
  v58 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"messageLength" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v64[5] = v58;
  v57 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"wordsEntered" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v64[6] = v57;
  v56 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"finalWordEntered" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v64[7] = v56;
  v55 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"static" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[8] = v55;
  v54 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"dynamic" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[9] = v54;
  v53 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"textReplacements" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[10] = v53;
  v50 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"addressBook" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[11] = v50;
  v49 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"namedEntities" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[12] = v49;
  v48 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"oov" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[13] = v48;
  v47 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"supplementalLexicon" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[14] = v47;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPlane" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[15] = v46;
  v45 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPrediction" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[16] = v45;
  v44 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearch" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[17] = v44;
  v43 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPopover" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[18] = v43;
  v42 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"responseKit" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[19] = v42;
  v41 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pqt" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[20] = v41;
  v40 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"multilingual" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v64[21] = v40;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v39 = TIFeatureUsageAllowedValues();
  v38 = [v2 stringFieldSpecWithName:v3 allowedValues:v39];
  v64[22] = v38;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v37 = TIFeatureUsageAllowedValues();
  v36 = [v4 stringFieldSpecWithName:v5 allowedValues:v37];
  v64[23] = v36;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v35 = TIFeatureUsageAllowedValues();
  v34 = [v6 stringFieldSpecWithName:v7 allowedValues:v35];
  v64[24] = v34;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v33 = TIFeatureUsageAllowedValues();
  v32 = [v8 stringFieldSpecWithName:v9 allowedValues:v33];
  v64[25] = v32;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v31 = TIFeatureUsageAllowedValues();
  v30 = [v10 stringFieldSpecWithName:v11 allowedValues:v31];
  v64[26] = v30;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v29 = TITypingSpeedAllowedValues();
  v28 = [v12 stringFieldSpecWithName:v13 allowedValues:v29];
  v64[27] = v28;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringAssetAvailabilityStatus;
  v16 = TIAssetAvailabilityStatusAllowedValues();
  v17 = [v14 stringFieldSpecWithName:v15 allowedValues:v16];
  v64[28] = v17;
  v18 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v64[29] = v18;
  v19 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v64[30] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v64[31] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v64[32] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v64[33] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v64[34] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v64[35] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:36];
  v52 = [v51 eventSpecWithName:@"typingSpeedDetails" inputModeRequired:0 fieldSpecs:v25];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v52];

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v68 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    applicationID = [sessionCopy applicationID];
    v10 = [applicationID isEqualToString:@"com.apple.MobileSMS"];

    if (v10)
    {
      v49 = alignedSessionCopy;
      v50 = objc_opt_new();
      v11 = objc_alloc(MEMORY[0x277CCAB00]);
      userActionHistory = [sessionCopy userActionHistory];
      v13 = [v11 initWithKeyOptions:0 valueOptions:5 capacity:{objc_msgSend(userActionHistory, "count")}];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      userActionHistory2 = [sessionCopy userActionHistory];
      v15 = [userActionHistory2 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v15)
      {
        v16 = v15;
        v52 = 0;
        v17 = 0;
        v18 = *v62;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v62 != v18)
            {
              objc_enumerationMutation(userActionHistory2);
            }

            v20 = *(*(&v61 + 1) + 8 * i);
            documentState = [v20 documentState];
            documentIsEmpty = [documentState documentIsEmpty];

            if (documentIsEmpty)
            {

              v17 = 0;
            }

            if (![v20 actionType])
            {
              v23 = v20;
              if (!v17)
              {
                v17 = objc_opt_new();
                [v50 addObject:v17];
              }

              [v17 analyzeWordEntry:v23];
              [v13 setObject:v17 forKey:v23];
              keyboardState = [v23 keyboardState];

              v52 = keyboardState;
            }
          }

          v16 = [userActionHistory2 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v16);
      }

      else
      {
        v52 = 0;
        v17 = 0;
      }

      v51 = sessionCopy;

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      alignedSessionCopy = v49;
      alignedEntries = [v49 alignedEntries];
      v26 = [alignedEntries countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v58;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v58 != v28)
            {
              objc_enumerationMutation(alignedEntries);
            }

            v30 = *(*(&v57 + 1) + 8 * j);
            originalWord = [v30 originalWord];
            v32 = [v13 objectForKey:originalWord];

            [v32 analyzeWordEntryAligned:v30];
          }

          v27 = [alignedEntries countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v27);
      }

      confidence = v50;
      if ([v50 count])
      {
        v33 = [TIKBAnalyticsMetricsContext alloc];
        sessionParams = [v51 sessionParams];
        activeInputModes = [sessionParams activeInputModes];
        sessionParams2 = [v51 sessionParams];
        testingParameters = [sessionParams2 testingParameters];
        v38 = [(TIKBAnalyticsMetricsContext *)v33 initWithKeyboardState:v52 activeInputModes:activeInputModes testingParameters:testingParameters];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v39 = v50;
        v40 = [v39 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v54;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v54 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v53 + 1) + 8 * k);
              featureUsageMetricsCache = [v51 featureUsageMetricsCache];
              sessionParams3 = [v51 sessionParams];
              [v44 dispatchWithFeatureUsageMetricsCache:featureUsageMetricsCache andContext:v38 assetAvailabilityStatus:{objc_msgSend(sessionParams3, "assetAvailabilityStatus")}];
            }

            v41 = [v39 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v41);
        }

        alignedSessionCopy = v49;
        confidence = v50;
      }

      LOBYTE(confidence) = 1;
      sessionCopy = v51;
    }

    else
    {
      LOBYTE(confidence) = 0;
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return confidence;
}

- (TITypingSpeedDetailsAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingSpeedDetailsAnalyzer;
  v2 = [(TITypingSpeedDetailsAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingSpeedDetailsAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end