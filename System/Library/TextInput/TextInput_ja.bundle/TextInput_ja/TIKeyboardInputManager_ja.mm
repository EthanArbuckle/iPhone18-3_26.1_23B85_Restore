@interface TIKeyboardInputManager_ja
+ (id)sortTitleFromSort:(unint64_t)a3;
+ (unint64_t)sortFromSortTitle:(id)a3;
+ (void)addFullwidthAnnotationToResultSet:(id)a3;
- (BOOL)alwaysShowExtensionCandidatesForSortingMethod:(id)a3;
- (BOOL)hasGroupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 inputString:(id)a5;
- (BOOL)isLiveConversion;
- (BOOL)liveConversionEnabled;
- (BOOL)makeCandidatesWithWordSearch:(id)a3 input:(id)a4 predictionEnabled:(BOOL)a5 reanalysisMode:(BOOL)a6;
- (BOOL)shouldInvokeLiveConversion:(id)a3;
- (BOOL)shouldOutputFullwidthSpace;
- (BOOL)shouldOutputFullwidthSpaceForKanaABC123;
- (BOOL)supportsCandidateGeneration;
- (BOOL)suppressCompletionsForFieldEditor;
- (BOOL)usesLiveConversion;
- (NSOperationQueue)operationQueue;
- (TICandidateSorter)candidateSorter;
- (TIKeyboardInputManager_ja)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)_convertStringWithBoundary:(unint64_t)a3;
- (id)_inputString;
- (id)candidateResultSet;
- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4;
- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)a3;
- (id)defaultCandidate;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)geometryModelData;
- (id)getInputStringFromTopCandidate;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 inputString:(id)a5;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)indexTitlesForGroupTitles:(id)a3 sortingMethod:(id)a4;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)rawInputString;
- (id)remainingInput;
- (id)sortingMethods;
- (unint64_t)actualInputIndex;
- (unint64_t)initialSelectedIndex;
- (unint64_t)remainingInputLengthOfCandidate:(id)a3;
- (unint64_t)remainingInputLengthOfString:(id)a3 index:(unint64_t)a4 candidate:(id)a5;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInput:(id)a3 point:(CGPoint)a4;
- (void)_deleteFromInput;
- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)addRecentlyCommittedCandidatesForReanalysis:(void *)a3;
- (void)clearDynamicDictionary;
- (void)clearInput;
- (void)commitComposition;
- (void)dealloc;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
- (void)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 completion:(id)a5;
- (void)initImplementation;
- (void)inputLocationChanged;
- (void)loadFavoniusTypingModel;
- (void)lockAnyDrawInputResults;
- (void)mecabraLearningValidator:(id)a3;
- (void)preferencesDidChange:(id)a3;
- (void)resume;
- (void)setInput:(id)a3;
- (void)setIsEmojiFacemarkMode:(BOOL)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)suspend;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManager_ja

- (TIKeyboardInputManager_ja)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v11 initWithConfig:a3 keyboardState:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    recentlyCommittedCandidatesForReanalysis = v4->_recentlyCommittedCandidatesForReanalysis;
    v4->_recentlyCommittedCandidatesForReanalysis = v5;

    v7 = objc_alloc_init(MEMORY[0x29EDC70F0]);
    smartPunctuationController = v4->_smartPunctuationController;
    v4->_smartPunctuationController = v7;

    [(TISmartPunctuationController *)v4->_smartPunctuationController setAutoQuoteType:1];
    [(TISmartPunctuationController *)v4->_smartPunctuationController setSmartDashesEnabled:0];
    v9 = [MEMORY[0x29EDBA068] defaultCenter];
    [v9 addObserver:v4 selector:sel_preferencesDidChange_ name:*MEMORY[0x29EDC7120] object:0];

    [(TIKeyboardInputManager_ja *)v4 preferencesDidChange:0];
    [(TIKeyboardInputManager_ja *)v4 setFlickUsed:0];
  }

  return v4;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (id)keyEventMap
{
  v3 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v4 = [v3 hardwareKeyboardMode];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDC6FE8]);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManager_ja;
    v5 = [(TIKeyboardInputManager_ja *)&v7 keyEventMap];
  }

  return v5;
}

- (void)loadFavoniusTypingModel
{
  if (self->_isCandidateSelectionSuppressed)
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja;
    [(TIKeyboardInputManager_ja *)&v5 loadFavoniusTypingModel];
  }

  else
  {
    v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
    v4 = *(v3 + 280);
    *(v3 + 272) = 0;
    *(v3 + 280) = 0;
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

- (void)dealloc
{
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (void)resume
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel_mecabraLearningValidator_ name:*MEMORY[0x29EDC9710] object:0];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 resume];
}

- (void)suspend
{
  [(TIWordSearch *)self->_kbws resetPreviousWord];
  [(TIWordSearch *)self->_kbws clearCache];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC9710] object:0];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 suspend];
}

- (BOOL)usesLiveConversion
{
  v3 = [(TIKeyboardInputManager_ja *)self liveConversionEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode];
  }

  return v3;
}

- (void)setIsEmojiFacemarkMode:(BOOL)a3
{
  if (!a3)
  {
    [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:0];
  }

  self->_isEmojiFacemarkMode = a3;
}

- (void)syncToLayoutState:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja;
  v4 = a3;
  [(TIKeyboardInputManager_ja *)&v6 syncToLayoutState:v4];
  v5 = [v4 isKanaPlane];

  [(TIKeyboardInputManager_ja *)self setIsKanaPlane:v5];
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (v6)
  {
    goto LABEL_33;
  }

  v7 = [v4 string];
  if ([v7 isEqualToString:@"\n"])
  {
    goto LABEL_5;
  }

  v8 = [v4 string];
  if ([v8 isEqualToString:@" "])
  {

LABEL_5:
LABEL_6:
    [(TIWordSearch *)self->_kbws resetPreviousWord];
    goto LABEL_7;
  }

  v26 = [v4 string];
  v27 = [v26 isEqualToString:@"　"];

  if (v27)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = [v4 string];
  v10 = [v9 isEqualToString:@"\x1B"];

  if (v10)
  {
    [(TIKeyboardInputManager_ja *)self clearInput];
    v6 = 0;
    goto LABEL_33;
  }

  if (![(TIKeyboardInputManager_ja *)self shouldInvokeLiveConversion:v4])
  {
    goto LABEL_13;
  }

  v11 = [(TIKeyboardInputManager_ja *)self liveConversionTextInputManager];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v11];

  if ([(TIKeyboardInputManager_ja *)self inputCount])
  {
    v12 = objc_alloc_init(MEMORY[0x29EDC7090]);
    v13 = [(TIKeyboardInputManager_ja *)self rawInputString];
    [v12 setString:v13];

    v14 = objc_alloc(MEMORY[0x29EDC7228]);
    v15 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v16 = [v14 initWithKeyboardState:v15];

    v17 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v17 addInput:v12 withContext:v16];
  }

  v18 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v18 handleKeyboardInput:v4];

  if (!v6)
  {
LABEL_13:
    v19 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v20 = [v19 hardwareKeyboardMode];

    if (v20)
    {
      goto LABEL_32;
    }

    v21 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v22 = [v21 layoutState];
    v23 = [v22 userInterfaceIdiom];

    v24 = [v4 string];
    v25 = v24;
    if (v23 == 1)
    {
      if ([v24 isEqualToString:@" "])
      {

        goto LABEL_24;
      }

      v30 = [v4 string];
      v31 = [v30 isEqualToString:@"　"];

      if (v31)
      {
LABEL_24:
        if (![(TIKeyboardInputManager_ja *)self isKanaPlane])
        {
          v32 = [(TIKeyboardInputManager_ja *)self keyboardState];
          v33 = [v32 shiftState];

          if (v33 != 1)
          {
            goto LABEL_32;
          }
        }

        if ([(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace])
        {
          v29 = @"　";
        }

        else
        {
          v29 = @" ";
        }

        goto LABEL_29;
      }

LABEL_32:
      v36.receiver = self;
      v36.super_class = TIKeyboardInputManager_ja;
      v6 = [(TIKeyboardInputManagerMecabra *)&v36 handleKeyboardInput:v4];
      goto LABEL_33;
    }

    v28 = [v24 isEqualToString:@"　"];

    if (!v28)
    {
      goto LABEL_32;
    }

    if ([(TIKeyboardInputManager_ja *)self isKanaPlane])
    {
      if (![(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace])
      {
LABEL_22:
        v29 = @" ";
LABEL_29:
        [v4 setString:v29];
        goto LABEL_32;
      }
    }

    else if (![(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpaceForKanaABC123])
    {
      goto LABEL_22;
    }

    v34 = [v4 string];
    [v4 setString:v34];

    goto LABEL_32;
  }

LABEL_33:

  return v6;
}

- (void)_addInput:(id)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v11 = 0;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja;
  v8 = [(TIKeyboardInputManagerMecabra *)&v10 addInput:v7 flags:0 point:&v11 firstDelete:x, y];
  v9 = [(TIKeyboardInputManager_ja *)self inputCount];
  if (v9 == [(TIKeyboardInputManager_ja *)self inputIndex])
  {
    self->_isPhraseBoundarySet = 0;
  }
}

- (void)_deleteFromInput
{
  v5 = 0;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  v3 = [(TIKeyboardInputManager_ja *)&v4 deleteFromInput:&v5];
}

- (void)setInput:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  self->_isPhraseBoundarySet = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManager_mul *)&v5 setInput:v4];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  if ([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManager_ja;
    v5 = [(TIKeyboardInputManager_ja *)&v12 deleteFromInput:a3];
  }

  else
  {
    if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
    {
      [(TIKeyboardInputManager_ja *)self clearInput];
    }

    else
    {
      self->_remainingInputLength = 0;
      v6 = [(TIKeyboardInputManager_ja *)self keyboardState];
      v7 = [v6 documentState];
      [v7 selectedRangeInMarkedText];
      v9 = v8;

      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (a3)
      {
        *a3 = v10;
      }

      do
      {
        [(TIKeyboardInputManager_ja *)self _deleteFromInput];
        --v10;
      }

      while (v10);
      if (![(TIKeyboardInputManager_ja *)self inputCount])
      {
        [(TIKeyboardInputManager_ja *)self setFlickUsed:0];
        [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
      }

      [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
      [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
    }

    v5 = 0;
  }

  return v5;
}

- (void)clearInput
{
  [(TIKeyboardInputManager_ja *)self setFlickUsed:0];
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIWordSearch *)self->_kbws clearCache];
  self->_isPhraseBoundarySet = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v3 clearInput];
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIWordSearch *)self->_kbws clearCache];
  self->_isPhraseBoundarySet = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
  [(TIWordSearch *)self->_kbws resetPreviousWord];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManager_ja *)&v3 inputLocationChanged];
}

- (id)rawInputString
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManager_ja;
    v9 = [(TIKeyboardInputManager_ja *)&v12 inputString];
    goto LABEL_9;
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [v3 hasKindOf:objc_opt_class()];

  if (v4)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];

    if (!v7)
    {
      v11 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v9 = [v11 asSearchString];

      goto LABEL_8;
    }

    v8 = [v7 input];
  }

  else
  {
    v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v8 = [v7 asSearchString];
  }

  v9 = v8;
LABEL_8:

LABEL_9:

  return v9;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja;
    return [(TIKeyboardInputManager_ja *)&v6 inputCount];
  }

  else
  {
    v4 = [(TIKeyboardInputManager_ja *)self _inputString];
    v3 = [v4 length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  v4 = v3;
  if (!v3 || (v5 = [v3 length]) == 0)
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManager_ja;
    LODWORD(v5) = [(TIKeyboardInputManager_ja *)&v7 inputIndex];
  }

  return v5;
}

- (id)_inputString
{
  v3 = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(TIKeyboardInputManager_ja *)self rawInputString];
  }

  v5 = v4;

  return v5;
}

- (id)inputString
{
  if ([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja;
    v3 = [(TIKeyboardInputManager_ja *)&v5 inputString];
  }

  else
  {
    v3 = [(TIKeyboardInputManager_ja *)self _inputString];
  }

  return v3;
}

- (id)_convertStringWithBoundary:(unint64_t)a3
{
  v4 = [(TIKeyboardInputManager_ja *)self _convertString];
  v5 = v4;
  if (a3 && [v4 length] > a3)
  {
    v6 = [v5 substringToIndex:a3];

    v5 = v6;
  }

  return v5;
}

- (BOOL)shouldOutputFullwidthSpace
{
  v3 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v4 = [v3 hardwareKeyboardMode];

  if (v4)
  {
    return 0;
  }

  v6 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v5 = [v6 shouldOutputFullwidthSpace];

  v7 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v8 = [v7 layoutState];
  if ([v8 isAlphabeticPlane])
  {
    v9 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v10 = [v9 shiftState] == 1;

    return v5 ^ v10;
  }

  else
  {
  }

  return v5;
}

- (BOOL)shouldOutputFullwidthSpaceForKanaABC123
{
  if (![(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace])
  {
    return 0;
  }

  v3 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];
  v6 = [v5 _lastGrapheme];

  if (![v6 length])
  {
    goto LABEL_5;
  }

  if ([v6 _containsFullwidthLettersAndNumbersOnly])
  {
    v7 = [v6 _containsCJScripts] ^ 1;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  v8 = [v6 isEqualToString:@"　"];

  result = 1;
  if ((v7 & 1) == 0 && (v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  v3 = a3;
  self->_isPhraseBoundarySet = [(TIKeyboardInputManager_ja *)self inputCount]!= a3;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  v5 = [(TIKeyboardInputManager_ja *)self keyboardState];
  v6 = [v5 documentState];
  [v6 selectedRangeInMarkedText];
  v8 = v7;

  if (v8)
  {
    v9 = (v8 + v3);
    v10 = [(TIKeyboardInputManager_ja *)self inputString];
    v11 = [v10 length];

    if (v9 <= v11)
    {
      v3 = v9;
    }
  }

  [(TIKeyboardInputManager_ja *)self setInputIndex:v3];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:self->_isPhraseBoundarySet];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v12 = [(TIKeyboardInputManagerMecabra *)self _convertInputsToSyntheticInputWithOffset:v3];
    [(TIKeyboardInputManagerMecabra *)self _replaceComposingInputWithSyntheticInput:v12 internalIndex:v3];
  }
}

- (unint64_t)actualInputIndex
{
  v3 = [(TIKeyboardInputManager_ja *)self inputString];
  v4 = [(TIKeyboardInputManager_ja *)self inputIndex];
  if (v4 && (v5 = v4, [(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex]))
  {
    v6 = v5;
  }

  else
  {
    v6 = [v3 length];
  }

  remainingInputLength = self->_remainingInputLength;
  if (remainingInputLength >= v6 || remainingInputLength == 0)
  {
    remainingInputLength = 0;
  }

  v9 = v6 - remainingInputLength;

  return v9;
}

- (id)remainingInput
{
  v3 = [(TIKeyboardInputManager_ja *)self inputString];
  v4 = [(TIKeyboardInputManager_ja *)self actualInputIndex];
  if (v4 >= [v3 length])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringFromIndex:v4];
  }

  return v5;
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      v4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v5 = [v4 asSearchString];
    }

    else
    {
      v5 = [(TIKeyboardInputManager_ja *)self _convertString];
    }

    v6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v7 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v8 = [v7 documentState];
    v9 = [v8 selectedText];

    v10 = [v9 length];
    if ((v10 - 1) >= *MEMORY[0x29EDC7298])
    {
      [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
      v14 = 0;
    }

    else
    {
      v11 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
      v12 = [v9 rangeOfCharacterFromSet:v11];

      v13 = ![(TIKeyboardInputManagerMecabra *)self usesComposingInput];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if ((v13 & 1) == 0 && v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v14 = [v15 totalDrawSamples] == 0;
      }
    }

    if ([v5 isEqualToString:*MEMORY[0x29EDC72D8]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x29EDC72E0]))
    {
      v16 = 1;
    }

    else
    {
      v16 = [v5 isEqualToString:*MEMORY[0x29EDC72D0]];
    }

    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:v16];
    if (v14)
    {
      v17 = [(TIKeyboardInputManager_ja *)self keyboardState];
      v18 = [v17 documentState];
      v19 = [v18 selectedText];

      if ([v19 _containsKatakanaOrKanji])
      {
        v20 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
        v21 = [(TIKeyboardInputManagerMecabra *)self adaptationContextReadingForReanalysisString:v19 fromRecentlyCommittedCandidates:v20];

        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = [v19 _stringByTranscribingFromLanguage:@"ja_JP"];
        }

        v24 = v22;

        v19 = v24;
      }

      if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
      {
        v25 = objc_alloc(MEMORY[0x29EDC71E0]);
        v26 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v27 = [v26 sourceKeyboardState];
        v28 = [v25 initWithSourceKeyboardState:v27];

        v29 = objc_alloc(MEMORY[0x29EDC71F0]);
        v30 = [v29 initWithCommittedText:v19 syllables:MEMORY[0x29EDB8E90]];
        [v28 composeNew:v30];

        v23 = 1;
        v6 = v28;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode]|| ![(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
      {
        v19 = v5;
      }

      else
      {
        v19 = [(TIKeyboardInputManager_ja *)self _convertStringWithBoundary:[(TIKeyboardInputManager_ja *)self inputIndex]];
      }

      v23 = ([(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode]& 1) == 0 && !self->_isPhraseBoundarySet;
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {

      v19 = 0;
    }

    v31 = [(TIKeyboardInputManager_ja *)self makeCandidatesWithWordSearch:v19 input:v6 predictionEnabled:v23 reanalysisMode:v14];
    v3 = [MEMORY[0x29EDC7080] dummySet];
    if (v31)
    {
      v32 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v33 = [(TIKeyboardInputManager_ja *)self rawInputString];
      [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:v32 withInput:v33];

      v34 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v35 = [(TIKeyboardInputManager_ja *)self candidateResultSetFromWordSearchCandidateResultSet:v34];

      if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
      {
        v36 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        v37 = [v36 candidates];
        v38 = [v37 firstObject];
        v39 = [v38 candidate];
        [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:v39];
      }

      v3 = v35;
    }

    else if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
    {
      [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:*MEMORY[0x29EDC72D0]];
    }
  }

  return v3;
}

- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([(TIKeyboardInputManager_ja *)self shouldOmitEmojiCandidates])
  {
    v10 = [v8 _arrayByFilteringEmojiCandidates:0];
    v9 = [v10 _arrayByFilteringCandidatesForNonExtendedView];
  }

  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_ja;
  v11 = [(TIKeyboardInputManager_ja *)&v13 candidateResultSetFromCandidates:v9 proactiveTriggers:v7];
  [TIKeyboardInputManager_ja addFullwidthAnnotationToResultSet:v11];

  return v11;
}

+ (void)addFullwidthAnnotationToResultSet:(id)a3
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x29EDB8E20]);
  v5 = [v3 candidates];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v3;
  v7 = [v3 candidates];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = [v12 candidate];
            [v6 addObject:v13];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v24 candidates];
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = v19;
            v21 = [v20 candidate];
            if ([v21 _containsFullwidthLettersAndSymbolsOnly])
            {
              v22 = [v21 _stringByConvertingFromFullWidthToHalfWidth];
              if (([v21 isEqualToString:v22] & 1) == 0 && objc_msgSend(v6, "containsObject:", v22))
              {
                [v20 setAnnotationText:@"UI-Fullwidth"];
              }
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x29EDCA608];
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja;
    v3 = [(TIKeyboardInputManagerMecabra *)&v5 geometryModelData];
  }

  return v3;
}

- (BOOL)makeCandidatesWithWordSearch:(id)a3 input:(id)a4 predictionEnabled:(BOOL)a5 reanalysisMode:(BOOL)a6
{
  v32 = a5;
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x29EDC72D0];
  v11 = [v8 isEqualToString:*MEMORY[0x29EDC72D0]];
  v12 = MEMORY[0x29EDC72E0];
  if (v11)
  {
    v13 = *MEMORY[0x29EDC72E0];

    v8 = v13;
  }

  v14 = [v9 asSearchString];
  v15 = [v14 isEqualToString:v10];

  v33 = v8;
  if (v15)
  {
    v16 = [*v12 _asTypeInputs];

    v30 = v16;
  }

  else
  {
    v30 = v9;
  }

  v17 = [(TIKeyboardInputManager_ja *)self keyboardState];
  -[TIWordSearch setSupportsPairedPunctutationInput:](self->_kbws, "setSupportsPairedPunctutationInput:", [v17 hardwareKeyboardMode] ^ 1);

  v18 = [(TIKeyboardInputManager_ja *)self geometryModelData];
  v19 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  kbws = self->_kbws;
  v21 = [(TIKeyboardInputManager_ja *)self contextBeforeWithDesiredLength:20];
  v22 = [(TIKeyboardInputManager_ja *)self flickUsed];
  LOBYTE(v17) = self->_isPhraseBoundarySet;
  v23 = [(TIKeyboardInputManager_ja *)self keyboardState];
  BYTE2(v29) = [v23 hardwareKeyboardMode];
  BYTE1(v29) = v17;
  LOBYTE(v29) = v22;
  LOBYTE(v28) = a6;
  v24 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v19 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:kbws contextString:v8 segmentBreakIndex:v30 predictionEnabled:v21 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:v32 target:v28 action:0 geometryModelData:self flickUsed:sel__notifyUpdateCandidates_forOperation_ phraseBoundarySet:v18 hardwareKeyboardMode:v29 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v24 setAllowIncompleteRomaji:[(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode]];
  [(TIWordSearchOperationGetCandidates *)v24 checkForCachedResults];
  v25 = [(TIWordSearchJapaneseOperationGetCandidates *)v24 results];

  if (v25)
  {
    v26 = [(TIWordSearchJapaneseOperationGetCandidates *)v24 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v26];
  }

  else
  {
    [(TIWordSearch *)self->_kbws performOperationAsync:v24];
  }

  return v25 != 0;
}

- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v8 = [v6 candidates];
    v9 = [v7 inputString];
    v10 = *MEMORY[0x29EDC72D8];
    if (([v9 isEqualToString:*MEMORY[0x29EDC72D8]] & 1) == 0)
    {
      v11 = [v7 inputString];
      v12 = *MEMORY[0x29EDC72E0];
      if (([v11 isEqualToString:*MEMORY[0x29EDC72E0]] & 1) == 0)
      {
        v13 = [v7 inputString];
        v14 = *MEMORY[0x29EDC72D0];
        if (([v13 isEqualToString:*MEMORY[0x29EDC72D0]] & 1) == 0)
        {
          v28 = v14;
          v30 = v13;
          v15 = [v7 keyboardInput];
          v16 = [v15 asInlineText];
          if (([v16 isEqualToString:v10] & 1) == 0)
          {
            v26 = v16;
            v27 = v15;
            v17 = [v7 keyboardInput];
            v18 = [v17 asInlineText];
            if (([v18 isEqualToString:v12] & 1) == 0)
            {
              v24 = [v7 keyboardInput];
              v25 = [v24 asInlineText];
              v29 = [v25 isEqualToString:v28];

              if ((v29 & 1) == 0)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            v15 = v27;
          }

          v13 = v30;
        }
      }
    }

LABEL_13:
    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:1];
    v19 = [v8 firstObject];
    v20 = [v19 candidate];
    [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:v20];

LABEL_14:
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v6];
    [(TIKeyboardInputManager_ja *)self updateState];
    v35[0] = MEMORY[0x29EDCA5F8];
    v35[1] = 3221225472;
    v35[2] = __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke;
    v35[3] = &unk_29F379288;
    v35[4] = self;
    v21 = MEMORY[0x29EDA3C60](v35);
    objc_initWeak(&location, self);
    v22 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke_2;
    v31[3] = &unk_29F3792B0;
    objc_copyWeak(&v33, &location);
    v32 = v21;
    v23 = v21;
    [(TIKeyboardInputManagerMecabra *)self addStickers:v22 withCompletionHandler:v31];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);

    goto LABEL_15;
  }

  [(TIKeyboardInputManager_ja *)self closeCandidateGenerationContextWithResults:0];
LABEL_15:
}

- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v6 candidateResultSetFromWordSearchCandidateResultSet:a3];
  if ([(TIKeyboardInputManager_ja *)self selectFirstCandidate])
  {
    [v4 setInitialSelectedIndex:0];
    [(TIKeyboardInputManager_ja *)self setSelectFirstCandidate:0];
  }

  return v4;
}

- (TICandidateSorter)candidateSorter
{
  v2 = self;
  objc_sync_enter(v2);
  candidateSorter = v2->_candidateSorter;
  if (!candidateSorter)
  {
    v4 = objc_alloc_init(TICandidateSorter);
    v5 = v2->_candidateSorter;
    v2->_candidateSorter = v4;

    candidateSorter = v2->_candidateSorter;
  }

  v6 = candidateSorter;
  objc_sync_exit(v2);

  return v6;
}

- (NSOperationQueue)operationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  operationQueue = v2->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBA088]);
    v5 = v2->_operationQueue;
    v2->_operationQueue = v4;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = v2->_operationQueue;
  }

  v6 = operationQueue;
  objc_sync_exit(v2);

  return v6;
}

+ (id)sortTitleFromSort:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_29F379390[a3];
  }
}

+ (unint64_t)sortFromSortTitle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UI-Sort-Common"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Yomi"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Radical"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Facemark"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Emoji"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sortingMethods
{
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];

  if (-[TIKeyboardInputManager_ja isEmojiFacemarkMode](self, "isEmojiFacemarkMode") || ![v4 count])
  {
    v9 = MEMORY[0x29EDB8D80];
    v6 = [objc_opt_class() sortTitleFromSort:0];
    v5 = [v9 arrayWithObject:v6];
  }

  else
  {
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    v6 = [(TIKeyboardInputManager_ja *)self inputString];
    for (i = 0; i != 5; ++i)
    {
      v8 = [objc_opt_class() sortTitleFromSort:kCandidateSorts[i]];
      if ([(TIKeyboardInputManager_ja *)self hasGroupedCandidatesFromCandidates:v4 usingSortingMethod:v8 inputString:v6])
      {
        [v5 addObject:v8];
      }
    }
  }

  return v5;
}

- (BOOL)alwaysShowExtensionCandidatesForSortingMethod:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() alwaysShowExtensionCandidatesForSortingMethod:v3];

  return v4;
}

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 inputString:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [objc_opt_class() sortFromSortTitle:v10];
    v13 = [(TIKeyboardInputManager_ja *)self candidateSorter];
    v14 = [v13 candidatesFromCandidates:v9 inputString:v11 sortedBy:v12 omittingEmoji:{-[TIKeyboardInputManager_ja shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self inputString:&v16];
    v14 = 0;
    v13 = v16;
  }

  return v14;
}

- (BOOL)hasGroupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 inputString:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [objc_opt_class() sortFromSortTitle:v10];
    v13 = [(TIKeyboardInputManager_ja *)self candidateSorter];
    v14 = [v13 hasCandidatesFromCandidates:v9 inputString:v11 sortedBy:v12 omittingEmoji:{-[TIKeyboardInputManager_ja shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    [TIKeyboardInputManager_ja hasGroupedCandidatesFromCandidates:a2 usingSortingMethod:self inputString:&v16];
    v14 = 0;
    v13 = v16;
  }

  return v14;
}

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self];
  }

  if ([MEMORY[0x29EDBA108] isMainThread])
  {
    v9 = [(TIKeyboardInputManager_ja *)self inputString];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(TIKeyboardInputManager_ja *)self groupedCandidatesFromCandidates:v7 usingSortingMethod:v8 inputString:v9];

  return v10;
}

- (void)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
      {
        [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self completion:?];
      }

      if ([MEMORY[0x29EDBA108] isMainThread])
      {
        v13 = [(TIKeyboardInputManager_ja *)self inputString];
      }

      else
      {
        v13 = 0;
      }

      v14 = [(TIKeyboardInputManager_ja *)self operationQueue];
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 3221225472;
      v16[2] = __91__TIKeyboardInputManager_ja_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke;
      v16[3] = &unk_29F379300;
      v16[4] = self;
      v17 = v9;
      v18 = v10;
      v19 = v13;
      v20 = v12;
      v15 = v13;
      [v14 addOperationWithBlock:v16];
    }
  }

  else
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self completion:?];
  }
}

- (id)indexTitlesForGroupTitles:(id)a3 sortingMethod:(id)a4
{
  v5 = a3;
  if ([a4 isEqual:@"UI-Sort-Yomi"])
  {
    v6 = &unk_2A2529600;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)suppressCompletionsForFieldEditor
{
  v2 = [(TIKeyboardInputManagerBase *)self inputMode];
  v3 = [v2 isSiriMode];

  return v3 ^ 1;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7040]);

  return v2;
}

- (unint64_t)initialSelectedIndex
{
  if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)defaultCandidate
{
  if ([(TIKeyboardInputManager_ja *)self inputCount])
  {
    v3 = [(TIKeyboardInputManager_ja *)self inputString];
    v4 = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (v4)
    {
      v5 = v4;
      if (v4 < [(TIKeyboardInputManager_ja *)self inputCount])
      {
        if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
        {
          v6 = [v3 substringToIndex:v5];

          v3 = v6;
        }
      }
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v8 = [v7 asSearchString];

      v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v10 = [v9 asSearchTextCursorIndex];

      v11 = [v8 substringToIndex:v10];
    }

    else
    {
      v11 = [(TIKeyboardInputManager_ja *)self rawInputString];
    }

    v12 = [(TIWordSearch *)self->_kbws candidateForDefault:v3 rawInputString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)remainingInputLengthOfString:(id)a3 index:(unint64_t)a4 candidate:(id)a5
{
  v7 = a3;
  v8 = [a5 input];
  v9 = [v8 length];

  if (v9)
  {
    if (!a4)
    {
      a4 = [v7 length];
    }

    if (a4 >= v9)
    {
      v10 = a4 - v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)remainingInputLengthOfCandidate:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
  {
    v5 = [(TIKeyboardInputManager_ja *)self inputIndex];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TIKeyboardInputManager_ja *)self inputString];
  v7 = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfString:v6 index:v5 candidate:v4];

  return v7;
}

- (void)preferencesDidChange:(id)a3
{
  v4 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v5 = [v4 BOOLForPreferenceKey:*MEMORY[0x29EDC7130]];
  v6 = [(TIKeyboardInputManager_ja *)self smartPunctuationController];
  [v6 setSmartQuotesEnabled:v5];

  v9 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v7 = [v9 BOOLForPreferenceKey:*MEMORY[0x29EDC7128]];
  v8 = [(TIKeyboardInputManager_ja *)self smartPunctuationController];
  [v8 setSmartDashesEnabled:v7];
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v8 handleAcceptedCandidate:a3 keyboardState:a4];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)getInputStringFromTopCandidate
{
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];
  v4 = [v3 firstObject];

  v5 = [v4 input];

  return v5;
}

- (void)lockAnyDrawInputResults
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [v3 hasDrawInput];

  if (v4)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
    v6 = [MEMORY[0x29EDB8DE8] array];
    v7 = [(TIKeyboardInputManager_ja *)self getInputStringFromTopCandidate];
    if ([v7 length])
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:{objc_msgSend(v7, "characterAtIndex:", v8)}];
        [v6 addObject:v9];

        ++v8;
      }

      while ([v7 length] > v8);
    }

    v10 = [objc_alloc(MEMORY[0x29EDC71F0]) initWithCommittedText:&stru_2A2525CC0 syllables:v6];
    v11 = [v10 syntheticInputWithCursorIndex:v5];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v13 = [v12 inputs];

    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v11 composeNew:*(*(&v21 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    v18 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v18 removeAllInputs];

    v19 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v19 composeNew:v11];
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (id)didAcceptCandidate:(id)a3
{
  v91 = *MEMORY[0x29EDCA608];
  v4 = a3;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  if ([(TIKeyboardInputManager_ja *)self usesLiveConversion])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!v5)
    {
      [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:0];
    }
  }

  [(TIKeyboardInputManager_ja *)self setFlickUsed:0];
  self->_remainingInputLength = 0;
  v6 = [(TIKeyboardInputManager_ja *)self rawInputString];
  v7 = [v6 length];
  v8 = [v4 input];
  v9 = [v8 length];

  v10 = [v4 candidate];
  if ([v10 length])
  {
    v11 = [(TIKeyboardInputManager_ja *)self isTypologyEnabled];

    if (v11)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:v4 partial:v7 > v9];
    }
  }

  else
  {
  }

  if (v7 > v9)
  {
    [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
  }

  v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v4];
  v13 = [v4 proactiveTrigger];

  if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
  {
    [(TIWordSearch *)self->_kbws performAccept:v12 isPartial:0];
    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
LABEL_12:
    v14 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && !v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = [v4 candidate];
      if ([v84 length])
      {
        v15 = [(TIKeyboardInputManager_ja *)self keyboardState];
        v16 = [v15 documentIdentifier];
        if (v16)
        {
          v17 = v16;
          v18 = [(TIKeyboardInputManager_ja *)self keyboardState];
          v19 = [v18 inputForMarkedText];
          v20 = [v19 length];

          if (v20)
          {
            v21 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
            v22 = [v21 candidates];

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            obj = v22;
            v23 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v87;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v87 != v25)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v27 = *(*(&v86 + 1) + 8 * i);
                  v28 = [v27 candidate];
                  if ([v84 isEqualToString:v28])
                  {
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      v71 = v7 > v9;
                      v72 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v27];
                      [(TIKeyboardInputManager_ja *)self addRecentlyCommittedCandidatesForReanalysis:v72];
                      [(TIWordSearch *)self->_kbws performAccept:v72 isPartial:v71];
                      [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v27 isPartial:v71];

                      goto LABEL_69;
                    }
                  }

                  else
                  {
                  }
                }

                v24 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
              }

              while (v24);
            }
          }
        }

        else
        {
        }

        [(TIWordSearch *)self->_kbws performAccept:0 isPartial:0];
      }

LABEL_69:
    }

    goto LABEL_12;
  }

  [(TIKeyboardInputManager_ja *)self addRecentlyCommittedCandidatesForReanalysis:v12];
  self->_remainingInputLength = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfCandidate:v4];
  [(TIWordSearch *)self->_kbws performAccept:v12 isPartial:v7 > v9];
  if (v13)
  {
    v14 = [v4 candidate];
  }

  else
  {
    v14 = 0;
  }

  [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v7 > v9];
LABEL_35:
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_64;
  }

  v30 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:v4];
  v31 = [MEMORY[0x29EDBA050] string];
  v32 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v33 = [v32 inputs];
  v34 = [v33 count];

  if (v34)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v38 = [v37 inputs];
      v39 = [v38 objectAtIndexedSubscript:v35];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = [v39 convertedInput];
        [v31 appendString:v40];

        v41 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [v41 removeInputAtIndex:v35];

        --v36;
      }

      v35 = ++v36;
      v42 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v43 = [v42 inputs];
      v44 = [v43 count];
    }

    while (v44 > v36);
  }

  v45 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v46 = [v45 inputs];
  v47 = 0x29EDC7000uLL;
  if ([v46 count] <= 1)
  {
    goto LABEL_46;
  }

  v48 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v49 = [v48 inputs];
  v50 = [v49 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v47 = 0x29EDC7000uLL;
    goto LABEL_46;
  }

  [(TIKeyboardInputManagerMecabra *)self composingInput];
  v52 = v51 = v14;
  v85 = [v52 hasDrawInput];

  v14 = v51;
  v47 = 0x29EDC7000;
  if ((v85 & 1) == 0)
  {
    v45 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v46 = [v45 inputs];
    v53 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [v46 count]);
LABEL_46:
  }

  [(TIKeyboardInputManager_ja *)self lockAnyDrawInputResults];
  v54 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v55 = [v54 inputs];
  if ([v55 count])
  {
    while (1)
    {
      v56 = [v31 length];

      if (!v56)
      {
        goto LABEL_63;
      }

      v57 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v58 = [v57 inputs];
      v59 = [v58 objectAtIndexedSubscript:0];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v60 = v59;
      v61 = [v60 characters];
      if (![v61 length])
      {
        goto LABEL_58;
      }

      v62 = [v60 characters];
      v63 = [v62 characterAtIndex:0];
      v64 = [v31 characterAtIndex:0];

      v65 = v63 == v64;
      v47 = 0x29EDC7000;
      if (!v65)
      {
        v59 = v60;
        goto LABEL_62;
      }

LABEL_59:
      v68 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v68 removeInputAtIndex:0];

      v54 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v55 = [v54 inputs];
      if (![v55 count])
      {
        goto LABEL_60;
      }
    }

    v66 = *(v47 + 496);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_62;
    }

    v54 = v59;
    v61 = [v54 text];
    if ([v61 length])
    {
      if (([v31 hasPrefix:v61] & 1) == 0)
      {
        v67 = [v31 length];
        if (v67 < [v61 length])
        {
          if (([v61 hasPrefix:v31] & 1) != 0 || (v73 = objc_msgSend(v61, "length"), v73 > objc_msgSend(v31, "length")))
          {
            v74 = [v54 syllables];
            v75 = [v74 count];
            v76 = [v31 length];

            if (v75 <= v76)
            {
              v55 = v54;
            }

            else
            {
              v77 = [v54 syllables];
              v78 = [v31 length];
              v79 = [v54 syllables];
              v80 = [v77 subarrayWithRange:{v78, objc_msgSend(v79, "count") - objc_msgSend(v31, "length")}];

              v81 = [v54 committedText];
              v55 = [v54 syntheticInputWithCommittedText:v81 syllables:v80];

              v82 = [(TIKeyboardInputManagerMecabra *)self composingInput];
              [v82 replaceInputAtIndex:0 with:v55];

              v31 = 0;
            }
          }

          else
          {
            v55 = v54;
          }

          goto LABEL_60;
        }
      }
    }

    [v31 deleteCharactersInRange:{0, objc_msgSend(v61, "length")}];
LABEL_58:

    goto LABEL_59;
  }

LABEL_60:

  v59 = v54;
LABEL_62:

LABEL_63:
LABEL_64:

  v69 = *MEMORY[0x29EDCA608];

  return v14;
}

- (void)clearDynamicDictionary
{
  [(TIWordSearch *)self->_kbws clearLearningDictionary];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManager_ja *)&v3 clearDynamicDictionary];
}

- (void)addRecentlyCommittedCandidatesForReanalysis:(void *)a3
{
  if (a3)
  {
    v5 = MecabraCandidateGetSurface();
    v6 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __73__TIKeyboardInputManager_ja_addRecentlyCommittedCandidatesForReanalysis___block_invoke;
    v14[3] = &unk_29F379328;
    v7 = v5;
    v15 = v7;
    v8 = [v6 indexOfObjectPassingTest:v14];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
      [v9 removeObjectAtIndex:v8];
    }

    v10 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    [v10 insertObject:a3 atIndex:0];

    v11 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    v12 = [v11 count];

    if (v12 >= 0x1F)
    {
      v13 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
      [v13 removeLastObject];
    }
  }
}

- (BOOL)isLiveConversion
{
  if ([(TIKeyboardInputManager_ja *)self liveConversionEnabled])
  {
    v3 = [(TIKeyboardInputManager_ja *)self inputString];
    v4 = [v3 length];
    if (v4 == [(TIKeyboardInputManager_ja *)self inputIndex])
    {
      v5 = [(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection]^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)liveConversionEnabled
{
  if ([(TIKeyboardInputManager_ja *)self liveConversionForceEnabled])
  {
    return 1;
  }

  if ([(TIKeyboardInputManager_ja *)self liveConversionForceDisabled])
  {
    return 0;
  }

  v4 = [(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode];
  v5 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = v5;
  v7 = MEMORY[0x29EDC7110];
  if (!v4)
  {
    v7 = MEMORY[0x29EDC7138];
  }

  v8 = [v5 BOOLForPreferenceKey:*v7];

  return v8;
}

- (BOOL)supportsCandidateGeneration
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = v2 == 0;

  return v3;
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 inputStringForHiraganaMode];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v7 = [v6 rawInputString];
  }

  v9 = v7;

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x29EDC7090]);
    [v10 setString:v9];
    v11 = objc_alloc(MEMORY[0x29EDC7228]);
    v12 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v13 = [v11 initWithKeyboardState:v12];

    [(TIKeyboardInputManager_ja *)self clearInput];
    TIInputManager::sync_with_input_from_UI(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    [(TIKeyboardInputManager_ja *)self addInput:v10 withContext:v13];
  }

LABEL_7:
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v14 commitComposition];
}

- (BOOL)shouldInvokeLiveConversion:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (v5 || ![(TIKeyboardInputManager_ja *)self isLiveConversion])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v6 = [v4 string];
    if ([v6 length])
    {
      v7 = [v4 string];
      if ([v7 _isSpace])
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v10 = [v4 string];
        if ([v10 isEqualToString:*MEMORY[0x29EDC72D8]])
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          v11 = [v4 string];
          if ([v11 isEqualToString:*MEMORY[0x29EDC72E0]])
          {
            LOBYTE(v8) = 0;
          }

          else
          {
            v12 = [v4 string];
            if ([v12 isEqualToString:*MEMORY[0x29EDC72D0]])
            {
              LOBYTE(v8) = 0;
            }

            else
            {
              v8 = ![(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  [v11 syncToKeyboardState:v10];

  v12.receiver = self;
  v12.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v12 generateCandidatesWithKeyboardState:v10 candidateRange:location candidateHandler:length, v9];
}

- (void)mecabraLearningValidator:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  [(TIKeyboardInputManagerMecabra *)self storeLanguageModelDynamicDataIncludingCache];
  [(TIKeyboardInputManagerBase *)self clearHumanReadableTrace];
  v5 = [(TIKeyboardInputManagerBase *)self inputManagerLogger];
  v6 = [v5 writeToFile];

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v6 objectAtIndexedSubscript:1];
    *buf = 136315906;
    v17 = "[TIKeyboardInputManager_ja mecabraLearningValidator:]";
    v18 = 2080;
    v19 = "[TIKeyboardInputManager_ja mecabraLearningValidator:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "%s  [%s]Wrote typology log: %@, typology trace log: %@", buf, 0x2Au);
  }

  v9 = [objc_alloc(MEMORY[0x29EDBCCF0]) initWithBundleIdentifier:@"com.apple.keyboard.TypoTracker"];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke;
  v13[3] = &unk_29F379370;
  v14 = v4;
  v15 = v9;
  v10 = v9;
  v11 = v4;
  [v10 requestAuthorizationWithOptions:7 completionHandler:v13];

  v12 = *MEMORY[0x29EDCA608];
}

- (uint64_t)groupedCandidatesFromCandidates:(uint64_t)a1 usingSortingMethod:(uint64_t)a2 inputString:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x29EDB9F28] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja.mm" lineNumber:897 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

- (uint64_t)hasGroupedCandidatesFromCandidates:(uint64_t)a1 usingSortingMethod:(uint64_t)a2 inputString:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x29EDB9F28] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja.mm" lineNumber:909 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

- (void)groupedCandidatesFromCandidates:(uint64_t)a1 usingSortingMethod:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja.mm" lineNumber:920 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
}

- (void)groupedCandidatesFromCandidates:(uint64_t)a1 usingSortingMethod:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja.mm" lineNumber:936 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
}

- (void)groupedCandidatesFromCandidates:(uint64_t)a1 usingSortingMethod:(uint64_t)a2 completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja.mm" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

@end