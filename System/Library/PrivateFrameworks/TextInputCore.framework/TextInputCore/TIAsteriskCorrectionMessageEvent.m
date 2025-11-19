@interface TIAsteriskCorrectionMessageEvent
- (BOOL)hasText:(id)a3;
- (BOOL)hasTextInWordEntry:(id)a3;
- (TIAsteriskCorrectionMessageEvent)initWithSession:(id)a3 andPrevMsgAutocorrectionType:(unint64_t)a4 andBundleId:(id)a5;
- (id)assessAsteriskCorrection;
- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)a3;
- (void)analyzeEvent;
- (void)analyzeWordEntry:(id)a3;
- (void)analyzeWordEntryAligned:(id)a3;
- (void)dispatchAsteriskEventWithFeatureUsageMetricsCache:(id)a3 andContext:(id)a4 assetAvailabilityStatus:(int64_t)a5;
@end

@implementation TIAsteriskCorrectionMessageEvent

- (void)dispatchAsteriskEventWithFeatureUsageMetricsCache:(id)a3 andContext:(id)a4 assetAvailabilityStatus:(int64_t)a5
{
  v35[17] = *MEMORY[0x277D85DE8];
  if (self->_finalWordsEnteredCount >= 1)
  {
    v8 = a4;
    v9 = a3;
    v35[0] = [(TIAsteriskCorrectionMessageEvent *)self assessAsteriskCorrection];
    v33 = v35[0];
    v34[0] = @"correctionType";
    v34[1] = @"prevMessageAutoCorrectionType";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_prevMsgAutocorrectionType];
    bundleId = self->_bundleId;
    v35[1] = v32;
    v35[2] = bundleId;
    v34[2] = @"bundleId";
    v34[3] = kFeatureKeyboardUsage;
    v31 = [v9 featureUsageMetricFromName:? forContext:?];
    v35[3] = v31;
    v34[4] = kFeatureContinuousPathUsage;
    v30 = [v9 featureUsageMetricFromName:? forContext:?];
    v35[4] = v30;
    v34[5] = kFeatureAutocorrectionUsage;
    v29 = [v9 featureUsageMetricFromName:? forContext:?];
    v35[5] = v29;
    v34[6] = kFeatureCandidateBarUsage;
    v28 = [v9 featureUsageMetricFromName:? forContext:?];
    v35[6] = v28;
    v34[7] = kFeatureMultilingualUsage;
    v27 = [v9 featureUsageMetricFromName:? forContext:?];
    v35[7] = v27;
    v34[8] = kFeatureStringTypingSpeed;
    v26 = [v9 featureUsageMetricFromName:? forContext:?];

    v35[8] = v26;
    v34[9] = kFeatureStringAssetAvailabilityStatus;
    v11 = @"Installed";
    if (!a5)
    {
      v11 = @"Unavailable";
    }

    v12 = v11;
    v35[9] = v12;
    v34[10] = kFeatureStringKeyboardLanguage;
    v13 = [v8 inputLanguage];
    v35[10] = v13;
    v34[11] = kFeatureStringKeyboardRegion;
    v14 = [v8 inputRegion];
    v35[11] = v14;
    v34[12] = kFeatureStringKeyboardVariant;
    v15 = [v8 inputVariant];
    v35[12] = v15;
    v34[13] = kFeatureStringKeyboardSecondaryLanguage;
    v16 = [v8 secondaryLanguage];
    v35[13] = v16;
    v34[14] = kFeatureStringKeyboardSecondaryRegion;
    v17 = [v8 secondaryRegion];
    v35[14] = v17;
    v34[15] = kFeatureStringKeyboardLayout;
    v18 = [v8 layoutName];
    v35[15] = v18;
    v34[16] = kFeatureStringKeyboardType;
    v19 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v8 keyboardType]);
    v35[16] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:17];

    v21 = [MEMORY[0x277D6F318] sharedInstance];
    v22 = [v8 testingParameters];

    [v21 dispatchEventToInputAnalyticsDomainWithName:@"asteriskCorrection" payload:v20 testingParameters:v22 allowSparsePayload:0];
    v23 = +[TIProactiveQuickTypeManager sharedInstance];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SpeedMetric"];
    [v23 propogateMetrics:v24 data:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 alignedKeyboardInputs];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) string];
        if ([v12 _containsEmoji])
        {
          ++v9;
          if (v7 > 0)
          {
            ++v8;
          }

          v7 = 0;
        }

        else
        {
          v7 += [(TIAsteriskCorrectionMessageEvent *)self hasText:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);

    if (v7 <= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 1;
    }

    if (v9 >= 1)
    {
      v13 += v9;
      self->_wordsEnteredCount = v13 + self->_wordsEnteredCount - 1;
    }
  }

  else
  {

    v13 = 0;
  }

  self->_finalWordsEnteredCount += v13;
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasText:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  LOBYTE(v7) = [v8 length] != 0;
  return v7;
}

- (void)analyzeWordEntryAligned:(id)a3
{
  v17 = a3;
  v4 = [v17 originalWord];
  v5 = [v4 editedEntry];
  v6 = [v17 originalWord];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 editedEntry];

    v7 = v8;
  }

  v9 = [v7 acceptedCandidate];
  v10 = [v9 candidate];
  v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = [v7 keyboardState];
  v14 = [v13 emojiSearchMode];

  v15 = [v7 keyboardState];
  v16 = [v15 emojiPopoverMode];

  if ([v12 _containsEmoji])
  {
    if (v16 || v14 || ([v7 wordEntryType] & 4) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_11;
    }

    if ([v9 isContinuousPathConversion])
    {
LABEL_7:
      ++self->_finalWordsEnteredCount;
      goto LABEL_11;
    }
  }

  [(TIAsteriskCorrectionMessageEvent *)self adjustEmojiCountsFromKeyboardInputForWordAligned:v17];
LABEL_11:
}

- (BOOL)hasTextInWordEntry:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 acceptedCandidate];
  v6 = [v5 candidate];
  v7 = [(TIAsteriskCorrectionMessageEvent *)self hasText:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v4 allKeyboardInputs];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) string];
          v15 = [(TIAsteriskCorrectionMessageEvent *)self hasText:v14];

          if (v15)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)analyzeWordEntry:(id)a3
{
  v4 = a3;
  v18 = [v4 keyboardState];
  v5 = [v18 documentState];
  v6 = [v5 contextBeforeInput];
  if (v6)
  {
    v7 = [v5 contextBeforeInput];
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v8 = [v5 contextAfterInput];
  if (v8)
  {
    v9 = [v5 contextAfterInput];
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v10 = [v5 selectedText];
  if (v10)
  {
    v11 = [v5 selectedText];
  }

  else
  {
    v11 = &stru_283FDFAF8;
  }

  v12 = [(__CFString *)v11 stringByAppendingString:v9];
  v13 = [(__CFString *)v7 stringByAppendingString:v12];
  messageText = self->_messageText;
  self->_messageText = v13;

  v15 = [v4 keyboardState];
  v16 = [v15 emojiSearchMode];

  v17 = [(TIAsteriskCorrectionMessageEvent *)self hasTextInWordEntry:v4];
  if ((v16 & 1) == 0 && v17)
  {
    ++self->_wordsEnteredCount;
  }
}

- (id)assessAsteriskCorrection
{
  messageText = self->_messageText;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [(NSString *)messageText stringByTrimmingCharactersInSet:v4];

  if (![v5 length])
  {
    goto LABEL_19;
  }

  v6 = [v5 _firstChar] == 42;
  v7 = [v5 characterAtIndex:{objc_msgSend(v5, "length") - 1}];
  if (v7 != 42 || v6)
  {
    v9 = &stru_283FDFAF8;
  }

  else
  {
    v9 = @"EndAsterisk";
  }

  if (v6 && v7 != 42)
  {
    v10 = @"BeginAsterisk";
  }

  else
  {
    v10 = v9;
  }

  objc_storeStrong(&self->_asteriskCorrectionType, v10);
  finalWordsEnteredCount = self->_finalWordsEnteredCount;
  if (finalWordsEnteredCount == 1)
  {
    v12 = kTIACSingleWordCountType;
LABEL_15:
    objc_storeStrong(&self->_wordCountType, *v12);
    goto LABEL_16;
  }

  if (finalWordsEnteredCount >= 2)
  {
    v12 = &kTIACMultiWordCountType;
    goto LABEL_15;
  }

LABEL_16:
  if ([(NSString *)self->_wordCountType isEqualToString:@"MultiWord"]&& [(NSString *)self->_asteriskCorrectionType isEqualToString:&stru_283FDFAF8])
  {
    v13 = @"None";
    v14 = @"None";
    goto LABEL_20;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_wordCountType, self->_asteriskCorrectionType];
LABEL_20:

  return v13;
}

- (void)analyzeEvent
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [(TITypingSession *)self->_messageSession userActionHistory];
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if (![v9 actionType])
        {
          v10 = v9;
          [(TIAsteriskCorrectionMessageEvent *)self analyzeWordEntry:v10];
          v11 = [v10 keyboardState];

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(TITypingSessionAligned *)self->_messageAlignedSession alignedEntries];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(TIAsteriskCorrectionMessageEvent *)self analyzeWordEntryAligned:*(*(&v26 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  v17 = [TIKBAnalyticsMetricsContext alloc];
  v18 = [(TITypingSession *)self->_messageSession sessionParams];
  v19 = [v18 activeInputModes];
  v20 = [(TITypingSession *)self->_messageSession sessionParams];
  v21 = [v20 testingParameters];
  v22 = [(TIKBAnalyticsMetricsContext *)v17 initWithKeyboardState:v6 activeInputModes:v19 testingParameters:v21];

  v23 = [(TITypingSession *)self->_messageSession featureUsageMetricsCache];
  v24 = [(TITypingSession *)self->_messageSession sessionParams];
  -[TIAsteriskCorrectionMessageEvent dispatchAsteriskEventWithFeatureUsageMetricsCache:andContext:assetAvailabilityStatus:](self, "dispatchAsteriskEventWithFeatureUsageMetricsCache:andContext:assetAvailabilityStatus:", v23, v22, [v24 assetAvailabilityStatus]);

  v25 = *MEMORY[0x277D85DE8];
}

- (TIAsteriskCorrectionMessageEvent)initWithSession:(id)a3 andPrevMsgAutocorrectionType:(unint64_t)a4 andBundleId:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = TIAsteriskCorrectionMessageEvent;
  v11 = [(TIAsteriskCorrectionMessageEvent *)&v17 init];
  v12 = v11;
  if (v11)
  {
    messageText = v11->_messageText;
    v11->_messageText = &stru_283FDFAF8;

    objc_storeStrong(&v12->_asteriskCorrectionType, @"UNKNOWN_ASTERISKCORRECTION_TYPE");
    objc_storeStrong(&v12->_wordCountType, @"UNKNOWN_WORDCOUNT_TYPE");
    v12->_prevMsgAutocorrectionType = a4;
    objc_storeStrong(&v12->_messageSession, a3);
    v14 = [[TITypingSessionAligned alloc] initWithSession:v9];
    messageAlignedSession = v12->_messageAlignedSession;
    v12->_messageAlignedSession = v14;

    objc_storeStrong(&v12->_bundleId, a5);
  }

  return v12;
}

@end