@interface TIKeyboardInputManager_ja_SegmentAdjust
- (TIKeyboardInputManager_ja_SegmentAdjust)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 romajiEnabled:(BOOL)a7 wordSearch:(id)a8;
- (id)candidateResultSet;
- (id)handleKeyboardInput:(id)a3;
- (id)keyboardBehaviors;
- (unsigned)inputIndex;
- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)commitComposition;
- (void)composeTextWith:(id)a3;
- (void)generateNewSegments:(unint64_t)a3;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)updateInputString;
@end

@implementation TIKeyboardInputManager_ja_SegmentAdjust

- (TIKeyboardInputManager_ja_SegmentAdjust)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 romajiEnabled:(BOOL)a7 wordSearch:(id)a8
{
  v15 = a5;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  v17 = [(TIKeyboardInputManagerMecabra *)&v20 initWithConfig:a3 keyboardState:a4];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_segments, a5);
    v18->_index = a6;
    objc_storeStrong(&v18->_wordSearch, a8);
    v18->_romajiEnabled = a7;
    [(TIKeyboardInputManager_ja_SegmentAdjust *)v18 updateInputString];
  }

  return v18;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7040]);

  return v2;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (![v4 transliterationType])
  {
    v7 = [v4 string];
    v8 = [v7 _isSpace];

    if ((v8 & 1) == 0)
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }
  }

  return v6;
}

- (void)updateInputString
{
  v3 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v4 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v5 = [v3 _surfaceStringWithin:{0, objc_msgSend(v4, "count")}];
  inputString = self->_inputString;
  self->_inputString = v5;

  v7 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v8 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self index];
  v9 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v10 = [v7 _readingStringWithin:{v8, objc_msgSend(v9, "count") - -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  composingInputString = self->_composingInputString;
  self->_composingInputString = v10;

  v12 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v13 = [v12 _surfaceStringWithin:{0, -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  contextString = self->_contextString;
  self->_contextString = v13;

  v15 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v16 = [v15 subarrayWithRange:{0, -[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  contextSegments = self->_contextSegments;
  self->_contextSegments = v16;

  v18 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v19 = [v18 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentAdjust index](self, "index")}];
  v21 = [v19 reading];

  if ([(TIKeyboardInputManager_ja_SegmentAdjust *)self romajiEnabled])
  {
    v20 = [Romakana hiraganaString:v21 mappingArray:0];
    self->_segmentLength = [v20 length];
  }

  else
  {
    self->_segmentLength = [v21 length];
  }
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v3)
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v5 = [v4 inputIndex];
  }

  else
  {
    v4 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextString];
    v6 = [v4 length];
    v5 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segmentLength]+ v6;
  }

  return v5;
}

- (void)generateNewSegments:(unint64_t)a3
{
  v25 = 0;
  v26 = 0;
  if ([(TIKeyboardInputManager_ja_SegmentAdjust *)self romajiEnabled])
  {
    v5 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v25 = [Romakana splitRomaji:v5 at:a3];
    v26 = v6;
  }

  else
  {
    v7 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v23 = [v7 substringToIndex:a3];
    v8 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self composingInputString];
    v24 = [v8 substringFromIndex:a3];
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
  v14 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextString];
  v15 = [v13 stringByAppendingString:v14];
  v16 = [v25 length];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  BYTE2(v22) = 1;
  LOWORD(v22) = 0;
  LOBYTE(v21) = 1;
  v19 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v9 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:wordSearch contextString:v12 segmentBreakIndex:0 predictionEnabled:v15 reanalysisMode:v17 autocapitalizationType:0 target:v21 action:0 geometryModelData:self flickUsed:sel__notifyUpdateCandidates_forOperation_ phraseBoundarySet:v18 hardwareKeyboardMode:v22 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v19 setSinglePhrase:1];
  v20 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self wordSearch];
  [v20 performOperationAsync:v19];
}

- (id)candidateResultSet
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v3)
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v5 = [v4 candidateResultSet];
  }

  else
  {
    v5 = [MEMORY[0x29EDC7080] dummySet];
  }

  return v5;
}

- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = a3;
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v5];
  v6 = [v5 candidates];
  v7 = [v6 firstObject];

  v8 = objc_alloc_init(MEMORY[0x29EDC7250]);
  v9 = [v7 input];
  [v8 setReading:v9];

  v10 = [v7 candidate];
  [v8 setSurface:v10];

  v11 = [v5 candidateAfterSegmentBreak];

  v12 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:v11 phraseBoundary:1];

  v13 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextSegments];
  v25[0] = v8;
  v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v25 count:1];
  v15 = [v14 arrayByAddingObjectsFromArray:v12];
  v16 = [v13 arrayByAddingObjectsFromArray:v15];
  segments = self->_segments;
  self->_segments = v16;

  v18 = [TIKeyboardInputManager_ja_SegmentPicker alloc];
  v19 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self config];
  v20 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self keyboardState];
  v21 = self->_segments;
  v22 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self contextSegments];
  v23 = -[TIKeyboardInputManager_ja_SegmentPicker initWithConfig:keyboardState:segments:at:wordSearch:](v18, "initWithConfig:keyboardState:segments:at:wordSearch:", v19, v20, v21, [v22 count], self->_wordSearch);
  [(TIKeyboardInputManager_ja_SegmentAdjust *)self composeTextWith:v23];

  v24 = *MEMORY[0x29EDCA608];
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v10 = a3;
  v4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v4)
  {
    v5 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateRange];
    v7 = v6;
    v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v8 setCandidateRange:{v5, v7}];

    v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v9 openCandidateGenerationContextWithCandidateHandler:v10];
  }

  else
  {
    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setCandidateHandlerForOpenRequest:v10];
  }
}

- (void)composeTextWith:(id)a3
{
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  [(TIKeyboardInputManagerMecabra *)&v13 composeTextWith:a3];
  v4 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateHandlerForOpenRequest];

  if (v4)
  {
    v5 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateRange];
    v7 = v6;
    v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v8 setCandidateRange:{v5, v7}];

    v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v10 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self candidateHandlerForOpenRequest];
    [v9 openCandidateGenerationContextWithCandidateHandler:v10];

    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setCandidateHandlerForOpenRequest:0];
    v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v12 = [v11 candidateResultSet];
  }
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    -[TIKeyboardInputManager_ja_SegmentAdjust setIndex:](self, "setIndex:", [v5 index]);

    v6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v7 = [v6 segments];
    [(TIKeyboardInputManager_ja_SegmentAdjust *)self setSegments:v7];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_SegmentAdjust;
  [(TIKeyboardInputManagerMecabra *)&v10 commitComposition];
  v8 = [(TIKeyboardInputManager_ja_SegmentAdjust *)self segments];
  v9 = [v8 count];

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