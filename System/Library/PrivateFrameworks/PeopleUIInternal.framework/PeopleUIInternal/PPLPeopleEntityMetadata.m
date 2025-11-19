@interface PPLPeopleEntityMetadata
- (BOOL)_isValidURL:(id)a3;
- (PPLPeopleEntityMetadata)initWithURL:(id)a3;
@end

@implementation PPLPeopleEntityMetadata

- (PPLPeopleEntityMetadata)initWithURL:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(PPLPeopleEntityMetadata *)a2 initWithURL:?];
  }

  v12.receiver = self;
  v12.super_class = PPLPeopleEntityMetadata;
  v7 = [(PPLPeopleEntityMetadata *)&v12 init];
  p_isa = &v7->super.isa;
  if (!v7)
  {
    goto LABEL_6;
  }

  if ([(PPLPeopleEntityMetadata *)v7 _isValidURL:v6])
  {
    objc_storeStrong(p_isa + 1, a3);
LABEL_6:
    v9 = p_isa;
    goto LABEL_10;
  }

  v10 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(PPLPeopleEntityMetadata *)v6 initWithURL:v10];
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)_isValidURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"people"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v3 resolvingAgainstBaseURL:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v6 queryItems];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = v6;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 name];
          if ([v13 isEqualToString:@"contactIdentifier"])
          {
          }

          else
          {
            v14 = [v12 name];
            v15 = [v14 isEqualToString:@"priorities"];

            if (!v15)
            {
              v16 = 0;
              goto LABEL_15;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_15:
      v6 = v19;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PPLPeopleEntityMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"url"}];
}

- (void)initWithURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25E21C000, a2, OS_LOG_TYPE_ERROR, "this url is not supported: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end