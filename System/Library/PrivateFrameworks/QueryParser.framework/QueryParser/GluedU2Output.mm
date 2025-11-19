@interface GluedU2Output
- (NSArray)argIds;
- (NSArray)argScores;
@end

@implementation GluedU2Output

- (NSArray)argIds
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(GluedU2Output *)self argIdsForTokens];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectAtIndexedSubscript:0];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSArray)argScores
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(GluedU2Output *)self argScoresForTokens];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectAtIndexedSubscript:0];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end