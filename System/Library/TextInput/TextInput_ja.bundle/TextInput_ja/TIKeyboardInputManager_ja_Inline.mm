@interface TIKeyboardInputManager_ja_Inline
- (BOOL)isEditMode;
- (BOOL)shouldSkipCandidateGeneration;
- (TIKeyboardInputManager_ja_Inline)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search romajiMode:(BOOL)mode;
- (id)candidateResultSet;
- (id)convertString;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)rawInputString;
- (id)searchStringForMarkedText;
- (unsigned)inputCount;
- (unsigned)rawInputIndex;
- (void)abortComposition;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)commitComposition;
- (void)deleteLastCharacter:(unint64_t *)character;
- (void)generateInlineCandidate;
- (void)invokeEditMode;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)removeInlineCandidate:(id)candidate;
- (void)setMarkedText;
- (void)syncToKeyboardState:(id)state;
- (void)syncWithEditMode:(id)mode;
@end

@implementation TIKeyboardInputManager_ja_Inline

- (TIKeyboardInputManager_ja_Inline)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search romajiMode:(BOOL)mode
{
  modeCopy = mode;
  searchCopy = search;
  v19.receiver = self;
  v19.super_class = TIKeyboardInputManager_ja_Inline;
  v12 = [(TIKeyboardInputManagerMecabra *)&v19 initWithConfig:config keyboardState:state];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wordSearch, search);
    v14 = off_29F3788A8;
    if (!modeCopy)
    {
      v14 = off_29F3788A0;
    }

    v15 = [objc_alloc(*v14) initWithInternalString:&stru_2A2525CC0];
    markedTextBuffer = v13->_markedTextBuffer;
    v13->_markedTextBuffer = v15;

    v13->_romajiMode = modeCopy;
    [(TIMarkedTextBuffer *)v13->_markedTextBuffer setHardwareKeyboard:0];
    segments = v13->_segments;
    v13->_segments = MEMORY[0x29EDB8E90];
  }

  return v13;
}

- (id)inputString
{
  inlineCandidate = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
  label = [inlineCandidate label];
  v4 = label;
  if (label)
  {
    v5 = label;
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
  markedTextBuffer = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  externalString = [markedTextBuffer externalString];

  return externalString;
}

- (unsigned)inputCount
{
  inputString = [(TIKeyboardInputManager_ja_Inline *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (id)rawInputString
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  inputString = [(TIKeyboardInputManager_ja_Inline *)&v4 inputString];

  return inputString;
}

- (unsigned)rawInputIndex
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Inline;
  return [(TIKeyboardInputManager_ja_Inline *)&v3 inputIndex];
}

- (id)handleKeyboardInput:(id)input
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Inline;
  v4 = [(TIKeyboardInputManagerMecabra *)&v6 handleKeyboardInput:input];
  [(TIKeyboardInputManager_ja_Inline *)self generateInlineCandidate];

  return v4;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  if ([string length] && (objc_msgSend(string, "characterAtIndex:", 0) != 8616 || -[TIKeyboardInputManager_ja_Inline inputCount](self, "inputCount")))
  {
    segments = [(TIKeyboardInputManager_ja_Inline *)self segments];
    v10 = [segments count];

    if (v10 >= 4)
    {
      segments2 = [(TIKeyboardInputManager_ja_Inline *)self segments];
      firstObject = [segments2 firstObject];
      surface = [firstObject surface];

      if (surface)
      {
        output = [contextCopy output];
        [output insertText:surface];
      }

      v15 = objc_alloc_init(MEMORY[0x29EDBA050]);
      segments3 = [(TIKeyboardInputManager_ja_Inline *)self segments];
      v17 = [segments3 count];

      if (v17 >= 2)
      {
        v18 = 1;
        do
        {
          segments4 = [(TIKeyboardInputManager_ja_Inline *)self segments];
          v20 = [segments4 objectAtIndexedSubscript:v18];
          reading = [v20 reading];
          [v15 appendString:reading];

          ++v18;
          segments5 = [(TIKeyboardInputManager_ja_Inline *)self segments];
          v23 = [segments5 count];
        }

        while (v18 < v23);
      }

      [(TIKeyboardInputManager_mul *)self setInput:v15];
    }

    if ([inputCopy isMultitap])
    {
      [(TIKeyboardInputManager_ja_Inline *)self deleteLastCharacter:0];
    }

    if ([string length])
    {
      v24 = 0;
      v25 = *MEMORY[0x29EDB90B8];
      v26 = *(MEMORY[0x29EDB90B8] + 8);
      do
      {
        v27 = [string substringWithRange:{v24, 1}];
        v29.receiver = self;
        v29.super_class = TIKeyboardInputManager_ja_Inline;
        v30 = 0;
        v28 = [(TIKeyboardInputManagerMecabra *)&v29 addInput:v27 flags:0 point:&v30 firstDelete:v25, v26];

        ++v24;
      }

      while (v24 < [string length]);
    }

    [(TIKeyboardInputManager_ja_Inline *)self setMarkedText];
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  [(TIKeyboardInputManager_ja_Inline *)self deleteLastCharacter:input];
  segments = [(TIKeyboardInputManager_ja_Inline *)self segments];
  v5 = [segments count];

  if (v5 < 2)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  else
  {
    [(TIKeyboardInputManager_ja_Inline *)self invokeEditMode];
    v6 = objc_opt_new();
    [v6 setBackspace:1];
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v8 = [composingKeyboardInputManager handleKeyboardInput:v6];
  }

  return 0;
}

- (void)clearInput
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 clearInput];
  [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:0];
  markedTextBuffer = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  [markedTextBuffer clear];

  [(TIKeyboardInputManager_ja_Inline *)self setSegments:MEMORY[0x29EDB8E90]];
  [(TIKeyboardInputManager_ja_Inline *)self setMarkedText];
}

- (id)candidateResultSet
{
  if ([(TIKeyboardInputManager_ja_Inline *)self shouldSkipCandidateGeneration])
  {
    dummySet = 0;
  }

  else
  {
    dummySet = [MEMORY[0x29EDC7080] dummySet];
  }

  return dummySet;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (!composingKeyboardInputManager)
  {
    v6 = [TIKeyboardInputManager_ja_Candidates alloc];
    config = [(TIKeyboardInputManager_ja_Inline *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Inline *)self keyboardState];
    wordSearch = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
    composingKeyboardInputManager = [(TIKeyboardInputManager_ja_Candidates *)v6 initWithConfig:config keyboardState:keyboardState wordSearch:wordSearch];

    candidateRange = [(TIKeyboardInputManager_ja_Inline *)self candidateRange];
    [(TIKeyboardInputManager_ja_Candidates *)composingKeyboardInputManager setCandidateRange:candidateRange, v11];
    [(TIKeyboardInputManager_ja_Candidates *)composingKeyboardInputManager setHardwareKeyboardMode:0];
    [(TIKeyboardInputManager_ja_Candidates *)composingKeyboardInputManager setShowsPartialCandidate:1];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:composingKeyboardInputManager];
  }

  objc_initWeak(&location, self);
  [handlerCopy open];
  v12 = objc_alloc(MEMORY[0x29EDC7200]);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __87__TIKeyboardInputManager_ja_Inline_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v21 = &unk_29F379128;
  objc_copyWeak(&v23, &location);
  v22 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 initWithWrappedCandidateHandler:v13 resultSetHandlerBlock:&v18];
  [(TIKeyboardInputManager_ja_Candidates *)composingKeyboardInputManager openCandidateGenerationContextWithCandidateHandler:v14];

  convertString = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  v16 = [(TIKeyboardInputManager_ja_Inline *)self contextBeforeWithDesiredLength:20];
  geometryModelData = [(TIKeyboardInputManager_ja_Inline *)self geometryModelData];
  [(TIKeyboardInputManager_ja_Candidates *)composingKeyboardInputManager makeCandidatesWithInputString:convertString autoCommitString:&stru_2A2525CC0 contextString:v16 predictionEnabled:1 reanalysisMode:0 singlePhrase:0 geometoryModelData:geometryModelData, v18, v19, v20, v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)setMarkedText
{
  markedTextBuffer = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  rawInputString = [(TIKeyboardInputManager_ja_Inline *)self rawInputString];
  [markedTextBuffer setInternalString:rawInputString withInputIndex:{-[TIKeyboardInputManager_ja_Inline rawInputIndex](self, "rawInputIndex")}];

  markedTextBuffer2 = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  internalString = [markedTextBuffer2 internalString];
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_mul *)&v8 setInput:internalString];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_ja_Inline *)&v7 setMarkedText];
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_ja_Inline;
  v5 = [(TIKeyboardInputManagerMecabra *)&v9 handleAcceptedCandidate:candidate keyboardState:state];
  remainingInput = [(TIKeyboardInputManagerMecabra *)self remainingInput];
  v7 = [remainingInput length];

  if (v7)
  {
    [(TIKeyboardInputManager_ja_Inline *)self generateInlineCandidate];
  }

  return v5;
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  input = [candidateCopy input];
  v6 = [input length];

  convertString = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  if (v6 >= [convertString length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(TIKeyboardInputManager_ja_Inline *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    v8 = 0;
  }

  else
  {
    v9 = [convertString substringFromIndex:v6];
    [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v9];

    v8 = &stru_2A2525CC0;
  }

  return v8;
}

- (void)syncToKeyboardState:(id)state
{
  stateCopy = state;
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager syncToKeyboardState:stateCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Inline;
    [(TIKeyboardInputManagerBase *)&v6 syncToKeyboardState:stateCopy];
    [(TIKeyboardInputManager_ja_Inline *)self setPhraseBoundaryIfNecessary];
  }
}

- (void)commitComposition
{
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManager_ja_Inline *)self syncWithEditMode:composingKeyboardInputManager];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 commitComposition];
}

- (void)abortComposition
{
  if ([(TIKeyboardInputManager_ja_Inline *)self isEditMode])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [(TIKeyboardInputManager_ja_Inline *)self syncWithEditMode:composingKeyboardInputManager];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManagerMecabra *)&v4 abortComposition];
}

- (void)deleteLastCharacter:(unint64_t *)character
{
  v18 = 0;
  v19 = 0;
  markedTextBuffer = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  v17 = 0;
  [markedTextBuffer deleteFromInput:&v18 newInput:&v17 inputIndex:&v19];
  v6 = v17;

  if (v18 >= 1)
  {
    for (i = 0; i < v18; ++i)
    {
      v16.receiver = self;
      v16.super_class = TIKeyboardInputManager_ja_Inline;
      v8 = [(TIKeyboardInputManager_ja_Inline *)&v16 deleteFromInput:character];
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
      v13 = [(TIKeyboardInputManagerMecabra *)&v15 addInput:v12 flags:0 point:character firstDelete:v10, v11];

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
    wordSearch = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
    convertString = [(TIKeyboardInputManager_ja_Inline *)self convertString];
    v6 = [(TIKeyboardInputManager_ja_Inline *)self contextBeforeWithDesiredLength:20];
    geometryModelData = [(TIKeyboardInputManager_ja_Inline *)self geometryModelData];
    BYTE2(v16) = 1;
    LOWORD(v16) = 0;
    LOBYTE(v15) = 1;
    v17 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v3 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:convertString segmentBreakIndex:0 predictionEnabled:v6 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:1 target:v15 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:geometryModelData hardwareKeyboardMode:v16 logger:0];

    [(TIWordSearchJapaneseOperationGetCandidates *)v17 setReferenceMode:1];
    results = [(TIWordSearchJapaneseOperationGetCandidates *)v17 results];

    if (!results)
    {
      wordSearch2 = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
      [wordSearch2 performOperationAsync:v17];

      [(TIWordSearchJapaneseOperationGetCandidates *)v17 waitUntilFinished];
    }

    results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v17 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:results2];
    candidates = [results2 candidates];
    firstObject = [candidates firstObject];
    [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:firstObject];

    inlineCandidate = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
    v14 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:inlineCandidate phraseBoundary:1];
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

  convertString = [(TIKeyboardInputManager_ja_Inline *)self convertString];
  v3 = [convertString length] == 0;

  return v3;
}

- (void)removeInlineCandidate:(id)candidate
{
  candidateCopy = candidate;
  inlineCandidate = [(TIKeyboardInputManager_ja_Inline *)self inlineCandidate];
  if (inlineCandidate)
  {
    sortMethodGroups = [candidateCopy sortMethodGroups];
    v7 = [sortMethodGroups objectForKeyedSubscript:@"UI-Sort-Common"];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      candidates = [firstObject candidates];
      v10 = MEMORY[0x29EDBA0A8];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = __58__TIKeyboardInputManager_ja_Inline_removeInlineCandidate___block_invoke;
      v13[3] = &unk_29F379150;
      v14 = inlineCandidate;
      v11 = [v10 predicateWithBlock:v13];
      v12 = [candidates filteredOrderedSetUsingPredicate:v11];
      [firstObject setCandidates:v12];
    }
  }
}

- (BOOL)isEditMode
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)invokeEditMode
{
  v3 = [TIKeyboardInputManager_ja_Edit alloc];
  config = [(TIKeyboardInputManager_ja_Inline *)self config];
  keyboardState = [(TIKeyboardInputManager_ja_Inline *)self keyboardState];
  segments = [(TIKeyboardInputManager_ja_Inline *)self segments];
  wordSearch = [(TIKeyboardInputManager_ja_Inline *)self wordSearch];
  v8 = [(TIKeyboardInputManager_ja_Edit *)v3 initWithConfig:config keyboardState:keyboardState segments:segments wordSearch:wordSearch romajiMode:[(TIKeyboardInputManager_ja_Inline *)self romajiMode] conversionEnabled:1];

  [(TIKeyboardInputManager_ja_Edit *)v8 setShouldCancelIfPhraseBoundaryChanged:1];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

- (void)syncWithEditMode:(id)mode
{
  modeCopy = mode;
  [(TIKeyboardInputManager_ja_Inline *)self clearInput];
  segments = [modeCopy segments];
  v6 = [segments _readingStringWithin:{0, objc_msgSend(segments, "count")}];
  rawInputString = [modeCopy rawInputString];
  v8 = [v6 stringByAppendingString:rawInputString];

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Inline;
  [(TIKeyboardInputManager_mul *)&v10 setInput:v8];
  [(TIKeyboardInputManager_ja_Inline *)self setSegments:segments];
  inlineCandidate = [modeCopy inlineCandidate];

  [(TIKeyboardInputManager_ja_Inline *)self setInlineCandidate:inlineCandidate];
}

- (id)convertString
{
  markedTextBuffer = [(TIKeyboardInputManager_ja_Inline *)self markedTextBuffer];
  internalString = [markedTextBuffer internalString];

  return internalString;
}

@end