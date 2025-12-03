@interface TPSAppController
+ (id)sharedInstance;
- (BOOL)hasLocalVariant:(id)variant;
- (NSArray)supportFlows;
- (NSArray)tipCollections;
- (NSArray)tips;
- (NSArray)userGuides;
- (TPSAppController)init;
- (TPSUserGuide)mainUserGuide;
- (id)assetConfigurationForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager;
- (id)collectionForIdentifier:(id)identifier;
- (id)collectionIdentifierForTipIdentifier:(id)identifier;
- (id)collectionSectionForIdentifier:(id)identifier;
- (id)collectionStatusForCollection:(id)collection;
- (id)delegateEnumerator;
- (id)tipForCorrelationIdentifier:(id)identifier;
- (id)tipForIdentifier:(id)identifier;
- (id)tipForIdentifier:(id)identifier includingCorrelation:(BOOL)correlation;
- (id)tipForVariantIdentifier:(id)identifier;
- (id)tipsForCollection:(id)collection;
- (id)tipsForCollectionIdentifier:(id)identifier;
- (id)userGuideWithIdentifier:(id)identifier;
- (void)addDelegate:(id)delegate;
- (void)collectionIdentifierViewed:(id)viewed;
- (void)contentForVariant:(id)variant completionHandler:(id)handler;
- (void)dealloc;
- (void)fetchAssetsWithAssetsConfiguration:(id)configuration completionHandler:(id)handler;
- (void)logInvalidSharedTipDisplayed:(id)displayed;
- (void)logSharedTipDisplayed:(id)displayed isEligible:(BOOL)eligible;
- (void)networkStateDidChange:(BOOL)change;
- (void)reloadAppGroupDefaults;
- (void)removeAllContent;
- (void)removeDelegate:(id)delegate;
- (void)removeNotificationForIdentifier:(id)identifier;
- (void)tipViewed:(id)viewed collectionIdentifier:(id)identifier;
- (void)updateContent;
- (void)updateSavedTipsContent;
@end

@implementation TPSAppController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_2 != -1)
  {
    +[TPSAppController sharedInstance];
  }

  v3 = sharedInstance_gTPSAppController;

  return v3;
}

uint64_t __34__TPSAppController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TPSAppController);
  v1 = sharedInstance_gTPSAppController;
  sharedInstance_gTPSAppController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)dealloc
{
  fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
  [fullTipContentManager invalidate];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v4 = +[TPSNetworkPathMonitor sharedMonitor];
  networkMonitorToken = [(TPSAppController *)self networkMonitorToken];
  [v4 removeObserverForKey:networkMonitorToken];

  v6.receiver = self;
  v6.super_class = TPSAppController;
  [(TPSAppController *)&v6 dealloc];
}

- (TPSAppController)init
{
  v20.receiver = self;
  v20.super_class = TPSAppController;
  v2 = [(TPSAppController *)&v20 init];
  if (v2)
  {
    v3 = +[TPSCommonDefines sharedInstance];
    tipsAccessAllowed = [v3 tipsAccessAllowed];

    if (tipsAccessAllowed)
    {
      v5 = objc_alloc_init(TPSFullTipContentManager);
      fullTipContentManager = v2->_fullTipContentManager;
      v2->_fullTipContentManager = v5;

      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
      delegates = v2->_delegates;
      v2->_delegates = v7;

      v2->_alwaysShowIntro = +[TPSDefaultsManager showCollectionIntro];
      objc_initWeak(&location, v2);
      v9 = objc_opt_new();
      networkMonitorToken = v2->_networkMonitorToken;
      v2->_networkMonitorToken = v9;

      v11 = +[TPSNetworkPathMonitor sharedMonitor];
      v12 = v2->_networkMonitorToken;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __24__TPSAppController_init__block_invoke;
      v17 = &unk_1E8101E70;
      objc_copyWeak(&v18, &location);
      [v11 addObserverForKey:v12 using:&v14];

      [(TPSAppController *)v2 reloadAppGroupDefaults:v14];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

void __24__TPSAppController_init__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkStateDidChange:a2];
}

- (NSArray)tips
{
  tipMap = [(TPSAppController *)self tipMap];
  allValues = [tipMap allValues];

  return allValues;
}

- (NSArray)supportFlows
{
  hmtCollectionMap = [(TPSAppController *)self hmtCollectionMap];
  allValues = [hmtCollectionMap allValues];

  return allValues;
}

- (NSArray)userGuides
{
  userGuideMap = [(TPSAppController *)self userGuideMap];
  allValues = [userGuideMap allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_13];

  return v4;
}

uint64_t __30__TPSAppController_userGuides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 text];
  v6 = [v4 text];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (NSArray)tipCollections
{
  v3 = MEMORY[0x1E695DF70];
  collections = [(TPSAppController *)self collections];
  v5 = [v3 arrayWithArray:collections];

  featuredCollection = [(TPSAppController *)self featuredCollection];

  if (featuredCollection)
  {
    featuredCollection2 = [(TPSAppController *)self featuredCollection];
    [v5 addObject:featuredCollection2];
  }

  if ([v5 count])
  {
    v8 = [v5 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reloadAppGroupDefaults
{
  v5 = +[TPSCommonDefines sharedInstance];
  reloadAppGroupDefaults = [v5 reloadAppGroupDefaults];
  appGroupDefaults = self->_appGroupDefaults;
  self->_appGroupDefaults = reloadAppGroupDefaults;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(TPSAppController *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(TPSAppController *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (id)tipsForCollection:(id)collection
{
  v22 = *MEMORY[0x1E69E9840];
  tipIdentifiers = [collection tipIdentifiers];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tipIdentifiers, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = tipIdentifiers;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        tipMap = [(TPSAppController *)self tipMap];
        v13 = [tipMap objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)assetConfigurationForAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager
{
  v6 = 0;
  if (assets && language)
  {
    managerCopy = manager;
    languageCopy = language;
    assetsCopy = assets;
    v6 = [[TPSAssetsConfiguration alloc] initWithAssets:assetsCopy language:languageCopy userInterfaceStyle:style assetFileInfoManager:managerCopy];
  }

  return v6;
}

- (id)delegateEnumerator
{
  delegates = [(TPSAppController *)self delegates];
  allObjects = [delegates allObjects];
  reverseObjectEnumerator = [allObjects reverseObjectEnumerator];

  return reverseObjectEnumerator;
}

- (void)removeAllContent
{
  [(TPSAppController *)self setCollectionMap:0];
  [(TPSAppController *)self setCollectionSectionMap:0];
  [(TPSAppController *)self setTipMap:0];
  [(TPSAppController *)self setChecklistCollection:0];
  [(TPSAppController *)self setFeaturedCollection:0];
  [(TPSAppController *)self setCollections:0];
  [(TPSAppController *)self setCollectionSections:0];
  [(TPSAppController *)self setHmtCollectionMap:0];

  [(TPSAppController *)self setUserGuideMap:0];
}

- (void)updateContent
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(TPSAppController *)self updatingContent])
  {
    [(TPSAppController *)self setUpdatingContent:1];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    delegateEnumerator = [(TPSAppController *)self delegateEnumerator];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v18[5];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
    if (v4)
    {
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 appController:self loadingContent:{-[TPSAppController updatingContent](self, "updatingContent")}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
      }

      while (v4);
    }

    objc_initWeak(&location, self);
    fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__TPSAppController_updateContent__block_invoke;
    v10[3] = &unk_1E8101F08;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    v10[5] = &v17;
    [fullTipContentManager contentWithCompletionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v17, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __33__TPSAppController_updateContent__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setLastFetchError:v9];
  v11 = &off_1C0155000;
  if (!v9)
  {
    v14 = +[TPSCommonDefines sharedInstance];
    v13 = [v14 language];

    v15 = [v7 language];
    v16 = [v13 isEqualToString:v15];
    v17 = [v7 collectionMap];
    v53 = [v7 tipMap];
    v51 = [v8 collectionMap];
    v52 = [v7 userGuideMap];
    v18 = [v7 featuredCollections];
    v55 = [v18 firstObject];

    v54 = [v7 orderedCollections];
    if (v16)
    {
      v19 = [WeakRetained featuredCollection];
      if ([v55 isEqual:v19])
      {
        v20 = [WeakRetained collections];
        if ([v54 isEqualToArray:v20])
        {
          v49 = v20;
          v21 = [WeakRetained tipMap];
          if ([v53 isEqualToDictionary:v21])
          {
            v48 = v21;
            v22 = [WeakRetained hmtCollectionMap];
            if ([v51 isEqualToDictionary:?])
            {
              v46 = [WeakRetained userGuideMap];
              v47 = [v52 isEqualToDictionary:v46];

              v23 = +[TPSNetworkPathMonitor sharedMonitor];
              [v23 stop];

              if (v47)
              {
LABEL_26:

                v11 = &off_1C0155000;
                goto LABEL_27;
              }

LABEL_18:
              v25 = +[TPSLogger default];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C00A7000, v25, OS_LOG_TYPE_DEFAULT, "Difference found with cache content, refreshing...", buf, 2u);
              }

              v26 = +[TPSAssetCacheController sharedInstance];
              v50 = v15;
              [v26 setLanguageCode:v15];

              [*(a1 + 32) contentWillUpdate];
              v27 = [v7 assetSizes];
              [WeakRetained setAssetSizes:v27];

              [WeakRetained setCollectionMap:v17];
              v28 = [v7 collectionSectionMap];
              [WeakRetained setCollectionSectionMap:v28];

              [WeakRetained setTipMap:v53];
              v29 = +[TPSCommonDefines checklistCollectionIdentifier];
              v30 = [v17 objectForKeyedSubscript:v29];
              [WeakRetained setChecklistCollection:v30];

              v31 = +[TPSCommonDefines savedTipsCollectionIdentifier];
              v32 = [v17 objectForKeyedSubscript:v31];
              [WeakRetained setSavedTipsCollection:v32];

              [WeakRetained setFeaturedCollection:v55];
              [WeakRetained setCollections:v54];
              v33 = [v7 collectionSections];
              [WeakRetained setCollectionSections:v33];

              v34 = [v7 userGuideCollection];
              [WeakRetained setUserGuideCollection:v34];

              v35 = [v8 collectionMap];
              [WeakRetained setHmtCollectionMap:v35];

              [WeakRetained setUserGuideMap:v52];
              if (+[TPSCommonDefines isInternalDevice])
              {
                v36 = [WeakRetained collectionSections];

                if (!v36)
                {
                  v37 = [v7 orderedCollections];
                  if ([v37 count])
                  {
                    v38 = [[TPSCollectionSection alloc] initWithIdentifier:@"Blank" collections:v37];
                    v65[0] = v38;
                    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
                    [WeakRetained setCollectionSections:v39];
                  }
                }
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __33__TPSAppController_updateContent__block_invoke_23;
              block[3] = &unk_1E8101EB8;
              v58 = v17;
              v15 = v50;
              v40 = v50;
              v42 = *(a1 + 32);
              v41 = *(a1 + 40);
              v59 = v40;
              v60 = v42;
              v61 = WeakRetained;
              v62 = v41;
              dispatch_async(MEMORY[0x1E69E96A0], block);
              [*(a1 + 32) updateSavedTipsContent];

              goto LABEL_26;
            }

            v21 = v48;
          }

          v20 = v49;
        }
      }
    }

    v24 = +[TPSNetworkPathMonitor sharedMonitor];
    [v24 stop];

    goto LABEL_18;
  }

  v12 = +[TPSLogger default];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = v9;
    _os_log_impl(&dword_1C00A7000, v12, OS_LOG_TYPE_DEFAULT, "Tips feed load failed with %@", buf, 0xCu);
  }

  if ([TPSNetworkPathMonitor isNetworkError:v9])
  {
    v13 = +[TPSNetworkPathMonitor sharedMonitor];
    [v13 start];
LABEL_27:
  }

  [WeakRetained setUpdatingContent:0];
  [WeakRetained setContentHasLoaded:1];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = *(v11 + 393);
  v56[2] = __33__TPSAppController_updateContent__block_invoke_25;
  v56[3] = &unk_1E8101EE0;
  v44 = *(a1 + 32);
  v43 = *(a1 + 40);
  v56[5] = WeakRetained;
  v56[6] = v43;
  v56[4] = v44;
  dispatch_async(MEMORY[0x1E69E96A0], v56);

  v45 = *MEMORY[0x1E69E9840];
}

void __33__TPSAppController_updateContent__block_invoke_23(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) allKeys];
  v4 = [v2 setWithArray:v3];

  v5 = *(a1 + 40);
  v6 = +[TPSCommonDefines sharedInstance];
  [v6 setLanguage:v5];

  v7 = +[TPSCommonDefines sharedInstance];
  [v7 activatedCollections:v4];

  v8 = [*(a1 + 48) delegateEnumerator];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) appControllerContentUpdated:{*(a1 + 56), v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __33__TPSAppController_updateContent__block_invoke_25(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegateEnumerator];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 appController:*(a1 + 32) loadingContent:{objc_msgSend(*(a1 + 40), "updatingContent", v12)}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)contentForVariant:(id)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  variantCopy = variant;
  fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
  [fullTipContentManager contentForVariant:variantCopy completionHandler:handlerCopy];
}

- (void)fetchAssetsWithAssetsConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
  [fullTipContentManager fetchAssetsWithAssetsConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (TPSUserGuide)mainUserGuide
{
  userGuideMap = [(TPSAppController *)self userGuideMap];
  v3 = +[TPSCommonDefines deviceGuideIdentifier];
  v4 = [userGuideMap objectForKeyedSubscript:v3];

  return v4;
}

- (id)userGuideWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  userGuideMap = [(TPSAppController *)self userGuideMap];
  v6 = [userGuideMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)collectionIdentifierForTipIdentifier:(id)identifier
{
  v3 = [(TPSAppController *)self tipForIdentifier:identifier];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = +[TPSCommonDefines sharedInstance];
  collectionIdentifiers = [v3 collectionIdentifiers];
  v6 = [v4 collectionIdentifierToUseForCollectionIdentifiers:collectionIdentifiers];

  if (!v6)
  {
LABEL_3:
    v6 = @"Unknown";
  }

  return v6;
}

- (id)collectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collectionMap = [(TPSAppController *)self collectionMap];
  v6 = [collectionMap objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    hmtCollectionMap = [(TPSAppController *)self hmtCollectionMap];
    v6 = [hmtCollectionMap objectForKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (id)tipForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tipMap = [(TPSAppController *)self tipMap];
  v6 = [tipMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)tipForIdentifier:(id)identifier includingCorrelation:(BOOL)correlation
{
  correlationCopy = correlation;
  identifierCopy = identifier;
  v7 = [(TPSAppController *)self tipForIdentifier:identifierCopy];
  if (!v7 && correlationCopy)
  {
    v7 = [(TPSAppController *)self tipForCorrelationIdentifier:identifierCopy];
  }

  return v7;
}

- (id)tipForCorrelationIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    tipMap = [(TPSAppController *)self tipMap];
    allValues = [tipMap allValues];

    v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          correlationID = [v10 correlationID];
          v12 = [correlationID isEqualToString:identifierCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)tipForVariantIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tipMap = [(TPSAppController *)self tipMap];
  allValues = [tipMap allValues];

  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        variantID = [v10 variantID];
        v12 = [variantID isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)tipsForCollectionIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  collectionMap = [(TPSAppController *)self collectionMap];
  v6 = [collectionMap objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    tipIdentifiers = [v6 tipIdentifiers];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tipIdentifiers, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = tipIdentifiers;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v6;
      v28 = identifierCopy;
      v12 = 0;
      v13 = 0;
      v14 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          tipMap = [(TPSAppController *)self tipMap];
          v18 = [tipMap objectForKeyedSubscript:v16];

          if ([v18 isIntro])
          {
            if (!v13)
            {
              v13 = v18;
            }
          }

          else if ([v18 isOutro])
          {
            if (!v12)
            {
              v12 = v18;
            }
          }

          else if (v18)
          {
            [v8 addObject:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);

      identifierCopy = v28;
      if (v13)
      {
        v19 = +[TPSCommonDefines sharedInstance];
        v20 = [v19 collectionStatusForCollectionIdentifier:v28];

        firstViewedDate = [v20 firstViewedDate];
        if (!firstViewedDate || (v22 = firstViewedDate, v23 = [(TPSAppController *)self alwaysShowIntro], v22, v23))
        {
          [v8 insertObject:v13 atIndex:0];
        }
      }

      if (v12)
      {
        [v8 addObject:v12];
      }

      v6 = v27;
    }

    else
    {

      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v8 = 0;
  }

  v24 = [v8 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)collectionStatusForCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[TPSCommonDefines sharedInstance];
  identifier = [collectionCopy identifier];

  v6 = [v4 collectionStatusForCollectionIdentifier:identifier];

  return v6;
}

- (id)collectionSectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collectionSectionMap = [(TPSAppController *)self collectionSectionMap];
  v6 = [collectionSectionMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)updateSavedTipsContent
{
  savedTipsCollection = [(TPSAppController *)self savedTipsCollection];

  if (savedTipsCollection)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__TPSAppController_updateSavedTipsContent__block_invoke;
    block[3] = &unk_1E8101340;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __42__TPSAppController_updateSavedTipsContent__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[TPSSavedTipsManager sharedInstance];
  v3 = [v2 identifiers];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__TPSAppController_updateSavedTipsContent__block_invoke_2;
  v20[3] = &unk_1E81015A0;
  v20[4] = *(a1 + 32);
  v4 = [v3 na_filter:v20];

  v5 = [v4 count];
  v6 = [*(a1 + 32) savedTipsCollection];
  v7 = v6;
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [v6 setTipIdentifiers:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(a1 + 32) delegateEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 appControllerUserUpdatedSavedTips:*(a1 + 32)];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

BOOL __42__TPSAppController_updateSavedTipsContent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 tipMap];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5 != 0;
}

- (void)tipViewed:(id)viewed collectionIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  viewedCopy = viewed;
  identifierCopy = identifier;
  if ([viewedCopy length])
  {
    fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
    [fullTipContentManager markTipViewed:viewedCopy];

    fullTipContentManager2 = [(TPSAppController *)self fullTipContentManager];
    [fullTipContentManager2 removeNotificationForIdentifier:viewedCopy];

    delegateEnumerator = [(TPSAppController *)self delegateEnumerator];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [delegateEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(delegateEnumerator);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 appControllerTipViewed:self tipIdentifier:viewedCopy collectionIdentifier:identifierCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [delegateEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)collectionIdentifierViewed:(id)viewed
{
  viewedCopy = viewed;
  if ([viewedCopy length])
  {
    v4 = +[TPSCommonDefines sharedInstance];
    [v4 viewedCollection:viewedCopy];

    fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
    [fullTipContentManager removeNotificationForIdentifier:viewedCopy];
  }
}

- (void)removeNotificationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    fullTipContentManager = [(TPSAppController *)self fullTipContentManager];
    [fullTipContentManager removeNotificationForIdentifier:identifierCopy];
  }
}

- (void)networkStateDidChange:(BOOL)change
{
  v16 = *MEMORY[0x1E69E9840];
  if (change)
  {
    [(TPSAppController *)self updateContent];
    delegateEnumerator = [(TPSAppController *)self delegateEnumerator];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [delegateEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(delegateEnumerator);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 appControllerNetworkStateDidChangeToReachable:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [delegateEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasLocalVariant:(id)variant
{
  variantCopy = variant;
  selfCopy = self;
  correlationID = [variantCopy correlationID];
  if (correlationID)
  {
    v7 = correlationID;
    v8 = [(TPSAppController *)selfCopy tipForCorrelationIdentifier:correlationID];

    if (!v8)
    {
      return 0;
    }

    v9 = 1;
    selfCopy = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (void)logSharedTipDisplayed:(id)displayed isEligible:(BOOL)eligible
{
  displayedCopy = displayed;
  selfCopy = self;
  TPSAppController.logSharedTipDisplayed(tip:isEligible:)(displayedCopy, eligible);
}

- (void)logInvalidSharedTipDisplayed:(id)displayed
{
  displayedCopy = displayed;
  selfCopy = self;
  _sSo16TPSAppControllerC8TipsCoreE28logInvalidSharedTipDisplayed3tipySo6TPSTipC_tF_0(displayedCopy);
}

@end