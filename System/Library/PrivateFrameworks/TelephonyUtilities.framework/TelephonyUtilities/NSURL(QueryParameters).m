@interface NSURL(QueryParameters)
- (id)URLByDeletingQueryParameterWithKey:()QueryParameters;
- (id)URLBySettingQueryParameterValue:()QueryParameters forKey:;
- (id)tuQueryParameters;
@end

@implementation NSURL(QueryParameters)

- (id)tuQueryParameters
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [a1 query];
  v3 = v2;
  if (!v2 || [v2 isEqual:&stru_1F098C218])
  {
    v4 = MEMORY[0x1E696AF20];
    v5 = [a1 absoluteString];
    v6 = [v4 componentsWithString:v5];
    v7 = [v6 query];

    v3 = v7;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (([v3 isEqual:&stru_1F098C218] & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [v3 componentsSeparatedByString:@"&"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 componentsSeparatedByString:@"="];
          if ([v16 count] == 2)
          {
            v17 = [v16 objectAtIndexedSubscript:0];
            v18 = [v17 stringByRemovingPercentEncoding];

            v19 = [v16 objectAtIndexedSubscript:1];
            v20 = [v19 stringByRemovingPercentEncoding];

            if (v18)
            {
              v21 = v20 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              [v9 setObject:v20 forKeyedSubscript:v18];
            }
          }

          else if ([v16 count] == 1)
          {
            [v9 setObject:@"1" forKeyedSubscript:v15];
          }

          else
          {
            v22 = TUDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v15;
              _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't parse query parameter: %@", buf, 0xCu);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v12);
    }

    v8 = [v9 copy];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)URLBySettingQueryParameterValue:()QueryParameters forKey:
{
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
  v10 = [v9 queryItems];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];
  v15 = [v13 arrayByAddingObject:v14];

  [v9 setQueryItems:v15];
  v16 = [v9 URL];

  return v16;
}

- (id)URLByDeletingQueryParameterWithKey:()QueryParameters
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v7 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__NSURL_QueryParameters__URLByDeletingQueryParameterWithKey___block_invoke;
  v13[3] = &unk_1E7424BF0;
  v14 = v4;
  v8 = v4;
  v9 = [v7 predicateWithBlock:v13];
  v10 = [v6 filteredArrayUsingPredicate:v9];
  [v5 setQueryItems:v10];

  v11 = [v5 URL];

  return v11;
}

@end