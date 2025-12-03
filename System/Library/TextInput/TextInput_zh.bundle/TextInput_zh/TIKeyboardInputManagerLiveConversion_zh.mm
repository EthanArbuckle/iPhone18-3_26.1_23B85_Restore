@interface TIKeyboardInputManagerLiveConversion_zh
- (BOOL)_shouldCommitInputDirectly:(id)directly;
- (BOOL)closeCandidateGenerationContextWithResults:(id)results;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)updateCandidatesByWaitingForResults:(BOOL)results;
- (TIKeyboardInputManagerLiveConversion_zh)initWithConfig:(id)config keyboardState:(id)state;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)internalInputString;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInputToInternal:(id)internal;
- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)addInputToInternal:(id)internal;
- (void)clearInput;
- (void)commitComposition;
- (void)initImplementation;
- (void)presentSegmentAdjuster;
- (void)presentSegmentPickerIfNeeded;
@end

@implementation TIKeyboardInputManagerLiveConversion_zh

- (TIKeyboardInputManagerLiveConversion_zh)initWithConfig:(id)config keyboardState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 initWithConfig:config keyboardState:state];
  if (v4)
  {
    v5 = objc_alloc_init(TIZhuyinInputManager);
    zhuyinInputManager = v4->_zhuyinInputManager;
    v4->_zhuyinInputManager = v5;
  }

  return v4;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7068]);

  return v2;
}

- (unint64_t)initialSelectedIndex
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v6 = [candidates count];
  if (v6)
  {
    inputString = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
    if ([inputString length])
    {
      initialSelectedIndex = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerLiveConversion_zh;
  initialSelectedIndex = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return initialSelectedIndex;
}

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71B8];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Zhuyin" andLanguage:v2];
}

- (void)clearInput
{
  [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:0];
  [(TIKeyboardInputManagerLiveConversion_zh *)self setCurrentCandidate:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:0];
  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  [zhuyinInputManager reset];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerChinesePhonetic *)&v4 clearInput];
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if (TICanLogMessageAtLevel())
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_zh handleKeyboardInput:];
    }
  }

  acceptedCandidate = [inputCopy acceptedCandidate];
  if (acceptedCandidate)
  {
    v7 = acceptedCandidate;
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (composingKeyboardInputManager)
    {
      goto LABEL_7;
    }
  }

  currentCandidate = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (currentCandidate)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];
    v13 = [composingKeyboardInputManager2 mecabraCandidateRefFromCandidate:currentCandidate2];

    v14 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v13];
    v15 = [v14 length];
    rawInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
    v17 = [rawInputString length];

    if (v15 > v17)
    {
      [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    }

    [(TIKeyboardInputManagerLiveConversion_zh *)self addInputToInternal:v14];
    [(TIKeyboardInputManagerLiveConversion_zh *)self setCurrentCandidate:0];
  }

  string = [inputCopy string];
  v19 = [string isEqualToString:@"\x1B"];

  if (v19)
  {
    v9 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    inputString = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
    [v9 insertText:inputString];

    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
    goto LABEL_30;
  }

  string2 = [inputCopy string];
  v22 = [string2 isEqualToString:@"\n"];

  if (v22)
  {
    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!composingKeyboardInputManager3)
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }

LABEL_7:
    v9 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    goto LABEL_30;
  }

  if ([inputCopy isBackspace])
  {
    isShiftDown = [inputCopy isShiftDown];
  }

  else
  {
    isShiftDown = 0;
  }

  [(TIKeyboardInputManagerLiveConversion_zh *)self setRevertTonlessZhuyin:isShiftDown];
  v34.receiver = self;
  v34.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v25 = [(TIKeyboardInputManagerChinesePhonetic *)&v34 handleKeyboardInput:inputCopy];
  string3 = [inputCopy string];
  if (([string3 _isSpace] & 1) == 0)
  {

    goto LABEL_24;
  }

  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  syllableBuffersOccupied = [zhuyinInputManager syllableBuffersOccupied];

  if (syllableBuffersOccupied)
  {
LABEL_24:
    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
    zhuyinInputManager2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    if ([zhuyinInputManager2 syllableBuffersOccupied])
    {
    }

    else
    {
      zhuyinInputManager3 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
      isCursorAtEnd = [zhuyinInputManager3 isCursorAtEnd];

      if ((isCursorAtEnd & 1) == 0)
      {
        [(TIKeyboardInputManagerLiveConversion_zh *)self presentSegmentAdjuster];
      }
    }

    v29 = v25;
    goto LABEL_29;
  }

  [(TIKeyboardInputManagerLiveConversion_zh *)self presentSegmentPickerIfNeeded];
  v29 = objc_alloc_init(MEMORY[0x29EDC70B0]);
LABEL_29:
  v9 = v29;

LABEL_30:

  return v9;
}

- (id)markedText
{
  v13[1] = *MEMORY[0x29EDCA608];
  rawInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  inputString = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
  inputIndex = [(TIKeyboardInputManagerLiveConversion_zh *)self inputIndex];
  searchStringForMarkedText = [(TIKeyboardInputManagerChinesePhonetic *)self searchStringForMarkedText];
  v7 = [MEMORY[0x29EDBA168] valueWithRange:{0, objc_msgSend(inputString, "length")}];
  v13[0] = v7;
  v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

  lastInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self lastInputString];
  v10 = [MEMORY[0x29EDC70A0] intermediateTextWithInputString:rawInputString displayString:inputString selectionLocation:inputIndex searchString:searchStringForMarkedText candidateOffset:0 liveConversionSegments:v8 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:lastInputString];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (BOOL)shouldClearInputOnMarkedTextOutOfSync
{
  mEMORY[0x29EDC7270] = [MEMORY[0x29EDC7270] sharedOperationQueue];
  v3 = [mEMORY[0x29EDC7270] operationCount] == 0;

  return v3;
}

- (BOOL)_shouldCommitInputDirectly:(id)directly
{
  directlyCopy = directly;
  zhuyinCharacterSet = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  if (TIStringContainsCharacterFromSet(directlyCopy, zhuyinCharacterSet))
  {
    goto LABEL_4;
  }

  punctuationAndSymbolCharacterSet = [MEMORY[0x29EDB9F50] punctuationAndSymbolCharacterSet];
  if (TIStringContainsCharacterFromSet(directlyCopy, punctuationAndSymbolCharacterSet))
  {

LABEL_4:
    goto LABEL_5;
  }

  alphanumericCharacterSet = [MEMORY[0x29EDB9F50] alphanumericCharacterSet];
  v10 = TIStringContainsCharacterFromSet(directlyCopy, alphanumericCharacterSet);

  if (!v10)
  {
    v11.receiver = self;
    v11.super_class = TIKeyboardInputManagerLiveConversion_zh;
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)&v11 _shouldCommitInputDirectly:directlyCopy];
    goto LABEL_6;
  }

LABEL_5:
  v7 = 0;
LABEL_6:

  return v7;
}

- (void)addInputToInternal:(id)internal
{
  internalCopy = internal;
  if ([internalCopy length] == 1)
  {
    [(TIKeyboardInputManagerLiveConversion_zh *)self _addInputToInternal:internalCopy];
  }

  else if ([internalCopy length])
  {
    v4 = 0;
    do
    {
      v5 = [internalCopy substringWithRange:{v4, 1}];
      [(TIKeyboardInputManagerLiveConversion_zh *)self _addInputToInternal:v5];

      ++v4;
    }

    while (v4 < [internalCopy length]);
  }
}

- (void)_addInputToInternal:(id)internal
{
  internalCopy = internal;
  zhuyinCharacterSet = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  v5 = TIStringContainsCharacterFromSet(internalCopy, zhuyinCharacterSet);

  if (v5)
  {
    zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    composedText = [zhuyinInputManager composedText];
    cachedInputString = self->_cachedInputString;
    self->_cachedInputString = composedText;

    zhuyinInputManager2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    [zhuyinInputManager2 addZhuyinInput:internalCopy];

    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
  }

  else if (([internalCopy isEqualToString:@" "] & 1) == 0)
  {
    zhuyinInputManager3 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    [zhuyinInputManager3 addNonZhuyinInput:internalCopy];
  }
}

- (id)rawInputString
{
  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager inputBuffer];

  return inputBuffer;
}

- (id)internalInputString
{
  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager inputBuffer];

  return inputBuffer;
}

- (unsigned)inputCount
{
  inputString = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (id)inputString
{
  currentCandidate = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (currentCandidate)
  {
    currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];
    candidate = [currentCandidate2 candidate];
LABEL_3:
    cachedInputString2 = candidate;

    goto LABEL_6;
  }

  cachedInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self cachedInputString];

  if (cachedInputString)
  {
    cachedInputString2 = [(TIKeyboardInputManagerLiveConversion_zh *)self cachedInputString];
  }

  else
  {
    zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    composedText = [zhuyinInputManager composedText];

    if (composedText)
    {
      currentCandidate2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
      candidate = [currentCandidate2 composedText];
      goto LABEL_3;
    }

    cachedInputString2 = &stru_2A252F9A8;
  }

LABEL_6:

  return cachedInputString2;
}

- (unsigned)inputIndex
{
  currentCandidate = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (currentCandidate)
  {

    return [(TIKeyboardInputManagerLiveConversion_zh *)self inputCount];
  }

  else
  {
    zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    cursorLocation = [zhuyinInputManager cursorLocation];

    return cursorLocation;
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  revertTonlessZhuyin = [(TIKeyboardInputManagerLiveConversion_zh *)self revertTonlessZhuyin];
  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v7 = zhuyinInputManager;
  if (revertTonlessZhuyin)
  {
    [zhuyinInputManager revertCurrentCharacterToTonelessZhuyin];
  }

  else
  {
    [zhuyinInputManager deleteFromInput];
  }

  if (input)
  {
    *input = 1;
  }

  zhuyinInputManager2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager2 inputBuffer];
  v10 = [inputBuffer length];

  if (!v10)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return 0;
}

- (BOOL)updateCandidatesByWaitingForResults:(BOOL)results
{
  resultsCopy = results;
  rawInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  v6 = [rawInputString length];
  if (TICanLogMessageAtLevel())
  {
    v7 = TIOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_zh updateCandidatesByWaitingForResults:rawInputString];
    }
  }

  if (!v6)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    v17 = 1;
    goto LABEL_18;
  }

  geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  v9 = objc_alloc(MEMORY[0x29EDC7148]);
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  if (resultsCopy)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  if (resultsCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = sel_wordSearchEngineDidFindCandidates_forOperation_;
  }

  logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v22) = 1;
  BYTE2(v21) = 0;
  LOWORD(v21) = 1;
  v15 = [v9 initWithWordSearch:wordSearch inputString:rawInputString keyboardInput:composingInput segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v21 predictionEnabled:selfCopy reanalysisMode:v13 target:geometryModelData action:v22 geometryModelData:logger hardwareKeyboardMode:? logger:?];

  results = [v15 results];
  v17 = results == 0;

  if (!results)
  {
    wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch2 performOperationAsync:v15];

    if (!resultsCopy)
    {
      v17 = 0;
      goto LABEL_16;
    }

    [v15 waitUntilFinished];
  }

  results2 = [v15 results];
  [(TIKeyboardInputManagerLiveConversion_zh *)self _notifyUpdateCandidates:results2 forOperation:v15];

LABEL_16:
LABEL_18:

  return v17;
}

- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  v31 = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  operationCopy = operation;
  if (-[TIKeyboardInputManagerLiveConversion_zh shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") || ([candidatesCopy candidates], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager cancelComposition];

    goto LABEL_21;
  }

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidatesCopy];
  cachedInputString = self->_cachedInputString;
  self->_cachedInputString = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = candidatesCopy;
  candidates = [candidatesCopy candidates];
  v11 = [candidates countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v13 = *v27;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(candidates);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ([v15 containPunctuationOnly])
      {
LABEL_19:
        zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
        [zhuyinInputManager updateWithCandidate:v15 isWholeInputCandidate:1];

        [(TIKeyboardInputManagerLiveConversion_zh *)self setTopCandidate:v15];
        v22 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:v15 phraseBoundary:0];
        [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:v22];

        goto LABEL_20;
      }

      candidate = [v15 candidate];
      if ([candidate _containsBopomofoOnly])
      {
        goto LABEL_14;
      }

      input = [v15 input];
      inputString = [operationCopy inputString];
      if (([input isEqualToString:inputString] & 1) == 0)
      {

LABEL_14:
        continue;
      }

      hasUnsupportedReading = [v15 hasUnsupportedReading];

      if ((hasUnsupportedReading & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v12 = [candidates countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_20:

  [(TIKeyboardInputManagerLiveConversion_zh *)self setMarkedText];
  candidatesCopy = v24;
LABEL_21:

  v23 = *MEMORY[0x29EDCA608];
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)results
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerLiveConversion_zh *)&v4 closeCandidateGenerationContextWithResults:0];
  return 1;
}

- (id)didAcceptCandidate:(id)candidate
{
  v25 = *MEMORY[0x29EDCA608];
  candidateCopy = candidate;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  remainingInput = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v7 = [remainingInput length];

  if (!v7 || (isKindOfClass & 1) != 0)
  {
    rawInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
    v9 = [rawInputString length];
    input = [candidateCopy input];
    v11 = (v9 > [input length]) & (isKindOfClass ^ 1u);

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[TIKeyboardInputManagerLiveConversion_zh didAcceptCandidate:]";
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_29EA88000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  candidate is partial: %d", &v21, 0x12u);
    }

    candidate = [candidateCopy candidate];
    if ([candidate length])
    {
      isTypologyEnabled = [(TIKeyboardInputManagerLiveConversion_zh *)self isTypologyEnabled];

      if (isTypologyEnabled)
      {
        [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:candidateCopy partial:v11];
      }
    }

    else
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topCandidate = [(TIKeyboardInputManagerLiveConversion_zh *)self topCandidate];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        topCandidate2 = [(TIKeyboardInputManagerLiveConversion_zh *)self topCandidate];
        v17 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:topCandidate2];

        wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [wordSearch performAccept:v17 isPartial:0];
      }
    }

    [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v19 = *MEMORY[0x29EDCA608];
  return &stru_2A252F9A8;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v9 handleAcceptedCandidate:candidate keyboardState:state];
  rawInputString = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  v7 = [rawInputString length];

  if (v7)
  {
    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return v5;
}

- (void)presentSegmentAdjuster
{
  v3 = [TIKeyboardInputManager_zh_SegmentAdjust alloc];
  config = [(TIKeyboardInputManagerLiveConversion_zh *)self config];
  keyboardState = [(TIKeyboardInputManagerLiveConversion_zh *)self keyboardState];
  segments = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
  zhuyinInputManager = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v8 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 initWithConfig:config keyboardState:keyboardState segments:segments inputManager:zhuyinInputManager wordSearch:wordSearch];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

- (void)presentSegmentPickerIfNeeded
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    segments = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __71__TIKeyboardInputManagerLiveConversion_zh_presentSegmentPickerIfNeeded__block_invoke;
    v15[3] = &unk_29F37D418;
    v15[4] = self;
    v15[5] = v16;
    v15[6] = &v17;
    [segments enumerateObjectsUsingBlock:v15];

    if (v18[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      segments2 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
      v7 = [segments2 count];
      v18[3] = v7 - 1;
    }

    v8 = [TIKeyboardInputManager_zh_SegmentPicker alloc];
    config = [(TIKeyboardInputManagerLiveConversion_zh *)self config];
    keyboardState = [(TIKeyboardInputManagerLiveConversion_zh *)self keyboardState];
    segments3 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    v12 = v18[3];
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v14 = [(TIKeyboardInputManager_zh_SegmentPicker *)v8 initWithConfig:config keyboardState:keyboardState segments:segments3 at:v12 wordSearch:wordSearch];

    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v14];
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
  }
}

- (void)commitComposition
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    segments = [composingKeyboardInputManager2 segments];
    v7 = [segments count];

    if (v7)
    {
      segments2 = [composingKeyboardInputManager2 segments];
      [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:segments2];

      inputString = [composingKeyboardInputManager2 inputString];
      [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:inputString];

      remainingInput = [composingKeyboardInputManager2 remainingInput];
      [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:remainingInput];
    }

    else
    {
      [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    }
  }

  composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    composingKeyboardInputManager4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    segments3 = [composingKeyboardInputManager4 segments];
    [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:segments3];

    inputString2 = [composingKeyboardInputManager4 inputString];
    [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:inputString2];

    remainingInput2 = [composingKeyboardInputManager4 remainingInput];
    [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:remainingInput2];
  }

  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerMecabra *)&v17 commitComposition];
}

- (void)handleKeyboardInput:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s handleKeyboardInput", "-[TIKeyboardInputManagerLiveConversion_zh handleKeyboardInput:]"];
  v4 = 138412290;
  v5 = v0;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v1, v2, "%@", &v4);

  v3 = *MEMORY[0x29EDCA608];
}

- (void)updateCandidatesByWaitingForResults:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s updateCandidates for %@", "-[TIKeyboardInputManagerLiveConversion_zh updateCandidatesByWaitingForResults:]", a1];
  v5 = 138412290;
  v6 = v1;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v2, v3, "%@", &v5);

  v4 = *MEMORY[0x29EDCA608];
}

- (void)_adjustPhraseBoundaryInForwardDirection:(char)a1 granularity:(uint64_t)a2 .cold.1(char a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s adjust phrase: %d %d", "-[TIKeyboardInputManagerLiveConversion_zh _adjustPhraseBoundaryInForwardDirection:granularity:]", a1 & 1, a2];
  v6 = 138412290;
  v7 = v2;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v3, v4, "%@", &v6);

  v5 = *MEMORY[0x29EDCA608];
}

@end