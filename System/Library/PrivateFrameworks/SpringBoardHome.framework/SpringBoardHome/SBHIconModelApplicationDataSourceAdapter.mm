@interface SBHIconModelApplicationDataSourceAdapter
- (NSArray)applicationPlaceholders;
- (NSArray)applications;
- (NSArray)webClips;
- (SBHIconModel)iconModel;
- (SBHIconModelApplicationDataSourceAdapter)initWithIconModel:(id)model applicationDataSource:(id)source;
- (id)iconRepository;
- (void)addApplicationInfoProviderObserver:(id)observer;
- (void)iconModelApplicationDataSource:(id)source applicationPlaceholdersAdded:(id)added;
- (void)iconModelApplicationDataSource:(id)source applicationPlaceholdersRemoved:(id)removed;
- (void)iconModelApplicationDataSource:(id)source applicationsAdded:(id)added;
- (void)iconModelApplicationDataSource:(id)source applicationsRemoved:(id)removed;
- (void)iconModelApplicationDataSource:(id)source applicationsUpdated:(id)updated;
- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SBHIconModelApplicationDataSourceAdapter

- (SBHIconModelApplicationDataSourceAdapter)initWithIconModel:(id)model applicationDataSource:(id)source
{
  modelCopy = model;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = SBHIconModelApplicationDataSourceAdapter;
  v8 = [(SBHIconModelApplicationDataSourceAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconModel, modelCopy);
    objc_storeStrong(&v9->_applicationDataSource, source);
    if (objc_opt_respondsToSelector())
    {
      [sourceCopy addIconModelApplicationDataSourceObserver:v9];
    }
  }

  return v9;
}

- (NSArray)applications
{
  applicationDataSource = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  iconModel = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  v5 = [applicationDataSource allApplicationsForIconModel:iconModel];

  return v5;
}

- (NSArray)applicationPlaceholders
{
  applicationDataSource = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  iconModel = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  v5 = [applicationDataSource allApplicationPlaceholdersForIconModel:iconModel];

  return v5;
}

- (NSArray)webClips
{
  applicationDataSource = [(SBHIconModelApplicationDataSourceAdapter *)self applicationDataSource];
  if (applicationDataSource)
  {
    if (objc_opt_respondsToSelector())
    {
      [applicationDataSource webClips];
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
  iconModel = [(SBHIconModelApplicationDataSourceAdapter *)self iconModel];
  iconRepository = [iconModel iconRepository];

  return iconRepository;
}

- (void)addApplicationInfoProviderObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v8 = [iconRepository applicationIconForBundleIdentifier:identifierCopy];

  if (v8)
  {
    [iconRepository uninstallIcon:v8 completionHandler:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)iconModelApplicationDataSource:(id)source applicationsAdded:(id)added
{
  v18 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = addedCopy;
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

        v12 = [iconRepository addApplicationIconForApplication:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)source applicationsUpdated:(id)updated
{
  v18 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = updatedCopy;
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

        v12 = [iconRepository addApplicationIconForApplication:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)source applicationsRemoved:(id)removed
{
  v17 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = removedCopy;
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

        [iconRepository removeApplicationIconForApplication:{*(*(&v12 + 1) + 8 * v11++), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)source applicationPlaceholdersAdded:(id)added
{
  v18 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = addedCopy;
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

        v12 = [iconRepository addApplicationIconForApplicationPlaceholder:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)iconModelApplicationDataSource:(id)source applicationPlaceholdersRemoved:(id)removed
{
  v17 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  iconRepository = [(SBHIconModelApplicationDataSourceAdapter *)self iconRepository];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = removedCopy;
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

        [iconRepository removeApplicationIconForApplicationPlaceholder:{*(*(&v12 + 1) + 8 * v11++), v12}];
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