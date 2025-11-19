@interface TIKeyboardInputManager_ja_SegmentPicker
- (BOOL)closeCandidateGenerationContextWithResults:(id)a3;
- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
- (NSArray)segments;
- (TIKeyboardInputManager_ja_SegmentPicker)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 wordSearch:(id)a7;
- (id)candidateResultSet;
- (id)didAcceptCandidate:(id)a3;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (unint64_t)index;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_selectPartialCandidate:(id)a3 forOperation:(id)a4;
- (void)finishSyncToKeyboardState;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)selectCandidate:(id)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
@end

@implementation TIKeyboardInputManager_ja_SegmentPicker

- (TIKeyboardInputManager_ja_SegmentPicker)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 wordSearch:(id)a7
{
  v12 = a5;
  v13 = a7;
  v18.receiver = self;
  v18.super_class = TIKeyboardInputManager_ja_SegmentPicker;
  v14 = [(TIKeyboardInputManagerMecabra *)&v18 initWithConfig:a3 keyboardState:a4];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_wordSearch, a7);
    v16 = [[TILiveConversionSegments alloc] initWithSegments:v12 at:a6];
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

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if ([v4 transliterationType])
  {
    v5 = [v4 transliterationType];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:v5];
LABEL_5:
    v8 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    goto LABEL_6;
  }

  v6 = [v4 string];

  v7 = [v6 _isSpace];
  if (v7)
  {
    [(TIKeyboardInputManager_ja_SegmentPicker *)self setShouldShowCandidateWindow:1];
    goto LABEL_5;
  }

  v10 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  [v10 commit];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  v8 = 0;
LABEL_6:

  return v8;
}

- (id)markedText
{
  v3 = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
  v4 = [(TIKeyboardInputManager_ja_SegmentPicker *)self inputString];
  v5 = [(TIKeyboardInputManager_ja_SegmentPicker *)self inputIndex];
  v6 = [(TIKeyboardInputManager_ja_SegmentPicker *)self searchStringForMarkedText];
  v7 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v8 = [v7 segmentRanges];

  v9 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v10 = [v9 autoCommitString];
  v11 = [v10 length];

  v12 = MEMORY[0x29EDC70A0];
  v13 = [v8 copy];
  v14 = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  v15 = [(TIKeyboardInputManager_ja_SegmentPicker *)self lastInputString];
  v16 = [v12 intermediateTextWithInputString:v3 displayString:v4 selectionLocation:v5 searchString:v6 candidateOffset:v11 liveConversionSegments:v13 highlightSegmentIndex:v14 lastInputString:v15];

  return v16;
}

- (id)rawInputString
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v3 = [v2 rawInputString];

  return v3;
}

- (id)inputString
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v3 = [v2 inputString];

  return v3;
}

- (unsigned)inputIndex
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v3 = [v2 inputIndex];

  return v3;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
  v3 = [v2 length];

  return v3;
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  v4 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  [v4 setPhraseBoundary:a3];
}

- (unint64_t)index
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v3 = [v2 index];

  return v3;
}

- (NSArray)segments
{
  v2 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v3 = [v2 rawSegments];

  return v3;
}

- (id)candidateResultSet
{
  v3 = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  v4 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  if (v3 >= [v4 count])
  {
    goto LABEL_7;
  }

  v5 = [(TIKeyboardInputManager_ja_SegmentPicker *)self shouldShowCandidateWindow];

  if (v5)
  {
    v6 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
    v7 = [v6 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];
    v4 = [v7 reading];

    if ([v4 length])
    {
      v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [v8 setAutoSelectTransliterateCandidate:{-[TIKeyboardInputManager_ja_SegmentPicker transliterationType](self, "transliterationType")}];
      v9 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
      v10 = [v9 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];
      v11 = [v10 surface];
      [v8 setAutoSelectCandidate:v11];

      v12 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
      v13 = [v12 autoCommitString];
      v14 = [(TIKeyboardInputManager_ja_SegmentPicker *)self contextBeforeWithDesiredLength:20];
      v15 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v16 = [v8 makeCandidatesWithInputString:v4 autoCommitString:v13 contextString:v14 predictionEnabled:0 reanalysisMode:1 singlePhrase:1 geometoryModelData:v15];

      v17 = [MEMORY[0x29EDC7080] dummySet];
      if (v16)
      {
        v18 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        v19 = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
        [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:v18 withInput:v19];

        v20 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        v21 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v20];

        v17 = v21;
      }

      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
LABEL_8:

    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (!v5)
  {
    v6 = [TIKeyboardInputManager_ja_Candidates alloc];
    v7 = [(TIKeyboardInputManager_ja_SegmentPicker *)self config];
    v8 = [(TIKeyboardInputManager_ja_SegmentPicker *)self keyboardState];
    v9 = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
    v10 = [(TIKeyboardInputManager_ja_Candidates *)v6 initWithConfig:v7 keyboardState:v8 wordSearch:v9];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v10];

    v11 = [(TIKeyboardInputManager_ja_SegmentPicker *)self candidateRange];
    v13 = v12;
    v14 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v14 setCandidateRange:{v11, v13}];
  }

  [v4 open];
  v15 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v16 = objc_alloc(MEMORY[0x29EDC7200]);
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __94__TIKeyboardInputManager_ja_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v22 = &unk_29F3791E8;
  v23 = self;
  v24 = v4;
  v17 = v4;
  v18 = [v16 initWithWrappedCandidateHandler:v17 resultSetHandlerBlock:&v19];
  [v15 openCandidateGenerationContextWithCandidateHandler:{v18, v19, v20, v21, v22, v23}];
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)a3
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  [v3 cancelComposition];

  return 1;
}

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isTransliterationCandidate];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TIKeyboardInputManager_ja_SegmentPicker *)self shouldShowCandidateWindow];
  v7 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
  v8 = v7;
  if (v6 && v5)
  {
    v9 = [v7 currentCandidate];
    v10 = [v9 isEqual:v4];

    if ((v10 & 1) == 0)
    {
      [(TIKeyboardInputManager_ja_SegmentPicker *)self selectCandidate:v4];
    }

    v11 = [(TIKeyboardInputManager_ja_SegmentPicker *)self rawInputString];
    v12 = [(TIKeyboardInputManager_ja_SegmentPicker *)self keyboardState];
    [v12 setInputForMarkedText:v11];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setShouldShowCandidateWindow:0];
    v13 = &stru_2A2525CC0;
  }

  else
  {
    [v7 clear];

    [(TIKeyboardInputManagerMecabra *)self completeComposition];
    v13 = [v4 candidate];
  }

  return v13;
}

- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 currentCandidate];
  v9 = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  v10 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    goto LABEL_6;
  }

  v12 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v13 = [v12 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];

  if (!v8)
  {

LABEL_6:
    [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:0];
    goto LABEL_7;
  }

  v14 = [v13 reading];
  v15 = [v14 length];
  v16 = [v8 input];
  v17 = [v16 length];

  [(TIKeyboardInputManager_ja_SegmentPicker *)self setTransliterationType:0];
  if (v15 <= v17)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v18 = MEMORY[0x29EDA3C60](v7);
  syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
  self->_syncKeyboardStateHandler = v18;

  [(TIKeyboardInputManager_ja_SegmentPicker *)self setSupportsSetPhraseBoundary:0];
  v22.receiver = self;
  v22.super_class = TIKeyboardInputManager_ja_SegmentPicker;
  [(TIKeyboardInputManagerBase *)&v22 syncToKeyboardState:v6];
  v20 = 1;
  [(TIKeyboardInputManager_ja_SegmentPicker *)self setSupportsSetPhraseBoundary:1];
LABEL_8:

  return v20;
}

- (void)selectCandidate:(id)a3
{
  v26 = a3;
  v4 = [(TIKeyboardInputManager_ja_SegmentPicker *)self index];
  v5 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v7 = [(TIKeyboardInputManager_ja_SegmentPicker *)self segments];
    v8 = [v7 objectAtIndexedSubscript:{-[TIKeyboardInputManager_ja_SegmentPicker index](self, "index")}];

    v9 = [v8 reading];
    v10 = [v9 length];
    v11 = [v26 input];
    v12 = [v11 length];

    if (v10 <= v12)
    {
      v15 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
      [v15 didUpdateCandidate:v26 with:0];
    }

    else
    {
      [(TIKeyboardInputManager_ja_SegmentPicker *)self setCurrentCandidate:v26];
      v13 = [v8 reading];
      v14 = [v26 input];
      v15 = [v13 substringFromIndex:{objc_msgSend(v14, "length")}];

      v16 = [TIWordSearchJapaneseOperationGetCandidates alloc];
      v17 = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
      v18 = [(TIKeyboardInputManager_ja_SegmentPicker *)self contextBeforeWithDesiredLength:20];
      v19 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
      BYTE2(v25) = 1;
      LOWORD(v25) = 0;
      LOBYTE(v24) = 1;
      v20 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v16 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:v17 contextString:v15 segmentBreakIndex:0 predictionEnabled:v18 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:0 target:v24 action:0 geometryModelData:0 flickUsed:0 phraseBoundarySet:v19 hardwareKeyboardMode:v25 logger:0];

      [(TIWordSearchJapaneseOperationGetCandidates *)v20 setSinglePhrase:1];
      v21 = [(TIWordSearchJapaneseOperationGetCandidates *)v20 results];

      if (!v21)
      {
        v22 = [(TIKeyboardInputManager_ja_SegmentPicker *)self wordSearch];
        [v22 performOperationAsync:v20];

        [(TIWordSearchJapaneseOperationGetCandidates *)v20 waitUntilFinished];
      }

      v23 = [(TIWordSearchJapaneseOperationGetCandidates *)v20 results];
      [(TIKeyboardInputManager_ja_SegmentPicker *)self _selectPartialCandidate:v23 forOperation:v20];
    }
  }
}

- (void)_selectPartialCandidate:(id)a3 forOperation:(id)a4
{
  v5 = [a3 candidates];
  v11 = [v5 firstObject];

  if (v11)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDC7250]);
    v7 = [v11 input];
    [v6 setReading:v7];

    v8 = [v11 candidate];
    [v6 setSurface:v8];

    v9 = [(TIKeyboardInputManager_ja_SegmentPicker *)self liveConversionSegments];
    v10 = [(TIKeyboardInputManager_ja_SegmentPicker *)self currentCandidate];
    [v9 didUpdateCandidate:v10 with:v6];

    [(TIKeyboardInputManager_ja_SegmentPicker *)self setCurrentCandidate:0];
    [(TIKeyboardInputManager_ja_SegmentPicker *)self finishSyncToKeyboardState];
  }
}

- (void)finishSyncToKeyboardState
{
  if (self->_syncKeyboardStateHandler)
  {
    v3 = [(TIKeyboardInputManager_ja_SegmentPicker *)self syncKeyboardStateHandler];
    v4 = [(TIKeyboardInputManagerMecabra *)self keyboardConfiguration];
    (v3)[2](v3, v4);

    syncKeyboardStateHandler = self->_syncKeyboardStateHandler;
    self->_syncKeyboardStateHandler = 0;
  }
}

@end