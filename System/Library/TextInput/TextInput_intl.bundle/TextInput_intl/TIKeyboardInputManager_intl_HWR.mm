@interface TIKeyboardInputManager_intl_HWR
- (BOOL)isDummyCandidate:(id)candidate;
- (CHRecognizer)recognizer;
- (id)addInputObject:(id)object withContext:(id)context;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)handleKeyboardInput:(id)input;
- (id)recognitionResultsForStrokes:(id)strokes context:(id)context;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)deleteFromInputWithContext:(id)context;
- (void)updateCandidates;
@end

@implementation TIKeyboardInputManager_intl_HWR

- (CHRecognizer)recognizer
{
  if (recognizer___onceToken != -1)
  {
    [TIKeyboardInputManager_intl_HWR recognizer];
  }

  v3 = recognizer___recognizer;

  return v3;
}

- (id)recognitionResultsForStrokes:(id)strokes context:(id)context
{
  v17[1] = *MEMORY[0x29EDCA608];
  strokesCopy = strokes;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x29EDC0DF0]);
  if ([strokesCopy numberOfStrokes])
  {
    v9 = 0;
    do
    {
      if ([strokesCopy numberOfPointsInStrokeAtIndex:v9])
      {
        v10 = 0;
        do
        {
          [strokesCopy pointAtIndex:v10 inStrokeAtIndex:v9];
          [v8 addPoint:?];
          ++v10;
        }

        while (v10 < [strokesCopy numberOfPointsInStrokeAtIndex:v9]);
      }

      [v8 endStroke];
      ++v9;
    }

    while (v9 < [strokesCopy numberOfStrokes]);
  }

  if (contextCopy)
  {
    v16 = *MEMORY[0x29EDC0DE8];
    v17[0] = contextCopy;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = 0;
  }

  recognizer = [(TIKeyboardInputManager_intl_HWR *)self recognizer];
  v13 = [recognizer recognitionResultsForDrawing:v8 options:v11];

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)updateCandidates
{
  v25 = *MEMORY[0x29EDCA608];
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];

  if (userDrawing)
  {
    v4 = [(TIKeyboardInputManager_intl_HWR *)self contextBeforeWithDesiredLength:10];
    userDrawing2 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
    v6 = [(TIKeyboardInputManager_intl_HWR *)self recognitionResultsForStrokes:userDrawing2 context:v4];

    v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = MEMORY[0x29EDC7088];
          string = [*(*(&v19 + 1) + 8 * v12) string];
          v15 = [v13 candidateWithUnchangedInput:string];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v7];
      candidateResultSet = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSet];
      [(TIKeyboardInputManager_intl_HWR *)self closeCandidateGenerationContextWithResults:candidateResultSet];
    }

    else
    {
      candidateResultSet = [MEMORY[0x29EDB8E28] null];
      v23 = candidateResultSet;
      v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v23 count:1];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v17];
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (id)candidateResultSet
{
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (!candidates)
  {
    goto LABEL_4;
  }

  v4 = candidates;
  candidates2 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  firstObject = [candidates2 firstObject];
  null = [MEMORY[0x29EDB8E28] null];

  if (firstObject == null)
  {
LABEL_4:
    dummySet = [MEMORY[0x29EDC7080] dummySet];
  }

  else
  {
    candidates3 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    dummySet = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSetFromCandidates:candidates3];
  }

  return dummySet;
}

- (id)defaultCandidate
{
  v19 = *MEMORY[0x29EDCA608];
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  v4 = [candidates count];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    candidates2 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    v6 = [candidates2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(candidates2);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (![(TIKeyboardInputManager_intl_HWR *)self isDummyCandidate:v10])
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [candidates2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (unint64_t)initialSelectedIndex
{
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if ([candidates count] && -[TIKeyboardInputManager_intl_HWR inputCount](self, "inputCount"))
  {
    initialSelectedIndex = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_intl_HWR;
    initialSelectedIndex = [(TIKeyboardInputManager_intl_HWR *)&v6 initialSelectedIndex];
  }

  return initialSelectedIndex;
}

- (BOOL)isDummyCandidate:(id)candidate
{
  v3 = MEMORY[0x29EDB8E28];
  candidateCopy = candidate;
  null = [v3 null];
  v6 = [candidateCopy isEqual:null];

  return v6;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc(MEMORY[0x29EDC7228]);
  keyboardState = [(TIKeyboardInputManager_intl_HWR *)self keyboardState];
  v7 = [v5 initWithKeyboardState:keyboardState];

  if ([inputCopy isBackspace])
  {
    [(TIKeyboardInputManager_intl_HWR *)self deleteFromInputWithContext:v7];
  }

  else
  {
    [(TIKeyboardInputManager_intl_HWR *)self addInput:inputCopy withContext:v7];
  }

  output = [v7 output];

  return output;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (candidates)
  {
    v8 = candidates;
    object = [inputCopy object];

    if (object)
    {
      [(TIKeyboardInputManager_intl_HWR *)self acceptCurrentCandidateWithContext:contextCopy];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:0];
    }
  }

  object2 = [inputCopy object];

  if (object2)
  {
    object3 = [inputCopy object];
    v12 = [(TIKeyboardInputManager_intl_HWR *)self addInputObject:object3 withContext:contextCopy];
    [inputCopy setString:v12];
  }

  string = [inputCopy string];
  if (string)
  {
    [contextCopy insertText:string];
  }
}

- (id)addInputObject:(id)object withContext:(id)context
{
  v31[1] = *MEMORY[0x29EDCA608];
  contextCopy = context;
  [(TIKeyboardInputManager_intl_HWR *)self setUserDrawing:object];
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  numberOfStrokes = [userDrawing numberOfStrokes];

  if (!numberOfStrokes)
  {
    [(TIKeyboardInputManager_intl_HWR *)self clearInput];
    v25 = &stru_2A25253D8;
    goto LABEL_12;
  }

  [(TIKeyboardInputManager_intl_HWR *)self updateCandidates];
  defaultCandidate = [(TIKeyboardInputManager_intl_HWR *)self defaultCandidate];
  candidate = [defaultCandidate candidate];

  v11 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"-_一"];
  userDrawing2 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  if ([userDrawing2 numberOfStrokes] == 1)
  {
    v13 = [v11 characterIsMember:{objc_msgSend(candidate, "_firstChar")}];

    if (v13)
    {
      userDrawing3 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      v15 = [userDrawing3 numberOfPointsInStrokeAtIndex:0];

      userDrawing4 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [userDrawing4 pointAtIndex:0 inStrokeAtIndex:0];
      v18 = v17;

      userDrawing5 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [userDrawing5 pointAtIndex:v15 - 1 inStrokeAtIndex:0];
      v21 = v20;

      if (v18 >= v21)
      {
        [contextCopy deleteBackward:1];
        v22 = [MEMORY[0x29EDC7088] candidateWithUnchangedInput:@"DELETE"];
        v30 = v22;
        v23 = MEMORY[0x29EDB8D80];
        v24 = &v30;
      }

      else
      {
        [contextCopy insertText:@" "];
        v22 = [MEMORY[0x29EDC7088] candidateWithUnchangedInput:&stru_2A25253D8];
        v31[0] = v22;
        v23 = MEMORY[0x29EDB8D80];
        v24 = v31;
      }

      v27 = [v23 arrayWithObjects:v24 count:1];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v27];

      v26 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v26 = candidate;
LABEL_11:
  v25 = v26;

LABEL_12:
  v28 = *MEMORY[0x29EDCA608];

  return v25;
}

- (void)clearInput
{
  [(TIKeyboardInputManager_intl_HWR *)self setUserDrawing:0];
  [(TIKeyboardInputManager_intl_HWR *)self setCandidates:0];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_intl_HWR;
  [(TIKeyboardInputManager_intl_HWR *)&v3 clearInput];
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  [(TIKeyboardInputManager_intl_HWR *)self clearInput];
  [contextCopy deleteBackward:1];
}

- (unsigned)inputCount
{
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  numberOfStrokes = [userDrawing numberOfStrokes];

  return numberOfStrokes;
}

@end