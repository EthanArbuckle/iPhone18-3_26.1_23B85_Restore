@interface TIKeyboardInputManager_th
- (BOOL)shouldAutocommitForInput:(id)a3;
- (BOOL)usesComposingInput;
- (TIKeyboardInputManager_th)initWithConfig:(id)a3 keyboardState:(id)a4;
- (USet)validUSetForAutocorrection;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)firstMecabraCandidateOccurranceFromLastAutocorrectionList;
- (id)keyboardBehaviors;
- (id)trimmedInputStem;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)candidateRejected:(id)a3;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6;
- (void)setInput:(id)a3;
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
  v3 = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
  v4 = [v3 corrections];
  v5 = [v4 autocorrection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  if (!v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
    v9 = [v8 predictions];

    v7 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v12;
            goto LABEL_15;
          }
        }

        v7 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)shouldAutocommitForInput:(id)a3
{
  v4 = a3;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    v5 = [(TIKeyboardInputManager_th *)self keyboardState];
    if ([v5 autocorrectionEnabled])
    {
      v6 = [(TIKeyboardInputManager_th *)self keyboardState];
      v7 = [v6 textInputTraits];
      v8 = [v7 autocorrectionType] != 1;
    }

    else
    {
      v8 = 0;
    }

    v10 = [(TIKeyboardInputManager_th *)self firstMecabraCandidateOccurranceFromLastAutocorrectionList];
    if (v10)
    {
      [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v10];
      v11 = MecabraCandidateGetAnalysisString();
      WordCount = MecabraCandidateGetWordCount();
    }

    else if (v8)
    {
      v11 = 0;
      WordCount = 0;
    }

    else
    {
      v11 = [(TIKeyboardInputManager_th *)self inputStem];
      if (v4)
      {
        v13 = [v4 string];
        v14 = [v11 stringByAppendingString:v13];

        v11 = v14;
      }

      v19.receiver = self;
      v19.super_class = TIKeyboardInputManager_th;
      WordCount = [(TIKeyboardInputManager_th *)&v19 countOfWordsIninputStem:v11];
    }

    v18.receiver = self;
    v18.super_class = TIKeyboardInputManager_th;
    v15 = [(TIKeyboardInputManager_th *)&v18 maxPriorWordTokensAfterTrimming]+ 1;
    if (WordCount)
    {
      v16 = ([v11 length] / WordCount) > 2.5;
    }

    else
    {
      v16 = 0;
    }

    v9 = [v11 length] > 0xC || WordCount > v15 && v16;
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
    v3 = [(TIKeyboardInputManager_th *)self inputStem];
    v4 = [(__CFString *)v3 _lastLongCharacter];
    if (v4)
    {
      v5 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:v4];
    }

    else
    {
      v5 = &stru_2A252D530;
    }

    if ([(TIKeyboardInputManagerMecabra *)self stringEndsWord:v5])
    {

      v6 = &stru_2A252D530;
    }

    else
    {
      v6 = v3;
      if ([(TIKeyboardInputManager_th *)self shouldAutocommitForInput:0])
      {
        v7 = [(TIKeyboardInputManager_th *)self firstMecabraCandidateOccurranceFromLastAutocorrectionList];
        if (v7)
        {
          v8 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v7];
          v9 = [MEMORY[0x29EDC7240] getWordFromAnalysisStringOf:v8 atIndex:0];
          if ([(__CFString *)v3 hasPrefix:v9])
          {
            v10 = -[__CFString substringFromIndex:](v3, "substringFromIndex:", [v9 length]);
          }

          else
          {
            v13.receiver = self;
            v13.super_class = TIKeyboardInputManager_th;
            v10 = [(TIKeyboardInputManager_th *)&v13 trimmedInputStem];
          }

          v6 = v10;

          [(TIKeyboardInputManager_th *)self setLastAutocorrectionList:0];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = TIKeyboardInputManager_th;
          v6 = [(TIKeyboardInputManager_th *)&v12 trimmedInputStem];
          v9 = v3;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setInput:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManager_mul *)&v19 setInput:v4];
  v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  [v5 removeAllInputs];

  v6 = [v4 _asTypeInputs];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 inputs];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [v13 composeNew:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (void)candidateRejected:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManagerMecabra *)&v4 candidateRejected:a3];
  [(TIKeyboardInputManager_th *)self setWordBoundary];
}

- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManagerMecabra *)&v7 registerLearning:a3 fullCandidate:a4 keyboardState:a5 mode:a6];
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

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardInputManager_th *)self lastAutocorrectionList];
  v9 = [v8 corrections];
  v10 = [v9 autocorrection];

  if (v10)
  {
    v11 = [v10 input];
    v12 = [v10 candidate];
    v13 = [v11 isEqualToString:v12];

    if ([(TIKeyboardInputManager_th *)self shouldAutocommitForInput:v6]&& (v13 & 1) == 0)
    {
      v14 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v10];
      v15 = [MEMORY[0x29EDC7240] getWordFromSurfaceOf:v14 atIndex:0];
      v16 = [MEMORY[0x29EDC7240] getWordFromAnalysisStringOf:v14 atIndex:0];
      v17 = MecabraCandidateGetAnalysisString();
      v18 = [(TIKeyboardInputManager_th *)self inputStem];
      v19 = [v17 substringFromIndex:{objc_msgSend(v16, "length")}];
      [v7 deleteTextBackward:v18];
      [v7 insertText:v15];
      [v7 insertText:v19];
      v20 = [(TIKeyboardInputManager_th *)self wordSearch];
      [v20 commitSurface:v15];

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
    [(TIKeyboardInputManager_th *)self shouldAutocommitForInput:v6];
  }

  v26.receiver = self;
  v26.super_class = TIKeyboardInputManager_th;
  [(TIKeyboardInputManager_th *)&v26 addInput:v6 withContext:v7];
  v22 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (v22)
  {
    if (-858993459 * ((*(v22 + 16) - *(v22 + 8)) >> 3))
    {
      v23 = *(v22 + 96);
      v24 = [v6 string];
      v25 = [v24 length];

      if (v25)
      {
        [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:v6 atIndex:v23];
      }
    }
  }

  [(TIKeyboardInputManager_th *)self setLastAutocorrectionList:0];
  [(TIKeyboardInputManager_th *)self usesComposingInput];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  if (![(TIKeyboardInputManager_th *)self usesComposingInput])
  {
    goto LABEL_11;
  }

  v5 = [(TIKeyboardInputManager_th *)self wordSearch];
  [v5 cancel];

  v6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v7 = [v6 composingInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v10 = v9;
  if (isKindOfClass)
  {
    [v9 removeComposingInput];
LABEL_4:

    goto LABEL_9;
  }

  v11 = [v9 composingInput];
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
  v13 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v14 = [v13 composingInput];

  if (!v14)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  }

LABEL_11:
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_th;
  v15 = [(TIKeyboardInputManager_th *)&v17 deleteFromInput:a3];

  return v15;
}

- (BOOL)usesComposingInput
{
  v3 = _os_feature_enabled_impl();
  v4 = [(TIKeyboardInputManager_th *)self keyboardState];
  v5 = [v4 layoutState];
  v6 = [v5 softwareLayout];
  v7 = [v6 isEqualToString:@"Thai"];

  return v3 & v7;
}

- (TIKeyboardInputManager_th)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManager_th;
  v8 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:v6 keyboardState:v7];
  if (v8)
  {
    v9 = [MEMORY[0x29EDC7280] sharedWordSearchController];
    v10 = [v6 inputMode];
    v11 = [v9 wordSearchForInputMode:v10];
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