@interface TPSyncingPolicy
- (BOOL)isSyncingEnabledForView:(id)a3;
- (TPSyncingPolicy)initWithCoder:(id)a3;
- (TPSyncingPolicy)initWithModel:(id)a3 version:(id)a4 viewList:(id)a5 priorityViews:(id)a6 userControllableViews:(id)a7 syncUserControllableViews:(int)a8 viewsToPiggybackTLKs:(id)a9 keyViewMapping:(id)a10 isInheritedAccount:(BOOL)a11;
- (id)description;
- (id)mapDictionaryToView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSyncingPolicy

- (TPSyncingPolicy)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = TPSyncingPolicy;
  v5 = [(TPSyncingPolicy *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"keyViewMapping"];
    keyViewMapping = v5->_keyViewMapping;
    v5->_keyViewMapping = v13;

    v15 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"viewList"];
    viewList = v5->_viewList;
    v5->_viewList = v18;

    v20 = [v4 decodeObjectOfClasses:v17 forKey:@"priorityViews"];
    priorityViews = v5->_priorityViews;
    v5->_priorityViews = v20;

    v22 = [v4 decodeObjectOfClasses:v17 forKey:@"userControllableViews"];
    userControllableViews = v5->_userControllableViews;
    v5->_userControllableViews = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ucvShouldSync"];
    if ([v24 isEqualToString:@"UNKNOWN"])
    {
      v25 = 0;
    }

    else if ([v24 isEqualToString:@"DISABLED"])
    {
      v25 = 1;
    }

    else if ([v24 isEqualToString:@"ENABLED"])
    {
      v25 = 2;
    }

    else if ([v24 isEqualToString:@"FOLLOWING"])
    {
      v25 = 3;
    }

    else
    {
      v25 = 0;
    }

    v5->_syncUserControllableViews = v25;
    v26 = [v4 decodeObjectOfClasses:v17 forKey:@"viewsToPiggybackTLKs"];
    viewsToPiggybackTLKs = v5->_viewsToPiggybackTLKs;
    v5->_viewsToPiggybackTLKs = v26;

    v5->_isInheritedAccount = [v4 decodeBoolForKey:@"isInheritedAccount"];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(TPSyncingPolicy *)self version];
  [v13 encodeObject:v4 forKey:@"version"];

  v5 = [(TPSyncingPolicy *)self model];
  [v13 encodeObject:v5 forKey:@"model"];

  v6 = [(TPSyncingPolicy *)self keyViewMapping];
  [v13 encodeObject:v6 forKey:@"keyViewMapping"];

  v7 = [(TPSyncingPolicy *)self viewList];
  [v13 encodeObject:v7 forKey:@"viewList"];

  v8 = [(TPSyncingPolicy *)self priorityViews];
  [v13 encodeObject:v8 forKey:@"priorityViews"];

  v9 = [(TPSyncingPolicy *)self userControllableViews];
  [v13 encodeObject:v9 forKey:@"userControllableViews"];

  v10 = [(TPSyncingPolicy *)self syncUserControllableViews];
  if (v10 >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_279DEDD68[v10];
  }

  [v13 encodeObject:v11 forKey:@"ucvShouldSync"];

  v12 = [(TPSyncingPolicy *)self viewsToPiggybackTLKs];
  [v13 encodeObject:v12 forKey:@"viewsToPiggybackTLKs"];

  [v13 encodeBool:-[TPSyncingPolicy isInheritedAccount](self forKey:{"isInheritedAccount"), @"isInheritedAccount"}];
}

- (BOOL)isSyncingEnabledForView:(id)a3
{
  v4 = a3;
  v5 = [(TPSyncingPolicy *)self viewList];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    if ([(TPSyncingPolicy *)self syncUserControllableViewsAsBoolean])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [(TPSyncingPolicy *)self userControllableViews];
      v7 = [v8 containsObject:v4] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)mapDictionaryToView:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TPSyncingPolicy *)self keyViewMapping];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 138543618;
    v18 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 view];
        if (v11)
        {
          v12 = [v10 matchingRule];

          if (v12)
          {
            v13 = [v10 matchingRule];
            v19 = 0;
            v14 = [v13 matches:v4 error:&v19];
            v11 = v19;

            if (v11)
            {
              v15 = TPClassificationLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v18;
                v25 = v10;
                v26 = 2114;
                v27 = v11;
                _os_log_impl(&dword_26F78B000, v15, OS_LOG_TYPE_DEFAULT, "Error matching with rule %{public}@: %{public}@", buf, 0x16u);
              }
            }

            if (v14)
            {
              v6 = [v10 view];

              goto LABEL_17;
            }
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TPSyncingPolicy *)self version];
  v5 = [(TPSyncingPolicy *)self model];
  v6 = [(TPSyncingPolicy *)self syncUserControllableViews];
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
  }

  else
  {
    v7 = off_279DEDD68[v6];
  }

  v8 = [v3 stringWithFormat:@"<TPSyncingPolicy: %@, %@, userViews: %@>", v4, v5, v7];

  return v8;
}

- (TPSyncingPolicy)initWithModel:(id)a3 version:(id)a4 viewList:(id)a5 priorityViews:(id)a6 userControllableViews:(id)a7 syncUserControllableViews:(int)a8 viewsToPiggybackTLKs:(id)a9 keyViewMapping:(id)a10 isInheritedAccount:(BOOL)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = TPSyncingPolicy;
  v19 = [(TPSyncingPolicy *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_model, a3);
    objc_storeStrong(&v20->_version, a4);
    objc_storeStrong(&v20->_viewList, a5);
    objc_storeStrong(&v20->_priorityViews, a6);
    objc_storeStrong(&v20->_userControllableViews, a7);
    v20->_syncUserControllableViews = a8;
    objc_storeStrong(&v20->_viewsToPiggybackTLKs, a9);
    objc_storeStrong(&v20->_keyViewMapping, a10);
    v20->_isInheritedAccount = a11;
  }

  return v20;
}

@end