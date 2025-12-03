@interface TIZhuyinInputManager
- (BOOL)addNonZhuyinInput:(id)input;
- (BOOL)addZhuyinInput:(id)input withUpdatingComposedTextToClient:(BOOL)client;
- (BOOL)deleteFromInput;
- (BOOL)forwardDeleteFromInput;
- (BOOL)isCursorAtEnd;
- (BOOL)revertCurrentCharacterToTonelessZhuyin;
- (BOOL)shouldDirectlyCommitInput:(id)input;
- (BOOL)syllableBuffersValid;
- (NSString)composedText;
- (NSString)syllableBuffersAggregateString;
- (TIZhuyinInputManager)init;
- (id)convertToFullWidth:(id)width;
- (id)inputStringForCharacters:(id)characters;
- (id)readingsLengths:(id)lengths;
- (unint64_t)bufferSplittingLengthsIndex;
- (unint64_t)composedBufferCursorLocation;
- (unint64_t)inputBufferIndexOf:(unint64_t)of;
- (unint64_t)syllableBuffersAggregateLength;
- (void)moveCursorBackward;
- (void)moveCursorForward;
- (void)reset;
- (void)resetSyllableBuffers;
- (void)updateWithCandidate:(id)candidate isWholeInputCandidate:(BOOL)inputCandidate;
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

- (BOOL)addZhuyinInput:(id)input withUpdatingComposedTextToClient:(BOOL)client
{
  inputCopy = input;
  if (![inputCopy length])
  {
    [TIZhuyinInputManager addZhuyinInput:a2 withUpdatingComposedTextToClient:self];
  }

  v7 = [inputCopy characterAtIndex:0];
  inputCursorLocation = [(TIZhuyinInputManager *)self inputCursorLocation];
  syllableBuffersAggregateLength = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
  zhuyinPhonemeCharacterSet = [MEMORY[0x29EDB9F50] zhuyinPhonemeCharacterSet];
  v11 = [inputCopy rangeOfCharacterFromSet:zhuyinPhonemeCharacterSet];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    zhuyinConsonantCharacterSet = [MEMORY[0x29EDB9F50] zhuyinConsonantCharacterSet];
    v15 = [inputCopy rangeOfCharacterFromSet:zhuyinConsonantCharacterSet];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      zhuyinMedialCharacterSet = [MEMORY[0x29EDB9F50] zhuyinMedialCharacterSet];
      v17 = [inputCopy rangeOfCharacterFromSet:zhuyinMedialCharacterSet];

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        zhuyinVowelCharacterSet = [MEMORY[0x29EDB9F50] zhuyinVowelCharacterSet];
        v19 = [inputCopy rangeOfCharacterFromSet:zhuyinVowelCharacterSet];

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

    syllableBuffersOccupied = [(TIZhuyinInputManager *)self syllableBuffersOccupied];
    inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
    syllableBuffersAggregateString = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
    if (syllableBuffersOccupied)
    {
      [inputBuffer replaceCharactersInRange:inputCursorLocation withString:{syllableBuffersAggregateLength, syllableBuffersAggregateString}];
    }

    else
    {
      [inputBuffer insertString:syllableBuffersAggregateString atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];
    }

    goto LABEL_21;
  }

  if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    if ([inputCopy isEqualToString:@" "])
    {
      v7 = [@"ˉ" characterAtIndex:0];
    }

    [(TIZhuyinInputManager *)self setSyllableToneBuffer:v7];
    inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
    syllableBuffersAggregateString2 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
    [inputBuffer replaceCharactersInRange:inputCursorLocation withString:{syllableBuffersAggregateLength, syllableBuffersAggregateString2}];

LABEL_21:
LABEL_22:
    LOBYTE(v22) = 1;
    goto LABEL_23;
  }

  inputBuffer2 = [(TIZhuyinInputManager *)self inputBuffer];
  v21 = [inputBuffer2 length];

  if (v21 && ([inputCopy isEqualToString:@" "] & 1) == 0)
  {
    bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v28 = [inputBufferSplittingLengths objectAtIndex:bufferSplittingLengthsIndex];
    unsignedIntegerValue = [v28 unsignedIntegerValue];

    if ([(TIZhuyinInputManager *)self inputCursorLocation])
    {
      v30 = [(TIZhuyinInputManager *)self inputCursorLocation]- unsignedIntegerValue;
    }

    else
    {
      v30 = 0;
    }

    inputBuffer3 = [(TIZhuyinInputManager *)self inputBuffer];
    v32 = [inputBuffer3 substringWithRange:{v30, unsignedIntegerValue}];

    zhuyinPhonemeCharacterSet2 = [MEMORY[0x29EDB9F50] zhuyinPhonemeCharacterSet];
    v34 = [v32 rangeOfCharacterFromSet:zhuyinPhonemeCharacterSet2];

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
      [v32 enumerateSubstringsInRange:0 options:unsignedIntegerValue usingBlock:{2, v37}];
      inputBuffer4 = [(TIZhuyinInputManager *)self inputBuffer];
      syllableBuffersAggregateString3 = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
      [inputBuffer4 insertString:syllableBuffersAggregateString3 atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    goto LABEL_22;
  }

  v22 = ![(TIZhuyinInputManager *)self shouldDirectlyCommitInput:inputCopy];
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

- (void)updateWithCandidate:(id)candidate isWholeInputCandidate:(BOOL)inputCandidate
{
  inputCandidateCopy = inputCandidate;
  candidateCopy = candidate;
  if ([(TIZhuyinInputManager *)self syllableBuffersValid])
  {
    composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
    candidate = [candidateCopy candidate];
    if (inputCandidateCopy)
    {
      [composedBuffer setString:candidate];
    }

    else
    {
      [composedBuffer insertString:candidate atIndex:{-[TIZhuyinInputManager composedBufferCursorLocation](self, "composedBufferCursorLocation")}];
    }

    bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    if ([(TIZhuyinInputManager *)self composedBufferCursorLocation])
    {
      v9 = bufferSplittingLengthsIndex + 1;
    }

    else
    {
      v9 = 0;
    }

    syllableBuffersAggregateLength = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:syllableBuffersAggregateLength];
    inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v13 = inputBufferSplittingLengths;
    if (inputCandidateCopy)
    {
      v54 = syllableBuffersAggregateLength;
      v55 = v11;
      [inputBufferSplittingLengths removeAllObjects];

      selfCopy = self;
      composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [composedBufferSplittingLengths removeAllObjects];

      mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
      [mecabraCandidatePointerValue unsignedLongLongValue];

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
          candidate2 = [candidateCopy candidate];
          v58 = v18;
          v24 = [candidate2 substringWithRange:{v18, WordLengthAtIndex}];

          input = [candidateCopy input];
          v59 = WordReadingLengthAtIndex;
          v26 = [input substringWithRange:{v19, WordReadingLengthAtIndex}];

          array = [MEMORY[0x29EDB8DE8] array];
          if (WordLengthAtIndex)
          {
            v28 = 0;
            do
            {
              [v24 rangeOfComposedCharacterSequenceAtIndex:v28];
              v30 = v29;
              v31 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v29];
              [array addObject:v31];

              v28 += v30;
            }

            while (v28 < v21);
          }

          if (MecabraCandidateWordAtIndexIsFromSystemDictionary())
          {
            inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)selfCopy inputBufferSplittingLengths];
            v33 = [(TIZhuyinInputManager *)selfCopy readingsLengths:v26];
            [inputBufferSplittingLengths2 addObjectsFromArray:v33];

            composedBufferSplittingLengths2 = [(TIZhuyinInputManager *)selfCopy composedBufferSplittingLengths];
            [composedBufferSplittingLengths2 addObjectsFromArray:array];
          }

          else
          {
            v35 = MecabraCandidateCopySyllableLengthArrayForWordAtIndex();
            composedBufferSplittingLengths2 = v35;
            if (v35 && (v36 = [v35 count], v36 != objc_msgSend(array, "count")))
            {
              inputBufferSplittingLengths3 = [(TIZhuyinInputManager *)selfCopy inputBufferSplittingLengths];
              v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v59];
              [inputBufferSplittingLengths3 addObject:v41];

              composedBufferSplittingLengths3 = [(TIZhuyinInputManager *)selfCopy composedBufferSplittingLengths];
              v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v21];
              [composedBufferSplittingLengths3 addObject:v42];
            }

            else
            {
              inputBufferSplittingLengths4 = [(TIZhuyinInputManager *)selfCopy inputBufferSplittingLengths];
              v38 = [(TIZhuyinInputManager *)selfCopy readingsLengths:v26];
              [inputBufferSplittingLengths4 addObjectsFromArray:v38];

              composedBufferSplittingLengths3 = [(TIZhuyinInputManager *)selfCopy composedBufferSplittingLengths];
              [composedBufferSplittingLengths3 addObjectsFromArray:array];
            }
          }

          v18 = v58 + v21;
          v19 += v59;
          ++v17;
        }

        while (v17 != v56);
      }

      objc_autoreleasePoolPop(context);
      self = selfCopy;
      syllableBuffersAggregateLength = v54;
      v11 = v55;
    }

    else
    {
      v43 = [inputBufferSplittingLengths count];

      inputBufferSplittingLengths5 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v45 = inputBufferSplittingLengths5;
      if (v43 >= v9)
      {
        [inputBufferSplittingLengths5 insertObject:v11 atIndex:v9];
      }

      else
      {
        [inputBufferSplittingLengths5 addObject:v11];
      }

      v46 = MEMORY[0x29EDBA070];
      candidate3 = [candidateCopy candidate];
      v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(candidate3, "length")}];

      composedBufferSplittingLengths4 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v50 = [composedBufferSplittingLengths4 count];

      composedBufferSplittingLengths5 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v52 = composedBufferSplittingLengths5;
      if (v50 >= v9)
      {
        [composedBufferSplittingLengths5 insertObject:v48 atIndex:v9];
      }

      else
      {
        [composedBufferSplittingLengths5 addObject:v48];
      }
    }

    [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]+ syllableBuffersAggregateLength];
    [(TIZhuyinInputManager *)self resetSyllableBuffers];
  }
}

- (BOOL)addNonZhuyinInput:(id)input
{
  inputCopy = input;
  v5 = [(TIZhuyinInputManager *)self shouldDirectlyCommitInput:inputCopy];
  if (!v5 && ![(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    v6 = [(TIZhuyinInputManager *)self convertToFullWidth:inputCopy];
    inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
    [inputBuffer insertString:v6 atIndex:{-[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation")}];

    composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
    [composedBuffer insertString:v6 atIndex:{-[TIZhuyinInputManager composedBufferCursorLocation](self, "composedBufferCursorLocation")}];

    v9 = [v6 length];
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v9];
    bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    if ([(TIZhuyinInputManager *)self composedBufferCursorLocation])
    {
      v12 = bufferSplittingLengthsIndex + 1;
    }

    else
    {
      v12 = 0;
    }

    inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v14 = [inputBufferSplittingLengths count];

    inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v16 = inputBufferSplittingLengths2;
    if (v14 >= v12)
    {
      [inputBufferSplittingLengths2 insertObject:v10 atIndex:v12];

      composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [composedBufferSplittingLengths insertObject:v10 atIndex:v12];
    }

    else
    {
      [inputBufferSplittingLengths2 addObject:v10];

      composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [composedBufferSplittingLengths addObject:v10];
    }

    [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]+ v9];
  }

  return !v5;
}

- (BOOL)deleteFromInput
{
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [inputBuffer length];

  if (v4)
  {
    syllableBuffersOccupied = [(TIZhuyinInputManager *)self syllableBuffersOccupied];
    inputCursorLocation = [(TIZhuyinInputManager *)self inputCursorLocation];
    if (syllableBuffersOccupied)
    {
      v7 = inputCursorLocation + [(TIZhuyinInputManager *)self syllableBuffersAggregateLength]- 1;
      inputBuffer2 = [(TIZhuyinInputManager *)self inputBuffer];
      [inputBuffer2 deleteCharactersInRange:{v7, 1}];

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

    else if (inputCursorLocation)
    {
      bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
      inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v11 = [inputBufferSplittingLengths objectAtIndex:bufferSplittingLengthsIndex];
      unsignedIntegerValue = [v11 unsignedIntegerValue];

      v13 = [(TIZhuyinInputManager *)self inputCursorLocation]- unsignedIntegerValue;
      inputBuffer3 = [(TIZhuyinInputManager *)self inputBuffer];
      [inputBuffer3 deleteCharactersInRange:{v13, unsignedIntegerValue}];

      composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      v16 = [composedBufferSplittingLengths objectAtIndex:bufferSplittingLengthsIndex];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      v18 = [(TIZhuyinInputManager *)self composedBufferCursorLocation]- unsignedIntegerValue2;
      composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
      [composedBuffer deleteCharactersInRange:{v18, unsignedIntegerValue2}];

      inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      [inputBufferSplittingLengths2 removeObjectAtIndex:bufferSplittingLengthsIndex];

      composedBufferSplittingLengths2 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
      [composedBufferSplittingLengths2 removeObjectAtIndex:bufferSplittingLengthsIndex];

      [(TIZhuyinInputManager *)self setInputCursorLocation:[(TIZhuyinInputManager *)self inputCursorLocation]- unsignedIntegerValue];
    }
  }

  return v4 != 0;
}

- (BOOL)forwardDeleteFromInput
{
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [inputBuffer length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      inputCursorLocation = [(TIZhuyinInputManager *)self inputCursorLocation];
      inputBuffer2 = [(TIZhuyinInputManager *)self inputBuffer];
      v7 = [inputBuffer2 length];

      if (inputCursorLocation < v7)
      {
        inputCursorLocation2 = [(TIZhuyinInputManager *)self inputCursorLocation];
        bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        if (inputCursorLocation2)
        {
          v10 = bufferSplittingLengthsIndex + 1;
        }

        else
        {
          v10 = bufferSplittingLengthsIndex;
        }

        inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v12 = [inputBufferSplittingLengths objectAtIndex:v10];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        inputCursorLocation3 = [(TIZhuyinInputManager *)self inputCursorLocation];
        inputBuffer3 = [(TIZhuyinInputManager *)self inputBuffer];
        [inputBuffer3 deleteCharactersInRange:{inputCursorLocation3, unsignedIntegerValue}];

        composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
        v17 = [composedBufferSplittingLengths objectAtIndex:v10];
        unsignedIntegerValue2 = [v17 unsignedIntegerValue];

        composedBufferCursorLocation = [(TIZhuyinInputManager *)self composedBufferCursorLocation];
        composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
        [composedBuffer deleteCharactersInRange:{composedBufferCursorLocation, unsignedIntegerValue2}];

        inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        [inputBufferSplittingLengths2 removeObjectAtIndex:v10];

        composedBufferSplittingLengths2 = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
        [composedBufferSplittingLengths2 removeObjectAtIndex:v10];
      }
    }
  }

  return v4 != 0;
}

- (unint64_t)inputBufferIndexOf:(unint64_t)of
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
  v6 = 0;
  if ([composedBuffer length] <= of)
  {
    composedBuffer2 = [(TIZhuyinInputManager *)self composedBuffer];
    v6 = of - [composedBuffer2 length];
  }

  v15 = v6;
  inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __43__TIZhuyinInputManager_inputBufferIndexOf___block_invoke;
  v11[3] = &unk_29F37D468;
  v11[4] = &v12;
  v11[5] = of;
  [inputBufferSplittingLengths enumerateObjectsUsingBlock:v11];

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
  selfCopy = self;
  composedText = [(TIZhuyinInputManager *)self composedText];
  v4 = [composedText length];
  LOBYTE(selfCopy) = v4 == [(TIZhuyinInputManager *)selfCopy cursorLocation];

  return selfCopy;
}

- (id)readingsLengths:(id)lengths
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v3 = MEMORY[0x29EDB8DE8];
  lengthsCopy = lengths;
  array = [v3 array];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v5 = [lengthsCopy length];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __40__TIZhuyinInputManager_readingsLengths___block_invoke;
  v8[3] = &unk_29F37D490;
  v8[4] = v9;
  v8[5] = v10;
  v8[6] = &v11;
  [lengthsCopy enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];

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

- (id)convertToFullWidth:(id)width
{
  widthCopy = width;
  v5 = [widthCopy characterAtIndex:0];
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
        leftDoubleQuotationMarkInserted = [(TIZhuyinInputManager *)self leftDoubleQuotationMarkInserted];

        if (leftDoubleQuotationMarkInserted)
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
        leftSingleQuotationMarkInserted = [(TIZhuyinInputManager *)self leftSingleQuotationMarkInserted];

        if (leftSingleQuotationMarkInserted)
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
    v6 = [widthCopy mutableCopy];
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

- (BOOL)shouldDirectlyCommitInput:(id)input
{
  inputCopy = input;
  if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
  {
    goto LABEL_3;
  }

  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v6 = [inputBuffer length];

  if (v6 || ([inputCopy isEqualToString:@" "] & 1) == 0 && (objc_msgSend(MEMORY[0x29EDB9F50], "zhuyinToneCharacterSet"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(inputCopy, "rangeOfCharacterFromSet:", v9), v9, v10 == 0x7FFFFFFFFFFFFFFFLL))
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
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [inputBuffer length];

  if (v4)
  {
    if ([(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      syllableBuffersAggregateLength = [(TIZhuyinInputManager *)self syllableBuffersAggregateLength];
      if (syllableBuffersAggregateLength)
      {
        v6 = syllableBuffersAggregateLength;
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
      bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
      inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
      v9 = [inputBufferSplittingLengths objectAtIndex:bufferSplittingLengthsIndex];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        v11 = [(TIZhuyinInputManager *)self inputCursorLocation]- unsignedIntegerValue;
      }

      else
      {
        v11 = 0;
      }

      inputBuffer2 = [(TIZhuyinInputManager *)self inputBuffer];
      v13 = [inputBuffer2 substringWithRange:{v11, unsignedIntegerValue}];

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
      [v13 enumerateSubstringsInRange:0 options:unsignedIntegerValue - 1 usingBlock:{2, v15}];
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
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  [inputBuffer setString:&stru_2A252F9A8];

  [(TIZhuyinInputManager *)self setInputCursorLocation:0];
  inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
  [inputBufferSplittingLengths removeAllObjects];

  composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
  [composedBufferSplittingLengths removeAllObjects];

  composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
  [composedBuffer setString:&stru_2A252F9A8];
}

- (NSString)composedText
{
  composedBufferCursorLocation = [(TIZhuyinInputManager *)self composedBufferCursorLocation];
  composedBuffer = [(TIZhuyinInputManager *)self composedBuffer];
  v5 = [composedBuffer substringToIndex:composedBufferCursorLocation];

  syllableBuffersAggregateString = [(TIZhuyinInputManager *)self syllableBuffersAggregateString];
  v7 = [syllableBuffersAggregateString stringByReplacingOccurrencesOfString:@"ˉ" withString:@" "];

  composedBuffer2 = [(TIZhuyinInputManager *)self composedBuffer];
  v9 = [composedBuffer2 substringFromIndex:composedBufferCursorLocation];

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
  inputCursorLocation = [(TIZhuyinInputManager *)self inputCursorLocation];
  if (inputCursorLocation)
  {
    v4 = inputCursorLocation;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __51__TIZhuyinInputManager_bufferSplittingLengthsIndex__block_invoke;
    v8[3] = &unk_29F37D4E0;
    v8[5] = &v10;
    v8[6] = v4;
    v8[4] = v9;
    [inputBufferSplittingLengths enumerateObjectsUsingBlock:v8];

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
    bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
    composedBufferSplittingLengths = [(TIZhuyinInputManager *)self composedBufferSplittingLengths];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __52__TIZhuyinInputManager_composedBufferCursorLocation__block_invoke;
    v7[3] = &unk_29F37D508;
    v7[4] = &v8;
    v7[5] = bufferSplittingLengthsIndex;
    [composedBufferSplittingLengths enumerateObjectsUsingBlock:v7];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(TIZhuyinInputManager *)selfCopy syllableToneBuffer])
  {
    v3 = [(TIZhuyinInputManager *)selfCopy syllableConsonantBuffer]|| [(TIZhuyinInputManager *)selfCopy syllableMedialBuffer]|| [(TIZhuyinInputManager *)selfCopy syllableVowelBuffer]!= 0;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)syllableBuffersAggregateLength
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syllableConsonantBuffer = [(TIZhuyinInputManager *)selfCopy syllableConsonantBuffer];
  syllableMedialBuffer = [(TIZhuyinInputManager *)selfCopy syllableMedialBuffer];
  v5 = 1;
  if (syllableConsonantBuffer)
  {
    v5 = 2;
  }

  if (syllableMedialBuffer)
  {
    v6 = v5;
  }

  else
  {
    v6 = syllableConsonantBuffer != 0;
  }

  if ([(TIZhuyinInputManager *)selfCopy syllableVowelBuffer])
  {
    ++v6;
  }

  if ([(TIZhuyinInputManager *)selfCopy syllableToneBuffer])
  {
    ++v6;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)syllableBuffersAggregateString
{
  string = [MEMORY[0x29EDBA050] string];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(TIZhuyinInputManager *)selfCopy syllableConsonantBuffer])
  {
    [string appendFormat:@"%C", -[TIZhuyinInputManager syllableConsonantBuffer](selfCopy, "syllableConsonantBuffer")];
  }

  if ([(TIZhuyinInputManager *)selfCopy syllableMedialBuffer])
  {
    [string appendFormat:@"%C", -[TIZhuyinInputManager syllableMedialBuffer](selfCopy, "syllableMedialBuffer")];
  }

  if ([(TIZhuyinInputManager *)selfCopy syllableVowelBuffer])
  {
    [string appendFormat:@"%C", -[TIZhuyinInputManager syllableVowelBuffer](selfCopy, "syllableVowelBuffer")];
  }

  if ([(TIZhuyinInputManager *)selfCopy syllableToneBuffer])
  {
    [string appendFormat:@"%C", -[TIZhuyinInputManager syllableToneBuffer](selfCopy, "syllableToneBuffer")];
  }

  objc_sync_exit(selfCopy);

  return string;
}

- (id)inputStringForCharacters:(id)characters
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [characters stringByApplyingTransform:@"Han-Latin Latin-Bopomofo" reverse:0];;
  array = [MEMORY[0x29EDB8DE8] array];
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
            [array addObject:v13];
          }

          else
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [array componentsJoinedByString:&stru_2A252F9A8];

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (void)moveCursorBackward
{
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [inputBuffer length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      if ([(TIZhuyinInputManager *)self inputCursorLocation])
      {
        bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v7 = [inputBufferSplittingLengths count];

        if (bufferSplittingLengthsIndex < v7)
        {
          inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
          v8 = [inputBufferSplittingLengths2 objectAtIndex:bufferSplittingLengthsIndex];
          -[TIZhuyinInputManager setInputCursorLocation:](self, "setInputCursorLocation:", -[TIZhuyinInputManager inputCursorLocation](self, "inputCursorLocation") - [v8 unsignedIntegerValue]);
        }
      }
    }
  }
}

- (void)moveCursorForward
{
  inputBuffer = [(TIZhuyinInputManager *)self inputBuffer];
  v4 = [inputBuffer length];

  if (v4)
  {
    if (![(TIZhuyinInputManager *)self syllableBuffersOccupied])
    {
      inputCursorLocation = [(TIZhuyinInputManager *)self inputCursorLocation];
      inputBuffer2 = [(TIZhuyinInputManager *)self inputBuffer];
      v7 = [inputBuffer2 length];

      if (inputCursorLocation < v7)
      {
        bufferSplittingLengthsIndex = [(TIZhuyinInputManager *)self bufferSplittingLengthsIndex];
        if ([(TIZhuyinInputManager *)self inputCursorLocation])
        {
          ++bufferSplittingLengthsIndex;
        }

        inputBufferSplittingLengths = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
        v10 = [inputBufferSplittingLengths count];

        if (bufferSplittingLengthsIndex < v10)
        {
          inputBufferSplittingLengths2 = [(TIZhuyinInputManager *)self inputBufferSplittingLengths];
          v11 = [inputBufferSplittingLengths2 objectAtIndex:bufferSplittingLengthsIndex];
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