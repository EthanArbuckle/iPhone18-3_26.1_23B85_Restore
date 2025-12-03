@interface TIKeyboardInputManagerWubixing
- (BOOL)isValidWubiInput:(id)input;
- (BOOL)supportsNumberKeySelection;
- (id)keyboardBehaviors;
- (id)sortingMethods;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputIndex;
- (void)addInput:(id)input withContext:(id)context;
- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManagerWubixing

- (BOOL)isValidWubiInput:(id)input
{
  inputCopy = input;
  if ([TIKeyboardInputManagerWubixing isValidWubiInput:]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerWubixing isValidWubiInput:]::onceToken, &__block_literal_global_610);
  }

  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  if (![searchString length])
  {

    goto LABEL_7;
  }

  v6 = [inputCopy isEqualToString:@"."];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = [inputCopy rangeOfCharacterFromSet:-[TIKeyboardInputManagerWubixing isValidWubiInput:]::notWubiSet] == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

void __51__TIKeyboardInputManagerWubixing_isValidWubiInput___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  v4 = [v0 mutableCopy];

  v1 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 invertedSet];
  v3 = [TIKeyboardInputManagerWubixing isValidWubiInput:]::notWubiSet;
  [TIKeyboardInputManagerWubixing isValidWubiInput:]::notWubiSet = v2;
}

- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  candidatesCopy = candidates;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TIKeyboardInputManagerWubixing_notifyUpdateCandidates_forOperation___block_invoke;
  v7[3] = &unk_279D9D620;
  objc_copyWeak(&v9, &location);
  v8 = candidatesCopy;
  v6 = candidatesCopy;
  [(TIKeyboardInputManagerMecabra *)self addStickers:v6 withCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__TIKeyboardInputManagerWubixing_notifyUpdateCandidates_forOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWordSearchCandidateResultSet:v3];

  v4 = [WeakRetained searchString];
  v5 = [WeakRetained wordSearchCandidateResultSet];
  v6 = [v5 candidates];
  if (![v6 count])
  {
    v7 = [v4 length];

    if (!v7)
    {
      goto LABEL_5;
    }

    v5 = [WeakRetained markedTextWithAutoconvertedCandidates];
    v6 = [WeakRetained wordSearchCandidateResultSet];
    [v6 addSyntheticMecabraCandidateWithSurface:v5 input:v4];
  }

LABEL_5:
  [WeakRetained updateMarkedText];
  v8 = [WeakRetained candidateResultSetFromWordSearchCandidateResultSet:*(a1 + 32)];
  [WeakRetained closeCandidateGenerationContextWithResults:v8];
}

- (unsigned)inputIndex
{
  inputString = [(TIKeyboardInputManagerWubixing *)self inputString];
  v3 = [inputString length];

  return v3;
}

- (void)updateMarkedText
{
  markedTextWithAutoconvertedCandidates = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
  [(TIKeyboardInputManagerChinese *)self setInput:markedTextWithAutoconvertedCandidates];
  [(TIKeyboardInputManagerWubixing *)self setMarkedText];
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  if ([string length])
  {
    [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
    if ([string isEqualToString:@"☻"])
    {
      v9 = 1;
    }

    else
    {
      keyboardState = [(TIKeyboardInputManagerWubixing *)self keyboardState];
      if ([keyboardState hardwareKeyboardMode])
      {
        v9 = [string isEqualToString:*MEMORY[0x277D6FF40]];
      }

      else
      {
        v9 = 0;
      }
    }

    if ([(TIKeyboardInputManagerWubixing *)self isValidWubiInput:string]|| [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:string])
    {
      if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
      {
        [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:contextCopy];
      }

      searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [searchString appendString:string];

      [(TIKeyboardInputManagerWubixing *)self updateMarkedText];
    }

    else if (v9)
    {
      if ([string isEqualToString:@"☻"])
      {
        v12 = *MEMORY[0x277D6FF50];

        string = v12;
      }

      [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:contextCopy];
      searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [searchString2 appendString:string];

      [inputCopy setString:string];
      v15.receiver = self;
      v15.super_class = TIKeyboardInputManagerWubixing;
      [(TIKeyboardInputManagerWubixing *)&v15 addInput:inputCopy withContext:contextCopy];
    }

    else
    {
      [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:contextCopy];
      v14 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:string];

      [contextCopy insertText:v14];
      string = v14;
    }
  }
}

- (id)sortingMethods
{
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    return &unk_287EC3A78;
  }

  if ([(TIKeyboardInputManagerChinese *)self hasIdeographicCandidates])
  {
    return &unk_287EC3AA8;
  }

  return &unk_287EC3A90;
}

- (BOOL)supportsNumberKeySelection
{
  inputString = [(TIKeyboardInputManagerWubixing *)self inputString];
  v3 = [inputString length] != 0;

  return v3;
}

- (unint64_t)initialSelectedIndex
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6FA90]];

  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerWubixing;
  return [(TIKeyboardInputManagerShapeBased *)&v6 initialSelectedIndex];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3B8]);

  return v2;
}

@end