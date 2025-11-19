@interface TIKeyboardInputManager_intl_HWR
- (BOOL)isDummyCandidate:(id)a3;
- (CHRecognizer)recognizer;
- (id)addInputObject:(id)a3 withContext:(id)a4;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)handleKeyboardInput:(id)a3;
- (id)recognitionResultsForStrokes:(id)a3 context:(id)a4;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)deleteFromInputWithContext:(id)a3;
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

- (id)recognitionResultsForStrokes:(id)a3 context:(id)a4
{
  v17[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x29EDC0DF0]);
  if ([v6 numberOfStrokes])
  {
    v9 = 0;
    do
    {
      if ([v6 numberOfPointsInStrokeAtIndex:v9])
      {
        v10 = 0;
        do
        {
          [v6 pointAtIndex:v10 inStrokeAtIndex:v9];
          [v8 addPoint:?];
          ++v10;
        }

        while (v10 < [v6 numberOfPointsInStrokeAtIndex:v9]);
      }

      [v8 endStroke];
      ++v9;
    }

    while (v9 < [v6 numberOfStrokes]);
  }

  if (v7)
  {
    v16 = *MEMORY[0x29EDC0DE8];
    v17[0] = v7;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(TIKeyboardInputManager_intl_HWR *)self recognizer];
  v13 = [v12 recognitionResultsForDrawing:v8 options:v11];

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)updateCandidates
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];

  if (v3)
  {
    v4 = [(TIKeyboardInputManager_intl_HWR *)self contextBeforeWithDesiredLength:10];
    v5 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
    v6 = [(TIKeyboardInputManager_intl_HWR *)self recognitionResultsForStrokes:v5 context:v4];

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
          v14 = [*(*(&v19 + 1) + 8 * v12) string];
          v15 = [v13 candidateWithUnchangedInput:v14];
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
      v16 = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSet];
      [(TIKeyboardInputManager_intl_HWR *)self closeCandidateGenerationContextWithResults:v16];
    }

    else
    {
      v16 = [MEMORY[0x29EDB8E28] null];
      v23 = v16;
      v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v23 count:1];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v17];
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (id)candidateResultSet
{
  v3 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  v6 = [v5 firstObject];
  v7 = [MEMORY[0x29EDB8E28] null];

  if (v6 == v7)
  {
LABEL_4:
    v9 = [MEMORY[0x29EDC7080] dummySet];
  }

  else
  {
    v8 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    v9 = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSetFromCandidates:v8];
  }

  return v9;
}

- (id)defaultCandidate
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  v4 = [v3 count];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (![(TIKeyboardInputManager_intl_HWR *)self isDummyCandidate:v10])
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if ([v3 count] && -[TIKeyboardInputManager_intl_HWR inputCount](self, "inputCount"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_intl_HWR;
    v4 = [(TIKeyboardInputManager_intl_HWR *)&v6 initialSelectedIndex];
  }

  return v4;
}

- (BOOL)isDummyCandidate:(id)a3
{
  v3 = MEMORY[0x29EDB8E28];
  v4 = a3;
  v5 = [v3 null];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x29EDC7228]);
  v6 = [(TIKeyboardInputManager_intl_HWR *)self keyboardState];
  v7 = [v5 initWithKeyboardState:v6];

  if ([v4 isBackspace])
  {
    [(TIKeyboardInputManager_intl_HWR *)self deleteFromInputWithContext:v7];
  }

  else
  {
    [(TIKeyboardInputManager_intl_HWR *)self addInput:v4 withContext:v7];
  }

  v8 = [v7 output];

  return v8;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (v7)
  {
    v8 = v7;
    v9 = [v14 object];

    if (v9)
    {
      [(TIKeyboardInputManager_intl_HWR *)self acceptCurrentCandidateWithContext:v6];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:0];
    }
  }

  v10 = [v14 object];

  if (v10)
  {
    v11 = [v14 object];
    v12 = [(TIKeyboardInputManager_intl_HWR *)self addInputObject:v11 withContext:v6];
    [v14 setString:v12];
  }

  v13 = [v14 string];
  if (v13)
  {
    [v6 insertText:v13];
  }
}

- (id)addInputObject:(id)a3 withContext:(id)a4
{
  v31[1] = *MEMORY[0x29EDCA608];
  v6 = a4;
  [(TIKeyboardInputManager_intl_HWR *)self setUserDrawing:a3];
  v7 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  v8 = [v7 numberOfStrokes];

  if (!v8)
  {
    [(TIKeyboardInputManager_intl_HWR *)self clearInput];
    v25 = &stru_2A25253D8;
    goto LABEL_12;
  }

  [(TIKeyboardInputManager_intl_HWR *)self updateCandidates];
  v9 = [(TIKeyboardInputManager_intl_HWR *)self defaultCandidate];
  v10 = [v9 candidate];

  v11 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"-_一"];
  v12 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  if ([v12 numberOfStrokes] == 1)
  {
    v13 = [v11 characterIsMember:{objc_msgSend(v10, "_firstChar")}];

    if (v13)
    {
      v14 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      v15 = [v14 numberOfPointsInStrokeAtIndex:0];

      v16 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [v16 pointAtIndex:0 inStrokeAtIndex:0];
      v18 = v17;

      v19 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [v19 pointAtIndex:v15 - 1 inStrokeAtIndex:0];
      v21 = v20;

      if (v18 >= v21)
      {
        [v6 deleteBackward:1];
        v22 = [MEMORY[0x29EDC7088] candidateWithUnchangedInput:@"DELETE"];
        v30 = v22;
        v23 = MEMORY[0x29EDB8D80];
        v24 = &v30;
      }

      else
      {
        [v6 insertText:@" "];
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

  v26 = v10;
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

- (void)deleteFromInputWithContext:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManager_intl_HWR *)self clearInput];
  [v4 deleteBackward:1];
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  v3 = [v2 numberOfStrokes];

  return v3;
}

@end