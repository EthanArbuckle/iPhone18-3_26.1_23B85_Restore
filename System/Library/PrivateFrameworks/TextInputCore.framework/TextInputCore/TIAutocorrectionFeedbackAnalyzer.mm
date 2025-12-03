@interface TIAutocorrectionFeedbackAnalyzer
+ (id)analyzerForUserModel:(id)model revisionRateAnalysisSummary:(id)summary;
- (BOOL)_inputMode:(id)mode matchesSupportedKeyboards:(id)keyboards;
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TIAutocorrectionFeedbackAnalyzer)initWithUserModel:(id)model revisionRateAnalysisSummary:(id)summary;
- (id)installedInputModesStringFromInputModes:(id)modes;
- (int64_t)studyStatusFromState:(int64_t)state;
- (void)accumulateWordCounts;
- (void)registerEventSpec;
- (void)resetWordCounts;
- (void)sendCAEventForStudyStatus:(int64_t)status;
- (void)sendCompletionEventUsingStudyDataFromFeedbackController:(id)controller;
- (void)sendInitiationEventUsingStudyDataFromFeedbackController:(id)controller;
- (void)sendTerminationEventUsingStudyDataFromFeedbackController:(id)controller;
@end

@implementation TIAutocorrectionFeedbackAnalyzer

- (int64_t)studyStatusFromState:(int64_t)state
{
  if ((state - 2) > 4)
  {
    return 2;
  }

  else
  {
    return qword_22CC8A9A8[state - 2];
  }
}

- (id)installedInputModesStringFromInputModes:(id)modes
{
  v3 = [modes sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

- (void)registerEventSpec
{
  v19[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6F300];
  v18 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"studyStatus"];
  v19[0] = v18;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"correctedWordCount" minValue:&unk_28400BE50 maxValue:0 significantDigits:0];
  v19[1] = v17;
  v16 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"tappedWordCount" minValue:&unk_28400BE50 maxValue:0 significantDigits:0];
  v19[2] = v16;
  v15 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"initialPreferenceValue"];
  v19[3] = v15;
  v3 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"initialInputModes"];
  v19[4] = v3;
  v4 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"finalPreferenceValue"];
  v19[5] = v4;
  v5 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"finalInputModes"];
  v19[6] = v5;
  v6 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"surveyOutcome"];
  v19[7] = v6;
  v7 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordCount"];
  v19[8] = v7;
  v8 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordAutocorrectionCount"];
  v19[9] = v8;
  v9 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysCount"];
  v19[10] = v9;
  v10 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"assetAvailabilityStatus"];
  v19[11] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:12];
  v12 = [v2 eventSpecWithName:@"deferredAutocorrectionFeedback" inputModeRequired:0 fieldSpecs:v11];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendTerminationEventUsingStudyDataFromFeedbackController:(id)controller
{
  v4 = -[TIAutocorrectionFeedbackAnalyzer studyStatusFromState:](self, "studyStatusFromState:", [MEMORY[0x277D6F360] getFeedbackState]);

  [(TIAutocorrectionFeedbackAnalyzer *)self sendCAEventForStudyStatus:v4];
}

- (void)sendCompletionEventUsingStudyDataFromFeedbackController:(id)controller
{
  v4 = [(TIAutocorrectionFeedbackAnalyzer *)self studyStatusFromState:4];

  [(TIAutocorrectionFeedbackAnalyzer *)self sendCAEventForStudyStatus:v4];
}

- (void)sendCAEventForStudyStatus:(int64_t)status
{
  v51[12] = *MEMORY[0x277D85DE8];
  userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v5 = [userModel valueForDurableKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

  userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v7 = [userModel2 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

  userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v9 = [userModel3 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

  userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v11 = [userModel4 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];

  sessionParams = [(TITypingSession *)self->_session sessionParams];
  v13 = [sessionParams assetAvailabilityStatus] != 0;

  getInitialPreferenceValue = [MEMORY[0x277D6F360] getInitialPreferenceValue];
  getInitialInputModes = [MEMORY[0x277D6F360] getInitialInputModes];
  v15 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getInitialInputModes];

  getFinalPreferenceValue = [MEMORY[0x277D6F360] getFinalPreferenceValue];
  getFinalInputModes = [MEMORY[0x277D6F360] getFinalInputModes];
  v17 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getFinalInputModes];

  getSurveyOutcome = [MEMORY[0x277D6F360] getSurveyOutcome];
  getInitialTimestamp = [MEMORY[0x277D6F360] getInitialTimestamp];
  getFinalTimestamp = [MEMORY[0x277D6F360] getFinalTimestamp];
  v43 = getInitialTimestamp;
  [getFinalTimestamp timeIntervalSinceDate:getInitialTimestamp];
  v38 = v19 / 86400;
  v50[0] = @"studyStatus";
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  v51[0] = v41;
  v50[1] = @"tappedWordCount";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v51[1] = v20;
  v50[2] = @"correctedWordCount";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v51[2] = v21;
  v50[3] = @"revisedWordCount";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v51[3] = v22;
  v50[4] = @"revisedWordAutocorrectionCount";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v51[4] = v23;
  v50[5] = kFeatureStringAssetAvailabilityStatus;
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v51[5] = v24;
  v50[6] = @"initialPreferenceValue";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:getInitialPreferenceValue];
  v26 = v25;
  v47 = v15;
  if (v15)
  {
    v27 = v15;
  }

  else
  {
    v27 = &stru_283FDFAF8;
  }

  v51[6] = v25;
  v51[7] = v27;
  v50[7] = @"initialInputModes";
  v50[8] = @"finalPreferenceValue";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:getFinalPreferenceValue];
  v29 = v28;
  v45 = v17;
  if (v17)
  {
    v30 = v17;
  }

  else
  {
    v30 = &stru_283FDFAF8;
  }

  v51[8] = v28;
  v51[9] = v30;
  v50[9] = @"finalInputModes";
  v50[10] = @"surveyOutcome";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:getSurveyOutcome];
  v51[10] = v31;
  v50[11] = @"daysCount";
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
  v51[11] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:12];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"deferredAutocorrectionFeedback" payload:v33 testingParameters:0 allowSparsePayload:1];

  if (IXACanLogMessageAtLevel())
  {
    v35 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: sentCAEvent payload: %@", "-[TIAutocorrectionFeedbackAnalyzer sendCAEventForStudyStatus:]", @"KeyboardAutocorrection", v33];
      *buf = 138412290;
      v49 = v37;
      _os_log_debug_impl(&dword_22CA55000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sendInitiationEventUsingStudyDataFromFeedbackController:(id)controller
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"studyStatus";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TIAutocorrectionFeedbackAnalyzer studyStatusFromState:](self, "studyStatusFromState:", 2)}];
  v19[0] = v4;
  v18[1] = @"initialInputModes";
  getInitialInputModes = [MEMORY[0x277D6F360] getInitialInputModes];
  v6 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getInitialInputModes];
  v19[1] = v6;
  v18[2] = @"initialPreferenceValue";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6F360], "getInitialPreferenceValue")}];
  v19[2] = v7;
  v18[3] = kFeatureStringAssetAvailabilityStatus;
  v8 = MEMORY[0x277CCABB0];
  sessionParams = [(TITypingSession *)self->_session sessionParams];
  v10 = [v8 numberWithBool:{objc_msgSend(sessionParams, "assetAvailabilityStatus") != 0}];
  v19[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"deferredAutocorrectionFeedback" payload:v11 testingParameters:0 allowSparsePayload:1];

  if (IXACanLogMessageAtLevel())
  {
    v13 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: sendInitiationEvent payload: %@", "-[TIAutocorrectionFeedbackAnalyzer sendInitiationEventUsingStudyDataFromFeedbackController:]", @"KeyboardAutocorrection", v11];
      *buf = 138412290;
      v17 = v15;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetWordCounts
{
  userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

  userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel2 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

  userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel3 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

  userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel4 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];
}

- (void)accumulateWordCounts
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary hasEmojiInput]&& ![(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary hasCursorMovement])
  {
    inputMode = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary inputMode];
    supportedKeyboards = [(TIAutocorrectionFeedbackAnalyzer *)self supportedKeyboards];
    v7 = [(TIAutocorrectionFeedbackAnalyzer *)self _inputMode:inputMode matchesSupportedKeyboards:supportedKeyboards];

    if (v7)
    {
      userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
      tappedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary tappedCount];
      [userModel addToDurableCounter:tappedCount forKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

      userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
      autocorrectedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary autocorrectedCount];
      [userModel2 addToDurableCounter:autocorrectedCount forKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

      userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
      revisedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary revisedCount];
      [userModel3 addToDurableCounter:revisedCount forKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

      userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
      revisedAutocorrectionCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary revisedAutocorrectionCount];
      [userModel4 addToDurableCounter:revisedAutocorrectionCount forKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];

      if (!IXACanLogMessageAtLevel())
      {
        goto LABEL_6;
      }

      v3 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts tapped: %ld, corrected: %ld, revised: %ld, revised-autocorrection: %ld, ", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection", -[TIRevisionRateAnalysisSummary tappedCount](self->_revisionRateAnalysisSummary, "tappedCount"), -[TIRevisionRateAnalysisSummary autocorrectedCount](self->_revisionRateAnalysisSummary, "autocorrectedCount"), -[TIRevisionRateAnalysisSummary revisedCount](self->_revisionRateAnalysisSummary, "revisedCount"), -[TIRevisionRateAnalysisSummary revisedAutocorrectionCount](self->_revisionRateAnalysisSummary, "revisedAutocorrectionCount")];
      *buf = 138412290;
      v18 = v16;
    }

    else
    {
      if (!IXACanLogMessageAtLevel())
      {
        goto LABEL_6;
      }

      v3 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts will not count - unsupported keyboard", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection"];
      *buf = 138412290;
      v18 = v16;
    }

    goto LABEL_15;
  }

  if (IXACanLogMessageAtLevel())
  {
    v3 = IXAFeedbackLogFacility();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_5:

      goto LABEL_6;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts will not count - session has cursor movement or emoji input", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection"];
    *buf = 138412290;
    v18 = v16;
LABEL_15:
    _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_5;
  }

LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_inputMode:(id)mode matchesSupportedKeyboards:(id)keyboards
{
  v42 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  keyboardsCopy = keyboards;
  v7 = keyboardsCopy;
  if (modeCopy)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = keyboardsCopy;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([modeCopy hasPrefix:*(*(&v35 + 1) + 8 * i)])
          {
            v22 = 1;
            v13 = v8;
            goto LABEL_33;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = TIInputModeGetMultilingualSet();
    if ([v13 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v13;
      v26 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v26)
      {
        v14 = *v32;
        v25 = *v32;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v16 = *(*(&v31 + 1) + 8 * j);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v17 = v8;
            v18 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v28;
              while (2)
              {
                for (k = 0; k != v19; ++k)
                {
                  if (*v28 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([v16 hasPrefix:{*(*(&v27 + 1) + 8 * k), v25}])
                  {

                    v22 = 1;
                    goto LABEL_32;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v14 = v25;
          }

          v22 = 0;
          v26 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v26);
      }

      else
      {
        v22 = 0;
      }

LABEL_32:
    }

    else
    {
      v22 = 0;
    }

LABEL_33:
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  session = self->_session;
  self->_session = sessionCopy;
  v10 = sessionCopy;

  alignedSession = self->_alignedSession;
  self->_alignedSession = alignedSessionCopy;
  v12 = alignedSessionCopy;

  v13 = objc_alloc_init(TIFeedbackController);
  [(TIFeedbackController *)v13 handleFeedbackActionsWithDelegate:self];

  return 1;
}

- (TIAutocorrectionFeedbackAnalyzer)initWithUserModel:(id)model revisionRateAnalysisSummary:(id)summary
{
  modelCopy = model;
  summaryCopy = summary;
  v16.receiver = self;
  v16.super_class = TIAutocorrectionFeedbackAnalyzer;
  v9 = [(TIAutocorrectionFeedbackAnalyzer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userModel, model);
    getSupportedFeedbackLanguages = [MEMORY[0x277D6F360] getSupportedFeedbackLanguages];
    supportedLanguages = v10->_supportedLanguages;
    v10->_supportedLanguages = getSupportedFeedbackLanguages;

    getSupportedFeedbackKeyboards = [MEMORY[0x277D6F360] getSupportedFeedbackKeyboards];
    supportedKeyboards = v10->_supportedKeyboards;
    v10->_supportedKeyboards = getSupportedFeedbackKeyboards;

    objc_storeStrong(&v10->_revisionRateAnalysisSummary, summary);
    [(TIAutocorrectionFeedbackAnalyzer *)v10 registerEventSpec];
  }

  return v10;
}

+ (id)analyzerForUserModel:(id)model revisionRateAnalysisSummary:(id)summary
{
  summaryCopy = summary;
  modelCopy = model;
  v7 = [objc_alloc(objc_opt_class()) initWithUserModel:modelCopy revisionRateAnalysisSummary:summaryCopy];

  return v7;
}

@end