@interface TIKeyboardInputManager_ja
+ (id)sortTitleFromSort:(unint64_t)sort;
+ (unint64_t)sortFromSortTitle:(id)title;
+ (void)addFullwidthAnnotationToResultSet:(id)set;
- (BOOL)alwaysShowExtensionCandidatesForSortingMethod:(id)method;
- (BOOL)hasGroupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method inputString:(id)string;
- (BOOL)isLiveConversion;
- (BOOL)liveConversionEnabled;
- (BOOL)makeCandidatesWithWordSearch:(id)search input:(id)input predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode;
- (BOOL)shouldInvokeLiveConversion:(id)conversion;
- (BOOL)shouldOutputFullwidthSpace;
- (BOOL)shouldOutputFullwidthSpaceForKanaABC123;
- (BOOL)supportsCandidateGeneration;
- (BOOL)suppressCompletionsForFieldEditor;
- (BOOL)usesLiveConversion;
- (NSOperationQueue)operationQueue;
- (TICandidateSorter)candidateSorter;
- (TIKeyboardInputManager_ja)initWithConfig:(id)config keyboardState:(id)state;
- (id)_convertStringWithBoundary:(unint64_t)boundary;
- (id)_inputString;
- (id)candidateResultSet;
- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers;
- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)set;
- (id)defaultCandidate;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)geometryModelData;
- (id)getInputStringFromTopCandidate;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method inputString:(id)string;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)indexTitlesForGroupTitles:(id)titles sortingMethod:(id)method;
- (id)inputString;
- (id)keyEventMap;
- (id)keyboardBehaviors;
- (id)rawInputString;
- (id)remainingInput;
- (id)sortingMethods;
- (unint64_t)actualInputIndex;
- (unint64_t)initialSelectedIndex;
- (unint64_t)remainingInputLengthOfCandidate:(id)candidate;
- (unint64_t)remainingInputLengthOfString:(id)string index:(unint64_t)index candidate:(id)candidate;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInput:(id)input point:(CGPoint)point;
- (void)_deleteFromInput;
- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)addRecentlyCommittedCandidatesForReanalysis:(void *)reanalysis;
- (void)clearDynamicDictionary;
- (void)clearInput;
- (void)commitComposition;
- (void)dealloc;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method completion:(id)completion;
- (void)initImplementation;
- (void)inputLocationChanged;
- (void)loadFavoniusTypingModel;
- (void)lockAnyDrawInputResults;
- (void)mecabraLearningValidator:(id)validator;
- (void)preferencesDidChange:(id)change;
- (void)resume;
- (void)setInput:(id)input;
- (void)setIsEmojiFacemarkMode:(BOOL)mode;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)suspend;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_ja

- (TIKeyboardInputManager_ja)initWithConfig:(id)config keyboardState:(id)state
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v11 initWithConfig:config keyboardState:state];
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
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_preferencesDidChange_ name:*MEMORY[0x29EDC7120] object:0];

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
  keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    keyEventMap = objc_alloc_init(MEMORY[0x29EDC6FE8]);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManager_ja;
    keyEventMap = [(TIKeyboardInputManager_ja *)&v7 keyEventMap];
  }

  return keyEventMap;
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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (void)resume
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel_mecabraLearningValidator_ name:*MEMORY[0x29EDC9710] object:0];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 resume];
}

- (void)suspend
{
  [(TIWordSearch *)self->_kbws resetPreviousWord];
  [(TIWordSearch *)self->_kbws clearCache];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC9710] object:0];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v4 suspend];
}

- (BOOL)usesLiveConversion
{
  liveConversionEnabled = [(TIKeyboardInputManager_ja *)self liveConversionEnabled];
  if (liveConversionEnabled)
  {

    LOBYTE(liveConversionEnabled) = [(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode];
  }

  return liveConversionEnabled;
}

- (void)setIsEmojiFacemarkMode:(BOOL)mode
{
  if (!mode)
  {
    [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:0];
  }

  self->_isEmojiFacemarkMode = mode;
}

- (void)syncToLayoutState:(id)state
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja;
  stateCopy = state;
  [(TIKeyboardInputManager_ja *)&v6 syncToLayoutState:stateCopy];
  isKanaPlane = [stateCopy isKanaPlane];

  [(TIKeyboardInputManager_ja *)self setIsKanaPlane:isKanaPlane];
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (v6)
  {
    goto LABEL_33;
  }

  string = [inputCopy string];
  if ([string isEqualToString:@"\n"])
  {
    goto LABEL_5;
  }

  string2 = [inputCopy string];
  if ([string2 isEqualToString:@" "])
  {

LABEL_5:
LABEL_6:
    [(TIWordSearch *)self->_kbws resetPreviousWord];
    goto LABEL_7;
  }

  string3 = [inputCopy string];
  v27 = [string3 isEqualToString:@"　"];

  if (v27)
  {
    goto LABEL_6;
  }

LABEL_7:
  string4 = [inputCopy string];
  v10 = [string4 isEqualToString:@"\x1B"];

  if (v10)
  {
    [(TIKeyboardInputManager_ja *)self clearInput];
    v6 = 0;
    goto LABEL_33;
  }

  if (![(TIKeyboardInputManager_ja *)self shouldInvokeLiveConversion:inputCopy])
  {
    goto LABEL_13;
  }

  liveConversionTextInputManager = [(TIKeyboardInputManager_ja *)self liveConversionTextInputManager];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:liveConversionTextInputManager];

  if ([(TIKeyboardInputManager_ja *)self inputCount])
  {
    v12 = objc_alloc_init(MEMORY[0x29EDC7090]);
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    [v12 setString:rawInputString];

    v14 = objc_alloc(MEMORY[0x29EDC7228]);
    keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
    v16 = [v14 initWithKeyboardState:keyboardState];

    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 addInput:v12 withContext:v16];
  }

  composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager3 handleKeyboardInput:inputCopy];

  if (!v6)
  {
LABEL_13:
    keyboardState2 = [(TIKeyboardInputManager_ja *)self keyboardState];
    hardwareKeyboardMode = [keyboardState2 hardwareKeyboardMode];

    if (hardwareKeyboardMode)
    {
      goto LABEL_32;
    }

    keyboardState3 = [(TIKeyboardInputManager_ja *)self keyboardState];
    layoutState = [keyboardState3 layoutState];
    userInterfaceIdiom = [layoutState userInterfaceIdiom];

    string5 = [inputCopy string];
    v25 = string5;
    if (userInterfaceIdiom == 1)
    {
      if ([string5 isEqualToString:@" "])
      {

        goto LABEL_24;
      }

      string6 = [inputCopy string];
      v31 = [string6 isEqualToString:@"　"];

      if (v31)
      {
LABEL_24:
        if (![(TIKeyboardInputManager_ja *)self isKanaPlane])
        {
          keyboardState4 = [(TIKeyboardInputManager_ja *)self keyboardState];
          shiftState = [keyboardState4 shiftState];

          if (shiftState != 1)
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
      v6 = [(TIKeyboardInputManagerMecabra *)&v36 handleKeyboardInput:inputCopy];
      goto LABEL_33;
    }

    v28 = [string5 isEqualToString:@"　"];

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
        [inputCopy setString:v29];
        goto LABEL_32;
      }
    }

    else if (![(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpaceForKanaABC123])
    {
      goto LABEL_22;
    }

    string7 = [inputCopy string];
    [inputCopy setString:string7];

    goto LABEL_32;
  }

LABEL_33:

  return v6;
}

- (void)_addInput:(id)input point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputCopy = input;
  v11 = 0;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja;
  v8 = [(TIKeyboardInputManagerMecabra *)&v10 addInput:inputCopy flags:0 point:&v11 firstDelete:x, y];
  inputCount = [(TIKeyboardInputManager_ja *)self inputCount];
  if (inputCount == [(TIKeyboardInputManager_ja *)self inputIndex])
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

- (void)setInput:(id)input
{
  inputCopy = input;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  self->_isPhraseBoundarySet = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManager_mul *)&v5 setInput:inputCopy];
}

- (id)deleteFromInput:(unint64_t *)input
{
  if ([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManager_ja;
    v5 = [(TIKeyboardInputManager_ja *)&v12 deleteFromInput:input];
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
      keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
      documentState = [keyboardState documentState];
      [documentState selectedRangeInMarkedText];
      v9 = v8;

      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (input)
      {
        *input = v10;
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
    inputString = [(TIKeyboardInputManager_ja *)&v12 inputString];
    goto LABEL_9;
  }

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [composingInput hasKindOf:objc_opt_class()];

  if (v4)
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    firstObject = [candidates firstObject];

    if (!firstObject)
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputString = [composingInput2 asSearchString];

      goto LABEL_8;
    }

    input = [firstObject input];
  }

  else
  {
    firstObject = [(TIKeyboardInputManagerMecabra *)self composingInput];
    input = [firstObject asSearchString];
  }

  inputString = input;
LABEL_8:

LABEL_9:

  return inputString;
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
    _inputString = [(TIKeyboardInputManager_ja *)self _inputString];
    v3 = [_inputString length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  alternateDisplayString = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  v4 = alternateDisplayString;
  if (!alternateDisplayString || (v5 = [alternateDisplayString length]) == 0)
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManager_ja;
    LODWORD(v5) = [(TIKeyboardInputManager_ja *)&v7 inputIndex];
  }

  return v5;
}

- (id)_inputString
{
  alternateDisplayString = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  if ([alternateDisplayString length])
  {
    rawInputString = alternateDisplayString;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
  }

  v5 = rawInputString;

  return v5;
}

- (id)inputString
{
  if ([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja;
    inputString = [(TIKeyboardInputManager_ja *)&v5 inputString];
  }

  else
  {
    inputString = [(TIKeyboardInputManager_ja *)self _inputString];
  }

  return inputString;
}

- (id)_convertStringWithBoundary:(unint64_t)boundary
{
  _convertString = [(TIKeyboardInputManager_ja *)self _convertString];
  v5 = _convertString;
  if (boundary && [_convertString length] > boundary)
  {
    v6 = [v5 substringToIndex:boundary];

    v5 = v6;
  }

  return v5;
}

- (BOOL)shouldOutputFullwidthSpace
{
  keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    return 0;
  }

  keyboardState2 = [(TIKeyboardInputManager_ja *)self keyboardState];
  shouldOutputFullwidthSpace = [keyboardState2 shouldOutputFullwidthSpace];

  keyboardState3 = [(TIKeyboardInputManager_ja *)self keyboardState];
  layoutState = [keyboardState3 layoutState];
  if ([layoutState isAlphabeticPlane])
  {
    keyboardState4 = [(TIKeyboardInputManager_ja *)self keyboardState];
    v10 = [keyboardState4 shiftState] == 1;

    return shouldOutputFullwidthSpace ^ v10;
  }

  else
  {
  }

  return shouldOutputFullwidthSpace;
}

- (BOOL)shouldOutputFullwidthSpaceForKanaABC123
{
  if (![(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace])
  {
    return 0;
  }

  keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  _lastGrapheme = [contextBeforeInput _lastGrapheme];

  if (![_lastGrapheme length])
  {
    goto LABEL_5;
  }

  if ([_lastGrapheme _containsFullwidthLettersAndNumbersOnly])
  {
    v7 = [_lastGrapheme _containsCJScripts] ^ 1;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  v8 = [_lastGrapheme isEqualToString:@"　"];

  result = 1;
  if ((v7 & 1) == 0 && (v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  boundaryCopy = boundary;
  self->_isPhraseBoundarySet = [(TIKeyboardInputManager_ja *)self inputCount]!= boundary;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
  documentState = [keyboardState documentState];
  [documentState selectedRangeInMarkedText];
  v8 = v7;

  if (v8)
  {
    v9 = (v8 + boundaryCopy);
    inputString = [(TIKeyboardInputManager_ja *)self inputString];
    v11 = [inputString length];

    if (v9 <= v11)
    {
      boundaryCopy = v9;
    }
  }

  [(TIKeyboardInputManager_ja *)self setInputIndex:boundaryCopy];
  [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:self->_isPhraseBoundarySet];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v12 = [(TIKeyboardInputManagerMecabra *)self _convertInputsToSyntheticInputWithOffset:boundaryCopy];
    [(TIKeyboardInputManagerMecabra *)self _replaceComposingInputWithSyntheticInput:v12 internalIndex:boundaryCopy];
  }
}

- (unint64_t)actualInputIndex
{
  inputString = [(TIKeyboardInputManager_ja *)self inputString];
  inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  if (inputIndex && (v5 = inputIndex, [(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex]))
  {
    v6 = v5;
  }

  else
  {
    v6 = [inputString length];
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
  inputString = [(TIKeyboardInputManager_ja *)self inputString];
  actualInputIndex = [(TIKeyboardInputManager_ja *)self actualInputIndex];
  if (actualInputIndex >= [inputString length])
  {
    v5 = 0;
  }

  else
  {
    v5 = [inputString substringFromIndex:actualInputIndex];
  }

  return v5;
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    dummySet = 0;
  }

  else
  {
    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asSearchString = [composingInput asSearchString];
    }

    else
    {
      asSearchString = [(TIKeyboardInputManager_ja *)self _convertString];
    }

    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
    documentState = [keyboardState documentState];
    selectedText = [documentState selectedText];

    v10 = [selectedText length];
    if ((v10 - 1) >= *MEMORY[0x29EDC7298])
    {
      [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
      v14 = 0;
    }

    else
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
      v12 = [selectedText rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];

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
        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v14 = [composingInput3 totalDrawSamples] == 0;
      }
    }

    if ([asSearchString isEqualToString:*MEMORY[0x29EDC72D8]] & 1) != 0 || (objc_msgSend(asSearchString, "isEqualToString:", *MEMORY[0x29EDC72E0]))
    {
      v16 = 1;
    }

    else
    {
      v16 = [asSearchString isEqualToString:*MEMORY[0x29EDC72D0]];
    }

    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:v16];
    if (v14)
    {
      keyboardState2 = [(TIKeyboardInputManager_ja *)self keyboardState];
      documentState2 = [keyboardState2 documentState];
      selectedText2 = [documentState2 selectedText];

      if ([selectedText2 _containsKatakanaOrKanji])
      {
        recentlyCommittedCandidatesForReanalysis = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
        v21 = [(TIKeyboardInputManagerMecabra *)self adaptationContextReadingForReanalysisString:selectedText2 fromRecentlyCommittedCandidates:recentlyCommittedCandidatesForReanalysis];

        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = [selectedText2 _stringByTranscribingFromLanguage:@"ja_JP"];
        }

        v24 = v22;

        selectedText2 = v24;
      }

      if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
      {
        v25 = objc_alloc(MEMORY[0x29EDC71E0]);
        composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        sourceKeyboardState = [composingInput4 sourceKeyboardState];
        v28 = [v25 initWithSourceKeyboardState:sourceKeyboardState];

        v29 = objc_alloc(MEMORY[0x29EDC71F0]);
        v30 = [v29 initWithCommittedText:selectedText2 syllables:MEMORY[0x29EDB8E90]];
        [v28 composeNew:v30];

        v23 = 1;
        composingInput2 = v28;
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
        selectedText2 = asSearchString;
      }

      else
      {
        selectedText2 = [(TIKeyboardInputManager_ja *)self _convertStringWithBoundary:[(TIKeyboardInputManager_ja *)self inputIndex]];
      }

      v23 = ([(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode]& 1) == 0 && !self->_isPhraseBoundarySet;
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {

      selectedText2 = 0;
    }

    v31 = [(TIKeyboardInputManager_ja *)self makeCandidatesWithWordSearch:selectedText2 input:composingInput2 predictionEnabled:v23 reanalysisMode:v14];
    dummySet = [MEMORY[0x29EDC7080] dummySet];
    if (v31)
    {
      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
      [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:wordSearchCandidateResultSet withInput:rawInputString];

      wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v35 = [(TIKeyboardInputManager_ja *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet2];

      if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
      {
        wordSearchCandidateResultSet3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        candidates = [wordSearchCandidateResultSet3 candidates];
        firstObject = [candidates firstObject];
        candidate = [firstObject candidate];
        [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:candidate];
      }

      dummySet = v35;
    }

    else if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
    {
      [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:*MEMORY[0x29EDC72D0]];
    }
  }

  return dummySet;
}

- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  candidatesCopy = candidates;
  triggersCopy = triggers;
  v8 = candidatesCopy;
  _arrayByFilteringCandidatesForNonExtendedView = v8;
  if ([(TIKeyboardInputManager_ja *)self shouldOmitEmojiCandidates])
  {
    v10 = [v8 _arrayByFilteringEmojiCandidates:0];
    _arrayByFilteringCandidatesForNonExtendedView = [v10 _arrayByFilteringCandidatesForNonExtendedView];
  }

  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_ja;
  v11 = [(TIKeyboardInputManager_ja *)&v13 candidateResultSetFromCandidates:_arrayByFilteringCandidatesForNonExtendedView proactiveTriggers:triggersCopy];
  [TIKeyboardInputManager_ja addFullwidthAnnotationToResultSet:v11];

  return v11;
}

+ (void)addFullwidthAnnotationToResultSet:(id)set
{
  v35 = *MEMORY[0x29EDCA608];
  setCopy = set;
  v4 = objc_alloc(MEMORY[0x29EDB8E20]);
  candidates = [setCopy candidates];
  v6 = [v4 initWithCapacity:{objc_msgSend(candidates, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = setCopy;
  candidates2 = [setCopy candidates];
  v8 = [candidates2 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(candidates2);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            candidate = [v12 candidate];
            [v6 addObject:candidate];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [candidates2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  candidates3 = [v24 candidates];
  v15 = [candidates3 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(candidates3);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = v19;
            candidate2 = [v20 candidate];
            if ([candidate2 _containsFullwidthLettersAndSymbolsOnly])
            {
              _stringByConvertingFromFullWidthToHalfWidth = [candidate2 _stringByConvertingFromFullWidthToHalfWidth];
              if (([candidate2 isEqualToString:_stringByConvertingFromFullWidthToHalfWidth] & 1) == 0 && objc_msgSend(v6, "containsObject:", _stringByConvertingFromFullWidthToHalfWidth))
              {
                [v20 setAnnotationText:@"UI-Fullwidth"];
              }
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [candidates3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x29EDCA608];
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
  {
    geometryModelData = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja;
    geometryModelData = [(TIKeyboardInputManagerMecabra *)&v5 geometryModelData];
  }

  return geometryModelData;
}

- (BOOL)makeCandidatesWithWordSearch:(id)search input:(id)input predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode
{
  enabledCopy = enabled;
  searchCopy = search;
  inputCopy = input;
  v10 = *MEMORY[0x29EDC72D0];
  v11 = [searchCopy isEqualToString:*MEMORY[0x29EDC72D0]];
  v12 = MEMORY[0x29EDC72E0];
  if (v11)
  {
    v13 = *MEMORY[0x29EDC72E0];

    searchCopy = v13;
  }

  asSearchString = [inputCopy asSearchString];
  v15 = [asSearchString isEqualToString:v10];

  v33 = searchCopy;
  if (v15)
  {
    _asTypeInputs = [*v12 _asTypeInputs];

    v30 = _asTypeInputs;
  }

  else
  {
    v30 = inputCopy;
  }

  keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
  -[TIWordSearch setSupportsPairedPunctutationInput:](self->_kbws, "setSupportsPairedPunctutationInput:", [keyboardState hardwareKeyboardMode] ^ 1);

  geometryModelData = [(TIKeyboardInputManager_ja *)self geometryModelData];
  v19 = [TIWordSearchJapaneseOperationGetCandidates alloc];
  kbws = self->_kbws;
  v21 = [(TIKeyboardInputManager_ja *)self contextBeforeWithDesiredLength:20];
  flickUsed = [(TIKeyboardInputManager_ja *)self flickUsed];
  LOBYTE(keyboardState) = self->_isPhraseBoundarySet;
  keyboardState2 = [(TIKeyboardInputManager_ja *)self keyboardState];
  BYTE2(v29) = [keyboardState2 hardwareKeyboardMode];
  BYTE1(v29) = keyboardState;
  LOBYTE(v29) = flickUsed;
  LOBYTE(v28) = mode;
  v24 = [TIWordSearchJapaneseOperationGetCandidates initWithWordSearch:v19 inputString:"initWithWordSearch:inputString:keyboardInput:contextString:segmentBreakIndex:predictionEnabled:reanalysisMode:autocapitalizationType:target:action:geometryModelData:flickUsed:phraseBoundarySet:hardwareKeyboardMode:logger:" keyboardInput:kbws contextString:searchCopy segmentBreakIndex:v30 predictionEnabled:v21 reanalysisMode:0x7FFFFFFFFFFFFFFFLL autocapitalizationType:enabledCopy target:v28 action:0 geometryModelData:self flickUsed:sel__notifyUpdateCandidates_forOperation_ phraseBoundarySet:geometryModelData hardwareKeyboardMode:v29 logger:0];

  [(TIWordSearchJapaneseOperationGetCandidates *)v24 setAllowIncompleteRomaji:[(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode]];
  [(TIWordSearchOperationGetCandidates *)v24 checkForCachedResults];
  results = [(TIWordSearchJapaneseOperationGetCandidates *)v24 results];

  if (results)
  {
    results2 = [(TIWordSearchJapaneseOperationGetCandidates *)v24 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:results2];
  }

  else
  {
    [(TIWordSearch *)self->_kbws performOperationAsync:v24];
  }

  return results != 0;
}

- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  candidatesCopy = candidates;
  operationCopy = operation;
  if (![(TIKeyboardInputManager_ja *)self shouldSkipCandidateSelection])
  {
    candidates = [candidatesCopy candidates];
    inputString = [operationCopy inputString];
    v10 = *MEMORY[0x29EDC72D8];
    if (([inputString isEqualToString:*MEMORY[0x29EDC72D8]] & 1) == 0)
    {
      inputString2 = [operationCopy inputString];
      v12 = *MEMORY[0x29EDC72E0];
      if (([inputString2 isEqualToString:*MEMORY[0x29EDC72E0]] & 1) == 0)
      {
        inputString3 = [operationCopy inputString];
        v14 = *MEMORY[0x29EDC72D0];
        if (([inputString3 isEqualToString:*MEMORY[0x29EDC72D0]] & 1) == 0)
        {
          v28 = v14;
          v30 = inputString3;
          keyboardInput = [operationCopy keyboardInput];
          asInlineText = [keyboardInput asInlineText];
          if (([asInlineText isEqualToString:v10] & 1) == 0)
          {
            v26 = asInlineText;
            v27 = keyboardInput;
            keyboardInput2 = [operationCopy keyboardInput];
            asInlineText2 = [keyboardInput2 asInlineText];
            if (([asInlineText2 isEqualToString:v12] & 1) == 0)
            {
              keyboardInput3 = [operationCopy keyboardInput];
              asInlineText3 = [keyboardInput3 asInlineText];
              v29 = [asInlineText3 isEqualToString:v28];

              if ((v29 & 1) == 0)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            keyboardInput = v27;
          }

          inputString3 = v30;
        }
      }
    }

LABEL_13:
    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:1];
    firstObject = [candidates firstObject];
    candidate = [firstObject candidate];
    [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:candidate];

LABEL_14:
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidatesCopy];
    [(TIKeyboardInputManager_ja *)self updateState];
    v35[0] = MEMORY[0x29EDCA5F8];
    v35[1] = 3221225472;
    v35[2] = __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke;
    v35[3] = &unk_29F379288;
    v35[4] = self;
    v21 = MEMORY[0x29EDA3C60](v35);
    objc_initWeak(&location, self);
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke_2;
    v31[3] = &unk_29F3792B0;
    objc_copyWeak(&v33, &location);
    v32 = v21;
    v23 = v21;
    [(TIKeyboardInputManagerMecabra *)self addStickers:wordSearchCandidateResultSet withCompletionHandler:v31];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);

    goto LABEL_15;
  }

  [(TIKeyboardInputManager_ja *)self closeCandidateGenerationContextWithResults:0];
LABEL_15:
}

- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)set
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v6 candidateResultSetFromWordSearchCandidateResultSet:set];
  if ([(TIKeyboardInputManager_ja *)self selectFirstCandidate])
  {
    [v4 setInitialSelectedIndex:0];
    [(TIKeyboardInputManager_ja *)self setSelectFirstCandidate:0];
  }

  return v4;
}

- (TICandidateSorter)candidateSorter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  candidateSorter = selfCopy->_candidateSorter;
  if (!candidateSorter)
  {
    v4 = objc_alloc_init(TICandidateSorter);
    v5 = selfCopy->_candidateSorter;
    selfCopy->_candidateSorter = v4;

    candidateSorter = selfCopy->_candidateSorter;
  }

  v6 = candidateSorter;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSOperationQueue)operationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  operationQueue = selfCopy->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBA088]);
    v5 = selfCopy->_operationQueue;
    selfCopy->_operationQueue = v4;

    [(NSOperationQueue *)selfCopy->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = selfCopy->_operationQueue;
  }

  v6 = operationQueue;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)sortTitleFromSort:(unint64_t)sort
{
  if (sort > 4)
  {
    return 0;
  }

  else
  {
    return off_29F379390[sort];
  }
}

+ (unint64_t)sortFromSortTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy isEqualToString:@"UI-Sort-Common"])
  {
    v4 = 0;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Yomi"])
  {
    v4 = 2;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Radical"])
  {
    v4 = 1;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Facemark"])
  {
    v4 = 3;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Emoji"])
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
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if (-[TIKeyboardInputManager_ja isEmojiFacemarkMode](self, "isEmojiFacemarkMode") || ![candidates count])
  {
    v9 = MEMORY[0x29EDB8D80];
    inputString = [objc_opt_class() sortTitleFromSort:0];
    v5 = [v9 arrayWithObject:inputString];
  }

  else
  {
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    inputString = [(TIKeyboardInputManager_ja *)self inputString];
    for (i = 0; i != 5; ++i)
    {
      v8 = [objc_opt_class() sortTitleFromSort:kCandidateSorts[i]];
      if ([(TIKeyboardInputManager_ja *)self hasGroupedCandidatesFromCandidates:candidates usingSortingMethod:v8 inputString:inputString])
      {
        [v5 addObject:v8];
      }
    }
  }

  return v5;
}

- (BOOL)alwaysShowExtensionCandidatesForSortingMethod:(id)method
{
  methodCopy = method;
  v4 = [objc_opt_class() alwaysShowExtensionCandidatesForSortingMethod:methodCopy];

  return v4;
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method inputString:(id)string
{
  candidatesCopy = candidates;
  methodCopy = method;
  stringCopy = string;
  if (methodCopy)
  {
    v12 = [objc_opt_class() sortFromSortTitle:methodCopy];
    candidateSorter = [(TIKeyboardInputManager_ja *)self candidateSorter];
    v14 = [candidateSorter candidatesFromCandidates:candidatesCopy inputString:stringCopy sortedBy:v12 omittingEmoji:{-[TIKeyboardInputManager_ja shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self inputString:&v16];
    v14 = 0;
    candidateSorter = v16;
  }

  return v14;
}

- (BOOL)hasGroupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method inputString:(id)string
{
  candidatesCopy = candidates;
  methodCopy = method;
  stringCopy = string;
  if (methodCopy)
  {
    v12 = [objc_opt_class() sortFromSortTitle:methodCopy];
    candidateSorter = [(TIKeyboardInputManager_ja *)self candidateSorter];
    v14 = [candidateSorter hasCandidatesFromCandidates:candidatesCopy inputString:stringCopy sortedBy:v12 omittingEmoji:{-[TIKeyboardInputManager_ja shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    [TIKeyboardInputManager_ja hasGroupedCandidatesFromCandidates:a2 usingSortingMethod:self inputString:&v16];
    v14 = 0;
    candidateSorter = v16;
  }

  return v14;
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  candidatesCopy = candidates;
  methodCopy = method;
  if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self];
  }

  if ([MEMORY[0x29EDBA108] isMainThread])
  {
    inputString = [(TIKeyboardInputManager_ja *)self inputString];
  }

  else
  {
    inputString = 0;
  }

  v10 = [(TIKeyboardInputManager_ja *)self groupedCandidatesFromCandidates:candidatesCopy usingSortingMethod:methodCopy inputString:inputString];

  return v10;
}

- (void)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method completion:(id)completion
{
  candidatesCopy = candidates;
  methodCopy = method;
  completionCopy = completion;
  v12 = completionCopy;
  if (methodCopy)
  {
    if (completionCopy)
    {
      if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
      {
        [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self completion:?];
      }

      if ([MEMORY[0x29EDBA108] isMainThread])
      {
        inputString = [(TIKeyboardInputManager_ja *)self inputString];
      }

      else
      {
        inputString = 0;
      }

      operationQueue = [(TIKeyboardInputManager_ja *)self operationQueue];
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 3221225472;
      v16[2] = __91__TIKeyboardInputManager_ja_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke;
      v16[3] = &unk_29F379300;
      v16[4] = self;
      v17 = candidatesCopy;
      v18 = methodCopy;
      v19 = inputString;
      v20 = v12;
      v15 = inputString;
      [operationQueue addOperationWithBlock:v16];
    }
  }

  else
  {
    [TIKeyboardInputManager_ja groupedCandidatesFromCandidates:a2 usingSortingMethod:self completion:?];
  }
}

- (id)indexTitlesForGroupTitles:(id)titles sortingMethod:(id)method
{
  titlesCopy = titles;
  if ([method isEqual:@"UI-Sort-Yomi"])
  {
    v6 = &unk_2A2529600;
  }

  else
  {
    v6 = titlesCopy;
  }

  return v6;
}

- (BOOL)suppressCompletionsForFieldEditor
{
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  isSiriMode = [inputMode isSiriMode];

  return isSiriMode ^ 1;
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
    inputString = [(TIKeyboardInputManager_ja *)self inputString];
    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (inputIndex)
    {
      v5 = inputIndex;
      if (inputIndex < [(TIKeyboardInputManager_ja *)self inputCount])
      {
        if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
        {
          v6 = [inputString substringToIndex:v5];

          inputString = v6;
        }
      }
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asSearchString = [composingInput asSearchString];

      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asSearchTextCursorIndex = [composingInput2 asSearchTextCursorIndex];

      rawInputString = [asSearchString substringToIndex:asSearchTextCursorIndex];
    }

    else
    {
      rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    }

    v12 = [(TIWordSearch *)self->_kbws candidateForDefault:inputString rawInputString:rawInputString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)remainingInputLengthOfString:(id)string index:(unint64_t)index candidate:(id)candidate
{
  stringCopy = string;
  input = [candidate input];
  v9 = [input length];

  if (v9)
  {
    if (!index)
    {
      index = [stringCopy length];
    }

    if (index >= v9)
    {
      v10 = index - v9;
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

- (unint64_t)remainingInputLengthOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
  {
    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  }

  else
  {
    inputIndex = 0;
  }

  inputString = [(TIKeyboardInputManager_ja *)self inputString];
  v7 = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfString:inputString index:inputIndex candidate:candidateCopy];

  return v7;
}

- (void)preferencesDidChange:(id)change
{
  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v5 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*MEMORY[0x29EDC7130]];
  smartPunctuationController = [(TIKeyboardInputManager_ja *)self smartPunctuationController];
  [smartPunctuationController setSmartQuotesEnabled:v5];

  mEMORY[0x29EDC70E8]2 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v7 = [mEMORY[0x29EDC70E8]2 BOOLForPreferenceKey:*MEMORY[0x29EDC7128]];
  smartPunctuationController2 = [(TIKeyboardInputManager_ja *)self smartPunctuationController];
  [smartPunctuationController2 setSmartDashesEnabled:v7];
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja;
  v4 = [(TIKeyboardInputManagerMecabra *)&v8 handleAcceptedCandidate:candidate keyboardState:state];
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
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  firstObject = [candidates firstObject];

  input = [firstObject input];

  return input;
}

- (void)lockAnyDrawInputResults
{
  v26 = *MEMORY[0x29EDCA608];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  hasDrawInput = [composingInput hasDrawInput];

  if (hasDrawInput)
  {
    inputIndexWithDrawInput = [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
    array = [MEMORY[0x29EDB8DE8] array];
    getInputStringFromTopCandidate = [(TIKeyboardInputManager_ja *)self getInputStringFromTopCandidate];
    if ([getInputStringFromTopCandidate length])
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:{objc_msgSend(getInputStringFromTopCandidate, "characterAtIndex:", v8)}];
        [array addObject:v9];

        ++v8;
      }

      while ([getInputStringFromTopCandidate length] > v8);
    }

    v10 = [objc_alloc(MEMORY[0x29EDC71F0]) initWithCommittedText:&stru_2A2525CC0 syllables:array];
    v11 = [v10 syntheticInputWithCursorIndex:inputIndexWithDrawInput];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput2 inputs];

    v14 = [inputs countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(inputs);
          }

          [v11 composeNew:*(*(&v21 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [inputs countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput3 removeAllInputs];

    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput4 composeNew:v11];
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (id)didAcceptCandidate:(id)candidate
{
  v91 = *MEMORY[0x29EDCA608];
  candidateCopy = candidate;
  [(TIKeyboardInputManager_ja *)self _cancelCandidatesThread];
  if ([(TIKeyboardInputManager_ja *)self usesLiveConversion])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!composingKeyboardInputManager)
    {
      [(TIKeyboardInputManager_ja *)self setAlternateDisplayString:0];
    }
  }

  [(TIKeyboardInputManager_ja *)self setFlickUsed:0];
  self->_remainingInputLength = 0;
  rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
  v7 = [rawInputString length];
  input = [candidateCopy input];
  v9 = [input length];

  candidate = [candidateCopy candidate];
  if ([candidate length])
  {
    isTypologyEnabled = [(TIKeyboardInputManager_ja *)self isTypologyEnabled];

    if (isTypologyEnabled)
    {
      [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:candidateCopy partial:v7 > v9];
    }
  }

  else
  {
  }

  if (v7 > v9)
  {
    [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
  }

  v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
  proactiveTrigger = [candidateCopy proactiveTrigger];

  if ([(TIKeyboardInputManager_ja *)self isEmojiFacemarkMode])
  {
    [(TIWordSearch *)self->_kbws performAccept:v12 isPartial:0];
    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
LABEL_12:
    candidate4 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && !proactiveTrigger)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      candidate2 = [candidateCopy candidate];
      if ([candidate2 length])
      {
        keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
        documentIdentifier = [keyboardState documentIdentifier];
        if (documentIdentifier)
        {
          v17 = documentIdentifier;
          keyboardState2 = [(TIKeyboardInputManager_ja *)self keyboardState];
          inputForMarkedText = [keyboardState2 inputForMarkedText];
          v20 = [inputForMarkedText length];

          if (v20)
          {
            wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
            candidates = [wordSearchCandidateResultSet candidates];

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            obj = candidates;
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
                  candidate3 = [v27 candidate];
                  if ([candidate2 isEqualToString:candidate3])
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
  self->_remainingInputLength = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfCandidate:candidateCopy];
  [(TIWordSearch *)self->_kbws performAccept:v12 isPartial:v7 > v9];
  if (proactiveTrigger)
  {
    candidate4 = [candidateCopy candidate];
  }

  else
  {
    candidate4 = 0;
  }

  [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:v7 > v9];
LABEL_35:
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_64;
  }

  v30 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:candidateCopy];
  string = [MEMORY[0x29EDBA050] string];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs = [composingInput inputs];
  v34 = [inputs count];

  if (v34)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs2 = [composingInput2 inputs];
      v39 = [inputs2 objectAtIndexedSubscript:v35];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        convertedInput = [v39 convertedInput];
        [string appendString:convertedInput];

        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [composingInput3 removeInputAtIndex:v35];

        --v36;
      }

      v35 = ++v36;
      composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs3 = [composingInput4 inputs];
      v44 = [inputs3 count];
    }

    while (v44 > v36);
  }

  composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs4 = [composingInput5 inputs];
  v47 = 0x29EDC7000uLL;
  if ([inputs4 count] <= 1)
  {
    goto LABEL_46;
  }

  composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs5 = [composingInput6 inputs];
  firstObject = [inputs5 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v47 = 0x29EDC7000uLL;
    goto LABEL_46;
  }

  [(TIKeyboardInputManagerMecabra *)self composingInput];
  v52 = v51 = candidate4;
  hasDrawInput = [v52 hasDrawInput];

  candidate4 = v51;
  v47 = 0x29EDC7000;
  if ((hasDrawInput & 1) == 0)
  {
    composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs4 = [composingInput5 inputs];
    v53 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [inputs4 count]);
LABEL_46:
  }

  [(TIKeyboardInputManager_ja *)self lockAnyDrawInputResults];
  composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs6 = [composingInput7 inputs];
  if ([inputs6 count])
  {
    while (1)
    {
      v56 = [string length];

      if (!v56)
      {
        goto LABEL_63;
      }

      composingInput8 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs7 = [composingInput8 inputs];
      v59 = [inputs7 objectAtIndexedSubscript:0];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v60 = v59;
      characters = [v60 characters];
      if (![characters length])
      {
        goto LABEL_58;
      }

      characters2 = [v60 characters];
      v63 = [characters2 characterAtIndex:0];
      v64 = [string characterAtIndex:0];

      v65 = v63 == v64;
      v47 = 0x29EDC7000;
      if (!v65)
      {
        v59 = v60;
        goto LABEL_62;
      }

LABEL_59:
      composingInput9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput9 removeInputAtIndex:0];

      composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs6 = [composingInput7 inputs];
      if (![inputs6 count])
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

    composingInput7 = v59;
    characters = [composingInput7 text];
    if ([characters length])
    {
      if (([string hasPrefix:characters] & 1) == 0)
      {
        v67 = [string length];
        if (v67 < [characters length])
        {
          if (([characters hasPrefix:string] & 1) != 0 || (v73 = objc_msgSend(characters, "length"), v73 > objc_msgSend(string, "length")))
          {
            syllables = [composingInput7 syllables];
            v75 = [syllables count];
            v76 = [string length];

            if (v75 <= v76)
            {
              inputs6 = composingInput7;
            }

            else
            {
              syllables2 = [composingInput7 syllables];
              v78 = [string length];
              syllables3 = [composingInput7 syllables];
              v80 = [syllables2 subarrayWithRange:{v78, objc_msgSend(syllables3, "count") - objc_msgSend(string, "length")}];

              committedText = [composingInput7 committedText];
              inputs6 = [composingInput7 syntheticInputWithCommittedText:committedText syllables:v80];

              composingInput10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
              [composingInput10 replaceInputAtIndex:0 with:inputs6];

              string = 0;
            }
          }

          else
          {
            inputs6 = composingInput7;
          }

          goto LABEL_60;
        }
      }
    }

    [string deleteCharactersInRange:{0, objc_msgSend(characters, "length")}];
LABEL_58:

    goto LABEL_59;
  }

LABEL_60:

  v59 = composingInput7;
LABEL_62:

LABEL_63:
LABEL_64:

  v69 = *MEMORY[0x29EDCA608];

  return candidate4;
}

- (void)clearDynamicDictionary
{
  [(TIWordSearch *)self->_kbws clearLearningDictionary];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManager_ja *)&v3 clearDynamicDictionary];
}

- (void)addRecentlyCommittedCandidatesForReanalysis:(void *)reanalysis
{
  if (reanalysis)
  {
    v5 = MecabraCandidateGetSurface();
    recentlyCommittedCandidatesForReanalysis = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __73__TIKeyboardInputManager_ja_addRecentlyCommittedCandidatesForReanalysis___block_invoke;
    v14[3] = &unk_29F379328;
    v7 = v5;
    v15 = v7;
    v8 = [recentlyCommittedCandidatesForReanalysis indexOfObjectPassingTest:v14];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      recentlyCommittedCandidatesForReanalysis2 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
      [recentlyCommittedCandidatesForReanalysis2 removeObjectAtIndex:v8];
    }

    recentlyCommittedCandidatesForReanalysis3 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    [recentlyCommittedCandidatesForReanalysis3 insertObject:reanalysis atIndex:0];

    recentlyCommittedCandidatesForReanalysis4 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
    v12 = [recentlyCommittedCandidatesForReanalysis4 count];

    if (v12 >= 0x1F)
    {
      recentlyCommittedCandidatesForReanalysis5 = [(TIKeyboardInputManager_ja *)self recentlyCommittedCandidatesForReanalysis];
      [recentlyCommittedCandidatesForReanalysis5 removeLastObject];
    }
  }
}

- (BOOL)isLiveConversion
{
  if ([(TIKeyboardInputManager_ja *)self liveConversionEnabled])
  {
    inputString = [(TIKeyboardInputManager_ja *)self inputString];
    v4 = [inputString length];
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

  inHardwareKeyboardMode = [(TIKeyboardInputManager_ja *)self inHardwareKeyboardMode];
  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = mEMORY[0x29EDC70E8];
  v7 = MEMORY[0x29EDC7110];
  if (!inHardwareKeyboardMode)
  {
    v7 = MEMORY[0x29EDC7138];
  }

  v8 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*v7];

  return v8;
}

- (BOOL)supportsCandidateGeneration
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = composingKeyboardInputManager == 0;

  return v3;
}

- (void)commitComposition
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  composingKeyboardInputManager3 = composingKeyboardInputManager2;
  if (isKindOfClass)
  {
    inputStringForHiraganaMode = [composingKeyboardInputManager2 inputStringForHiraganaMode];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    inputStringForHiraganaMode = [composingKeyboardInputManager3 rawInputString];
  }

  v9 = inputStringForHiraganaMode;

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x29EDC7090]);
    [v10 setString:v9];
    v11 = objc_alloc(MEMORY[0x29EDC7228]);
    keyboardState = [(TIKeyboardInputManager_ja *)self keyboardState];
    v13 = [v11 initWithKeyboardState:keyboardState];

    [(TIKeyboardInputManager_ja *)self clearInput];
    TIInputManager::sync_with_input_from_UI(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    [(TIKeyboardInputManager_ja *)self addInput:v10 withContext:v13];
  }

LABEL_7:
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v14 commitComposition];
}

- (BOOL)shouldInvokeLiveConversion:(id)conversion
{
  conversionCopy = conversion;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (composingKeyboardInputManager || ![(TIKeyboardInputManager_ja *)self isLiveConversion])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    string = [conversionCopy string];
    if ([string length])
    {
      string2 = [conversionCopy string];
      if ([string2 _isSpace])
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        string3 = [conversionCopy string];
        if ([string3 isEqualToString:*MEMORY[0x29EDC72D8]])
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          string4 = [conversionCopy string];
          if ([string4 isEqualToString:*MEMORY[0x29EDC72E0]])
          {
            LOBYTE(v8) = 0;
          }

          else
          {
            string5 = [conversionCopy string];
            if ([string5 isEqualToString:*MEMORY[0x29EDC72D0]])
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

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  stateCopy = state;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  [composingKeyboardInputManager syncToKeyboardState:stateCopy];

  v12.receiver = self;
  v12.super_class = TIKeyboardInputManager_ja;
  [(TIKeyboardInputManagerMecabra *)&v12 generateCandidatesWithKeyboardState:stateCopy candidateRange:location candidateHandler:length, handlerCopy];
}

- (void)mecabraLearningValidator:(id)validator
{
  v24 = *MEMORY[0x29EDCA608];
  validatorCopy = validator;
  [(TIKeyboardInputManagerMecabra *)self storeLanguageModelDynamicDataIncludingCache];
  [(TIKeyboardInputManagerBase *)self clearHumanReadableTrace];
  inputManagerLogger = [(TIKeyboardInputManagerBase *)self inputManagerLogger];
  writeToFile = [inputManagerLogger writeToFile];

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    v7 = [writeToFile objectAtIndexedSubscript:0];
    v8 = [writeToFile objectAtIndexedSubscript:1];
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
  v14 = validatorCopy;
  v15 = v9;
  v10 = v9;
  v11 = validatorCopy;
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