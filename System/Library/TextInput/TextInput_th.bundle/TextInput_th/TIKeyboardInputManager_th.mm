@interface TIKeyboardInputManager_th
- (BOOL)shouldAutocommitForInput:(id)input;
- (BOOL)usesComposingInput;
- (TIKeyboardInputManager_th)initWithConfig:(id)config keyboardState:(id)state;
- (USet)validUSetForAutocorrection;
- (id)deleteFromInput:(unint64_t *)input;
- (id)firstMecabraCandidateOccurranceFromLastAutocorrectionList;
- (id)keyboardBehaviors;
- (id)trimmedInputStem;
- (void)addInput:(id)input withContext:(id)context;
- (void)candidateRejected:(id)rejected;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode;
- (void)setInput:(id)input;
- (void)setWordBoundary;
@end

@implementation TIKeyboardInputManager_th

- (void)initImplementation
{
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (void)loadDictionaries
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManager_mul *)&v4 loadDictionaries];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (v3)
  {
    *(*(v3 + 264) + 64) = 1;
  }
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7050]);

  return v2;
}

- (id)firstMecabraCandidateOccurranceFromLastAutocorrectionList
{
  v20 = *MEMORY[0x29EDCA608];
  lastAutocorrectionList = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
  corrections = [lastAutocorrectionList corrections];
  autocorrection = [corrections autocorrection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = autocorrection;
  }

  else
  {
    v6 = 0;
  }

  v7 = autocorrection;
  if (!v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    lastAutocorrectionList2 = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
    predictions = [lastAutocorrectionList2 predictions];

    v7 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(predictions);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v12;
            goto LABEL_15;
          }
        }

        v7 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)shouldAutocommitForInput:(id)input
{
  inputCopy = input;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    keyboardState = [(TIKeyboardInputManager_th *)self keyboardState];
    if ([keyboardState autocorrectionEnabled])
    {
      keyboardState2 = [(TIKeyboardInputManager_th *)self keyboardState];
      textInputTraits = [keyboardState2 textInputTraits];
      v8 = [textInputTraits autocorrectionType] != 1;
    }

    else
    {
      v8 = 0;
    }

    firstMecabraCandidateOccurranceFromLastAutocorrectionList = [(TIKeyboardInputManager_th *)self firstMecabraCandidateOccurranceFromLastAutocorrectionList];
    if (firstMecabraCandidateOccurranceFromLastAutocorrectionList)
    {
      [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:firstMecabraCandidateOccurranceFromLastAutocorrectionList];
      inputStem = MecabraCandidateGetAnalysisString();
      WordCount = MecabraCandidateGetWordCount();
    }

    else if (v8)
    {
      inputStem = 0;
      WordCount = 0;
    }

    else
    {
      inputStem = [(TIKeyboardInputManager_th *)self inputStem];
      if (inputCopy)
      {
        string = [inputCopy string];
        v14 = [inputStem stringByAppendingString:string];

        inputStem = v14;
      }

      v19.receiver = self;
      v19.super_class = TIKeyboardInputManager_th;
      WordCount = [(TIKeyboardInputManager_th *)&v19 countOfWordsIninputStem:inputStem];
    }

    v18.receiver = self;
    v18.super_class = TIKeyboardInputManager_th;
    v15 = [(TIKeyboardInputManager_th *)&v18 maxPriorWordTokensAfterTrimming]+ 1;
    if (WordCount)
    {
      v16 = ([inputStem length] / WordCount) > 2.5;
    }

    else
    {
      v16 = 0;
    }

    v9 = [inputStem length] > 0xC || WordCount > v15 && v16;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)trimmedInputStem
{
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    inputStem = [(TIKeyboardInputManager_th *)self inputStem];
    _lastLongCharacter = [(__CFString *)inputStem _lastLongCharacter];
    if (_lastLongCharacter)
    {
      v5 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:_lastLongCharacter];
    }

    else
    {
      v5 = &stru_2A252D530;
    }

    if ([(TIKeyboardInputManagerMecabra *)self stringEndsWord:v5])
    {

      trimmedInputStem2 = &stru_2A252D530;
    }

    else
    {
      trimmedInputStem2 = inputStem;
      if ([(TIKeyboardInputManager_th *)self shouldAutocommitForInput:0])
      {
        firstMecabraCandidateOccurranceFromLastAutocorrectionList = [(TIKeyboardInputManager_th *)self firstMecabraCandidateOccurranceFromLastAutocorrectionList];
        if (firstMecabraCandidateOccurranceFromLastAutocorrectionList)
        {
          v8 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:firstMecabraCandidateOccurranceFromLastAutocorrectionList];
          v9 = [MEMORY[0x29EDC7240] getWordFromAnalysisStringOf:v8 atIndex:0];
          if ([(__CFString *)inputStem hasPrefix:v9])
          {
            trimmedInputStem = -[__CFString substringFromIndex:](inputStem, "substringFromIndex:", [v9 length]);
          }

          else
          {
            v13.receiver = self;
            v13.super_class = TIKeyboardInputManager_th;
            trimmedInputStem = [(TIKeyboardInputManager_th *)&v13 trimmedInputStem];
          }

          trimmedInputStem2 = trimmedInputStem;

          [(TIKeyboardInputManager_th *)self setLastAutocorrectionList:0];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = TIKeyboardInputManager_th;
          trimmedInputStem2 = [(TIKeyboardInputManager_th *)&v12 trimmedInputStem];
          v9 = inputStem;
        }
      }
    }
  }

  else
  {
    trimmedInputStem2 = 0;
  }

  return trimmedInputStem2;
}

- (void)setInput:(id)input
{
  v21 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  v19.receiver = self;
  v19.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManager_mul *)&v19 setInput:inputCopy];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  [composingInput removeAllInputs];

  _asTypeInputs = [inputCopy _asTypeInputs];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inputs = [_asTypeInputs inputs];
  v8 = [inputs countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(inputs);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [composingInput2 composeNew:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [inputs countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)setWordBoundary
{
  v2 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.super.isa + v2))
  {
    [(TIKeyboardInputManager_th *)self dropInput];
    v4 = *(&self->super.super.super.super.super.isa + v2);

    MEMORY[0x2A1C69AA8](v4, 0);
  }
}

- (void)candidateRejected:(id)rejected
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManagerMecabra *)&v4 candidateRejected:rejected];
  [(TIKeyboardInputManager_th *)self setWordBoundary];
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManagerMecabra *)&v7 registerLearning:learning fullCandidate:candidate keyboardState:state mode:mode];
  [(TIKeyboardInputManager_th *)self setWordBoundary];
}

- (USet)validUSetForAutocorrection
{
  if ([TIKeyboardInputManager_th validUSetForAutocorrection]::onceToken != -1)
  {
    [TIKeyboardInputManager_th validUSetForAutocorrection];
  }

  return [TIKeyboardInputManager_th validUSetForAutocorrection]::thai_alphabet_set;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  lastAutocorrectionList = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
  corrections = [lastAutocorrectionList corrections];
  autocorrection = [corrections autocorrection];

  if (autocorrection)
  {
    input = [autocorrection input];
    candidate = [autocorrection candidate];
    v13 = [input isEqualToString:candidate];

    if ([(TIKeyboardInputManager_th *)self shouldAutocommitForInput:inputCopy]&& (v13 & 1) == 0)
    {
      v14 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:autocorrection];
      v15 = [MEMORY[0x29EDC7240] getWordFromSurfaceOf:v14 atIndex:0];
      v16 = [MEMORY[0x29EDC7240] getWordFromAnalysisStringOf:v14 atIndex:0];
      v17 = MecabraCandidateGetAnalysisString();
      inputStem = [(TIKeyboardInputManager_th *)self inputStem];
      v19 = [v17 substringFromIndex:{objc_msgSend(v16, "length")}];
      [contextCopy deleteTextBackward:inputStem];
      [contextCopy insertText:v15];
      [contextCopy insertText:v19];
      wordSearch = [(TIKeyboardInputManager_th *)self wordSearch];
      [wordSearch commitSurface:v15];

      v21 = [(TIKeyboardInputManager_th *)self internalIndexOfInputStemSuffix:v19];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(TIKeyboardInputManagerMecabra *)self clearInput];
        [(TIKeyboardInputManager_th *)self setInput:v19];
      }

      else
      {
        [(TIKeyboardInputManager_th *)self dropInputPrefix:v21 commitToWordSearch:0];
      }

      [(TIKeyboardInputManager_th *)self setLastAutocorrectionList:0];
    }
  }

  else
  {
    [(TIKeyboardInputManager_th *)self shouldAutocommitForInput:inputCopy];
  }

  v26.receiver = self;
  v26.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManager_th *)&v26 addInput:inputCopy withContext:contextCopy];
  v22 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (v22)
  {
    if (-858993459 * ((*(v22 + 16) - *(v22 + 8)) >> 3))
    {
      v23 = *(v22 + 96);
      string = [inputCopy string];
      v25 = [string length];

      if (v25)
      {
        [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:v23];
      }
    }
  }

  [(TIKeyboardInputManager_th *)self setLastAutocorrectionList:0];
  [(TIKeyboardInputManager_th *)self usesComposingInput];
}

- (id)deleteFromInput:(unint64_t *)input
{
  if (![(TIKeyboardInputManager_th *)self usesComposingInput])
  {
    goto LABEL_11;
  }

  wordSearch = [(TIKeyboardInputManager_th *)self wordSearch];
  [wordSearch cancel];

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v6ComposingInput = [composingInput composingInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v10 = composingInput2;
  if (isKindOfClass)
  {
    [composingInput2 removeComposingInput];
LABEL_4:

    goto LABEL_9;
  }

  v9ComposingInput = [composingInput2 composingInput];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) != 0 && TICanLogMessageAtLevel())
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManager_th deleteFromInput:v10];
    }

    goto LABEL_4;
  }

LABEL_9:
  composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v13ComposingInput = [composingInput3 composingInput];

  if (!v13ComposingInput)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  }

LABEL_11:
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_th;
  v15 = [(TIKeyboardInputManager_th *)&v17 deleteFromInput:input];

  return v15;
}

- (BOOL)usesComposingInput
{
  v3 = _os_feature_enabled_impl();
  keyboardState = [(TIKeyboardInputManager_th *)self keyboardState];
  layoutState = [keyboardState layoutState];
  softwareLayout = [layoutState softwareLayout];
  v7 = [softwareLayout isEqualToString:@"Thai"];

  return v3 & v7;
}

- (TIKeyboardInputManager_th)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManager_th;
  v8 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:configCopy keyboardState:stateCopy];
  if (v8)
  {
    mEMORY[0x29EDC7280] = [MEMORY[0x29EDC7280] sharedWordSearchController];
    inputMode = [configCopy inputMode];
    v11 = [mEMORY[0x29EDC7280] wordSearchForInputMode:inputMode];
    wordSearch = v8->_wordSearch;
    v8->_wordSearch = v11;

    v13 = *(&v8->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
    TIInputManager::set_search_algorithm();
  }

  return v8;
}

- (void)deleteFromInput:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s Thai input doesn't expect MCSyntethicInput in any case", "-[TIKeyboardInputManager_th deleteFromInput:]"];
  *buf = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_29EA74000, a1, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

  v3 = *MEMORY[0x29EDCA608];
}

@end