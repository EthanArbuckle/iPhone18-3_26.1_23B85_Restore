@interface TIKeyboardInputManagerWubi
- (BOOL)acceptInputString:(id)string;
- (BOOL)isWubi:(id)wubi;
- (BOOL)supportsPairedPunctutationInput;
- (id)deleteFromInput:(unint64_t *)input;
- (id)formattedSearchString;
- (id)inputsToReject;
- (void)addInput:(id)input withContext:(id)context;
- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler;
- (void)pushCandidateGenerationContextWithResults:(id)results;
@end

@implementation TIKeyboardInputManagerWubi

- (BOOL)supportsPairedPunctutationInput
{
  keyboardState = [(TIKeyboardInputManagerWubi *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {
    hasCandidateKey = 0;
  }

  else
  {
    keyboardState2 = [(TIKeyboardInputManagerWubi *)self keyboardState];
    layoutState = [keyboardState2 layoutState];
    if ([layoutState userInterfaceIdiom] == 1)
    {
      keyboardState3 = [(TIKeyboardInputManagerWubi *)self keyboardState];
      layoutState2 = [keyboardState3 layoutState];
      hasCandidateKey = [layoutState2 hasCandidateKey];
    }

    else
    {
      hasCandidateKey = 1;
    }
  }

  return hasCandidateKey;
}

- (BOOL)isWubi:(id)wubi
{
  wubiCopy = wubi;
  if (![TIKeyboardInputManagerWubi isWubi:]::notWubiSet)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"⼀⼁⼃⼂乛問匹"];
    invertedSet = [v4 invertedSet];
    v6 = [TIKeyboardInputManagerWubi isWubi:]::notWubiSet;
    [TIKeyboardInputManagerWubi isWubi:]::notWubiSet = invertedSet;
  }

  v7 = [wubiCopy rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

- (id)inputsToReject
{
  hasCandidates = [(TIKeyboardInputManagerShapeBased *)self hasCandidates];
  if (hasCandidates)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"⼀⼁⼃⼂乛問匹";
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerWubi;
  inputsToReject = [(TIKeyboardInputManagerMecabra *)&v10 inputsToReject];
  v6 = inputsToReject;
  if (hasCandidates)
  {
    v7 = inputsToReject;
  }

  else
  {
    if (inputsToReject)
    {
      v8 = [inputsToReject mutableCopy];
      [v8 addCharactersInString:v4];
      goto LABEL_10;
    }

    v7 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:v4];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

- (BOOL)acceptInputString:(id)string
{
  stringCopy = string;
  if ([(TIKeyboardInputManagerWubi *)self isWubi:stringCopy])
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerWubi;
    v5 = [(TIKeyboardInputManagerShapeBased *)&v7 acceptInputString:stringCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)pushCandidateGenerationContextWithResults:(id)results
{
  resultsCopy = results;
  autoConfirmationCandidate = [(TIKeyboardInputManagerWubi *)self autoConfirmationCandidate];
  [resultsCopy setAcceptedCandidate:autoConfirmationCandidate];

  [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:0];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerWubi;
  [(TIKeyboardInputManagerWubi *)&v6 pushCandidateGenerationContextWithResults:resultsCopy];
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerWubi;
  [(TIKeyboardInputManagerWubi *)&v4 openCandidateGenerationContextWithCandidateHandler:handler];
  [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:0];
}

- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  candidatesCopy = candidates;
  if ([(TIKeyboardInputManagerWubi *)self shouldSkipCandidateSelection])
  {
    [(TIKeyboardInputManagerWubi *)self closeCandidateGenerationContextWithResults:0];
  }

  else
  {
    candidates = [candidatesCopy candidates];
    if ([candidates count])
    {
      objc_initWeak(&location, self);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__TIKeyboardInputManagerWubi_notifyUpdateCandidates_forOperation___block_invoke;
      v25[3] = &unk_279D9D620;
      objc_copyWeak(&v27, &location);
      v26 = candidates;
      [(TIKeyboardInputManagerMecabra *)self addStickers:candidatesCopy withCompletionHandler:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      inputCount = [(TIKeyboardInputManagerShapeBased *)self inputCount];
      if (inputCount < 2)
      {
        v12 = 0;
      }

      else
      {
        v8 = inputCount;
        v9 = MEMORY[0x277CCACA8];
        inputString = [(TIKeyboardInputManagerWubi *)self inputString];
        v11 = [inputString substringFromIndex:v8 - 1];
        v12 = [v9 stringWithString:v11];
      }

      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v12];
      self->super._keepRemainingInput = 1;
      v13 = objc_alloc(MEMORY[0x277D6FE70]);
      keyboardState = [(TIKeyboardInputManagerWubi *)self keyboardState];
      v15 = [v13 initWithKeyboardState:keyboardState];

      [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:v15];
      output = [v15 output];
      acceptedCandidate = [output acceptedCandidate];
      [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:acceptedCandidate];

      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
      self->super._keepRemainingInput = 0;
      keyboardState2 = [(TIKeyboardInputManagerWubi *)self keyboardState];
      currentCandidate = [keyboardState2 currentCandidate];

      if (currentCandidate)
      {
        [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:1];
        v20 = *MEMORY[0x277D6FB00];
        keyboardState3 = [(TIKeyboardInputManagerWubi *)self keyboardState];
        inputMode = [keyboardState3 inputMode];
        v23 = TIStatisticGetKeyForCandidateAccepted();
        TIStatisticScalarIncrement();
      }

      candidateResultSet = [(TIKeyboardInputManagerShapeBased *)self candidateResultSet];
      if (([candidateResultSet isDummySet] & 1) == 0)
      {
        [(TIKeyboardInputManagerWubi *)self setMarkedText];
        [(TIKeyboardInputManagerWubi *)self closeCandidateGenerationContextWithResults:candidateResultSet];
      }
    }
  }
}

void __66__TIKeyboardInputManagerWubi_notifyUpdateCandidates_forOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWordSearchCandidateResultSet:v3];

  v4 = [WeakRetained markedTextWithAutoconvertedCandidates];
  [WeakRetained setInput:v4];

  [WeakRetained setMarkedText];
  v5 = *(a1 + 32);
  v6 = [WeakRetained wordSearchCandidateResultSet];
  v7 = [v6 proactiveTriggers];
  v8 = [WeakRetained candidateResultSetFromCandidates:v5 proactiveTriggers:v7];
  [WeakRetained closeCandidateGenerationContextWithResults:v8];
}

- (id)formattedSearchString
{
  [(TIKeyboardInputManagerWubi *)self inputMethodType];
  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString();

  return InputKeyFromASCIIString;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerWubi;
  v4 = [(TIKeyboardInputManagerShapeBased *)&v7 deleteFromInput:input];
  markedTextWithAutoconvertedCandidates = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
  [(TIKeyboardInputManagerChinese *)self setInput:markedTextWithAutoconvertedCandidates];

  return 0;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  if (![(TIKeyboardInputManagerChinese *)self handlePairedPunctuationInput:inputCopy context:contextCopy])
  {
    string = [inputCopy string];
    if ([string length])
    {
      if ([string isEqualToString:@"☻"])
      {
        v9 = *MEMORY[0x277D6FF50];
      }

      else
      {
        v9 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:string];
      }

      v10 = v9;

      [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
      [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
      if ([inputCopy isMultitap])
      {
        v22 = 0;
        v11 = [(TIKeyboardInputManagerWubi *)self deleteFromInput:&v22];
        if (v22)
        {
          [contextCopy deleteBackward:?];
        }
      }

      if ([(TIKeyboardInputManagerWubi *)self shouldSkipCandidateSelection])
      {
        v21.receiver = self;
        v21.super_class = TIKeyboardInputManagerWubi;
        [(TIKeyboardInputManagerWubi *)&v21 addInput:inputCopy withContext:contextCopy];
      }

      else
      {
        if ([v10 length] && (-[TIKeyboardInputManagerWubi isWubi:](self, "isWubi:", v10) || -[TIKeyboardInputManagerMecabra stringContainsActiveSupplementalLexiconSearchPrefix:](self, "stringContainsActiveSupplementalLexiconSearchPrefix:", v10)))
        {
          searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
          v13 = [searchString isEqualToString:*MEMORY[0x277D6FF50]];

          if (v13)
          {
            [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
            [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:contextCopy];
          }

          v14 = [v10 stringByReplacingOccurrencesOfString:@"問" withString:@"＊"];
          [(TIKeyboardInputManagerWubi *)self inputMethodType];
          ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString();
          searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
          [searchString2 appendString:ASCIIFromInputKeyString];

          [inputCopy setString:v14];
          markedTextWithAutoconvertedCandidates = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
          [(TIKeyboardInputManagerChinese *)self setInput:markedTextWithAutoconvertedCandidates];

          [(TIKeyboardInputManagerWubi *)self setMarkedText];
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D6FF50]])
        {
          [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:contextCopy];
          searchString3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
          [searchString3 appendString:v10];

          [inputCopy setString:v10];
          v20.receiver = self;
          v20.super_class = TIKeyboardInputManagerWubi;
          [(TIKeyboardInputManagerWubi *)&v20 addInput:inputCopy withContext:contextCopy];
        }

        else
        {
          [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
          [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:contextCopy];
          [contextCopy insertText:v10];
        }

        if (([inputCopy isFlick] & 1) == 0 && (objc_msgSend(inputCopy, "isMultitap") & 1) == 0)
        {
          inputManagerHint = [inputCopy inputManagerHint];
          [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:inputManagerHint];
        }
      }
    }

    else
    {
      v10 = string;
    }
  }
}

@end