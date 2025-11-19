@interface TIFeedbackUtil
+ (BOOL)getFinalPreferenceValue;
+ (BOOL)getInitialPreferenceValue;
+ (BOOL)isEligibleDevice;
+ (BOOL)isFeatureEnabledForInternalBuilds;
+ (BOOL)migratePreviousStudyStateAndCheckPreviousEnrollment;
+ (BOOL)shouldOverrideLanguageRegionCheck;
+ (BOOL)shouldPublishCAEventsImmediately;
+ (BOOL)supportedLanguagesHaveRegions:(id)a3;
+ (id)getCompletionEventTimestamp;
+ (id)getFinalInputModes;
+ (id)getFinalTimestamp;
+ (id)getFirstSupportedKeyboard;
+ (id)getFormMetadata;
+ (id)getInitialInputModes;
+ (id)getInitialTimestamp;
+ (id)getInitiationEventTimestamp;
+ (id)getKeyNameFor:(id)a3;
+ (id)getRequestSurveyEventTimestamp;
+ (id)getRetryTimestamp;
+ (id)getStudyEnrollment;
+ (id)getStudyID;
+ (id)getStudyLanguageAndRegion;
+ (id)getSupportedLangRegion;
+ (id)getSupportedLangRegionFromSupportedFeedbackLanguages:(id)a3;
+ (int64_t)getBucketedDuration;
+ (int64_t)getFeedbackState;
+ (int64_t)getSurveyOutcome;
+ (void)clearStudyState;
+ (void)clearStudyState:(id)a3;
+ (void)removeCompletionEventTimestamp;
+ (void)removeFeedbackState;
+ (void)removeFinalInputModes;
+ (void)removeFinalPreferenceValue;
+ (void)removeFinalTimestamp;
+ (void)removeInitialInputModes;
+ (void)removeInitialPreferenceValue;
+ (void)removeInitialTimestamp;
+ (void)removeInitiationEventTimestamp;
+ (void)removeRequestSurveyEventTimestamp;
+ (void)removeRetryTimestamp;
+ (void)removeStudyLanguageAndRegion;
+ (void)removeSurveyOutcome;
+ (void)setCompletionEventTimestamp:(id)a3;
+ (void)setFeedbackState:(int64_t)a3;
+ (void)setFinalInputModes:(id)a3;
+ (void)setFinalPreferenceValue:(BOOL)a3;
+ (void)setFinalTimestamp:(id)a3;
+ (void)setInitialInputModes:(id)a3;
+ (void)setInitialPreferenceValue:(BOOL)a3;
+ (void)setInitialTimestamp:(id)a3;
+ (void)setInitiationEventTimestamp:(id)a3;
+ (void)setRequestSurveyEventTimestamp:(id)a3;
+ (void)setRetryTimestamp:(id)a3;
+ (void)setStudyEnrollment:(id)a3;
+ (void)setStudyLanguageAndRegion:(id)a3;
+ (void)setSurveyOutcome:(int64_t)a3;
@end

@implementation TIFeedbackUtil

+ (id)getFormMetadata
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = +[TIFeedbackUtil getBucketedDuration];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v3];
  [v2 setObject:v4 forKey:@":duration"];
  if (+[TIFeedbackUtil getInitialPreferenceValue])
  {
    v5 = @"1";
  }

  else
  {
    v5 = @"0";
  }

  [v2 setObject:v5 forKey:@":initialPreferenceValue"];

  return v2;
}

+ (void)removeStudyLanguageAndRegion
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackStudyLanguageRegionKey"];
  v3 = [TIFeedbackUtil getKeyNameFor:v2];
  [v4 removeObjectForKey:v3];
}

+ (void)setStudyLanguageAndRegion:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackStudyLanguageRegionKey"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getStudyLanguageAndRegion
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackStudyLanguageRegionKey"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (int64_t)getBucketedDuration
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[TIFeedbackUtil getFinalTimestamp];
  v3 = +[TIFeedbackUtil getInitialTimestamp];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [&unk_1EF7CB218 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(&unk_1EF7CB218);
        }

        if (v5 < [*(*(&v13 + 1) + 8 * v10) intValue])
        {
          return v11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [&unk_1EF7CB218 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

+ (void)removeRetryTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackRetryTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setRetryTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackRetryTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getRetryTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackRetryTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeSurveyOutcome
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyOutcome_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setSurveyOutcome:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v4 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyOutcome_"];
  [v5 setInteger:a3 forKey:v4];
}

+ (int64_t)getSurveyOutcome
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyOutcome_"];
  v4 = [v2 integerForKey:v3];

  return v4;
}

+ (void)removeCompletionEventTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackCompletionEventTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setCompletionEventTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackCompletionEventTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getCompletionEventTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackCompletionEventTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeRequestSurveyEventTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyRequestEventTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setRequestSurveyEventTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyRequestEventTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getRequestSurveyEventTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackSurveyRequestEventTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeInitiationEventTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitiationEventTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setInitiationEventTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitiationEventTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getInitiationEventTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitiationEventTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeFinalTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setFinalTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getFinalTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeInitialTimestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialTimestamp_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setInitialTimestamp:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialTimestamp_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getInitialTimestamp
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialTimestamp_"];
  v4 = [v2 objectForKey:v3];

  return v4;
}

+ (void)removeFinalInputModes
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalInputModes_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setFinalInputModes:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalInputModes_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getFinalInputModes
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalInputModes_"];
  v4 = [v2 stringArrayForKey:v3];

  return v4;
}

+ (void)removeInitialInputModes
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialInputModes_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setInitialInputModes:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialInputModes_"];
  [v6 setObject:v4 forKey:v5];
}

+ (id)getInitialInputModes
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialInputModes_"];
  v4 = [v2 stringArrayForKey:v3];

  return v4;
}

+ (void)removeFinalPreferenceValue
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalPreferenceValue_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setFinalPreferenceValue:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v4 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalPreferenceValue_"];
  [v5 setBool:v3 forKey:v4];
}

+ (BOOL)getFinalPreferenceValue
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackFinalPreferenceValue_"];
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

+ (void)removeInitialPreferenceValue
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialPreferenceValue_"];
  [v3 removeObjectForKey:v2];
}

+ (void)setInitialPreferenceValue:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v4 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialPreferenceValue_"];
  [v5 setBool:v3 forKey:v4];
}

+ (BOOL)getInitialPreferenceValue
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [TIFeedbackUtil getKeyNameFor:@"feedbackInitialPreferenceValue_"];
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

+ (void)removeFeedbackState
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v2 = +[TIFeedbackUtil getStateKey];
  [v3 removeObjectForKey:v2];
}

+ (void)setFeedbackState:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v4 = +[TIFeedbackUtil getStateKey];
  [v5 setInteger:a3 forKey:v4];
}

+ (int64_t)getFeedbackState
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = +[TIFeedbackUtil getStateKey];
  v4 = [v2 integerForKey:v3];

  return v4;
}

+ (id)getStudyEnrollment
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [v2 stringForKey:@"feedbackLastStudyEnrollment"];

  return v3;
}

+ (void)setStudyEnrollment:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  [v5 setObject:v4 forKey:@"feedbackLastStudyEnrollment"];
}

+ (void)clearStudyState:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v18 = [[v3 alloc] initWithSuiteName:@"com.apple.keyboard"];
  v5 = [@"feedbackState_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v5];

  v6 = [@"feedbackInitialInputModes_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v6];

  v7 = [@"feedbackInitialTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v7];

  v8 = [@"feedbackInitialPreferenceValue_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v8];

  v9 = [@"feedbackFinalInputModes_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v9];

  v10 = [@"feedbackFinalTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v10];

  v11 = [@"feedbackFinalPreferenceValue_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v11];

  v12 = [@"feedbackSurveyOutcome_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v12];

  v13 = [@"feedbackCompletionEventTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v13];

  v14 = [@"feedbackInitiationEventTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v14];

  v15 = [@"feedbackSurveyRequestEventTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v15];

  v16 = [@"feedbackRetryTimestamp_KeyboardAutocorrection_" stringByAppendingString:v4];
  [v18 removeObjectForKey:v16];

  v17 = [@"feedbackStudyLanguageRegionKeyKeyboardAutocorrection_" stringByAppendingString:v4];

  [v18 removeObjectForKey:v17];
}

+ (void)clearStudyState
{
  v2 = +[TIFeedbackUtil getStudyEnrollment];
  if ([v2 length])
  {
    [TIFeedbackUtil clearStudyState:v2];
  }
}

+ (BOOL)migratePreviousStudyStateAndCheckPreviousEnrollment
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  if ([v2 integerForKey:@"feedbackState_KeyboardAutocorrection"])
  {
    [TIFeedbackUtil setStudyEnrollment:@"S01"];
    [v2 removeObjectForKey:@"feedbackFeatureEnabled_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackState_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackInitialInputModes_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackInitialTimestamp_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackInitialPreferenceValue_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackFinalInputModes_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackFinalTimestamp_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackFinalPreferenceValue_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackSurveyOutcome_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackInitiationEventTimestamp_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackCompletionEventTimestamp_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackCountsRetained_KeyboardAutocorrection"];
    [v2 removeObjectForKey:@"feedbackStudyLanguageRegionKeyKeyboardAutocorrection"];
    v3 = 1;
  }

  else
  {
    v4 = +[TIFeedbackUtil getStudyEnrollment];
    if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", @"S04") & 1) == 0)
    {
      [TIFeedbackUtil clearStudyState:v4];
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (BOOL)shouldPublishCAEventsImmediately
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [v2 BOOLForKey:@"feedbackPublishCAEventsImmediately"];

  return v3;
}

+ (BOOL)isFeatureEnabledForInternalBuilds
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [v2 BOOLForKey:@"feedbackFeatureEnabled"];

  return v3;
}

+ (BOOL)isEligibleDevice
{
  if (+[TIFeedbackUtil migratePreviousStudyStateAndCheckPreviousEnrollment])
  {
    return 0;
  }

  v3 = +[TIFeedbackUtil getSupportedLangRegion];
  if ([v3 length])
  {
    v4 = +[TIFeedbackUtil getFirstSupportedKeyboard];
    v2 = v4 != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)getSupportedLangRegionFromSupportedFeedbackLanguages:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__251;
  v21 = __Block_byref_object_dispose__252;
  v22 = &stru_1EF56D550;
  v5 = [TIFeedbackUtil supportedLanguagesHaveRegions:v4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__TIFeedbackUtil_getSupportedLangRegionFromSupportedFeedbackLanguages___block_invoke;
  v12[3] = &unk_1E6F4BB30;
  v14 = &v17;
  v15 = a1;
  v16 = v5;
  v6 = v4;
  v13 = v6;
  v7 = MEMORY[0x1866068F0](v12);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__TIFeedbackUtil_getSupportedLangRegionFromSupportedFeedbackLanguages___block_invoke_2;
    v10[3] = &unk_1E6F4C2B0;
    v11 = v7;
    TIDispatchSync(MEMORY[0x1E69E96A0], v10);
  }

  v8 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __71__TIFeedbackUtil_getSupportedLangRegionFromSupportedFeedbackLanguages___block_invoke(uint64_t a1)
{
  if (+[TIFeedbackUtil shouldOverrideLanguageRegionCheck])
  {
    v2 = [*(a1 + 48) getFirstSupportedKeyboard];
    if (!v2)
    {
      goto LABEL_14;
    }

    v7 = v2;
    if (*(a1 + 56) == 1)
    {
      TIInputModeGetLanguageWithRegion(v2);
    }

    else
    {
      TIInputModeGetLanguage(v2);
    }
    v6 = ;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v7 = v3;
    if (*(a1 + 56) == 1)
    {
      v4 = [v3 languageIdentifier];
      v5 = [v7 languageIdentifier];
      v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    }

    else
    {
      v6 = [v3 languageCode];
    }

    if (![*(a1 + 32) containsObject:v6])
    {
      goto LABEL_13;
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
LABEL_13:

  v2 = v7;
LABEL_14:
}

+ (id)getFirstSupportedKeyboard
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = +[TIInputModeController sharedInputModeController];
  v3 = [v2 enabledInputModeIdentifiers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = +[TIFeedbackUtil getSupportedFeedbackKeyboards];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([v9 hasPrefix:*(*(&v17 + 1) + 8 * j)])
              {
                v15 = v9;

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

+ (id)getSupportedLangRegion
{
  v2 = +[TIFeedbackUtil getSupportedFeedbackLanguages];
  v3 = [TIFeedbackUtil getSupportedLangRegionFromSupportedFeedbackLanguages:v2];

  return v3;
}

+ (BOOL)shouldOverrideLanguageRegionCheck
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v3 = [v2 BOOLForKey:@"feedbackOverrideDeviceLanguageCheck"];

  return v3;
}

+ (id)getStudyID
{
  v2 = [@"_" stringByAppendingString:@"S04"];
  v3 = [@"KeyboardAutocorrection" stringByAppendingString:v2];

  return v3;
}

+ (BOOL)supportedLanguagesHaveRegions:(id)a3
{
  v3 = [a3 objectAtIndex:0];
  v4 = [v3 containsString:@"_"];

  return v4;
}

+ (id)getKeyNameFor:(id)a3
{
  v3 = a3;
  v4 = +[TIFeedbackUtil getStudyID];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

@end