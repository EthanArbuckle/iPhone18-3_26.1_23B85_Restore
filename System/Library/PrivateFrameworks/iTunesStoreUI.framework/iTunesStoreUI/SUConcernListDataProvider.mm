@interface SUConcernListDataProvider
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (id)_concernsForArray:(id)a3;
@end

@implementation SUConcernListDataProvider

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v12 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69E47B8]);
  [v7 configureFromProvider:self];
  if ([v7 parseData:a3 returningError:&v12])
  {
    v8 = [v7 output];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (v9 = [v8 objectForKey:@"items"], objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v9, "count"))
    {
      [(ISDataProvider *)self setOutput:[(SUConcernListDataProvider *)self _concernsForArray:v9]];
      [(ISDataProvider *)self migrateOutputFromSubProvider:v7];
      v10 = 1;
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CONCERN_POST_FAILED_ERROR", &stru_1F41B3660, 0}];
      v10 = 0;
      v12 = ISError();
    }
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  return v10;
}

- (id)_concernsForArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[SUConcernItem alloc] initWithDictionary:*(*(&v12 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = v9;
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

@end