@interface TIKeyboardInputManager_ja_Edit
- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (BOOL)handleBackspace:(id)a3;
- (BOOL)handleCancelEditMode:(id)a3;
- (BOOL)handleEsc:(id)a3;
- (BOOL)handleSpaceKey:(id)a3;
- (NSArray)segments;
- (NSString)prefixString;
- (NSString)rawInputString;
- (TIKeyboardInputManager_ja_Edit)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 wordSearch:(id)a6 romajiMode:(BOOL)a7 conversionEnabled:(BOOL)a8;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)transliterate:(id)a3;
- (unint64_t)phraseBoundary;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (unsigned)rawInputIndex;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)dealloc;
- (void)revertLastSegment;
- (void)setInputIndex:(unsigned int)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)setRawInputString:(id)a3;
@end

@implementation TIKeyboardInputManager_ja_Edit

- (TIKeyboardInputManager_ja_Edit)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 wordSearch:(id)a6 romajiMode:(BOOL)a7 conversionEnabled:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = TIKeyboardInputManager_ja_Edit;
  v16 = [(TIKeyboardInputManagerMecabra *)&v27 initWithConfig:a3 keyboardState:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wordSearch, a6);
    [(TIKeyboardInputManager_ja_Edit *)v17 setEscapeKeyPressed:0];
    if (v8)
    {
      v18 = [v14 subarrayWithRange:{0, objc_msgSend(v14, "count") - 1}];
      v19 = [v18 mutableCopy];
      [(TIKeyboardInputManager_ja_Edit *)v17 setMutableSegments:v19];

      v20 = [v14 lastObject];
      v21 = [v20 reading];
    }

    else
    {
      v22 = [MEMORY[0x29EDB8DE8] array];
      [(TIKeyboardInputManager_ja_Edit *)v17 setMutableSegments:v22];

      v21 = [v14 _readingStringWithin:{0, objc_msgSend(v14, "count")}];
    }

    v26.receiver = v17;
    v26.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_mul *)&v26 setInput:v21];
    v23 = off_29F3788A8;
    if (!v9)
    {
      v23 = off_29F3788A0;
    }

    v24 = [objc_alloc(*v23) initWithInternalString:v21];
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

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManager_ja_Edit *)self handleBackspace:v4]|| [(TIKeyboardInputManager_ja_Edit *)self handleSpaceKey:v4]|| [(TIKeyboardInputManager_ja_Edit *)self handleEsc:v4])
  {
    v5 = objc_opt_new();
  }

  else if ([(TIKeyboardInputManager_ja_Edit *)self handleCancelEditMode:v4])
  {
    v5 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ja_Edit;
    v7 = [(TIKeyboardInputManagerMecabra *)&v10 handleKeyboardInput:v4];
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

- (BOOL)handleCancelEditMode:(id)a3
{
  v4 = [(TIKeyboardInputManager_ja_Edit *)self inputCount];
  v5 = [(TIKeyboardInputManager_ja_Edit *)self inputIndex];
  if (v4 == v5)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return v4 == v5;
}

- (BOOL)handleBackspace:(id)a3
{
  v4 = a3;
  v5 = [v4 isBackspace];
  if (v5)
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ja_Edit;
    v6 = [(TIKeyboardInputManagerMecabra *)&v8 handleKeyboardInput:v4];
    if (![(TIKeyboardInputManager_ja_Edit *)self inputCount])
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return v5;
}

- (BOOL)handleEsc:(id)a3
{
  v4 = [a3 string];
  v5 = [v4 isEqualToString:@"\x1B"];

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

- (BOOL)handleSpaceKey:(id)a3
{
  v4 = [a3 string];
  v5 = [v4 _isSpace];

  if (v5)
  {
    v6 = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
    v7 = [(TIKeyboardInputManager_ja_Edit *)self contextBeforeWithDesiredLength:20];
    v8 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];

    if (v8)
    {
      v9 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
      v10 = [v7 stringByAppendingString:v9];

      v7 = v10;
    }

    v11 = [TIWordSearchJapaneseOperationGetCandidates alloc];
    v12 = [(TIKeyboardInputManager_ja_Edit *)self wordSearch];
    BYTE2(v23) = 1;
    LOWORD(v23) = 0;
    LOBYTE(v22) = 1;
    v13 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v11 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:v12 contextString:v6 segmentBreakIndex:0 predictionEnabled:v7 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v22 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:0 hardwareKeyboardMode:v23 logger:0];

    [(TIWordSearchJapaneseOperationGetCandidates *)v13 setAllowIncompleteRomaji:1];
    [(TIWordSearchJapaneseOperationGetCandidates *)v13 setReferenceMode:1];
    v14 = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];

    if (!v14)
    {
      v15 = [(TIKeyboardInputManager_ja_Edit *)self wordSearch];
      [v15 performOperationAsync:v13];

      [(TIWordSearchJapaneseOperationGetCandidates *)v13 waitUntilFinished];
    }

    v16 = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v16];

    v17 = [(TIWordSearchJapaneseOperationGetCandidates *)v13 results];
    v18 = [v17 candidates];
    v19 = [v18 firstObject];

    if (v19)
    {
      objc_storeStrong(&self->_inlineCandidate, v19);
      v20 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
      [v20 setInternalString:&stru_2A2525CC0 withInputIndex:0];

      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return v5;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v5 = [a3 string];
  v6 = v5;
  if (v5 && [v5 length])
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

    v13 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v14 = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
    [v13 setInternalString:v14 withInputIndex:{-[TIKeyboardInputManager_ja_Edit rawInputIndex](self, "rawInputIndex")}];

    v15 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v16 = [v15 internalString];
    v19.receiver = self;
    v19.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_mul *)&v19 setInput:v16];

    v17 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v18.receiver = self;
    v18.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v18, sel_setInputIndex_, [v17 internalIndex]);
  }
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v5 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  if ([v5 externalIndex] >= 2)
  {
  }

  else
  {
    v6 = [(TIKeyboardInputManager_ja_Edit *)self segments];
    v7 = [v6 count];

    if (v7)
    {
      [(TIKeyboardInputManager_ja_Edit *)self revertLastSegment];
    }
  }

  v24 = 0;
  v25 = 0;
  v8 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  v23 = 0;
  [v8 deleteFromInput:&v24 newInput:&v23 inputIndex:&v25];
  v9 = v23;

  if (v24 >= 1)
  {
    for (i = 0; i < v24; ++i)
    {
      v22.receiver = self;
      v22.super_class = TIKeyboardInputManager_ja_Edit;
      v11 = [(TIKeyboardInputManager_ja_Edit *)&v22 deleteFromInput:a3];
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
      v16 = [(TIKeyboardInputManagerMecabra *)&v21 addInput:v15 flags:0 point:a3 firstDelete:v13, v14];

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

  v17 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  v18 = [(TIKeyboardInputManager_ja_Edit *)self rawInputString];
  [v17 setInternalString:v18 withInputIndex:{-[TIKeyboardInputManager_ja_Edit rawInputIndex](self, "rawInputIndex")}];

  return 0;
}

- (NSString)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Edit;
  v2 = [(TIKeyboardInputManager_ja_Edit *)&v4 inputString];

  return v2;
}

- (unsigned)rawInputIndex
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Edit;
  return [(TIKeyboardInputManager_ja_Edit *)&v3 inputIndex];
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  v4 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  v5 = [v4 externalString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2A2525CC0;
  }

  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_ja_Edit *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  v4 = [v3 length];
  v5 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  v6 = [v5 externalIndex];

  return v6 + v4;
}

- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_ja_Edit;
  v7 = [TIKeyboardInputManagerMecabra _adjustPhraseBoundaryInForwardDirection:sel__adjustPhraseBoundaryInForwardDirection_granularity_ granularity:?];
  if (a4 <= 1 && (v7 & 1) == 0)
  {
    v8 = [(TIKeyboardInputManager_ja_Edit *)self inputIndex];
    if (a3)
    {
      v9 = 1;
    }

    else
    {
      v10 = v8;
      v11 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
      v12 = [v11 length];

      if (v12 == v10)
      {
        [(TIKeyboardInputManager_ja_Edit *)self revertLastSegment];
      }

      v9 = -1;
    }

    v13 = [(TIKeyboardInputManager_ja_Edit *)self inputCount];
    v14 = [(TIKeyboardInputManager_ja_Edit *)self inputIndex]+ v9;
    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    [(TIKeyboardInputManager_ja_Edit *)self setInputIndex:v15];
  }

  return 1;
}

- (void)setRawInputString:(id)a3
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Edit;
  [(TIKeyboardInputManager_mul *)&v3 setInput:a3];
}

- (void)setInputIndex:(unsigned int)a3
{
  v5 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
  v6 = [v5 length];

  if (v6 <= a3)
  {
    v7 = a3;
    v8 = [(TIKeyboardInputManager_ja_Edit *)self prefixString];
    v9 = v7 - [v8 length];
    v10 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [v10 setExternalIndex:v9];

    v11 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v12, sel_setInputIndex_, [v11 internalIndex]);
  }
}

- (id)transliterate:(id)a3
{
  v3 = a3;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  if (!CFCharacterSetIsCharacterMember(v4, [v3 characterAtIndex:0]))
  {
    v5 = [Romakana kanaSymbol:v3];

    v3 = v5;
  }

  return v3;
}

- (NSArray)segments
{
  v2 = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
  v3 = [v2 copy];

  return v3;
}

- (NSString)prefixString
{
  v3 = [(TIKeyboardInputManager_ja_Edit *)self segments];
  v4 = [(TIKeyboardInputManager_ja_Edit *)self segments];
  v5 = [v3 _surfaceStringWithin:{0, objc_msgSend(v4, "count")}];

  return v5;
}

- (void)revertLastSegment
{
  v3 = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TIKeyboardInputManager_ja_Edit *)self segments];
    v6 = [v5 lastObject];
    v7 = [v6 reading];

    v8 = [(TIKeyboardInputManager_ja_Edit *)self mutableSegments];
    [v8 removeLastObject];

    v9 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v10 = [v9 internalString];

    if (v10)
    {
      v11 = [v7 stringByAppendingString:v10];

      v7 = v11;
    }

    v12 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v13 = [v12 externalString];
    v14 = [v13 length];
    v15 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v16 = [v15 externalIndex] - v14;

    v17 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [v17 setInternalString:v7 withInputIndex:{objc_msgSend(v7, "length")}];

    v18 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v19 = [v18 externalString];
    v20 = [v19 length];
    v21 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    [v21 setExternalIndex:v16 + v20];

    v22 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v23 = [v22 internalString];
    [(TIKeyboardInputManager_ja_Edit *)self setRawInputString:v23];

    v24 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
    v25.receiver = self;
    v25.super_class = TIKeyboardInputManager_ja_Edit;
    -[TIKeyboardInputManager_ja_Edit setInputIndex:](&v25, sel_setInputIndex_, [v24 internalIndex]);
  }
}

- (void)clearInput
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ja_Edit;
  [(TIKeyboardInputManagerMecabra *)&v5 clearInput];
  v3 = objc_opt_new();
  [(TIKeyboardInputManager_ja_Edit *)self setMutableSegments:v3];

  v4 = [(TIKeyboardInputManager_ja_Edit *)self kanaString];
  [v4 setInternalString:&stru_2A2525CC0 withInputIndex:0];
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  if ([(TIKeyboardInputManager_ja_Edit *)self shouldCancelIfPhraseBoundaryChanged])
  {

    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja_Edit;
    [(TIKeyboardInputManager_ja_Edit *)&v5 setPhraseBoundary:a3];
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