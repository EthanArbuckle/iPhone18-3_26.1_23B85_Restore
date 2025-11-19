@interface TIKeyboardInputManagerWubi
- (BOOL)acceptInputString:(id)a3;
- (BOOL)isWubi:(id)a3;
- (BOOL)supportsPairedPunctutationInput;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)formattedSearchString;
- (id)inputsToReject;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3;
- (void)pushCandidateGenerationContextWithResults:(id)a3;
@end

@implementation TIKeyboardInputManagerWubi

- (BOOL)supportsPairedPunctutationInput
{
  v3 = [(TIKeyboardInputManagerWubi *)self keyboardState];
  if ([v3 hardwareKeyboardMode])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIKeyboardInputManagerWubi *)self keyboardState];
    v6 = [v5 layoutState];
    if ([v6 userInterfaceIdiom] == 1)
    {
      v7 = [(TIKeyboardInputManagerWubi *)self keyboardState];
      v8 = [v7 layoutState];
      v4 = [v8 hasCandidateKey];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)isWubi:(id)a3
{
  v3 = a3;
  if (![TIKeyboardInputManagerWubi isWubi:]::notWubiSet)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"⼀⼁⼃⼂乛問匹"];
    v5 = [v4 invertedSet];
    v6 = [TIKeyboardInputManagerWubi isWubi:]::notWubiSet;
    [TIKeyboardInputManagerWubi isWubi:]::notWubiSet = v5;
  }

  v7 = [v3 rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

- (id)inputsToReject
{
  v3 = [(TIKeyboardInputManagerShapeBased *)self hasCandidates];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"⼀⼁⼃⼂乛問匹";
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerWubi;
  v5 = [(TIKeyboardInputManagerMecabra *)&v10 inputsToReject];
  v6 = v5;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    if (v5)
    {
      v8 = [v5 mutableCopy];
      [v8 addCharactersInString:v4];
      goto LABEL_10;
    }

    v7 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:v4];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

- (BOOL)acceptInputString:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerWubi *)self isWubi:v4])
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerWubi;
    v5 = [(TIKeyboardInputManagerShapeBased *)&v7 acceptInputString:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)pushCandidateGenerationContextWithResults:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerWubi *)self autoConfirmationCandidate];
  [v4 setAcceptedCandidate:v5];

  [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:0];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerWubi;
  [(TIKeyboardInputManagerWubi *)&v6 pushCandidateGenerationContextWithResults:v4];
}

- (void)openCandidateGenerationContextWithCandidateHandler:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerWubi;
  [(TIKeyboardInputManagerWubi *)&v4 openCandidateGenerationContextWithCandidateHandler:a3];
  [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:0];
}

- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v5 = a3;
  if ([(TIKeyboardInputManagerWubi *)self shouldSkipCandidateSelection])
  {
    [(TIKeyboardInputManagerWubi *)self closeCandidateGenerationContextWithResults:0];
  }

  else
  {
    v6 = [v5 candidates];
    if ([v6 count])
    {
      objc_initWeak(&location, self);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__TIKeyboardInputManagerWubi_notifyUpdateCandidates_forOperation___block_invoke;
      v25[3] = &unk_279D9D620;
      objc_copyWeak(&v27, &location);
      v26 = v6;
      [(TIKeyboardInputManagerMecabra *)self addStickers:v5 withCompletionHandler:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = [(TIKeyboardInputManagerShapeBased *)self inputCount];
      if (v7 < 2)
      {
        v12 = 0;
      }

      else
      {
        v8 = v7;
        v9 = MEMORY[0x277CCACA8];
        v10 = [(TIKeyboardInputManagerWubi *)self inputString];
        v11 = [v10 substringFromIndex:v8 - 1];
        v12 = [v9 stringWithString:v11];
      }

      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:v12];
      self->super._keepRemainingInput = 1;
      v13 = objc_alloc(MEMORY[0x277D6FE70]);
      v14 = [(TIKeyboardInputManagerWubi *)self keyboardState];
      v15 = [v13 initWithKeyboardState:v14];

      [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:v15];
      v16 = [v15 output];
      v17 = [v16 acceptedCandidate];
      [(TIKeyboardInputManagerWubi *)self setAutoConfirmationCandidate:v17];

      [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
      self->super._keepRemainingInput = 0;
      v18 = [(TIKeyboardInputManagerWubi *)self keyboardState];
      v19 = [v18 currentCandidate];

      if (v19)
      {
        [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:1];
        v20 = *MEMORY[0x277D6FB00];
        v21 = [(TIKeyboardInputManagerWubi *)self keyboardState];
        v22 = [v21 inputMode];
        v23 = TIStatisticGetKeyForCandidateAccepted();
        TIStatisticScalarIncrement();
      }

      v24 = [(TIKeyboardInputManagerShapeBased *)self candidateResultSet];
      if (([v24 isDummySet] & 1) == 0)
      {
        [(TIKeyboardInputManagerWubi *)self setMarkedText];
        [(TIKeyboardInputManagerWubi *)self closeCandidateGenerationContextWithResults:v24];
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
  v3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString();

  return InputKeyFromASCIIString;
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerWubi;
  v4 = [(TIKeyboardInputManagerShapeBased *)&v7 deleteFromInput:a3];
  v5 = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
  [(TIKeyboardInputManagerChinese *)self setInput:v5];

  return 0;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  if (![(TIKeyboardInputManagerChinese *)self handlePairedPunctuationInput:v6 context:v7])
  {
    v8 = [v6 string];
    if ([v8 length])
    {
      if ([v8 isEqualToString:@"☻"])
      {
        v9 = *MEMORY[0x277D6FF50];
      }

      else
      {
        v9 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:v8];
      }

      v10 = v9;

      [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
      [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
      if ([v6 isMultitap])
      {
        v22 = 0;
        v11 = [(TIKeyboardInputManagerWubi *)self deleteFromInput:&v22];
        if (v22)
        {
          [v7 deleteBackward:?];
        }
      }

      if ([(TIKeyboardInputManagerWubi *)self shouldSkipCandidateSelection])
      {
        v21.receiver = self;
        v21.super_class = TIKeyboardInputManagerWubi;
        [(TIKeyboardInputManagerWubi *)&v21 addInput:v6 withContext:v7];
      }

      else
      {
        if ([v10 length] && (-[TIKeyboardInputManagerWubi isWubi:](self, "isWubi:", v10) || -[TIKeyboardInputManagerMecabra stringContainsActiveSupplementalLexiconSearchPrefix:](self, "stringContainsActiveSupplementalLexiconSearchPrefix:", v10)))
        {
          v12 = [(TIKeyboardInputManagerShapeBased *)self searchString];
          v13 = [v12 isEqualToString:*MEMORY[0x277D6FF50]];

          if (v13)
          {
            [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
            [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:v7];
          }

          v14 = [v10 stringByReplacingOccurrencesOfString:@"問" withString:@"＊"];
          [(TIKeyboardInputManagerWubi *)self inputMethodType];
          ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString();
          v16 = [(TIKeyboardInputManagerShapeBased *)self searchString];
          [v16 appendString:ASCIIFromInputKeyString];

          [v6 setString:v14];
          v17 = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
          [(TIKeyboardInputManagerChinese *)self setInput:v17];

          [(TIKeyboardInputManagerWubi *)self setMarkedText];
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D6FF50]])
        {
          [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:v7];
          v18 = [(TIKeyboardInputManagerShapeBased *)self searchString];
          [v18 appendString:v10];

          [v6 setString:v10];
          v20.receiver = self;
          v20.super_class = TIKeyboardInputManagerWubi;
          [(TIKeyboardInputManagerWubi *)&v20 addInput:v6 withContext:v7];
        }

        else
        {
          [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
          [(TIKeyboardInputManagerWubi *)self acceptCurrentCandidateWithContext:v7];
          [v7 insertText:v10];
        }

        if (([v6 isFlick] & 1) == 0 && (objc_msgSend(v6, "isMultitap") & 1) == 0)
        {
          v19 = [v6 inputManagerHint];
          [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:v19];
        }
      }
    }

    else
    {
      v10 = v8;
    }
  }
}

@end