@interface TIZhuyinInputManager
- (BOOL)addNonZhuyinInput:(id)a3;
- (BOOL)addZhuyinInput:(id)a3 withUpdatingComposedTextToClient:(BOOL)a4;
- (BOOL)deleteFromInput;
- (BOOL)forwardDeleteFromInput;
- (BOOL)isCursorAtEnd;
- (BOOL)revertCurrentCharacterToTonelessZhuyin;
- (BOOL)shouldDirectlyCommitInput:(id)a3;
- (BOOL)syllableBuffersValid;
- (NSString)composedText;
- (NSString)syllableBuffersAggregateString;
- (TIZhuyinInputManager)init;
- (id)convertToFullWidth:(id)a3;
- (id)inputStringForCharacters:(id)a3;
- (id)readingsLengths:(id)a3;
- (unint64_t)bufferSplittingLengthsIndex;
- (unint64_t)composedBufferCursorLocation;
- (unint64_t)inputBufferIndexOf:(unint64_t)a3;
- (unint64_t)syllableBuffersAggregateLength;
- (void)moveCursorBackward;
- (void)moveCursorForward;
- (void)reset;
- (void)resetSyllableBuffers;
- (void)updateWithCandidate:(id)a3 isWholeInputCandidate:(BOOL)a4;
@end

@implementation TIZhuyinInputManager

- (TIZhuyinInputManager)init
{
  v13.receiver = self;
  v13.super_class = TIZhuyinInputManager;
  v2 = [(TIZhuyinInputManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    *(v2 + 10) = 0;
    v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
    inputBuffer = v3->_inputBuffer;
    v3->_inputBuffer = v4;

    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    inputBufferSplittingLengths = v3->_inputBufferSplittingLengths;
    v3->_inputBufferSplittingLengths = v6;

    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    composedBufferSplittingLengths = v3->_composedBufferSplittingLengths;
    v3->_composedBufferSplittingLengths = v8;

    v10 = objc_alloc_init(MEMORY[0x29EDBA050]);
    composedBuffer = v3->_composedBuffer;
    v3->_composedBuffer = v10;
  }

  return v3;
}

- (BOOL)addZhuyinInput:(id)a3 withUpdatingComposedTextToClient:(BOOL)a4
{
  v6 = a3;
  if (![v6 length])
  {
    [TIZhuyinInputManager addZhuyinInput:a2 withUpdatingComposedTextToClient:self];
  }

  v7 = [v6 characterAtIndex:0];
  v8 = [(TIZhuyinInputManager *)self inputCursorLocation];
  v9 = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
  v10 = [MEMORY[0x29EDB9F50] zhuyinPhonemeCharacterSet];
  v11 = [v6 rangeOfCharacterFromSet:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x29EDB9F50] zhuyinConsonantCharacterSet];
    v15 = [v6 rangeOfCharacterFromSet:v14];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [MEMORY[0x29EDB9F50] zhuyinMedialCharacterSet];
      v17 = [v6 rangeOfCharacterFromSet:v16];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [MEMORY[0x29EDB9F50] zhuyinVowelCharacterSet];
        v19 = [v6 rangeOfCharacterFromSet:v18];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(TIZhuyinInputManager *)self setSyllableVowelBuffer:v7];
        }
      }

      else
      {
        [(TIZhuyinInputManager *)self setSyllableMedialBuffer:v7];
      }
    }

    else
    {
      [(TIZhuyinInputManager *)self setSyllableConsonantBuffer:v7];
    }

    v23 = [(TIZhuyinInputManager *)self syllableBuffersOccupied];
    v12 = [(TIZhuyinInputManager *)self inputBuffer];
    v24 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
    if (v23)
    {
      [v12 replaceCharactersInRange:v8 withString:{v9, v24}];
    }

    else
    {
      [v12 insertString:v24 atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];
    }

    goto LABEL_21;
  }

  if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    if ([v6 isEqualToString:@" "])
    {
      v7 = [@"ˉ" characterAtIndex:0];
    }

    [(TIZhuyinInputManager *)self setSyllableToneBuffer:v7];
    v12 = [(TIZhuyinInputManager *)self inputBuffer];
    v13 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
    [v12 replaceCharactersInRange:v8 withString:{v9, v13}];

LABEL_21:
LABEL_22:
    LOBYTE(v22) = 1;
    goto LABEL_23;
  }

  v20 = [(TIZhuyinInputManager *)self inputBuffer];
  v21 = [v20 length];

  if (v21 && ([v6 isEqualToString:@" "] & 1) == 0)
  {
    v26 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    v27 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v28 = [v27 objectAtIndex:v26];
    v29 = [v28 unsignedIntegerValue];

    if ([(TIZhuyinInputManager *)self inputCursorLocation])
    {
      v30 = [(TIZhuyinInputManager *)self inputCursorLocation]- v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = [(TIZhuyinInputManager *)self inputBuffer];
    v32 = [v31 substringWithRange:{v30, v29}];

    v33 = [MEMORY[0x29EDB9F50] zhuyinPhonemeCharacterSet];
    v34 = [v32 rangeOfCharacterFromSet:v33];

    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        [(TIZhuyinInputManager *)self deleteFromInput];
      }

      else
      {
        [(TIZhuyinInputManager *)self forwardDeleteFromInput];
      }

      objc_initWeak(&location, self);
      v37[0] = MEMORY[0x29EDCA5F8];
      v37[1] = 3221225472;
      v37[2] = __72__TIZhuyinInputManager_addZhuyinInput_withUpdatingComposedTextToClient___block_invoke;
      v37[3] = &unk_29F37D440;
      objc_copyWeak(&v38, &location);
      v39 = v7;
      [v32 enumerateSubstringsInRange:0 options:v29 usingBlock:{2, v37}];
      v35 = [(TIZhuyinInputManager *)self inputBuffer];
      v36 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
      [v35 insertString:v36 atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    goto LABEL_22;
  }

  v22 = ![(TIZhuyinInputManager *)self shouldDirectlyCommitInput:v6];
LABEL_23:

  return v22;
}

void __72__TIZhuyinInputManager_addZhuyinInput_withUpdatingComposedTextToClient___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v13 characterAtIndex:0];
  v5 = [MEMORY[0x29EDB9F50] zhuyinConsonantCharacterSet];
  v6 = [v13 rangeOfCharacterFromSet:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x29EDB9F50] zhuyinMedialCharacterSet];
    v8 = [v13 rangeOfCharacterFromSet:v7];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x29EDB9F50] zhuyinVowelCharacterSet];
      v10 = [v13 rangeOfCharacterFromSet:v9];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [MEMORY[0x29EDB9F50] zhuyinToneCharacterSet];
        v12 = [v13 rangeOfCharacterFromSet:v11];

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [WeakRetained setSyllableToneBuffer:*(a1 + 40)];
        }
      }

      else
      {
        [WeakRetained setSyllableVowelBuffer:v4];
      }
    }

    else
    {
      [WeakRetained setSyllableMedialBuffer:v4];
    }
  }

  else
  {
    [WeakRetained setSyllableConsonantBuffer:v4];
  }
}

- (void)updateWithCandidate:(id)a3 isWholeInputCandidate:(BOOL)a4
{
  v4 = a4;
  v60 = a3;
  if ([(TIZhuyinInputManager *)self syllableBuffersValid])
  {
    v6 = [(TIZhuyinInputManager *)self composedBuffer];
    v7 = [v60 candidate];
    if (v4)
    {
      [v6 setString:v7];
    }

    else
    {
      [v6 insertString:v7 atIndex:{-[TIZhuyinInputManager composedBufferCursorLocation](self, "composedBufferCursorLocation")}];
    }

    v8 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    if ([(TIZhuyinInputManager *)self composedBufferCursorLocation])
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10];
    v12 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v13 = v12;
    if (v4)
    {
      v54 = v10;
      v55 = v11;
      [v12 removeAllObjects];

      v57 = self;
      v14 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [v14 removeAllObjects];

      v15 = [v60 mecabraCandidatePointerValue];
      [v15 unsignedLongLongValue];

      WordCount = MecabraCandidateGetWordCount();
      context = objc_autoreleasePoolPush();
      if (WordCount)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v56 = WordCount;
        do
        {
          WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex();
          v21 = WordLengthAtIndex;
          WordReadingLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex();
          v23 = [v60 candidate];
          v58 = v18;
          v24 = [v23 substringWithRange:{v18, WordLengthAtIndex}];

          v25 = [v60 input];
          v59 = WordReadingLengthAtIndex;
          v26 = [v25 substringWithRange:{v19, WordReadingLengthAtIndex}];

          v27 = [MEMORY[0x29EDB8DE8] array];
          if (WordLengthAtIndex)
          {
            v28 = 0;
            do
            {
              [v24 rangeOfComposedCharacterSequenceAtIndex:v28];
              v30 = v29;
              v31 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v29];
              [v27 addObject:v31];

              v28 += v30;
            }

            while (v28 < v21);
          }

          if (MecabraCandidateWordAtIndexIsFromSystemDictionary())
          {
            v32 = [(TIZhuyinInputManager *)v57 inputBufferSplittingLengths];
            v33 = [(TIZhuyinInputManager *)v57 readingsLengths:v26];
            [v32 addObjectsFromArray:v33];

            v34 = [(TIZhuyinInputManager *)v57 composedBufferSplittingLengths];
            [v34 addObjectsFromArray:v27];
          }

          else
          {
            v35 = MecabraCandidateCopySyllableLengthArrayForWordAtIndex();
            v34 = v35;
            if (v35 && (v36 = [v35 count], v36 != objc_msgSend(v27, "count")))
            {
              v40 = [(TIZhuyinInputManager *)v57 inputBufferSplittingLengths];
              v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v59];
              [v40 addObject:v41];

              v39 = [(TIZhuyinInputManager *)v57 composedBufferSplittingLengths];
              v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v21];
              [v39 addObject:v42];
            }

            else
            {
              v37 = [(TIZhuyinInputManager *)v57 inputBufferSplittingLengths];
              v38 = [(TIZhuyinInputManager *)v57 readingsLengths:v26];
              [v37 addObjectsFromArray:v38];

              v39 = [(TIZhuyinInputManager *)v57 composedBufferSplittingLengths];
              [v39 addObjectsFromArray:v27];
            }
          }

          v18 = v58 + v21;
          v19 += v59;
          ++v17;
        }

        while (v17 != v56);
      }

      objc_autoreleasePoolPop(context);
      self = v57;
      v10 = v54;
      v11 = v55;
    }

    else
    {
      v43 = [v12 count];

      v44 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v45 = v44;
      if (v43 >= v9)
      {
        [v44 insertObject:v11 atIndex:v9];
      }

      else
      {
        [v44 addObject:v11];
      }

      v46 = MEMORY[0x29EDBA070];
      v47 = [v60 candidate];
      v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "length")}];

      v49 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v50 = [v49 count];

      v51 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v52 = v51;
      if (v50 >= v9)
      {
        [v51 insertObject:v48 atIndex:v9];
      }

      else
      {
        [v51 addObject:v48];
      }
    }

    [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]+ v10];
    [(TIZhuyinInputManager *)self resetSyllableBuffers];
  }
}

- (BOOL)addNonZhuyinInput:(id)a3
{
  v4 = a3;
  v5 = [(TIZhuyinInputManager *)self shouldDirectlyCommitInput:v4];
  if (!v5 && ![(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    v6 = [(TIZhuyinInputManager *)self convertToFullWidth:v4];
    v7 = [(TIZhuyinInputManager *)self inputBuffer];
    [v7 insertString:v6 atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];

    v8 = [(TIZhuyinInputManager *)self composedBuffer];
    [v8 insertString:v6 atIndex:{-[TIZhuyinInputManager composedBufferCursorLocation](self, "composedBufferCursorLocation")}];

    v9 = [v6 length];
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v9];
    v11 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    if ([(TIZhuyinInputManager *)self composedBufferCursorLocation])
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v14 = [v13 count];

    v15 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v16 = v15;
    if (v14 >= v12)
    {
      [v15 insertObject:v10 atIndex:v12];

      v17 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [v17 insertObject:v10 atIndex:v12];
    }

    else
    {
      [v15 addObject:v10];

      v17 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [v17 addObject:v10];
    }

    [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]+ v9];
  }

  return !v5;
}

- (BOOL)deleteFromInput
{
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TIZhuyinInputManager *)self syllableBuffersOccupied];
    v6 = [(TIZhuyinInputManager *)self inputCursorLocation];
    if (v5)
    {
      v7 = v6 + [(TIZhuyinInputManager *)self syllableBuffersAggregateLength]- 1;
      v8 = [(TIZhuyinInputManager *)self inputBuffer];
      [v8 deleteCharactersInRange:{v7, 1}];

      if ([(TIZhuyinInputManager *)self syllableToneBuffer])
      {
        [(TIZhuyinInputManager *)self setSyllableToneBuffer:0];
      }

      else if ([(TIZhuyinInputManager *)self syllableVowelBuffer])
      {
        [(TIZhuyinInputManager *)self setSyllableVowelBuffer:0];
      }

      else if ([(TIZhuyinInputManager *)self syllableMedialBuffer])
      {
        [(TIZhuyinInputManager *)self setSyllableMedialBuffer:0];
      }

      else if ([(TIZhuyinInputManager *)self syllableConsonantBuffer])
      {
        [(TIZhuyinInputManager *)self setSyllableConsonantBuffer:0];
      }
    }

    else if (v6)
    {
      v9 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
      v10 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v11 = [v10 objectAtIndex:v9];
      v12 = [v11 unsignedIntegerValue];

      v13 = [(TIZhuyinInputManager *)self inputCursorLocation]- v12;
      v14 = [(TIZhuyinInputManager *)self inputBuffer];
      [v14 deleteCharactersInRange:{v13, v12}];

      v15 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v16 = [v15 objectAtIndex:v9];
      v17 = [v16 unsignedIntegerValue];

      v18 = [(TIZhuyinInputManager *)self composedBufferCursorLocation]- v17;
      v19 = [(TIZhuyinInputManager *)self composedBuffer];
      [v19 deleteCharactersInRange:{v18, v17}];

      v20 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      [v20 removeObjectAtIndex:v9];

      v21 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [v21 removeObjectAtIndex:v9];

      [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]- v12];
    }
  }

  return v4 != 0;
}

- (BOOL)forwardDeleteFromInput
{
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [v3 length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      v5 = [(TIZhuyinInputManager *)self inputCursorLocation];
      v6 = [(TIZhuyinInputManager *)self inputBuffer];
      v7 = [v6 length];

      if (v5 < v7)
      {
        v8 = [(TIZhuyinInputManager *)self inputCursorLocation];
        v9 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        if (v8)
        {
          v10 = v9 + 1;
        }

        else
        {
          v10 = v9;
        }

        v11 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v12 = [v11 objectAtIndex:v10];
        v13 = [v12 unsignedIntegerValue];

        v14 = [(TIZhuyinInputManager *)self inputCursorLocation];
        v15 = [(TIZhuyinInputManager *)self inputBuffer];
        [v15 deleteCharactersInRange:{v14, v13}];

        v16 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
        v17 = [v16 objectAtIndex:v10];
        v18 = [v17 unsignedIntegerValue];

        v19 = [(TIZhuyinInputManager *)self composedBufferCursorLocation];
        v20 = [(TIZhuyinInputManager *)self composedBuffer];
        [v20 deleteCharactersInRange:{v19, v18}];

        v21 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        [v21 removeObjectAtIndex:v10];

        v22 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
        [v22 removeObjectAtIndex:v10];
      }
    }
  }

  return v4 != 0;
}

- (unint64_t)inputBufferIndexOf:(unint64_t)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = [(TIZhuyinInputManager *)self composedBuffer];
  v6 = 0;
  if ([v5 length] <= a3)
  {
    v7 = [(TIZhuyinInputManager *)self composedBuffer];
    v6 = a3 - [v7 length];
  }

  v15 = v6;
  v8 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __43__TIZhuyinInputManager_inputBufferIndexOf___block_invoke;
  v11[3] = &unk_29F37D468;
  v11[4] = &v12;
  v11[5] = a3;
  [v8 enumerateObjectsUsingBlock:v11];

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __43__TIZhuyinInputManager_inputBufferIndexOf___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    *a4 = 1;
  }

  else
  {
    v4 = result;
    result = [a2 unsignedIntegerValue];
    *(*(*(v4 + 32) + 8) + 24) += result;
  }

  return result;
}

- (BOOL)isCursorAtEnd
{
  v2 = self;
  v3 = [(TIZhuyinInputManager *)self composedText];
  v4 = [v3 length];
  LOBYTE(v2) = v4 == [(TIZhuyinInputManager *)v2 cursorLocation];

  return v2;
}

- (id)readingsLengths:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v3 = MEMORY[0x29EDB8DE8];
  v4 = a3;
  v16 = [v3 array];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v5 = [v4 length];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __40__TIZhuyinInputManager_readingsLengths___block_invoke;
  v8[3] = &unk_29F37D490;
  v8[4] = v9;
  v8[5] = v10;
  v8[6] = &v11;
  [v4 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];

  v6 = v12[5];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __40__TIZhuyinInputManager_readingsLengths___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  ++*(*(a1[4] + 8) + 24);
  v3 = [MEMORY[0x29EDB9F50] zhuyinToneCharacterSet];
  if ([v8 rangeOfCharacterFromSet:v3] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_5;
  }

  v4 = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  v5 = [v8 rangeOfCharacterFromSet:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    ++*(*(a1[5] + 8) + 24);
    v6 = *(*(a1[6] + 8) + 40);
    v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:*(*(a1[4] + 8) + 24)];
    [v6 addObject:v7];

    *(*(a1[4] + 8) + 24) = 0;
  }
}

- (id)convertToFullWidth:(id)a3
{
  v4 = a3;
  v5 = [v4 characterAtIndex:0];
  if (v5 <= 90)
  {
    if (v5 > 59)
    {
      if (v5 == 60)
      {

        v6 = @"《";
        goto LABEL_26;
      }

      if (v5 == 62)
      {

        v6 = @"》";
        goto LABEL_26;
      }
    }

    else
    {
      if (v5 == 34)
      {
        v8 = [(TIZhuyinInputManager *)self leftDoubleQuotationMarkInserted];

        if (v8)
        {
          [(TIZhuyinInputManager *)self setLeftDoubleQuotationMarkInserted:0];
          v6 = @"”";
        }

        else
        {
          [(TIZhuyinInputManager *)self setLeftDoubleQuotationMarkInserted:1];
          v6 = @"“";
        }

        goto LABEL_26;
      }

      if (v5 == 39)
      {
        v7 = [(TIZhuyinInputManager *)self leftSingleQuotationMarkInserted];

        if (v7)
        {
          [(TIZhuyinInputManager *)self setLeftSingleQuotationMarkInserted:0];
          v6 = @"’";
        }

        else
        {
          [(TIZhuyinInputManager *)self setLeftSingleQuotationMarkInserted:1];
          v6 = @"‘";
        }

        goto LABEL_26;
      }
    }

LABEL_23:
    v6 = [v4 mutableCopy];
    CFStringTransform(v6, 0, *MEMORY[0x29EDB8FD8], 1u);

    goto LABEL_26;
  }

  if (v5 > 92)
  {
    switch(v5)
    {
      case ']':

        v6 = @"」";
        goto LABEL_26;
      case '{':

        v6 = @"『";
        goto LABEL_26;
      case '}':

        v6 = @"』";
        goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v5 == 91)
  {

    v6 = @"「";
  }

  else
  {

    v6 = @"、";
  }

LABEL_26:

  return v6;
}

- (BOOL)shouldDirectlyCommitInput:(id)a3
{
  v4 = a3;
  if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    goto LABEL_3;
  }

  v5 = [(TIZhuyinInputManager *)self inputBuffer];
  v6 = [v5 length];

  if (v6 || ([v4 isEqualToString:@" "] & 1) == 0 && (objc_msgSend(MEMORY[0x29EDB9F50], "zhuyinToneCharacterSet"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "rangeOfCharacterFromSet:", v9), v9, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_3:
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)revertCurrentCharacterToTonelessZhuyin
{
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [v3 length];

  if (v4)
  {
    if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      v5 = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
      if (v5)
      {
        v6 = v5;
        do
        {
          [(TIZhuyinInputManager *)self deleteFromInput];
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v7 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
      v8 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v9 = [v8 objectAtIndex:v7];
      v10 = [v9 unsignedIntegerValue];

      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        v11 = [(TIZhuyinInputManager *)self inputCursorLocation]- v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [(TIZhuyinInputManager *)self inputBuffer];
      v13 = [v12 substringWithRange:{v11, v10}];

      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        [(TIZhuyinInputManager *)self deleteFromInput];
      }

      else
      {
        [(TIZhuyinInputManager *)self forwardDeleteFromInput];
      }

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __62__TIZhuyinInputManager_revertCurrentCharacterToTonelessZhuyin__block_invoke;
      v15[3] = &unk_29F37D4B8;
      objc_copyWeak(&v16, &location);
      [v13 enumerateSubstringsInRange:0 options:v10 - 1 usingBlock:{2, v15}];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return v4 != 0;
}

void __62__TIZhuyinInputManager_revertCurrentCharacterToTonelessZhuyin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addZhuyinInput:v3 withUpdatingComposedTextToClient:0];
}

- (void)resetSyllableBuffers
{
  [(TIZhuyinInputManager *)self setSyllableConsonantBuffer:0];
  [(TIZhuyinInputManager *)self setSyllableMedialBuffer:0];
  [(TIZhuyinInputManager *)self setSyllableVowelBuffer:0];

  [(TIZhuyinInputManager *)self setSyllableToneBuffer:0];
}

- (void)reset
{
  [(TIZhuyinInputManager *)self resetSyllableBuffers];
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  [v3 setString:&stru_2A252F9A8];

  [(TIZhuyinInputManager *)self setInputCursorLocation:0];
  v4 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
  [v4 removeAllObjects];

  v5 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
  [v5 removeAllObjects];

  v6 = [(TIZhuyinInputManager *)self composedBuffer];
  [v6 setString:&stru_2A252F9A8];
}

- (NSString)composedText
{
  v3 = [(TIZhuyinInputManager *)self composedBufferCursorLocation];
  v4 = [(TIZhuyinInputManager *)self composedBuffer];
  v5 = [v4 substringToIndex:v3];

  v6 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"ˉ" withString:@" "];

  v8 = [(TIZhuyinInputManager *)self composedBuffer];
  v9 = [v8 substringFromIndex:v3];

  v10 = [v7 stringByAppendingString:v9];
  v11 = [v5 stringByAppendingString:v10];

  return v11;
}

- (unint64_t)bufferSplittingLengthsIndex
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(TIZhuyinInputManager *)self inputCursorLocation];
  if (v3)
  {
    v4 = v3;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v5 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __51__TIZhuyinInputManager_bufferSplittingLengthsIndex__block_invoke;
    v8[3] = &unk_29F37D4E0;
    v8[5] = &v10;
    v8[6] = v4;
    v8[4] = v9;
    [v5 enumerateObjectsUsingBlock:v8];

    _Block_object_dispose(v9, 8);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __51__TIZhuyinInputManager_bufferSplittingLengthsIndex__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntegerValue];
  *(*(a1[4] + 8) + 24) += result;
  if (*(*(a1[4] + 8) + 24) == a1[6])
  {
    *(*(a1[5] + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)composedBufferCursorLocation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(TIZhuyinInputManager *)self inputCursorLocation])
  {
    v3 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    v4 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __52__TIZhuyinInputManager_composedBufferCursorLocation__block_invoke;
    v7[3] = &unk_29F37D508;
    v7[4] = &v8;
    v7[5] = v3;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __52__TIZhuyinInputManager_composedBufferCursorLocation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  if (*(a1 + 40) == a3)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)syllableBuffersValid
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(TIZhuyinInputManager *)v2 syllableToneBuffer])
  {
    v3 = [(TIZhuyinInputManager *)v2 syllableConsonantBuffer]|| [(TIZhuyinInputManager *)v2 syllableMedialBuffer]|| [(TIZhuyinInputManager *)v2 syllableVowelBuffer]!= 0;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)syllableBuffersAggregateLength
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TIZhuyinInputManager *)v2 syllableConsonantBuffer];
  v4 = [(TIZhuyinInputManager *)v2 syllableMedialBuffer];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  if ([(TIZhuyinInputManager *)v2 syllableVowelBuffer])
  {
    ++v6;
  }

  if ([(TIZhuyinInputManager *)v2 syllableToneBuffer])
  {
    ++v6;
  }

  objc_sync_exit(v2);

  return v6;
}

- (NSString)syllableBuffersAggregateString
{
  v3 = [MEMORY[0x29EDBA050] string];
  v4 = self;
  objc_sync_enter(v4);
  if ([(TIZhuyinInputManager *)v4 syllableConsonantBuffer])
  {
    [v3 appendFormat:@"%C", -[TIZhuyinInputManager syllableConsonantBuffer](v4, "syllableConsonantBuffer")];
  }

  if ([(TIZhuyinInputManager *)v4 syllableMedialBuffer])
  {
    [v3 appendFormat:@"%C", -[TIZhuyinInputManager syllableMedialBuffer](v4, "syllableMedialBuffer")];
  }

  if ([(TIZhuyinInputManager *)v4 syllableVowelBuffer])
  {
    [v3 appendFormat:@"%C", -[TIZhuyinInputManager syllableVowelBuffer](v4, "syllableVowelBuffer")];
  }

  if ([(TIZhuyinInputManager *)v4 syllableToneBuffer])
  {
    [v3 appendFormat:@"%C", -[TIZhuyinInputManager syllableToneBuffer](v4, "syllableToneBuffer")];
  }

  objc_sync_exit(v4);

  return v3;
}

- (id)inputStringForCharacters:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [a3 stringByApplyingTransform:@"Han-Latin Latin-Bopomofo" reverse:0];;
  v4 = [MEMORY[0x29EDB8DE8] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 componentsSeparatedByString:@" "];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = [v10 substringFromIndex:{objc_msgSend(v10, "length") - 1}];
          v12 = [@"ˉˊˇˋ˙" rangeOfString:v11];

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v10 stringByAppendingString:@"ˉ"];
            [v4 addObject:v13];
          }

          else
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 componentsJoinedByString:&stru_2A252F9A8];

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (void)moveCursorBackward
{
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [v3 length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        v5 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        v6 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v7 = [v6 count];

        if (v5 < v7)
        {
          v9 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
          v8 = [v9 objectAtIndex:v5];
          -[TIZhuyinInputManager setInputCursorLocation:](self, "setInputCursorLocation:", -[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation") - [v8 unsignedIntegerValue]);
        }
      }
    }
  }
}

- (void)moveCursorForward
{
  v3 = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [v3 length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      v5 = [(TIZhuyinInputManager *)self inputCursorLocation];
      v6 = [(TIZhuyinInputManager *)self inputBuffer];
      v7 = [v6 length];

      if (v5 < v7)
      {
        v8 = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        if ([(TIZhuyinInputManager *)self inputCursorLocation])
        {
          ++v8;
        }

        v9 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v10 = [v9 count];

        if (v8 < v10)
        {
          v12 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
          v11 = [v12 objectAtIndex:v8];
          -[TIZhuyinInputManager setInputCursorLocation:](self, "setInputCursorLocation:", -[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation") + [v11 unsignedIntegerValue]);
        }
      }
    }
  }
}

- (void)addZhuyinInput:(uint64_t)a1 withUpdatingComposedTextToClient:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIZhuyinInputManager.m" lineNumber:73 description:{@"Should not happen, we are expecting Zhuyin input to be non-empty string."}];
}

@end