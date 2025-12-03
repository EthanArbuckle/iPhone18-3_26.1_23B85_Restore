@interface TIKeyboardInputManager_zh_SegmentPicker
- (BOOL)closeCandidateGenerationContextWithResults:(id)results;
- (NSString)inputString;
- (TIKeyboardInputManager_zh_SegmentPicker)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at wordSearch:(id)search;
- (id)candidateResultSet;
- (id)convertString;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleKeyboardInput:(id)input;
- (id)keyboardBehaviors;
- (id)markedText;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)selectCandidate:(id)candidate;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManager_zh_SegmentPicker

- (TIKeyboardInputManager_zh_SegmentPicker)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments at:(unint64_t)at wordSearch:(id)search
{
  segmentsCopy = segments;
  searchCopy = search;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_zh_SegmentPicker;
  v14 = [(TIKeyboardInputManagerMecabra *)&v20 initWithConfig:config keyboardState:state];
  if (v14)
  {
    v15 = [segmentsCopy mutableCopy];
    segments = v14->_segments;
    v14->_segments = v15;

    v14->_index = at;
    objc_storeStrong(&v14->_kbws, search);
    v17 = [segmentsCopy mutableCopy];
    originalSegments = v14->_originalSegments;
    v14->_originalSegments = v17;

    v14->_shouldShowCandidateWindow = 1;
    [(TIKeyboardInputManager_zh_SegmentPicker *)v14 updateMarkedText];
  }

  return v14;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7068]);

  return v2;
}

- (id)handleKeyboardInput:(id)input
{
  string = [input string];
  _isSpace = [string _isSpace];

  if (_isSpace)
  {
    [(TIKeyboardInputManager_zh_SegmentPicker *)self setShouldShowCandidateWindow:1];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  }

  return 0;
}

- (NSString)inputString
{
  v3 = self->_inputString;
  alternateDisplayString = [(TIKeyboardInputManager_zh_SegmentPicker *)self alternateDisplayString];

  if (alternateDisplayString)
  {
    alternateDisplayString2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self alternateDisplayString];

    v3 = alternateDisplayString2;
  }

  return v3;
}

- (void)updateMarkedText
{
  v17 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v6 = [segments count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      segments2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
      v10 = [segments2 objectAtIndexedSubscript:v7];

      reading = [v10 reading];
      [v17 appendString:reading];

      surface = [v10 surface];
      [v3 appendString:surface];

      if ([(TIKeyboardInputManager_zh_SegmentPicker *)self index]>= v7)
      {
        surface2 = [v10 surface];
        v8 = v8 + [surface2 length];
      }

      if ([(TIKeyboardInputManager_zh_SegmentPicker *)self index]> v7)
      {
        surface3 = [v10 surface];
        [v4 appendString:surface3];
      }

      ++v7;
      segments3 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
      v16 = [segments3 count];
    }

    while (v16 > v7);
  }

  else
  {
    v8 = 0;
  }

  [(TIKeyboardInputManager_zh_SegmentPicker *)self setRawInputString:v17];
  [(TIKeyboardInputManager_zh_SegmentPicker *)self setInputString:v3];
  [(TIKeyboardInputManager_zh_SegmentPicker *)self setInputIndex:v8];
  [(TIKeyboardInputManager_zh_SegmentPicker *)self setAutoCommitString:v4];
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __61__TIKeyboardInputManager_zh_SegmentPicker_setPhraseBoundary___block_invoke;
  v6[3] = &unk_29F37D530;
  v6[5] = v7;
  v6[6] = boundary;
  v6[4] = self;
  [segments enumerateObjectsUsingBlock:v6];

  [(TIKeyboardInputManager_zh_SegmentPicker *)self updateMarkedText];
  _Block_object_dispose(v7, 8);
}

- (id)markedText
{
  v32 = *MEMORY[0x29EDCA608];
  rawInputString = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
  inputString = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
  inputIndex = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputIndex];
  searchStringForMarkedText = [(TIKeyboardInputManager_zh_SegmentPicker *)self searchStringForMarkedText];
  array = [MEMORY[0x29EDB8DE8] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v5 = [segments countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        surface = [v10 surface];
        v12 = [surface length];

        v13 = [MEMORY[0x29EDBA168] valueWithRange:{v7, v12}];
        [array addObject:v13];

        surface2 = [v10 surface];
        v7 += [surface2 length];
      }

      v6 = [segments countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v15 = MEMORY[0x29EDC70A0];
  autoCommitString = [(TIKeyboardInputManager_zh_SegmentPicker *)selfCopy autoCommitString];
  v17 = [autoCommitString length];
  v18 = [array copy];
  v19 = [v15 intermediateTextWithInputString:rawInputString displayString:inputString selectionLocation:inputIndex searchString:searchStringForMarkedText candidateOffset:v17 liveConversionSegments:v18 highlightSegmentIndex:-[TIKeyboardInputManager_zh_SegmentPicker index](selfCopy lastInputString:{"index"), 0}];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (id)convertString
{
  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v4 = [segments objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
  reading = [v4 reading];

  return reading;
}

- (id)candidateResultSet
{
  index = [(TIKeyboardInputManager_zh_SegmentPicker *)self index];
  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  if (index >= [segments count])
  {
    goto LABEL_6;
  }

  shouldShowCandidateWindow = [(TIKeyboardInputManager_zh_SegmentPicker *)self shouldShowCandidateWindow];

  if (!shouldShowCandidateWindow)
  {
    dummySet = 0;
    goto LABEL_13;
  }

  segments = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  if ([segments length])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    segments2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
    v8 = [segments2 objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
    surface = [v8 surface];

    if ([surface length] < 2)
    {
      _lastGrapheme = [MEMORY[0x29EDB8E50] setWithObject:surface];
      [composingKeyboardInputManager setAutoSelectCandidates:_lastGrapheme];
    }

    else
    {
      _lastGrapheme = [surface _lastGrapheme];
      v11 = [MEMORY[0x29EDB8E50] setWithObjects:{surface, _lastGrapheme, 0}];
      [composingKeyboardInputManager setAutoSelectCandidates:v11];
    }

    rawInputString = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
    [composingKeyboardInputManager setSyntheticCandidate:rawInputString];

    autoCommitString = [(TIKeyboardInputManager_zh_SegmentPicker *)self autoCommitString];
    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v16 = [composingKeyboardInputManager makeCandidatesWithInputString:segments autoCommitString:autoCommitString predictionEnabled:0 reanalysisMode:1 geometoryModelData:geometryDataArray];

    dummySet = [MEMORY[0x29EDC7080] dummySet];
    if (v16)
    {
      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      rawInputString2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
      [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:wordSearchCandidateResultSet withInput:rawInputString2];

      wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v20 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet2];

      dummySet = v20;
    }
  }

  else
  {
LABEL_6:
    dummySet = 0;
  }

LABEL_13:

  return dummySet;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  handlerCopy = handler;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (!composingKeyboardInputManager)
  {
    v6 = [TIKeyboardInputManager_zh_Candidates alloc];
    config = [(TIKeyboardInputManager_zh_SegmentPicker *)self config];
    keyboardState = [(TIKeyboardInputManager_zh_SegmentPicker *)self keyboardState];
    v9 = [(TIKeyboardInputManager_zh_Candidates *)v6 initWithConfig:config keyboardState:keyboardState wordSearch:self->_kbws];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v9];

    candidateRange = [(TIKeyboardInputManager_zh_SegmentPicker *)self candidateRange];
    v12 = v11;
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 setCandidateRange:{candidateRange, v12}];
  }

  [handlerCopy open];
  composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v15 = objc_alloc(MEMORY[0x29EDC7200]);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __94__TIKeyboardInputManager_zh_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v21 = &unk_29F37D558;
  selfCopy = self;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v15 initWithWrappedCandidateHandler:v16 resultSetHandlerBlock:&v18];
  [composingKeyboardInputManager3 openCandidateGenerationContextWithCandidateHandler:{v17, v18, v19, v20, v21, selfCopy}];
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
  rawInputString = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
  v6 = [rawInputString length];
  input = [candidateCopy input];
  if (v6 <= [input length])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (![(TIKeyboardInputManager_zh_SegmentPicker *)self shouldShowCandidateWindow]|| (isKindOfClass & 1) != 0)
  {
    inputString = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
    [(NSMutableArray *)self->_segments removeAllObjects];
    [(NSMutableArray *)self->_originalSegments removeAllObjects];
    self->_index = 0;
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  else
  {
    [(TIKeyboardInputManager_zh_SegmentPicker *)self selectCandidate:candidateCopy];
    inputString2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
    keyboardState = [(TIKeyboardInputManager_zh_SegmentPicker *)self keyboardState];
    [keyboardState setInputForMarkedText:inputString2];

    [(TIKeyboardInputManager_zh_SegmentPicker *)self setShouldShowCandidateWindow:0];
    inputString = &stru_2A252F9A8;
  }

  return inputString;
}

- (void)selectCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = objc_alloc_init(MEMORY[0x29EDC7250]);
  [(TIKeyboardInputManager_zh_SegmentPicker *)self setAlternateDisplayString:0];
  candidate = [candidateCopy candidate];
  _containsBopomofoOnly = [candidate _containsBopomofoOnly];

  if (_containsBopomofoOnly)
  {
    candidate2 = [candidateCopy candidate];
    [(TIKeyboardInputManager_zh_SegmentPicker *)self setAlternateDisplayString:candidate2];
  }

  input = [candidateCopy input];
  v9 = [input length];
  convertString = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  v11 = [convertString length];

  if (v9 >= v11)
  {
    label = [candidateCopy label];
    [v4 setSurface:label];
  }

  else
  {
    originalSegments = [(TIKeyboardInputManager_zh_SegmentPicker *)self originalSegments];
    v13 = [originalSegments objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
    label = [v13 surface];

    _stringByTrimmingLastCharacter = [label _stringByTrimmingLastCharacter];
    label2 = [candidateCopy label];
    v17 = [_stringByTrimmingLastCharacter stringByAppendingString:label2];
    [v4 setSurface:v17];
  }

  convertString2 = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  [v4 setReading:convertString2];

  [(NSMutableArray *)self->_segments replaceObjectAtIndex:[(TIKeyboardInputManager_zh_SegmentPicker *)self index] withObject:v4];
  [(TIKeyboardInputManager_zh_SegmentPicker *)self updateMarkedText];
}

- (void)_adjustPhraseBoundaryInForwardDirection:(NSObject *)a3 granularity:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s adjust phrase: %d %d", "-[TIKeyboardInputManager_zh_SegmentPicker _adjustPhraseBoundaryInForwardDirection:granularity:]", a1 & 1, a2];
  *buf = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_29EA88000, a3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v5 = *MEMORY[0x29EDCA608];
}

@end