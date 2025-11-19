@interface TIKeyboardInputManager_ja_Inline
- (BOOL)isEditMode;
- (BOOL)shouldSkipCandidateGeneration;
- (TIKeyboardInputManager_ja_Inline)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5 romajiMode:(BOOL)a6;
- (id)candidateResultSet;
- (id)convertString;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)rawInputString;
- (id)searchStringForMarkedText;
- (unsigned)inputCount;
- (unsigned)rawInputIndex;
- (void)abortComposition;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)commitComposition;
- (void)deleteLastCharacter:(unint64_t *)a3;
- (void)generateInlineCandidate;
- (void)invokeEditMode;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)removeInlineCandidate:(id)a3;
- (void)setMarkedText;
- (void)syncToKeyboardState:(id)a3;
- (void)syncWithEditMode:(id)a3;
@end

@implementation TIKeyboardInputManager_ja_Inline

- (TIKeyboardInputManager_ja_Inline)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5 romajiMode:(BOOL)a6
{
  v6 = a6;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = TIKeyboardInputManager_ja_Inline;
  v12 = [(TIKeyboardInputManagerMecabra *)&v19 initWithConfig:a3 keyboardState:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wordSearch, a5);
    v14 = off_29F3788A8;
    if (!v6)
    {
      v14 = off_29F3788A0;
    }

    v15 = [objc_alloc(*v14) initWithInternalString:&stru_2A2525CC0];
    markedTextBuffer = v13->_markedTextBuffer;
    v13->_markedTextBuffer = v15;

    v13->_romajiMode = v6;
    [(TIMarkedTextBuffer *)v13->_markedTextBuffer setHardwareKeyboard:0];
    segments = v13->_segments;
    v13->_segments = MEMORY[0x29EDB8E90];
  }

  return v13;
}

- (id)inputString
{
  v2 = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
  v3 = [v2 label];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2A2525CC0;
  }

  v6 = v5;

  return v5;
}

- (id)searchStringForMarkedText
{
  v2 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v3 = [v2 externalString];

  return v3;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_ja_Inline *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (id)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  v2 = [(TIKeyboardInputManager_ja_Inline *)&v4 inputString];

  return v2;
}

- (unsigned)rawInputIndex
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Inline;
  return [(TIKeyboardInputManager_ja_Inline *)&v3 inputIndex];
}

- (id)handleKeyboardInput:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Inline;
  v4 = [(TIKeyboardInputManagerMecabra *)&v6 handleKeyboardInput:a3];
  [(TIKeyboardInputManager_ja_Inline *)self generateInlineCandidate];

  return v4;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  if ([v8 length] && (objc_msgSend(v8, "characterAtIndex:", 0) != 8616 || -[TIKeyboardInputManager_ja_Inline inputCount](self, "inputCount")))
  {
    v9 = [(TIKeyboardInputManager_ja_Inline *)self segments];
    v10 = [v9 count];

    if (v10 >= 4)
    {
      v11 = [(TIKeyboardInputManager_ja_Inline *)self segments];
      v12 = [v11 firstObject];
      v13 = [v12 surface];

      if (v13)
      {
        v14 = [v7 output];
        [v14 insertText:v13];
      }

      v15 = objc_alloc_init(MEMORY[0x29EDBA050]);
      v16 = [(TIKeyboardInputManager_ja_Inline *)self segments];
      v17 = [v16 count];

      if (v17 >= 2)
      {
        v18 = 1;
        do
        {
          v19 = [(TIKeyboardInputManager_ja_Inline *)self segments];
          v20 = [v19 objectAtIndexedSubscript:v18];
          v21 = [v20 reading];
          [v15 appendString:v21];

          ++v18;
          v22 = [(TIKeyboardInputManager_ja_Inline *)self segments];
          v23 = [v22 count];
        }

        while (v18 < v23);
      }

      [(TIKeyboardInputManager_mul *)self setInput:v15];
    }

    if ([v6 isMultitap])
    {
      [(TIKeyboardInputManager_ja_Inline *)self deleteLastCharacter:0];
    }

    if ([v8 length])
    {
      v24 = 0;
      v25 = *MEMORY[0x29EDB90B8];
      v26 = *(MEMORY[0x29EDB90B8] + 8);
      do
      {
        v27 = [v8 substringWithRange:{v24, 1}];
        v29.receiver = self;
        v29.super_class = TIKeyboardInputManager_ja_Inline;
        v30 = 0;
        v28 = [(TIKeyboardInputManagerMecabra *)&v29 addInput:v27 flags:0 point:&v30 firstDelete:v25, v26];

        ++v24;
      }

      while (v24 < [v8 length]);
    }

    [(TIKeyboardInputManager_ja_Inline *)self setMarkedText];
  }
}

- (id)deleteFromInput:(unint64_t *)a3
{
  [(TIKeyboardInputManager_ja_Inline *)self deleteLastCharacter:a3];
  v4 = [(TIKeyboardInputManager_ja_Inline *)self segments];
  v5 = [v4 count];

  if (v5 < 2)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  else
  {
    [(TIKeyboardInputManager_ja_Inline *)self invokeEditMode];
    v6 = objc_opt_new();
    [v6 setBackspace:1];
    v7 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v8 = [v7 handleKeyboardInput:v6];
  }

  return 0;
}

- (void)clearInput
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 clearInput];
  [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:0];
  v3 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  [v3 clear];

  [(TIKeyboardInputManager_ja_Inline *)self setSegments:MEMORY[0x29EDB8E90]];
  [(TIKeyboardInputManager_ja_Inline *)self setMarkedText];
}

- (id)candidateResultSet
{
  if ([(TIKeyboardInputManager_ja_Inline *)self shouldSkipCandidateGeneration])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x29EDC7080] dummySet];
  }

  return v2;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (!v5)
  {
    v6 = [TIKeyboardInputManager_ja_Candidates alloc];
    v7 = [(TIKeyboardInputManager_ja_Inline *)self config];
    v8 = [(TIKeyboardInputManager_ja_Inline *)self keyboardState];
    v9 = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
    v5 = [(TIKeyboardInputManager_ja_Candidates *)v6 initWithConfig:v7 keyboardState:v8 wordSearch:v9];

    v10 = [(TIKeyboardInputManager_ja_Inline *)self candidateRange];
    [(TIKeyboardInputManager_ja_Candidates *)v5 setCandidateRange:v10, v11];
    [(TIKeyboardInputManager_ja_Candidates *)v5 setHardwareKeyboardMode:0];
    [(TIKeyboardInputManager_ja_Candidates *)v5 setShowsPartialCandidate:1];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v5];
  }

  objc_initWeak(&location, self);
  [v4 open];
  v12 = objc_alloc(MEMORY[0x29EDC7200]);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __87__TIKeyboardInputManager_ja_Inline_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v21 = &unk_29F379128;
  objc_copyWeak(&v23, &location);
  v22 = v4;
  v13 = v4;
  v14 = [v12 initWithWrappedCandidateHandler:v13 resultSetHandlerBlock:&v18];
  [(TIKeyboardInputManager_ja_Candidates *)v5 openCandidateGenerationContextWithCandidateHandler:v14];

  v15 = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  v16 = [(TIKeyboardInputManager_ja_Inline *)self contextBeforeWithDesiredLength:20];
  v17 = [(TIKeyboardInputManager_ja_Inline *)self geometryModelData];
  [(TIKeyboardInputManager_ja_Candidates *)v5 makeCandidatesWithInputString:v15 autoCommitString:&stru_2A2525CC0 contextString:v16 predictionEnabled:1 reanalysisMode:0 singlePhrase:0 geometoryModelData:v17, v18, v19, v20, v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)setMarkedText
{
  v3 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v4 = [(TIKeyboardInputManager_ja_Inline *)self rawInputString];
  [v3 setInternalString:v4 withInputIndex:{-[TIKeyboardInputManager_ja_Inline rawInputIndex](self, "rawInputIndex")}];

  v5 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v6 = [v5 internalString];
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_mul *)&v8 setInput:v6];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_ja_Inline *)&v7 setMarkedText];
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_ja_Inline;
  v5 = [(TIKeyboardInputManagerMecabra *)&v9 handleAcceptedCandidate:a3 keyboardState:a4];
  v6 = [(TIKeyboardInputManagerMecabra *)self remainingInput];
  v7 = [v6 length];

  if (v7)
  {
    [(TIKeyboardInputManager_ja_Inline *)self generateInlineCandidate];
  }

  return v5;
}

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 input];
  v6 = [v5 length];

  v7 = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  if (v6 >= [v7 length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(TIKeyboardInputManager_ja_Inline *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    v8 = 0;
  }

  else
  {
    v9 = [v7 substringFromIndex:v6];
    [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v9];

    v8 = &stru_2A2525CC0;
  }

  return v8;
}

- (void)syncToKeyboardState:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v5 syncToKeyboardState:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Inline;
    [(TIKeyboardInputManagerBase *)&v6 syncToKeyboardState:v4];
    [(TIKeyboardInputManager_ja_Inline *)self setPhraseBoundaryIfNecessary];
  }
}

- (void)commitComposition
{
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManager_ja_Inline *)self syncWithEditMode:v3];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 commitComposition];
}

- (void)abortComposition
{
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManager_ja_Inline *)self syncWithEditMode:v3];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 abortComposition];
}

- (void)deleteLastCharacter:(unint64_t *)a3
{
  v18 = 0;
  v19 = 0;
  v5 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v17 = 0;
  [v5 deleteFromInput:&v18 newInput:&v17 inputIndex:&v19];
  v6 = v17;

  if (v18 >= 1)
  {
    for (i = 0; i < v18; ++i)
    {
      v16.receiver = self;
      v16.super_class = TIKeyboardInputManager_ja_Inline;
      v8 = [(TIKeyboardInputManager_ja_Inline *)&v16 deleteFromInput:a3];
    }
  }

  if ([v6 length])
  {
    v9 = 0;
    v10 = *MEMORY[0x29EDB90B8];
    v11 = *(MEMORY[0x29EDB90B8] + 8);
    do
    {
      v12 = [v6 substringWithRange:{v9, 1}];
      v15.receiver = self;
      v15.super_class = TIKeyboardInputManager_ja_Inline;
      v13 = [(TIKeyboardInputManagerMecabra *)&v15 addInput:v12 flags:0 point:a3 firstDelete:v10, v11];

      ++v9;
    }

    while (v9 < [v6 length]);
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14.receiver = self;
    v14.super_class = TIKeyboardInputManager_ja_Inline;
    [(TIKeyboardInputManager_ja_Inline *)&v14 setInputIndex:?];
  }
}

- (void)generateInlineCandidate
{
  if (![(TIKeyboardInputManager_ja_Inline *)self shouldSkipCandidateGeneration])
  {
    v3 = [TIWordSearchJapaneseOperationGetCandidates alloc];
    v4 = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
    v5 = [(TIKeyboardInputManager_ja_Inline *)self convertString];
    v6 = [(TIKeyboardInputManager_ja_Inline *)self contextBeforeWithDesiredLength:20];
    v7 = [(TIKeyboardInputManager_ja_Inline *)self geometryModelData];
    BYTE2(v16) = 1;
    LOWORD(v16) = 0;
    LOBYTE(v15) = 1;
    v17 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v3 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:v4 contextString:v5 segmentBreakIndex:0 predictionEnabled:v6 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v15 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:v7 hardwareKeyboardMode:v16 logger:0];

    [(TIWordSearchJapaneseOperationGetCandidates *)v17 setReferenceMode:1];
    v8 = [(TIWordSearchJapaneseOperationGetCandidates *)v17 results];

    if (!v8)
    {
      v9 = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
      [v9 performOperationAsync:v17];

      [(TIWordSearchJapaneseOperationGetCandidates *)v17 waitUntilFinished];
    }

    v10 = [(TIWordSearchJapaneseOperationGetCandidates *)v17 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v10];
    v11 = [v10 candidates];
    v12 = [v11 firstObject];
    [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:v12];

    v13 = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
    v14 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:v13 phraseBoundary:1];
    [(TIKeyboardInputManager_ja_Inline *)self setSegments:v14];

    [(TIKeyboardInputManager_ja_Inline *)self setMarkedText];
  }
}

- (BOOL)shouldSkipCandidateGeneration
{
  if (([(TIKeyboardInputManager_ja_Inline *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    return 1;
  }

  v4 = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  v3 = [v4 length] == 0;

  return v3;
}

- (void)removeInlineCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
  if (v5)
  {
    v6 = [v4 sortMethodGroups];
    v7 = [v6 objectForKeyedSubscript:@"UI-Sort-Common"];
    v8 = [v7 firstObject];

    if (v8)
    {
      v9 = [v8 candidates];
      v10 = MEMORY[0x29EDBA0A8];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = __58__TIKeyboardInputManager_ja_Inline_removeInlineCandidate___block_invoke;
      v13[3] = &unk_29F379150;
      v14 = v5;
      v11 = [v10 predicateWithBlock:v13];
      v12 = [v9 filteredOrderedSetUsingPredicate:v11];
      [v8 setCandidates:v12];
    }
  }
}

- (BOOL)isEditMode
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)invokeEditMode
{
  v3 = [TIKeyboardInputManager_ja_Edit alloc];
  v4 = [(TIKeyboardInputManager_ja_Inline *)self config];
  v5 = [(TIKeyboardInputManager_ja_Inline *)self keyboardState];
  v6 = [(TIKeyboardInputManager_ja_Inline *)self segments];
  v7 = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
  v8 = [(TIKeyboardInputManager_ja_Edit *)v3 initWithConfig:v4 keyboardState:v5 segments:v6 wordSearch:v7 romajiMode:[(TIKeyboardInputManager_ja_Inline *)self romajiMode] conversionEnabled:1];

  [(TIKeyboardInputManager_ja_Edit *)v8 setShouldCancelIfPhraseBoundaryChanged:1];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

- (void)syncWithEditMode:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManager_ja_Inline *)self clearInput];
  v5 = [v4 segments];
  v6 = [v5 _readingStringWithin:{0, objc_msgSend(v5, "count")}];
  v7 = [v4 rawInputString];
  v8 = [v6 stringByAppendingString:v7];

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_mul *)&v10 setInput:v8];
  [(TIKeyboardInputManager_ja_Inline *)self setSegments:v5];
  v9 = [v4 inlineCandidate];

  [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:v9];
}

- (id)convertString
{
  v2 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v3 = [v2 internalString];

  return v3;
}

@end