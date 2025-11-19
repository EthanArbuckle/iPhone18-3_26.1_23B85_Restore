@interface TIKeyboardInputManagerLiveConversion_ja
- (BOOL)conversionEnabled;
- (BOOL)inSearchField;
- (BOOL)makeCandidatesWithWordSearch:(id)a3;
- (BOOL)shouldCancelLiveConversionOnBackspace;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)shouldCommitHeadSegment;
- (BOOL)shouldShowPredictionCandidate:(id)a3;
- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
- (BOOL)usesCandidateSelection;
- (NSArray)segmentsForPicker;
- (NSString)committedSurface;
- (NSString)displayStringForSearch;
- (NSString)inputStringForHiraganaMode;
- (NSString)rawInputStringForPrediction;
- (TIKeyboardInputManagerLiveConversion_ja)initWithConfig:(id)a3 keyboardState:(id)a4;
- (_NSRange)analysisStringRange;
- (double)predictionThreshold;
- (id)candidateResultSet;
- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4;
- (id)didAcceptCandidate:(id)a3;
- (id)handleKeyboardInput:(id)a3;
- (id)hiraganaStringFor:(id)a3;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (id)rawInputStringForAutoCommit;
- (id)rawInputStringFrom:(id)a3;
- (id)segmentAdjustInputManager:(unint64_t)a3;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)candidateOffset;
- (unsigned)inputCount;
- (void)_cancelCandidatesThread;
- (void)_deleteFromInput;
- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)_selectPartialCandidate:(id)a3 forOperation:(id)a4;
- (void)addInlineCandidateIfNeeded:(id)a3;
- (void)clearInput;
- (void)commitComposition;
- (void)commitCurrentCandidate:(BOOL)a3;
- (void)deleteFromInputWithContext:(id)a3;
- (void)initImplementation;
- (void)inputLocationChanged;
- (void)invokeEditMode;
- (void)loadDictionaries;
- (void)loadFavoniusTypingModel;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)preferencesDidChange:(id)a3;
- (void)pushCandidateGenerationContextWithResults:(id)a3;
- (void)selectPartialCandidate:(id)a3;
- (void)setInput:(id)a3;
- (void)startPrediction;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja

- (TIKeyboardInputManagerLiveConversion_ja)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v16.receiver = self;
  v16.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v16 initWithConfig:a3 keyboardState:a4];
  v5 = v4;
  if (v4)
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)v4 setSegmentIndex:0x7FFFFFFFFFFFFFFFLL];
    v6 = [MEMORY[0x29EDB8D80] array];
    [(TIKeyboardInputManagerLiveConversion_ja *)v5 setCommittedSegments:v6];

    v7 = objc_alloc_init(MEMORY[0x29EDC70F0]);
    smartPunctuationController = v5->_smartPunctuationController;
    v5->_smartPunctuationController = v7;

    v9 = [(TIKeyboardInputManagerLiveConversion_ja *)v5 smartPunctuationController];
    [v9 setAutoQuoteType:1];

    v10 = [(TIKeyboardInputManagerLiveConversion_ja *)v5 smartPunctuationController];
    [v10 setSmartDashesEnabled:0];

    v11 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
    v12 = [v11 valueForPreferenceKey:*MEMORY[0x29EDC7118]];
    [v12 floatValue];
    v5->_predictionThreshold = v13;

    [(TIKeyboardInputManagerLiveConversion_ja *)v5 setCandidateBehavior:[(TIKeyboardInputManagerLiveConversion_ja *)v5 preferCandidateBehavior]];
    v14 = [MEMORY[0x29EDBA068] defaultCenter];
    [v14 addObserver:v5 selector:sel_preferencesDidChange_ name:*MEMORY[0x29EDC7120] object:0];

    [(TIKeyboardInputManagerLiveConversion_ja *)v5 preferencesDidChange:0];
    TIInputManager::sync_with_input_from_UI(*(&v5->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  }

  return v5;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (id)keyEventMap
{
  v2 = objc_alloc_init(MEMORY[0x29EDC6FF0]);

  return v2;
}

- (void)loadDictionaries
{
  v3 = [MEMORY[0x29EDC7280] sharedWordSearchController];
  v4 = [(TIKeyboardInputManagerBase *)self inputMode];
  v5 = [v3 wordSearchForInputMode:v4];
  wordSearch = self->_wordSearch;
  self->_wordSearch = v5;

  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  [v7 setInsertKatakanaAtIndex:4];
}

- (void)loadFavoniusTypingModel
{
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  v3 = *(v2 + 280);
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

- (BOOL)usesCandidateSelection
{
  v2 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  v3 = [v2 suppressingCandidateSelection];

  return v3 ^ 1;
}

- (void)preferencesDidChange:(id)a3
{
  v4 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v5 = [v4 BOOLForPreferenceKey:*MEMORY[0x29EDC7130]];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self smartPunctuationController];
  [v6 setSmartQuotesEnabled:v5];

  v9 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v7 = [v9 BOOLForPreferenceKey:*MEMORY[0x29EDC7128]];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self smartPunctuationController];
  [v8 setSmartDashesEnabled:v7];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7048]);

  return v2;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if (TICanLogMessageAtLevel())
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_ja handleKeyboardInput:v5];
    }
  }

  v6 = [v4 acceptedCandidate];
  if (v6)
  {
    v7 = v6;
    v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (v8)
    {
      goto LABEL_12;
    }
  }

  if (([v4 isExpandSegment] & 1) != 0 || objc_msgSend(v4, "isShrinkSegment"))
  {
    v9 = [v4 isExpandSegment];
    if ((v9 & 1) != 0 || [v4 isShrinkSegment])
    {
      [(TIKeyboardInputManagerLiveConversion_ja *)self _adjustPhraseBoundaryInForwardDirection:v9 granularity:1];
    }

    goto LABEL_12;
  }

  v12 = [v4 string];
  if ([v12 isEqualToString:@"\n"])
  {

LABEL_19:
    v15 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v16 = [v15 length];

    v17 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    v18 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];

    if (v18)
    {
      v19 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      [v17 insertText:v19];
    }

    v20 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    v21 = [v20 candidate];

    if (v21)
    {
      v22 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      v23 = [v22 candidate];
      [v17 insertText:v23];
    }

    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    if (v16)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    v10 = v24;
LABEL_27:

    goto LABEL_13;
  }

  v13 = [v4 string];
  v14 = [v13 isEqualToString:@"\r"];

  if (v14)
  {
    goto LABEL_19;
  }

  v25 = [v4 string];
  if ([v25 isEqualToString:@" "])
  {

    goto LABEL_31;
  }

  v26 = [v4 string];
  v27 = [v26 isEqualToString:@"　"];

  if (!v27)
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:[(TIKeyboardInputManagerLiveConversion_ja *)self preferCandidateBehavior]];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setAutoSelectFirstCandidate:0];
    v29 = [v4 string];
    v30 = [v29 isEqualToString:@"\x1B"];

    if (([v4 isBackspace] & 1) == 0 && !v30)
    {
      goto LABEL_35;
    }

    v35 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v10 = [v35 handleKeyboardInput:v4];

    v36 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!v36)
    {
      if (v30)
      {
        v37 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
        [(TIKeyboardInputManagerLiveConversion_ja *)self commitCurrentCandidate:v37 != 0];
      }

      else
      {
        [(TIKeyboardInputManagerLiveConversion_ja *)self commitCurrentCandidate:0];
      }

      if (![v4 isBackspace] || -[TIKeyboardInputManagerLiveConversion_ja shouldCancelLiveConversionOnBackspace](self, "shouldCancelLiveConversionOnBackspace"))
      {
        v38 = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
        v39 = [v38 count];

        if (v39)
        {
          [(TIKeyboardInputManagerLiveConversion_ja *)self invokeEditMode];
          v40 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
          v41 = [v40 handleKeyboardInput:v4];

          v10 = v41;
        }
      }
    }

    if (v10)
    {
      v42 = v10;
    }

    else
    {
      if ([(TIKeyboardInputManagerLiveConversion_ja *)self inputCount])
      {
LABEL_35:
        -[TIKeyboardInputManagerLiveConversion_ja setTransliterationType:](self, "setTransliterationType:", [v4 transliterationType]);
        if ([v4 transliterationType])
        {
          [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:2];
          [(TIKeyboardInputManagerLiveConversion_ja *)self setAutoSelectFirstCandidate:1];
          v31 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
          v32 = [v31 handleKeyboardInput:v4];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = objc_alloc_init(MEMORY[0x29EDC70B0]);
          }

          v10 = v34;

          goto LABEL_13;
        }

        [(TIKeyboardInputManagerLiveConversion_ja *)self commitCurrentCandidate];
        [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:0];
        v43.receiver = self;
        v43.super_class = TIKeyboardInputManagerLiveConversion_ja;
        v10 = [(TIKeyboardInputManagerMecabra *)&v43 handleKeyboardInput:v4];
        v17 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:v17];
        goto LABEL_27;
      }

      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }

    goto LABEL_13;
  }

LABEL_31:
  v28 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v10 = [v28 handleKeyboardInput:v4];

  if (!v10)
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:2];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setAutoSelectFirstCandidate:1];
LABEL_12:
    v10 = objc_alloc_init(MEMORY[0x29EDC70B0]);
  }

LABEL_13:

  return v10;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (id)inputString
{
  if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]== 1 && ![(TIKeyboardInputManagerLiveConversion_ja *)self conversionEnabled])
  {
    v12 = [(TIKeyboardInputManagerLiveConversion_ja *)self displayStringForSearch];
  }

  else
  {
    v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    v4 = [v3 candidate];

    if (v4)
    {
      v5 = MEMORY[0x29EDBA0F8];
      v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      v7 = [v6 candidate];
      v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
      v9 = [v8 candidate];
      v10 = v9;
      v11 = &stru_2A2525CC0;
      if (v9)
      {
        v11 = v9;
      }

      v12 = [v5 stringWithFormat:@"%@%@", v7, v11];

LABEL_7:
      goto LABEL_17;
    }

    v13 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
    if (v13)
    {
      v14 = v13;
      v15 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];

      if (v15)
      {
        v16 = MEMORY[0x29EDBA0F8];
        v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
        v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
        v17 = [v7 candidate];
        v8 = v17;
        v18 = &stru_2A2525CC0;
        if (v17)
        {
          v18 = v17;
        }

        v12 = [v16 stringWithFormat:@"%@%@", v6, v18];
        goto LABEL_7;
      }
    }

    v19 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v22 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v12 = [v21 _surfaceStringWithin:{0, objc_msgSend(v22, "count")}];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_17:

  return v12;
}

- (NSString)inputStringForHiraganaMode
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];

  if (v3)
  {
    v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForAutoCommit];
    v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];
    v6 = [v4 stringByAppendingString:v5];
  }

  else
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  }

  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v9 = [v7 _readingStringWithin:{0, objc_msgSend(v8, "count")}];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2A2525CC0;
  }

  v11 = [(__CFString *)v9 stringByAppendingString:v6];

  return v11;
}

- (NSString)displayStringForSearch
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:294 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja displayStringForSearch]"}];

  return 0;
}

- (unint64_t)candidateOffset
{
  v3 = MEMORY[0x29EDC7250];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v10 = 0;
  [v3 splitSegments:v4 at:2 forPrefix:&v10 forSuffix:0];
  v5 = v10;

  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  v7 = [v6 length];
  v8 = [v5 length];

  if (v8 + v7)
  {
    return v8 + v7;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setInput:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:MEMORY[0x29EDB8E90]];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManager_mul *)&v5 setInput:v4];
}

- (id)markedText
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self searchStringForMarkedText];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self candidateOffset];
  v8 = [MEMORY[0x29EDB8DE8] array];
  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self lastInputString];
  v10 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];

  if (!v10)
  {
    v16 = [MEMORY[0x29EDBA168] valueWithRange:{0, objc_msgSend(v4, "length")}];
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    [v8 addObject:v16];

    goto LABEL_11;
  }

  v11 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
  v12 = [v11 candidate];
  v13 = [v12 length];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x29EDBA168] valueWithRange:{0, v7}];
    [v8 addObject:v14];
  }

  if (v13 < 1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [v8 count];
  }

  v17 = MEMORY[0x29EDBA168];
  [v4 length];
  v18 = [v17 valueWithRange:?];
  [v8 addObject:v18];

  if (v13 >= 1)
  {
    v16 = [MEMORY[0x29EDBA168] valueWithRange:{objc_msgSend(v4, "length") - v13, v13}];
    goto LABEL_10;
  }

LABEL_11:
  v19 = MEMORY[0x29EDC70A0];
  v20 = [v8 copy];
  v21 = [v19 intermediateTextWithInputString:v3 displayString:v4 selectionLocation:v5 searchString:v6 candidateOffset:v7 liveConversionSegments:v20 highlightSegmentIndex:v15 lastInputString:v9];

  return v21;
}

- (id)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v2 = [(TIKeyboardInputManagerLiveConversion_ja *)&v4 inputString];

  return v2;
}

- (id)rawInputStringForAutoCommit
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v4 = [v3 count];

  if (v4 >= 3)
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v5 = [v6 _readingStringWithin:{0, objc_msgSend(v7, "count") - 2}];
  }

  else
  {
    v5 = &stru_2A2525CC0;
  }

  return v5;
}

- (NSString)rawInputStringForPrediction
{
  v2 = MEMORY[0x29EDC7250];
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v7 = 0;
  [v2 splitSegments:v3 at:2 forPrefix:0 forSuffix:&v7];
  v4 = v7;
  v5 = v7;

  return v4;
}

- (void)clearInput
{
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setCurrentCandidate:0];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setCurrentDictionaryReading:0];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:0];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setSegmentIndex:0x7FFFFFFFFFFFFFFFLL];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setRemainingCandidate:0];
  v3 = [MEMORY[0x29EDB8D80] array];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:v3];

  v4 = [MEMORY[0x29EDB8D80] array];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v4];

  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self timer];
  [v5 invalidate];

  [(TIKeyboardInputManagerLiveConversion_ja *)self setTimer:0];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerMecabra *)&v6 clearInput];
}

- (BOOL)shouldClearInputOnMarkedTextOutOfSync
{
  v3 = +[TIWordSearchKana sharedOperationQueue];
  if ([v3 operationCount])
  {
    isKindOfClass = 0;
  }

  else
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)inSearchField
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  v4 = [v3 textInputTraits];
  if ([v4 returnKeyType] == 6)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
    v7 = [v6 textInputTraits];
    if ([v7 keyboardType] == 10)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
      v9 = [v8 textInputTraits];
      v5 = [v9 keyboardType] == 18;
    }
  }

  return v5;
}

- (BOOL)conversionEnabled
{
  if (![(TIKeyboardInputManagerLiveConversion_ja *)self inSearchField])
  {
    return 1;
  }

  v2 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:*MEMORY[0x29EDC7100]];

  return v3;
}

- (BOOL)shouldCommitHeadSegment
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v4 = [v3 count];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v6 = ([v5 count] + v4) >= 5 && -[TIKeyboardInputManagerLiveConversion_ja conversionEnabled](self, "conversionEnabled");

  return v6;
}

- (BOOL)shouldCancelLiveConversionOnBackspace
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v4 = [v3 count];

  if (v4 < 2)
  {
    return 1;
  }

  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v6 = [v5 objectAtIndexedSubscript:v4 - 1];
  v7 = [v6 surface];
  v8 = [v7 length] != 1;

  return v8;
}

- (void)invokeEditMode
{
  v3 = [TIKeyboardInputManager_ja_Edit alloc];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self config];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  objc_opt_class();
  v7 = [(TIKeyboardInputManager_ja_Edit *)v3 initWithConfig:v8 keyboardState:v4 segments:v5 wordSearch:v6 romajiMode:objc_opt_isKindOfClass() & 1 conversionEnabled:[(TIKeyboardInputManagerLiveConversion_ja *)self conversionEnabled]];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v7];
}

- (_NSRange)analysisStringRange
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)&v8 inputIndex];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v4 = [v5 length];
  }

  v6 = 0;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManagerLiveConversion_ja validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    [TIKeyboardInputManagerLiveConversion_ja validCharacterSetForAutocorrection];
  }

  v3 = [TIKeyboardInputManagerLiveConversion_ja validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v3 inputLocationChanged];
}

- (void)_deleteFromInput
{
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)&v4 deleteFromInput:0];
}

- (void)deleteFromInputWithContext:(id)a3
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerMecabra *)&v3 deleteFromInputWithContext:a3];
}

- (void)selectPartialCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
  v6 = [v4 input];

  v16 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

  v7 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
  v10 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v15) = 1;
  LOWORD(v15) = 0;
  LOBYTE(v14) = 1;
  v11 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v7 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:v8 contextString:v16 segmentBreakIndex:0 predictionEnabled:v9 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v14 action:0 geometryModelData:self flickUsed:sel__selectPartialCandidate_forOperation_ phraseBoundarySet:v10 hardwareKeyboardMode:v15 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v11 setReferenceMode:1];
  [(TIWordSearchJapaneseOperationGetCandidates *)v11 setSinglePhrase:1];
  v12 = [(TIWordSearchJapaneseOperationGetCandidates *)v11 results];

  if (v12)
  {
    v13 = [(TIWordSearchJapaneseOperationGetCandidates *)v11 results];
    [(TIKeyboardInputManagerLiveConversion_ja *)self _selectPartialCandidate:v13 forOperation:v11];
  }

  else
  {
    v13 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
    [v13 performOperationAsync:v11];
  }
}

- (void)_selectPartialCandidate:(id)a3 forOperation:(id)a4
{
  v5 = [a3 candidates];
  obj = [v5 firstObject];

  if (obj)
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v7 = [v6 count];

    if (v7 < 3)
    {
      v11 = [MEMORY[0x29EDB8DE8] array];
    }

    else
    {
      v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
      v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
      v10 = [v8 subarrayWithRange:{0, objc_msgSend(v9, "count") - 2}];
      v11 = [v10 mutableCopy];
    }

    v12 = objc_alloc_init(MEMORY[0x29EDC7250]);
    v13 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    v14 = [v13 input];
    [v12 setReading:v14];

    v15 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    v16 = [v15 label];
    [v12 setSurface:v16];

    [v11 addObject:v12];
    v17 = objc_alloc_init(MEMORY[0x29EDC7250]);
    v18 = [obj input];
    [v17 setReading:v18];

    v19 = [obj candidate];
    [v17 setSurface:v19];

    [v11 addObject:v17];
    v20 = [v11 copy];
    segments = self->_segments;
    self->_segments = v20;

    objc_storeStrong(&self->_remainingCandidate, obj);
    if (self->_syncKeyboardStateHandler)
    {
      v22 = [(TIKeyboardInputManagerLiveConversion_ja *)self syncKeyboardStateHandler];
      v23 = [(TIKeyboardInputManagerMecabra *)self keyboardConfiguration];
      (v22)[2](v22, v23);

      syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
      self->_syncKeyboardStateHandler = 0;
    }
  }
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManagerLiveConversion_ja *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    if ([v4 length])
    {
      v3 = [MEMORY[0x29EDC7080] dummySet];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self timer];
  [v5 invalidate];

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v10 openCandidateGenerationContextWithCandidateHandler:v4];

  if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]!= 1)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __94__TIKeyboardInputManagerLiveConversion_ja_openCandidateGenerationContextWithCandidateHandler___block_invoke;
    v9[3] = &unk_29F3790D8;
    v9[4] = self;
    v6 = MEMORY[0x29EDA3C60](v9);
    if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]== 2 || [(TIKeyboardInputManagerLiveConversion_ja *)self transliterationType]|| [(TIKeyboardInputManagerLiveConversion_ja *)self autoSelectFirstCandidate])
    {
      v6[2](v6, 0);
    }

    else
    {
      v7 = MEMORY[0x29EDB8E68];
      [(TIKeyboardInputManagerLiveConversion_ja *)self predictionThreshold];
      v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
      [(TIKeyboardInputManagerLiveConversion_ja *)self setTimer:v8];
    }
  }
}

- (void)pushCandidateGenerationContextWithResults:(id)a3
{
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v4];

  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self markedText];
  [v5 setUncommittedText:v6];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v7 pushCandidateGenerationContextWithResults:v5];
}

- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)&v6 candidateResultSetFromCandidates:MEMORY[0x29EDB8E90] proactiveTriggers:a4];

  return v4;
}

- (BOOL)makeCandidatesWithWordSearch:(id)a3
{
  v4 = a3;
  v5 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
  v8 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v15) = 1;
  LOWORD(v15) = 0;
  LOBYTE(v14) = 1;
  v9 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v5 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:v6 contextString:v4 segmentBreakIndex:0 predictionEnabled:v7 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v14 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:v8 hardwareKeyboardMode:v15 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v9 setAllowIncompleteRomaji:1];
  [(TIWordSearchJapaneseOperationGetCandidates *)v9 setReferenceMode:1];
  v10 = [(TIWordSearchJapaneseOperationGetCandidates *)v9 results];

  if (!v10)
  {
    v11 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
    [v11 performOperationAsync:v9];

    [(TIWordSearchJapaneseOperationGetCandidates *)v9 waitUntilFinished];
  }

  v12 = [(TIWordSearchJapaneseOperationGetCandidates *)v9 results];
  [(TIKeyboardInputManagerLiveConversion_ja *)self _notifyUpdateCandidates:v12 forOperation:v9];

  return 0;
}

- (void)_cancelCandidatesThread
{
  v2 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  [v2 cancel];
}

- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v10 = a3;
  if (-[TIKeyboardInputManagerLiveConversion_ja shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") || ([v10 candidates], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, !v6))
  {
    v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v8 cancelComposition];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v10];
    v7 = [v10 candidates];
    v8 = [v7 firstObject];

    [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:v8];
    v9 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:v8 phraseBoundary:1];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:v9];

    [(TIKeyboardInputManagerLiveConversion_ja *)self setMarkedText];
  }
}

- (void)startPrediction
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x29EDC7250];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v18 = 0;
    v19 = 0;
    [v5 splitSegments:v6 at:2 forPrefix:&v19 forSuffix:&v18];
    v7 = v19;
    v8 = v18;

    v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [v11 setAutoSelectFirstCandidate:{-[TIKeyboardInputManagerLiveConversion_ja autoSelectFirstCandidate](self, "autoSelectFirstCandidate")}];
      [v11 setAutoSelectTransliterateCandidate:{-[TIKeyboardInputManagerLiveConversion_ja transliterationType](self, "transliterationType")}];
      [v11 setShowsPartialCandidate:{-[TIKeyboardInputManagerLiveConversion_ja inSearchField](self, "inSearchField")}];
      v12 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      v13 = v12;
      if (v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = &stru_2A2525CC0;
      }

      v15 = [v12 stringByAppendingString:v14];
      v16 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
      v17 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      [v11 makeCandidatesWithInputString:v8 autoCommitString:v15 contextString:v16 predictionEnabled:1 reanalysisMode:0 singlePhrase:0 geometoryModelData:v17];
    }
  }
}

- (id)didAcceptCandidate:(id)a3
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
  v6 = [v5 length];
  v7 = [v4 input];
  if (v6 <= [v7 length])
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315394;
    v27 = "[TIKeyboardInputManagerLiveConversion_ja didAcceptCandidate:]";
    v28 = 1024;
    v29 = v8 & 1;
    _os_log_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  candidate is partial: %d", &v26, 0x12u);
  }

  v9 = [v4 candidate];
  if ([v9 length])
  {
    v10 = [(TIKeyboardInputManagerLiveConversion_ja *)self isTypologyEnabled];

    if (v10)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:v4 partial:v8 & 1];
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v8 & 1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      v14 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v13];

      v15 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
      [v15 performAccept:v14 isPartial:0];
    }
  }

  if ((v8 & 1) != 0 || ([(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
    v17 = [v4 input];
    v18 = [v17 length];
    v19 = [v5 length];

    if (v18 < v19)
    {
      v20 = [v4 input];
      v21 = [v5 substringFromIndex:{objc_msgSend(v20, "length")}];
      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v21];
    }

    v22 = &stru_2A2525CC0;
  }

  else
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    v25 = [MEMORY[0x29EDB8D80] array];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v25];

    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    v22 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManagerLiveConversion_ja;
  if ([(TIKeyboardInputManagerMecabra *)&v20 syncToKeyboardState:v6 completionHandler:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 currentCandidate];
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
    v11 = [v10 length];
    v12 = [v9 input];
    v13 = [v12 length];

    if (v11 <= v13)
    {
      goto LABEL_7;
    }

    v14 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = MEMORY[0x29EDA3C60](v7);
      syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
      self->_syncKeyboardStateHandler = v16;

      v19.receiver = self;
      v19.super_class = TIKeyboardInputManagerLiveConversion_ja;
      [(TIKeyboardInputManagerBase *)&v19 syncToKeyboardState:v6];
      v8 = 1;
    }

    else
    {
LABEL_7:
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)committedSurface
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v5 = [v3 _surfaceStringWithin:{0, objc_msgSend(v4, "count")}];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2A2525CC0;
  }

  v8 = v7;

  return &v7->isa;
}

- (void)commitCurrentCandidate:(BOOL)a3
{
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
  if (v5)
  {
    v33 = v5;
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    if (v6)
    {
      v7 = v6;
      v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        return;
      }

      v11 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v33 = [v11 mutableCopy];

      v12 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      v13 = [v12 candidate];
      v14 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      v15 = [v13 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(v14, "length"), &stru_2A2525CC0}];

      v16 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];

      v17 = objc_alloc_init(MEMORY[0x29EDC7250]);
      [v17 setSurface:v15];
      if (v16)
      {
        v18 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        v19 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        v20 = [v19 length];
        v21 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        v22 = [v21 input];
        v23 = [v18 substringToIndex:{v20 - objc_msgSend(v22, "length")}];
        [v17 setReading:v23];

        [v33 addObject:v17];
        v24 = objc_alloc_init(MEMORY[0x29EDC7250]);
        v25 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        v26 = [v25 candidate];
        [v24 setSurface:v26];

        v27 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        v28 = [v27 input];
        [v24 setReading:v28];

        [v33 addObject:v24];
      }

      else
      {
        v29 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];

        if (!v29 || a3)
        {
          v30 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
          [v17 setReading:v30];
        }

        else
        {
          v30 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForAutoCommit];
          v31 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];
          v32 = [v30 stringByAppendingString:v31];
          [v17 setReading:v32];
        }

        [v33 addObject:v17];
      }

      [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
      [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v33];
    }
  }
}

- (void)addInlineCandidateIfNeeded:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDC7088];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v8 = [v5 candidateWithCandidate:v6 forInput:v7];
  [v4 setDefaultCandidate:v8];

  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v10 = [v4 sortMethodGroups];
  v11 = [v10 objectForKeyedSubscript:@"UI-Sort-Common"];
  v12 = [v11 firstObject];

  if (v12)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = [v12 candidates];
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __70__TIKeyboardInputManagerLiveConversion_ja_addInlineCandidateIfNeeded___block_invoke;
    v20[3] = &unk_29F379100;
    v21 = v9;
    v22 = &v24;
    v23 = &v28;
    [v13 enumerateObjectsUsingBlock:v20];

    if (v25[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v4 candidates];
      v15 = [v14 objectAtIndexedSubscript:v25[3]];

      [v15 setInlineCandidate:1];
      v16 = v25[3];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL && v16 > v29[3])
      {
        v17 = [v12 candidates];
        v18 = [v17 mutableCopy];

        [v18 exchangeObjectAtIndex:v25[3] withObjectAtIndex:v29[3]];
        v19 = [v18 copy];
        [v12 setCandidates:v19];
      }
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }
}

- (BOOL)shouldShowPredictionCandidate:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]== 2)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 candidates];
    v5 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 isTransliterationCandidate] & 1) == 0)
          {
            v11 = [v10 isPartialCandidate];
            if ((v11 & 1) != 0 || ([v10 candidate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", v6), v12, !v13))
            {
              LOBYTE(v5) = v11 ^ 1;
              goto LABEL_15;
            }
          }
        }

        v5 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

- (double)predictionThreshold
{
  predictionThreshold = self->_predictionThreshold;
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self hiraganaStringFor:v4];

  if ([v5 length] < 4)
  {
    predictionThreshold = predictionThreshold + predictionThreshold;
  }

  return predictionThreshold;
}

- (NSArray)segmentsForPicker
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)segmentAdjustInputManager:(unint64_t)a3
{
  v5 = [MEMORY[0x29EDB9F28] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:983 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja segmentAdjustInputManager:]"}];

  return 0;
}

- (id)rawInputStringFrom:(id)a3
{
  v5 = [MEMORY[0x29EDB9F28] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:988 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja rawInputStringFrom:]"}];

  return 0;
}

- (id)hiraganaStringFor:(id)a3
{
  v5 = [MEMORY[0x29EDB9F28] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:994 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja hiraganaStringFor:]"}];

  return 0;
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    -[TIKeyboardInputManagerLiveConversion_ja setSegmentIndex:](self, "setSegmentIndex:", [v5 index]);
    v6 = [v5 segments];
    v7 = [v6 copy];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v7];

    segments = self->_segments;
    self->_segments = 0;
  }

  v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    -[TIKeyboardInputManagerLiveConversion_ja setSegmentIndex:](self, "setSegmentIndex:", [v11 index]);
    v12 = [v11 segments];
    v13 = [v12 copy];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v13];

    v14 = self->_segments;
    self->_segments = 0;
  }

  v15 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    v18 = [v17 rawInputString];
    v25.receiver = self;
    v25.super_class = TIKeyboardInputManagerLiveConversion_ja;
    [(TIKeyboardInputManager_mul *)&v25 setInput:v18];

    v19 = [v17 segments];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v19];

    v20 = [v17 inlineCandidate];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:v20];

    v21 = [v17 inlineCandidate];
    v22 = [v17 segmentsFromCandidate:v21 phraseBoundary:1];
    v23 = self->_segments;
    self->_segments = v22;

    [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:2];
  }

  v24.receiver = self;
  v24.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerMecabra *)&v24 commitComposition];
}

- (void)handleKeyboardInput:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s handleKeyboardInput", "-[TIKeyboardInputManagerLiveConversion_ja handleKeyboardInput:]"];
  *buf = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29EA26000, a1, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v3 = *MEMORY[0x29EDCA608];
}

@end