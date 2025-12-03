@interface TIKeyboardInputManager_zh_SegmentAdjust
- (TIKeyboardInputManager_zh_SegmentAdjust)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments inputManager:(id)manager wordSearch:(id)search;
- (id)convertString;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)keyboardBehaviors;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)clearInput;
@end

@implementation TIKeyboardInputManager_zh_SegmentAdjust

- (TIKeyboardInputManager_zh_SegmentAdjust)initWithConfig:(id)config keyboardState:(id)state segments:(id)segments inputManager:(id)manager wordSearch:(id)search
{
  segmentsCopy = segments;
  managerCopy = manager;
  searchCopy = search;
  v21.receiver = self;
  v21.super_class = TIKeyboardInputManager_zh_SegmentAdjust;
  v16 = [(TIKeyboardInputManagerMecabra *)&v21 initWithConfig:config keyboardState:state];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_wordSearch, search);
    objc_storeStrong(&v17->_inputManager, manager);
    objc_storeStrong(&v17->_segments, segments);
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

- (id)handleKeyboardInput:(id)input
{
  selfCopy = self;
  v55 = *MEMORY[0x29EDCA608];
  inputManager = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  composedText = [inputManager composedText];

  inputManager2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy inputManager];
  inputBuffer = [inputManager2 inputBuffer];

  inputManager3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy inputManager];
  if ([inputManager3 cursorLocation])
  {
    inputManager4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy inputManager];
    cursorLocation = [inputManager4 cursorLocation];
  }

  else
  {
    cursorLocation = 1;
  }

  inputManager5 = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy inputManager];
  v12 = [inputManager5 inputBufferIndexOf:cursorLocation];

  if (cursorLocation < [composedText length] && v12 < objc_msgSend(inputBuffer, "length"))
  {
    v47 = cursorLocation;
    v41 = inputBuffer;
    v42 = composedText;
    v13 = MEMORY[0x29EDB8DE8];
    segments = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy segments];
    v48 = [v13 arrayWithCapacity:{objc_msgSend(segments, "count") + 1}];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = selfCopy;
    obj = [(TIKeyboardInputManager_zh_SegmentAdjust *)selfCopy segments];
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
          surface = [v20 surface];
          v22 = [surface length];

          reading = [v20 reading];
          v24 = [reading length];

          v16 = v22 + v19;
          v15 = v24 + v18;
          v25 = v47 - v19;
          if (v47 > v19 && (v47 < v16 ? (v26 = v12 <= v18) : (v26 = 1), !v26 ? (v27 = v12 < v15) : (v27 = 0), v27))
          {
            v28 = objc_alloc_init(MEMORY[0x29EDC7250]);
            surface2 = [v20 surface];
            v30 = [surface2 substringToIndex:v25];
            [v28 setSurface:v30];

            reading2 = [v20 reading];
            v32 = v12 - v18;
            v33 = [reading2 substringToIndex:v12 - v18];
            [v28 setReading:v33];

            [v48 addObject:v28];
            v34 = objc_alloc_init(MEMORY[0x29EDC7250]);
            surface3 = [v20 surface];
            v36 = [surface3 substringFromIndex:v25];
            [v34 setSurface:v36];

            reading3 = [v20 reading];
            v38 = [reading3 substringFromIndex:v32];
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

    selfCopy = v43;
    [(TIKeyboardInputManager_zh_SegmentAdjust *)v43 setSegments:v48];

    inputBuffer = v41;
    composedText = v42;
  }

  [(TIKeyboardInputManagerMecabra *)selfCopy completeComposition];

  v39 = *MEMORY[0x29EDCA608];
  return 0;
}

- (unsigned)inputIndex
{
  currentCandidate = [(TIKeyboardInputManager_zh_SegmentAdjust *)self currentCandidate];

  if (currentCandidate)
  {
    currentCandidate2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self currentCandidate];
    candidate = [currentCandidate2 candidate];
    cursorLocation = [candidate length];
  }

  else
  {
    currentCandidate2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    cursorLocation = [currentCandidate2 cursorLocation];
  }

  return cursorLocation;
}

- (unsigned)inputCount
{
  inputString = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (id)inputString
{
  segments = [(TIKeyboardInputManager_zh_SegmentAdjust *)self segments];
  segments2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self segments];
  v5 = [segments _surfaceStringWithin:{0, objc_msgSend(segments2, "count")}];

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
  inputManager = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  inputCursorLocation = [inputManager inputCursorLocation];

  if (!inputCursorLocation)
  {
    inputManager2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    inputCursorLocation = [inputManager2 inputBufferIndexOf:1];
  }

  inputManager3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  inputBuffer = [inputManager3 inputBuffer];
  if (inputCursorLocation >= [inputBuffer length])
  {
    inputManager4 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    inputBuffer2 = [inputManager4 inputBuffer];
    inputCursorLocation = [inputBuffer2 length];
  }

  inputManager5 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  inputBuffer3 = [inputManager5 inputBuffer];
  v12 = [inputBuffer3 substringToIndex:inputCursorLocation];

  return v12;
}

- (id)didAcceptCandidate:(id)candidate
{
  v28 = *MEMORY[0x29EDCA608];
  candidateCopy = candidate;
  convertString = [(TIKeyboardInputManager_zh_SegmentAdjust *)self convertString];
  v6 = [convertString length];
  input = [candidateCopy input];
  v8 = [input length];

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[TIKeyboardInputManager_zh_SegmentAdjust didAcceptCandidate:]";
    v26 = 1024;
    v27 = v6 > v8;
    _os_log_impl(&dword_29EA88000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  candidate is partial: %d", &v24, 0x12u);
  }

  candidate = [candidateCopy candidate];
  if ([candidate length])
  {
    isTypologyEnabled = [(TIKeyboardInputManager_zh_SegmentAdjust *)self isTypologyEnabled];

    if (isTypologyEnabled)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:candidateCopy partial:v6 > v8];
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6 > v8;
    v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
    wordSearch = [(TIKeyboardInputManager_zh_SegmentAdjust *)self wordSearch];
    [wordSearch performAccept:v12 isPartial:v11];

    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:v11];
  }

  inputManager = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  inputBuffer = [inputManager inputBuffer];
  inputManager2 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
  inputCursorLocation = [inputManager2 inputCursorLocation];
  input2 = [candidateCopy input];
  if (inputCursorLocation <= [input2 length])
  {
    input3 = [candidateCopy input];
    inputCursorLocation2 = [input3 length];
  }

  else
  {
    input3 = [(TIKeyboardInputManager_zh_SegmentAdjust *)self inputManager];
    inputCursorLocation2 = [input3 inputCursorLocation];
  }

  v21 = [inputBuffer substringFromIndex:inputCursorLocation2];
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