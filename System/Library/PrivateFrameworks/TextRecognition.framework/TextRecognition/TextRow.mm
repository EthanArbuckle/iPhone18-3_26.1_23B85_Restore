@interface TextRow
- (NSArray)features;
- (NSString)string;
- (TextRow)init;
- (double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addToken:(id)token;
@end

@implementation TextRow

- (TextRow)init
{
  v6.receiver = self;
  v6.super_class = TextRow;
  v2 = [(TextRow *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    mutableTokens = v2->_mutableTokens;
    v2->_mutableTokens = array;

    v2->_cachedScore = 0.0;
  }

  return v2;
}

- (void)addToken:(id)token
{
  mutableTokens = self->_mutableTokens;
  if (mutableTokens)
  {
    [(NSMutableArray *)mutableTokens addObject:token];
  }
}

- (NSString)string
{
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_mutableTokens;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        string2 = [*(*(&v13 + 1) + 8 * v9) string];
        [string appendString:string2];

        if (v10 < [(TextRow *)self tokenCount]- 1)
        {
          [string appendString:@" "];
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v7 += v6;
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return string;
}

- (double)score
{
  v16 = *MEMORY[0x1E69E9840];
  cachedScore = self->_cachedScore;
  if (cachedScore == 0.0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_mutableTokens;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      cachedScore = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * i) score];
          cachedScore = cachedScore + v9;
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    else
    {
      cachedScore = 0.0;
    }

    self->_cachedScore = cachedScore;
  }

  return cachedScore;
}

- (NSArray)features
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_mutableTokens;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        features = [*(*(&v12 + 1) + 8 * i) features];
        [array addObjectsFromArray:features];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TextRow);
  v5 = [(NSMutableArray *)self->_mutableTokens mutableCopy];
  [(TextRow *)v4 setMutableTokens:v5];

  return v4;
}

@end