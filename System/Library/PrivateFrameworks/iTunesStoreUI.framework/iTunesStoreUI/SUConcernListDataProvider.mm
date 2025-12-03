@interface SUConcernListDataProvider
- (BOOL)parseData:(id)data returningError:(id *)error;
- (id)_concernsForArray:(id)array;
@end

@implementation SUConcernListDataProvider

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v12 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69E47B8]);
  [v7 configureFromProvider:self];
  if ([v7 parseData:data returningError:&v12])
  {
    output = [v7 output];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (v9 = [output objectForKey:@"items"], objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v9, "count"))
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

  if (error)
  {
    *error = v12;
  }

  return v10;
}

- (id)_concernsForArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(array);
        }

        v9 = [[SUConcernItem alloc] initWithDictionary:*(*(&v12 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = v9;
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

@end