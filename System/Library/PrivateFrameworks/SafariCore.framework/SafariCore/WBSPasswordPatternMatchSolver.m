@interface WBSPasswordPatternMatchSolver
- (WBSPasswordPatternMatchSolver)initWithPassword:(id)a3 patternMatches:(id)a4;
- (id)_exhaustiveSearchPatternWithStartIndex:(unint64_t)a3 endIndex:(unint64_t)a4;
- (id)_partialSolutionWithEndIndex:(unint64_t)a3 patternCount:(unint64_t)a4;
- (id)_unwindSolution;
- (id)optimalEvaluation;
- (void)_enumeratePartialSolutionsWithEndIndex:(unint64_t)a3 usingBlock:(id)a4;
- (void)_setPartialSolution:(id)a3 withEndIndex:(unint64_t)a4 patternCount:(unint64_t)a5;
- (void)_updateExhaustiveSearchPartialSolutionsAtEndIndex:(unint64_t)a3;
- (void)_updatePartialSolutionsWithPatternMatch:(id)a3 patternCount:(unint64_t)a4;
@end

@implementation WBSPasswordPatternMatchSolver

- (WBSPasswordPatternMatchSolver)initWithPassword:(id)a3 patternMatches:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = WBSPasswordPatternMatchSolver;
  v8 = [(WBSPasswordPatternMatchSolver *)&v23 init];
  if (v8)
  {
    v9 = [v6 copy];
    password = v8->_password;
    v8->_password = v9;

    v11 = [v7 copy];
    patternMatches = v8->_patternMatches;
    v8->_patternMatches = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    partialSolutions = v8->_partialSolutions;
    v8->_partialSolutions = v13;

    v15 = [v6 length];
    if (v15)
    {
      v16 = v15;
      for (i = 0; i != v16; ++i)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v19 = v8->_partialSolutions;
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];
      }
    }

    v21 = v8;
  }

  return v8;
}

- (id)_partialSolutionWithEndIndex:(unint64_t)a3 patternCount:(unint64_t)a4
{
  partialSolutions = self->_partialSolutions;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  return v9;
}

- (void)_setPartialSolution:(id)a3 withEndIndex:(unint64_t)a4 patternCount:(unint64_t)a5
{
  partialSolutions = self->_partialSolutions;
  v8 = MEMORY[0x1E696AD98];
  v9 = a3;
  v12 = [v8 numberWithUnsignedInteger:a4];
  v10 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v12];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v10 setObject:v9 forKeyedSubscript:v11];
}

- (void)_enumeratePartialSolutionsWithEndIndex:(unint64_t)a3 usingBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v22 = 0;
  partialSolutions = self->_partialSolutions;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = [v9 objectForKeyedSubscript:v15];
      v6[2](v6, v16, [v15 unsignedLongValue], &v22);
      LOBYTE(v15) = v22;

      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updatePartialSolutionsWithPatternMatch:(id)a3 patternCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 endIndex];
  [v6 guessesRequired];
  v9 = v8;
  if (a4 > 1)
  {
    v10 = -[WBSPasswordPatternMatchSolver _partialSolutionWithEndIndex:patternCount:](self, "_partialSolutionWithEndIndex:patternCount:", [v6 range] - 1, a4 - 1);
    [v10 guessesRequiredWithoutPatternCountPenalty];
    v9 = v9 * v11;
  }

  v12 = factorial(a4);
  v13 = pow(10000.0, (a4 - 1)) + v9 * v12;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__WBSPasswordPatternMatchSolver__updatePartialSolutionsWithPatternMatch_patternCount___block_invoke;
  v15[3] = &unk_1E7CF37A0;
  *&v15[6] = v13;
  v15[4] = &v16;
  v15[5] = a4;
  [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:v7 usingBlock:v15];
  if ((v17[3] & 1) == 0)
  {
    v14 = [[WBSPasswordPatternPartialSolution alloc] initWithPatternMatch:v6 guessesRequiredWithoutPatternCountPenalty:v9 withPatternCountPenalty:v13];
    [(WBSPasswordPatternMatchSolver *)self _setPartialSolution:v14 withEndIndex:v7 patternCount:a4];
  }

  _Block_object_dispose(&v16, 8);
}

void __86__WBSPasswordPatternMatchSolver__updatePartialSolutionsWithPatternMatch_patternCount___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 40) >= a3)
  {
    v9 = v7;
    [v7 guessesRequiredWithPatternCountPenalty];
    v7 = v9;
    if (v8 <= *(a1 + 48))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)_unwindSolution
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSString *)self->_password length]- 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0x7FEFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__WBSPasswordPatternMatchSolver__unwindSolution__block_invoke;
  v8[3] = &unk_1E7CF37C8;
  v8[4] = v9;
  v8[5] = &v10;
  [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:v4 usingBlock:v8];
  while ((v4 & 0x8000000000000000) == 0)
  {
    v5 = [(WBSPasswordPatternMatchSolver *)self _partialSolutionWithEndIndex:v4 patternCount:v11[3]];
    v6 = [v5 patternMatch];
    [v3 insertObject:v6 atIndex:0];
    v4 = [v6 range] - 1;
    --v11[3];
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);

  return v3;
}

uint64_t __48__WBSPasswordPatternMatchSolver__unwindSolution__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 guessesRequiredWithPatternCountPenalty];
  if (v6 < *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }

  return result;
}

- (void)_updateExhaustiveSearchPartialSolutionsAtEndIndex:(unint64_t)a3
{
  v5 = [(WBSPasswordPatternMatchSolver *)self _exhaustiveSearchPatternWithStartIndex:0 endIndex:a3];
  [(WBSPasswordPatternMatchSolver *)self _updatePartialSolutionsWithPatternMatch:v5 patternCount:1];
  if (a3)
  {
    v6 = 1;
    do
    {
      v7 = [(WBSPasswordPatternMatchSolver *)self _exhaustiveSearchPatternWithStartIndex:v6 endIndex:a3];

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __83__WBSPasswordPatternMatchSolver__updateExhaustiveSearchPartialSolutionsAtEndIndex___block_invoke;
      v8[3] = &unk_1E7CF37F0;
      v8[4] = self;
      v5 = v7;
      v9 = v5;
      [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:v6 - 1 usingBlock:v8];

      ++v6;
    }

    while (v6 <= a3);
  }
}

void __83__WBSPasswordPatternMatchSolver__updateExhaustiveSearchPartialSolutionsAtEndIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 patternMatch];
  v6 = [v5 type];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v7 _updatePartialSolutionsWithPatternMatch:v8 patternCount:a3 + 1];
  }
}

- (id)_exhaustiveSearchPatternWithStartIndex:(unint64_t)a3 endIndex:(unint64_t)a4
{
  v5 = a4 - a3;
  v6 = [(NSString *)self->_password substringWithRange:?];
  v7 = [[WBSPasswordPatternMatch alloc] initExhaustiveSearchPatternWithMatchedSubstring:v6 range:a3, v5 + 1];

  return v7;
}

- (id)optimalEvaluation
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_password length];
  [MEMORY[0x1E695DF20] safari_dictionaryWithObjectsInFastEnumerationCollection:self->_patternMatches groupedUsingBlock:&__block_literal_global_49];
  v22 = v20 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v4, v20}];
      v6 = [v22 objectForKeyedSubscript:v5];

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            v12 = [v11 range];
            if (v12)
            {
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __50__WBSPasswordPatternMatchSolver_optimalEvaluation__block_invoke_2;
              v23[3] = &unk_1E7CF37F0;
              v23[4] = self;
              v23[5] = v11;
              [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:v12 - 1 usingBlock:v23];
            }

            else
            {
              [(WBSPasswordPatternMatchSolver *)self _updatePartialSolutionsWithPatternMatch:v11 patternCount:1];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      [(WBSPasswordPatternMatchSolver *)self _updateExhaustiveSearchPartialSolutionsAtEndIndex:v4++];
    }

    while (v4 != v20);
  }

  v13 = [(WBSPasswordPatternMatchSolver *)self _unwindSolution];
  v14 = -[WBSPasswordPatternMatchSolver _partialSolutionWithEndIndex:patternCount:](self, "_partialSolutionWithEndIndex:patternCount:", v21 - 1, [v13 count]);
  [v14 guessesRequiredWithPatternCountPenalty];
  v16 = v15;

  v17 = [[WBSPasswordEvaluation alloc] initWithEvaluationType:0 password:self->_password patternMatches:v13 guessesRequired:v16];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __50__WBSPasswordPatternMatchSolver_optimalEvaluation__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 endIndex];

  return [v2 numberWithUnsignedInteger:v3];
}

@end