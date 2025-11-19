@interface TIKeyboardInputManager_zh_SegmentAdjust
- (TIKeyboardInputManager_zh_SegmentAdjust)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 inputManager:(id)a6 wordSearch:(id)a7;
- (id)convertString;
- (id)didAcceptCandidate:(id)a3;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)keyboardBehaviors;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)clearInput;
@end

@implementation TIKeyboardInputManager_zh_SegmentAdjust

- (TIKeyboardInputManager_zh_SegmentAdjust)initWithConfig:(id)a3 keyboardState:(id)a4 segments:(id)a5 inputManager:(id)a6 wordSearch:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = TIKeyboardInputManager_zh_SegmentAdjust;
  v16 = [(TIKeyboardInputManagerMecabra *)&v21 initWithConfig:a3 keyboardState:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wordSearch, a7);
    objc_storeStrong(&v17->_inputManager, a6);
    objc_storeStrong(&v17->_segments, a5);
    if ([MEMORY[0x29EDC7248] isLoggingEnabled])
    {
      v18 = objc_alloc_init(MEMORY[0x29EDC7248]);
      logger = v17->_logger;
      v17->_logger = v18;
    }
  }

  return v17;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7068]);

  return v2;
}

- (id)handleKeyboardInput:(id)a3
{
  v3 = self;
  v55 = *MEMORY[0x29EDCA608];
  v4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v5 = [v4 composedText];

  v6 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 inputManager];
  v7 = [v6 inputBuffer];

  v8 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 inputManager];
  if ([v8 cursorLocation])
  {
    v9 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 inputManager];
    v10 = [v9 cursorLocation];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 inputManager];
  v12 = [v11 inputBufferIndexOf:v10];

  if (v10 < [v5 length] && v12 < objc_msgSend(v7, "length"))
  {
    v47 = v10;
    v41 = v7;
    v42 = v5;
    v13 = MEMORY[0x29EDB8DE8];
    v14 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 segments];
    v48 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count") + 1}];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = v3;
    obj = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 segments];
    v49 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v49)
    {
      v15 = 0;
      v16 = 0;
      v46 = *v51;
      v44 = v12;
      do
      {
        v17 = 0;
        v18 = v15;
        v19 = v16;
        do
        {
          if (*v51 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * v17);
          v21 = [v20 surface];
          v22 = [v21 length];

          v23 = [v20 reading];
          v24 = [v23 length];

          v16 = v22 + v19;
          v15 = v24 + v18;
          v25 = v47 - v19;
          if (v47 > v19 && (v47 < v16 ? (v26 = v12 <= v18) : (v26 = 1), !v26 ? (v27 = v12 < v15) : (v27 = 0), v27))
          {
            v28 = objc_alloc_init(MEMORY[0x29EDC7250]);
            v29 = [v20 surface];
            v30 = [v29 substringToIndex:v25];
            [v28 setSurface:v30];

            v31 = [v20 reading];
            v32 = v12 - v18;
            v33 = [v31 substringToIndex:v12 - v18];
            [v28 setReading:v33];

            [v48 addObject:v28];
            v34 = objc_alloc_init(MEMORY[0x29EDC7250]);
            v35 = [v20 surface];
            v36 = [v35 substringFromIndex:v25];
            [v34 setSurface:v36];

            v37 = [v20 reading];
            v38 = [v37 substringFromIndex:v32];
            [v34 setReading:v38];

            v12 = v44;
            [v48 addObject:v34];
          }

          else
          {
            [v48 addObject:v20];
          }

          ++v17;
          v18 = v15;
          v19 = v16;
        }

        while (v49 != v17);
        v49 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v49);
    }

    v3 = v43;
    [(TIKeyboardInputManager_zh_SegmentAdjust *)v43 setSegments:v48];

    v7 = v41;
    v5 = v42;
  }

  [(TIKeyboardInputManagerMecabra *)v3 completeComposition];

  v39 = *MEMORY[0x29EDCA608];
  return 0;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self currentCandidate];

  if (v3)
  {
    v4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self currentCandidate];
    v5 = [v4 candidate];
    v6 = [v5 length];
  }

  else
  {
    v4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    v6 = [v4 cursorLocation];
  }

  return v6;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self segments];
  v4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self segments];
  v5 = [v3 _surfaceStringWithin:{0, objc_msgSend(v4, "count")}];

  return v5;
}

- (void)clearInput
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_zh_SegmentAdjust;
  [(TIKeyboardInputManagerMecabra *)&v3 clearInput];
  [(TIKeyboardInputManager_zh_SegmentAdjust *)self setCurrentCandidate:0];
  [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
}

- (id)convertString
{
  v3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v4 = [v3 inputCursorLocation];

  if (!v4)
  {
    v5 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    v4 = [v5 inputBufferIndexOf:1];
  }

  v6 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v7 = [v6 inputBuffer];
  if (v4 >= [v7 length])
  {
    v8 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    v9 = [v8 inputBuffer];
    v4 = [v9 length];
  }

  v10 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v11 = [v10 inputBuffer];
  v12 = [v11 substringToIndex:v4];

  return v12;
}

- (id)didAcceptCandidate:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self convertString];
  v6 = [v5 length];
  v7 = [v4 input];
  v8 = [v7 length];

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[TIKeyboardInputManager_zh_SegmentAdjust didAcceptCandidate:]";
    v26 = 1024;
    v27 = v6 > v8;
    _os_log_impl(&dword_29EA88000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  candidate is partial: %d", &v24, 0x12u);
  }

  v9 = [v4 candidate];
  if ([v9 length])
  {
    v10 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self isTypologyEnabled];

    if (v10)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:v4 partial:v6 > v8];
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6 > v8;
    v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v4];
    v13 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self wordSearch];
    [v13 performAccept:v12 isPartial:v11];

    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v11];
  }

  v14 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v15 = [v14 inputBuffer];
  v16 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  v17 = [v16 inputCursorLocation];
  v18 = [v4 input];
  if (v17 <= [v18 length])
  {
    v19 = [v4 input];
    v20 = [v19 length];
  }

  else
  {
    v19 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    v20 = [v19 inputCursorLocation];
  }

  v21 = [v15 substringFromIndex:v20];
  [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v21];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

- (void)_adjustPhraseBoundaryInForwardDirection:(NSObject *)a3 granularity:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s adjust phrase: %d %d", "-[TIKeyboardInputManager_zh_SegmentAdjust _adjustPhraseBoundaryInForwardDirection:granularity:]", a1 & 1, a2];
  *buf = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_29EA88000, a3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v5 = *MEMORY[0x29EDCA608];
}

@end