@interface TIKeyboardInputManager_ja_Edit
- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (BOOL)handleBackspace:(id)backspace;
- (BOOL)handleCancelEditMode:(id)mode;
- (BOOL)handleEsc:(id)esc;
- (BOOL)handleSpaceKey:(id)key;
- (NSArray)segments;
- (NSString)prefixString;
- (NSString)rawInputString;
- (TIKeyboardInputManager_ja_Edit)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments wordSearch:(id)search romajiMode:(BOOL)mode conversionEnabled:(BOOL)enabled;
- (id)deleteFromInput:(unint64_t *)input;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)transliterate:(id)transliterate;
- (unint64_t)phraseBoundary;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (unsigned)rawInputIndex;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)revertLastSegment;
- (void)setInputIndex:(unsigned int)index;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)setRawInputString:(id)string;
@end

@implementation TIKeyboardInputManager_ja_Edit

- (TIKeyboardInputManager_ja_Edit)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments wordSearch:(id)search romajiMode:(BOOL)mode conversionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  modeCopy = mode;
  segmentsCopy = segments;
  searchCopy = search;
  v27.receiver = self;
  v27.super_class = TIKeyboardInputManager_ja_Edit;
  v16 = [(TIKeyboardInputManagerMecabra *)&v27 initWithConfig:config keyboardState:state];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wordSearch, search);
    [(TIKeyboardInputManager_ja_Edit *)v17 setEscapeKeyPressed:0];
    if (enabledCopy)
    {
      v18 = [segmentsCopy subarrayWithRange:{0, objc_msgSend(segmentsCopy, "count") - 1}];
      v19 = [v18 mutableCopy];
      [(TIKeyboardInputManager_ja_Edit *)v17 setMutableSegments:v19];

      lastObject = [segmentsCopy lastObject];
      reading = [lastObject reading];
    }

    else
    {
      array = [MEMORY[0x29EDB8DE8] array];
      [(TIKeyboardInputManager_ja_Edit *)v17 setMutableSegments:array];

      reading = [segmentsCopy _readingStringWithin:{0, objc_msgSend(segmentsCopy, "count")}];
    }

    v26.receiver = v17;
    v26.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_mul *)&v26 setInput:reading];
    v23 = off_29F3788A8;
    if (!modeCopy)
    {
      v23 = off_29F3788A0;
    }

    v24 = [objc_alloc(*v23) initWithInternalString:reading];
    [(TIKeyboardInputManager_ja_Edit *)v17 setKanaString:v24];
  }

  return v17;
}

- (void)dealloc
{
  if (_romanAlphabetCharacterSet)
  {
    CFRelease(_romanAlphabetCharacterSet);
    _romanAlphabetCharacterSet = 0;
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Edit;
  [(TIKeyboardInputManagerMecabra *)&v3 dealloc];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7048]);

  return v2;
}

- (id)keyEventMap
{
  v2 = objc_alloc_init(MEMORY[0x29EDC6FF0]);

  return v2;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if ([(TIKeyboardInputManager_ja_Edit *)self handleBackspace:inputCopy]|| [(TIKeyboardInputManager_ja_Edit *)self handleSpaceKey:inputCopy]|| [(TIKeyboardInputManager_ja_Edit *)self handleEsc:inputCopy])
  {
    v5 = objc_opt_new();
  }

  else if ([(TIKeyboardInputManager_ja_Edit *)self handleCancelEditMode:inputCopy])
  {
    v5 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ja_Edit;
    v7 = [(TIKeyboardInputManagerMecabra *)&v10 handleKeyboardInput:inputCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v5 = v9;
  }

  return v5;
}

- (BOOL)handleCancelEditMode:(id)mode
{
  inputCount = [(TIKeyboardInputManager_ja_Edit *)self inputCount];
  inputIndex = [(TIKeyboardInputManager_ja_Edit *)self inputIndex];
  if (inputCount == inputIndex)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return inputCount == inputIndex;
}

- (BOOL)handleBackspace:(id)backspace
{
  backspaceCopy = backspace;
  isBackspace = [backspaceCopy isBackspace];
  if (isBackspace)
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ja_Edit;
    v6 = [(TIKeyboardInputManagerMecabra *)&v8 handleKeyboardInput:backspaceCopy];
    if (![(TIKeyboardInputManager_ja_Edit *)self inputCount])
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return isBackspace;
}

- (BOOL)handleEsc:(id)esc
{
  string = [esc string];
  v5 = [string isEqualToString:@"\x1B"];

  if (v5)
  {
    if ([(TIKeyboardInputManager_ja_Edit *)self escapeKeyPressed]>= 1)
    {
      [(TIKeyboardInputManager_ja_Edit *)self clearInput];
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }

    [(TIKeyboardInputManager_ja_Edit *)self setEscapeKeyPressed:[(TIKeyboardInputManager_ja_Edit *)self escapeKeyPressed]+ 1];
  }

  return v5;
}

- (BOOL)handleSpaceKey:(id)key
{
  string = [key string];
  _isSpace = [string _isSpace];

  if (_isSpace)
  {
    rawInputString = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
    v7 = [(TIKeyboardInputManager_ja_Edit *)self contextBeforeWithDesiredLength:20];
    prefixString = [(TIKeyboardInputManager_ja_Edit *)self prefixString];

    if (prefixString)
    {
      prefixString2 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
      v10 = [v7 stringByAppendingString:prefixString2];

      v7 = v10;
    }

    v11 = [TIWordSearchJapaneseOperationGetCandidates alloc];
    wordSearch = [(TIKeyboardInputManager_ja_Edit *)self wordSearch];
    BYTE2(v23) = 1;
    LOWORD(v23) = 0;
    LOBYTE(v22) = 1;
    v13 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v11 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:rawInputString segmentBreakIndex:0 predictionEnabled:v7 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v22 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:0 hardwareKeyboardMode:v23 logger:0];

    [(TIWordSearchJapaneseOperationGetCandidates *)v13 setAllowIncompleteRomaji:1];
    [(TIWordSearchJapaneseOperationGetCandidates *)v13 setReferenceMode:1];
    results = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];

    if (!results)
    {
      wordSearch2 = [(TIKeyboardInputManager_ja_Edit *)self wordSearch];
      [wordSearch2 performOperationAsync:v13];

      [(TIWordSearchJapaneseOperationGetCandidates *)v13 waitUntilFinished];
    }

    results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:results2];

    results3 = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];
    candidates = [results3 candidates];
    firstObject = [candidates firstObject];

    if (firstObject)
    {
      objc_storeStrong(&self->_inlineCandidate, firstObject);
      kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
      [kanaString setInternalString:&stru_2A2525CC0 withInputIndex:0];

      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return _isSpace;
}

- (void)addInput:(id)input withContext:(id)context
{
  string = [input string];
  v6 = string;
  if (string && [string length])
  {
    if ([v6 length])
    {
      v7 = 0;
      v8 = *MEMORY[0x29EDB90B8];
      v9 = *(MEMORY[0x29EDB90B8] + 8);
      do
      {
        v10 = [v6 substringWithRange:{v7, 1}];
        v11 = [(TIKeyboardInputManager_ja_Edit *)self transliterate:v10];

        v20.receiver = self;
        v20.super_class = TIKeyboardInputManager_ja_Edit;
        v21 = 0;
        v12 = [(TIKeyboardInputManagerMecabra *)&v20 addInput:v11 flags:0 point:&v21 firstDelete:v8, v9];

        ++v7;
      }

      while (v7 < [v6 length]);
    }

    kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    rawInputString = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
    [kanaString setInternalString:rawInputString withInputIndex:{-[TIKeyboardInputManager_ja_Edit rawInputIndex](self, "rawInputIndex")}];

    kanaString2 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    internalString = [kanaString2 internalString];
    v19.receiver = self;
    v19.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_mul *)&v19 setInput:internalString];

    kanaString3 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v18.receiver = self;
    v18.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v18, sel_setInputIndex_, [kanaString3 internalIndex]);
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  if ([kanaString externalIndex] >= 2)
  {
  }

  else
  {
    segments = [(TIKeyboardInputManager_ja_Edit *)self segments];
    v7 = [segments count];

    if (v7)
    {
      [(TIKeyboardInputManager_ja_Edit *)self revertLastSegment];
    }
  }

  v24 = 0;
  v25 = 0;
  kanaString2 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  v23 = 0;
  [kanaString2 deleteFromInput:&v24 newInput:&v23 inputIndex:&v25];
  v9 = v23;

  if (v24 >= 1)
  {
    for (i = 0; i < v24; ++i)
    {
      v22.receiver = self;
      v22.super_class = TIKeyboardInputManager_ja_Edit;
      v11 = [(TIKeyboardInputManager_ja_Edit *)&v22 deleteFromInput:input];
    }
  }

  if ([v9 length])
  {
    v12 = 0;
    v13 = *MEMORY[0x29EDB90B8];
    v14 = *(MEMORY[0x29EDB90B8] + 8);
    do
    {
      v15 = [v9 substringWithRange:{v12, 1}];
      v21.receiver = self;
      v21.super_class = TIKeyboardInputManager_ja_Edit;
      v16 = [(TIKeyboardInputManagerMecabra *)&v21 addInput:v15 flags:0 point:input firstDelete:v13, v14];

      ++v12;
    }

    while (v12 < [v9 length]);
  }

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20.receiver = self;
    v20.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_ja_Edit *)&v20 setInputIndex:?];
  }

  kanaString3 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  rawInputString = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
  [kanaString3 setInternalString:rawInputString withInputIndex:{-[TIKeyboardInputManager_ja_Edit rawInputIndex](self, "rawInputIndex")}];

  return 0;
}

- (NSString)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Edit;
  inputString = [(TIKeyboardInputManager_ja_Edit *)&v4 inputString];

  return inputString;
}

- (unsigned)rawInputIndex
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Edit;
  return [(TIKeyboardInputManager_ja_Edit *)&v3 inputIndex];
}

- (id)inputString
{
  prefixString = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  externalString = [kanaString externalString];
  v6 = externalString;
  if (externalString)
  {
    v7 = externalString;
  }

  else
  {
    v7 = &stru_2A2525CC0;
  }

  v8 = [prefixString stringByAppendingString:v7];

  return v8;
}

- (unsigned)inputCount
{
  inputString = [(TIKeyboardInputManager_ja_Edit *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (unsigned)inputIndex
{
  prefixString = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  v4 = [prefixString length];
  kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  externalIndex = [kanaString externalIndex];

  return externalIndex + v4;
}

- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_ja_Edit;
  v7 = [TIKeyboardInputManagerMecabra _adjustPhraseBoundaryInForwardDirection:sel__adjustPhraseBoundaryInForwardDirection_granularity_ granularity:?];
  if (granularity <= 1 && (v7 & 1) == 0)
  {
    inputIndex = [(TIKeyboardInputManager_ja_Edit *)self inputIndex];
    if (direction)
    {
      v9 = 1;
    }

    else
    {
      v10 = inputIndex;
      prefixString = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
      v12 = [prefixString length];

      if (v12 == v10)
      {
        [(TIKeyboardInputManager_ja_Edit *)self revertLastSegment];
      }

      v9 = -1;
    }

    inputCount = [(TIKeyboardInputManager_ja_Edit *)self inputCount];
    v14 = [(TIKeyboardInputManager_ja_Edit *)self inputIndex]+ v9;
    if (inputCount >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = inputCount;
    }

    [(TIKeyboardInputManager_ja_Edit *)self setInputIndex:v15];
  }

  return 1;
}

- (void)setRawInputString:(id)string
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Edit;
  [(TIKeyboardInputManager_mul *)&v3 setInput:string];
}

- (void)setInputIndex:(unsigned int)index
{
  prefixString = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  v6 = [prefixString length];

  if (v6 <= index)
  {
    indexCopy = index;
    prefixString2 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
    v9 = indexCopy - [prefixString2 length];
    kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [kanaString setExternalIndex:v9];

    kanaString2 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v12, sel_setInputIndex_, [kanaString2 internalIndex]);
  }
}

- (id)transliterate:(id)transliterate
{
  transliterateCopy = transliterate;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  if (!CFCharacterSetIsCharacterMember(v4, [transliterateCopy characterAtIndex:0]))
  {
    v5 = [Romakana kanaSymbol:transliterateCopy];

    transliterateCopy = v5;
  }

  return transliterateCopy;
}

- (NSArray)segments
{
  mutableSegments = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
  v3 = [mutableSegments copy];

  return v3;
}

- (NSString)prefixString
{
  segments = [(TIKeyboardInputManager_ja_Edit *)self segments];
  segments2 = [(TIKeyboardInputManager_ja_Edit *)self segments];
  v5 = [segments _surfaceStringWithin:{0, objc_msgSend(segments2, "count")}];

  return v5;
}

- (void)revertLastSegment
{
  mutableSegments = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
  v4 = [mutableSegments count];

  if (v4)
  {
    segments = [(TIKeyboardInputManager_ja_Edit *)self segments];
    lastObject = [segments lastObject];
    reading = [lastObject reading];

    mutableSegments2 = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
    [mutableSegments2 removeLastObject];

    kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    internalString = [kanaString internalString];

    if (internalString)
    {
      v11 = [reading stringByAppendingString:internalString];

      reading = v11;
    }

    kanaString2 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    externalString = [kanaString2 externalString];
    v14 = [externalString length];
    kanaString3 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v16 = [kanaString3 externalIndex] - v14;

    kanaString4 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [kanaString4 setInternalString:reading withInputIndex:{objc_msgSend(reading, "length")}];

    kanaString5 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    externalString2 = [kanaString5 externalString];
    v20 = [externalString2 length];
    kanaString6 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [kanaString6 setExternalIndex:v16 + v20];

    kanaString7 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    internalString2 = [kanaString7 internalString];
    [(TIKeyboardInputManager_ja_Edit *)self setRawInputString:internalString2];

    kanaString8 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v25.receiver = self;
    v25.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v25, sel_setInputIndex_, [kanaString8 internalIndex]);
  }
}

- (void)clearInput
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ja_Edit;
  [(TIKeyboardInputManagerMecabra *)&v5 clearInput];
  v3 = objc_opt_new();
  [(TIKeyboardInputManager_ja_Edit *)self setMutableSegments:v3];

  kanaString = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  [kanaString setInternalString:&stru_2A2525CC0 withInputIndex:0];
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  if ([(TIKeyboardInputManager_ja_Edit *)self shouldCancelIfPhraseBoundaryChanged])
  {

    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_ja_Edit *)&v5 setPhraseBoundary:boundary];
  }
}

- (unint64_t)phraseBoundary
{
  if ([(TIKeyboardInputManager_ja_Edit *)self shouldCancelIfPhraseBoundaryChanged])
  {
    return [(TIKeyboardInputManager_ja_Edit *)self inputIndex];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Edit;
  return [(TIKeyboardInputManager_ja_Edit *)&v4 phraseBoundary];
}

@end