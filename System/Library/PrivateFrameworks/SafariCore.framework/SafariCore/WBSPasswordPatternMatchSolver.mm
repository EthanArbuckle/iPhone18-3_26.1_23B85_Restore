@interface WBSPasswordPatternMatchSolver
- (WBSPasswordPatternMatchSolver)initWithPassword:(id)password patternMatches:(id)matches;
- (id)_exhaustiveSearchPatternWithStartIndex:(unint64_t)index endIndex:(unint64_t)endIndex;
- (id)_partialSolutionWithEndIndex:(unint64_t)index patternCount:(unint64_t)count;
- (id)_unwindSolution;
- (id)optimalEvaluation;
- (void)_enumeratePartialSolutionsWithEndIndex:(unint64_t)index usingBlock:(id)block;
- (void)_setPartialSolution:(id)solution withEndIndex:(unint64_t)index patternCount:(unint64_t)count;
- (void)_updateExhaustiveSearchPartialSolutionsAtEndIndex:(unint64_t)index;
- (void)_updatePartialSolutionsWithPatternMatch:(id)match patternCount:(unint64_t)count;
@end

@implementation WBSPasswordPatternMatchSolver

- (WBSPasswordPatternMatchSolver)initWithPassword:(id)password patternMatches:(id)matches
{
  passwordCopy = password;
  matchesCopy = matches;
  v23.receiver = self;
  v23.super_class = WBSPasswordPatternMatchSolver;
  v8 = [(WBSPasswordPatternMatchSolver *)&v23 init];
  if (v8)
  {
    v9 = [passwordCopy copy];
    password = v8->_password;
    v8->_password = v9;

    v11 = [matchesCopy copy];
    patternMatches = v8->_patternMatches;
    v8->_patternMatches = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    partialSolutions = v8->_partialSolutions;
    v8->_partialSolutions = v13;

    v15 = [passwordCopy length];
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

- (id)_partialSolutionWithEndIndex:(unint64_t)index patternCount:(unint64_t)count
{
  partialSolutions = self->_partialSolutions;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v9 = [v7 objectForKeyedSubscript:v8];

  return v9;
}

- (void)_setPartialSolution:(id)solution withEndIndex:(unint64_t)index patternCount:(unint64_t)count
{
  partialSolutions = self->_partialSolutions;
  v8 = MEMORY[0x1E696AD98];
  solutionCopy = solution;
  v12 = [v8 numberWithUnsignedInteger:index];
  v10 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v12];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v10 setObject:solutionCopy forKeyedSubscript:v11];
}

- (void)_enumeratePartialSolutionsWithEndIndex:(unint64_t)index usingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v22 = 0;
  partialSolutions = self->_partialSolutions;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [(NSMutableDictionary *)partialSolutions objectForKeyedSubscript:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [v9 allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = [v9 objectForKeyedSubscript:v15];
      blockCopy[2](blockCopy, v16, [v15 unsignedLongValue], &v22);
      LOBYTE(v15) = v22;

      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
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

- (void)_updatePartialSolutionsWithPatternMatch:(id)match patternCount:(unint64_t)count
{
  matchCopy = match;
  endIndex = [matchCopy endIndex];
  [matchCopy guessesRequired];
  v9 = v8;
  if (count > 1)
  {
    v10 = -[WBSPasswordPatternMatchSolver _partialSolutionWithEndIndex:patternCount:](self, "_partialSolutionWithEndIndex:patternCount:", [matchCopy range] - 1, count - 1);
    [v10 guessesRequiredWithoutPatternCountPenalty];
    v9 = v9 * v11;
  }

  v12 = factorial(count);
  v13 = pow(10000.0, (count - 1)) + v9 * v12;
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
  v15[5] = count;
  [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:endIndex usingBlock:v15];
  if ((v17[3] & 1) == 0)
  {
    v14 = [[WBSPasswordPatternPartialSolution alloc] initWithPatternMatch:matchCopy guessesRequiredWithoutPatternCountPenalty:v9 withPatternCountPenalty:v13];
    [(WBSPasswordPatternMatchSolver *)self _setPartialSolution:v14 withEndIndex:endIndex patternCount:count];
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
    patternMatch = [v5 patternMatch];
    [v3 insertObject:patternMatch atIndex:0];
    v4 = [patternMatch range] - 1;
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

- (void)_updateExhaustiveSearchPartialSolutionsAtEndIndex:(unint64_t)index
{
  v5 = [(WBSPasswordPatternMatchSolver *)self _exhaustiveSearchPatternWithStartIndex:0 endIndex:index];
  [(WBSPasswordPatternMatchSolver *)self _updatePartialSolutionsWithPatternMatch:v5 patternCount:1];
  if (index)
  {
    v6 = 1;
    do
    {
      v7 = [(WBSPasswordPatternMatchSolver *)self _exhaustiveSearchPatternWithStartIndex:v6 endIndex:index];

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

    while (v6 <= index);
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

- (id)_exhaustiveSearchPatternWithStartIndex:(unint64_t)index endIndex:(unint64_t)endIndex
{
  v5 = endIndex - index;
  v6 = [(NSString *)self->_password substringWithRange:?];
  v7 = [[WBSPasswordPatternMatch alloc] initExhaustiveSearchPatternWithMatchedSubstring:v6 range:index, v5 + 1];

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
            range = [v11 range];
            if (range)
            {
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __50__WBSPasswordPatternMatchSolver_optimalEvaluation__block_invoke_2;
              v23[3] = &unk_1E7CF37F0;
              v23[4] = self;
              v23[5] = v11;
              [(WBSPasswordPatternMatchSolver *)self _enumeratePartialSolutionsWithEndIndex:range - 1 usingBlock:v23];
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

  _unwindSolution = [(WBSPasswordPatternMatchSolver *)self _unwindSolution];
  v14 = -[WBSPasswordPatternMatchSolver _partialSolutionWithEndIndex:patternCount:](self, "_partialSolutionWithEndIndex:patternCount:", v21 - 1, [_unwindSolution count]);
  [v14 guessesRequiredWithPatternCountPenalty];
  v16 = v15;

  v17 = [[WBSPasswordEvaluation alloc] initWithEvaluationType:0 password:self->_password patternMatches:_unwindSolution guessesRequired:v16];
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