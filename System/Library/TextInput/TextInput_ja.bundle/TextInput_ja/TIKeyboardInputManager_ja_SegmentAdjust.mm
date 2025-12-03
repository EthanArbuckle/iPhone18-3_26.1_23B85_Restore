@interface TIKeyboardInputManager_ja_SegmentAdjust
- (TIKeyboardInputManager_ja_SegmentAdjust)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at romajiEnabled:(BOOL)enabled wordSearch:(id)search;
- (id)candidateResultSet;
- (id)handleKeyboardInput:(id)input;
- (id)keyboardBehaviors;
- (unsigned)inputIndex;
- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)commitComposition;
- (void)composeTextWith:(id)with;
- (void)generateNewSegments:(unint64_t)segments;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)updateInputString;
@end

@implementation TIKeyboardInputManager_ja_SegmentAdjust

- (TIKeyboardInputManager_ja_SegmentAdjust)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at romajiEnabled:(BOOL)enabled wordSearch:(id)search
{
  segmentsCopy = segments;
  searchCopy = search;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  v17 = [(TIKeyboardInputManagerMecabra *)&v20 initWithConfig:config keyboardState:state];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_segments, segments);
    v18->_index = at;
    objc_storeStrong(&v18->_wordSearch, search);
    v18->_romajiEnabled = enabled;
    [(TIKeyboardInputManager_ja_SegmentAdjust *)v18 updateInputString];
  }

  return v18;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7040]);

  return v2;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (![inputCopy transliterationType])
  {
    string = [inputCopy string];
    _isSpace = [string _isSpace];

    if ((_isSpace & 1) == 0)
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return v6;
}

- (void)updateInputString
{
  segments = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  segments2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v5 = [segments _surfaceStringWithin:{0, objc_msgSend(segments2, "count")}];
  inputString = self->_inputString;
  self->_inputString = v5;

  segments3 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  index = [(TIKeyboardInputManager_ja_SegmentAdjust *)self index];
  segments4 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v10 = [segments3 _readingStringWithin:{index, objc_msgSend(segments4, "count") - -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  composingInputString = self->_composingInputString;
  self->_composingInputString = v10;

  segments5 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v13 = [segments5 _surfaceStringWithin:{0, -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  contextString = self->_contextString;
  self->_contextString = v13;

  segments6 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v16 = [segments6 subarrayWithRange:{0, -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  contextSegments = self->_contextSegments;
  self->_contextSegments = v16;

  segments7 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v19 = [segments7 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  reading = [v19 reading];

  if ([(TIKeyboardInputManager_ja_SegmentAdjust *)self romajiEnabled])
  {
    v20 = [Romakana hiraganaString:reading mappingArray:0];
    self->_segmentLength = [v20 length];
  }

  else
  {
    self->_segmentLength = [reading length];
  }
}

- (unsigned)inputIndex
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    inputIndex = [composingKeyboardInputManager2 inputIndex];
  }

  else
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextString];
    v6 = [composingKeyboardInputManager2 length];
    inputIndex = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segmentLength]+ v6;
  }

  return inputIndex;
}

- (void)generateNewSegments:(unint64_t)segments
{
  v25 = 0;
  v26 = 0;
  if ([(TIKeyboardInputManager_ja_SegmentAdjust *)self romajiEnabled])
  {
    composingInputString = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v25 = [Romakana splitRomaji:composingInputString at:segments];
    v26 = v6;
  }

  else
  {
    composingInputString2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v23 = [composingInputString2 substringToIndex:segments];
    composingInputString3 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v24 = [composingInputString3 substringFromIndex:segments];
    __copy_assignment_8_8_s0_s8(&v25, &v23);
  }

  v9 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  wordSearch = self->_wordSearch;
  if (v26)
  {
    v11 = v26;
  }

  else
  {
    v11 = &stru_2A2525CC0;
  }

  v12 = [v25 stringByAppendingString:v11];
  v13 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextBeforeWithDesiredLength:20];
  contextString = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextString];
  v15 = [v13 stringByAppendingString:contextString];
  v16 = [v25 length];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v22) = 1;
  LOWORD(v22) = 0;
  LOBYTE(v21) = 1;
  v19 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v9 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:v12 segmentBreakIndex:0 predictionEnabled:v15 reanalysisMode:v17 autocapitalizationType:0 target:v21 action:0 geometryModelData:self flickUsed:sel__notifyUpdateCandidates_forOperation_ phraseBoundarySet:geometryModelData hardwareKeyboardMode:v22 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v19 setSinglePhrase:1];
  wordSearch = [(TIKeyboardInputManager_ja_SegmentAdjust *)self wordSearch];
  [wordSearch performOperationAsync:v19];
}

- (id)candidateResultSet
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    candidateResultSet = [composingKeyboardInputManager2 candidateResultSet];
  }

  else
  {
    candidateResultSet = [MEMORY[0x29EDC7080] dummySet];
  }

  return candidateResultSet;
}

- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  v25[1] = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidatesCopy];
  candidates = [candidatesCopy candidates];
  firstObject = [candidates firstObject];

  v8 = objc_alloc_init(MEMORY[0x29EDC7250]);
  input = [firstObject input];
  [v8 setReading:input];

  candidate = [firstObject candidate];
  [v8 setSurface:candidate];

  candidateAfterSegmentBreak = [candidatesCopy candidateAfterSegmentBreak];

  v12 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:candidateAfterSegmentBreak phraseBoundary:1];

  contextSegments = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextSegments];
  v25[0] = v8;
  v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v25 count:1];
  v15 = [v14 arrayByAddingObjectsFromArray:v12];
  v16 = [contextSegments arrayByAddingObjectsFromArray:v15];
  segments = self->_segments;
  self->_segments = v16;

  v18 = [TIKeyboardInputManager_ja_SegmentPicker alloc];
  config = [(TIKeyboardInputManager_ja_SegmentAdjust *)self config];
  keyboardState = [(TIKeyboardInputManager_ja_SegmentAdjust *)self keyboardState];
  v21 = self->_segments;
  contextSegments2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextSegments];
  v23 = -[TIKeyboardInputManager_ja_SegmentPicker initWithConfig:keyboardState:segments:at:wordSearch:](v18, "initWithConfig:keyboardState:segments:at:wordSearch:", config, keyboardState, v21, [contextSegments2 count], self->_wordSearch);
  [(TIKeyboardInputManager_ja_SegmentAdjust *)self composeTextWith:v23];

  v24 = *MEMORY[0x29EDCA608];
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    candidateRange = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateRange];
    v7 = v6;
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 setCandidateRange:{candidateRange, v7}];

    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager3 openCandidateGenerationContextWithCandidateHandler:handlerCopy];
  }

  else
  {
    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setCandidateHandlerForOpenRequest:handlerCopy];
  }
}

- (void)composeTextWith:(id)with
{
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  [(TIKeyboardInputManagerMecabra *)&v13 composeTextWith:with];
  candidateHandlerForOpenRequest = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateHandlerForOpenRequest];

  if (candidateHandlerForOpenRequest)
  {
    candidateRange = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateRange];
    v7 = v6;
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager setCandidateRange:{candidateRange, v7}];

    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    candidateHandlerForOpenRequest2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateHandlerForOpenRequest];
    [composingKeyboardInputManager2 openCandidateGenerationContextWithCandidateHandler:candidateHandlerForOpenRequest2];

    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setCandidateHandlerForOpenRequest:0];
    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    candidateResultSet = [composingKeyboardInputManager3 candidateResultSet];
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
    -[TIKeyboardInputManager_ja_SegmentAdjust setIndex:](self, "setIndex:", [composingKeyboardInputManager2 index]);

    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    segments = [composingKeyboardInputManager3 segments];
    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setSegments:segments];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  [(TIKeyboardInputManagerMecabra *)&v10 commitComposition];
  segments2 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v9 = [segments2 count];

  if (v9)
  {
    [(TIKeyboardInputManager_ja_SegmentAdjust *)self updateInputString];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }
}

@end