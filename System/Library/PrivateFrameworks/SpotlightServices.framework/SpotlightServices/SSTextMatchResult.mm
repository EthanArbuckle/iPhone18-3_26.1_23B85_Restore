@interface SSTextMatchResult
- (SSTextMatchResult)initWithScore:(float)a3;
- (id)description;
- (id)matchInfo;
- (id)matchedStrings;
- (void)addTermMatch:(id)a3;
- (void)clear;
@end

@implementation SSTextMatchResult

- (SSTextMatchResult)initWithScore:(float)a3
{
  v5.receiver = self;
  v5.super_class = SSTextMatchResult;
  result = [(SSTextMatchResult *)&v5 init];
  if (result)
  {
    result->_score = a3;
  }

  return result;
}

- (void)addTermMatch:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v13 = [v4 array];
  v6 = [(SSTextMatchResult *)self termMatches];
  [v13 addObjectsFromArray:v6];

  [v13 addObject:v5];
  [(SSTextMatchResult *)self setTermMatches:v13];
  v7 = [MEMORY[0x1E695DFA0] orderedSet];
  v8 = [(SSTextMatchResult *)self matchPositions];
  [v7 addObjectsFromArray:v8];

  v9 = [v5 pos];
  [v7 addObjectsFromArray:v9];

  v10 = [v7 array];
  [(SSTextMatchResult *)self setMatchPositions:v10];

  LODWORD(v10) = [v5 score];
  [(SSTextMatchResult *)self score];
  *&v12 = v11 + v10;
  [(SSTextMatchResult *)self setScore:v12];
}

- (void)clear
{
  [(SSTextMatchResult *)self setSource:0];
  [(SSTextMatchResult *)self setScore:0.0];
  v3 = MEMORY[0x1E695E0F0];
  [(SSTextMatchResult *)self setTermMatches:MEMORY[0x1E695E0F0]];

  [(SSTextMatchResult *)self setMatchPositions:v3];
}

- (id)matchedStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SSTextMatchResult *)self termMatches];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) term];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)matchInfo
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [(SSTextMatchResult *)self source];
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [(SSTextMatchResult *)self termMatches];

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(SSTextMatchResult *)self termMatches];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 pos];
          v14 = [(SSTextMatchResult *)self source];
          v15 = [v3 objectForKeyedSubscript:v14];
          v16 = [v12 term];
          [v15 setObject:v13 forKeyedSubscript:v16];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(SSTextMatchResult *)self score];
  v5 = v4;
  v6 = [(SSTextMatchResult *)self termMatches];
  v7 = [v6 componentsJoinedByString:@"} {"];;
  v8 = [v3 stringWithFormat:@"score: %.04f {%@}", *&v5, v7];;

  return v8;
}

@end