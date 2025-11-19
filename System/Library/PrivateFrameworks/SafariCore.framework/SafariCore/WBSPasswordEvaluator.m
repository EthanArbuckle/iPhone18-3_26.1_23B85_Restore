@interface WBSPasswordEvaluator
+ (BOOL)passwordLooksLikeDigitOnlyPasscode:(id)a3;
+ (id)standardPasswordEvaluator;
- (id)_initWithPasswordWordListCollection:(id)a3 passcodeWordListCollection:(id)a4;
- (id)evaluatePassword:(id)a3;
@end

@implementation WBSPasswordEvaluator

- (id)_initWithPasswordWordListCollection:(id)a3 passcodeWordListCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSPasswordEvaluator;
  v9 = [(WBSPasswordEvaluator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passwordWordListCollection, a3);
    objc_storeStrong(&v10->_passcodeWordListCollection, a4);
    v11 = objc_alloc_init(WBSPasswordPatternMatcher);
    patternMatcher = v10->_patternMatcher;
    v10->_patternMatcher = v11;

    v13 = v10;
  }

  return v10;
}

- (id)evaluatePassword:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 length] - 32) > 0xFFFFFFFFFFFFFFE0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [objc_opt_class() passwordLooksLikeDigitOnlyPasscode:v4];
    patternMatcher = self->_patternMatcher;
    if (v8)
    {
      v10 = [(WBSPasswordPatternMatcher *)patternMatcher patternMatchesForPasscode:v4 withWordListCollection:self->_passcodeWordListCollection];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      v13 = 0;
      v14 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if (v13)
          {
            [*(*(&v25 + 1) + 8 * i) guessesRequired];
            v18 = v17;
            [(WBSPasswordPatternMatchSolver *)v13 guessesRequired];
            if (v18 >= v19)
            {
              continue;
            }
          }

          v20 = v16;

          v13 = v20;
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
      if (!v13)
      {
LABEL_15:
        v13 = -[WBSPasswordPatternMatch initExhaustiveSearchPatternWithMatchedSubstring:range:]([WBSPasswordPatternMatch alloc], "initExhaustiveSearchPatternWithMatchedSubstring:range:", v4, 0, [v4 length]);
      }

      v21 = [WBSPasswordEvaluation alloc];
      v29 = v13;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [(WBSPasswordPatternMatchSolver *)v13 guessesRequired];
      v6 = [(WBSPasswordEvaluation *)v21 initWithEvaluationType:1 password:v4 patternMatches:v22 guessesRequired:?];
    }

    else
    {
      v10 = [(WBSPasswordPatternMatcher *)patternMatcher patternMatchesForPassword:v4 withWordListCollection:self->_passwordWordListCollection];
      v13 = [[WBSPasswordPatternMatchSolver alloc] initWithPassword:v4 patternMatches:v10];
      v6 = [(WBSPasswordPatternMatchSolver *)v13 optimalEvaluation];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v5 = [WBSPasswordEvaluation alloc];
    v6 = [(WBSPasswordEvaluation *)v5 initWithEvaluationType:2 password:v4 patternMatches:MEMORY[0x1E695E0F0] guessesRequired:0.0];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)passwordLooksLikeDigitOnlyPasscode:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E696AB08] safari_asciiDigitCharacterSet];
    if ([v6 characterIsMember:{objc_msgSend(v3, "characterAtIndex:", 0)}])
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v5 == v7)
        {
          break;
        }

        v9 = [v6 characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v7)}];
        v7 = v8 + 1;
      }

      while ((v9 & 1) != 0);
      v10 = v8 >= v5;
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

+ (id)standardPasswordEvaluator
{
  v2 = [a1 alloc];
  v3 = +[WBSPasswordWordListCollection commonPasswordWordListCollection];
  v4 = +[WBSPasswordWordListCollection commonPasscodeWordListCollection];
  v5 = [v2 _initWithPasswordWordListCollection:v3 passcodeWordListCollection:v4];

  return v5;
}

@end