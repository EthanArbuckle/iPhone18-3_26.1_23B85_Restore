@interface TIKeyboardInputManager_ja_SegmentPicker
- (BOOL)closeCandidateGenerationContextWithResults:(id)results;
- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (NSArray)segments;
- (TIKeyboardInputManager_ja_SegmentPicker)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at wordSearch:(id)search;
- (id)candidateResultSet;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (unint64_t)index;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_selectPartialCandidate:(id)candidate forOperation:(id)operation;
- (void)finishSyncToKeyboardState;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)selectCandidate:(id)candidate;
- (void)setPhraseBoundary:(unint64_t)boundary;
@end

@implementation TIKeyboardInputManager_ja_SegmentPicker

- (TIKeyboardInputManager_ja_SegmentPicker)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at wordSearch:(id)search
{
  segmentsCopy = segments;
  searchCopy = search;
  v18.receiver = self;
  v18.super_class = TIKeyboardInputManager_ja_SegmentPicker;
  v14 = [(TIKeyboardInputManagerMecabra *)&v18 initWithConfig:config keyboardState:state];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_wordSearch, search);
    v16 = [[TILiveConversionSegments alloc] initWithSegments:segmentsCopy at:at];
    [(TIKeyboardInputManager_ja_SegmentPicker *)v15 setLiveConversionSegments:v16];

    [(TIKeyboardInputManager_ja_SegmentPicker *)v15 setSupportsSetPhraseBoundary:1];
    [(TIKeyboardInputManager_ja_SegmentPicker *)v15 setShouldShowCandidateWindow:1];
  }

  return v15;
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
  if ([inputCopy transliterationType])
  {
    transliterationType = [inputCopy transliterationType];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:transliterationType];
LABEL_5:
    v8 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    goto LABEL_6;
  }

  string = [inputCopy string];

  _isSpace = [string _isSpace];
  if (_isSpace)
  {
    [(TIKeyboardInputManager_ja_SegmentPicker *)self setShouldShowCandidateWindow:1];
    goto LABEL_5;
  }

  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  [liveConversionSegments commit];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  v8 = 0;
LABEL_6:

  return v8;
}

- (id)markedText
{
  rawInputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
  inputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self inputString];
  inputIndex = [(TIKeyboardInputManager_ja_SegmentPicker *)self inputIndex];
  searchStringForMarkedText = [(TIKeyboardInputManager_ja_SegmentPicker *)self searchStringForMarkedText];
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  segmentRanges = [liveConversionSegments segmentRanges];

  liveConversionSegments2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  autoCommitString = [liveConversionSegments2 autoCommitString];
  v11 = [autoCommitString length];

  v12 = MEMORY[0x29EDC70A0];
  v13 = [segmentRanges copy];
  index = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  lastInputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self lastInputString];
  v16 = [v12 intermediateTextWithInputString:rawInputString displayString:inputString selectionLocation:inputIndex searchString:searchStringForMarkedText candidateOffset:v11 liveConversionSegments:v13 highlightSegmentIndex:index lastInputString:lastInputString];

  return v16;
}

- (id)rawInputString
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  rawInputString = [liveConversionSegments rawInputString];

  return rawInputString;
}

- (id)inputString
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  inputString = [liveConversionSegments inputString];

  return inputString;
}

- (unsigned)inputIndex
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  inputIndex = [liveConversionSegments inputIndex];

  return inputIndex;
}

- (unsigned)inputCount
{
  rawInputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
  v3 = [rawInputString length];

  return v3;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  [liveConversionSegments setPhraseBoundary:boundary];
}

- (unint64_t)index
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  index = [liveConversionSegments index];

  return index;
}

- (NSArray)segments
{
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  rawSegments = [liveConversionSegments rawSegments];

  return rawSegments;
}

- (id)candidateResultSet
{
  index = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  segments = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  if (index >= [segments count])
  {
    goto LABEL_7;
  }

  shouldShowCandidateWindow = [(TIKeyboardInputManager_ja_SegmentPicker *)self shouldShowCandidateWindow];

  if (shouldShowCandidateWindow)
  {
    segments2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
    v7 = [segments2 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];
    segments = [v7 reading];

    if ([segments length])
    {
      composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [composingKeyboardInputManager setAutoSelectTransliterateCandidate:{-[TIKeyboardInputManager_ja_SegmentPicker transliterationType](self, "transliterationType")}];
      segments3 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
      v10 = [segments3 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];
      surface = [v10 surface];
      [composingKeyboardInputManager setAutoSelectCandidate:surface];

      liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
      autoCommitString = [liveConversionSegments autoCommitString];
      v14 = [(TIKeyboardInputManager_ja_SegmentPicker *)self contextBeforeWithDesiredLength:20];
      geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v16 = [composingKeyboardInputManager makeCandidatesWithInputString:segments autoCommitString:autoCommitString contextString:v14 predictionEnabled:0 reanalysisMode:1 singlePhrase:1 geometoryModelData:geometryDataArray];

      dummySet = [MEMORY[0x29EDC7080] dummySet];
      if (v16)
      {
        wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        rawInputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
        [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:wordSearchCandidateResultSet withInput:rawInputString];

        wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        v21 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet2];

        dummySet = v21;
      }

      goto LABEL_8;
    }

LABEL_7:
    dummySet = 0;
LABEL_8:

    goto LABEL_10;
  }

  dummySet = 0;
LABEL_10:

  return dummySet;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (!composingKeyboardInputManager)
  {
    v6 = [TIKeyboardInputManager_ja_Candidates alloc];
    config = [(TIKeyboardInputManager_ja_SegmentPicker *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_SegmentPicker *)self keyboardState];
    wordSearch = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
    v10 = [(TIKeyboardInputManager_ja_Candidates *)v6 initWithConfig:config keyboardState:keyboardState wordSearch:wordSearch];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v10];

    candidateRange = [(TIKeyboardInputManager_ja_SegmentPicker *)self candidateRange];
    v13 = v12;
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 setCandidateRange:{candidateRange, v13}];
  }

  [handlerCopy open];
  composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v16 = objc_alloc(MEMORY[0x29EDC7200]);
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __94__TIKeyboardInputManager_ja_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v22 = &unk_29F3791E8;
  selfCopy = self;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = [v16 initWithWrappedCandidateHandler:v17 resultSetHandlerBlock:&v19];
  [composingKeyboardInputManager3 openCandidateGenerationContextWithCandidateHandler:{v18, v19, v20, v21, v22, selfCopy}];
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)results
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  [composingKeyboardInputManager cancelComposition];

  return 1;
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isTransliterationCandidate = [candidateCopy isTransliterationCandidate];
  }

  else
  {
    isTransliterationCandidate = 1;
  }

  shouldShowCandidateWindow = [(TIKeyboardInputManager_ja_SegmentPicker *)self shouldShowCandidateWindow];
  liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v8 = liveConversionSegments;
  if (shouldShowCandidateWindow && isTransliterationCandidate)
  {
    currentCandidate = [liveConversionSegments currentCandidate];
    v10 = [currentCandidate isEqual:candidateCopy];

    if ((v10 & 1) == 0)
    {
      [(TIKeyboardInputManager_ja_SegmentPicker *)self selectCandidate:candidateCopy];
    }

    rawInputString = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
    keyboardState = [(TIKeyboardInputManager_ja_SegmentPicker *)self keyboardState];
    [keyboardState setInputForMarkedText:rawInputString];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setShouldShowCandidateWindow:0];
    candidate = &stru_2A2525CC0;
  }

  else
  {
    [liveConversionSegments clear];

    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    candidate = [candidateCopy candidate];
  }

  return candidate;
}

- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  currentCandidate = [stateCopy currentCandidate];
  index = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  segments = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v11 = [segments count];

  if (index >= v11)
  {
    goto LABEL_6;
  }

  segments2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v13 = [segments2 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];

  if (!currentCandidate)
  {

LABEL_6:
    [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:0];
    goto LABEL_7;
  }

  reading = [v13 reading];
  v15 = [reading length];
  input = [currentCandidate input];
  v17 = [input length];

  [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:0];
  if (v15 <= v17)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v18 = MEMORY[0x29EDA3C60](handlerCopy);
  syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
  self->_syncKeyboardStateHandler = v18;

  [(TIKeyboardInputManager_ja_SegmentPicker *)self setSupportsSetPhraseBoundary:0];
  v22.receiver = self;
  v22.super_class = TIKeyboardInputManager_ja_SegmentPicker;
  [(TIKeyboardInputManagerBase *)&v22 syncToKeyboardState:stateCopy];
  v20 = 1;
  [(TIKeyboardInputManager_ja_SegmentPicker *)self setSupportsSetPhraseBoundary:1];
LABEL_8:

  return v20;
}

- (void)selectCandidate:(id)candidate
{
  candidateCopy = candidate;
  index = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  segments = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v6 = [segments count];

  if (index < v6)
  {
    segments2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
    v8 = [segments2 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];

    reading = [v8 reading];
    v10 = [reading length];
    input = [candidateCopy input];
    v12 = [input length];

    if (v10 <= v12)
    {
      liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
      [liveConversionSegments didUpdateCandidate:candidateCopy with:0];
    }

    else
    {
      [(TIKeyboardInputManager_ja_SegmentPicker *)self setCurrentCandidate:candidateCopy];
      reading2 = [v8 reading];
      input2 = [candidateCopy input];
      liveConversionSegments = [reading2 substringFromIndex:{objc_msgSend(input2, "length")}];

      v16 = [TIWordSearchJapaneseOperationGetCandidates alloc];
      wordSearch = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
      v18 = [(TIKeyboardInputManager_ja_SegmentPicker *)self contextBeforeWithDesiredLength:20];
      geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
      BYTE2(v25) = 1;
      LOWORD(v25) = 0;
      LOBYTE(v24) = 1;
      v20 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v16 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:liveConversionSegments segmentBreakIndex:0 predictionEnabled:v18 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:0 target:v24 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:geometryModelData hardwareKeyboardMode:v25 logger:0];

      [(TIWordSearchJapaneseOperationGetCandidates *)v20 setSinglePhrase:1];
      results = [(TIWordSearchJapaneseOperationGetCandidates *)v20 results];

      if (!results)
      {
        wordSearch2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
        [wordSearch2 performOperationAsync:v20];

        [(TIWordSearchJapaneseOperationGetCandidates *)v20 waitUntilFinished];
      }

      results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v20 results];
      [(TIKeyboardInputManager_ja_SegmentPicker *)self _selectPartialCandidate:results2 forOperation:v20];
    }
  }
}

- (void)_selectPartialCandidate:(id)candidate forOperation:(id)operation
{
  candidates = [candidate candidates];
  firstObject = [candidates firstObject];

  if (firstObject)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDC7250]);
    input = [firstObject input];
    [v6 setReading:input];

    candidate = [firstObject candidate];
    [v6 setSurface:candidate];

    liveConversionSegments = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
    currentCandidate = [(TIKeyboardInputManager_ja_SegmentPicker *)self currentCandidate];
    [liveConversionSegments didUpdateCandidate:currentCandidate with:v6];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setCurrentCandidate:0];
    [(TIKeyboardInputManager_ja_SegmentPicker *)self finishSyncToKeyboardState];
  }
}

- (void)finishSyncToKeyboardState
{
  if (self->_syncKeyboardStateHandler)
  {
    syncKeyboardStateHandler = [(TIKeyboardInputManager_ja_SegmentPicker *)self syncKeyboardStateHandler];
    keyboardConfiguration = [(TIKeyboardInputManagerMecabra *)self keyboardConfiguration];
    (syncKeyboardStateHandler)[2](syncKeyboardStateHandler, keyboardConfiguration);

    syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
    self->_syncKeyboardStateHandler = 0;
  }
}

@end