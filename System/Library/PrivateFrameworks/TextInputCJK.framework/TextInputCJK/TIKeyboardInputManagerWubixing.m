@interface TIKeyboardInputManagerWubixing
- (BOOL)isValidWubiInput:(id)a3;
- (BOOL)supportsNumberKeySelection;
- (id)keyboardBehaviors;
- (id)sortingMethods;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputIndex;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManagerWubixing

- (BOOL)isValidWubiInput:(id)a3
{
  v4 = a3;
  if ([TIKeyboardInputManagerWubixing isValidWubiInput:]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerWubixing isValidWubiInput:]::onceToken, &__block_literal_global_610);
  }

  v5 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  if (![v5 length])
  {

    goto LABEL_7;
  }

  v6 = [v4 isEqualToString:@"."];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = [v4 rangeOfCharacterFromSet:-[TIKeyboardInputManagerWubixing isValidWubiInput:]::notWubiSet] == 0x7FFFFFFFFFFFFFFFLL;
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

- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TIKeyboardInputManagerWubixing_notifyUpdateCandidates_forOperation___block_invoke;
  v7[3] = &unk_279D9D620;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
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
  v2 = [(TIKeyboardInputManagerWubixing *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (void)updateMarkedText
{
  v3 = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
  [(TIKeyboardInputManagerChinese *)self setInput:v3];
  [(TIKeyboardInputManagerWubixing *)self setMarkedText];
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  if ([v8 length])
  {
    [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
    if ([v8 isEqualToString:@"☻"])
    {
      v9 = 1;
    }

    else
    {
      v10 = [(TIKeyboardInputManagerWubixing *)self keyboardState];
      if ([v10 hardwareKeyboardMode])
      {
        v9 = [v8 isEqualToString:*MEMORY[0x277D6FF40]];
      }

      else
      {
        v9 = 0;
      }
    }

    if ([(TIKeyboardInputManagerWubixing *)self isValidWubiInput:v8]|| [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v8])
    {
      if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
      {
        [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:v7];
      }

      v11 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [v11 appendString:v8];

      [(TIKeyboardInputManagerWubixing *)self updateMarkedText];
    }

    else if (v9)
    {
      if ([v8 isEqualToString:@"☻"])
      {
        v12 = *MEMORY[0x277D6FF50];

        v8 = v12;
      }

      [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:v7];
      v13 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [v13 appendString:v8];

      [v6 setString:v8];
      v15.receiver = self;
      v15.super_class = TIKeyboardInputManagerWubixing;
      [(TIKeyboardInputManagerWubixing *)&v15 addInput:v6 withContext:v7];
    }

    else
    {
      [(TIKeyboardInputManagerWubixing *)self acceptCurrentCandidateWithContext:v7];
      v14 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:v8];

      [v7 insertText:v14];
      v8 = v14;
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
  v2 = [(TIKeyboardInputManagerWubixing *)self inputString];
  v3 = [v2 length] != 0;

  return v3;
}

- (unint64_t)initialSelectedIndex
{
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x277D6FA90]];

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