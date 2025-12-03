@interface TIKeyboardInputManagerLiveConversion_ja
- (BOOL)conversionEnabled;
- (BOOL)inSearchField;
- (BOOL)makeCandidatesWithWordSearch:(id)search;
- (BOOL)shouldCancelLiveConversionOnBackspace;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)shouldCommitHeadSegment;
- (BOOL)shouldShowPredictionCandidate:(id)candidate;
- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (BOOL)usesCandidateSelection;
- (NSArray)segmentsForPicker;
- (NSString)committedSurface;
- (NSString)displayStringForSearch;
- (NSString)inputStringForHiraganaMode;
- (NSString)rawInputStringForPrediction;
- (TIKeyboardInputManagerLiveConversion_ja)initWithConfig:(id)config keyboardState:(id)state;
- (_NSRange)analysisStringRange;
- (double)predictionThreshold;
- (id)candidateResultSet;
- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleKeyboardInput:(id)input;
- (id)hiraganaStringFor:(id)for;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (id)rawInputStringForAutoCommit;
- (id)rawInputStringFrom:(id)from;
- (id)segmentAdjustInputManager:(unint64_t)manager;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)candidateOffset;
- (unsigned)inputCount;
- (void)_cancelCandidatesThread;
- (void)_deleteFromInput;
- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)_selectPartialCandidate:(id)candidate forOperation:(id)operation;
- (void)addInlineCandidateIfNeeded:(id)needed;
- (void)clearInput;
- (void)commitComposition;
- (void)commitCurrentCandidate:(BOOL)candidate;
- (void)deleteFromInputWithContext:(id)context;
- (void)initImplementation;
- (void)inputLocationChanged;
- (void)invokeEditMode;
- (void)loadDictionaries;
- (void)loadFavoniusTypingModel;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)preferencesDidChange:(id)change;
- (void)pushCandidateGenerationContextWithResults:(id)results;
- (void)selectPartialCandidate:(id)candidate;
- (void)setInput:(id)input;
- (void)startPrediction;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja

- (TIKeyboardInputManagerLiveConversion_ja)initWithConfig:(id)config keyboardState:(id)state
{
  v16.receiver = self;
  v16.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v16 initWithConfig:config keyboardState:state];
  v5 = v4;
  if (v4)
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)v4 setSegmentIndex:0x7FFFFFFFFFFFFFFFLL];
    array = [MEMORY[0x29EDB8D80] array];
    [(TIKeyboardInputManagerLiveConversion_ja *)v5 setCommittedSegments:array];

    v7 = objc_alloc_init(MEMORY[0x29EDC70F0]);
    smartPunctuationController = v5->_smartPunctuationController;
    v5->_smartPunctuationController = v7;

    smartPunctuationController = [(TIKeyboardInputManagerLiveConversion_ja *)v5 smartPunctuationController];
    [smartPunctuationController setAutoQuoteType:1];

    smartPunctuationController2 = [(TIKeyboardInputManagerLiveConversion_ja *)v5 smartPunctuationController];
    [smartPunctuationController2 setSmartDashesEnabled:0];

    mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
    v12 = [mEMORY[0x29EDC70E8] valueForPreferenceKey:*MEMORY[0x29EDC7118]];
    [v12 floatValue];
    v5->_predictionThreshold = v13;

    [(TIKeyboardInputManagerLiveConversion_ja *)v5 setCandidateBehavior:[(TIKeyboardInputManagerLiveConversion_ja *)v5 preferCandidateBehavior]];
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_preferencesDidChange_ name:*MEMORY[0x29EDC7120] object:0];

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
  mEMORY[0x29EDC7280] = [MEMORY[0x29EDC7280] sharedWordSearchController];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  v5 = [mEMORY[0x29EDC7280] wordSearchForInputMode:inputMode];
  wordSearch = self->_wordSearch;
  self->_wordSearch = v5;

  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  [wordSearch setInsertKatakanaAtIndex:4];
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
  keyboardState = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  suppressingCandidateSelection = [keyboardState suppressingCandidateSelection];

  return suppressingCandidateSelection ^ 1;
}

- (void)preferencesDidChange:(id)change
{
  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v5 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*MEMORY[0x29EDC7130]];
  smartPunctuationController = [(TIKeyboardInputManagerLiveConversion_ja *)self smartPunctuationController];
  [smartPunctuationController setSmartQuotesEnabled:v5];

  mEMORY[0x29EDC70E8]2 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v7 = [mEMORY[0x29EDC70E8]2 BOOLForPreferenceKey:*MEMORY[0x29EDC7128]];
  smartPunctuationController2 = [(TIKeyboardInputManagerLiveConversion_ja *)self smartPunctuationController];
  [smartPunctuationController2 setSmartDashesEnabled:v7];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7048]);

  return v2;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if (TICanLogMessageAtLevel())
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_ja handleKeyboardInput:v5];
    }
  }

  acceptedCandidate = [inputCopy acceptedCandidate];
  if (acceptedCandidate)
  {
    v7 = acceptedCandidate;
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (composingKeyboardInputManager)
    {
      goto LABEL_12;
    }
  }

  if (([inputCopy isExpandSegment] & 1) != 0 || objc_msgSend(inputCopy, "isShrinkSegment"))
  {
    isExpandSegment = [inputCopy isExpandSegment];
    if ((isExpandSegment & 1) != 0 || [inputCopy isShrinkSegment])
    {
      [(TIKeyboardInputManagerLiveConversion_ja *)self _adjustPhraseBoundaryInForwardDirection:isExpandSegment granularity:1];
    }

    goto LABEL_12;
  }

  string = [inputCopy string];
  if ([string isEqualToString:@"\n"])
  {

LABEL_19:
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v16 = [rawInputString length];

    rawInputString2 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];

    if (committedSurface)
    {
      committedSurface2 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      [rawInputString2 insertText:committedSurface2];
    }

    topCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    candidate = [topCandidate candidate];

    if (candidate)
    {
      topCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      candidate2 = [topCandidate2 candidate];
      [rawInputString2 insertText:candidate2];
    }

    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    if (v16)
    {
      v24 = rawInputString2;
    }

    else
    {
      v24 = 0;
    }

    v10 = v24;
LABEL_27:

    goto LABEL_13;
  }

  string2 = [inputCopy string];
  v14 = [string2 isEqualToString:@"\r"];

  if (v14)
  {
    goto LABEL_19;
  }

  string3 = [inputCopy string];
  if ([string3 isEqualToString:@" "])
  {

    goto LABEL_31;
  }

  string4 = [inputCopy string];
  v27 = [string4 isEqualToString:@"　"];

  if (!v27)
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:[(TIKeyboardInputManagerLiveConversion_ja *)self preferCandidateBehavior]];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setAutoSelectFirstCandidate:0];
    string5 = [inputCopy string];
    v30 = [string5 isEqualToString:@"\x1B"];

    if (([inputCopy isBackspace] & 1) == 0 && !v30)
    {
      goto LABEL_35;
    }

    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v10 = [composingKeyboardInputManager2 handleKeyboardInput:inputCopy];

    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!composingKeyboardInputManager3)
    {
      if (v30)
      {
        currentCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
        [(TIKeyboardInputManagerLiveConversion_ja *)self commitCurrentCandidate:currentCandidate != 0];
      }

      else
      {
        [(TIKeyboardInputManagerLiveConversion_ja *)self commitCurrentCandidate:0];
      }

      if (![inputCopy isBackspace] || -[TIKeyboardInputManagerLiveConversion_ja shouldCancelLiveConversionOnBackspace](self, "shouldCancelLiveConversionOnBackspace"))
      {
        segmentsForPicker = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
        v39 = [segmentsForPicker count];

        if (v39)
        {
          [(TIKeyboardInputManagerLiveConversion_ja *)self invokeEditMode];
          composingKeyboardInputManager4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
          v41 = [composingKeyboardInputManager4 handleKeyboardInput:inputCopy];

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
        -[TIKeyboardInputManagerLiveConversion_ja setTransliterationType:](self, "setTransliterationType:", [inputCopy transliterationType]);
        if ([inputCopy transliterationType])
        {
          [(TIKeyboardInputManagerLiveConversion_ja *)self setCandidateBehavior:2];
          [(TIKeyboardInputManagerLiveConversion_ja *)self setAutoSelectFirstCandidate:1];
          composingKeyboardInputManager5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
          v32 = [composingKeyboardInputManager5 handleKeyboardInput:inputCopy];
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
        v10 = [(TIKeyboardInputManagerMecabra *)&v43 handleKeyboardInput:inputCopy];
        rawInputString2 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:rawInputString2];
        goto LABEL_27;
      }

      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }

    goto LABEL_13;
  }

LABEL_31:
  composingKeyboardInputManager6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v10 = [composingKeyboardInputManager6 handleKeyboardInput:inputCopy];

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
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (id)inputString
{
  if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]== 1 && ![(TIKeyboardInputManagerLiveConversion_ja *)self conversionEnabled])
  {
    displayStringForSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self displayStringForSearch];
  }

  else
  {
    currentCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    candidate = [currentCandidate candidate];

    if (candidate)
    {
      v5 = MEMORY[0x29EDBA0F8];
      currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      candidate2 = [currentCandidate2 candidate];
      remainingCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
      candidate3 = [remainingCandidate candidate];
      v10 = candidate3;
      v11 = &stru_2A2525CC0;
      if (candidate3)
      {
        v11 = candidate3;
      }

      displayStringForSearch = [v5 stringWithFormat:@"%@%@", candidate2, v11];

LABEL_7:
      goto LABEL_17;
    }

    committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
    if (committedSurface)
    {
      v14 = committedSurface;
      topCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];

      if (topCandidate)
      {
        v16 = MEMORY[0x29EDBA0F8];
        currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
        candidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
        v7Candidate = [candidate2 candidate];
        remainingCandidate = v7Candidate;
        v18 = &stru_2A2525CC0;
        if (v7Candidate)
        {
          v18 = v7Candidate;
        }

        displayStringForSearch = [v16 stringWithFormat:@"%@%@", currentCandidate2, v18];
        goto LABEL_7;
      }
    }

    committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
    v20 = [committedSegments count];

    if (v20)
    {
      committedSegments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      committedSegments3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      displayStringForSearch = [committedSegments2 _surfaceStringWithin:{0, objc_msgSend(committedSegments3, "count")}];
    }

    else
    {
      displayStringForSearch = 0;
    }
  }

LABEL_17:

  return displayStringForSearch;
}

- (NSString)inputStringForHiraganaMode
{
  currentDictionaryReading = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];

  if (currentDictionaryReading)
  {
    rawInputStringForAutoCommit = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForAutoCommit];
    currentDictionaryReading2 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];
    rawInputString = [rawInputStringForAutoCommit stringByAppendingString:currentDictionaryReading2];
  }

  else
  {
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  }

  committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  committedSegments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v9 = [committedSegments _readingStringWithin:{0, objc_msgSend(committedSegments2, "count")}];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2A2525CC0;
  }

  v11 = [(__CFString *)v9 stringByAppendingString:rawInputString];

  return v11;
}

- (NSString)displayStringForSearch
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:294 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja displayStringForSearch]"}];

  return 0;
}

- (unint64_t)candidateOffset
{
  v3 = MEMORY[0x29EDC7250];
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v10 = 0;
  [v3 splitSegments:segments at:2 forPrefix:&v10 forSuffix:0];
  v5 = v10;

  committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  v7 = [committedSurface length];
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

- (void)setInput:(id)input
{
  inputCopy = input;
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:MEMORY[0x29EDB8E90]];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManager_mul *)&v5 setInput:inputCopy];
}

- (id)markedText
{
  rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  inputIndex = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
  searchStringForMarkedText = [(TIKeyboardInputManagerLiveConversion_ja *)self searchStringForMarkedText];
  candidateOffset = [(TIKeyboardInputManagerLiveConversion_ja *)self candidateOffset];
  array = [MEMORY[0x29EDB8DE8] array];
  lastInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self lastInputString];
  currentCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];

  if (!currentCandidate)
  {
    v16 = [MEMORY[0x29EDBA168] valueWithRange:{0, objc_msgSend(inputString, "length")}];
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    [array addObject:v16];

    goto LABEL_11;
  }

  remainingCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
  candidate = [remainingCandidate candidate];
  v13 = [candidate length];

  if (candidateOffset != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x29EDBA168] valueWithRange:{0, candidateOffset}];
    [array addObject:v14];
  }

  if (v13 < 1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [array count];
  }

  v17 = MEMORY[0x29EDBA168];
  [inputString length];
  v18 = [v17 valueWithRange:?];
  [array addObject:v18];

  if (v13 >= 1)
  {
    v16 = [MEMORY[0x29EDBA168] valueWithRange:{objc_msgSend(inputString, "length") - v13, v13}];
    goto LABEL_10;
  }

LABEL_11:
  v19 = MEMORY[0x29EDC70A0];
  v20 = [array copy];
  v21 = [v19 intermediateTextWithInputString:rawInputString displayString:inputString selectionLocation:inputIndex searchString:searchStringForMarkedText candidateOffset:candidateOffset liveConversionSegments:v20 highlightSegmentIndex:v15 lastInputString:lastInputString];

  return v21;
}

- (id)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja;
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)&v4 inputString];

  return inputString;
}

- (id)rawInputStringForAutoCommit
{
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v4 = [segments count];

  if (v4 >= 3)
  {
    segments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    segments3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v5 = [segments2 _readingStringWithin:{0, objc_msgSend(segments3, "count") - 2}];
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
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v7 = 0;
  [v2 splitSegments:segments at:2 forPrefix:0 forSuffix:&v7];
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
  array = [MEMORY[0x29EDB8D80] array];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:array];

  array2 = [MEMORY[0x29EDB8D80] array];
  [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:array2];

  timer = [(TIKeyboardInputManagerLiveConversion_ja *)self timer];
  [timer invalidate];

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
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)inSearchField
{
  keyboardState = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  if ([textInputTraits returnKeyType] == 6)
  {
    v5 = 1;
  }

  else
  {
    keyboardState2 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
    textInputTraits2 = [keyboardState2 textInputTraits];
    if ([textInputTraits2 keyboardType] == 10)
    {
      v5 = 1;
    }

    else
    {
      keyboardState3 = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
      textInputTraits3 = [keyboardState3 textInputTraits];
      v5 = [textInputTraits3 keyboardType] == 18;
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

  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v3 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*MEMORY[0x29EDC7100]];

  return v3;
}

- (BOOL)shouldCommitHeadSegment
{
  committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v4 = [committedSegments count];
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v6 = ([segments count] + v4) >= 5 && -[TIKeyboardInputManagerLiveConversion_ja conversionEnabled](self, "conversionEnabled");

  return v6;
}

- (BOOL)shouldCancelLiveConversionOnBackspace
{
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v4 = [segments count];

  if (v4 < 2)
  {
    return 1;
  }

  segments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v6 = [segments2 objectAtIndexedSubscript:v4 - 1];
  surface = [v6 surface];
  v8 = [surface length] != 1;

  return v8;
}

- (void)invokeEditMode
{
  v3 = [TIKeyboardInputManager_ja_Edit alloc];
  config = [(TIKeyboardInputManagerLiveConversion_ja *)self config];
  keyboardState = [(TIKeyboardInputManagerLiveConversion_ja *)self keyboardState];
  segmentsForPicker = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  objc_opt_class();
  v7 = [(TIKeyboardInputManager_ja_Edit *)v3 initWithConfig:config keyboardState:keyboardState segments:segmentsForPicker wordSearch:wordSearch romajiMode:objc_opt_isKindOfClass() & 1 conversionEnabled:[(TIKeyboardInputManagerLiveConversion_ja *)self conversionEnabled]];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v7];
}

- (_NSRange)analysisStringRange
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerLiveConversion_ja;
  inputIndex = [(TIKeyboardInputManagerLiveConversion_ja *)&v8 inputIndex];
  if (inputIndex)
  {
    v4 = inputIndex;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v4 = [rawInputString length];
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

- (void)deleteFromInputWithContext:(id)context
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerMecabra *)&v3 deleteFromInputWithContext:context];
}

- (void)selectPartialCandidate:(id)candidate
{
  candidateCopy = candidate;
  rawInputStringForPrediction = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
  input = [candidateCopy input];

  v16 = [rawInputStringForPrediction substringFromIndex:{objc_msgSend(input, "length")}];

  v7 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
  geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v15) = 1;
  LOWORD(v15) = 0;
  LOBYTE(v14) = 1;
  v11 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v7 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:v16 segmentBreakIndex:0 predictionEnabled:v9 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v14 action:0 geometryModelData:self flickUsed:sel__selectPartialCandidate_forOperation_ phraseBoundarySet:geometryModelData hardwareKeyboardMode:v15 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v11 setReferenceMode:1];
  [(TIWordSearchJapaneseOperationGetCandidates *)v11 setSinglePhrase:1];
  results = [(TIWordSearchJapaneseOperationGetCandidates *)v11 results];

  if (results)
  {
    results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v11 results];
    [(TIKeyboardInputManagerLiveConversion_ja *)self _selectPartialCandidate:results2 forOperation:v11];
  }

  else
  {
    results2 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
    [results2 performOperationAsync:v11];
  }
}

- (void)_selectPartialCandidate:(id)candidate forOperation:(id)operation
{
  candidates = [candidate candidates];
  obj = [candidates firstObject];

  if (obj)
  {
    segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v7 = [segments count];

    if (v7 < 3)
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }

    else
    {
      segments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
      segments3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
      v10 = [segments2 subarrayWithRange:{0, objc_msgSend(segments3, "count") - 2}];
      array = [v10 mutableCopy];
    }

    v12 = objc_alloc_init(MEMORY[0x29EDC7250]);
    currentCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    input = [currentCandidate input];
    [v12 setReading:input];

    currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
    label = [currentCandidate2 label];
    [v12 setSurface:label];

    [array addObject:v12];
    v17 = objc_alloc_init(MEMORY[0x29EDC7250]);
    input2 = [obj input];
    [v17 setReading:input2];

    candidate = [obj candidate];
    [v17 setSurface:candidate];

    [array addObject:v17];
    v20 = [array copy];
    segments = self->_segments;
    self->_segments = v20;

    objc_storeStrong(&self->_remainingCandidate, obj);
    if (self->_syncKeyboardStateHandler)
    {
      syncKeyboardStateHandler = [(TIKeyboardInputManagerLiveConversion_ja *)self syncKeyboardStateHandler];
      keyboardConfiguration = [(TIKeyboardInputManagerMecabra *)self keyboardConfiguration];
      (syncKeyboardStateHandler)[2](syncKeyboardStateHandler, keyboardConfiguration);

      syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
      self->_syncKeyboardStateHandler = 0;
    }
  }
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManagerLiveConversion_ja *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    dummySet = 0;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    if ([rawInputString length])
    {
      dummySet = [MEMORY[0x29EDC7080] dummySet];
    }

    else
    {
      dummySet = 0;
    }
  }

  return dummySet;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  timer = [(TIKeyboardInputManagerLiveConversion_ja *)self timer];
  [timer invalidate];

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v10 openCandidateGenerationContextWithCandidateHandler:handlerCopy];

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

- (void)pushCandidateGenerationContextWithResults:(id)results
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet];

  markedText = [(TIKeyboardInputManagerLiveConversion_ja *)self markedText];
  [v5 setUncommittedText:markedText];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerLiveConversion_ja;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v7 pushCandidateGenerationContextWithResults:v5];
}

- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerLiveConversion_ja;
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)&v6 candidateResultSetFromCandidates:MEMORY[0x29EDB8E90] proactiveTriggers:triggers];

  return v4;
}

- (BOOL)makeCandidatesWithWordSearch:(id)search
{
  searchCopy = search;
  v5 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
  geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v15) = 1;
  LOWORD(v15) = 0;
  LOBYTE(v14) = 1;
  v9 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v5 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:searchCopy segmentBreakIndex:0 predictionEnabled:v7 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v14 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:geometryModelData hardwareKeyboardMode:v15 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v9 setAllowIncompleteRomaji:1];
  [(TIWordSearchJapaneseOperationGetCandidates *)v9 setReferenceMode:1];
  results = [(TIWordSearchJapaneseOperationGetCandidates *)v9 results];

  if (!results)
  {
    wordSearch2 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
    [wordSearch2 performOperationAsync:v9];

    [(TIWordSearchJapaneseOperationGetCandidates *)v9 waitUntilFinished];
  }

  results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v9 results];
  [(TIKeyboardInputManagerLiveConversion_ja *)self _notifyUpdateCandidates:results2 forOperation:v9];

  return 0;
}

- (void)_cancelCandidatesThread
{
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  [wordSearch cancel];
}

- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  candidatesCopy = candidates;
  if (-[TIKeyboardInputManagerLiveConversion_ja shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") || ([candidatesCopy candidates], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, !v6))
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager cancelComposition];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidatesCopy];
    candidates = [candidatesCopy candidates];
    composingKeyboardInputManager = [candidates firstObject];

    [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:composingKeyboardInputManager];
    v9 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:composingKeyboardInputManager phraseBoundary:1];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setSegments:v9];

    [(TIKeyboardInputManagerLiveConversion_ja *)self setMarkedText];
  }
}

- (void)startPrediction
{
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  v4 = [inputString length];

  if (v4)
  {
    v5 = MEMORY[0x29EDC7250];
    segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
    v18 = 0;
    v19 = 0;
    [v5 splitSegments:segments at:2 forPrefix:&v19 forSuffix:&v18];
    v7 = v19;
    v8 = v18;

    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [composingKeyboardInputManager2 setAutoSelectFirstCandidate:{-[TIKeyboardInputManagerLiveConversion_ja autoSelectFirstCandidate](self, "autoSelectFirstCandidate")}];
      [composingKeyboardInputManager2 setAutoSelectTransliterateCandidate:{-[TIKeyboardInputManagerLiveConversion_ja transliterationType](self, "transliterationType")}];
      [composingKeyboardInputManager2 setShowsPartialCandidate:{-[TIKeyboardInputManagerLiveConversion_ja inSearchField](self, "inSearchField")}];
      committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      v13 = committedSurface;
      if (v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = &stru_2A2525CC0;
      }

      v15 = [committedSurface stringByAppendingString:v14];
      v16 = [(TIKeyboardInputManagerLiveConversion_ja *)self contextBeforeWithDesiredLength:20];
      geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      [composingKeyboardInputManager2 makeCandidatesWithInputString:v8 autoCommitString:v15 contextString:v16 predictionEnabled:1 reanalysisMode:0 singlePhrase:0 geometoryModelData:geometryDataArray];
    }
  }
}

- (id)didAcceptCandidate:(id)candidate
{
  v30 = *MEMORY[0x29EDCA608];
  candidateCopy = candidate;
  rawInputStringForPrediction = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
  v6 = [rawInputStringForPrediction length];
  input = [candidateCopy input];
  if (v6 <= [input length])
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

  candidate = [candidateCopy candidate];
  if ([candidate length])
  {
    isTypologyEnabled = [(TIKeyboardInputManagerLiveConversion_ja *)self isTypologyEnabled];

    if (isTypologyEnabled)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:candidateCopy partial:v8 & 1];
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:v8 & 1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      topCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      v14 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:topCandidate2];

      wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
      [wordSearch performAccept:v14 isPartial:0];
    }
  }

  if ((v8 & 1) != 0 || ([(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
    input2 = [candidateCopy input];
    v18 = [input2 length];
    v19 = [rawInputStringForPrediction length];

    if (v18 < v19)
    {
      input3 = [candidateCopy input];
      v21 = [rawInputStringForPrediction substringFromIndex:{objc_msgSend(input3, "length")}];
      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v21];
    }

    v22 = &stru_2A2525CC0;
  }

  else
  {
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    array = [MEMORY[0x29EDB8D80] array];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:array];

    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    v22 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManagerLiveConversion_ja;
  if ([(TIKeyboardInputManagerMecabra *)&v20 syncToKeyboardState:stateCopy completionHandler:handlerCopy])
  {
    v8 = 1;
  }

  else
  {
    currentCandidate = [stateCopy currentCandidate];
    if (!currentCandidate)
    {
      goto LABEL_7;
    }

    rawInputStringForPrediction = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForPrediction];
    v11 = [rawInputStringForPrediction length];
    input = [currentCandidate input];
    v13 = [input length];

    if (v11 <= v13)
    {
      goto LABEL_7;
    }

    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = MEMORY[0x29EDA3C60](handlerCopy);
      syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
      self->_syncKeyboardStateHandler = v16;

      v19.receiver = self;
      v19.super_class = TIKeyboardInputManagerLiveConversion_ja;
      [(TIKeyboardInputManagerBase *)&v19 syncToKeyboardState:stateCopy];
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
  committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  committedSegments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  v5 = [committedSegments _surfaceStringWithin:{0, objc_msgSend(committedSegments2, "count")}];
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

- (void)commitCurrentCandidate:(BOOL)candidate
{
  currentCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
  if (currentCandidate)
  {
    v33 = currentCandidate;
    topCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
    if (topCandidate)
    {
      v7 = topCandidate;
      currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      topCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self topCandidate];
      v10 = [currentCandidate2 isEqual:topCandidate2];

      if (v10)
      {
        return;
      }

      committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v33 = [committedSegments mutableCopy];

      currentCandidate3 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentCandidate];
      candidate = [currentCandidate3 candidate];
      committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
      v15 = [candidate stringByReplacingCharactersInRange:0 withString:{objc_msgSend(committedSurface, "length"), &stru_2A2525CC0}];

      remainingCandidate = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];

      v17 = objc_alloc_init(MEMORY[0x29EDC7250]);
      [v17 setSurface:v15];
      if (remainingCandidate)
      {
        rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        rawInputString2 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
        v20 = [rawInputString2 length];
        remainingCandidate2 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        input = [remainingCandidate2 input];
        v23 = [rawInputString substringToIndex:{v20 - objc_msgSend(input, "length")}];
        [v17 setReading:v23];

        [v33 addObject:v17];
        v24 = objc_alloc_init(MEMORY[0x29EDC7250]);
        remainingCandidate3 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        candidate2 = [remainingCandidate3 candidate];
        [v24 setSurface:candidate2];

        remainingCandidate4 = [(TIKeyboardInputManagerLiveConversion_ja *)self remainingCandidate];
        input2 = [remainingCandidate4 input];
        [v24 setReading:input2];

        [v33 addObject:v24];
      }

      else
      {
        currentDictionaryReading = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];

        if (!currentDictionaryReading || candidate)
        {
          rawInputString3 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
          [v17 setReading:rawInputString3];
        }

        else
        {
          rawInputString3 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputStringForAutoCommit];
          currentDictionaryReading2 = [(TIKeyboardInputManagerLiveConversion_ja *)self currentDictionaryReading];
          v32 = [rawInputString3 stringByAppendingString:currentDictionaryReading2];
          [v17 setReading:v32];
        }

        [v33 addObject:v17];
      }

      [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
      [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v33];
    }
  }
}

- (void)addInlineCandidateIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = MEMORY[0x29EDC7088];
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v8 = [v5 candidateWithCandidate:inputString forInput:rawInputString];
  [neededCopy setDefaultCandidate:v8];

  inputString2 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
  sortMethodGroups = [neededCopy sortMethodGroups];
  v11 = [sortMethodGroups objectForKeyedSubscript:@"UI-Sort-Common"];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    candidates = [firstObject candidates];
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __70__TIKeyboardInputManagerLiveConversion_ja_addInlineCandidateIfNeeded___block_invoke;
    v20[3] = &unk_29F379100;
    v21 = inputString2;
    v22 = &v24;
    v23 = &v28;
    [candidates enumerateObjectsUsingBlock:v20];

    if (v25[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      candidates2 = [neededCopy candidates];
      v15 = [candidates2 objectAtIndexedSubscript:v25[3]];

      [v15 setInlineCandidate:1];
      v16 = v25[3];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL && v16 > v29[3])
      {
        candidates3 = [firstObject candidates];
        v18 = [candidates3 mutableCopy];

        [v18 exchangeObjectAtIndex:v25[3] withObjectAtIndex:v29[3]];
        v19 = [v18 copy];
        [firstObject setCandidates:v19];
      }
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }
}

- (BOOL)shouldShowPredictionCandidate:(id)candidate
{
  v21 = *MEMORY[0x29EDCA608];
  candidateCopy = candidate;
  if ([(TIKeyboardInputManagerLiveConversion_ja *)self candidateBehavior]== 2)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    inputString = [(TIKeyboardInputManagerLiveConversion_ja *)self inputString];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    candidates = [candidateCopy candidates];
    v5 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(candidates);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 isTransliterationCandidate] & 1) == 0)
          {
            isPartialCandidate = [v10 isPartialCandidate];
            if ((isPartialCandidate & 1) != 0 || ([v10 candidate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", inputString), v12, !v13))
            {
              LOBYTE(v5) = isPartialCandidate ^ 1;
              goto LABEL_15;
            }
          }
        }

        v5 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self hiraganaStringFor:rawInputString];

  if ([v5 length] < 4)
  {
    predictionThreshold = predictionThreshold + predictionThreshold;
  }

  return predictionThreshold;
}

- (NSArray)segmentsForPicker
{
  committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
  segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
  v5 = [committedSegments arrayByAddingObjectsFromArray:segments];

  return v5;
}

- (id)segmentAdjustInputManager:(unint64_t)manager
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:983 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja segmentAdjustInputManager:]"}];

  return 0;
}

- (id)rawInputStringFrom:(id)from
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:988 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja rawInputStringFrom:]"}];

  return 0;
}

- (id)hiraganaStringFor:(id)for
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TIKeyboardInputManagerLiveConversion_ja.mm" lineNumber:994 description:{@"%s must be overridden in subclass", "-[TIKeyboardInputManagerLiveConversion_ja hiraganaStringFor:]"}];

  return 0;
}

- (void)commitComposition
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    -[TIKeyboardInputManagerLiveConversion_ja setSegmentIndex:](self, "setSegmentIndex:", [composingKeyboardInputManager2 index]);
    segments = [composingKeyboardInputManager2 segments];
    v7 = [segments copy];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v7];

    segments = self->_segments;
    self->_segments = 0;
  }

  composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    composingKeyboardInputManager4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    -[TIKeyboardInputManagerLiveConversion_ja setSegmentIndex:](self, "setSegmentIndex:", [composingKeyboardInputManager4 index]);
    segments2 = [composingKeyboardInputManager4 segments];
    v13 = [segments2 copy];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v13];

    v14 = self->_segments;
    self->_segments = 0;
  }

  composingKeyboardInputManager5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    composingKeyboardInputManager6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManagerLiveConversion_ja *)self clearInput];
    rawInputString = [composingKeyboardInputManager6 rawInputString];
    v25.receiver = self;
    v25.super_class = TIKeyboardInputManagerLiveConversion_ja;
    [(TIKeyboardInputManager_mul *)&v25 setInput:rawInputString];

    segments3 = [composingKeyboardInputManager6 segments];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:segments3];

    inlineCandidate = [composingKeyboardInputManager6 inlineCandidate];
    [(TIKeyboardInputManagerLiveConversion_ja *)self setTopCandidate:inlineCandidate];

    inlineCandidate2 = [composingKeyboardInputManager6 inlineCandidate];
    v22 = [composingKeyboardInputManager6 segmentsFromCandidate:inlineCandidate2 phraseBoundary:1];
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