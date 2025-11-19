@interface SBHIconModelApplicationDataSourceAdapter
- (NSArray)applicationPlaceholders;
- (NSArray)applications;
- (NSArray)webClips;
- (SBHIconModel)iconModel;
- (SBHIconModelApplicationDataSourceAdapter)initWithIconModel:(id)a3 applicationDataSource:(id)a4;
- (id)iconRepository;
- (void)addApplicationInfoProviderObserver:(id)a3;
- (void)iconModelApplicationDataSource:(id)a3 applicationPlaceholdersAdded:(id)a4;
- (void)iconModelApplicationDataSource:(id)a3 applicationPlaceholdersRemoved:(id)a4;
- (void)iconModelApplicationDataSource:(id)a3 applicationsAdded:(id)a4;
- (void)iconModelApplicationDataSource:(id)a3 applicationsRemoved:(id)a4;
- (void)iconModelApplicationDataSource:(id)a3 applicationsUpdated:(id)a4;
- (void)uninstallApplicationWithBundleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation SBHIconModelApplicationDataSourceAdapter

- (SBHIconModelApplicationDataSourceAdapter)initWithIconModel:(id)a3 applicationDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBHIconModelApplicationDataSourceAdapter;
  v8 = [(SBHIconModelApplicationDataSourceAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconModel, v6);
    objc_storeStrong(&v9->_applicationDataSource, a4);
    if (objc_opt_respondsToSelector())
    {
      [v7 addIconModelApplicationDataSourceObserver:v9];
    }
  }

  return v9;
}

- (NSArray)applications
{
  v3 = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  v4 = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  v5 = [v3 allApplicationsForIconModel:v4];

  return v5;
}

- (NSArray)applicationPlaceholders
{
  v3 = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  v4 = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  v5 = [v3 allApplicationPlaceholdersForIconModel:v4];

  return v5;
}

- (NSArray)webClips
{
  v2 = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 webClips];
    }

    else
    {
      [MEMORY[0x1E69DD2B8] clipsIncludingWebClips:1 includingAppClips:1];
    }
    v3 = ;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)iconRepository
{
  v2 = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  v3 = [v2 iconRepository];

  return v3;
}

- (void)addApplicationInfoProviderObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)uninstallApplicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v8 = [v7 applicationIconForBundleIdentifier:v6];

  if (v8)
  {
    [v7 uninstallIcon:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }
}

- (void)iconModelApplicationDataSource:(id)a3 applicationsAdded:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 addApplicationIconForApplication:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)a3 applicationsUpdated:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 addApplicationIconForApplication:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)a3 applicationsRemoved:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 removeApplicationIconForApplication:{*(*(&v12 + 1) + 8 * v11++), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)a3 applicationPlaceholdersAdded:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 addApplicationIconForApplicationPlaceholder:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)a3 applicationPlaceholdersRemoved:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 removeApplicationIconForApplicationPlaceholder:{*(*(&v12 + 1) + 8 * v11++), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (SBHIconModel)iconModel
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModel);

  return WeakRetained;
}

@end