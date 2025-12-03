@interface TIKeyboardInputManagerCangjie
- (BOOL)firstCandidateIsEnglish;
- (BOOL)isPunctuationInput;
- (BOOL)selectedCandidateIsEnglish;
- (BOOL)supportsNumberKeySelection;
- (id)cangjieAlphabetSet;
- (id)cangjieSet;
- (id)deleteFromInput:(unint64_t *)input;
- (id)formattedSearchString;
- (id)keyboardBehaviors;
- (id)nonstopPunctuationCharacters;
- (id)sortingMethods;
- (unint64_t)cangjieInputType:(id)type fromPopupVariant:(BOOL)variant;
- (void)addInput:(id)input withContext:(id)context;
- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)syncToLayoutState:(id)state;
- (void)syncWordSearch;
- (void)updateMarkedText;
@end

@implementation TIKeyboardInputManagerCangjie

- (id)sortingMethods
{
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    sortingMethods = &unk_287EC39D0;
  }

  else if ([(TIKeyboardInputManagerCangjie *)self isPunctuationInput])
  {
    sortingMethods = &unk_287EC39E8;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerCangjie;
    sortingMethods = [(TIKeyboardInputManagerShapeBased *)&v5 sortingMethods];
  }

  return sortingMethods;
}

- (BOOL)isPunctuationInput
{
  inputString = [(TIKeyboardInputManagerCangjie *)self inputString];
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

- (unint64_t)cangjieInputType:(id)type fromPopupVariant:(BOOL)variant
{
  typeCopy = type;
  v7 = typeCopy;
  if (typeCopy && [typeCopy length] && (-[TIKeyboardInputManagerCangjie shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") & 1) == 0)
  {
    if (([v7 isEqualToString:@"☻"] & 1) != 0 || -[TIKeyboardInputManagerChinese isFacemarkInput:](self, "isFacemarkInput:", v7))
    {
      v8 = 2;
      goto LABEL_5;
    }

    if (!variant)
    {
      cangjieSet = [(TIKeyboardInputManagerCangjie *)self cangjieSet];
      v11 = [cangjieSet characterIsMember:{objc_msgSend(v7, "characterAtIndex:", 0)}];

      v8 = 0;
      if (v11)
      {
        goto LABEL_5;
      }

      cangjieAlphabetSet = [(TIKeyboardInputManagerCangjie *)self cangjieAlphabetSet];
      v13 = [cangjieAlphabetSet characterIsMember:{objc_msgSend(v7, "characterAtIndex:", 0)}];

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
  nonstopPunctuationCharacters = [(TIKeyboardInputManagerCangjie *)&v9 nonstopPunctuationCharacters];
  pairedPunctuationDictionary = [objc_opt_class() pairedPunctuationDictionary];
  allKeys = [pairedPunctuationDictionary allKeys];
  v5 = [allKeys componentsJoinedByString:&stru_287EBF4E8];
  v6 = [nonstopPunctuationCharacters stringByAppendingString:v5];

  v7 = [v6 stringByAppendingString:@"☻"];

  return v7;
}

- (void)notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  candidatesCopy = candidates;
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
    v7 = candidatesCopy;
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
  keyboardState = [(TIKeyboardInputManagerCangjie *)self keyboardState];
  currentCandidate = [keyboardState currentCandidate];
  candidate = [currentCandidate candidate];

  if ([candidate length])
  {
    v6 = [candidate substringToIndex:1];
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
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  firstObject = [candidates firstObject];

  candidate = [firstObject candidate];
  if ([candidate length])
  {
    v7 = [candidate substringToIndex:1];
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
  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  if (![searchString length])
  {
    [(TIKeyboardInputManagerChinese *)self setInput:searchString];
    goto LABEL_13;
  }

  if (![(TIKeyboardInputManagerCangjie *)self supportsEnglish])
  {
    goto LABEL_8;
  }

  lowercaseString = [searchString lowercaseString];
  if (![lowercaseString isEqualToString:searchString])
  {

    goto LABEL_10;
  }

  firstCandidateIsEnglish = [(TIKeyboardInputManagerCangjie *)self firstCandidateIsEnglish];

  if (firstCandidateIsEnglish)
  {
LABEL_10:
    markedTextWithAutoconvertedCandidates = searchString;
    goto LABEL_11;
  }

  if (![(TIKeyboardInputManagerCangjie *)self selectedCandidateIsEnglish])
  {
LABEL_8:
    markedTextWithAutoconvertedCandidates = [(TIKeyboardInputManagerShapeBased *)self markedTextWithAutoconvertedCandidates];
LABEL_11:
    candidate = markedTextWithAutoconvertedCandidates;
    goto LABEL_12;
  }

  keyboardState = [(TIKeyboardInputManagerCangjie *)self keyboardState];
  currentCandidate = [keyboardState currentCandidate];
  candidate = [currentCandidate candidate];

LABEL_12:
  [(TIKeyboardInputManagerChinese *)self setInput:candidate];

LABEL_13:
}

- (id)formattedSearchString
{
  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString();

  return InputKeyFromASCIIString;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerCangjie;
  v4 = [(TIKeyboardInputManagerShapeBased *)&v6 deleteFromInput:input];
  [(TIKeyboardInputManagerCangjie *)self updateMarkedText];
  return 0;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  if ([inputCopy isPopupVariant])
  {
    isGesture = 1;
  }

  else
  {
    isGesture = [inputCopy isGesture];
  }

  if ([string length])
  {
    [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
    if ([string isEqualToString:@"☻"])
    {
      v10 = *MEMORY[0x277D6FF50];
    }

    else
    {
      v10 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:string];
    }

    v11 = v10;

    [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
    string2 = [inputCopy string];
    v13 = [(TIKeyboardInputManagerCangjie *)self cangjieInputType:string2 fromPopupVariant:isGesture];

    if (v13 == 2)
    {
      [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:contextCopy];
      searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [searchString appendString:v11];

      [inputCopy setString:v11];
      v21.receiver = self;
      v21.super_class = TIKeyboardInputManagerCangjie;
      [(TIKeyboardInputManagerCangjie *)&v21 addInput:inputCopy withContext:contextCopy];
      goto LABEL_20;
    }

    if (v13 == 3)
    {
      string3 = [inputCopy string];
      v15 = [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:string3];

      if (!v15)
      {
        [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:contextCopy];
        [contextCopy insertText:v11];
        goto LABEL_20;
      }
    }

    else
    {
      searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      v18 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:searchString2];

      if (v18)
      {
        [(TIKeyboardInputManagerCangjie *)self acceptCurrentCandidateWithContext:contextCopy];
      }
    }

    searchString3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    if ([(TIKeyboardInputManagerCangjie *)self supportsEnglish])
    {
      [searchString3 appendString:v11];
    }

    else
    {
      lowercaseString = [v11 lowercaseString];
      [searchString3 appendString:lowercaseString];
    }

    [(TIKeyboardInputManagerCangjie *)self updateMarkedText];
    [(TIKeyboardInputManagerCangjie *)self setMarkedText];
  }

  else
  {
    v11 = string;
  }

LABEL_20:
}

- (void)syncWordSearch
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch setSuchengEnabled:{-[TIKeyboardInputManagerCangjie suchengEnabled](self, "suchengEnabled")}];
  [wordSearch setSupportsEnglish:{-[TIKeyboardInputManagerCangjie supportsEnglish](self, "supportsEnglish")}];
}

- (void)syncToLayoutState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerCangjie;
  stateCopy = state;
  [(TIKeyboardInputManagerChinese *)&v8 syncToLayoutState:stateCopy];
  inputMode = [stateCopy inputMode];
  v6 = TIInputModeGetVariant();
  -[TIKeyboardInputManagerCangjie setSuchengEnabled:](self, "setSuchengEnabled:", [v6 isEqualToString:@"Sucheng"]);

  softwareLayout = [stateCopy softwareLayout];

  -[TIKeyboardInputManagerCangjie setSupportsEnglish:](self, "setSupportsEnglish:", [softwareLayout hasSuffix:@"QWERTY"]);
  [(TIKeyboardInputManagerCangjie *)self syncWordSearch];
}

- (BOOL)supportsNumberKeySelection
{
  inputString = [(TIKeyboardInputManagerCangjie *)self inputString];
  v3 = [inputString length] != 0;

  return v3;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F390]);

  return v2;
}

@end