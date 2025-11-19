@interface TIKeyboardInputManager_zh_RetroCorrection
- (BOOL)supportsCandidateGeneration;
- (BOOL)supportsSetPhraseBoundary;
- (TIKeyboardInputManager_zh_RetroCorrection)initWithInputMode:(id)a3 keyboardState:(id)a4 inputString:(id)a5;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)internalInputString;
- (id)rawInputString;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInputToInternal:(id)a3;
- (void)addInputToInternal:(id)a3;
- (void)clearInput;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)updateInlineCandidate;
@end

@implementation TIKeyboardInputManager_zh_RetroCorrection

- (TIKeyboardInputManager_zh_RetroCorrection)initWithInputMode:(id)a3 keyboardState:(id)a4 inputString:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v9 = [(TIKeyboardInputManagerBase *)&v13 initWithInputMode:a3 keyboardState:a4];
  if (v9)
  {
    v10 = objc_alloc_init(TIZhuyinInputManager);
    zhuyinInputManager = v9->_zhuyinInputManager;
    v9->_zhuyinInputManager = v10;

    [(TIKeyboardInputManager_zh_RetroCorrection *)v9 addInputToInternal:v8];
  }

  return v9;
}

- (id)rawInputString
{
  v2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v3 = [v2 inputBuffer];

  return v3;
}

- (id)internalInputString
{
  v2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v3 = [v2 inputBuffer];

  return v3;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (BOOL)supportsSetPhraseBoundary
{
  v2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v3 = [v2 syllableBuffersOccupied];

  return v3 ^ 1;
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  [(TIKeyboardInputManagerChinesePhonetic *)&v11 setPhraseBoundary:?];
  v5 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v6 = [v5 cursorLocation];

  v7 = v6 - a3;
  if (v6 >= a3)
  {
    if (v6 > a3)
    {
      do
      {
        v10 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
        [v10 moveCursorBackward];

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = a3 - v6;
    do
    {
      v9 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
      [v9 moveCursorForward];

      --v8;
    }

    while (v8);
  }
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v4 = [v3 composedText];

  if (v4)
  {
    v5 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    v6 = [v5 composedText];
  }

  else
  {
    v6 = &stru_2A252F9A8;
  }

  return v6;
}

- (unsigned)inputIndex
{
  v2 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v3 = [v2 cursorLocation];

  return v3;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_zh_RetroCorrection;
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 handleKeyboardInput:v4];
  }

  return v6;
}

- (void)clearInput
{
  [(TIKeyboardInputManager_zh_RetroCorrection *)self setDefaultCandidate:0];
  v3 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  [v3 reset];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  [(TIKeyboardInputManagerChinesePhonetic *)&v4 clearInput];
}

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v7 = [(TIKeyboardInputManagerChinese *)&v29 groupedCandidatesFromCandidates:a3 usingSortingMethod:v6];
  v8 = [(TIKeyboardInputManager_zh_RetroCorrection *)self inputString];
  if ([v6 integerValue] == 1 && v8)
  {
    v20 = v7;
    v21 = v6;
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
          v14 = [v13 candidates];
          v15 = MEMORY[0x29EDBA0A8];
          v23[0] = MEMORY[0x29EDCA5F8];
          v23[1] = 3221225472;
          v23[2] = __96__TIKeyboardInputManager_zh_RetroCorrection_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke;
          v23[3] = &unk_29F37D3F0;
          v24 = v8;
          v16 = [v15 predicateWithBlock:v23];
          v17 = [v14 filteredOrderedSetUsingPredicate:v16];
          [v13 setCandidates:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v7 = v20;
    v6 = v21;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)didAcceptCandidate:(id)a3
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_zh_RetroCorrection;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v10 didAcceptCandidate:a3];
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v6 = [v5 length];

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

- (void)addInputToInternal:(id)a3
{
  v6 = a3;
  if ([v6 length] == 1)
  {
    [(TIKeyboardInputManager_zh_RetroCorrection *)self _addInputToInternal:v6];
  }

  else if ([v6 length])
  {
    v4 = 0;
    do
    {
      v5 = [v6 substringWithRange:{v4, 1}];
      [(TIKeyboardInputManager_zh_RetroCorrection *)self _addInputToInternal:v5];

      ++v4;
    }

    while (v4 < [v6 length]);
  }
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v5 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  [v5 deleteFromInput];

  if (a3)
  {
    *a3 = 1;
  }

  v6 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
  v7 = [v6 inputBuffer];
  v8 = [v7 length];

  if (!v8)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return 0;
}

- (BOOL)supportsCandidateGeneration
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = v2 == 0;

  return v3;
}

- (void)_addInputToInternal:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  v5 = TIStringContainsCharacterFromSet(v7, v4);

  if (v5)
  {
    v6 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    [v6 addZhuyinInput:v7];
  }

  else
  {
    if ([v7 isEqualToString:@" "])
    {
      goto LABEL_6;
    }

    v6 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
    [v6 addNonZhuyinInput:v7];
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

  v3 = [(TIKeyboardInputManager_zh_RetroCorrection *)self rawInputString];
  if (![v3 length])
  {
    goto LABEL_25;
  }

  v4 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  v5 = objc_alloc(MEMORY[0x29EDC7148]);
  v6 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v8 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v31) = 1;
  BYTE2(v30) = 0;
  LOWORD(v30) = 1;
  v9 = [v5 initWithWordSearch:v6 inputString:v3 keyboardInput:v7 segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v30 predictionEnabled:0 reanalysisMode:0 target:v4 action:v31 geometryModelData:v8 hardwareKeyboardMode:? logger:?];

  v10 = [v9 results];

  if (!v10)
  {
    v11 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v11 performOperationAsync:v9];

    [v9 waitUntilFinished];
  }

  v12 = [v9 results];
  v13 = [v12 candidates];
  v14 = [v13 count];

  if (!v14)
  {
    v28 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v28 cancelComposition];

    goto LABEL_24;
  }

  v32 = v4;
  v33 = v3;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v9 results];
  v16 = [v15 candidates];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
        v27 = [(TIKeyboardInputManager_zh_RetroCorrection *)self zhuyinInputManager];
        [v27 updateWithCandidate:v21 isWholeInputCandidate:1];

        goto LABEL_22;
      }

      v22 = [v21 candidate];
      if ([v22 _containsBopomofoOnly])
      {
        goto LABEL_17;
      }

      v23 = [v21 input];
      v24 = v9;
      v25 = [v9 inputString];
      if (([v23 isEqualToString:v25] & 1) == 0)
      {

        v9 = v24;
LABEL_17:

        continue;
      }

      v26 = [v21 hasUnsupportedReading];

      v9 = v24;
      if ((v26 & 1) == 0)
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
  v4 = v32;
  v3 = v33;
LABEL_24:

LABEL_25:
LABEL_26:
  v29 = *MEMORY[0x29EDCA608];
}

@end