@interface PRCandidateList
- (PRCandidateList)initWithMaxCount:(unint64_t)count defaultReplacementRange:(_NSRange)range customErrorModel:(id)model capitalizationDictionaryArray:(id)array;
- (_NSRange)defaultReplacementRange;
- (id)candidateStrings;
- (id)candidateWithString:(id)string;
- (void)addCandidate:(id)candidate;
- (void)addCandidateWithString:(id)string errorType:(unint64_t)type;
- (void)addCandidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type;
- (void)addCandidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type;
- (void)dealloc;
@end

@implementation PRCandidateList

- (PRCandidateList)initWithMaxCount:(unint64_t)count defaultReplacementRange:(_NSRange)range customErrorModel:(id)model capitalizationDictionaryArray:(id)array
{
  length = range.length;
  location = range.location;
  v13.receiver = self;
  v13.super_class = PRCandidateList;
  v11 = [(PRCandidateList *)&v13 init];
  if (v11)
  {
    v11->_candidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11->_maxCount = count;
    v11->_defaultReplacementRange.location = location;
    v11->_defaultReplacementRange.length = length;
    v11->_errorModel = [[PRErrorModel alloc] initWithCustomErrorModel:model];
    v11->_capitalizationDictionaryArray = [array copy];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRCandidateList;
  [(PRCandidateList *)&v3 dealloc];
}

- (void)addCandidate:(id)candidate
{
  v20 = *MEMORY[0x1E69E9840];
  if (candidate && ![(PRCandidateList *)self isFull])
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
          if ([objc_msgSend(candidate "string")])
          {
            if ([candidate hasCustomErrorScore])
            {
              [candidate errorScore];
              [v10 setErrorScore:?];
              [v10 setCustomErrorScore:1];
            }

            else
            {
              [v10 errorScore];
              v12 = v11;
              [candidate errorScore];
              if (v12 < v13)
              {
                [candidate errorScore];
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

    [(NSMutableArray *)self->_candidates addObject:candidate];
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)addCandidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type
{
  v6 = [PRCandidate candidateWithWords:words replacementRange:range.location errorType:range.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type
{
  v6 = [PRCandidate candidateWithString:string replacementRange:range.location errorType:range.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v6];
}

- (void)addCandidateWithString:(id)string errorType:(unint64_t)type
{
  v5 = [PRCandidate candidateWithString:string replacementRange:self->_defaultReplacementRange.location errorType:self->_defaultReplacementRange.length errorModel:type, self->_errorModel];

  [(PRCandidateList *)self addCandidate:v5];
}

- (id)candidateStrings
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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

        [array addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "string")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return array;
}

- (_NSRange)defaultReplacementRange
{
  length = self->_defaultReplacementRange.length;
  location = self->_defaultReplacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)candidateWithString:(id)string
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