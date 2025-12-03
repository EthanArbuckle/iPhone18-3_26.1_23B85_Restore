@interface TIFavoniusTypingSessionAnalyzer
+ (id)favoniusTypingSessionAnalyzerForUserModel:(id)model;
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)isPathable:(id)pathable context:(id)context;
- (BOOL)updatePQTCountersForCandidate:(id)candidate withText:(id)text andContext:(id)context;
- (TIFavoniusTypingSessionAnalyzer)initWithUserModel:(id)model;
- (TIKeyboardState)lastMessageKeyboardState;
- (id)deleteLengthMetrics:(id)metrics nextWordEntryCandText:(id)text;
- (void)addDoubleToTransientCounter:(double)counter forKey:(id)key andContext:(id)context andCandidateString:(id)string;
- (void)handleDeleteWord:(id)word nextAction:(id)action;
- (void)handlePath:(id)path;
- (void)handleWordEntry:(id)entry;
- (void)logPathedCandidate:(id)candidate forKey:(id)key isCompletion:(BOOL)completion;
- (void)reportLastMessage;
- (void)trackMessagesForAction:(id)action;
- (void)updateDurationCounterForWord:(id)word forTypingContext:(id)context;
- (void)updateSourceCountersForCandidate:(id)candidate withText:(id)text andContext:(id)context hasPQTSource:(BOOL)source;
@end

@implementation TIFavoniusTypingSessionAnalyzer

- (TIKeyboardState)lastMessageKeyboardState
{
  WeakRetained = objc_loadWeakRetained(&self->_lastMessageKeyboardState);

  return WeakRetained;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  if (confidence)
  {
    objc_storeStrong(&self->_currentSession, session);
    sessionParams = [sessionCopy sessionParams];
    activeInputModes = [sessionParams activeInputModes];
    activeInputModes = self->_activeInputModes;
    self->_activeInputModes = activeInputModes;

    sessionParams2 = [sessionCopy sessionParams];
    testingParameters = [sessionParams2 testingParameters];
    testingParameters = self->_testingParameters;
    self->_testingParameters = testingParameters;

    userActionHistory = [sessionCopy userActionHistory];
    v16 = [userActionHistory count];

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      v19 = 0;
      v20 = (v16 - 1);
      do
      {
        v21 = v19;
        userActionHistory2 = [sessionCopy userActionHistory];
        v19 = [userActionHistory2 objectAtIndex:v18];

        if (v18 >= v20)
        {
          v24 = 0;
        }

        else
        {
          userActionHistory3 = [sessionCopy userActionHistory];
          v24 = [userActionHistory3 objectAtIndex:v18 + 1];
        }

        actionType = [v19 actionType];
        switch(actionType)
        {
          case 4:
            [(TIFavoniusTypingSessionAnalyzer *)self handlePath:v19];
            break;
          case 1:
            [(TIFavoniusTypingSessionAnalyzer *)self handleDeleteWord:v21 nextAction:v24];
            break;
          case 0:
            [(TIFavoniusTypingSessionAnalyzer *)self handleWordEntry:v19];
            break;
        }

        [(TIFavoniusTypingSessionAnalyzer *)self trackMessagesForAction:v19];

        ++v18;
      }

      while (v17 != v18);
    }

    [(TIFavoniusTypingSessionAnalyzer *)self reportLastMessage];
  }

  return confidence != 0;
}

- (void)reportLastMessage
{
  lastMessage = [(TIFavoniusTypingSessionAnalyzer *)self lastMessage];

  if (lastMessage)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self lastMessageStartTime];
    v5 = v4;
    [(TIFavoniusTypingSessionAnalyzer *)self lastMessageEndTime];
    v7 = [(TIFavoniusTypingSessionAnalyzer *)self durationInMillisecondsFromStartTime:v5 endTime:v6];
    v8 = [TIKBAnalyticsMetricsContext alloc];
    lastMessageKeyboardState = [(TIFavoniusTypingSessionAnalyzer *)self lastMessageKeyboardState];
    v12 = [(TIKBAnalyticsMetricsContext *)v8 initWithKeyboardState:lastMessageKeyboardState activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:1 forKey:@"messageCount" andCandidateLength:0 andContext:v12];
    userModel = self->_userModel;
    lastMessage2 = [(TIFavoniusTypingSessionAnalyzer *)self lastMessage];
    -[TIUserModeling addIntegerToTransientCounter:forKey:andCandidateLength:andContext:](userModel, "addIntegerToTransientCounter:forKey:andCandidateLength:andContext:", [lastMessage2 length], @"messageLength", 0, v12);

    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:[(TIFavoniusTypingSessionAnalyzer *)self lastMessageWordsEntered] forKey:@"messageWords" andCandidateLength:0 andContext:v12];
    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:v7 forKey:@"messageDuration" andCandidateLength:0 andContext:v12];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessage:0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageKeyboardState:0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageStartTime:-1.0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageEndTime:-1.0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageWordsEntered:0];
  }
}

- (void)trackMessagesForAction:(id)action
{
  actionCopy = action;
  keyboardState = [actionCopy keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];
  v6 = [clientIdentifier isEqualToString:@"com.apple.MobileSMS"];

  if (v6)
  {
    documentState = [actionCopy documentState];
    documentState2 = [keyboardState documentState];
    if ([documentState documentIsEmpty])
    {
      [(TIFavoniusTypingSessionAnalyzer *)self reportLastMessage];
    }

    [actionCopy startTime];
    if (v9 > 0.0)
    {
      [actionCopy endTime];
      if (v10 > 0.0)
      {
        contextBeforeInput = [documentState2 contextBeforeInput];
        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessage:contextBeforeInput];

        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageKeyboardState:keyboardState];
        [(TIFavoniusTypingSessionAnalyzer *)self lastMessageStartTime];
        v12 = actionCopy;
        if (v13 == -1.0)
        {
          [actionCopy startTime];
          [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageStartTime:?];
          v12 = actionCopy;
        }

        [v12 endTime];
        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageEndTime:?];
        if (![actionCopy actionType])
        {
          acceptedCandidate = [actionCopy acceptedCandidate];
          candidate = [acceptedCandidate candidate];
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v17 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          if ([v17 length])
          {
            [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageWordsEntered:[(TIFavoniusTypingSessionAnalyzer *)self lastMessageWordsEntered]+ 1];
          }
        }
      }
    }
  }
}

- (void)handlePath:(id)path
{
  pathCopy = path;
  v5 = [TIKBAnalyticsMetricsContext alloc];
  keyboardState = [pathCopy keyboardState];
  v10 = [(TIKBAnalyticsMetricsContext *)v5 initWithKeyboardState:keyboardState activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

  userModel = self->_userModel;
  v8 = kFeatureValueWithWordLenCandidatesPathed;
  syllableCount = [pathCopy syllableCount];

  [(TIUserModeling *)userModel addIntegerToTransientCounter:1 forKey:v8 andCandidateLength:syllableCount andContext:v10];
}

- (void)handleDeleteWord:(id)word nextAction:(id)action
{
  v51 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  actionCopy = action;
  if (wordCopy && ![wordCopy actionType])
  {
    v8 = wordCopy;
    acceptedCandidate = [v8 acceptedCandidate];
    candidate = [acceptedCandidate candidate];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v12 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v12 length])
    {
      acceptedCandidate2 = [v8 acceptedCandidate];
      isContinuousPathConversion = [acceptedCandidate2 isContinuousPathConversion];

      if (isContinuousPathConversion)
      {
        v15 = [TIKBAnalyticsMetricsContext alloc];
        keyboardState = [v8 keyboardState];
        v17 = [(TIKBAnalyticsMetricsContext *)v15 initWithKeyboardState:keyboardState activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

        if (actionCopy && ![actionCopy actionType])
        {
          v18 = actionCopy;
          acceptedCandidate3 = [v18 acceptedCandidate];
          isContinuousPathConversion2 = [acceptedCandidate3 isContinuousPathConversion];

          v21 = &kFeatureValueWithWordLenPathedWordsCorrectedByDeleteRepath;
          if (!isContinuousPathConversion2)
          {
            v21 = &kFeatureValueWithWordLenPathedWordsCorrectedByDeleteTapped;
          }

          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v21 andContext:v17 andCandidateString:v12];
          v43 = v18;
          acceptedCandidate4 = [v18 acceptedCandidate];
          [acceptedCandidate4 candidate];
          v24 = v23 = v17;
          whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v26 = [v24 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

          v27 = v26;
          if ([v26 length])
          {
            v42 = v23;
            candidatesOffered = [v8 candidatesOffered];
            lastObject = [candidatesOffered lastObject];

            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v41 = lastObject;
            obj = [lastObject predictions];
            v30 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
            v31 = 0x277CCA000uLL;
            if (v30)
            {
              v32 = v30;
              v45 = *v47;
              v40 = v12;
              while (2)
              {
                for (i = 0; i != v32; ++i)
                {
                  v34 = v27;
                  if (*v47 != v45)
                  {
                    objc_enumerationMutation(obj);
                  }

                  candidate2 = [*(*(&v46 + 1) + 8 * i) candidate];
                  whitespaceCharacterSet3 = [*(v31 + 2304) whitespaceCharacterSet];
                  v37 = [candidate2 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

                  v27 = v34;
                  if ([v34 isEqualToString:v37])
                  {
                    v12 = v40;
                    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordsShownInCandidateBar andContext:v42 andCandidateString:v40];

                    goto LABEL_21;
                  }

                  v31 = 0x277CCA000;
                }

                v32 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
                v12 = v40;
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

LABEL_21:

            v38 = [(TIFavoniusTypingSessionAnalyzer *)self deleteLengthMetrics:v12 nextWordEntryCandText:v27];
            v17 = v42;
            [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:v38 andContext:v42 andCandidateString:v12];
          }

          else
          {
            [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordsCorrectedByOther andContext:v23 andCandidateString:v12];
            v17 = v23;
          }
        }

        else
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordsCorrectedByOther andContext:v17 andCandidateString:v12];
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)deleteLengthMetrics:(id)metrics nextWordEntryCandText:(id)text
{
  metricsCopy = metrics;
  textCopy = text;
  v7 = [metricsCopy length];
  v8 = [textCopy length];
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [textCopy characterAtIndex:v10];
      if (v11 != [metricsCopy characterAtIndex:v10])
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v9) = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_8:
    v12 = v7 / 2;
    if ((v7 & 1) != 0 || v9 != v12)
    {
      if (v9 <= v12)
      {
        v13 = &kFeatureValueWithWordLenMoreThanHalfOfWordDeleted;
      }

      else
      {
        v13 = &kFeatureValueWithWordLenLessThanHalfOfWordDeleted;
      }
    }

    else
    {
      v13 = &kFeatureValueWithWordLenHalfOfWordDeleted;
    }
  }

  else
  {
LABEL_12:
    v13 = &kFeatureValueWithWordLenWholeWordDeleted;
  }

  v14 = *v13;
  v15 = *v13;

  return v14;
}

- (void)updateSourceCountersForCandidate:(id)candidate withText:(id)text andContext:(id)context hasPQTSource:(BOOL)source
{
  sourceCopy = source;
  candidateCopy = candidate;
  textCopy = text;
  contextCopy = context;
  if ([candidateCopy isResponseKitCandidate])
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceResponseKitRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if ([candidateCopy isEmojiCandidate])
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceEmojiRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (sourceCopy)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourcePQTRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x8000) != 0 || (objc_msgSend(candidateCopy, "sourceMask") & 0x20000) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceStaticDictionaryRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x10000) != 0 || (objc_msgSend(candidateCopy, "sourceMask") & 0x40000) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceDynamicDictionaryRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 4) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceTextReplacementsRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 8) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceAddressBookRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x10) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceNamedEntitiesRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x20) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceOOVRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x400) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceSupplementalLexiconRaw andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x80) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceOffensive andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x100) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceVulgar andContext:contextCopy andCandidateString:textCopy];
  }

  if (([candidateCopy sourceMask] & 0x200) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceSensitive andContext:contextCopy andCandidateString:textCopy];
  }

  if ([candidateCopy isResponseKitCandidate])
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceResponseKitOrdered;
LABEL_31:
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v12 andContext:contextCopy andCandidateString:textCopy];
    goto LABEL_32;
  }

  isEmojiCandidate = [candidateCopy isEmojiCandidate];
  v12 = &kFeatureValueWithWordLenCandidateSourcePQTOrdered;
  if (isEmojiCandidate)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceEmojiOrdered;
  }

  if ((isEmojiCandidate & 1) != 0 || sourceCopy)
  {
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 0x400) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceSupplementalLexiconOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 0x10) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceNamedEntitiesOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 8) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceAddressBookOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 4) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceTextReplacementsOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 0x20) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceOOVOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 0x10000) != 0 || (objc_msgSend(candidateCopy, "sourceMask") & 0x40000) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceDynamicDictionaryOrdered;
    goto LABEL_31;
  }

  if (([candidateCopy sourceMask] & 0x8000) != 0 || (objc_msgSend(candidateCopy, "sourceMask") & 0x20000) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceStaticDictionaryOrdered;
    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)updatePQTCountersForCandidate:(id)candidate withText:(id)text andContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  textCopy = text;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proactiveTrigger = [candidateCopy proactiveTrigger];
    v12 = proactiveTrigger;
    if (proactiveTrigger)
    {
      triggerSourceType = [proactiveTrigger triggerSourceType];
      v24 = candidateCopy;
      if (triggerSourceType >= 3)
      {
        v22 = 0;
      }

      else
      {
        v14 = off_27872FAE8[triggerSourceType];
        if ([(__CFString *)v14 isEqualToString:@"LanguageModeling"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceLanguageModeling andContext:contextCopy andCandidateString:textCopy];
        }

        if ([(__CFString *)v14 isEqualToString:@"ResponseKit"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceResponseKit andContext:contextCopy andCandidateString:textCopy];
        }

        v22 = v14;
        if ([(__CFString *)v14 isEqualToString:@"TaggedTextField"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceTaggedTextField andContext:contextCopy andCandidateString:textCopy, v14];
        }
      }

      v23 = v12;
      obj = TIStatisticsCategoriesForProactiveTrigger(v12);
      if (obj)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v26 + 1) + 8 * i);
              if ([v19 isEqualToString:{@"1stPerson", v22, v23}])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryFirstPerson andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"3rdPerson"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryThirdPerson andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactAnyPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAnyPhone andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactSpecificPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactSpecificPhone andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactFax"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactFax andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactAnyAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAnyAddress andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactAddressHome"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAddressHome andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactAddressWork"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAddressWork andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactEmail"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactEmail andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactFaceTime"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactFaceTime andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"contactBio"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactBio andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"socialMedia"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategorySocialMedia andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"locationAutocompleteSendCurrentButton"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryLocationAutocompleteSendCurrentButton andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"recentGenericAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentGenericAddress andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"recentPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentPhone andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"recentAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentAddress andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"eventAvailability"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryEventAvailability andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"eventNext"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryEventNext andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"money"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryMoney andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"health"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryHealth andContext:contextCopy andCandidateString:textCopy];
              }

              if ([v19 isEqualToString:@"navigation"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryNavigation andContext:contextCopy andCandidateString:textCopy];
              }
            }

            v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v16);
        }
      }

      LOBYTE(v12) = 1;
      candidateCopy = v24;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)handleWordEntry:(id)entry
{
  entryCopy = entry;
  v4 = [TIKBAnalyticsMetricsContext alloc];
  keyboardState = [entryCopy keyboardState];
  v6 = [(TIKBAnalyticsMetricsContext *)v4 initWithKeyboardState:keyboardState activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

  acceptedCandidate = [entryCopy acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v10 length])
  {
    [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTyped];
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWithWordLenWordsTyped andContext:v6 andCandidateString:v10];
    acceptedCandidate2 = [entryCopy acceptedCandidate];
    v12 = [(TIFavoniusTypingSessionAnalyzer *)self updatePQTCountersForCandidate:acceptedCandidate2 withText:v10 andContext:v6];

    acceptedCandidate3 = [entryCopy acceptedCandidate];
    [(TIFavoniusTypingSessionAnalyzer *)self updateSourceCountersForCandidate:acceptedCandidate3 withText:v10 andContext:v6 hasPQTSource:v12];

    if ([entryCopy wordEntryType])
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsAutocorrected];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenWordsAutocorrected andContext:v6 andCandidateString:v10];
    }

    if (([entryCopy wordEntryType] & 4) != 0)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsFromCandidateBar];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenWordsFromCandidateBar andContext:v6 andCandidateString:v10];
    }

    acceptedCandidate4 = [entryCopy acceptedCandidate];
    isContinuousPathConversion = [acceptedCandidate4 isContinuousPathConversion];

    if (isContinuousPathConversion)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsPathed];
      originalCandidate = [entryCopy originalCandidate];

      if (originalCandidate)
      {
        originalCandidate2 = [entryCopy originalCandidate];
        -[TIFavoniusTypingSessionAnalyzer logPathedCandidate:forKey:isCompletion:](self, "logPathedCandidate:forKey:isCompletion:", originalCandidate2, v6, [entryCopy isContinuousPathCompletion]);

        originalCandidate3 = [entryCopy originalCandidate];
        candidate2 = [originalCandidate3 candidate];
        whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v21 = [candidate2 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordsCorrectedFromCandidateBar andContext:v6 andCandidateString:v21];
      }

      else
      {
        acceptedCandidate5 = [entryCopy acceptedCandidate];
        -[TIFavoniusTypingSessionAnalyzer logPathedCandidate:forKey:isCompletion:](self, "logPathedCandidate:forKey:isCompletion:", acceptedCandidate5, v6, [entryCopy isContinuousPathCompletion]);
      }
    }

    else if (([entryCopy wordEntryType] & 4) == 0)
    {
      if (-[TIFavoniusTypingSessionAnalyzer isPathable:context:](self, "isPathable:context:", v10, v6) && ([entryCopy isOOV] & 1) == 0)
      {
        v22 = kFeatureValueWithWordLenPathEligibleWordsTapped;
      }

      else
      {
        v22 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
      }

      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:v22 andContext:v6 andCandidateString:v10];
    }

    if ([entryCopy isMultilingual])
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTypedInSecondaryLanguage];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWordsTypedInSecondaryLanguage andContext:v6 andCandidateString:v10];
    }

    if ([(TIKBAnalyticsMetricsContext *)v6 keyboardType]== 3)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTypedOnFloatingKeyboard];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard andContext:v6 andCandidateString:v10];
    }

    [(TIFavoniusTypingSessionAnalyzer *)self updateDurationCounterForWord:entryCopy forTypingContext:v6];
  }
}

- (void)logPathedCandidate:(id)candidate forKey:(id)key isCompletion:(BOOL)completion
{
  completionCopy = completion;
  keyCopy = key;
  candidate = [candidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordInsertions andContext:keyCopy andCandidateString:v12];
  v11 = &kFeatureValueWithWordLenWordCompletionsPathed;
  if (!completionCopy)
  {
    v11 = &kFeatureValueWithWordLenWholeWordsPathed;
  }

  [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v11 andContext:keyCopy andCandidateString:v12];
}

- (void)updateDurationCounterForWord:(id)word forTypingContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  contextCopy = context;
  acceptedCandidate = [wordCopy acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  acceptedCandidate2 = [wordCopy acceptedCandidate];
  LODWORD(whitespaceCharacterSet) = [acceptedCandidate2 isContinuousPathConversion];

  allTouches = [wordCopy allTouches];
  v14 = [allTouches count];

  if (whitespaceCharacterSet)
  {
    if (v14 >= 2)
    {
      allTouches2 = [wordCopy allTouches];
      v16 = [allTouches2 objectAtIndex:0];
      [v16 timestamp];
      v18 = v17;

      allTouches3 = [wordCopy allTouches];
      v20 = [allTouches3 objectAtIndex:(v14 - 1)];
      [v20 timestamp];
      v22 = v21;

      v23 = ((v22 - v18) * 1000.0);
      v24 = kFeatureCounterDurationPathedWords;
      selfCopy3 = self;
LABEL_23:
      [(TIFavoniusTypingSessionAnalyzer *)selfCopy3 addIntegerToTransientCounter:v23 forKey:v24 andContext:contextCopy andCandidateString:v11];
    }
  }

  else if (v14 >= 2)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allTouches4 = [wordCopy allTouches];
    v27 = [allTouches4 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v27)
    {
      selfCopy2 = self;
      v43 = contextCopy;
      v28 = 0;
      v29 = *v45;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(allTouches4);
          }

          v34 = *(*(&v44 + 1) + 8 * i);
          if (-v28 == i)
          {
            [*(*(&v44 + 1) + 8 * i) timestamp];
            v31 = v35;
            [v34 timestamp];
            v32 = v36;
          }

          if (![v34 stage])
          {
            [v34 timestamp];
            v31 = v37;
            v38 = v37 - v32;
            if (v38 > 2.5)
            {
              v38 = 2.5;
            }

            v30 = v30 + v38;
          }

          if ([v34 stage] == 2 || objc_msgSend(v34, "stage") == 3)
          {
            [v34 timestamp];
            v30 = v30 + v39 - v31;
            [v34 timestamp];
            v32 = v40;
          }
        }

        v28 += v27;
        v27 = [allTouches4 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v27);
      v27 = (v30 * 1000.0);
      self = selfCopy2;
      contextCopy = v43;
    }

    v24 = kFeatureCounterDurationTappedWords;
    selfCopy3 = self;
    v23 = v27;
    goto LABEL_23;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPathable:(id)pathable context:(id)context
{
  contextCopy = context;
  v6 = MEMORY[0x277CCA900];
  pathableCopy = pathable;
  whitespaceAndNewlineCharacterSet = [v6 whitespaceAndNewlineCharacterSet];
  v9 = [pathableCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  inputLanguage = [contextCopy inputLanguage];
  LODWORD(pathableCopy) = [inputLanguage isEqualToString:@"zh"];

  if (!pathableCopy)
  {
    if ([v9 length] >= 2)
    {
      goto LABEL_7;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v12 = [v9 rangeOfCharacterFromSet:decimalDigitCharacterSet];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  lowercaseLetterCharacterSet = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  if ([v9 rangeOfCharacterFromSet:lowercaseLetterCharacterSet] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_11;
  }

  uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v15 = [v9 rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

LABEL_7:
  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  v17 = [v9 stringByTrimmingCharactersInSet:letterCharacterSet];
  v18 = [v17 length];

  if (v18)
  {
    goto LABEL_11;
  }

  keyboardType = [contextCopy keyboardType];
  if ((keyboardType - 1) >= 2)
  {
    if (keyboardType == 3)
    {
      v20 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v20 = [contextCopy userInterfaceIdiom] == 0;
LABEL_12:

  return v20;
}

- (void)addDoubleToTransientCounter:(double)counter forKey:(id)key andContext:(id)context andCandidateString:(id)string
{
  keyCopy = key;
  contextCopy = context;
  if ([string length])
  {
    [TIUserModeling addDoubleToTransientCounter:"addDoubleToTransientCounter:forKey:andCandidateLength:andContext:" forKey:keyCopy andCandidateLength:counter andContext:?];
  }
}

- (TIFavoniusTypingSessionAnalyzer)initWithUserModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = TIFavoniusTypingSessionAnalyzer;
  v6 = [(TIFavoniusTypingSessionAnalyzer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    currentSession = v6->_currentSession;
    v6->_currentSession = 0;

    objc_storeStrong(&v7->_userModel, model);
    lastMessage = v7->_lastMessage;
    v7->_lastMessage = 0;

    objc_storeWeak(&v7->_lastMessageKeyboardState, 0);
    __asm { FMOV            V0.2D, #-1.0 }

    *&v7->_lastMessageStartTime = _Q0;
    v7->_lastMessageWordsEntered = 0;
    activeInputModes = v7->_activeInputModes;
    v7->_activeInputModes = 0;

    testingParameters = v7->_testingParameters;
    v7->_testingParameters = 0;
  }

  return v7;
}

+ (id)favoniusTypingSessionAnalyzerForUserModel:(id)model
{
  modelCopy = model;
  v4 = [[TIFavoniusTypingSessionAnalyzer alloc] initWithUserModel:modelCopy];

  return v4;
}

@end