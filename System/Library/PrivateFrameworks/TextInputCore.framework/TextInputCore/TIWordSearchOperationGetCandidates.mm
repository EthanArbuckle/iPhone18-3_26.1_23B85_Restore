@interface TIWordSearchOperationGetCandidates
- (SEL)action;
- (TIWordSearchOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input segmentBreakIndex:(unint64_t)index predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode autocapitalizationType:(unint64_t)type target:(id)self0 action:(SEL)self1 geometryModelData:(id)self2 hardwareKeyboardMode:(BOOL)self3 logger:(id)self4;
- (void)checkForCachedResults;
- (void)completeSearchOnMainThreadWithResults:(id)results;
- (void)dealloc;
- (void)perform;
@end

@implementation TIWordSearchOperationGetCandidates

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)completeSearchOnMainThreadWithResults:(id)results
{
  resultsCopy = results;
  v5 = resultsCopy;
  if (resultsCopy)
  {
    v7 = resultsCopy;
    resultsCopy = [(TIWordSearchOperationGetCandidates *)self isCancelled];
    v5 = v7;
    if ((resultsCopy & 1) == 0)
    {
      target = [(TIWordSearchOperationGetCandidates *)self target];
      [target -[TIWordSearchOperationGetCandidates action](self];

      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](resultsCopy, v5);
}

- (void)perform
{
  if (([(TIWordSearchOperationGetCandidates *)self isCancelled]& 1) == 0)
  {
    results = [(TIWordSearchOperationGetCandidates *)self results];

    if (!results)
    {
      wordSearch = [(TIWordSearchOperationGetCandidates *)self wordSearch];
      v10 = [wordSearch candidatesForOperation:self];
      [(TIWordSearchOperationGetCandidates *)self setResults:v10];

      lastAcceptCandidateInput = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
      if (lastAcceptCandidateInput)
      {
        v12 = lastAcceptCandidateInput;
        keyboardInput = [(TIWordSearchOperationGetCandidates *)self keyboardInput];
        composingInput = [keyboardInput composingInput];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          keyboardInput2 = [(TIWordSearchOperationGetCandidates *)self keyboardInput];
          composingInput2 = [keyboardInput2 composingInput];
          remainingMecabraInputs = [composingInput2 remainingMecabraInputs];
          lastAcceptCandidateInput2 = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
          [lastAcceptCandidateInput2 setRemainingMecabraInputs:remainingMecabraInputs];

          results2 = [(TIWordSearchOperationGetCandidates *)self results];
          candidates = [results2 candidates];
          firstObject = [candidates firstObject];

          if (firstObject)
          {
            input = [firstObject input];
            lastAcceptCandidateInput3 = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
            [lastAcceptCandidateInput3 setRemainingInputString:input];
          }
        }
      }
    }
  }

  if (([(TIWordSearchOperationGetCandidates *)self isCancelled]& 1) == 0)
  {
    results3 = [(TIWordSearchOperationGetCandidates *)self results];
    if (results3)
    {
      results4 = results3;
      target = [(TIWordSearchOperationGetCandidates *)self target];
      if (target)
      {
        v6 = target;
        action = [(TIWordSearchOperationGetCandidates *)self action];

        if (!action)
        {
          return;
        }

        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [mainRunLoop cancelPerformSelectorsWithTarget:self];

        results4 = [(TIWordSearchOperationGetCandidates *)self results];
        [(TIWordSearchOperationGetCandidates *)self performSelectorOnMainThread:sel_completeSearchOnMainThreadWithResults_ withObject:results4 waitUntilDone:0];
      }
    }
  }
}

- (void)checkForCachedResults
{
  wordSearch = [(TIWordSearchOperationGetCandidates *)self wordSearch];
  v3 = [wordSearch cachedCandidatesForOperation:self];
  [(TIWordSearchOperationGetCandidates *)self setResults:v3];
}

- (void)dealloc
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    target = self->_target;
    self->_target = 0;
  }

  else
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__21237;
    v8[4] = __Block_byref_object_dispose__21238;
    v9 = self->_target;
    v4 = self->_target;
    self->_target = 0;

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__TIWordSearchOperationGetCandidates_dealloc__block_invoke;
    v7[3] = &unk_278733760;
    v7[4] = v8;
    [mainQueue addOperationWithBlock:v7];

    _Block_object_dispose(v8, 8);
  }

  v6.receiver = self;
  v6.super_class = TIWordSearchOperationGetCandidates;
  [(TIWordSearchOperationGetCandidates *)&v6 dealloc];
}

void __45__TIWordSearchOperationGetCandidates_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (TIWordSearchOperationGetCandidates)initWithWordSearch:(id)search inputString:(id)string keyboardInput:(id)input segmentBreakIndex:(unint64_t)index predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode autocapitalizationType:(unint64_t)type target:(id)self0 action:(SEL)self1 geometryModelData:(id)self2 hardwareKeyboardMode:(BOOL)self3 logger:(id)self4
{
  searchCopy = search;
  stringCopy = string;
  inputCopy = input;
  targetCopy = target;
  dataCopy = data;
  loggerCopy = logger;
  v40.receiver = self;
  v40.super_class = TIWordSearchOperationGetCandidates;
  v22 = [(TIWordSearchOperationGetCandidates *)&v40 init];
  if (v22)
  {
    v34 = searchCopy;
    v33 = stringCopy;
    v23 = [stringCopy copy];
    inputString = v22->_inputString;
    v22->_inputString = v23;

    composingInput = [inputCopy composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composingInput2 = [inputCopy composingInput];
      lastAcceptCandidateInput = v22->_lastAcceptCandidateInput;
      v22->_lastAcceptCandidateInput = composingInput2;
    }

    v29 = [inputCopy copy];
    keyboardInput = v22->_keyboardInput;
    v22->_keyboardInput = v29;

    v22->_segmentBreakIndex = index;
    v22->_predictionEnabled = enabled;
    v22->_reanalysisMode = mode;
    v22->_autocapitalizationType = type;
    objc_storeStrong(&v22->_target, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    stringCopy = v33;
    v22->_action = actionCopy;
    objc_storeStrong(&v22->_geometryModelData, data);
    v22->_hardwareKeyboardMode = keyboardMode;
    objc_storeStrong(&v22->_logger, logger);
    objc_storeStrong(&v22->_wordSearch, search);
    [(TIWordSearchOperationGetCandidates *)v22 checkForCachedResults];
    searchCopy = v34;
  }

  return v22;
}

@end