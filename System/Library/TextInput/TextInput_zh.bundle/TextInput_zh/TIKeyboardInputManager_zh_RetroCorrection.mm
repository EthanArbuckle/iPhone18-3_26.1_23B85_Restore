@interface TIKeyboardInputManager_zh_RetroCorrection
- (BOOL)supportsCandidateGeneration;
- (BOOL)supportsSetPhraseBoundary;
- (TIKeyboardInputManager_zh_RetroCorrection)initWithInputMode:(id)mode keyboardState:(id)state inputString:(id)string;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)internalInputString;
- (id)rawInputString;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInputToInternal:(id)internal;
- (void)addInputToInternal:(id)internal;
- (void)clearInput;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)updateInlineCandidate;
@end

@implementation TIKeyboardInputManager_zh_RetroCorrection

- (TIKeyboardInputManager_zh_RetroCorrection)initWithInputMode:(id)mode keyboardState:(id)state inputString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v9 = [(TIKeyboardInputManagerBase *)&v13 initWithInputMode:mode keyboardState:state];
  if (v9)
  {
    v10 = objc_alloc_init(TIZhuyinInputManager);
    zhuyinInputManager = v9->_zhuyinInputManager;
    v9->_zhuyinInputManager = v10;

    [(TIKeyboardInputManager_zh_RetroCorrection *)v9 addInputToInternal:stringCopy];
  }

  return v9;
}

- (id)rawInputString
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager inputBuffer];

  return inputBuffer;
}

- (id)internalInputString
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager inputBuffer];

  return inputBuffer;
}

- (unsigned)inputCount
{
  inputString = [(TIKeyboardInputManager_zh_RetroCorrection *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (BOOL)supportsSetPhraseBoundary
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  syllableBuffersOccupied = [zhuyinInputManager syllableBuffersOccupied];

  return syllableBuffersOccupied ^ 1;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  [(TIKeyboardInputManagerChinesePhonetic *)&v11 setPhraseBoundary:?];
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  cursorLocation = [zhuyinInputManager cursorLocation];

  v7 = cursorLocation - boundary;
  if (cursorLocation >= boundary)
  {
    if (cursorLocation > boundary)
    {
      do
      {
        zhuyinInputManager2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
        [zhuyinInputManager2 moveCursorBackward];

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = boundary - cursorLocation;
    do
    {
      zhuyinInputManager3 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
      [zhuyinInputManager3 moveCursorForward];

      --v8;
    }

    while (v8);
  }
}

- (id)inputString
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  composedText = [zhuyinInputManager composedText];

  if (composedText)
  {
    zhuyinInputManager2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    composedText2 = [zhuyinInputManager2 composedText];
  }

  else
  {
    composedText2 = &stru_2A252F9A8;
  }

  return composedText2;
}

- (unsigned)inputIndex
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  cursorLocation = [zhuyinInputManager cursorLocation];

  return cursorLocation;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_zh_RetroCorrection;
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 handleKeyboardInput:inputCopy];
  }

  return v6;
}

- (void)clearInput
{
  [(TIKeyboardInputManager_zh_RetroCorrection *)self setDefaultCandidate:0];
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  [zhuyinInputManager reset];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  [(TIKeyboardInputManagerChinesePhonetic *)&v4 clearInput];
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  v31 = *MEMORY[0x29EDCA608];
  methodCopy = method;
  v29.receiver = self;
  v29.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v7 = [(TIKeyboardInputManagerChinese *)&v29 groupedCandidatesFromCandidates:candidates usingSortingMethod:methodCopy];
  inputString = [(TIKeyboardInputManager_zh_RetroCorrection *)self inputString];
  if ([methodCopy integerValue] == 1 && inputString)
  {
    v20 = v7;
    v21 = methodCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          candidates = [v13 candidates];
          v15 = MEMORY[0x29EDBA0A8];
          v23[0] = MEMORY[0x29EDCA5F8];
          v23[1] = 3221225472;
          v23[2] = __96__TIKeyboardInputManager_zh_RetroCorrection_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke;
          v23[3] = &unk_29F37D3F0;
          v24 = inputString;
          v16 = [v15 predicateWithBlock:v23];
          v17 = [candidates filteredOrderedSetUsingPredicate:v16];
          [v13 setCandidates:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v7 = v20;
    methodCopy = v21;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)didAcceptCandidate:(id)candidate
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v10 didAcceptCandidate:candidate];
  remainingInput = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v6 = [remainingInput length];

  if (!v6)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_2A252F9A8;
  }

  v8 = v7;

  return v7;
}

- (void)addInputToInternal:(id)internal
{
  internalCopy = internal;
  if ([internalCopy length] == 1)
  {
    [(TIKeyboardInputManager_zh_RetroCorrection *)self _addInputToInternal:internalCopy];
  }

  else if ([internalCopy length])
  {
    v4 = 0;
    do
    {
      v5 = [internalCopy substringWithRange:{v4, 1}];
      [(TIKeyboardInputManager_zh_RetroCorrection *)self _addInputToInternal:v5];

      ++v4;
    }

    while (v4 < [internalCopy length]);
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  [zhuyinInputManager deleteFromInput];

  if (input)
  {
    *input = 1;
  }

  zhuyinInputManager2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  inputBuffer = [zhuyinInputManager2 inputBuffer];
  v8 = [inputBuffer length];

  if (!v8)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return 0;
}

- (BOOL)supportsCandidateGeneration
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = composingKeyboardInputManager == 0;

  return v3;
}

- (void)_addInputToInternal:(id)internal
{
  internalCopy = internal;
  zhuyinCharacterSet = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  v5 = TIStringContainsCharacterFromSet(internalCopy, zhuyinCharacterSet);

  if (v5)
  {
    zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    [zhuyinInputManager addZhuyinInput:internalCopy];
  }

  else
  {
    if ([internalCopy isEqualToString:@" "])
    {
      goto LABEL_6;
    }

    zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    [zhuyinInputManager addNonZhuyinInput:internalCopy];
  }

LABEL_6:
  [(TIKeyboardInputManager_zh_RetroCorrection *)self updateInlineCandidate];
}

- (void)updateInlineCandidate
{
  v40 = *MEMORY[0x29EDCA608];
  if (([(TIKeyboardInputManager_zh_RetroCorrection *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    goto LABEL_26;
  }

  rawInputString = [(TIKeyboardInputManager_zh_RetroCorrection *)self rawInputString];
  if (![rawInputString length])
  {
    goto LABEL_25;
  }

  geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  v5 = objc_alloc(MEMORY[0x29EDC7148]);
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v31) = 1;
  BYTE2(v30) = 0;
  LOWORD(v30) = 1;
  v9 = [v5 initWithWordSearch:wordSearch inputString:rawInputString keyboardInput:composingInput segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v30 predictionEnabled:0 reanalysisMode:0 target:geometryModelData action:v31 geometryModelData:logger hardwareKeyboardMode:? logger:?];

  results = [v9 results];

  if (!results)
  {
    wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch2 performOperationAsync:v9];

    [v9 waitUntilFinished];
  }

  results2 = [v9 results];
  candidates = [results2 candidates];
  v14 = [candidates count];

  if (!v14)
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager cancelComposition];

    goto LABEL_24;
  }

  v32 = geometryModelData;
  v33 = rawInputString;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  results3 = [v9 results];
  candidates2 = [results3 candidates];

  obj = candidates2;
  v17 = [candidates2 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v19 = *v36;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v36 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v35 + 1) + 8 * i);
      if ([v21 containPunctuationOnly])
      {
LABEL_21:
        [(TIKeyboardInputManager_zh_RetroCorrection *)self setDefaultCandidate:v21];
        zhuyinInputManager = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
        [zhuyinInputManager updateWithCandidate:v21 isWholeInputCandidate:1];

        goto LABEL_22;
      }

      candidate = [v21 candidate];
      if ([candidate _containsBopomofoOnly])
      {
        goto LABEL_17;
      }

      input = [v21 input];
      v24 = v9;
      inputString = [v9 inputString];
      if (([input isEqualToString:inputString] & 1) == 0)
      {

        v9 = v24;
LABEL_17:

        continue;
      }

      hasUnsupportedReading = [v21 hasUnsupportedReading];

      v9 = v24;
      if ((hasUnsupportedReading & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_22:

  [(TIKeyboardInputManager_zh_RetroCorrection *)self setMarkedText];
  geometryModelData = v32;
  rawInputString = v33;
LABEL_24:

LABEL_25:
LABEL_26:
  v29 = *MEMORY[0x29EDCA608];
}

@end