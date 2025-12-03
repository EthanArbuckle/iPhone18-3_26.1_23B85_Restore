@interface TIAsteriskCorrectionMessageEvent
- (BOOL)hasText:(id)text;
- (BOOL)hasTextInWordEntry:(id)entry;
- (TIAsteriskCorrectionMessageEvent)initWithSession:(id)session andPrevMsgAutocorrectionType:(unint64_t)type andBundleId:(id)id;
- (id)assessAsteriskCorrection;
- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)aligned;
- (void)analyzeEvent;
- (void)analyzeWordEntry:(id)entry;
- (void)analyzeWordEntryAligned:(id)aligned;
- (void)dispatchAsteriskEventWithFeatureUsageMetricsCache:(id)cache andContext:(id)context assetAvailabilityStatus:(int64_t)status;
@end

@implementation TIAsteriskCorrectionMessageEvent

- (void)dispatchAsteriskEventWithFeatureUsageMetricsCache:(id)cache andContext:(id)context assetAvailabilityStatus:(int64_t)status
{
  v35[17] = *MEMORY[0x277D85DE8];
  if (self->_finalWordsEnteredCount >= 1)
  {
    contextCopy = context;
    cacheCopy = cache;
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
    v31 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v35[3] = v31;
    v34[4] = kFeatureContinuousPathUsage;
    v30 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v35[4] = v30;
    v34[5] = kFeatureAutocorrectionUsage;
    v29 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v35[5] = v29;
    v34[6] = kFeatureCandidateBarUsage;
    v28 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v35[6] = v28;
    v34[7] = kFeatureMultilingualUsage;
    v27 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v35[7] = v27;
    v34[8] = kFeatureStringTypingSpeed;
    v26 = [cacheCopy featureUsageMetricFromName:? forContext:?];

    v35[8] = v26;
    v34[9] = kFeatureStringAssetAvailabilityStatus;
    v11 = @"Installed";
    if (!status)
    {
      v11 = @"Unavailable";
    }

    v12 = v11;
    v35[9] = v12;
    v34[10] = kFeatureStringKeyboardLanguage;
    inputLanguage = [contextCopy inputLanguage];
    v35[10] = inputLanguage;
    v34[11] = kFeatureStringKeyboardRegion;
    inputRegion = [contextCopy inputRegion];
    v35[11] = inputRegion;
    v34[12] = kFeatureStringKeyboardVariant;
    inputVariant = [contextCopy inputVariant];
    v35[12] = inputVariant;
    v34[13] = kFeatureStringKeyboardSecondaryLanguage;
    secondaryLanguage = [contextCopy secondaryLanguage];
    v35[13] = secondaryLanguage;
    v34[14] = kFeatureStringKeyboardSecondaryRegion;
    secondaryRegion = [contextCopy secondaryRegion];
    v35[14] = secondaryRegion;
    v34[15] = kFeatureStringKeyboardLayout;
    layoutName = [contextCopy layoutName];
    v35[15] = layoutName;
    v34[16] = kFeatureStringKeyboardType;
    v19 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [contextCopy keyboardType]);
    v35[16] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:17];

    mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
    testingParameters = [contextCopy testingParameters];

    [mEMORY[0x277D6F318] dispatchEventToInputAnalyticsDomainWithName:@"asteriskCorrection" payload:v20 testingParameters:testingParameters allowSparsePayload:0];
    v23 = +[TIProactiveQuickTypeManager sharedInstance];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SpeedMetric"];
    [v23 propogateMetrics:v24 data:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)aligned
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  alignedKeyboardInputs = [aligned alignedKeyboardInputs];
  v5 = [alignedKeyboardInputs countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(alignedKeyboardInputs);
        }

        string = [*(*(&v15 + 1) + 8 * i) string];
        if ([string _containsEmoji])
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
          v7 += [(TIAsteriskCorrectionMessageEvent *)self hasText:string];
        }
      }

      v6 = [alignedKeyboardInputs countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)hasText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:punctuationCharacterSet];

  LOBYTE(punctuationCharacterSet) = [v8 length] != 0;
  return punctuationCharacterSet;
}

- (void)analyzeWordEntryAligned:(id)aligned
{
  alignedCopy = aligned;
  originalWord = [alignedCopy originalWord];
  editedEntry = [originalWord editedEntry];
  originalWord2 = [alignedCopy originalWord];
  v7 = originalWord2;
  if (editedEntry)
  {
    editedEntry2 = [originalWord2 editedEntry];

    v7 = editedEntry2;
  }

  acceptedCandidate = [v7 acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  keyboardState = [v7 keyboardState];
  emojiSearchMode = [keyboardState emojiSearchMode];

  keyboardState2 = [v7 keyboardState];
  emojiPopoverMode = [keyboardState2 emojiPopoverMode];

  if ([v12 _containsEmoji])
  {
    if (emojiPopoverMode || emojiSearchMode || ([v7 wordEntryType] & 4) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (emojiSearchMode)
    {
      goto LABEL_11;
    }

    if ([acceptedCandidate isContinuousPathConversion])
    {
LABEL_7:
      ++self->_finalWordsEnteredCount;
      goto LABEL_11;
    }
  }

  [(TIAsteriskCorrectionMessageEvent *)self adjustEmojiCountsFromKeyboardInputForWordAligned:alignedCopy];
LABEL_11:
}

- (BOOL)hasTextInWordEntry:(id)entry
{
  v23 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  acceptedCandidate = [entryCopy acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  v7 = [(TIAsteriskCorrectionMessageEvent *)self hasText:candidate];

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
    allKeyboardInputs = [entryCopy allKeyboardInputs];
    v10 = [allKeyboardInputs countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeyboardInputs);
          }

          string = [*(*(&v18 + 1) + 8 * i) string];
          v15 = [(TIAsteriskCorrectionMessageEvent *)self hasText:string];

          if (v15)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [allKeyboardInputs countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)analyzeWordEntry:(id)entry
{
  entryCopy = entry;
  keyboardState = [entryCopy keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  if (contextBeforeInput)
  {
    contextBeforeInput2 = [documentState contextBeforeInput];
  }

  else
  {
    contextBeforeInput2 = &stru_283FDFAF8;
  }

  contextAfterInput = [documentState contextAfterInput];
  if (contextAfterInput)
  {
    contextAfterInput2 = [documentState contextAfterInput];
  }

  else
  {
    contextAfterInput2 = &stru_283FDFAF8;
  }

  selectedText = [documentState selectedText];
  if (selectedText)
  {
    selectedText2 = [documentState selectedText];
  }

  else
  {
    selectedText2 = &stru_283FDFAF8;
  }

  v12 = [(__CFString *)selectedText2 stringByAppendingString:contextAfterInput2];
  v13 = [(__CFString *)contextBeforeInput2 stringByAppendingString:v12];
  messageText = self->_messageText;
  self->_messageText = v13;

  keyboardState2 = [entryCopy keyboardState];
  emojiSearchMode = [keyboardState2 emojiSearchMode];

  v17 = [(TIAsteriskCorrectionMessageEvent *)self hasTextInWordEntry:entryCopy];
  if ((emojiSearchMode & 1) == 0 && v17)
  {
    ++self->_wordsEnteredCount;
  }
}

- (id)assessAsteriskCorrection
{
  messageText = self->_messageText;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [(NSString *)messageText stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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
  userActionHistory = [(TITypingSession *)self->_messageSession userActionHistory];
  v4 = [userActionHistory countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(userActionHistory);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if (![v9 actionType])
        {
          v10 = v9;
          [(TIAsteriskCorrectionMessageEvent *)self analyzeWordEntry:v10];
          keyboardState = [v10 keyboardState];

          v6 = keyboardState;
        }
      }

      v5 = [userActionHistory countByEnumeratingWithState:&v30 objects:v35 count:16];
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
  alignedEntries = [(TITypingSessionAligned *)self->_messageAlignedSession alignedEntries];
  v13 = [alignedEntries countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(alignedEntries);
        }

        [(TIAsteriskCorrectionMessageEvent *)self analyzeWordEntryAligned:*(*(&v26 + 1) + 8 * j)];
      }

      v14 = [alignedEntries countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  v17 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_messageSession sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_messageSession sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v22 = [(TIKBAnalyticsMetricsContext *)v17 initWithKeyboardState:v6 activeInputModes:activeInputModes testingParameters:testingParameters];

  featureUsageMetricsCache = [(TITypingSession *)self->_messageSession featureUsageMetricsCache];
  sessionParams3 = [(TITypingSession *)self->_messageSession sessionParams];
  -[TIAsteriskCorrectionMessageEvent dispatchAsteriskEventWithFeatureUsageMetricsCache:andContext:assetAvailabilityStatus:](self, "dispatchAsteriskEventWithFeatureUsageMetricsCache:andContext:assetAvailabilityStatus:", featureUsageMetricsCache, v22, [sessionParams3 assetAvailabilityStatus]);

  v25 = *MEMORY[0x277D85DE8];
}

- (TIAsteriskCorrectionMessageEvent)initWithSession:(id)session andPrevMsgAutocorrectionType:(unint64_t)type andBundleId:(id)id
{
  sessionCopy = session;
  idCopy = id;
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
    v12->_prevMsgAutocorrectionType = type;
    objc_storeStrong(&v12->_messageSession, session);
    v14 = [[TITypingSessionAligned alloc] initWithSession:sessionCopy];
    messageAlignedSession = v12->_messageAlignedSession;
    v12->_messageAlignedSession = v14;

    objc_storeStrong(&v12->_bundleId, id);
  }

  return v12;
}

@end