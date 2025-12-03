@interface TPSTipsManager
+ (BOOL)deviceLocalesContainLanguage:(id)language;
+ (BOOL)needImmediateNotificationForType:(unint64_t)type;
+ (BOOL)tipKitProcessingEligible;
+ (id)experiment;
+ (id)immediateNotificationIdentifierForType:(unint64_t)type;
+ (id)rulesVersion;
+ (void)presentReentryNotificationIfNeeded;
+ (void)removeWelcomeDocumentCache;
+ (void)removeWidgetUpdateDate;
- (BOOL)checklistCollectionHasMinSuggestedTips:(id)tips tipMap:(id)map;
- (BOOL)hasWidgetDocument;
- (BOOL)isContentIdentifierHoldoutCamp:(id)camp;
- (BOOL)isHardwareWelcome;
- (BOOL)shouldPerformWidgetUpdate;
- (BOOL)widgetController:(id)controller validForDocument:(id)document documentDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap;
- (NSDictionary)cachedUserGuideMap;
- (NSString)lastFetchedLanguage;
- (TPSTipsManager)initWithTipStatusController:(id)controller;
- (TPSTipsManagerDelegate)delegate;
- (id)categorizedMapWithDocumentMap:(id)map;
- (id)collectionSectionMapWithCollections:(id)collections availableCollectionSections:(id)sections collectionIdToCollectionLabelMap:(id)map;
- (id)collectionSectionsFromCollectionMap:(id)map exclude:(id)exclude;
- (id)collectionSectionsWithEligibleCollectionSections:(id)sections collectionSectionMap:(id)map featuredCollection:(id)collection;
- (id)collectionStatusForCollection:(id)collection;
- (id)featureCollectionFromCollectionMap:(id)map collectionOrder:(id)order tipMap:(id)tipMap;
- (id)hmtFeaturedCollectionsWithCollectionMap:(id)map collectionDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap;
- (id)processUserGuidesFromContentPackage:(id)package;
- (id)updateDocumentContent:(id)content withClientConditions:(id)conditions metadata:(id)metadata checklistCompletedConditions:(id)completedConditions usingDictionary:(id)dictionary;
- (id)updatedHMTCollectionSectionMapFromMap:(id)map featuredCollections:(id)collections;
- (id)welcomeCollectionFromContentPackage:(id)package;
- (id)welcomeDocumentFromContentPackage:(id)package;
- (void)_updatePauseStatus:(BOOL)status;
- (void)contentForVariantIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)contentFromOrigin:(BOOL)origin systemEducationRequest:(BOOL)request processTipKitContent:(BOOL)content contextualEligibility:(BOOL)eligibility widgetEligibility:(BOOL)widgetEligibility notificationEligibility:(BOOL)notificationEligibility preferredNotificationIdentifiers:(id)identifiers shouldDeferBlock:(id)self0 completionHandler:(id)self1;
- (void)contentWithMetaDictionary:(id)dictionary documentsDictionary:(id)documentsDictionary processTipKitContent:(BOOL)content contextualEligibility:(BOOL)eligibility widgetEligibility:(BOOL)widgetEligibility notificationEligibility:(BOOL)notificationEligibility userGuideEligibility:(BOOL)guideEligibility preferredNotificationIdentifiers:(id)self0 completionHandler:(id)self1;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)finalEligibleContentWithCollections:(id)collections collectionsMap:(id)map collectionDeliveryInfoMap:(id)infoMap eligibleTipIdentifiers:(id)identifiers eligibleContextualTipIdentifiers:(id)tipIdentifiers allFullTipsMap:(id)tipsMap tipDeliveryInfoMap:(id)deliveryInfoMap deliveryInfoMap:(id)self0 metadata:(id)self1 completionHandler:(id)self2;
- (void)processClientConditions:(id)conditions targetingCache:(id)cache completionHandler:(id)handler;
- (void)processCollection:(id)collection collectionsMap:(id)map deliveryInfoMap:(id)infoMap ignoreSection:(BOOL)section completionHandler:(id)handler;
- (void)processTipDocumentsDictionary:(id)dictionary completionHandler:(id)handler;
- (void)processTipsDeliveryInfo:(id)info deliveryInfoMap:(id)map targetingCache:(id)cache completionHandler:(id)handler;
- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestWithURL:(id)l identifier:(id)identifier attributionIdentifier:(id)attributionIdentifier requestType:(id)type priority:(float)priority shouldDeferBlock:(id)block completionHandler:(id)handler;
- (void)setCachedUserGuideMap:(id)map;
- (void)setLastFetchedLanguage:(id)language;
- (void)updateContentIfOverrideImmediately:(BOOL)immediately;
- (void)updateSupplementalIdentifiersForIdentifier:(id)identifier fromDictionary:(id)dictionary;
- (void)userGuideMapWithUserGuideCollection:(id)collection tipMap:(id)map completionHandler:(id)handler;
@end

@implementation TPSTipsManager

+ (BOOL)needImmediateNotificationForType:(unint64_t)type
{
  v3 = [objc_opt_class() immediateNotificationIdentifierForType:type];
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  v5 = [mEMORY[0x277D716E8] collectionStatusForCollectionIdentifier:v3];

  if ([v5 canNotify])
  {
    firstViewedDate = [v5 firstViewedDate];
    v7 = firstViewedDate == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)deviceLocalesContainLanguage:(id)language
{
  v3 = MEMORY[0x277D71708];
  languageCopy = language;
  v5 = [v3 preferredLocalizationsWithCount:5];
  v6 = [v5 containsObject:languageCopy];

  return v6;
}

+ (id)immediateNotificationIdentifierForType:(unint64_t)type
{
  if (type == 2)
  {
    return @"HomePod";
  }

  else
  {
    return 0;
  }
}

+ (void)removeWelcomeDocumentCache
{
  welcome = [MEMORY[0x277D71778] welcome];
  if (os_log_type_enabled(welcome, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_232D6F000, welcome, OS_LOG_TYPE_DEFAULT, "Remove welcome document cache", v3, 2u);
  }

  [MEMORY[0x277D717A8] archivedDataWithRootObject:0 forKey:@"TPSWelcomeDocumentCache"];
}

+ (void)removeWidgetUpdateDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"TPSWidgetUpdateDate"];
}

+ (id)rulesVersion
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"DeliveryInfoVersion"];

  return v3;
}

+ (id)experiment
{
  v2 = MEMORY[0x277D717A8];
  v3 = objc_opt_class();

  return [v2 unarchivedObjectOfClass:v3 forKey:@"Experiment"];
}

+ (BOOL)tipKitProcessingEligible
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"TPSTipKitProcessedDate"];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4) > 43200.0 || v4 >= 0.0;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [standardUserDefaults setObject:v6 forKey:@"TPSTipKitProcessedDate"];

    [standardUserDefaults synchronize];
  }

  else
  {
    daemon = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "TipKit Content Processing has already ran within the last 12 hours, skipping.", v9, 2u);
    }
  }

  return v5;
}

- (TPSTipsManager)initWithTipStatusController:(id)controller
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = TPSTipsManager;
  v6 = [(TPSTipsManager *)&v25 init];
  if (v6)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6->_contextualTipsInactive = [standardUserDefaults BOOLForKey:@"contextualTipsInactive"];
    v8 = +[TPSTipsManager rulesVersion];
    rulesVersion = v6->_rulesVersion;
    v6->_rulesVersion = v8;

    objc_storeStrong(&v6->_tipStatusController, controller);
    v10 = +[TPSTipsManager experiment];
    experiment = v6->_experiment;
    v6->_experiment = v10;

    if (!v6->_experiment)
    {
      v12 = objc_alloc_init(MEMORY[0x277D71758]);
      v13 = v6->_experiment;
      v6->_experiment = v12;
    }

    discoverability = [MEMORY[0x277D71778] discoverability];
    if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(TPSExperiment *)v6->_experiment debugDescription];
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Current experiment %@", buf, 0xCu);
    }

    array = [MEMORY[0x277CBEB18] array];
    sessionItems = v6->_sessionItems;
    v6->_sessionItems = array;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.tipsManager.syncQueue", v18);
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x277D717F0]);
    widgetController = v6->_widgetController;
    v6->_widgetController = v21;

    [(TPSWidgetController *)v6->_widgetController setDelegate:v6];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasWidgetDocument
{
  widgetController = [(TPSTipsManager *)self widgetController];
  preferredDocument = [widgetController preferredDocument];
  v4 = preferredDocument != 0;

  return v4;
}

- (void)_updatePauseStatus:(BOOL)status
{
  if (self->_contextualTipsInactive != status)
  {
    self->_contextualTipsInactive = status;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (self->_contextualTipsInactive)
    {
      [standardUserDefaults setBool:1 forKey:@"contextualTipsInactive"];
    }

    else
    {
      [standardUserDefaults removeObjectForKey:@"contextualTipsInactive"];
    }

    [standardUserDefaults synchronize];
  }
}

- (BOOL)isContentIdentifierHoldoutCamp:(id)camp
{
  campCopy = camp;
  experiment = [(TPSTipsManager *)self experiment];
  if ([experiment camp] == 2)
  {
    tipStatusController = [(TPSTipsManager *)self tipStatusController];
    v7 = [tipStatusController isOverrideHoldoutForIdentifier:campCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)updateContentIfOverrideImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  requestInterval = [MEMORY[0x277D71740] requestInterval];
  v6 = requestInterval;
  if (requestInterval)
  {
    [requestInterval doubleValue];
    v8 = v7;
    if (v7 > 0.0 || (v7 == 0.0 ? (v9 = TPSNumberOfOverrideFetch == 0) : (v9 = 0), v9))
    {
      objc_initWeak(&location, self);
      notificationController = [(TPSTipsManager *)self notificationController];
      isNotificationSettingValid = [notificationController isNotificationSettingValid];

      if (isNotificationSettingValid)
      {
        delegate = [(TPSTipsManager *)self delegate];
        v13 = [delegate canCheckForNewTipNotification:self];
      }

      else
      {
        delegate = [(TPSTipsManager *)self notificationController];
        [delegate clearNotificationCache];
        v13 = 0;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke;
      aBlock[3] = &unk_2789AFB00;
      objc_copyWeak(&v22, &location);
      v23 = v13;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      ++TPSNumberOfOverrideFetch;
      if (immediatelyCopy)
      {
        v14[2](v14);
      }

      else
      {
        v16 = MEMORY[0x277CBEBB8];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke_2_118;
        v19[3] = &unk_2789AFB28;
        v20 = v14;
        v17 = [v16 timerWithTimeInterval:0 repeats:v19 block:v8];
        currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
        [currentRunLoop addTimer:v17 forMode:*MEMORY[0x277CBE640]];
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }
}

void __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke_2;
  v4[3] = &unk_2789AFAD8;
  objc_copyWeak(&v5, (a1 + 40));
  v6 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  [WeakRetained contentFromOrigin:1 systemEducationRequest:1 processTipKitContent:1 contextualEligibility:1 widgetEligibility:1 notificationEligibility:v3 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v4];

  objc_destroyWeak(&v5);
}

void __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained delegate];
  [v11 tipsManagerContentUpdateOverrideCompleted:WeakRetained contentPackage:v9 hmtContentPackage:v8 shouldUpdateNotification:*(a1 + 48) error:v7];

  v12 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232D6F000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling for next update content override...", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TPSTipsManager_updateContentIfOverrideImmediately___block_invoke_114;
  block[3] = &unk_2789AFAB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)contentForVariantIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = [identifiersCopy componentsJoinedByString:{@", "}];
  v9 = [MEMORY[0x277D71708] contentRequestURLWithContentMapHash:0 variantIdentifiers:v8 useLanguageDefault:0];
  v10 = [MEMORY[0x277CCAB70] requestWithURL:v9];
  [v10 setCachePolicy:5];
  objc_initWeak(&location, self);
  syncQueue = [(TPSTipsManager *)self syncQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke;
  v16[3] = &unk_2789AFBA0;
  objc_copyWeak(&v21, &location);
  v17 = v10;
  v18 = v8;
  v19 = identifiersCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifiersCopy;
  v14 = v8;
  v15 = v10;
  dispatch_async(syncQueue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v3 = [MEMORY[0x277D71768] sharedInstance];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *MEMORY[0x277D71820];
  v7 = *MEMORY[0x277CCA790];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke_129;
  v16 = &unk_2789AFB78;
  v17 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = WeakRetained;
  v19 = v8;
  v20 = &v21;
  LODWORD(v9) = v7;
  v10 = [v3 formattedDataForRequest:v4 identifier:v5 attributionIdentifier:@"com.apple.tipsd" requestType:v6 priority:&v13 completionHandler:v9];
  v11 = v22[5];
  v22[5] = v10;

  if (v22[5])
  {
    v12 = [WeakRetained sessionItems];
    [v12 addObject:v22[5]];
  }

  _Block_object_dispose(&v21, 8);
}

void __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke_129(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 0;
  if (!v10 && (isKindOfClass & 1) != 0)
  {
    v25 = [MEMORY[0x277D71780] metadataFromDictionary:v9];
    v13 = [objc_alloc(MEMORY[0x277D71780]) initWithDictionary:v25];
    v26 = a1;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v27 = v9;
    v14 = [MEMORY[0x277D71748] documentsForDictionary:v9];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      v18 = *MEMORY[0x277D71940];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v29 + 1) + 8 * i) TPSSafeDictionaryForKey:v18];
          v21 = [objc_alloc(MEMORY[0x277D717B0]) initWithDictionary:v20 metadata:v13];
          [v12 addObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v10 = 0;
    v9 = v27;
    a1 = v26;
  }

  (*(*(a1 + 48) + 16))();
  v22 = [*(a1 + 40) syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke_2;
  block[3] = &unk_2789AFB50;
  v23 = *(a1 + 56);
  block[4] = *(a1 + 40);
  block[5] = v23;
  dispatch_async(v22, block);

  v24 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_contentForVariantIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionItems];
  [v2 removeObject:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)contentFromOrigin:(BOOL)origin systemEducationRequest:(BOOL)request processTipKitContent:(BOOL)content contextualEligibility:(BOOL)eligibility widgetEligibility:(BOOL)widgetEligibility notificationEligibility:(BOOL)notificationEligibility preferredNotificationIdentifiers:(id)identifiers shouldDeferBlock:(id)self0 completionHandler:(id)self1
{
  notificationEligibilityCopy = notificationEligibility;
  eligibilityCopy = eligibility;
  widgetEligibilityCopy = widgetEligibility;
  requestCopy = request;
  originCopy = origin;
  v72 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  blockCopy = block;
  handlerCopy = handler;
  if (identifiersCopy)
  {
    v17 = 1;
  }

  else
  {
    v17 = +[TPSNotificationController isValidNotificationInterval];
  }

  if (!+[TPSNotificationController supportsNotification]|| !v17)
  {

    identifiersCopy = 0;
    notificationEligibilityCopy = 0;
  }

  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110402;
    *&buf[4] = originCopy;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = requestCopy;
    HIWORD(v69) = 1024;
    LODWORD(v70) = eligibilityCopy;
    WORD2(v70) = 1024;
    *(&v70 + 6) = widgetEligibilityCopy;
    WORD5(v70) = 1024;
    HIDWORD(v70) = notificationEligibilityCopy;
    LOWORD(v71) = 2112;
    *(&v71 + 2) = identifiersCopy;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "update content from origin: %d systemEducationRequest: %d contextualEligibility:%d widgetEligibility:%d notificationEligibility: %d preferredNotificationIdentifiers: %@", buf, 0x2Au);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v69 = buf;
  *&v70 = 0x3032000000;
  *(&v70 + 1) = __Block_byref_object_copy__1;
  *&v71 = __Block_byref_object_dispose__1;
  *(&v71 + 1) = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__1;
  v65[4] = __Block_byref_object_dispose__1;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__1;
  v63[4] = __Block_byref_object_dispose__1;
  v64 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__1;
  v61[4] = __Block_byref_object_dispose__1;
  v19 = @"com.apple.tipsd";
  if (!requestCopy)
  {
    v19 = 0;
  }

  v62 = v19;
  v20 = [MEMORY[0x277D71790] transactionWithName:@"com.apple.TipsDaemon.updateContent"];
  v21 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v21 setMaxConcurrentOperationCount:1];
  v22 = objc_alloc(MEMORY[0x277D716B8]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke;
  v56[3] = &unk_2789AFBF0;
  v56[4] = self;
  v58 = v61;
  v23 = blockCopy;
  v57 = v23;
  v59 = buf;
  v60 = v63;
  v24 = [v22 initWithAsyncBlock:v56];
  [v21 addOperation:v24];
  v25 = objc_alloc(MEMORY[0x277D716B8]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_3;
  v50[3] = &unk_2789AFC18;
  v52 = buf;
  v53 = v63;
  v50[4] = self;
  v54 = v61;
  v26 = v23;
  v51 = v26;
  v55 = v65;
  v27 = [v25 initWithAsyncBlock:v50];
  [v27 addDependency:v24];
  [v21 addOperation:v27];
  v28 = objc_alloc(MEMORY[0x277D716B8]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_5;
  v38[3] = &unk_2789AFC68;
  objc_copyWeak(&v45, &location);
  v42 = buf;
  v43 = v65;
  v44 = v63;
  contentCopy = content;
  v47 = eligibilityCopy;
  v48 = widgetEligibilityCopy;
  v49 = notificationEligibilityCopy;
  v29 = identifiersCopy;
  v39 = v29;
  v30 = handlerCopy;
  v41 = v30;
  v31 = v20;
  v40 = v31;
  v32 = [v28 initWithAsyncBlock:v38];
  [v32 addDependency:v27];
  [v21 addOperation:v32];

  objc_destroyWeak(&v45);
  _Block_object_dispose(v61, 8);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);

  v33 = *MEMORY[0x277D85DE8];
}

void __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71708] metaRequestURL];
  v5 = *MEMORY[0x277D71928];
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = *MEMORY[0x277D71810];
  v9 = *MEMORY[0x277CCA790];
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_2;
  v13[3] = &unk_2789AFBC8;
  v15 = *(a1 + 56);
  v14 = v3;
  v11 = v3;
  LODWORD(v12) = v9;
  [v10 requestWithURL:v4 identifier:v5 attributionIdentifier:v7 requestType:v8 priority:v6 shouldDeferBlock:v13 completionHandler:v12];
}

void __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v13 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();
}

void __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[6] + 8) + 40))
  {
    v5 = *(*(a1[7] + 8) + 40) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [MEMORY[0x277D71780] metadataFromDictionary:?];
    v7 = [v6 TPSSafeStringForKey:@"contentMapHash"];
    v8 = [MEMORY[0x277D71708] contentRequestURLWithContentMapHash:v7];
    v9 = *MEMORY[0x277D71920];
    v10 = *(*(a1[8] + 8) + 40);
    v11 = *MEMORY[0x277D71828];
    v12 = *MEMORY[0x277CCA790];
    v13 = a1[4];
    v14 = a1[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_4;
    v17[3] = &unk_2789AFBC8;
    v15 = a1[7];
    v19 = a1[9];
    v20 = v15;
    v18 = v4;
    LODWORD(v16) = v12;
    [v13 requestWithURL:v8 identifier:v9 attributionIdentifier:v10 requestType:v11 priority:v14 shouldDeferBlock:v17 completionHandler:v16];
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

void __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v13 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();
}

void __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5 && (v6 = *(*(*(a1 + 64) + 8) + 40)) != 0 && !*(*(*(a1 + 72) + 8) + 40))
  {
    v13 = *(a1 + 88);
    v8 = *(a1 + 89);
    v9 = *(a1 + 90);
    v10 = *(a1 + 91);
    v11 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_6;
    v14[3] = &unk_2789AFC40;
    v16 = *(a1 + 48);
    v15 = *(a1 + 40);
    v17 = v3;
    LOBYTE(v12) = 1;
    [WeakRetained contentWithMetaDictionary:v5 documentsDictionary:v6 processTipKitContent:v13 contextualEligibility:v8 widgetEligibility:v9 notificationEligibility:v10 userGuideEligibility:v12 preferredNotificationIdentifiers:v11 completionHandler:v14];
  }

  else
  {
    v7 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) endTransaction];
    (*(v3 + 2))(v3, 0);
  }
}

uint64_t __212__TPSTipsManager_contentFromOrigin_systemEducationRequest_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_preferredNotificationIdentifiers_shouldDeferBlock_completionHandler___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) endTransaction];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)requestWithURL:(id)l identifier:(id)identifier attributionIdentifier:(id)attributionIdentifier requestType:(id)type priority:(float)priority shouldDeferBlock:(id)block completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  attributionIdentifierCopy = attributionIdentifier;
  typeCopy = type;
  blockCopy = block;
  handlerCopy = handler;
  v22 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  [v22 setCachePolicy:5];
  if (!v22)
  {
    v23 = @"com.apple.TipsDaemon.ContentFetchError";
    v24 = 1;
    goto LABEL_6;
  }

  if (blockCopy && blockCopy[2](blockCopy))
  {
    v23 = @"com.apple.tips.TPSTipsManager";
    v24 = 4;
LABEL_6:
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:v24 userInfo:0];
    v26 = v51[5];
    v51[5] = v25;
  }

  if (v51[5])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__1;
    v47 = __Block_byref_object_dispose__1;
    v48 = 0;
    mEMORY[0x277D71768] = [MEMORY[0x277D71768] sharedInstance];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke;
    v34[3] = &unk_2789AFCB8;
    v40 = &v50;
    v38 = blockCopy;
    v35 = lCopy;
    v36 = identifierCopy;
    selfCopy = self;
    objc_copyWeak(&v42, &location);
    v41 = &v43;
    v39 = handlerCopy;
    *&v28 = priority;
    v29 = [mEMORY[0x277D71768] formattedDataForRequest:v22 identifier:v36 attributionIdentifier:attributionIdentifierCopy requestType:typeCopy priority:v34 completionHandler:v28];
    v30 = v44[5];
    v44[5] = v29;

    if (v44[5])
    {
      syncQueue = [(TPSTipsManager *)self syncQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke_2;
      block[3] = &unk_2789AFC90;
      objc_copyWeak(&v33, &location);
      block[4] = &v43;
      dispatch_async(syncQueue, block);

      objc_destroyWeak(&v33);
    }

    _Block_object_dispose(&v43, 8);

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v50, 8);
}

void __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a7);
  if (!v16)
  {
    v21 = *(a1 + 56);
    if (v21)
    {
      if ((*(v21 + 16))())
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.tips.TPSTipsManager" code:4 userInfo:0];
        v23 = *(*(a1 + 72) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;
      }
    }
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = *(a1 + 32);
      v40 = *MEMORY[0x277CCA748];
      v41 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v20 = [v17 errorWithDomain:@"com.apple.tips.TPSTipsManager" code:5 userInfo:v19];
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA748];
      v43[0] = *(a1 + 32);
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v20 = [v25 errorWithDomain:@"com.apple.tips.TPSTipsManager" code:6 userInfo:v19];
    }

    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v20;
  }

LABEL_11:
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v28 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      v30 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v37 = v29;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_232D6F000, v28, OS_LOG_TYPE_DEFAULT, "%@ call error: %@", buf, 0x16u);
    }
  }

  v31 = [*(a1 + 48) syncQueue];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke_146;
  v34[3] = &unk_2789AFC90;
  objc_copyWeak(&v35, (a1 + 88));
  v34[4] = *(a1 + 80);
  dispatch_async(v31, v34);

  (*(*(a1 + 64) + 16))(*(a1 + 64), v13, *(*(*(a1 + 72) + 8) + 40), v32);
  objc_destroyWeak(&v35);

  v33 = *MEMORY[0x277D85DE8];
}

void __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke_146(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sessionItems];
  [v2 removeObject:*(*(*(a1 + 32) + 8) + 40)];
}

void __122__TPSTipsManager_requestWithURL_identifier_attributionIdentifier_requestType_priority_shouldDeferBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sessionItems];
  [v2 addObject:*(*(*(a1 + 32) + 8) + 40)];
}

- (void)contentWithMetaDictionary:(id)dictionary documentsDictionary:(id)documentsDictionary processTipKitContent:(BOOL)content contextualEligibility:(BOOL)eligibility widgetEligibility:(BOOL)widgetEligibility notificationEligibility:(BOOL)notificationEligibility userGuideEligibility:(BOOL)guideEligibility preferredNotificationIdentifiers:(id)self0 completionHandler:(id)self1
{
  notificationEligibilityCopy = notificationEligibility;
  widgetEligibilityCopy = widgetEligibility;
  eligibilityCopy = eligibility;
  contentCopy = content;
  v245 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  documentsDictionaryCopy = documentsDictionary;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v96 = [MEMORY[0x277D71780] metadataFromDictionary:dictionaryCopy];
  v14 = [objc_alloc(MEMORY[0x277D71780]) initWithDictionary:v96];
  v15 = v14;
  if (v14)
  {
    v86 = v14;
    objc_initWeak(&location, self);
    v92 = [v96 TPSSafeStringForKey:@"rulesHash"];
    rulesVersion = [(TPSTipsManager *)self rulesVersion];
    v17 = [rulesVersion isEqualToString:v92];

    if ((v17 & 1) == 0)
    {
      [(TPSTipsManager *)self setRulesVersion:v92];
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setObject:v92 forKey:@"DeliveryInfoVersion"];
      [standardUserDefaults synchronize];
    }

    v87 = [v96 TPSSafeDictionaryForKey:@"experiment"];
    experiment = [(TPSTipsManager *)self experiment];
    camp = [experiment camp];

    experiment2 = [(TPSTipsManager *)self experiment];
    v22 = [experiment2 updateWithExperimentDictionary:v87];

    if (v22)
    {
      [(TPSTipsManager *)self _updateExperimentCache];
      discoverability = [MEMORY[0x277D71778] discoverability];
      if (os_log_type_enabled(discoverability, OS_LOG_TYPE_DEFAULT))
      {
        experiment3 = [(TPSTipsManager *)self experiment];
        v25 = [experiment3 debugDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_232D6F000, discoverability, OS_LOG_TYPE_DEFAULT, "Experiment changed %@", &buf, 0xCu);
      }

      experiment4 = [(TPSTipsManager *)self experiment];
      camp2 = [experiment4 camp];

      v29 = camp == 2 && camp2 == 1;
    }

    else
    {
      v29 = 0;
    }

    syncQueue = [(TPSTipsManager *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke;
    block[3] = &unk_2789AFCE0;
    objc_copyWeak(&v238, &location);
    v31 = v86;
    v237 = v31;
    dispatch_async(syncQueue, block);

    v32 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v32 setMaxConcurrentOperationCount:4];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v241 = 0x3032000000;
    v242 = __Block_byref_object_copy__1;
    v243 = __Block_byref_object_dispose__1;
    v244 = 0;
    v33 = objc_alloc(MEMORY[0x277D716B8]);
    v233[0] = MEMORY[0x277D85DD0];
    v233[1] = 3221225472;
    v233[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2;
    v233[3] = &unk_2789AFD30;
    v233[4] = self;
    v34 = documentsDictionaryCopy;
    v234 = v34;
    p_buf = &buf;
    v35 = [v33 initWithAsyncBlock:v233];
    [v35 setName:@"process-tips"];
    v91 = v35;
    v89 = objc_alloc_init(TPSTargetingCache);
    v231[0] = 0;
    v231[1] = v231;
    v231[2] = 0x3032000000;
    v231[3] = __Block_byref_object_copy__1;
    v231[4] = __Block_byref_object_dispose__1;
    v232 = 0;
    v229[0] = 0;
    v229[1] = v229;
    v229[2] = 0x3032000000;
    v229[3] = __Block_byref_object_copy__1;
    v229[4] = __Block_byref_object_dispose__1;
    v230 = 0;
    v227[0] = 0;
    v227[1] = v227;
    v227[2] = 0x3032000000;
    v227[3] = __Block_byref_object_copy__1;
    v227[4] = __Block_byref_object_dispose__1;
    v228 = 0;
    v225[0] = 0;
    v225[1] = v225;
    v225[2] = 0x3032000000;
    v225[3] = __Block_byref_object_copy__1;
    v225[4] = __Block_byref_object_dispose__1;
    v226 = 0;
    v223[0] = 0;
    v223[1] = v223;
    v223[2] = 0x3032000000;
    v223[3] = __Block_byref_object_copy__1;
    v223[4] = __Block_byref_object_dispose__1;
    v224 = 0;
    v221[0] = 0;
    v221[1] = v221;
    v221[2] = 0x3032000000;
    v221[3] = __Block_byref_object_copy__1;
    v221[4] = __Block_byref_object_dispose__1;
    v222 = 0;
    v36 = [dictionaryCopy TPSSafeStringForKey:@"rootCollectionId"];
    v37 = [dictionaryCopy TPSSafeDictionaryForKey:@"collectionsMap"];
    v38 = [MEMORY[0x277D71748] deliveryInfoForDictionary:dictionaryCopy];
    [v37 TPSSafeDictionaryForKey:v36];
    v78 = v74 = v34;
    v39 = [v78 TPSSafeDictionaryForKey:@"collection"];
    v40 = objc_alloc(MEMORY[0x277D716B8]);
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_4;
    v209[3] = &unk_2789AFD80;
    v75 = v36;
    v210 = v75;
    selfCopy = self;
    v41 = v39;
    v212 = v41;
    v76 = v37;
    v213 = v76;
    v42 = v38;
    v214 = v42;
    v215 = v231;
    v216 = v229;
    v217 = v225;
    v218 = v223;
    v219 = v221;
    v220 = v227;
    v43 = [v40 initWithAsyncBlock:v209];
    [v43 setName:@"process-collections"];
    v85 = v43;
    v207[0] = 0;
    v207[1] = v207;
    v207[2] = 0x3032000000;
    v207[3] = __Block_byref_object_copy__1;
    v207[4] = __Block_byref_object_dispose__1;
    v208 = 0;
    v205[0] = 0;
    v205[1] = v205;
    v205[2] = 0x3032000000;
    v205[3] = __Block_byref_object_copy__1;
    v205[4] = __Block_byref_object_dispose__1;
    v206 = 0;
    v44 = [dictionaryCopy TPSSafeDictionaryForKey:@"documentsMap"];
    v79 = v41;
    if ([v44 count])
    {
      v45 = objc_alloc(MEMORY[0x277D716B8]);
      v198[0] = MEMORY[0x277D85DD0];
      v198[1] = 3221225472;
      v198[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_158;
      v198[3] = &unk_2789AFDD0;
      objc_copyWeak(&v204, &location);
      v199 = v44;
      v200 = v42;
      v201 = v89;
      v202 = v207;
      v203 = v205;
      v94 = [v45 initWithAsyncBlock:v198];
      [v94 setName:@"process-tips-deliverInfo"];

      objc_destroyWeak(&v204);
    }

    else
    {
      v94 = 0;
    }

    v196[0] = 0;
    v196[1] = v196;
    v196[2] = 0x3032000000;
    v196[3] = __Block_byref_object_copy__1;
    v196[4] = __Block_byref_object_dispose__1;
    v197 = 0;
    v194[0] = 0;
    v194[1] = v194;
    v194[2] = 0x3032000000;
    v194[3] = __Block_byref_object_copy__1;
    v194[4] = __Block_byref_object_dispose__1;
    v195 = 0;
    v192[0] = 0;
    v192[1] = v192;
    v192[2] = 0x3032000000;
    v192[3] = __Block_byref_object_copy__1;
    v192[4] = __Block_byref_object_dispose__1;
    v193 = 0;
    v190[0] = 0;
    v190[1] = v190;
    v190[2] = 0x3032000000;
    v190[3] = __Block_byref_object_copy__1;
    v190[4] = __Block_byref_object_dispose__1;
    v191 = 0;
    v188[0] = 0;
    v188[1] = v188;
    v188[2] = 0x3032000000;
    v188[3] = __Block_byref_object_copy__1;
    v188[4] = __Block_byref_object_dispose__1;
    v189 = 0;
    v186[0] = 0;
    v186[1] = v186;
    v186[2] = 0x3032000000;
    v186[3] = __Block_byref_object_copy__1;
    v186[4] = __Block_byref_object_dispose__1;
    v187 = 0;
    v184[0] = 0;
    v184[1] = v184;
    v184[2] = 0x3032000000;
    v184[3] = __Block_byref_object_copy__1;
    v184[4] = __Block_byref_object_dispose__1;
    v185 = 0;
    v46 = objc_alloc(MEMORY[0x277D716B8]);
    v166[0] = MEMORY[0x277D85DD0];
    v166[1] = 3221225472;
    v166[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_164;
    v166[3] = &unk_2789AFE20;
    v166[4] = self;
    v170 = v231;
    v171 = v225;
    v172 = v223;
    v173 = v207;
    v174 = v205;
    v175 = &buf;
    v77 = v44;
    v167 = v77;
    v88 = v42;
    v168 = v88;
    v47 = v31;
    v169 = v47;
    objc_copyWeak(&v183, &location);
    v176 = v184;
    v177 = v196;
    v178 = v194;
    v179 = v192;
    v180 = v190;
    v181 = v188;
    v182 = v186;
    v48 = [v46 initWithAsyncBlock:v166];
    [v32 addOperation:v91];
    [v32 addOperation:v85];
    [v48 setName:@"process-eligibility"];
    [v48 addDependency:v91];
    [v48 addDependency:v85];
    if (v94)
    {
      [v32 addOperation:v94];
      [v48 addDependency:v94];
    }

    [v32 addOperation:v48];
    v164[0] = 0;
    v164[1] = v164;
    v164[2] = 0x3032000000;
    v164[3] = __Block_byref_object_copy__1;
    v164[4] = __Block_byref_object_dispose__1;
    v165 = 0;
    if (guideEligibility)
    {
      v49 = objc_alloc(MEMORY[0x277D716B8]);
      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = 3221225472;
      v163[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5_171;
      v163[3] = &unk_2789AFE48;
      v163[4] = self;
      v163[5] = v184;
      v163[6] = v190;
      v163[7] = v164;
      v50 = [v49 initWithAsyncBlock:v163];
      [v50 setName:@"user-guides"];
      [v50 addDependency:v48];
      [v32 addOperation:v50];
    }

    if (eligibilityCopy)
    {
      if ([(TPSTipsManager *)self contextualTipsInactive])
      {
        discoverability2 = [MEMORY[0x277D71778] discoverability];
        if (os_log_type_enabled(discoverability2, OS_LOG_TYPE_DEFAULT))
        {
          *v151 = 0;
          _os_log_impl(&dword_232D6F000, discoverability2, OS_LOG_TYPE_DEFAULT, "Contextual tips content inactive, skipping.", v151, 2u);
        }
      }

      else
      {
        v52 = objc_alloc(MEMORY[0x277D716B8]);
        v157[0] = MEMORY[0x277D85DD0];
        v157[1] = 3221225472;
        v157[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_175;
        v157[3] = &unk_2789AFE70;
        objc_copyWeak(&v161, &location);
        v159 = v186;
        v160 = v188;
        v158 = v88;
        v162 = v29;
        v53 = [v52 initWithAsyncBlock:v157];
        [v53 setName:@"contextual-eligibility"];
        [v53 addDependency:v48];
        [v32 addOperation:v53];

        objc_destroyWeak(&v161);
      }
    }

    v54 = v48;
    *v151 = 0;
    v152 = v151;
    v153 = 0x3032000000;
    v154 = __Block_byref_object_copy__1;
    v155 = __Block_byref_object_dispose__1;
    v156 = 0;
    v55 = [dictionaryCopy TPSSafeDictionaryForKey:@"globalConditions"];
    v56 = [v55 TPSSafeDictionaryForKey:@"clientConditions"];
    v57 = v54;
    v84 = v55;
    if ([v56 count])
    {
      v58 = objc_alloc(MEMORY[0x277D716B8]);
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_179;
      v141[3] = &unk_2789AFEC0;
      objc_copyWeak(&v150, &location);
      v142 = v56;
      v143 = v89;
      v145 = v151;
      v146 = v225;
      v147 = v194;
      v144 = v47;
      v148 = &buf;
      v149 = v190;
      v57 = [v58 initWithAsyncBlock:v141];
      [v57 setName:@"process-client-conditions"];
      [v57 addDependency:v54];
      [v32 addOperation:v57];

      objc_destroyWeak(&v150);
    }

    if (widgetEligibilityCopy)
    {
      v59 = objc_alloc(MEMORY[0x277D716B8]);
      v134[0] = MEMORY[0x277D85DD0];
      v134[1] = 3221225472;
      v134[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_184;
      v134[3] = &unk_2789AFF10;
      objc_copyWeak(&v140, &location);
      v134[4] = self;
      v136 = v194;
      v137 = v190;
      v138 = v192;
      v139 = v188;
      v135 = v88;
      v60 = [v59 initWithAsyncBlock:v134];
      [v60 setName:@"widget-eligibility"];
      [v60 addDependency:v57];
      [v32 addOperation:v60];

      objc_destroyWeak(&v140);
    }

    if (notificationEligibilityCopy)
    {
      v61 = objc_opt_class();
      language = [v47 language];
      LODWORD(v61) = [v61 deviceLocalesContainLanguage:language];

      if (v61)
      {
        if (identifiersCopy)
        {
          v63 = 0;
        }

        else
        {
          v64 = objc_alloc(MEMORY[0x277D716B8]);
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_191;
          v129[3] = &unk_2789AFF60;
          objc_copyWeak(&v133, &location);
          v131 = v192;
          v132 = v188;
          v130 = v88;
          v63 = [v64 initWithAsyncBlock:v129];
          [v63 setName:@"immediate-notification-eligibility"];
          [v63 addDependency:v57];
          [v32 addOperation:v63];

          objc_destroyWeak(&v133);
        }

        v65 = objc_alloc(MEMORY[0x277D716B8]);
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_197;
        v118[3] = &unk_2789AFFB0;
        objc_copyWeak(&v128, &location);
        v122 = &buf;
        v119 = identifiersCopy;
        v123 = v196;
        v124 = v194;
        v125 = v192;
        v126 = v190;
        v127 = v188;
        v120 = v88;
        v121 = v96;
        v66 = [v65 initWithAsyncBlock:v118];
        [v66 setName:@"notification-eligibility"];
        [v66 addDependency:v57];
        if (v63)
        {
          [v66 addDependency:v63];
        }

        [v32 addOperation:v66];

        objc_destroyWeak(&v128);
      }
    }

    if (contentCopy && +[TPSTipsManager tipKitProcessingEligible])
    {
      v67 = objc_alloc(MEMORY[0x277D716B8]);
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5_203;
      v117[3] = &unk_2789B0000;
      v117[4] = self;
      v68 = [v67 initWithAsyncBlock:v117];
      [v68 setName:@"update-tipkit-device-profile"];
      [v68 addDependency:v57];
      [v32 addOperation:v68];
      v69 = objc_alloc(MEMORY[0x277D716B8]);
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_210;
      v113[3] = &unk_2789AFD30;
      v114 = dictionaryCopy;
      v115 = v74;
      v116 = v151;
      v70 = [v69 initWithAsyncBlock:v113];
      [v70 setName:@"process-TipKit-tips"];
      [v70 addDependency:v68];
      [v32 addOperation:v70];
    }

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_216;
    v97[3] = &unk_2789B0028;
    objc_copyWeak(&v111, &location);
    v98 = v47;
    v102 = v194;
    v103 = v227;
    v104 = v221;
    v105 = v190;
    v106 = v192;
    v71 = v88;
    v99 = v71;
    v107 = v196;
    guideEligibilityCopy = guideEligibility;
    v108 = v184;
    v109 = v164;
    v110 = v229;
    v72 = v79;
    v100 = v72;
    v101 = handlerCopy;
    [v32 addBarrierBlock:v97];

    objc_destroyWeak(&v111);
    _Block_object_dispose(v151, 8);

    _Block_object_dispose(v164, 8);
    objc_destroyWeak(&v183);

    _Block_object_dispose(v184, 8);
    _Block_object_dispose(v186, 8);

    _Block_object_dispose(v188, 8);
    _Block_object_dispose(v190, 8);

    _Block_object_dispose(v192, 8);
    _Block_object_dispose(v194, 8);

    _Block_object_dispose(v196, 8);
    _Block_object_dispose(v205, 8);

    _Block_object_dispose(v207, 8);
    _Block_object_dispose(v221, 8);

    _Block_object_dispose(v223, 8);
    _Block_object_dispose(v225, 8);

    _Block_object_dispose(v227, 8);
    _Block_object_dispose(v229, 8);

    _Block_object_dispose(v231, 8);
    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&v238);
    objc_destroyWeak(&location);
    v15 = v86;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePauseStatus:{objc_msgSend(*(a1 + 32), "contextualTipsInactive")}];
  v2 = [*(a1 + 32) language];
  v3 = [MEMORY[0x277D716A0] sharedInstance];
  [v3 setLanguageCode:v2];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3;
  v8[3] = &unk_2789AFD08;
  v6 = a1[6];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 processTipDocumentsDictionary:v5 completionHandler:v8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5;
    v16[3] = &unk_2789AFD58;
    v18 = *(a1 + 72);
    v19 = *(a1 + 88);
    v20 = *(a1 + 104);
    v17 = v3;
    [v5 processCollection:v6 collectionsMap:v7 deliveryInfoMap:v8 ignoreSection:0 completionHandler:v16];
    if ([*(*(*(a1 + 80) + 8) + 40) count])
    {
      v21[0] = *(a1 + 32);
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    }

    else
    {
      v9 = 0;
    }

    v11 = [*(a1 + 40) collectionSectionsFromCollectionMap:*(a1 + 56) exclude:v9];
    v12 = *(*(a1 + 112) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v10 = [MEMORY[0x277D71778] default];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_232D6F000, v10, OS_LOG_TYPE_INFO, "Root collection ID is missing in payload", v15, 2u);
    }

    v4[2](v4, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1[5] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v11;
  v30 = v11;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v12;
  v20 = v12;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v13;
  v23 = v13;

  v24 = *(a1[8] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v14;
  v26 = v14;

  v27 = *(a1[9] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v15;
  v29 = v15;

  (*(a1[4] + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_159;
  v9[3] = &unk_2789AFDA8;
  v11 = *(a1 + 56);
  v10 = v3;
  v8 = v3;
  [WeakRetained processTipsDeliveryInfo:v5 deliveryInfoMap:v6 targetingCache:v7 completionHandler:v9];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_159(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_164(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = *(*(*(a1 + 80) + 8) + 40);
  v8 = *(*(*(a1 + 88) + 8) + 40);
  v9 = *(*(*(a1 + 96) + 8) + 40);
  v10 = *(*(*(a1 + 104) + 8) + 40);
  v13 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_4_165;
  v15[3] = &unk_2789AFDF8;
  objc_copyWeak(v22, (a1 + 168));
  v11 = *(a1 + 128);
  v18 = *(a1 + 112);
  v19 = v11;
  v20 = *(a1 + 144);
  v21 = *(a1 + 160);
  v16 = *(a1 + 48);
  v12 = v3;
  v17 = v12;
  [v14 finalEligibleContentWithCollections:v5 collectionsMap:v6 collectionDeliveryInfoMap:v7 eligibleTipIdentifiers:v8 eligibleContextualTipIdentifiers:v9 allFullTipsMap:v10 tipDeliveryInfoMap:v13 deliveryInfoMap:v4 metadata:v15 completionHandler:?];

  objc_destroyWeak(v22);
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_4_165(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v15;
  v46 = v15;

  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v16;
  v26 = v16;

  v27 = *(*(a1 + 64) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v17;
  v29 = v17;

  v30 = *(*(a1 + 72) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v18;
  v32 = v18;

  v33 = *(*(a1 + 80) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v19;
  v35 = v19;

  v36 = *(*(a1 + 88) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v20;
  v38 = v20;

  v39 = *(*(a1 + 96) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v21;
  v41 = v21;

  v42 = [WeakRetained delegate];
  v43 = objc_alloc(MEMORY[0x277CBEB98]);
  v44 = [*(*(*(a1 + 80) + 8) + 40) allKeys];
  v45 = [v43 initWithArray:v44];
  [v42 tipsManager:WeakRetained eligibilityCompletedWithTipIdentifiers:v45 contextualTipIdentifiers:*(*(*(a1 + 96) + 8) + 40) tipsDeliveryInfoMap:*(*(*(a1 + 88) + 8) + 40) deliveryInfoMap:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5_171(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);
  v6 = *(*(a1[6] + 8) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6;
  v9[3] = &unk_2789AFD08;
  v7 = a1[7];
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v4 userGuideMapWithUserGuideCollection:v5 tipMap:v6 completionHandler:v9];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  [v4 tipsManager:WeakRetained contextualEligibilityWithTipIdentifiers:*(*(*(a1 + 40) + 8) + 40) tipsDeliveryInfoMap:*(*(*(a1 + 48) + 8) + 40) deliveryInfoMap:*(a1 + 32) experimentCampChangesToAll:*(a1 + 64)];

  v3[2](v3, 0);
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_179(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_180;
  v9[3] = &unk_2789AFE98;
  v12 = *(a1 + 56);
  v9[4] = WeakRetained;
  v13 = *(a1 + 72);
  v7 = *(a1 + 48);
  v14 = *(a1 + 80);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [WeakRetained processClientConditions:v5 targetingCache:v6 completionHandler:v9];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_180(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v7 = a3;
  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1[7] + 8) + 40);
    v21 = 138412290;
    v22 = v9;
    _os_log_impl(&dword_232D6F000, v8, OS_LOG_TYPE_DEFAULT, "Matched client conditions: %@", &v21, 0xCu);
  }

  v10 = a1[4];
  v11 = [*(*(a1[9] + 8) + 40) allValues];
  v12 = [v10 updateDocumentContent:v11 withClientConditions:*(*(a1[7] + 8) + 40) metadata:a1[5] checklistCompletedConditions:0 usingDictionary:*(*(a1[8] + 8) + 40)];
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = a1[4];
  v16 = [*(*(a1[11] + 8) + 40) allValues];
  v17 = [v15 updateDocumentContent:v16 withClientConditions:*(*(a1[7] + 8) + 40) metadata:a1[5] checklistCompletedConditions:v7 usingDictionary:*(*(a1[10] + 8) + 40)];

  v18 = *(a1[10] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  (*(a1[6] + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = [*(a1 + 32) isHardwareWelcome];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(*(*(a1 + 48) + 8) + 40)];
  [v6 addEntriesFromDictionary:*(*(*(a1 + 56) + 8) + 40)];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(*(*(a1 + 64) + 8) + 40)];
  [v7 addEntriesFromDictionary:*(*(*(a1 + 72) + 8) + 40)];
  v8 = [WeakRetained widgetController];
  v9 = [v6 copy];
  v10 = [v7 copy];
  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_186;
  v13[3] = &unk_2789AFEE8;
  v14 = v3;
  v12 = v3;
  [v8 updateWidgetDocumentWithDocumentsMap:v9 documentsDeliveryInfoMap:v10 deliveryInfoMap:v11 preferHardwareWelcome:v5 completionHandler:v13];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_186(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D71778] widget];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_232D6F000, v10, OS_LOG_TYPE_DEFAULT, "Widget found: %@ with light assets %@, dark assets %@", &v14, 0x20u);
  }

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v11 setObject:v12 forKey:@"TPSWidgetUpdateDate"];

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_191(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained notificationController];
  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_192;
  v10[3] = &unk_2789AFF38;
  v11 = v3;
  v9 = v3;
  [v5 updateNotificationRegistrationEventsWithCollectionDeliveryIdentifierMap:v7 tipsDeliveryIdentifierMap:v8 deliveryInfoMap:v6 completionHandler:v10];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_3_197(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [WeakRetained notificationController];
  v13 = *(*(*(a1 + 72) + 8) + 40);
  v14 = *(*(*(a1 + 64) + 8) + 40);
  v6 = *(*(*(a1 + 80) + 8) + 40);
  v7 = *(*(*(a1 + 88) + 8) + 40);
  v8 = *(*(*(a1 + 96) + 8) + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_4_198;
  v16[3] = &unk_2789AFF88;
  v17 = v3;
  v12 = v3;
  [v5 updateDocumentToNotifyWithPreferredIdentifiers:v9 collectionOrder:v14 collectionMap:v13 collectionDeliveryIdentifierMap:v6 tipMap:v7 tipsDeliveryIdentifierMap:v8 deliveryInfoMap:v10 documentDictionaryMap:v4 metadataDictionary:v11 completionHandler:v16];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_5_203(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6_205;
  v6[3] = &unk_2789AFFD8;
  v7 = v3;
  v5 = v3;
  [TPSDeviceProfileExporter updateDeviceProfileWithDataSource:v4 completionHandler:v6];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6_205(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277D71778] default];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6_205_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232D6F000, v6, OS_LOG_TYPE_INFO, "Device profile updated successfully.", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_210(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(*(a1[6] + 8) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_212;
  v8[3] = &unk_2789AFFD8;
  v9 = v3;
  v7 = v3;
  [TPSTipKitContentManager updateContentWithMeta:v4 documents:v5 clientConditions:v6 completionHandler:v8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_212(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277D71778] default];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_212_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232D6F000, v6, OS_LOG_TYPE_INFO, "TipKit content ingested successfully.", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_216(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 136));
  v3 = objc_alloc_init(MEMORY[0x277D716F8]);
  v4 = [*(a1 + 32) language];
  [v3 setLanguage:v4];

  v5 = [*(a1 + 32) assetSizes];
  [v3 setAssetSizes:v5];

  v6 = [v3 language];
  [WeakRetained setLastFetchedLanguage:v6];

  v7 = [WeakRetained collectionSectionMapWithCollections:*(*(*(a1 + 64) + 8) + 40) availableCollectionSections:*(*(*(a1 + 72) + 8) + 40) collectionIdToCollectionLabelMap:*(*(*(a1 + 80) + 8) + 40)];
  v8 = [v7 objectForKeyedSubscript:@"tips"];
  v35 = v7;
  v9 = [v7 objectForKeyedSubscript:@"supportFlow"];
  v10 = [WeakRetained categorizedMapWithDocumentMap:*(*(*(a1 + 64) + 8) + 40)];
  v36 = [v10 objectForKeyedSubscript:@"tips"];
  v11 = [v10 objectForKeyedSubscript:@"supportFlow"];
  v12 = [WeakRetained categorizedMapWithDocumentMap:*(*(*(a1 + 88) + 8) + 40)];

  v31 = [v12 objectForKeyedSubscript:@"tips"];
  v32 = v12;
  v13 = [v12 objectForKeyedSubscript:@"supportFlow"];
  v14 = [v9 objectForKeyedSubscript:@"supportFlow"];
  v33 = v11;
  v34 = v9;
  v30 = v13;
  if (v14)
  {
    v15 = [v3 copy];
    [v15 setMainCollectionSection:v14];
    [v15 setCollectionMap:v11];
    v16 = [WeakRetained hmtFeaturedCollectionsWithCollectionMap:v11 collectionDeliveryInfoMap:*(*(*(a1 + 96) + 8) + 40) deliveryInfoMap:*(a1 + 40)];
    [v15 setFeaturedCollections:v16];

    v17 = [v15 featuredCollections];
    [WeakRetained updatedHMTCollectionSectionMapFromMap:v9 featuredCollections:v17];
    v19 = v18 = v13;
    [v15 setCollectionSectionMap:v19];

    v20 = [v14 subSectionIdentifiers];
    v21 = [v15 collectionSectionMap];
    v22 = [WeakRetained collectionSectionsWithEligibleCollectionSections:v20 collectionSectionMap:v21 featuredCollection:0];
    [v15 setCollectionSections:v22];

    [v15 setTipMap:v18];
  }

  else
  {
    v15 = 0;
  }

  v23 = [v3 copy];
  [v23 setCollectionMap:v36];
  [v23 setTipMap:v31];
  [v23 setOrderedCollectionIdentifiers:*(*(*(a1 + 104) + 8) + 40)];
  v24 = [WeakRetained featureCollectionFromCollectionMap:v36 collectionOrder:*(*(*(a1 + 104) + 8) + 40) tipMap:v31];
  v25 = v24;
  if (v24)
  {
    v37[0] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [v23 setFeaturedCollections:v26];
  }

  if (*(a1 + 144) == 1)
  {
    [v23 setUserGuideCollection:*(*(*(a1 + 112) + 8) + 40)];
    [v23 setUserGuideMap:*(*(*(a1 + 120) + 8) + 40)];
  }

  [v23 setCollectionSectionMap:v8];
  v27 = [WeakRetained collectionSectionsWithEligibleCollectionSections:*(*(*(a1 + 128) + 8) + 40) collectionSectionMap:v8 featuredCollection:v25];
  [v23 setCollectionSections:v27];

  if ([v8 count])
  {
    v28 = [objc_alloc(MEMORY[0x277D716E0]) initWithDictionary:*(a1 + 48) collections:0];
    [v23 setMainCollectionSection:v28];
  }

  (*(*(a1 + 56) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

- (id)updateDocumentContent:(id)content withClientConditions:(id)conditions metadata:(id)metadata checklistCompletedConditions:(id)completedConditions usingDictionary:(id)dictionary
{
  contentCopy = content;
  conditionsCopy = conditions;
  metadataCopy = metadata;
  completedConditionsCopy = completedConditions;
  dictionaryCopy = dictionary;
  if ([conditionsCopy count])
  {
    v16 = [dictionaryCopy mutableCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __115__TPSTipsManager_updateDocumentContent_withClientConditions_metadata_checklistCompletedConditions_usingDictionary___block_invoke;
    v20[3] = &unk_2789B0050;
    v21 = dictionaryCopy;
    v22 = completedConditionsCopy;
    v23 = conditionsCopy;
    v24 = v16;
    v25 = metadataCopy;
    v17 = v16;
    v18 = dictionaryCopy;
    [contentCopy enumerateObjectsUsingBlock:v20];
    dictionaryCopy = [v17 copy];
  }

  return dictionaryCopy;
}

void __115__TPSTipsManager_updateDocumentContent_withClientConditions_metadata_checklistCompletedConditions_usingDictionary___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 identifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [MEMORY[0x277D71748] contentDictionaryForDictionary:v4 fromMatchingClientConditions:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D71748] contentDictionaryForDictionary:v4 fromMatchingClientConditions:*(a1 + 48)];
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [v4 mutableCopy];
  v9 = [v7 allValues];
  v10 = [v9 firstObject];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D71900]];

  [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D718F8]];
  [*(a1 + 56) setObject:v8 forKeyedSubscript:v3];

LABEL_5:
  v11 = [v7 allKeys];
  v12 = [v11 firstObject];

  v13 = [v7 objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = [MEMORY[0x277D71748] fileIdMapForDictionary:v4];
    [v15 updateWithContentDictionary:v13 metadata:*(a1 + 64) clientConditionIdentifier:v12 fileIdMap:v14 clientConditions:*(a1 + 48)];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 setContentStatus:v6 != 0];
  }
}

- (void)processTipDocumentsDictionary:(id)dictionary completionHandler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy count];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v8];
  v10 = [MEMORY[0x277D716D8] documentsForDictionary:dictionaryCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__TPSTipsManager_processTipDocumentsDictionary_completionHandler___block_invoke;
  v18[3] = &unk_2789B0078;
  v11 = v9;
  v19 = v11;
  [v10 enumerateObjectsUsingBlock:v18];
  syncQueue = [(TPSTipsManager *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TPSTipsManager_processTipDocumentsDictionary_completionHandler___block_invoke_2;
  block[3] = &unk_2789B00A0;
  v16 = v11;
  v17 = handlerCopy;
  v13 = v11;
  v14 = handlerCopy;
  dispatch_async(syncQueue, block);
}

void __66__TPSTipsManager_processTipDocumentsDictionary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277D717B0] tipIdFromDictionary:v4];
  if (([MEMORY[0x277D717B0] contentTypeForDictionary:v4] & 2) != 0)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void __66__TPSTipsManager_processTipDocumentsDictionary_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)processCollection:(id)collection collectionsMap:(id)map deliveryInfoMap:(id)infoMap ignoreSection:(BOOL)section completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  mapCopy = map;
  infoMapCopy = infoMap;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v32 = collectionCopy;
  [collectionCopy TPSSafeArrayForKey:@"collectionIds"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [mapCopy TPSSafeDictionaryForKey:v15];
        v17 = [v16 TPSSafeDictionaryForKey:@"collection"];
        v18 = [v17 TPSSafeStringForKey:@"type"];
        v19 = [v18 containsString:@"collection-order"];
        v20 = [MEMORY[0x277D716D8] collectionLabelForDictionary:v17];
        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v19 == 0;
        }

        if (!v21)
        {
          v20 = [MEMORY[0x277D716D8] collectionOrderIdentifierForDictionary:v17];
        }

        if (v20)
        {
          if (v19)
          {
            if (section)
            {
              goto LABEL_19;
            }

            [array2 addObject:v20];
            v22 = [v20 isEqualToString:@"supportFlow"];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __99__TPSTipsManager_processCollection_collectionsMap_deliveryInfoMap_ignoreSection_completionHandler___block_invoke;
            v43[3] = &unk_2789B00C8;
            v44 = array;
            v45 = array2;
            v46 = dictionary;
            v47 = dictionary2;
            v48 = dictionary3;
            [(TPSTipsManager *)self processCollection:v17 collectionsMap:mapCopy deliveryInfoMap:infoMapCopy ignoreSection:v22 ^ 1u completionHandler:v43];

            default = v44;
          }

          else
          {
            [array addObject:v17];
            [dictionary setObject:v17 forKeyedSubscript:v20];
            v24 = [MEMORY[0x277D71748] deliveryInfoIdForDictionary:v16];
            [dictionary2 setObject:v24 forKeyedSubscript:v20];

            default = [MEMORY[0x277D716D8] collectionOrderIdentifierForDictionary:v17];
            [dictionary3 setObject:v20 forKeyedSubscript:default];
          }
        }

        else
        {
          default = [MEMORY[0x277D71778] default];
          if (os_log_type_enabled(default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v54 = v15;
            v55 = 2112;
            v56 = v17;
            _os_log_debug_impl(&dword_232D6F000, default, OS_LOG_TYPE_DEBUG, "Collection unique id: %@ is missing collectionLabel in the payload %@", buf, 0x16u);
          }
        }

LABEL_19:
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v12);
  }

  v25 = [array copy];
  v26 = [array2 copy];
  v27 = [dictionary copy];
  v28 = [dictionary2 copy];
  v29 = [dictionary3 copy];
  handlerCopy[2](handlerCopy, v25, v26, v27, v28, v29);

  v30 = *MEMORY[0x277D85DE8];
}

void __99__TPSTipsManager_processCollection_collectionsMap_deliveryInfoMap_ignoreSection_completionHandler___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v15 count])
  {
    [a1[4] addObjectsFromArray:v15];
  }

  if ([v11 count])
  {
    [a1[5] addObjectsFromArray:v11];
  }

  if ([v12 count])
  {
    [a1[6] addEntriesFromDictionary:v12];
  }

  if ([v13 count])
  {
    [a1[7] addEntriesFromDictionary:v13];
  }

  if ([v14 count])
  {
    [a1[8] addEntriesFromDictionary:v14];
  }
}

- (id)collectionSectionsFromCollectionMap:(id)map exclude:(id)exclude
{
  excludeCopy = exclude;
  v6 = MEMORY[0x277CBEB18];
  mapCopy = map;
  v8 = [v6 arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__TPSTipsManager_collectionSectionsFromCollectionMap_exclude___block_invoke;
  v16 = &unk_2789B00F0;
  v17 = excludeCopy;
  v9 = v8;
  v18 = v9;
  v10 = excludeCopy;
  [mapCopy enumerateKeysAndObjectsUsingBlock:&v13];

  if ([v9 count])
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __62__TPSTipsManager_collectionSectionsFromCollectionMap_exclude___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = [v8 TPSSafeDictionaryForKey:@"collection"];
    v6 = [v5 TPSSafeStringForKey:@"type"];
    if ([v6 containsString:@"collection-order"])
    {
      [*(a1 + 40) addObject:v5];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)processTipsDeliveryInfo:(id)info deliveryInfoMap:(id)map targetingCache:(id)cache completionHandler:(id)handler
{
  infoCopy = info;
  mapCopy = map;
  cacheCopy = cache;
  handlerCopy = handler;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  v46 = 0;
  v14 = [infoCopy count];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:v14];
    v16 = v48[5];
    v48[5] = v15;

    v17 = [MEMORY[0x277CBEB58] setWithCapacity:v14];
    v18 = v42[5];
    v42[5] = v17;

    v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v19 setMaxConcurrentOperationCount:1];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    experiment = [(TPSTipsManager *)self experiment];
    camp = [experiment camp];

    v40[3] = camp;
    objc_initWeak(&location, self);
    if (!cacheCopy)
    {
      cacheCopy = objc_alloc_init(TPSTargetingCache);
    }

    v22 = [MEMORY[0x277D71790] transactionWithName:@"com.apple.TipsDaemon.precondition-check"];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke;
    v31[3] = &unk_2789B01B8;
    v32 = mapCopy;
    objc_copyWeak(&v38, &location);
    v35 = v40;
    cacheCopy = cacheCopy;
    v33 = cacheCopy;
    v36 = &v47;
    v23 = v19;
    v34 = v23;
    v37 = &v41;
    [infoCopy enumerateKeysAndObjectsUsingBlock:v31];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_3;
    v25[3] = &unk_2789B0208;
    objc_copyWeak(&v30, &location);
    v28 = &v47;
    v29 = &v41;
    v24 = v22;
    v26 = v24;
    v27 = handlerCopy;
    [v23 addOperationWithBlock:v25];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v38);

    objc_destroyWeak(&location);
    _Block_object_dispose(v40, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277D71748] deliveryInfoIdForDictionary:a3];
  v7 = [*(a1 + 32) TPSSafeDictionaryForKey:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = [v7 TPSSafeArrayForKey:@"displayBundleIds"];
  v10 = [v9 firstObject];

  if (v10)
  {
    goto LABEL_28;
  }

  v11 = [v7 TPSSafeBoolForKey:@"overrideHoldout"];
  v12 = [WeakRetained tipStatusController];
  [v12 updateOverrideHoldoutForIdentifier:v5 value:v11];

  v13 = [v7 TPSSafeBoolForKey:@"overrideFrequencyControl"];
  v14 = [WeakRetained tipStatusController];
  [v14 updateOverrideFrequencyControlForIdentifier:v5 value:v13];

  v15 = [v7 TPSSafeObjectForKey:@"triggers"];
  v45 = v6;
  if (v15)
  {
  }

  else
  {
    v16 = [v7 TPSSafeObjectForKey:@"desiredOutcome"];

    if (!v16)
    {
      v20 = 0;
      v18 = 1;
      goto LABEL_9;
    }
  }

  v17 = [WeakRetained tipStatusController];
  if ([v17 isContentNeverVisibleForIdentifier:v5])
  {
    v18 = 1;
  }

  else
  {
    v19 = [MEMORY[0x277D71798] sharedInstance];
    v18 = [v19 isSavedWithTipIdentifier:v5] ^ 1;
  }

  v20 = 1;
LABEL_9:
  v21 = [v7 TPSSafeDictionaryForKey:@"preconditions"];
  v47 = v21;
  if (v18)
  {
    v22 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v21];
  }

  else
  {
    v22 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2;
  aBlock[3] = &unk_2789B0118;
  v64 = v11;
  v23 = *(a1 + 56);
  aBlock[4] = WeakRetained;
  v63 = v23;
  v44 = v5;
  v24 = v5;
  v62 = v24;
  v25 = _Block_copy(aBlock);
  v26 = [(TPSDeliveryPrecondition *)v22 conditions];
  v27 = [v26 count];

  v46 = v22;
  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277D716B8]);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_230;
    v53[3] = &unk_2789B0190;
    v43 = &v54;
    v29 = v24;
    v30 = v24;
    v54 = v30;
    v55 = v22;
    v56 = *(a1 + 40);
    v57 = WeakRetained;
    v31 = v20;
    v60 = v20;
    v32 = v25;
    v33 = *(a1 + 64);
    v58 = v32;
    v59 = v33;
    v34 = [v28 initWithAsyncBlock:v53];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"precondition-%@", v30];
    [v34 setName:v35];

    [*(a1 + 48) addOperation:v34];
    p_super = &v55->super.super;
    v37 = v25;
    v10 = 0;
    v6 = v45;
  }

  else
  {
    v31 = v20;
    v38 = v18 | ~v20;
    v37 = v25;
    v10 = 0;
    v6 = v45;
    v29 = v24;
    if (v38)
    {
      v39 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_cold_1();
      }

      v40 = [WeakRetained tipStatusController];
      [v40 updatePreconditionMatchedForIdentifier:v24 value:1];
    }

    if (v47)
    {
      v41 = 0;
    }

    else
    {
      v41 = v31;
    }

    if (v41 == 1 && !(v37)[2](v37, v24))
    {
      goto LABEL_25;
    }

    p_super = [WeakRetained syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_244;
    block[3] = &unk_2789B0140;
    v52[1] = *(a1 + 64);
    v43 = v52;
    v52[0] = v24;
    dispatch_async(p_super, block);
  }

LABEL_25:
  if (v31)
  {
    v42 = [WeakRetained syncQueue];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2_245;
    v48[3] = &unk_2789B0140;
    v50 = *(a1 + 72);
    v49 = v29;
    dispatch_async(v42, v48);
  }

  v5 = v44;
LABEL_28:
}

uint64_t __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) tipStatusController];
  v5 = [v4 isTipAppDisplayEligibleForIdentifier:v3];

  if (!v5)
  {
    v11 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2_cold_1(a1, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_9;
  }

  if ((*(a1 + 56) & 1) == 0 && *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v6 = [*(a1 + 32) tipStatusController];
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    v9 = [v6 isContentViewedForIdentifier:v8];

    if ((v9 & 1) == 0)
    {
      v11 = [MEMORY[0x277D71778] default];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2_cold_2(v7, v11, v19, v20, v21, v22, v23, v24);
      }

LABEL_9:

      v10 = 0;
      goto LABEL_10;
    }
  }

LABEL_6:
  v10 = 1;
LABEL_10:

  return v10;
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_230_cold_1(a1);
  }

  v5 = [*(a1 + 40) conditions];
  v6 = [*(a1 + 40) joinType];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_232;
  v15[3] = &unk_2789B0168;
  v9 = v7;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v16 = v9;
  v17 = v10;
  v21 = *(a1 + 80);
  v12 = v11;
  v13 = *(a1 + 72);
  v19 = v3;
  v20 = v13;
  v18 = v12;
  v14 = v3;
  [TPSTargetingValidator validateConditions:v5 joinType:v6 context:v9 cache:v8 completionQueue:0 completionHandler:v15];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_232(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_232_cold_1(a1);
  }

  v7 = [*(a1 + 40) tipStatusController];
  [v7 updatePreconditionMatchedForIdentifier:*(a1 + 32) value:a2];

  if (*(a1 + 72) == 1 && a2)
  {
    v10 = *(a1 + 32);
    if (((*(*(a1 + 48) + 16))() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a2)
  {
LABEL_8:
    v11 = [*(a1 + 40) syncQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_239;
    v12[3] = &unk_2789B0140;
    v14 = *(a1 + 64);
    v13 = *(a1 + 32);
    dispatch_async(v11, v12);
  }

LABEL_9:
  (*(*(a1 + 56) + 16))(*(a1 + 56), v5, v8, v9);
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_4;
  block[3] = &unk_2789B01E0;
  block[4] = WeakRetained;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  dispatch_async(v3, block);
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) tipStatusController];
  v3 = [*(*(*(a1 + 56) + 8) + 40) setByAddingObjectsFromSet:*(*(*(a1 + 64) + 8) + 40)];
  [v2 syncWithIdentifiers:v3];

  v4 = [*(a1 + 32) tipStatusController];
  [v4 updateCacheData];

  [*(a1 + 40) endTransaction];
  v5 = *(a1 + 48);
  v7 = [*(*(*(a1 + 56) + 8) + 40) copy];
  v6 = [*(*(*(a1 + 64) + 8) + 40) copy];
  (*(v5 + 16))(v5, v7, v6);
}

- (void)processClientConditions:(id)conditions targetingCache:(id)cache completionHandler:(id)handler
{
  conditionsCopy = conditions;
  cacheCopy = cache;
  handlerCopy = handler;
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [TPSTipsManager processClientConditions:conditionsCopy targetingCache:? completionHandler:?];
  }

  if ([conditionsCopy count])
  {
    v12 = [MEMORY[0x277CBEB58] set];
    matchedClientConditions = [MEMORY[0x277D71740] matchedClientConditions];
    if (matchedClientConditions)
    {
      v14 = [MEMORY[0x277CBEB58] setWithArray:matchedClientConditions];
      v15 = MEMORY[0x277CBEB98];
      allKeys = [conditionsCopy allKeys];
      v17 = [v15 setWithArray:allKeys];
      [v14 intersectSet:v17];

      v18 = [v12 setByAddingObjectsFromSet:v14];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke;
      v41[3] = &unk_2789B0230;
      v42 = conditionsCopy;
      v19 = v12;
      v43 = v19;
      [v14 enumerateObjectsUsingBlock:v41];
      v20 = [v14 copy];
      v21 = [v19 copy];
      handlerCopy[2](handlerCopy, v20, v21);

      v22 = v42;
    }

    else
    {
      matchedClientConditionTargeting = [MEMORY[0x277D71740] matchedClientConditionTargeting];
      v24 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(conditionsCopy, "count")}];
      v25 = objc_alloc_init(MEMORY[0x277CCABD8]);
      objc_initWeak(&location, self);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_2;
      v33[3] = &unk_2789B02A8;
      objc_copyWeak(&v39, &location);
      v34 = cacheCopy;
      v14 = matchedClientConditionTargeting;
      v35 = v14;
      v26 = v24;
      v36 = v26;
      v27 = v12;
      v37 = v27;
      v28 = v25;
      v38 = v28;
      [conditionsCopy enumerateKeysAndObjectsUsingBlock:v33];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_248;
      v29[3] = &unk_2789B02D0;
      v32 = handlerCopy;
      v22 = v26;
      v30 = v22;
      v31 = v27;
      [v28 addBarrierBlock:v29];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v3];
  if ([(TPSDeliveryPrecondition *)v4 statusType]!= 1)
  {
    [*(a1 + 40) removeObject:v5];
  }
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[TPSDeliveryPrecondition alloc] initWithDictionary:v6 fallbackId:v5];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D716B8]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_3;
    v16[3] = &unk_2789B0280;
    v17 = v5;
    objc_copyWeak(&v21, a1 + 9);
    v18 = v7;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v19 = v14;
    v20 = v13;
    v15 = [v8 initWithAsyncBlock:v16];
    [a1[8] addOperation:v15];

    objc_destroyWeak(&v21);
  }
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_3_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v12 = [*(a1 + 40) conditions];
  v13 = [*(a1 + 40) joinType];
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = [WeakRetained syncQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_247;
  v18[3] = &unk_2789B0258;
  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 40);
  v23 = *(a1 + 72);
  v24 = v3;
  v17 = v3;
  [TPSTargetingValidator validateConditions:v12 joinType:v13 context:v14 cache:v15 completionQueue:v16 completionHandler:v18];
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_247(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_247_cold_1(a1);
  }

  if (([*(a1 + 40) containsObject:*(a1 + 32)] & 1) != 0 || a2)
  {
    [*(a1 + 48) addObject:*(a1 + 32)];
    if ([*(a1 + 56) statusType] == 1)
    {
      [*(a1 + 64) addObject:*(a1 + 32)];
    }
  }

  (*(*(a1 + 72) + 16))();
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_248(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)finalEligibleContentWithCollections:(id)collections collectionsMap:(id)map collectionDeliveryInfoMap:(id)infoMap eligibleTipIdentifiers:(id)identifiers eligibleContextualTipIdentifiers:(id)tipIdentifiers allFullTipsMap:(id)tipsMap tipDeliveryInfoMap:(id)deliveryInfoMap deliveryInfoMap:(id)self0 metadata:(id)self1 completionHandler:(id)self2
{
  v123 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  mapCopy = map;
  infoMapCopy = infoMap;
  identifiersCopy = identifiers;
  tipIdentifiersCopy = tipIdentifiers;
  tipsMapCopy = tipsMap;
  deliveryInfoMapCopy = deliveryInfoMap;
  v75 = a10;
  metadataCopy = metadata;
  handlerCopy = handler;
  showAllCollections = [MEMORY[0x277D71740] showAllCollections];
  v60 = collectionsCopy;
  v19 = [collectionsCopy count];
  v63 = objc_opt_new();
  v66 = objc_opt_new();
  v65 = objc_opt_new();
  v74 = objc_opt_new();
  v58 = objc_opt_new();
  v77 = objc_opt_new();
  v59 = tipIdentifiersCopy;
  v71 = [MEMORY[0x277CBEB58] setWithSet:tipIdentifiersCopy];
  if (!v19 && ![tipsMapCopy count])
  {
    v67 = 0;
    goto LABEL_28;
  }

  v20 = MEMORY[0x277CBEB98];
  allKeys = [tipsMapCopy allKeys];
  v70 = [v20 setWithArray:allKeys];

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = collectionsCopy;
  v81 = [obj countByEnumeratingWithState:&v118 objects:v122 count:16];
  if (!v81)
  {
    v67 = 0;
    goto LABEL_27;
  }

  v67 = 0;
  v79 = *v119;
  do
  {
    for (i = 0; i != v81; ++i)
    {
      if (*v119 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v118 + 1) + 8 * i);
      v114 = 0;
      v115 = &v114;
      v116 = 0x2020000000;
      v117 = 0;
      v110 = 0;
      v111 = &v110;
      v112 = 0x2020000000;
      v113 = 0;
      v106 = 0;
      v107 = &v106;
      v108 = 0x2020000000;
      v109 = 0;
      v24 = [MEMORY[0x277D716D8] collectionLabelForDictionary:v23];
      if (v24)
      {
        v83 = [MEMORY[0x277D716D8] tipIdentifiersForDictionary:v23];
        v25 = [MEMORY[0x277CBEB40] orderedSetWithArray:?];
        v26 = [MEMORY[0x277CBEB58] set];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __228__TPSTipsManager_finalEligibleContentWithCollections_collectionsMap_collectionDeliveryInfoMap_eligibleTipIdentifiers_eligibleContextualTipIdentifiers_allFullTipsMap_tipDeliveryInfoMap_deliveryInfoMap_metadata_completionHandler___block_invoke;
        v93[3] = &unk_2789B02F8;
        v94 = identifiersCopy;
        v95 = v70;
        v27 = v26;
        v96 = v27;
        v97 = v74;
        v28 = v24;
        v98 = v28;
        v99 = tipsMapCopy;
        v29 = metadataCopy;
        v100 = v29;
        v101 = deliveryInfoMapCopy;
        v102 = v75;
        v103 = &v110;
        v104 = &v114;
        v105 = &v106;
        [v25 enumerateObjectsUsingBlock:v93];
        v30 = MEMORY[0x277CBEB98];
        array = [v25 array];
        v32 = [v30 setWithArray:array];

        v33 = [MEMORY[0x277CBEB58] setWithSet:v71];
        [v33 intersectSet:v32];
        if (*(v115 + 24) == 1)
        {
          [v25 minusSet:v27];
        }

        else
        {
          [v25 removeAllObjects];
          *(v111 + 24) = 0;
          *(v107 + 24) = 0;
        }

        if (([v25 count] != 0) | showAllCollections & 1 || (objc_msgSend(MEMORY[0x277D716E8], "savedTipsCollectionIdentifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v28, "isEqualToString:", v34), v34, v35))
        {
          v36 = [objc_alloc(MEMORY[0x277D716D8]) initWithDictionary:v23 metadata:v29];
          array2 = [v25 array];
          [v36 setTipIdentifiers:array2];

          [v36 setContainsIntroTip:*(v111 + 24)];
          [v36 setContainsOutroTip:*(v107 + 24)];
          identifier = [v36 identifier];
          v39 = [identifier isEqualToString:@"YourDevicesGuides"];

          if (v39)
          {
            identifier2 = v67;
            v67 = v36;
            goto LABEL_20;
          }

          if (v36)
          {
            identifier2 = [v36 identifier];
            supportID = [v36 supportID];
            v42 = supportID == 0;

            if (v42)
            {
              [v63 addObject:identifier2];
            }

            [v66 setObject:v36 forKeyedSubscript:identifier2];
            v43 = [infoMapCopy objectForKeyedSubscript:identifier2];
            [v65 setObject:v43 forKeyedSubscript:identifier2];

LABEL_20:
          }
        }

        [v77 unionSet:v33];
      }

      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v110, 8);
      _Block_object_dispose(&v114, 8);
    }

    v81 = [obj countByEnumeratingWithState:&v118 objects:v122 count:16];
  }

  while (v81);
LABEL_27:

LABEL_28:
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  majorVersion = [mEMORY[0x277D716E8] majorVersion];

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __228__TPSTipsManager_finalEligibleContentWithCollections_collectionsMap_collectionDeliveryInfoMap_eligibleTipIdentifiers_eligibleContextualTipIdentifiers_allFullTipsMap_tipDeliveryInfoMap_deliveryInfoMap_metadata_completionHandler___block_invoke_2;
  v85[3] = &unk_2789B0320;
  v86 = deliveryInfoMapCopy;
  v87 = v58;
  v88 = v59;
  v89 = v74;
  v90 = v75;
  selfCopy = self;
  v92 = majorVersion;
  v46 = majorVersion;
  v84 = v75;
  v47 = v74;
  v82 = v59;
  v48 = v58;
  v80 = deliveryInfoMapCopy;
  [tipsMapCopy enumerateKeysAndObjectsUsingBlock:v85];
  tipStatusController = [(TPSTipsManager *)self tipStatusController];
  [tipStatusController updateCacheData];

  v50 = [v63 copy];
  v51 = [v66 copy];
  v52 = [v65 copy];
  v53 = [v47 copy];
  v54 = [v48 copy];
  v55 = [v77 copy];
  handlerCopy[2](handlerCopy, v67, v50, v51, v52, v53, v54, v55);

  v56 = *MEMORY[0x277D85DE8];
}

void __228__TPSTipsManager_finalEligibleContentWithCollections_collectionsMap_collectionDeliveryInfoMap_eligibleTipIdentifiers_eligibleContextualTipIdentifiers_allFullTipsMap_tipDeliveryInfoMap_deliveryInfoMap_metadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = v3;
  if (v3 && (v4 = [*(a1 + 32) containsObject:v3], v3 = v20, v4) && (v5 = objc_msgSend(*(a1 + 40), "containsObject:", v20), v3 = v20, (v5 & 1) != 0))
  {
    v6 = [*(a1 + 56) objectForKeyedSubscript:v20];
    if (v6)
    {
      v7 = v6;
      [v6 addCollectionIdentifier:*(a1 + 64)];
    }

    else
    {
      v8 = [*(a1 + 72) objectForKeyedSubscript:v20];
      v7 = [objc_alloc(MEMORY[0x277D717B0]) initWithDictionary:v8 metadata:*(a1 + 80)];
      [v7 addCollectionIdentifier:*(a1 + 64)];
      if ([v7 hasWidgetContent])
      {
        v9 = *(a1 + 88);
        v10 = [v7 identifier];
        v11 = [v9 TPSSafeDictionaryForKey:v10];

        v12 = [MEMORY[0x277D71748] deliveryInfoIdForDictionary:v11];
        v13 = [*(a1 + 96) TPSSafeDictionaryForKey:v12];
        v14 = [v13 objectForKeyedSubscript:@"notification"];
        if ([v7 isWelcome])
        {
          v15 = 4;
        }

        else if ([v14 TPSSafeBoolForKey:@"overrideOptOut"])
        {
          v15 = 3;
        }

        else
        {
          v16 = [v13 TPSSafeObjectForKey:@"triggers"];

          if (v16)
          {
            v15 = 2;
          }

          else
          {
            v15 = v14 != 0;
          }
        }

        v17 = [v7 widgetContent];
        [v17 setPriority:v15];
      }

      [*(a1 + 56) setObject:v7 forKeyedSubscript:v20];
    }

    v18 = [v7 isIntro];
    v19 = 112;
    if (v18)
    {
      v19 = 104;
    }

    *(*(*(a1 + v19) + 8) + 24) = 1;
    if ([v7 isOutro])
    {
      *(*(*(a1 + 120) + 8) + 24) = 1;
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }
}

void __228__TPSTipsManager_finalEligibleContentWithCollections_collectionsMap_collectionDeliveryInfoMap_eligibleTipIdentifiers_eligibleContextualTipIdentifiers_allFullTipsMap_tipDeliveryInfoMap_deliveryInfoMap_metadata_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) TPSSafeDictionaryForKey:v14];
  v7 = [MEMORY[0x277D71748] deliveryInfoIdForDictionary:v6];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v14];
  if ([*(a1 + 48) containsObject:v14])
  {
    v8 = [*(a1 + 56) objectForKeyedSubscript:v14];
    if (v8)
    {
      v9 = [*(a1 + 64) objectForKeyedSubscript:v7];
      v10 = [v9 TPSSafeObjectForKey:@"triggers"];
      [v8 setSiriSuggestion:v10 != 0];
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 72) updateSupplementalIdentifiersForIdentifier:v14 fromDictionary:v5];
  v12 = [*(a1 + 72) tipStatusController];
  [v12 updateDisplayTypeForIdentifier:v14 value:v11];

  v13 = [*(a1 + 72) tipStatusController];
  [v13 updateLastUsedVersionForIdentifier:v14 value:*(a1 + 80)];
}

- (id)collectionSectionMapWithCollections:(id)collections availableCollectionSections:(id)sections collectionIdToCollectionLabelMap:(id)map
{
  v64 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  sectionsCopy = sections;
  mapCopy = map;
  v10 = [sectionsCopy count];
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = sectionsCopy;
  v42 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (!v42)
  {
    v41 = 0;
    v29 = obj;
    goto LABEL_32;
  }

  v40 = *v57;
  v41 = 0;
  do
  {
    v11 = 0;
    do
    {
      if (*v57 != v40)
      {
        v12 = v11;
        objc_enumerationMutation(obj);
        v11 = v12;
      }

      v43 = v11;
      v13 = *(*(&v56 + 1) + 8 * v11);
      v44 = [MEMORY[0x277D716D8] collectionLabelForDictionary:v13];
      if ([v44 isEqualToString:@"supportFlow"])
      {
        v14 = 0;
        v15 = v41;
        v41 = v13;
LABEL_8:

        goto LABEL_25;
      }

      v16 = [v13 TPSSafeArrayForKey:@"collectionIds"];
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v18)
      {
        v19 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = [mapCopy objectForKeyedSubscript:*(*(&v52 + 1) + 8 * i)];
            if (v21)
            {
              v22 = [collectionsCopy objectForKeyedSubscript:v21];
              if (v22)
              {
                [v14 addObject:v22];
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
        }

        while (v18);
      }

      v23 = [v14 count] == 0;
      if (!v23)
      {
        if ([v14 count])
        {
          v24 = [objc_alloc(MEMORY[0x277D716E0]) initWithDictionary:v13 collections:v14];
          v15 = v24;
          if (v24)
          {
            supportID = [v24 supportID];
            v26 = v37;
            if (supportID)
            {
              v26 = v38;
            }

            v27 = v26;

            identifier = [v15 identifier];
            [v27 setObject:v15 forKeyedSubscript:identifier];

            goto LABEL_8;
          }
        }
      }

LABEL_25:

      v11 = v43 + 1;
    }

    while (v43 + 1 != v42);
    v42 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  }

  while (v42);

  if (v41)
  {
    v29 = [v41 TPSSafeArrayForKey:@"collectionIds"];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __115__TPSTipsManager_collectionSectionMapWithCollections_availableCollectionSections_collectionIdToCollectionLabelMap___block_invoke;
    v45[3] = &unk_2789B0348;
    v47 = &v48;
    v30 = v38;
    v46 = v30;
    [v29 enumerateObjectsUsingBlock:v45];
    if (*(v49 + 24) == 1)
    {
      v31 = [objc_alloc(MEMORY[0x277D716E0]) initWithDictionary:v41 subSectionIdentifiers:v29];
      [v30 setObject:v31 forKeyedSubscript:@"supportFlow"];
    }

    _Block_object_dispose(&v48, 8);
LABEL_32:
  }

  else
  {
    v41 = 0;
  }

  v60[0] = @"tips";
  v32 = [v37 copy];
  v60[1] = @"supportFlow";
  v61[0] = v32;
  v33 = [v38 copy];
  v61[1] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __115__TPSTipsManager_collectionSectionMapWithCollections_availableCollectionSections_collectionIdToCollectionLabelMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  *(*(*(a1 + 40) + 8) + 24) = v6 != 0;

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

- (id)categorizedMapWithDocumentMap:(id)map
{
  v24[2] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = [mapCopy count];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__TPSTipsManager_categorizedMapWithDocumentMap___block_invoke;
  v10[3] = &unk_2789B0370;
  v10[4] = &v17;
  v10[5] = &v11;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v10];
  v23[0] = @"tips";
  v5 = [v18[5] copy];
  v23[1] = @"supportFlow";
  v24[0] = v5;
  v6 = [v12[5] copy];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __48__TPSTipsManager_categorizedMapWithDocumentMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 supportID];
  v7 = 40;
  if (!v6)
  {
    v7 = 32;
  }

  v8 = *(*(*(a1 + v7) + 8) + 40);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    v10 = v5;
    v11 = v6;
  }

  else
  {
    v9 = v8;
    v10 = v5;
    v11 = v12;
  }

  [v9 setObject:v10 forKeyedSubscript:v11];
}

- (void)userGuideMapWithUserGuideCollection:(id)collection tipMap:(id)map completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  mapCopy = map;
  handlerCopy = handler;
  if ([MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    v10 = +[TPSUserGuideManager allUserGuideMap];
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    v29 = handlerCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v30 = collectionCopy;
    tipIdentifiers = [collectionCopy tipIdentifiers];
    v13 = +[TPSCloudDeviceValidation idsDevices];
    v14 = [TPSUserGuideManager cloudDeviceDataSourceWithDevices:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = tipIdentifiers;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [mapCopy objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          linkedDocument = [v19 linkedDocument];
          product = [linkedDocument product];

          title = [v19 title];
          v23 = [TPSUserGuideManager userGuideWithIdentifier:product title:title dataSource:v14];

          if (v23)
          {
            [dictionary setObject:v23 forKeyedSubscript:product];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    deviceGuideIdentifier = [MEMORY[0x277D716E8] deviceGuideIdentifier];
    v25 = [dictionary objectForKeyedSubscript:deviceGuideIdentifier];

    handlerCopy = v29;
    if (!v25)
    {
      v26 = +[TPSUserGuideManager mainUserGuide];
      [dictionary setObject:v26 forKeyedSubscript:deviceGuideIdentifier];
    }

    if ([dictionary count])
    {
      v27 = [dictionary copy];
      v29[2](v29, v27);
    }

    else
    {
      v29[2](v29, 0);
    }

    collectionCopy = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)collectionSectionsWithEligibleCollectionSections:(id)sections collectionSectionMap:(id)map featuredCollection:(id)collection
{
  v23 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  mapCopy = map;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sectionsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = sectionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [mapCopy objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = [v8 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)featureCollectionFromCollectionMap:(id)map collectionOrder:(id)order tipMap:(id)tipMap
{
  v78 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  orderCopy = order;
  tipMapCopy = tipMap;
  selfCopy = self;
  if (![objc_opt_class() supportsFeaturedCollection])
  {
    v34 = 0;
    goto LABEL_55;
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(orderCopy, "count")}];
  featuredCollection = [MEMORY[0x277D71740] featuredCollection];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v13 = orderCopy;
  v14 = [v13 countByEnumeratingWithState:&v72 objects:v77 count:16];
  v60 = v11;
  v61 = featuredCollection;
  if (!v14)
  {

    v67 = 0;
    v62 = 0;
    v35 = 0;
    v26 = 0;
    v27 = 1;
LABEL_38:
    default = [MEMORY[0x277D71778] default];
    if (os_log_type_enabled(default, OS_LOG_TYPE_DEBUG))
    {
      [TPSTipsManager featureCollectionFromCollectionMap:default collectionOrder:? tipMap:?];
    }

    if (!v27)
    {
      [v11 removeObject:v35];
    }

    v37 = [v11 count];
    if (v37 < 1)
    {
      goto LABEL_44;
    }

    v38 = [v11 objectAtIndexedSubscript:arc4random_uniform(v37)];
    if (!v38)
    {
      goto LABEL_44;
    }

LABEL_46:
    v39 = v38;
    goto LABEL_48;
  }

  v15 = v14;
  v57 = orderCopy;
  v58 = tipMapCopy;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v67 = 0;
  v16 = *v73;
  v59 = 1;
  do
  {
    v17 = 0;
    v63 = v15;
    do
    {
      if (*v73 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = [mapCopy objectForKeyedSubscript:*(*(&v72 + 1) + 8 * v17)];
      if ([v18 priority] == 1)
      {
        [v11 addObject:v18];
        identifier = [v18 identifier];
        v20 = [identifier isEqualToString:featuredCollection];

        if (v20)
        {
          [v18 setTopFeatured:1];
          v34 = v18;

          orderCopy = v57;
          tipMapCopy = v58;
          v35 = v64;
          v26 = v65;
          goto LABEL_54;
        }

        v21 = [(TPSTipsManager *)selfCopy collectionStatusForCollection:v18];
        featuredDate = [v21 featuredDate];
        if (featuredDate)
        {
          if (!v65 || [v65 compare:featuredDate] == -1)
          {
            v23 = v18;

            v24 = featuredDate;
            v64 = v23;
            v65 = v24;
            v11 = v60;
            featuredCollection = v61;
          }

          v15 = v63;
LABEL_18:
          if (!v67)
          {
            v67 = v18;
          }
        }

        else
        {
          if (v62)
          {
            goto LABEL_18;
          }

          if (![v18 isChecklist] || -[TPSTipsManager checklistCollectionHasMinSuggestedTips:tipMap:](selfCopy, "checklistCollectionHasMinSuggestedTips:tipMap:", v18, v58))
          {
            v62 = v18;
            v59 = 0;
            goto LABEL_18;
          }

          v62 = 0;
        }
      }

      ++v17;
    }

    while (v15 != v17);
    v25 = [v13 countByEnumeratingWithState:&v72 objects:v77 count:16];
    v15 = v25;
  }

  while (v25);

  v26 = v65;
  v27 = v64 == 0;
  tipMapCopy = v58;
  if (!v64)
  {
    goto LABEL_77;
  }

  [v65 timeIntervalSinceNow];
  if (v28 >= 0.0)
  {
    if (v59)
    {
      goto LABEL_79;
    }

    goto LABEL_59;
  }

  v29 = v28;
  [MEMORY[0x277D71740] featuredDocumentInterval];
  if (v30 <= 0.0)
  {
    v31 = 604800.0;
  }

  else
  {
    v31 = v30;
  }

  v32 = fabs(v29);
  default2 = [MEMORY[0x277D71778] default];
  if (os_log_type_enabled(default2, OS_LOG_TYPE_DEBUG))
  {
    [TPSTipsManager featureCollectionFromCollectionMap:v64 collectionOrder:? tipMap:?];
  }

  if (!((v31 <= v32) | v59 & 1))
  {
LABEL_59:
    if ([v64 isChecklist])
    {
      v46 = ![(TPSTipsManager *)selfCopy checklistCollectionHasMinSuggestedTips:v64 tipMap:v58];
    }

    else
    {
      tipIdentifiers = [v64 tipIdentifiers];
      mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
      tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v50 = tipIdentifiers;
      v51 = [v50 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v69;
        while (2)
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v69 != v53)
            {
              objc_enumerationMutation(v50);
            }

            if (![tipStatusController isContentViewedForIdentifier:*(*(&v68 + 1) + 8 * i)])
            {
              v46 = 0;
              goto LABEL_71;
            }
          }

          v52 = [v50 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }

        v46 = 1;
LABEL_71:
        v26 = v65;
      }

      else
      {
        v46 = 1;
      }

      v11 = v60;
    }

    default3 = [MEMORY[0x277D71778] default];
    if (os_log_type_enabled(default3, OS_LOG_TYPE_DEBUG))
    {
      [TPSTipsManager featureCollectionFromCollectionMap:v64 collectionOrder:? tipMap:?];
    }

    if (v46)
    {
      goto LABEL_77;
    }

LABEL_79:
    v39 = v64;
    default4 = [MEMORY[0x277D71778] default];
    if (os_log_type_enabled(default4, OS_LOG_TYPE_DEBUG))
    {
      [TPSTipsManager featureCollectionFromCollectionMap:v39 collectionOrder:? tipMap:?];
    }

    v35 = v39;
    orderCopy = v57;
    featuredCollection = v61;
    goto LABEL_51;
  }

  if (v31 > v32)
  {
    goto LABEL_79;
  }

LABEL_77:
  orderCopy = v57;
  v35 = v64;
  if (v59)
  {
    goto LABEL_38;
  }

LABEL_44:
  v38 = v62;
  if (v38)
  {
    v62 = v38;
    goto LABEL_46;
  }

  v39 = v67;
  v62 = 0;
  v67 = v39;
LABEL_48:
  featuredCollection = v61;
  default5 = [MEMORY[0x277D71778] default];
  if (os_log_type_enabled(default5, OS_LOG_TYPE_DEBUG))
  {
    [TPSTipsManager featureCollectionFromCollectionMap:v39 collectionOrder:? tipMap:?];
  }

  if (v39)
  {
LABEL_51:
    if (([v39 isEqual:v35] & 1) == 0)
    {
      v41 = [(TPSTipsManager *)selfCopy collectionStatusForCollection:v39];
      date = [MEMORY[0x277CBEAA8] date];
      [v41 setFeaturedDate:date];

      mEMORY[0x277D716E8]2 = [MEMORY[0x277D716E8] sharedInstance];
      [mEMORY[0x277D716E8]2 syncCollectionStatusMap];

      v11 = v60;
    }
  }

  [v39 setTopFeatured:1];
  v34 = v39;
LABEL_54:

LABEL_55:
  v44 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)checklistCollectionHasMinSuggestedTips:(id)tips tipMap:(id)map
{
  tipsCopy = tips;
  mapCopy = map;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  tipIdentifiers = [tipsCopy tipIdentifiers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__TPSTipsManager_checklistCollectionHasMinSuggestedTips_tipMap___block_invoke;
  v10[3] = &unk_2789B0398;
  v8 = mapCopy;
  v11 = v8;
  v12 = v14;
  v13 = &v15;
  [tipIdentifiers enumerateObjectsUsingBlock:v10];

  LOBYTE(tipIdentifiers) = *(v16 + 24);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);

  return tipIdentifiers;
}

uint64_t __64__TPSTipsManager_checklistCollectionHasMinSuggestedTips_tipMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6 && ([v6 isCompleted] & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) > 2;
  *a4 = *(*(*(a1 + 48) + 8) + 24);

  return MEMORY[0x2821F96F8]();
}

- (id)collectionStatusForCollection:(id)collection
{
  v3 = MEMORY[0x277D716E8];
  collectionCopy = collection;
  sharedInstance = [v3 sharedInstance];
  identifier = [collectionCopy identifier];

  v7 = [sharedInstance collectionStatusForCollectionIdentifier:identifier];

  return v7;
}

- (void)updateSupplementalIdentifiersForIdentifier:(id)identifier fromDictionary:(id)dictionary
{
  v6 = *MEMORY[0x277D71950];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v15 = [dictionaryCopy TPSSafeStringForKey:v6];
  tipStatusController = [(TPSTipsManager *)self tipStatusController];
  [tipStatusController updateVariantIdentifierForIdentifier:identifierCopy value:v15];

  v10 = [dictionaryCopy TPSSafeDictionaryForKey:*MEMORY[0x277D71948]];

  v11 = [v10 TPSSafeStringForKey:*MEMORY[0x277D71938]];
  tipStatusController2 = [(TPSTipsManager *)self tipStatusController];
  [tipStatusController2 updateCorrelationIdentifierForIdentifier:identifierCopy value:v11];

  v13 = [v10 TPSSafeStringForKey:*MEMORY[0x277D71930]];
  tipStatusController3 = [(TPSTipsManager *)self tipStatusController];
  [tipStatusController3 updateClonedFromIdentifierForIdentifier:identifierCopy value:v13];
}

- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__1;
  v36[4] = __Block_byref_object_dispose__1;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__1;
  v34[4] = __Block_byref_object_dispose__1;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__1;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = [MEMORY[0x277D71790] transactionWithName:@"com.apple.TipsDaemon.reindexAllSearchableItems"];
  v5 = objc_alloc(MEMORY[0x277D716B8]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke;
  v28[3] = &unk_2789B03E8;
  objc_copyWeak(&v29, &location);
  v28[4] = v36;
  v28[5] = v34;
  v28[6] = v32;
  v6 = [v5 initWithAsyncBlock:v28];
  v7 = objc_alloc(MEMORY[0x277D716B8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_257;
  v27[3] = &unk_2789B0438;
  v27[4] = v32;
  v27[5] = v36;
  v8 = [v7 initWithAsyncBlock:v27];
  v9 = objc_alloc(MEMORY[0x277D716B8]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_261;
  v26[3] = &unk_2789B0438;
  v26[4] = v32;
  v26[5] = v36;
  v10 = [v9 initWithAsyncBlock:v26];
  v11 = objc_alloc(MEMORY[0x277D716B8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_263;
  v25[3] = &unk_2789B0438;
  v25[4] = v32;
  v25[5] = v34;
  v12 = [v11 initWithAsyncBlock:v25];
  v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v13 setName:@"com.apple.TipsDaemon.reindexAllSearchableItems"];
  [v13 setMaxConcurrentOperationCount:1];
  [v13 setSuspended:1];
  [v13 addOperation:v6];
  [v8 setName:@"reindexTipsOperation"];
  [v13 addOperation:v8];
  [v10 setName:@"reindexUserGuideOperation"];
  [v13 addOperation:v10];
  [v12 setName:@"reindexCollectionsOperation"];
  [v13 addOperation:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_274;
  v18[3] = &unk_2789B0488;
  v14 = handlerCopy;
  v22 = v14;
  v23 = v32;
  v15 = v8;
  v19 = v15;
  v16 = v10;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v24 = v30;
  [v13 addBarrierBlock:v18];
  [v13 setSuspended:0];

  objc_destroyWeak(&v29);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  objc_destroyWeak(&location);
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2789B03C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v7 = v3;
  v5 = v3;
  [WeakRetained contentFromOrigin:0 systemEducationRequest:1 processTipKitContent:0 contextualEligibility:1 widgetEligibility:0 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v6];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [MEMORY[0x277D71778] indexing];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
  v16 = v8;

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v9;
  v19 = v9;

  (*(a1[4] + 16))();
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_257(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    v5 = +[TPSSearchItemIndexer default];
    v6 = [*(*(*(a1 + 40) + 8) + 40) tipMap];
    v7 = [v6 allValues];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_259;
    v8[3] = &unk_2789B0410;
    v9 = v4;
    [v5 reindexTips:v7 qualityOfService:9 completionHandler:v8];
  }
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_259(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71778] indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_259_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232D6F000, v5, OS_LOG_TYPE_INFO, "Tips re-indexing completed successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_261(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    v5 = +[TPSSearchItemIndexer default];
    v6 = [*(*(*(a1 + 40) + 8) + 40) userGuideMap];
    v7 = [v6 allValues];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_262;
    v8[3] = &unk_2789B0410;
    v9 = v4;
    [v5 reindexUserGuides:v7 qualityOfService:9 completionHandler:v8];
  }
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_262(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D71778] indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_262_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_232D6F000, v5, OS_LOG_TYPE_INFO, "User Guide re-indexing completed successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    v5 = +[TPSSearchItemIndexer default];
    v6 = [*(*(*(a1 + 40) + 8) + 40) collectionMap];
    v7 = [v6 allValues];
    v8 = v7;
    v9 = MEMORY[0x277CBEBF8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_264;
    v12[3] = &unk_2789B0460;
    v13 = v10;
    v14 = v4;
    v11 = v10;
    [v5 reindexCollections:v11 qualityOfService:9 completionHandler:v12];
  }
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_264(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D71778] indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_264_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) count];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_232D6F000, v5, OS_LOG_TYPE_INFO, "HMT Collections re-indexing completed successfully. Re-indexed %lu HMT collections.", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_274(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = [*(a1 + 32) error];
      if (!v3)
      {
        v3 = [*(a1 + 40) error];
        if (!v3)
        {
          v4 = [*(a1 + 48) error];
          if (!v4)
          {
            v17 = 0;
LABEL_10:
            (*(*(a1 + 56) + 16))();

            goto LABEL_11;
          }

LABEL_7:
          v5 = [MEMORY[0x277CBEB38] dictionary];
          v6 = [v4 userInfo];
          v7 = *MEMORY[0x277CCA450];
          v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
          [v5 setObject:v8 forKeyedSubscript:v7];

          v9 = [v4 domain];
          LODWORD(v8) = [v9 isEqualToString:*MEMORY[0x277CCA738]];

          if (v8)
          {
            v10 = [v4 userInfo];
            v11 = *MEMORY[0x277CCA748];
            v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA748]];
            [v5 setObject:v12 forKeyedSubscript:v11];
          }

          v13 = [MEMORY[0x277CBEB38] dictionary];
          [v13 setObject:@"Failed to re-index all searchable items." forKeyedSubscript:v7];
          v14 = MEMORY[0x277CCA9B8];
          v15 = [v4 domain];
          v16 = [v14 errorWithDomain:v15 code:objc_msgSend(v4 userInfo:{"code"), v5}];
          [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];

          v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.tips.TPSTipsManager" code:8 userInfo:v13];

          goto LABEL_10;
        }
      }
    }

    v4 = v3;
    goto LABEL_7;
  }

LABEL_11:
  v18 = *(*(a1 + 72) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  if (handler)
  {
    v5 = MEMORY[0x277CCA9B8];
    handlerCopy = handler;
    v7 = [v5 errorWithDomain:@"com.apple.tips.TPSTipsManager" code:7 userInfo:0];
    (*(handler + 2))(handlerCopy, v7);
  }
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[TPSSearchItemIndexer default];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__TPSTipsManager_deleteAllSearchableItemsWithCompletionHandler___block_invoke;
  v6[3] = &unk_2789B0410;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 deleteAllItemsWithQualityOfService:9 completionHandler:v6];
}

uint64_t __64__TPSTipsManager_deleteAllSearchableItemsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isHardwareWelcome
{
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  v3 = [mEMORY[0x277D716E8] userType] == 0;

  return v3;
}

- (id)welcomeCollectionFromContentPackage:(id)package
{
  packageCopy = package;
  if (packageCopy)
  {
    mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
    collectionIdentifierForCurrentUserType = [mEMORY[0x277D716E8] collectionIdentifierForCurrentUserType];

    collectionMap = [packageCopy collectionMap];
    v7 = [collectionMap objectForKeyedSubscript:collectionIdentifierForCurrentUserType];

    if (!v7)
    {
      collectionMap2 = [packageCopy collectionMap];
      softwareWelcomeCollectionIdentifier = [MEMORY[0x277D716E8] softwareWelcomeCollectionIdentifier];
      v7 = [collectionMap2 objectForKeyedSubscript:softwareWelcomeCollectionIdentifier];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)welcomeDocumentFromContentPackage:(id)package
{
  packageCopy = package;
  language = [packageCopy language];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  syncQueue = [(TPSTipsManager *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TPSTipsManager_welcomeDocumentFromContentPackage___block_invoke;
  block[3] = &unk_2789B04B0;
  block[4] = &v24;
  dispatch_sync(syncQueue, block);

  if (packageCopy || (v7 = v25[5]) == 0)
  {
    v9 = [(TPSTipsManager *)self welcomeCollectionFromContentPackage:packageCopy];
    v10 = v9;
    if (v9)
    {
      notification = [v9 notification];
      title = [notification title];
      text = [notification text];
      v13 = objc_alloc_init(MEMORY[0x277D71788]);
      [v13 setTitle:title];
      [v13 setText:text];
      v14 = objc_alloc_init(TPSWelcomeDocument);
      v15 = v25[5];
      v25[5] = v14;

      identifier = [v10 identifier];
      [v25[5] setIdentifier:identifier];

      [v25[5] setNotification:v13];
      [v25[5] setLanguage:language];
      mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
      majorVersion = [mEMORY[0x277D716E8] majorVersion];
      [v25[5] setMajorVersion:majorVersion];

      syncQueue2 = [(TPSTipsManager *)self syncQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__TPSTipsManager_welcomeDocumentFromContentPackage___block_invoke_2;
      v22[3] = &unk_2789B04B0;
      v22[4] = &v24;
      dispatch_async(syncQueue2, v22);

      v8 = v25[5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v7;
  }

  _Block_object_dispose(&v24, 8);

  return v8;
}

uint64_t __52__TPSTipsManager_welcomeDocumentFromContentPackage___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D717A8] unarchivedObjectOfClass:objc_opt_class() forKey:@"TPSWelcomeDocumentCache"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldPerformWidgetUpdate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"TPSWidgetUpdateDate"];
  if (v3)
  {
    requestInterval = [MEMORY[0x277D71740] requestInterval];
    v5 = requestInterval;
    if (requestInterval)
    {
      [requestInterval doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 86400.0;
    }

    date = [MEMORY[0x277CBEAA8] date];
    v8 = [date isTimeToDate:v3 withinTimeInterval:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)widgetController:(id)controller validForDocument:(id)document documentDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap
{
  documentCopy = document;
  mapCopy = map;
  infoMapCopy = infoMap;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [documentCopy identifier];
    tipStatusController = [(TPSTipsManager *)self tipStatusController];
    v14 = [tipStatusController isTipAppDisplayEligibleForIdentifier:identifier];

    if (v14)
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      notificationController = [(TPSTipsManager *)self notificationController];
      v15 = [notificationController preconditionValidForIdentifier:identifier documentDeliveryInfoMap:mapCopy deliveryInfoMap:infoMapCopy overrideOptOutContentOnly:0 ignoreSuppressContent:1];

      notificationController2 = [(TPSTipsManager *)self notificationController];
      v18 = [notificationController2 canUpdateHintEligibilityForIdentifier:identifier];

      if (v18)
      {
        v19 = documentCopy;
        notificationController3 = [(TPSTipsManager *)self notificationController];
        [notificationController3 updateHintEligibleForTip:v19 isValid:v15];
      }
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (NSString)lastFetchedLanguage
{
  os_unfair_lock_lock(&_sharedLock);
  v3 = self->_lastFetchedLanguage;
  os_unfair_lock_unlock(&_sharedLock);

  return v3;
}

- (void)setLastFetchedLanguage:(id)language
{
  languageCopy = language;
  os_unfair_lock_lock(&_sharedLock);
  lastFetchedLanguage = self->_lastFetchedLanguage;
  self->_lastFetchedLanguage = languageCopy;

  os_unfair_lock_unlock(&_sharedLock);
}

- (NSDictionary)cachedUserGuideMap
{
  os_unfair_lock_lock(&_sharedLock);
  v3 = self->_cachedUserGuideMap;
  os_unfair_lock_unlock(&_sharedLock);

  return v3;
}

- (void)setCachedUserGuideMap:(id)map
{
  mapCopy = map;
  os_unfair_lock_lock(&_sharedLock);
  cachedUserGuideMap = self->_cachedUserGuideMap;
  self->_cachedUserGuideMap = mapCopy;

  os_unfair_lock_unlock(&_sharedLock);
}

- (id)processUserGuidesFromContentPackage:(id)package
{
  v30 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  v4 = packageCopy;
  if (packageCopy)
  {
    userGuideMap = [packageCopy userGuideMap];
    v6 = [userGuideMap mutableCopy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v4;
    tipMap = [v4 tipMap];
    allValues = [tipMap allValues];

    v9 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          linkedDocument = [*(*(&v25 + 1) + 8 * i) linkedDocument];
          product = [linkedDocument product];
          if ([product length])
          {
            v15 = [v6 objectForKeyedSubscript:product];

            if (!v15)
            {
              v16 = objc_alloc(MEMORY[0x277D717E8]);
              productVersion = [linkedDocument productVersion];
              platform = [linkedDocument platform];
              v19 = [v16 initWithIdentifier:product version:productVersion text:0 symbol:&stru_284826B40 platform:platform platformIndependent:0 gradientColorStrings:MEMORY[0x277CBEBF8]];

              identifier = [v19 identifier];
              [v6 setObject:v19 forKeyedSubscript:identifier];
            }
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    if ([v6 count])
    {
      v21 = [v6 copy];
    }

    else
    {
      v21 = 0;
    }

    v4 = v24;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (TPSTipsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)hmtFeaturedCollectionsWithCollectionMap:(id)map collectionDeliveryInfoMap:(id)infoMap deliveryInfoMap:(id)deliveryInfoMap
{
  mapCopy = map;
  if (map)
  {
    sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
    mapCopy = sub_232E01470();
  }

  v8 = sub_232E01470();
  if (deliveryInfoMap)
  {
    deliveryInfoMap = sub_232E01470();
  }

  selfCopy = self;
  v10 = _sSo14TPSTipsManagerC10TipsDaemonE22hmtFeaturedCollections4with25collectionDeliveryInfoMap08deliverykL0SaySo13TPSCollectionCGSgSDySSAIGSg_SDyS2SGSDySSyXlGSgtF_0(mapCopy, v8, deliveryInfoMap);

  if (v10)
  {
    sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
    v11 = sub_232E015C0();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)updatedHMTCollectionSectionMapFromMap:(id)map featuredCollections:(id)collections
{
  mapCopy = map;
  if (map)
  {
    sub_232DB3688(0, &qword_2814E7BF0, 0x277D716E0);
    mapCopy = sub_232E01470();
  }

  if (collections)
  {
    sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
    collections = sub_232E015D0();
  }

  selfCopy = self;
  _sSo14TPSTipsManagerC10TipsDaemonE30updatedHMTCollectionSectionMap4from19featuredCollectionsSDySSSo013TPSCollectionG0CGSgAJ_SaySo0L0CGSgtF_0(mapCopy, collections);
  v9 = v8;

  if (v9)
  {
    sub_232DB3688(0, &qword_2814E7BF0, 0x277D716E0);
    v10 = sub_232E01450();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)presentReentryNotificationIfNeeded
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_232E016B0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_232DF55C8(0, 0, v5, &unk_232E08708, v7);
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_6_205_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "Failed to update device profile with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __221__TPSTipsManager_contentWithMetaDictionary_documentsDictionary_processTipKitContent_contextualEligibility_widgetEligibility_notificationEligibility_userGuideEligibility_preferredNotificationIdentifiers_completionHandler___block_invoke_2_212_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "Failed to ingest TipKit content with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_232D6F000, v0, v1, "Preconditions matched for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_4(&dword_232D6F000, a2, a3, "Preconditions for contextual tip %@ is not ready for display, pending eligibility check", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_2_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_4(&dword_232D6F000, a2, a3, "tip %@ is marked as invalid due to holdout camp", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_230_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v8 = [*(a1 + 40) debugDescription];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __91__TPSTipsManager_processTipsDeliveryInfo_deliveryInfoMap_targetingCache_completionHandler___block_invoke_232_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_232D6F000, v2, v3, "Tip (%@) is %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processClientConditions:(void *)a1 targetingCache:completionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_4(&dword_232D6F000, a2, a3, "Evaluating client condition: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __75__TPSTipsManager_processClientConditions_targetingCache_completionHandler___block_invoke_247_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_232D6F000, v2, v3, "Client condition (%@) is %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)featureCollectionFromCollectionMap:(void *)a1 collectionOrder:tipMap:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)featureCollectionFromCollectionMap:(void *)a1 collectionOrder:tipMap:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)featureCollectionFromCollectionMap:(void *)a1 collectionOrder:tipMap:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)featureCollectionFromCollectionMap:(void *)a1 collectionOrder:tipMap:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "Content fetch completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_259_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "Tips re-indexing completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_262_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "User Guide re-indexing completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__TPSTipsManager_reindexAllSearchableItemsWithCompletionHandler___block_invoke_2_264_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_232D6F000, v0, v1, "HMT Collections re-indexing completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end