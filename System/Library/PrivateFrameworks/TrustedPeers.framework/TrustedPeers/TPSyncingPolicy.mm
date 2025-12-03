@interface TPSyncingPolicy
- (BOOL)isSyncingEnabledForView:(id)view;
- (TPSyncingPolicy)initWithCoder:(id)coder;
- (TPSyncingPolicy)initWithModel:(id)model version:(id)version viewList:(id)list priorityViews:(id)views userControllableViews:(id)controllableViews syncUserControllableViews:(int)userControllableViews viewsToPiggybackTLKs:(id)ks keyViewMapping:(id)self0 isInheritedAccount:(BOOL)self1;
- (id)description;
- (id)mapDictionaryToView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSyncingPolicy

- (TPSyncingPolicy)initWithCoder:(id)coder
{
  v32[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = TPSyncingPolicy;
  v5 = [(TPSyncingPolicy *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"keyViewMapping"];
    keyViewMapping = v5->_keyViewMapping;
    v5->_keyViewMapping = v13;

    v15 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"viewList"];
    viewList = v5->_viewList;
    v5->_viewList = v18;

    v20 = [coderCopy decodeObjectOfClasses:v17 forKey:@"priorityViews"];
    priorityViews = v5->_priorityViews;
    v5->_priorityViews = v20;

    v22 = [coderCopy decodeObjectOfClasses:v17 forKey:@"userControllableViews"];
    userControllableViews = v5->_userControllableViews;
    v5->_userControllableViews = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ucvShouldSync"];
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
    v26 = [coderCopy decodeObjectOfClasses:v17 forKey:@"viewsToPiggybackTLKs"];
    viewsToPiggybackTLKs = v5->_viewsToPiggybackTLKs;
    v5->_viewsToPiggybackTLKs = v26;

    v5->_isInheritedAccount = [coderCopy decodeBoolForKey:@"isInheritedAccount"];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(TPSyncingPolicy *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  model = [(TPSyncingPolicy *)self model];
  [coderCopy encodeObject:model forKey:@"model"];

  keyViewMapping = [(TPSyncingPolicy *)self keyViewMapping];
  [coderCopy encodeObject:keyViewMapping forKey:@"keyViewMapping"];

  viewList = [(TPSyncingPolicy *)self viewList];
  [coderCopy encodeObject:viewList forKey:@"viewList"];

  priorityViews = [(TPSyncingPolicy *)self priorityViews];
  [coderCopy encodeObject:priorityViews forKey:@"priorityViews"];

  userControllableViews = [(TPSyncingPolicy *)self userControllableViews];
  [coderCopy encodeObject:userControllableViews forKey:@"userControllableViews"];

  syncUserControllableViews = [(TPSyncingPolicy *)self syncUserControllableViews];
  if (syncUserControllableViews >= 4)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", syncUserControllableViews];
  }

  else
  {
    v11 = off_279DEDD68[syncUserControllableViews];
  }

  [coderCopy encodeObject:v11 forKey:@"ucvShouldSync"];

  viewsToPiggybackTLKs = [(TPSyncingPolicy *)self viewsToPiggybackTLKs];
  [coderCopy encodeObject:viewsToPiggybackTLKs forKey:@"viewsToPiggybackTLKs"];

  [coderCopy encodeBool:-[TPSyncingPolicy isInheritedAccount](self forKey:{"isInheritedAccount"), @"isInheritedAccount"}];
}

- (BOOL)isSyncingEnabledForView:(id)view
{
  viewCopy = view;
  viewList = [(TPSyncingPolicy *)self viewList];
  v6 = [viewList containsObject:viewCopy];

  if (v6)
  {
    if ([(TPSyncingPolicy *)self syncUserControllableViewsAsBoolean])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      userControllableViews = [(TPSyncingPolicy *)self userControllableViews];
      v7 = [userControllableViews containsObject:viewCopy] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)mapDictionaryToView:(id)view
{
  v29 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(TPSyncingPolicy *)self keyViewMapping];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  view2 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (view2)
  {
    v8 = *v21;
    *&v7 = 138543618;
    v18 = v7;
    do
    {
      for (i = 0; i != view2; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        view = [v10 view];
        if (view)
        {
          matchingRule = [v10 matchingRule];

          if (matchingRule)
          {
            matchingRule2 = [v10 matchingRule];
            v19 = 0;
            v14 = [matchingRule2 matches:viewCopy error:&v19];
            view = v19;

            if (view)
            {
              v15 = TPClassificationLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v18;
                v25 = v10;
                v26 = 2114;
                v27 = view;
                _os_log_impl(&dword_26F78B000, v15, OS_LOG_TYPE_DEFAULT, "Error matching with rule %{public}@: %{public}@", buf, 0x16u);
              }
            }

            if (v14)
            {
              view2 = [v10 view];

              goto LABEL_17;
            }
          }

          else
          {
            view = 0;
          }
        }
      }

      view2 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (view2);
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return view2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  version = [(TPSyncingPolicy *)self version];
  model = [(TPSyncingPolicy *)self model];
  syncUserControllableViews = [(TPSyncingPolicy *)self syncUserControllableViews];
  if (syncUserControllableViews >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", syncUserControllableViews];
  }

  else
  {
    v7 = off_279DEDD68[syncUserControllableViews];
  }

  v8 = [v3 stringWithFormat:@"<TPSyncingPolicy: %@, %@, userViews: %@>", version, model, v7];

  return v8;
}

- (TPSyncingPolicy)initWithModel:(id)model version:(id)version viewList:(id)list priorityViews:(id)views userControllableViews:(id)controllableViews syncUserControllableViews:(int)userControllableViews viewsToPiggybackTLKs:(id)ks keyViewMapping:(id)self0 isInheritedAccount:(BOOL)self1
{
  modelCopy = model;
  versionCopy = version;
  listCopy = list;
  viewsCopy = views;
  controllableViewsCopy = controllableViews;
  ksCopy = ks;
  mappingCopy = mapping;
  v28.receiver = self;
  v28.super_class = TPSyncingPolicy;
  v19 = [(TPSyncingPolicy *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_model, model);
    objc_storeStrong(&v20->_version, version);
    objc_storeStrong(&v20->_viewList, list);
    objc_storeStrong(&v20->_priorityViews, views);
    objc_storeStrong(&v20->_userControllableViews, controllableViews);
    v20->_syncUserControllableViews = userControllableViews;
    objc_storeStrong(&v20->_viewsToPiggybackTLKs, ks);
    objc_storeStrong(&v20->_keyViewMapping, mapping);
    v20->_isInheritedAccount = account;
  }

  return v20;
}

@end