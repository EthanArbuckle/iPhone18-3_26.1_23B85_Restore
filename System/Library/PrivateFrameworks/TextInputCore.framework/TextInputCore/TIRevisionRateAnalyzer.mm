@interface TIRevisionRateAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (TIRevisionRateAnalyzer)init;
- (id)_createEventSpec;
- (id)getInputModeForSession:(id)a3;
- (id)getSessionFields;
- (void)_dispatchEventPayloads:(id)a3 analyticsService:(id)a4 typingSession:(id)a5;
- (void)_registerAnalyticsEventSpecWithAnalyticsService;
- (void)summarizeWithEventDictionary:(id)a3 withSession:(id)a4;
@end

@implementation TIRevisionRateAnalyzer

- (id)getInputModeForSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a3 userActionHistory];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = &stru_283FDFAF8;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![v9 actionType])
        {
          v10 = [v9 keyboardState];
          v7 = [v10 inputMode];

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)summarizeWithEventDictionary:(id)a3 withSession:(id)a4
{
  v63[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TIRevisionRateAnalyzer *)self hasEmojiInput];
  v9 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v9 setHasEmojiInput:v8];

  v10 = [(TIRevisionRateAnalyzer *)self sessionAlignmentConfidence];
  v11 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v11 setSessionAlignmentConfidence:v10];

  v12 = [(TIRevisionRateAnalyzer *)self hasCursorMovement];
  v13 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v13 setHasCursorMovement:v12];

  v54 = v7;
  v14 = [(TIRevisionRateAnalyzer *)self getInputModeForSession:v7];
  v15 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v15 setInputMode:v14];

  v16 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v16 setTappedCount:0];

  v17 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v17 setAutocorrectedCount:0];

  v18 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v18 setRevisedCount:0];

  v19 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [v19 setRevisedAutocorrectionCount:0];

  v20 = MEMORY[0x277CBEB98];
  v63[0] = @"Tapped";
  v63[1] = @"Candidate Bar";
  v63[2] = @"TappedWithBackspace";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
  v22 = [v20 setWithArray:v21];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v23 = v6;
  v24 = self;
  obj = v23;
  v25 = [v23 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    v28 = @"enteredModality";
    v57 = v24;
    do
    {
      v29 = 0;
      v55 = v26;
      do
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v58 + 1) + 8 * v29);
        v31 = [v30 objectForKey:v28];
        if ([v22 containsObject:v31])
        {
          v32 = v28;
          v33 = v27;
          v34 = v22;
          v35 = [(TIRevisionRateAnalyzer *)v24 revisionRateAnalysisSummary];
          v36 = [v35 tappedCount];
          v37 = [(TIRevisionRateAnalyzer *)v24 revisionRateAnalysisSummary];
          [v37 setTappedCount:v36 + 1];

          v38 = [v30 objectForKey:@"revisedModality"];
          v39 = [v38 length];

          v40 = [v30 objectForKey:@"correctedSource"];
          v41 = [v40 length];

          if (v41)
          {
            v42 = [(TIRevisionRateAnalyzer *)v24 revisionRateAnalysisSummary];
            v43 = [v42 autocorrectedCount];
            v44 = [(TIRevisionRateAnalyzer *)v24 revisionRateAnalysisSummary];
            [v44 setAutocorrectedCount:v43 + 1];

            v24 = v57;
          }

          v22 = v34;
          v27 = v33;
          v28 = v32;
          v26 = v55;
          if (v39)
          {
            v45 = [(TIRevisionRateAnalyzer *)v24 revisionRateAnalysisSummary];
            v46 = [v45 revisedCount];
            v47 = [(TIRevisionRateAnalyzer *)v57 revisionRateAnalysisSummary];
            v48 = v46 + 1;
            v24 = v57;
            [v47 setRevisedCount:v48];

            if (v41)
            {
              v49 = [(TIRevisionRateAnalyzer *)v57 revisionRateAnalysisSummary];
              v50 = [v49 revisedAutocorrectionCount];
              v51 = [(TIRevisionRateAnalyzer *)v57 revisionRateAnalysisSummary];
              v52 = v50 + 1;
              v24 = v57;
              [v51 setRevisedAutocorrectionCount:v52];
            }
          }
        }

        ++v29;
      }

      while (v26 != v29);
      v26 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v26);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (id)getSessionFields
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIRevisionRateAnalyzer hasEmojiInput](self, "hasEmojiInput")}];
  [v3 setObject:v4 forKeyedSubscript:@"hasEmojiInput"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIRevisionRateAnalyzer hasCursorMovement](self, "hasCursorMovement")}];
  [v3 setObject:v5 forKeyedSubscript:@"hasCursorMovement"];

  v6 = [(TIRevisionRateAnalyzer *)self sessionAlignmentConfidence];
  [v3 setObject:v6 forKeyedSubscript:kFeatureStringSessionAlignmentConfidence];

  return v3;
}

- (id)_createEventSpec
{
  if (_createEventSpec_onceToken != -1)
  {
    dispatch_once(&_createEventSpec_onceToken, &__block_literal_global_7820);
  }

  v3 = _createEventSpec___eventSpec;

  return v3;
}

void __42__TIRevisionRateAnalyzer__createEventSpec__block_invoke()
{
  v64[8] = *MEMORY[0x277D85DE8];
  v64[0] = @"OriginalText";
  v64[1] = @"Tapped";
  v64[2] = @"Pathed";
  v64[3] = @"Candidate Bar";
  v64[4] = @"TappedWithBackspace";
  v64[5] = @"Deleted";
  v64[6] = @"RevisionBubble";
  v64[7] = @"InlineCompletion";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:8];
  v63[0] = @"Lower";
  v63[1] = @"Title";
  v63[2] = @"Upper";
  v63[3] = @"Mixed";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  v62[0] = @"None";
  v62[1] = @"Short";
  v62[2] = @"Medium";
  v62[3] = @"Long";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  v3 = TIFeatureUsageAllowedValues();
  v30 = TITypingSpeedAllowedValues();
  v53 = v0;
  v60 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredModality" allowedValues:v0];
  v61[0] = v60;
  v59 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredSource" allowedValues:0];
  v61[1] = v59;
  v58 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredCapitalization" allowedValues:v1];
  v61[2] = v58;
  v57 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"enteredDiacritics"];
  v61[3] = v57;
  v56 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"enteredApostrophe"];
  v61[4] = v56;
  v55 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"enteredWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v61[5] = v55;
  v54 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedSource" allowedValues:0];
  v61[6] = v54;
  v50 = v1;
  v52 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedCapitalization" allowedValues:v1];
  v61[7] = v52;
  v51 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedDiacritics"];
  v61[8] = v51;
  v49 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedApostrophe"];
  v61[9] = v49;
  v47 = v2;
  v48 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedEditDistance" allowedValues:v2];
  v61[10] = v48;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"correctedWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v61[11] = v46;
  v45 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedHasLeftHandContext"];
  v61[12] = v45;
  v44 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedOperationType" allowedValues:0];
  v61[13] = v44;
  v43 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedModality" allowedValues:v0];
  v61[14] = v43;
  v42 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedSource" allowedValues:0];
  v61[15] = v42;
  v41 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedCapitalization" allowedValues:v1];
  v61[16] = v41;
  v40 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"revisedDiacritics"];
  v61[17] = v40;
  v39 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"revisedApostrophe"];
  v61[18] = v39;
  v38 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedEditDistance" allowedValues:v2];
  v61[19] = v38;
  v37 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v61[20] = v37;
  v36 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordRevisionCount" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v61[21] = v36;
  v35 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"textTraitAutocorrectionEnabled"];
  v61[22] = v35;
  v34 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v61[23] = v34;
  v33 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v61[24] = v33;
  v31 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v61[25] = v31;
  v29 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v61[26] = v29;
  v28 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v61[27] = v28;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v61[28] = v27;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v61[29] = v26;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureStringTypingEngine;
  v25 = TITypingEngineAllowedValues();
  v24 = [v4 stringFieldSpecWithName:v5 allowedValues:v25];
  v61[30] = v24;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureStringAssetAvailabilityStatus;
  v23 = TIAssetAvailabilityStatusAllowedValues();
  v22 = [v6 stringFieldSpecWithName:v7 allowedValues:v23];
  v61[31] = v22;
  v8 = v3;
  v9 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureKeyboardUsage allowedValues:v3];
  v61[32] = v9;
  v32 = v3;
  v10 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureContinuousPathUsage allowedValues:v3];
  v61[33] = v10;
  v11 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureCandidateBarUsage allowedValues:v3];
  v61[34] = v11;
  v12 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureAutocorrectionUsage allowedValues:v8];
  v61[35] = v12;
  v13 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureMultilingualUsage allowedValues:v8];
  v61[36] = v13;
  v14 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringTypingSpeed allowedValues:v30];
  v61[37] = v14;
  v15 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasCursorMovement"];
  v61[38] = v15;
  v16 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasEmojiInput"];
  v61[39] = v16;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BD60 maxValue:&unk_28400BD90 significantDigits:0];
  v61[40] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:41];

  v19 = [MEMORY[0x277D6F300] eventSpecWithName:@"revisionRate" inputModeRequired:0 fieldSpecs:v18];
  v20 = _createEventSpec___eventSpec;
  _createEventSpec___eventSpec = v19;

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_registerAnalyticsEventSpecWithAnalyticsService
{
  v3 = [(TIRevisionRateAnalyzer *)self _createEventSpec];
  v2 = [MEMORY[0x277D6F318] sharedInstance];
  [v2 registerEventSpec:v3];
}

- (void)_dispatchEventPayloads:(id)a3 analyticsService:(id)a4 typingSession:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D6F318] sharedInstance];
  }

  v11 = v10;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [v9 sessionParams];
        v19 = [v18 testingParameters];
        [v11 dispatchEventWithName:@"revisionRate" payload:v17 testingParameters:v19 allowSparsePayload:1];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (TIRevisionRateAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = TIRevisionRateAnalyzer;
  v2 = [(TIRevisionRateAnalyzer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TIRevisionRateAnalyzer *)v2 _registerAnalyticsEventSpecWithAnalyticsService];
    v4 = objc_alloc_init(TIRevisionRateAnalysisSummary);
    revisionRateAnalysisSummary = v3->_revisionRateAnalysisSummary;
    v3->_revisionRateAnalysisSummary = v4;
  }

  return v3;
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    v9 = MEMORY[0x277D6F320];
    [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:a4];
    v10 = [v9 bucketRatioWithValue:10 bucketCount:?];
    [(TIRevisionRateAnalyzer *)self setSessionAlignmentConfidence:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [(TIRevisionRateAnalyzer *)self getSessionFields];
    v13 = _analyzeEditEvents(v8, v12);
    [v11 addObjectsFromArray:v13];

    v14 = _analyzeNonEditEvents(v8, v12);
    [v11 addObjectsFromArray:v14];

    v15 = _analyzeDeletedOriginalWordEvents(v8, v12);
    [v11 addObjectsFromArray:v15];

    if ([v11 count])
    {
      [(TIRevisionRateAnalyzer *)self summarizeWithEventDictionary:v11 withSession:v8];
      [(TIRevisionRateAnalyzer *)self _dispatchEventPayloads:v11 analyticsService:0 typingSession:v8];
    }

    else if (IXACanLogMessageAtLevel())
    {
      v16 = IXADefaultLogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s No revision metric payloads could be generated from the keyboard typing session.", "-[TIRevisionRateAnalyzer analyzeSession:alignedSession:withConfidence:]"];
        *buf = 138412290;
        v21 = v19;
        _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v11 = IXADefaultLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Typing session confidence is set to 'none' and will not be analyzed by the autocorrection revision rate analyzer.", "-[TIRevisionRateAnalyzer analyzeSession:alignedSession:withConfidence:]"];
    *buf = 138412290;
    v21 = v12;
    _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
LABEL_10:
  }

  v17 = *MEMORY[0x277D85DE8];
  return a5 != 0;
}

@end