@interface TIFavoniusTypingSessionAnalyzer
+ (id)favoniusTypingSessionAnalyzerForUserModel:(id)a3;
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (BOOL)isPathable:(id)a3 context:(id)a4;
- (BOOL)updatePQTCountersForCandidate:(id)a3 withText:(id)a4 andContext:(id)a5;
- (TIFavoniusTypingSessionAnalyzer)initWithUserModel:(id)a3;
- (TIKeyboardState)lastMessageKeyboardState;
- (id)deleteLengthMetrics:(id)a3 nextWordEntryCandText:(id)a4;
- (void)addDoubleToTransientCounter:(double)a3 forKey:(id)a4 andContext:(id)a5 andCandidateString:(id)a6;
- (void)handleDeleteWord:(id)a3 nextAction:(id)a4;
- (void)handlePath:(id)a3;
- (void)handleWordEntry:(id)a3;
- (void)logPathedCandidate:(id)a3 forKey:(id)a4 isCompletion:(BOOL)a5;
- (void)reportLastMessage;
- (void)trackMessagesForAction:(id)a3;
- (void)updateDurationCounterForWord:(id)a3 forTypingContext:(id)a4;
- (void)updateSourceCountersForCandidate:(id)a3 withText:(id)a4 andContext:(id)a5 hasPQTSource:(BOOL)a6;
@end

@implementation TIFavoniusTypingSessionAnalyzer

- (TIKeyboardState)lastMessageKeyboardState
{
  WeakRetained = objc_loadWeakRetained(&self->_lastMessageKeyboardState);

  return WeakRetained;
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v8 = a3;
  if (a5)
  {
    objc_storeStrong(&self->_currentSession, a3);
    v9 = [v8 sessionParams];
    v10 = [v9 activeInputModes];
    activeInputModes = self->_activeInputModes;
    self->_activeInputModes = v10;

    v12 = [v8 sessionParams];
    v13 = [v12 testingParameters];
    testingParameters = self->_testingParameters;
    self->_testingParameters = v13;

    v15 = [v8 userActionHistory];
    v16 = [v15 count];

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      v19 = 0;
      v20 = (v16 - 1);
      do
      {
        v21 = v19;
        v22 = [v8 userActionHistory];
        v19 = [v22 objectAtIndex:v18];

        if (v18 >= v20)
        {
          v24 = 0;
        }

        else
        {
          v23 = [v8 userActionHistory];
          v24 = [v23 objectAtIndex:v18 + 1];
        }

        v25 = [v19 actionType];
        switch(v25)
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

  return a5 != 0;
}

- (void)reportLastMessage
{
  v3 = [(TIFavoniusTypingSessionAnalyzer *)self lastMessage];

  if (v3)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self lastMessageStartTime];
    v5 = v4;
    [(TIFavoniusTypingSessionAnalyzer *)self lastMessageEndTime];
    v7 = [(TIFavoniusTypingSessionAnalyzer *)self durationInMillisecondsFromStartTime:v5 endTime:v6];
    v8 = [TIKBAnalyticsMetricsContext alloc];
    v9 = [(TIFavoniusTypingSessionAnalyzer *)self lastMessageKeyboardState];
    v12 = [(TIKBAnalyticsMetricsContext *)v8 initWithKeyboardState:v9 activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:1 forKey:@"messageCount" andCandidateLength:0 andContext:v12];
    userModel = self->_userModel;
    v11 = [(TIFavoniusTypingSessionAnalyzer *)self lastMessage];
    -[TIUserModeling addIntegerToTransientCounter:forKey:andCandidateLength:andContext:](userModel, "addIntegerToTransientCounter:forKey:andCandidateLength:andContext:", [v11 length], @"messageLength", 0, v12);

    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:[(TIFavoniusTypingSessionAnalyzer *)self lastMessageWordsEntered] forKey:@"messageWords" andCandidateLength:0 andContext:v12];
    [(TIUserModeling *)self->_userModel addIntegerToTransientCounter:v7 forKey:@"messageDuration" andCandidateLength:0 andContext:v12];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessage:0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageKeyboardState:0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageStartTime:-1.0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageEndTime:-1.0];
    [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageWordsEntered:0];
  }
}

- (void)trackMessagesForAction:(id)a3
{
  v18 = a3;
  v4 = [v18 keyboardState];
  v5 = [v4 clientIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.MobileSMS"];

  if (v6)
  {
    v7 = [v18 documentState];
    v8 = [v4 documentState];
    if ([v7 documentIsEmpty])
    {
      [(TIFavoniusTypingSessionAnalyzer *)self reportLastMessage];
    }

    [v18 startTime];
    if (v9 > 0.0)
    {
      [v18 endTime];
      if (v10 > 0.0)
      {
        v11 = [v8 contextBeforeInput];
        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessage:v11];

        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageKeyboardState:v4];
        [(TIFavoniusTypingSessionAnalyzer *)self lastMessageStartTime];
        v12 = v18;
        if (v13 == -1.0)
        {
          [v18 startTime];
          [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageStartTime:?];
          v12 = v18;
        }

        [v12 endTime];
        [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageEndTime:?];
        if (![v18 actionType])
        {
          v14 = [v18 acceptedCandidate];
          v15 = [v14 candidate];
          v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v17 = [v15 stringByTrimmingCharactersInSet:v16];

          if ([v17 length])
          {
            [(TIFavoniusTypingSessionAnalyzer *)self setLastMessageWordsEntered:[(TIFavoniusTypingSessionAnalyzer *)self lastMessageWordsEntered]+ 1];
          }
        }
      }
    }
  }
}

- (void)handlePath:(id)a3
{
  v4 = a3;
  v5 = [TIKBAnalyticsMetricsContext alloc];
  v6 = [v4 keyboardState];
  v10 = [(TIKBAnalyticsMetricsContext *)v5 initWithKeyboardState:v6 activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

  userModel = self->_userModel;
  v8 = kFeatureValueWithWordLenCandidatesPathed;
  v9 = [v4 syllableCount];

  [(TIUserModeling *)userModel addIntegerToTransientCounter:1 forKey:v8 andCandidateLength:v9 andContext:v10];
}

- (void)handleDeleteWord:(id)a3 nextAction:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 actionType])
  {
    v8 = v6;
    v9 = [v8 acceptedCandidate];
    v10 = [v9 candidate];
    v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];

    if ([v12 length])
    {
      v13 = [v8 acceptedCandidate];
      v14 = [v13 isContinuousPathConversion];

      if (v14)
      {
        v15 = [TIKBAnalyticsMetricsContext alloc];
        v16 = [v8 keyboardState];
        v17 = [(TIKBAnalyticsMetricsContext *)v15 initWithKeyboardState:v16 activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

        if (v7 && ![v7 actionType])
        {
          v18 = v7;
          v19 = [v18 acceptedCandidate];
          v20 = [v19 isContinuousPathConversion];

          v21 = &kFeatureValueWithWordLenPathedWordsCorrectedByDeleteRepath;
          if (!v20)
          {
            v21 = &kFeatureValueWithWordLenPathedWordsCorrectedByDeleteTapped;
          }

          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v21 andContext:v17 andCandidateString:v12];
          v43 = v18;
          v22 = [v18 acceptedCandidate];
          [v22 candidate];
          v24 = v23 = v17;
          v25 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v26 = [v24 stringByTrimmingCharactersInSet:v25];

          v27 = v26;
          if ([v26 length])
          {
            v42 = v23;
            v28 = [v8 candidatesOffered];
            v29 = [v28 lastObject];

            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v41 = v29;
            obj = [v29 predictions];
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

                  v35 = [*(*(&v46 + 1) + 8 * i) candidate];
                  v36 = [*(v31 + 2304) whitespaceCharacterSet];
                  v37 = [v35 stringByTrimmingCharactersInSet:v36];

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

- (id)deleteLengthMetrics:(id)a3 nextWordEntryCandText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = [v6 length];
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
      v11 = [v6 characterAtIndex:v10];
      if (v11 != [v5 characterAtIndex:v10])
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

- (void)updateSourceCountersForCandidate:(id)a3 withText:(id)a4 andContext:(id)a5 hasPQTSource:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  v10 = a4;
  v11 = a5;
  if ([v14 isResponseKitCandidate])
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceResponseKitRaw andContext:v11 andCandidateString:v10];
  }

  if ([v14 isEmojiCandidate])
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceEmojiRaw andContext:v11 andCandidateString:v10];
  }

  if (v6)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourcePQTRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x8000) != 0 || (objc_msgSend(v14, "sourceMask") & 0x20000) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceStaticDictionaryRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x10000) != 0 || (objc_msgSend(v14, "sourceMask") & 0x40000) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceDynamicDictionaryRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 4) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceTextReplacementsRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 8) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceAddressBookRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x10) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceNamedEntitiesRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x20) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceOOVRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x400) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceSupplementalLexiconRaw andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x80) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceOffensive andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x100) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceVulgar andContext:v11 andCandidateString:v10];
  }

  if (([v14 sourceMask] & 0x200) != 0)
  {
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenCandidateSourceSensitive andContext:v11 andCandidateString:v10];
  }

  if ([v14 isResponseKitCandidate])
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceResponseKitOrdered;
LABEL_31:
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v12 andContext:v11 andCandidateString:v10];
    goto LABEL_32;
  }

  v13 = [v14 isEmojiCandidate];
  v12 = &kFeatureValueWithWordLenCandidateSourcePQTOrdered;
  if (v13)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceEmojiOrdered;
  }

  if ((v13 & 1) != 0 || v6)
  {
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 0x400) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceSupplementalLexiconOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 0x10) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceNamedEntitiesOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 8) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceAddressBookOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 4) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceTextReplacementsOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 0x20) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceOOVOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 0x10000) != 0 || (objc_msgSend(v14, "sourceMask") & 0x40000) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceDynamicDictionaryOrdered;
    goto LABEL_31;
  }

  if (([v14 sourceMask] & 0x8000) != 0 || (objc_msgSend(v14, "sourceMask") & 0x20000) != 0)
  {
    v12 = &kFeatureValueWithWordLenCandidateSourceStaticDictionaryOrdered;
    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)updatePQTCountersForCandidate:(id)a3 withText:(id)a4 andContext:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 proactiveTrigger];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 triggerSourceType];
      v24 = v8;
      if (v13 >= 3)
      {
        v22 = 0;
      }

      else
      {
        v14 = off_27872FAE8[v13];
        if ([(__CFString *)v14 isEqualToString:@"LanguageModeling"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceLanguageModeling andContext:v10 andCandidateString:v9];
        }

        if ([(__CFString *)v14 isEqualToString:@"ResponseKit"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceResponseKit andContext:v10 andCandidateString:v9];
        }

        v22 = v14;
        if ([(__CFString *)v14 isEqualToString:@"TaggedTextField"])
        {
          [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveSourceTaggedTextField andContext:v10 andCandidateString:v9, v14];
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
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryFirstPerson andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"3rdPerson"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryThirdPerson andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactAnyPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAnyPhone andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactSpecificPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactSpecificPhone andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactFax"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactFax andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactAnyAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAnyAddress andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactAddressHome"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAddressHome andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactAddressWork"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactAddressWork andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactEmail"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactEmail andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactFaceTime"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactFaceTime andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"contactBio"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryContactBio andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"socialMedia"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategorySocialMedia andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"locationAutocompleteSendCurrentButton"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryLocationAutocompleteSendCurrentButton andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"recentGenericAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentGenericAddress andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"recentPhone"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentPhone andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"recentAddress"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryRecentAddress andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"eventAvailability"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryEventAvailability andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"eventNext"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryEventNext andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"money"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryMoney andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"health"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryHealth andContext:v10 andCandidateString:v9];
              }

              if ([v19 isEqualToString:@"navigation"])
              {
                [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenProactiveCategoryNavigation andContext:v10 andCandidateString:v9];
              }
            }

            v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v16);
        }
      }

      LOBYTE(v12) = 1;
      v8 = v24;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)handleWordEntry:(id)a3
{
  v24 = a3;
  v4 = [TIKBAnalyticsMetricsContext alloc];
  v5 = [v24 keyboardState];
  v6 = [(TIKBAnalyticsMetricsContext *)v4 initWithKeyboardState:v5 activeInputModes:self->_activeInputModes testingParameters:self->_testingParameters];

  v7 = [v24 acceptedCandidate];
  v8 = [v7 candidate];
  v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  if ([v10 length])
  {
    [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTyped];
    [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWithWordLenWordsTyped andContext:v6 andCandidateString:v10];
    v11 = [v24 acceptedCandidate];
    v12 = [(TIFavoniusTypingSessionAnalyzer *)self updatePQTCountersForCandidate:v11 withText:v10 andContext:v6];

    v13 = [v24 acceptedCandidate];
    [(TIFavoniusTypingSessionAnalyzer *)self updateSourceCountersForCandidate:v13 withText:v10 andContext:v6 hasPQTSource:v12];

    if ([v24 wordEntryType])
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsAutocorrected];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenWordsAutocorrected andContext:v6 andCandidateString:v10];
    }

    if (([v24 wordEntryType] & 4) != 0)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsFromCandidateBar];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenWordsFromCandidateBar andContext:v6 andCandidateString:v10];
    }

    v14 = [v24 acceptedCandidate];
    v15 = [v14 isContinuousPathConversion];

    if (v15)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsPathed];
      v16 = [v24 originalCandidate];

      if (v16)
      {
        v17 = [v24 originalCandidate];
        -[TIFavoniusTypingSessionAnalyzer logPathedCandidate:forKey:isCompletion:](self, "logPathedCandidate:forKey:isCompletion:", v17, v6, [v24 isContinuousPathCompletion]);

        v18 = [v24 originalCandidate];
        v19 = [v18 candidate];
        v20 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordsCorrectedFromCandidateBar andContext:v6 andCandidateString:v21];
      }

      else
      {
        v23 = [v24 acceptedCandidate];
        -[TIFavoniusTypingSessionAnalyzer logPathedCandidate:forKey:isCompletion:](self, "logPathedCandidate:forKey:isCompletion:", v23, v6, [v24 isContinuousPathCompletion]);
      }
    }

    else if (([v24 wordEntryType] & 4) == 0)
    {
      if (-[TIFavoniusTypingSessionAnalyzer isPathable:context:](self, "isPathable:context:", v10, v6) && ([v24 isOOV] & 1) == 0)
      {
        v22 = kFeatureValueWithWordLenPathEligibleWordsTapped;
      }

      else
      {
        v22 = kFeatureValueWithWordLenPathIneligibleWordsTapped;
      }

      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:v22 andContext:v6 andCandidateString:v10];
    }

    if ([v24 isMultilingual])
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTypedInSecondaryLanguage];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWordsTypedInSecondaryLanguage andContext:v6 andCandidateString:v10];
    }

    if ([(TIKBAnalyticsMetricsContext *)v6 keyboardType]== 3)
    {
      [(TIUserModeling *)self->_userModel addToDurableCounter:1 forKey:kFeatureCounterTotalWordsTypedOnFloatingKeyboard];
      [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureCounterWithWordLenWordsTypedOnFloatingKeyboard andContext:v6 andCandidateString:v10];
    }

    [(TIFavoniusTypingSessionAnalyzer *)self updateDurationCounterForWord:v24 forTypingContext:v6];
  }
}

- (void)logPathedCandidate:(id)a3 forKey:(id)a4 isCompletion:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 candidate];
  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [v9 stringByTrimmingCharactersInSet:v10];

  [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:kFeatureValueWithWordLenPathedWordInsertions andContext:v8 andCandidateString:v12];
  v11 = &kFeatureValueWithWordLenWordCompletionsPathed;
  if (!v5)
  {
    v11 = &kFeatureValueWithWordLenWholeWordsPathed;
  }

  [(TIFavoniusTypingSessionAnalyzer *)self incrementTransientCounterForKey:*v11 andContext:v8 andCandidateString:v12];
}

- (void)updateDurationCounterForWord:(id)a3 forTypingContext:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 acceptedCandidate];
  v9 = [v8 candidate];
  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = [v6 acceptedCandidate];
  LODWORD(v10) = [v12 isContinuousPathConversion];

  v13 = [v6 allTouches];
  v14 = [v13 count];

  if (v10)
  {
    if (v14 >= 2)
    {
      v15 = [v6 allTouches];
      v16 = [v15 objectAtIndex:0];
      [v16 timestamp];
      v18 = v17;

      v19 = [v6 allTouches];
      v20 = [v19 objectAtIndex:(v14 - 1)];
      [v20 timestamp];
      v22 = v21;

      v23 = ((v22 - v18) * 1000.0);
      v24 = kFeatureCounterDurationPathedWords;
      v25 = self;
LABEL_23:
      [(TIFavoniusTypingSessionAnalyzer *)v25 addIntegerToTransientCounter:v23 forKey:v24 andContext:v7 andCandidateString:v11];
    }
  }

  else if (v14 >= 2)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [v6 allTouches];
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v27)
    {
      v42 = self;
      v43 = v7;
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
            objc_enumerationMutation(v26);
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
        v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v27);
      v27 = (v30 * 1000.0);
      self = v42;
      v7 = v43;
    }

    v24 = kFeatureCounterDurationTappedWords;
    v25 = self;
    v23 = v27;
    goto LABEL_23;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPathable:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCA900];
  v7 = a3;
  v8 = [v6 whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v10 = [v5 inputLanguage];
  LODWORD(v7) = [v10 isEqualToString:@"zh"];

  if (!v7)
  {
    if ([v9 length] >= 2)
    {
      goto LABEL_7;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v12 = [v9 rangeOfCharacterFromSet:v11];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  if ([v9 rangeOfCharacterFromSet:v13] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_11;
  }

  v14 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v15 = [v9 rangeOfCharacterFromSet:v14];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

LABEL_7:
  v16 = [MEMORY[0x277CCA900] letterCharacterSet];
  v17 = [v9 stringByTrimmingCharactersInSet:v16];
  v18 = [v17 length];

  if (v18)
  {
    goto LABEL_11;
  }

  v19 = [v5 keyboardType];
  if ((v19 - 1) >= 2)
  {
    if (v19 == 3)
    {
      v20 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v20 = [v5 userInterfaceIdiom] == 0;
LABEL_12:

  return v20;
}

- (void)addDoubleToTransientCounter:(double)a3 forKey:(id)a4 andContext:(id)a5 andCandidateString:(id)a6
{
  v11 = a4;
  v10 = a5;
  if ([a6 length])
  {
    [TIUserModeling addDoubleToTransientCounter:"addDoubleToTransientCounter:forKey:andCandidateLength:andContext:" forKey:v11 andCandidateLength:a3 andContext:?];
  }
}

- (TIFavoniusTypingSessionAnalyzer)initWithUserModel:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = TIFavoniusTypingSessionAnalyzer;
  v6 = [(TIFavoniusTypingSessionAnalyzer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    currentSession = v6->_currentSession;
    v6->_currentSession = 0;

    objc_storeStrong(&v7->_userModel, a3);
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

+ (id)favoniusTypingSessionAnalyzerForUserModel:(id)a3
{
  v3 = a3;
  v4 = [[TIFavoniusTypingSessionAnalyzer alloc] initWithUserModel:v3];

  return v4;
}

@end