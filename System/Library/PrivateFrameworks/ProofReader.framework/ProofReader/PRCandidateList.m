@interface PRCandidateList
- (PRCandidateList)initWithMaxCount:(unint64_t)a3 defaultReplacementRange:(_NSRange)a4 customErrorModel:(id)a5 capitalizationDictionaryArray:(id)a6;
- (_NSRange)defaultReplacementRange;
- (id)candidateStrings;
- (id)candidateWithString:(id)a3;
- (void)addCandidate:(id)a3;
- (void)addCandidateWithString:(id)a3 errorType:(unint64_t)a4;
- (void)addCandidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5;
- (void)addCandidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5;
- (void)dealloc;
@end

@implementation PRCandidateList

- (PRCandidateList)initWithMaxCount:(unint64_t)a3 defaultReplacementRange:(_NSRange)a4 customErrorModel:(id)a5 capitalizationDictionaryArray:(id)a6
{
  length = a4.length;
  location = a4.location;
  v13.receiver = self;
  v13.super_class = PRCandidateList;
  v11 = [(PRCandidateList *)&v13 init];
  if (v11)
  {
    v11->_candidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11->_maxCount = a3;
    v11->_defaultReplacementRange.location = location;
    v11->_defaultReplacementRange.length = length;
    v11->_errorModel = [[PRErrorModel alloc] initWithCustomErrorModel:a5];
    v11->_capitalizationDictionaryArray = [a6 copy];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRCandidateList;
  [(PRCandidateList *)&v3 dealloc];
}

- (void)addCandidate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 && ![(PRCandidateList *)self isFull])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    candidates = self->_candidates;
    v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(candidates);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(a3 "string")])
          {
            if ([a3 hasCustomErrorScore])
            {
              [a3 errorScore];
              [v10 setErrorScore:?];
              [v10 setCustomErrorScore:1];
            }

            else
            {
              [v10 errorScore];
              v12 = v11;
              [a3 errorScore];
              if (v12 < v13)
              {
                [a3 errorScore];
                [v10 setErrorScore:?];
              }
            }

            goto LABEL_16;
          }
        }

        v7 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_candidates addObject:a3];
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)addCandidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5
{
  v6 = [PRCandidate candidateWithWords:a3 replacementRange:a4.location errorType:a4.length errorModel:a5, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5
{
  v6 = [PRCandidate candidateWithString:a3 replacementRange:a4.location errorType:a4.length errorModel:a5, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)a3 errorType:(unint64_t)a4
{
  v5 = [PRCandidate candidateWithString:a3 replacementRange:self->_defaultReplacementRange.location errorType:self->_defaultReplacementRange.length errorModel:a4, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v5];
}

- (id)candidateStrings
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  candidates = self->_candidates;
  v5 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(candidates);
        }

        [v3 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "string")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (_NSRange)defaultReplacementRange
{
  length = self->_defaultReplacementRange.length;
  location = self->_defaultReplacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)candidateWithString:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  candidates = self->_candidates;
  v5 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(candidates);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "string")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end