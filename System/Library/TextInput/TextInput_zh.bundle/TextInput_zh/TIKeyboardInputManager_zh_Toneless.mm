@interface TIKeyboardInputManager_zh_Toneless
- (BOOL)supportsCandidateGeneration;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)keyboardConfigurationLayoutTag;
- (void)activateRetroCorrection;
- (void)clearInput;
- (void)commitComposition;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)updateComposedText;
@end

@implementation TIKeyboardInputManager_zh_Toneless

- (void)setPhraseBoundary:(unint64_t)a3
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount]== a3)
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_zh_Toneless;
    [(TIKeyboardInputManagerChinesePhonetic *)&v6 setPhraseBoundary:a3];
  }

  else
  {
    [(TIKeyboardInputManager_zh_Toneless *)self activateRetroCorrection];
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v5 setPhraseBoundary:a3];
  }
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  [(TIKeyboardInputManager_zh_Toneless *)self setPhraseBoundaryIfNecessary];
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerMecabra *)&v11 generateCandidatesWithKeyboardState:v10 candidateRange:location candidateHandler:length, v9];
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TIKeyboardInputManager_zh_Toneless *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerMecabra *)&v5 commitComposition];
}

- (id)keyboardConfigurationLayoutTag
{
  if ([(TIKeyboardInputManager_zh_Toneless *)self dynamic])
  {
    v3 = *MEMORY[0x29EDC7198];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_zh_Toneless;
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)&v5 keyboardConfigurationLayoutTag];
  }

  return v3;
}

- (BOOL)supportsCandidateGeneration
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = v2 == 0;

  return v3;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (!v6)
  {
    v14.receiver = self;
    v14.super_class = TIKeyboardInputManager_zh_Toneless;
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)&v14 handleKeyboardInput:v4];
    v7 = [(TIKeyboardInputManager_zh_Toneless *)self candidateRange];
    v9 = v8;
    [(TIKeyboardInputManager_zh_Toneless *)self setCandidateRange:0, 1];
    v10 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateResultSetByWaitingForResults:1];
    [(TIKeyboardInputManager_zh_Toneless *)self setCandidateRange:v7, v9];
    v11 = [(TIKeyboardInputManager_zh_Toneless *)self inputString];
    if ([v11 _graphemeCount] <= 2)
    {
    }

    else
    {
      v12 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];

      if (v12)
      {
        [(TIKeyboardInputManager_zh_Toneless *)self activateRetroCorrection];
      }
    }
  }

  return v6;
}

- (void)updateComposedText
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerChinesePhonetic *)&v6 updateComposedText];
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];
  v5 = [v4 firstObject];
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:v5];

  [(TIKeyboardInputManager_zh_Toneless *)self setMarkedText];
}

- (void)clearInput
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerChinesePhonetic *)&v3 clearInput];
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:0];
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  v4 = [v3 candidate];
  if (v4)
  {
    v5 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
    v6 = [v5 candidate];
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManager_zh_Toneless;
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)&v9 inputString];
  }

  return v7;
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_Toneless;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 deleteFromInput:a3];
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
  v6 = [v5 length];

  if (!v6)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return v4;
}

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TIKeyboardInputManager_zh_Toneless;
  v7 = [(TIKeyboardInputManagerChinese *)&v29 groupedCandidatesFromCandidates:a3 usingSortingMethod:v6];
  v8 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  if ([v6 integerValue] == 1 && v8)
  {
    v20 = v7;
    v21 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 candidates];
          v15 = MEMORY[0x29EDBA0A8];
          v23[0] = MEMORY[0x29EDCA5F8];
          v23[1] = 3221225472;
          v23[2] = __89__TIKeyboardInputManager_zh_Toneless_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke;
          v23[3] = &unk_29F37D3F0;
          v24 = v8;
          v16 = [v15 predicateWithBlock:v23];
          v17 = [v14 filteredOrderedSetUsingPredicate:v16];
          [v13 setCandidates:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v7 = v20;
    v6 = v21;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:0];
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Toneless;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v13 didAcceptCandidate:v4];

  v6 = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v7 = [v6 length];

  if (v7)
  {
    if ([(TIKeyboardInputManager_zh_Toneless *)self dynamic])
    {
      v8 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v9 = [v8 candidates];
      -[TIKeyboardInputManager_zh_Toneless setAssertDefaultKeyPlane:](self, "setAssertDefaultKeyPlane:", [v9 count] != 0);
    }
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &stru_2A252F9A8;
  }

  v11 = v10;

  return v10;
}

- (void)activateRetroCorrection
{
  v3 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  v4 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v3];

  v9 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v4];
  v5 = [TIKeyboardInputManager_zh_RetroCorrection alloc];
  v6 = [(TIKeyboardInputManagerBase *)self inputMode];
  v7 = [(TIKeyboardInputManager_zh_Toneless *)self keyboardState];
  v8 = [(TIKeyboardInputManager_zh_RetroCorrection *)v5 initWithInputMode:v6 keyboardState:v7 inputString:v9];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

@end