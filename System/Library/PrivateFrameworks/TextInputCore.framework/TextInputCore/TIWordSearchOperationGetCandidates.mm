@interface TIWordSearchOperationGetCandidates
- (SEL)action;
- (TIWordSearchOperationGetCandidates)initWithWordSearch:(id)a3 inputString:(id)a4 keyboardInput:(id)a5 segmentBreakIndex:(unint64_t)a6 predictionEnabled:(BOOL)a7 reanalysisMode:(BOOL)a8 autocapitalizationType:(unint64_t)a9 target:(id)a10 action:(SEL)a11 geometryModelData:(id)a12 hardwareKeyboardMode:(BOOL)a13 logger:(id)a14;
- (void)checkForCachedResults;
- (void)completeSearchOnMainThreadWithResults:(id)a3;
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

- (void)completeSearchOnMainThreadWithResults:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [(TIWordSearchOperationGetCandidates *)self isCancelled];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      v6 = [(TIWordSearchOperationGetCandidates *)self target];
      [v6 -[TIWordSearchOperationGetCandidates action](self];

      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)perform
{
  if (([(TIWordSearchOperationGetCandidates *)self isCancelled]& 1) == 0)
  {
    v3 = [(TIWordSearchOperationGetCandidates *)self results];

    if (!v3)
    {
      v9 = [(TIWordSearchOperationGetCandidates *)self wordSearch];
      v10 = [v9 candidatesForOperation:self];
      [(TIWordSearchOperationGetCandidates *)self setResults:v10];

      v11 = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
      if (v11)
      {
        v12 = v11;
        v13 = [(TIWordSearchOperationGetCandidates *)self keyboardInput];
        v14 = [v13 composingInput];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [(TIWordSearchOperationGetCandidates *)self keyboardInput];
          v17 = [v16 composingInput];
          v18 = [v17 remainingMecabraInputs];
          v19 = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
          [v19 setRemainingMecabraInputs:v18];

          v20 = [(TIWordSearchOperationGetCandidates *)self results];
          v21 = [v20 candidates];
          v22 = [v21 firstObject];

          if (v22)
          {
            v23 = [v22 input];
            v24 = [(TIWordSearchOperationGetCandidates *)self lastAcceptCandidateInput];
            [v24 setRemainingInputString:v23];
          }
        }
      }
    }
  }

  if (([(TIWordSearchOperationGetCandidates *)self isCancelled]& 1) == 0)
  {
    v4 = [(TIWordSearchOperationGetCandidates *)self results];
    if (v4)
    {
      v25 = v4;
      v5 = [(TIWordSearchOperationGetCandidates *)self target];
      if (v5)
      {
        v6 = v5;
        v7 = [(TIWordSearchOperationGetCandidates *)self action];

        if (!v7)
        {
          return;
        }

        v8 = [MEMORY[0x277CBEB88] mainRunLoop];
        [v8 cancelPerformSelectorsWithTarget:self];

        v25 = [(TIWordSearchOperationGetCandidates *)self results];
        [(TIWordSearchOperationGetCandidates *)self performSelectorOnMainThread:sel_completeSearchOnMainThreadWithResults_ withObject:v25 waitUntilDone:0];
      }
    }
  }
}

- (void)checkForCachedResults
{
  v4 = [(TIWordSearchOperationGetCandidates *)self wordSearch];
  v3 = [v4 cachedCandidatesForOperation:self];
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

    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__TIWordSearchOperationGetCandidates_dealloc__block_invoke;
    v7[3] = &unk_278733760;
    v7[4] = v8;
    [v5 addOperationWithBlock:v7];

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

- (TIWordSearchOperationGetCandidates)initWithWordSearch:(id)a3 inputString:(id)a4 keyboardInput:(id)a5 segmentBreakIndex:(unint64_t)a6 predictionEnabled:(BOOL)a7 reanalysisMode:(BOOL)a8 autocapitalizationType:(unint64_t)a9 target:(id)a10 action:(SEL)a11 geometryModelData:(id)a12 hardwareKeyboardMode:(BOOL)a13 logger:(id)a14
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a10;
  v39 = a12;
  v38 = a14;
  v40.receiver = self;
  v40.super_class = TIWordSearchOperationGetCandidates;
  v22 = [(TIWordSearchOperationGetCandidates *)&v40 init];
  if (v22)
  {
    v34 = v18;
    v33 = v19;
    v23 = [v19 copy];
    inputString = v22->_inputString;
    v22->_inputString = v23;

    v25 = [v20 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = [v20 composingInput];
      lastAcceptCandidateInput = v22->_lastAcceptCandidateInput;
      v22->_lastAcceptCandidateInput = v27;
    }

    v29 = [v20 copy];
    keyboardInput = v22->_keyboardInput;
    v22->_keyboardInput = v29;

    v22->_segmentBreakIndex = a6;
    v22->_predictionEnabled = a7;
    v22->_reanalysisMode = a8;
    v22->_autocapitalizationType = a9;
    objc_storeStrong(&v22->_target, a10);
    if (a11)
    {
      v31 = a11;
    }

    else
    {
      v31 = 0;
    }

    v19 = v33;
    v22->_action = v31;
    objc_storeStrong(&v22->_geometryModelData, a12);
    v22->_hardwareKeyboardMode = a13;
    objc_storeStrong(&v22->_logger, a14);
    objc_storeStrong(&v22->_wordSearch, a3);
    [(TIWordSearchOperationGetCandidates *)v22 checkForCachedResults];
    v18 = v34;
  }

  return v22;
}

@end