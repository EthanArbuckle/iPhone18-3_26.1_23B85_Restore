@interface TIKeyboardInputManager_zh_SegmentPicker
- (BOOL)closeCandidateGenerationContextWithResults:(id)a3;
- (NSString)inputString;
- (TIKeyboardInputManager_zh_SegmentPicker)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 wordSearch:(id)a7;
- (id)candidateResultSet;
- (id)convertString;
- (id)didAcceptCandidate:(id)a3;
- (id)handleKeyboardInput:(id)a3;
- (id)keyboardBehaviors;
- (id)markedText;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)selectCandidate:(id)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManager_zh_SegmentPicker

- (TIKeyboardInputManager_zh_SegmentPicker)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 at:(unint64_t)a6 wordSearch:(id)a7
{
  v12 = a5;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_zh_SegmentPicker;
  v14 = [(TIKeyboardInputManagerMecabra *)&v20 initWithConfig:a3 keyboardState:a4];
  if (v14)
  {
    v15 = [v12 mutableCopy];
    segments = v14->_segments;
    v14->_segments = v15;

    v14->_index = a6;
    objc_storeStrong(&v14->_kbws, a7);
    v17 = [v12 mutableCopy];
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

- (id)handleKeyboardInput:(id)a3
{
  v4 = [a3 string];
  v5 = [v4 _isSpace];

  if (v5)
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
  v4 = [(TIKeyboardInputManager_zh_SegmentPicker *)self alternateDisplayString];

  if (v4)
  {
    v5 = [(TIKeyboardInputManager_zh_SegmentPicker *)self alternateDisplayString];

    v3 = v5;
  }

  return v3;
}

- (void)updateMarkedText
{
  v17 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v5 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
      v10 = [v9 objectAtIndexedSubscript:v7];

      v11 = [v10 reading];
      [v17 appendString:v11];

      v12 = [v10 surface];
      [v3 appendString:v12];

      if ([(TIKeyboardInputManager_zh_SegmentPicker *)self index]>= v7)
      {
        v13 = [v10 surface];
        v8 = v8 + [v13 length];
      }

      if ([(TIKeyboardInputManager_zh_SegmentPicker *)self index]> v7)
      {
        v14 = [v10 surface];
        [v4 appendString:v14];
      }

      ++v7;
      v15 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
      v16 = [v15 count];
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

- (void)setPhraseBoundary:(unint64_t)a3
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __61__TIKeyboardInputManager_zh_SegmentPicker_setPhraseBoundary___block_invoke;
  v6[3] = &unk_29F37D530;
  v6[5] = v7;
  v6[6] = a3;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

  [(TIKeyboardInputManager_zh_SegmentPicker *)self updateMarkedText];
  _Block_object_dispose(v7, 8);
}

- (id)markedText
{
  v32 = *MEMORY[0x29EDCA608];
  v26 = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
  v25 = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
  v22 = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputIndex];
  v24 = [(TIKeyboardInputManager_zh_SegmentPicker *)self searchStringForMarkedText];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = self;
  v4 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 surface];
        v12 = [v11 length];

        v13 = [MEMORY[0x29EDBA168] valueWithRange:{v7, v12}];
        [v3 addObject:v13];

        v14 = [v10 surface];
        v7 += [v14 length];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v15 = MEMORY[0x29EDC70A0];
  v16 = [(TIKeyboardInputManager_zh_SegmentPicker *)v23 autoCommitString];
  v17 = [v16 length];
  v18 = [v3 copy];
  v19 = [v15 intermediateTextWithInputString:v26 displayString:v25 selectionLocation:v22 searchString:v24 candidateOffset:v17 liveConversionSegments:v18 highlightSegmentIndex:-[TIKeyboardInputManager_zh_SegmentPicker index](v23 lastInputString:{"index"), 0}];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (id)convertString
{
  v3 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  v4 = [v3 objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
  v5 = [v4 reading];

  return v5;
}

- (id)candidateResultSet
{
  v3 = [(TIKeyboardInputManager_zh_SegmentPicker *)self index];
  v4 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
  if (v3 >= [v4 count])
  {
    goto LABEL_6;
  }

  v5 = [(TIKeyboardInputManager_zh_SegmentPicker *)self shouldShowCandidateWindow];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v4 = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  if ([v4 length])
  {
    v6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v7 = [(TIKeyboardInputManager_zh_SegmentPicker *)self segments];
    v8 = [v7 objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
    v9 = [v8 surface];

    if ([v9 length] < 2)
    {
      v10 = [MEMORY[0x29EDB8E50] setWithObject:v9];
      [v6 setAutoSelectCandidates:v10];
    }

    else
    {
      v10 = [v9 _lastGrapheme];
      v11 = [MEMORY[0x29EDB8E50] setWithObjects:{v9, v10, 0}];
      [v6 setAutoSelectCandidates:v11];
    }

    v13 = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
    [v6 setSyntheticCandidate:v13];

    v14 = [(TIKeyboardInputManager_zh_SegmentPicker *)self autoCommitString];
    v15 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v16 = [v6 makeCandidatesWithInputString:v4 autoCommitString:v14 predictionEnabled:0 reanalysisMode:1 geometoryModelData:v15];

    v12 = [MEMORY[0x29EDC7080] dummySet];
    if (v16)
    {
      v17 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v18 = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
      [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:v17 withInput:v18];

      v19 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v20 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v19];

      v12 = v20;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (!v5)
  {
    v6 = [TIKeyboardInputManager_zh_Candidates alloc];
    v7 = [(TIKeyboardInputManager_zh_SegmentPicker *)self config];
    v8 = [(TIKeyboardInputManager_zh_SegmentPicker *)self keyboardState];
    v9 = [(TIKeyboardInputManager_zh_Candidates *)v6 initWithConfig:v7 keyboardState:v8 wordSearch:self->_kbws];
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v9];

    v10 = [(TIKeyboardInputManager_zh_SegmentPicker *)self candidateRange];
    v12 = v11;
    v13 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v13 setCandidateRange:{v10, v12}];
  }

  [v4 open];
  v14 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v15 = objc_alloc(MEMORY[0x29EDC7200]);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __94__TIKeyboardInputManager_zh_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke;
  v21 = &unk_29F37D558;
  v22 = self;
  v23 = v4;
  v16 = v4;
  v17 = [v15 initWithWrappedCandidateHandler:v16 resultSetHandlerBlock:&v18];
  [v14 openCandidateGenerationContextWithCandidateHandler:{v17, v18, v19, v20, v21, v22}];
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
  v5 = [(TIKeyboardInputManager_zh_SegmentPicker *)self rawInputString];
  v6 = [v5 length];
  v7 = [v4 input];
  if (v6 <= [v7 length])
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
    v11 = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
    [(NSMutableArray *)self->_segments removeAllObjects];
    [(NSMutableArray *)self->_originalSegments removeAllObjects];
    self->_index = 0;
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  else
  {
    [(TIKeyboardInputManager_zh_SegmentPicker *)self selectCandidate:v4];
    v9 = [(TIKeyboardInputManager_zh_SegmentPicker *)self inputString];
    v10 = [(TIKeyboardInputManager_zh_SegmentPicker *)self keyboardState];
    [v10 setInputForMarkedText:v9];

    [(TIKeyboardInputManager_zh_SegmentPicker *)self setShouldShowCandidateWindow:0];
    v11 = &stru_2A252F9A8;
  }

  return v11;
}

- (void)selectCandidate:(id)a3
{
  v19 = a3;
  v4 = objc_alloc_init(MEMORY[0x29EDC7250]);
  [(TIKeyboardInputManager_zh_SegmentPicker *)self setAlternateDisplayString:0];
  v5 = [v19 candidate];
  v6 = [v5 _containsBopomofoOnly];

  if (v6)
  {
    v7 = [v19 candidate];
    [(TIKeyboardInputManager_zh_SegmentPicker *)self setAlternateDisplayString:v7];
  }

  v8 = [v19 input];
  v9 = [v8 length];
  v10 = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  v11 = [v10 length];

  if (v9 >= v11)
  {
    v14 = [v19 label];
    [v4 setSurface:v14];
  }

  else
  {
    v12 = [(TIKeyboardInputManager_zh_SegmentPicker *)self originalSegments];
    v13 = [v12 objectAtIndexedSubscript:{-[TIKeyboardInputManager_zh_SegmentPicker index](self, "index")}];
    v14 = [v13 surface];

    v15 = [v14 _stringByTrimmingLastCharacter];
    v16 = [v19 label];
    v17 = [v15 stringByAppendingString:v16];
    [v4 setSurface:v17];
  }

  v18 = [(TIKeyboardInputManager_zh_SegmentPicker *)self convertString];
  [v4 setReading:v18];

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