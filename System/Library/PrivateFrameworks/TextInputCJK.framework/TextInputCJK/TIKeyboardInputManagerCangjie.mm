@interface TIKeyboardInputManagerCangjie
- (BOOL)firstCandidateIsEnglish;
- (BOOL)isPunctuationInput;
- (BOOL)selectedCandidateIsEnglish;
- (BOOL)supportsNumberKeySelection;
- (id)cangjieAlphabetSet;
- (id)cangjieSet;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)formattedSearchString;
- (id)keyboardBehaviors;
- (id)nonstopPunctuationCharacters;
- (id)sortingMethods;
- (unint64_t)cangjieInputType:(id)a3 fromPopupVariant:(BOOL)a4;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)syncToLayoutState:(id)a3;
- (void)syncWordSearch;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManagerCangjie

- (id)sortingMethods
{
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    v3 = &unk_287EC39D0;
  }

  else if ([(TIKeyboardInputManagerCangjie *)self isPunctuationInput])
  {
    v3 = &unk_287EC39E8;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerCangjie;
    v3 = [(TIKeyboardInputManagerShapeBased *)&v5 sortingMethods];
  }

  return v3;
}

- (BOOL)isPunctuationInput
{
  v2 = [(TIKeyboardInputManagerCangjie *)self inputString];
  ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString();

  if ([ASCIIFromInputKeyString isEqualToString:@"z"] & 1) != 0 || (objc_msgSend(ASCIIFromInputKeyString, "hasPrefix:", @"zx"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [ASCIIFromInputKeyString hasPrefix:@"yyy"];
  }

  return v4;
}

- (id)cangjieAlphabetSet
{
  v2 = [TIKeyboardInputManagerCangjie cangjieAlphabetSet]::cangjieAlphabetSet;
  if (![TIKeyboardInputManagerCangjie cangjieAlphabetSet]::cangjieAlphabetSet)
  {
    v3 = [MEMORY[0x277CCAB50] characterSetWithRange:{65, 26}];
    [v3 addCharactersInRange:{97, 26}];
    v4 = [v3 copy];
    v5 = [TIKeyboardInputManagerCangjie cangjieAlphabetSet]::cangjieAlphabetSet;
    [TIKeyboardInputManagerCangjie cangjieAlphabetSet]::cangjieAlphabetSet = v4;

    v2 = [TIKeyboardInputManagerCangjie cangjieAlphabetSet]::cangjieAlphabetSet;
  }

  return v2;
}

- (id)cangjieSet
{
  v2 = [TIKeyboardInputManagerCangjie cangjieSet]::cangjieSet;
  if (![TIKeyboardInputManagerCangjie cangjieSet]::cangjieSet)
  {
    v3 = MecabraInputKeyPropertiesGetInputKeys();
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v3];
    v5 = [TIKeyboardInputManagerCangjie cangjieSet]::cangjieSet;
    [TIKeyboardInputManagerCangjie cangjieSet]::cangjieSet = v4;

    v2 = [TIKeyboardInputManagerCangjie cangjieSet]::cangjieSet;
  }

  return v2;
}

- (unint64_t)cangjieInputType:(id)a3 fromPopupVariant:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 length] && (-[TIKeyboardInputManagerCangjie shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") & 1) == 0)
  {
    if (([v7 isEqualToString:@"☻"] & 1) != 0 || -[TIKeyboardInputManagerChinese isFacemarkInput:](self, "isFacemarkInput:", v7))
    {
      v8 = 2;
      goto LABEL_5;
    }

    if (!a4)
    {
      v10 = [(TIKeyboardInputManagerCangjie *)self cangjieSet];
      v11 = [v10 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", 0)}];

      v8 = 0;
      if (v11)
      {
        goto LABEL_5;
      }

      v12 = [(TIKeyboardInputManagerCangjie *)self cangjieAlphabetSet];
      v13 = [v12 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", 0)}];

      if (v13)
      {
        v8 = 1;
        goto LABEL_5;
      }
    }
  }

  v8 = 3;
LABEL_5:

  return v8;
}

- (id)nonstopPunctuationCharacters
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerCangjie;
  v2 = [(TIKeyboardInputManagerCangjie *)&v9 nonstopPunctuationCharacters];
  v3 = [objc_opt_class() pairedPunctuationDictionary];
  v4 = [v3 allKeys];
  v5 = [v4 componentsJoinedByString:&stru_287EBF4E8];
  v6 = [v2 stringByAppendingString:v5];

  v7 = [v6 stringByAppendingString:@"☻"];

  return v7;
}

- (void)notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v5 = a3;
  if ([(TIKeyboardInputManagerCangjie *)self shouldSkipCandidateSelection])
  {
    [(TIKeyboardInputManagerCangjie *)self closeCandidateGenerationContextWithResults:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__TIKeyboardInputManagerCangjie_notifyUpdateCandidates_forOperation___block_invoke;
    v6[3] = &unk_279D9D620;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    [(TIKeyboardInputManagerMecabra *)self addStickers:v7 withCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __69__TIKeyboardInputManagerCangjie_notifyUpdateCandidates_forOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) candidates];
  [WeakRetained setWordSearchCandidateResultSet:v3];

  [WeakRetained updateMarkedText];
  [WeakRetained setMarkedText];
  v5 = [WeakRetained wordSearchCandidateResultSet];
  v6 = [v5 proactiveTriggers];
  v7 = [WeakRetained candidateResultSetFromCandidates:v4 proactiveTriggers:v6];
  [WeakRetained closeCandidateGenerationContextWithResults:v7];
}

- (BOOL)selectedCandidateIsEnglish
{
  v3 = [(TIKeyboardInputManagerCangjie *)self keyboardState];
  v4 = [v3 currentCandidate];
  v5 = [v4 candidate];

  if ([v5 length])
  {
    v6 = [v5 substringToIndex:1];
    v7 = [(TIKeyboardInputManagerCangjie *)self cangjieInputType:v6 fromPopupVariant:0]== 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)firstCandidateIsEnglish
{
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];
  v5 = [v4 firstObject];

  v6 = [v5 candidate];
  if ([v6 length])
  {
    v7 = [v6 substringToIndex:1];
    v8 = [(TIKeyboardInputManagerCangjie *)self cangjieInputType:v7 fromPopupVariant:0]== 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateMarkedText
{
  v9 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  if (![v9 length])
  {
    [(TIKeyboardInputManagerChinese *)self setInput:v9];
    goto LABEL_13;
  }

  if (![(TIKeyboardInputManagerCangjie *)self supportsEnglish])
  {
    goto LABEL_8;
  }

  v3 = [v9 lowercaseString];
  if (![v3 isEqualToString:v9])
  {

    goto LABEL_10;
  }

  v4 = [(TIKeyboardInputManagerCangjie *)self firstCandidateIsEnglish];

  if (v4)
  {
LABEL_10:
    v8 = v9;
    goto LABEL_11;
  }

  if (![(TIKeyboardInputManagerCangjie *)self selectedCandidateIsEnglish])
  {
LABEL_8:
    v8 = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
LABEL_11:
    v7 = v8;
    goto LABEL_12;
  }

  v5 = [(TIKeyboardInputManagerCangjie *)self keyboardState];
  v6 = [v5 currentCandidate];
  v7 = [v6 candidate];

LABEL_12:
  [(TIKeyboardInputManagerChinese *)self setInput:v7];

LABEL_13:
}

- (id)formattedSearchString
{
  v2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString();

  return InputKeyFromASCIIString;
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerCangjie;
  v4 = [(TIKeyboardInputManagerShapeBased *)&v6 deleteFromInput:a3];
  [(TIKeyboardInputManagerCangjie *)self updateMarkedText];
  return 0;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  if ([v6 isPopupVariant])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isGesture];
  }

  if ([v8 length])
  {
    [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
    if ([v8 isEqualToString:@"☻"])
    {
      v10 = *MEMORY[0x277D6FF50];
    }

    else
    {
      v10 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:v8];
    }

    v11 = v10;

    [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
    v12 = [v6 string];
    v13 = [(TIKeyboardInputManagerCangjie *)self cangjieInputType:v12 fromPopupVariant:v9];

    if (v13 == 2)
    {
      [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:v7];
      v16 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [v16 appendString:v11];

      [v6 setString:v11];
      v21.receiver = self;
      v21.super_class = TIKeyboardInputManagerCangjie;
      [(TIKeyboardInputManagerCangjie *)&v21 addInput:v6 withContext:v7];
      goto LABEL_20;
    }

    if (v13 == 3)
    {
      v14 = [v6 string];
      v15 = [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v14];

      if (!v15)
      {
        [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:v7];
        [v7 insertText:v11];
        goto LABEL_20;
      }
    }

    else
    {
      v17 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      v18 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:v17];

      if (v18)
      {
        [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:v7];
      }
    }

    v19 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    if ([(TIKeyboardInputManagerCangjie *)self supportsEnglish])
    {
      [v19 appendString:v11];
    }

    else
    {
      v20 = [v11 lowercaseString];
      [v19 appendString:v20];
    }

    [(TIKeyboardInputManagerCangjie *)self updateMarkedText];
    [(TIKeyboardInputManagerCangjie *)self setMarkedText];
  }

  else
  {
    v11 = v8;
  }

LABEL_20:
}

- (void)syncWordSearch
{
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 setSuchengEnabled:{-[TIKeyboardInputManagerCangjie suchengEnabled](self, "suchengEnabled")}];
  [v3 setSupportsEnglish:{-[TIKeyboardInputManagerCangjie supportsEnglish](self, "supportsEnglish")}];
}

- (void)syncToLayoutState:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerCangjie;
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)&v8 syncToLayoutState:v4];
  v5 = [v4 inputMode];
  v6 = TIInputModeGetVariant();
  -[TIKeyboardInputManagerCangjie setSuchengEnabled:](self, "setSuchengEnabled:", [v6 isEqualToString:@"Sucheng"]);

  v7 = [v4 softwareLayout];

  -[TIKeyboardInputManagerCangjie setSupportsEnglish:](self, "setSupportsEnglish:", [v7 hasSuffix:@"QWERTY"]);
  [(TIKeyboardInputManagerCangjie *)self syncWordSearch];
}

- (BOOL)supportsNumberKeySelection
{
  v2 = [(TIKeyboardInputManagerCangjie *)self inputString];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F390]);

  return v2;
}

@end