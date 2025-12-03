@interface REDataSourceCatalog
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersionForDataSourceWithIdentifier:(SEL)identifier;
- (BOOL)imageForDataSourceWithIdentifier:(id)identifier completion:(id)completion;
- (BOOL)requiresLocationInUseAssertonForDataSourceWithIdentifier:(id)identifier;
- (BOOL)wantsApplicationPrewarmForDataSourceWithIdentifier:(id)identifier;
- (REDataSourceCatalog)initWithDataSourceManager:(id)manager;
- (id)applicationIdentifierForDataSourceWithIdentifier:(id)identifier;
- (id)localAndRemoteAppIdentifiersForDataSourceIdentifiers:(id)identifiers;
- (id)localizedNameForApplicationWithIdentifier:(id)identifier;
- (id)localizedNameForDataSourceWithIdentifier:(id)identifier;
- (void)_applicationsStatesDidChange;
- (void)dealloc;
- (void)donatedAppIdentifiersWithCompletion:(id)completion;
- (void)enumerateDataSources:(id)sources;
- (void)imageForApplicationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation REDataSourceCatalog

- (REDataSourceCatalog)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = REDataSourceCatalog;
  v6 = [(REDataSourceCatalog *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, manager);
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    iconCache = v7->_iconCache;
    v7->_iconCache = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    localizedNameCache = v7->_localizedNameCache;
    v7->_localizedNameCache = dictionary;

    queue = [managerCopy queue];
    queue = v7->_queue;
    v7->_queue = queue;

    v14 = +[(RESingleton *)REAppIconCache];
    appIconCache = v7->_appIconCache;
    v7->_appIconCache = v14;

    v16 = +[(RESingleton *)REAppNameCache];
    appNameCache = v7->_appNameCache;
    v7->_appNameCache = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applicationsStatesDidChange name:@"REApplicationStateDidChange" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = REDataSourceCatalog;
  [(REDataSourceCatalog *)&v4 dealloc];
}

- (void)_applicationsStatesDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__REDataSourceCatalog__applicationsStatesDidChange__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__REDataSourceCatalog__applicationsStatesDidChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeAllObjects];
}

- (void)enumerateDataSources:(id)sources
{
  v16 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  if (sourcesCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    currentDataSources = [(REDataSourceManager *)self->_dataSourceManager currentDataSources];
    v6 = [currentDataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(currentDataSources);
          }

          sourcesCopy[2](sourcesCopy, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [currentDataSources countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)donatedAppIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = +[(RESingleton *)REDuetKnowledgeStore];
    queryForAllRelevantShortcuts = [v5 queryForAllRelevantShortcuts];

    v7 = +[(RESingleton *)REDuetKnowledgeStore];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__REDataSourceCatalog_donatedAppIdentifiersWithCompletion___block_invoke;
    v13[3] = &unk_2785FC4A0;
    v8 = v4;
    v14 = v8;
    [v7 executeQuerySynchronouslyWithBatching:queryForAllRelevantShortcuts completion:v13];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__REDataSourceCatalog_donatedAppIdentifiersWithCompletion___block_invoke_2;
    block[3] = &unk_2785FA150;
    v11 = v8;
    v12 = completionCopy;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__REDataSourceCatalog_donatedAppIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 bundleIdentifier];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v11 bundleIdentifier];
          [v13 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__REDataSourceCatalog_donatedAppIdentifiersWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)localAndRemoteAppIdentifiersForDataSourceIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        applicationBundleIdentifier = [(objc_class *)[(REDataSourceManager *)self->_dataSourceManager classForDataSourceIdentifier:*(*(&v16 + 1) + 8 * i) applicationBundleIdentifier];
        if (applicationBundleIdentifier)
        {
          [v5 addObject:applicationBundleIdentifier];
          v12 = RELocalApplicationIdentifierForRemoteApplication(applicationBundleIdentifier);
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)imageForApplicationWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (identifierCopy)
    {
      v9 = +[(RESingleton *)REAppIconCache];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__REDataSourceCatalog_imageForApplicationWithIdentifier_completion___block_invoke_2;
      v12[3] = &unk_2785FC4C8;
      v10 = &v13;
      v13 = v8;
      [v9 iconForApplicationWithIdentifier:identifierCopy completion:v12];
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__REDataSourceCatalog_imageForApplicationWithIdentifier_completion___block_invoke;
      block[3] = &unk_2785FA040;
      v10 = &v15;
      v15 = completionCopy;
      dispatch_async(queue, block);
    }
  }
}

- (BOOL)imageForDataSourceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (!identifierCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__REDataSourceCatalog_imageForDataSourceWithIdentifier_completion___block_invoke;
      block[3] = &unk_2785FA040;
      v25 = completionCopy;
      dispatch_async(queue, block);
      v11 = 0;
      overrideDataSourceImage = v25;
      goto LABEL_15;
    }

    v9 = [(NSCache *)self->_iconCache objectForKey:identifierCopy];
    if (v9)
    {
      overrideDataSourceImage = v9;
LABEL_5:
      (v8)[2](v8, overrideDataSourceImage);
      v11 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v13 = [(REDataSourceManager *)self->_dataSourceManager classForDataSourceIdentifier:identifierCopy];
    if (v13)
    {
      v14 = v13;
      overrideDataSourceImage = [(objc_class *)v13 overrideDataSourceImage];
      if (overrideDataSourceImage)
      {
        [(NSCache *)self->_iconCache setObject:overrideDataSourceImage forKey:identifierCopy];
        goto LABEL_5;
      }

      applicationBundleIdentifier = [(objc_class *)v14 applicationBundleIdentifier];
      if (!applicationBundleIdentifier)
      {
        v18 = self->_queue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __67__REDataSourceCatalog_imageForDataSourceWithIdentifier_completion___block_invoke_2;
        v22[3] = &unk_2785FA040;
        v23 = v8;
        dispatch_async(v18, v22);
        v16 = v23;
        goto LABEL_14;
      }
    }

    else
    {
      applicationBundleIdentifier = identifierCopy;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__REDataSourceCatalog_imageForDataSourceWithIdentifier_completion___block_invoke_3;
    v19[3] = &unk_2785FA6C0;
    v19[4] = self;
    v20 = applicationBundleIdentifier;
    v21 = v8;
    overrideDataSourceImage = applicationBundleIdentifier;
    [(REDataSourceCatalog *)self imageForApplicationWithIdentifier:overrideDataSourceImage completion:v19];

    v16 = v20;
LABEL_14:

    v11 = 0;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

void __67__REDataSourceCatalog_imageForDataSourceWithIdentifier_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
  }

  (*(a1[6] + 16))();
}

- (id)localizedNameForApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_7;
  }

  v5 = [(REAppNameCache *)self->_appNameCache localizedNameForApplicationWithIdentifier:identifierCopy];
  if (v5)
  {
    goto LABEL_8;
  }

  if (_fetchedInternalBuildOnceToken_2 != -1)
  {
    [REDataSourceCatalog localizedNameForApplicationWithIdentifier:];
  }

  if (_isInternalDevice_2 == 1)
  {
    v5 = identifierCopy;
  }

  else
  {
LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

uint64_t __65__REDataSourceCatalog_localizedNameForApplicationWithIdentifier___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_2 = result;
  return result;
}

- (id)localizedNameForDataSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_localizedNameCache objectForKeyedSubscript:identifierCopy];
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = [(REDataSourceManager *)self->_dataSourceManager classForDataSourceIdentifier:identifierCopy];
    if (v6)
    {
      v7 = v6;
      overrideLocalizedDataSourceName = [(objc_class *)v6 overrideLocalizedDataSourceName];
      if (overrideLocalizedDataSourceName)
      {
        v5 = overrideLocalizedDataSourceName;
        [(NSMutableDictionary *)self->_localizedNameCache setObject:overrideLocalizedDataSourceName forKeyedSubscript:identifierCopy];
      }

      else
      {
        applicationBundleIdentifier = [(objc_class *)v7 applicationBundleIdentifier];
        if (applicationBundleIdentifier)
        {
          v5 = [(REDataSourceCatalog *)self localizedNameForApplicationWithIdentifier:applicationBundleIdentifier];
          [(NSMutableDictionary *)self->_localizedNameCache setObject:v5 forKeyedSubscript:applicationBundleIdentifier];
        }

        else
        {
          v5 = 0;
        }
      }

      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)minimumSupportedSystemVersionForDataSourceWithIdentifier:(SEL)identifier
{
  result = self->_dataSourceManager;
  if (result)
  {
    return [($9FE6E10C8CE45DBC9A88DFDEA39A390D *)result minimumSupportedSystemVersionForDataSourceWithIdentifier:a4];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- (id)applicationIdentifierForDataSourceWithIdentifier:(id)identifier
{
  v3 = [(REDataSourceManager *)self->_dataSourceManager classForDataSourceIdentifier:identifier];

  return [(objc_class *)v3 applicationBundleIdentifier];
}

- (BOOL)wantsApplicationPrewarmForDataSourceWithIdentifier:(id)identifier
{
  dataSourceManager = self->_dataSourceManager;
  identifierCopy = identifier;
  v6 = [(REDataSourceManager *)dataSourceManager classForDataSourceIdentifier:identifierCopy];
  v7 = [(REDataSourceCatalog *)self applicationIdentifierForDataSourceWithIdentifier:identifierCopy];

  if (v7)
  {
    wantsAppPrewarm = [(objc_class *)v6 wantsAppPrewarm];
  }

  else
  {
    wantsAppPrewarm = 0;
  }

  return wantsAppPrewarm;
}

- (BOOL)requiresLocationInUseAssertonForDataSourceWithIdentifier:(id)identifier
{
  v3 = [(REDataSourceManager *)self->_dataSourceManager classForDataSourceIdentifier:identifier];

  return [(objc_class *)v3 wantsLocationInUseAsserton];
}

@end