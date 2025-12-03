@interface WBSPasswordEvaluator
+ (BOOL)passwordLooksLikeDigitOnlyPasscode:(id)passcode;
+ (id)standardPasswordEvaluator;
- (id)_initWithPasswordWordListCollection:(id)collection passcodeWordListCollection:(id)listCollection;
- (id)evaluatePassword:(id)password;
@end

@implementation WBSPasswordEvaluator

- (id)_initWithPasswordWordListCollection:(id)collection passcodeWordListCollection:(id)listCollection
{
  collectionCopy = collection;
  listCollectionCopy = listCollection;
  v15.receiver = self;
  v15.super_class = WBSPasswordEvaluator;
  v9 = [(WBSPasswordEvaluator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passwordWordListCollection, collection);
    objc_storeStrong(&v10->_passcodeWordListCollection, listCollection);
    v11 = objc_alloc_init(WBSPasswordPatternMatcher);
    patternMatcher = v10->_patternMatcher;
    v10->_patternMatcher = v11;

    v13 = v10;
  }

  return v10;
}

- (id)evaluatePassword:(id)password
{
  v31 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  if (([passwordCopy length] - 32) > 0xFFFFFFFFFFFFFFE0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [objc_opt_class() passwordLooksLikeDigitOnlyPasscode:passwordCopy];
    patternMatcher = self->_patternMatcher;
    if (v8)
    {
      v10 = [(WBSPasswordPatternMatcher *)patternMatcher patternMatchesForPasscode:passwordCopy withWordListCollection:self->_passcodeWordListCollection];
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
        v13 = -[WBSPasswordPatternMatch initExhaustiveSearchPatternWithMatchedSubstring:range:]([WBSPasswordPatternMatch alloc], "initExhaustiveSearchPatternWithMatchedSubstring:range:", passwordCopy, 0, [passwordCopy length]);
      }

      v21 = [WBSPasswordEvaluation alloc];
      v29 = v13;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [(WBSPasswordPatternMatchSolver *)v13 guessesRequired];
      optimalEvaluation = [(WBSPasswordEvaluation *)v21 initWithEvaluationType:1 password:passwordCopy patternMatches:v22 guessesRequired:?];
    }

    else
    {
      v10 = [(WBSPasswordPatternMatcher *)patternMatcher patternMatchesForPassword:passwordCopy withWordListCollection:self->_passwordWordListCollection];
      v13 = [[WBSPasswordPatternMatchSolver alloc] initWithPassword:passwordCopy patternMatches:v10];
      optimalEvaluation = [(WBSPasswordPatternMatchSolver *)v13 optimalEvaluation];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v5 = [WBSPasswordEvaluation alloc];
    optimalEvaluation = [(WBSPasswordEvaluation *)v5 initWithEvaluationType:2 password:passwordCopy patternMatches:MEMORY[0x1E695E0F0] guessesRequired:0.0];
  }

  v23 = *MEMORY[0x1E69E9840];

  return optimalEvaluation;
}

+ (BOOL)passwordLooksLikeDigitOnlyPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = [passcodeCopy length];
  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v5 = v4;
    safari_asciiDigitCharacterSet = [MEMORY[0x1E696AB08] safari_asciiDigitCharacterSet];
    if ([safari_asciiDigitCharacterSet characterIsMember:{objc_msgSend(passcodeCopy, "characterAtIndex:", 0)}])
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v5 == v7)
        {
          break;
        }

        v9 = [safari_asciiDigitCharacterSet characterIsMember:{objc_msgSend(passcodeCopy, "characterAtIndex:", v7)}];
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
  v2 = [self alloc];
  v3 = +[WBSPasswordWordListCollection commonPasswordWordListCollection];
  v4 = +[WBSPasswordWordListCollection commonPasscodeWordListCollection];
  v5 = [v2 _initWithPasswordWordListCollection:v3 passcodeWordListCollection:v4];

  return v5;
}

@end