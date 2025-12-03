@interface SPClientSession
+ (void)initialize;
+ (void)retrieveFirstTimeExperienceTextWithReply:(id)reply;
- (BOOL)_setSearchDomains:(id)domains;
- (NSArray)disabledBundleIds;
- (SPClientSession)init;
- (id)copyStaleSectionsForQuery:(id)query;
- (id)queryTaskWithContext:(id)context;
- (int64_t)contentFilters;
- (void)activate;
- (void)deactivate;
- (void)finishRanking:(id)ranking blendingDuration:(double)duration spotlightQueryIntent:(int)intent;
- (void)preheat;
- (void)setLastSections:(id)sections forQuery:(id)query;
@end

@implementation SPClientSession

+ (void)initialize
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:*MEMORY[0x277D4BEF8]])
  {
    runningInSpotlight = 1;
  }

  else
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    runningInSpotlight = [bundleIdentifier2 isEqualToString:@"com.apple.Spotlight"];
  }

  sClientRankAndBlend = _os_feature_enabled_impl();
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v6 = dispatch_queue_create("unblock main queue", v8);
  v7 = sUnBlockMainQueue;
  sUnBlockMainQueue = v6;

  dispatch_async(sUnBlockMainQueue, &__block_literal_global_2);
}

- (SPClientSession)init
{
  v10.receiver = self;
  v10.super_class = SPClientSession;
  v2 = [(SPClientSession *)&v10 init];
  if (v2)
  {
    dispatch_async(sUnBlockMainQueue, &__block_literal_global_198);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, siriSettingsDidChange, *MEMORY[0x277CEF5B0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, siriSettingsDidChange, @"AFOutputLanguageDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (runningInSpotlight)
    {
      v5 = -1;
    }

    v2->_maxUISuggestions = v5;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "hasPrefix:", @"com.apple.intelligenceflow"))
    {
      v8 = 1;
    }

    else
    {
      v8 = [bundleIdentifier hasPrefix:@"com.apple.ondeviceeval"];
    }

    v2->_isSearchTool = v8;
  }

  return v2;
}

void __29__SPClientSession_initialize__block_invoke()
{
  v0 = [MEMORY[0x277CD5D78] sharedCloudController];
  v1 = sCloudController;
  sCloudController = v0;

  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_85);
}

void __29__SPClientSession_initialize__block_invoke_2()
{
  v0 = DCSSearchFoundationCopyResultsWithOptions();
}

- (int64_t)contentFilters
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = sUnBlockMainQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SPClientSession_contentFilters__block_invoke;
  block[3] = &unk_279CFE740;
  v11 = &v17;
  v12 = &v13;
  v10 = v2;
  v4 = v2;
  dispatch_async(v3, block);
  v5 = dispatch_time(0, 200000000);
  v6 = 0;
  if (!dispatch_group_wait(v4, v5))
  {
    v7 = 2;
    if (!*(v18 + 24))
    {
      v7 = 0;
    }

    v6 = v7 | *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v6;
}

void __33__SPClientSession_contentFilters__block_invoke(uint64_t a1)
{
  v2 = sCloudController;
  if ([v2 hasProperNetworkConditionsToPlayMedia])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 canShowCloudVideo] ^ 1;
    *(*(*(a1 + 48) + 8) + 24) = [v2 canShowCloudMusic] ^ 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)queryTaskWithContext:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  searchString = [contextCopy searchString];
  searchEntities = [contextCopy searchEntities];
  v7 = [searchEntities count];

  if (!([searchString length] | v7))
  {
    v31 = 0;
    goto LABEL_53;
  }

  searchEntities2 = [contextCopy searchEntities];
  firstObject = [searchEntities2 firstObject];

  v10 = MEMORY[0x277CBEB18];
  v11 = SPDomains();
  v12 = [v10 arrayWithArray:v11];

  if (([contextCopy allowInternet] & 1) == 0)
  {
    [v12 removeObject:&unk_287C3B7D0];
    [v12 removeObject:&unk_287C3B7E8];
  }

  if (([firstObject isPhotosEntitySearch] & 1) != 0 || objc_msgSend(firstObject, "isContactEntitySearch"))
  {
    [v12 removeAllObjects];
    [v12 addObject:&unk_287C3B800];
  }

  [contextCopy setSearchDomains:{v12, v12}];
  v13 = SPGetDisabledDomains();
  allObjects = [v13 allObjects];
  [contextCopy setDisabledDomains:allObjects];

  v15 = contextCopy;
  v16 = _os_feature_enabled_impl();
  v17 = MEMORY[0x277D4BF48];
  if (v16)
  {
    v18 = SPLogForSPLogCategoryDefault();
    v19 = v18;
    if (*v17)
    {
      v20 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v20 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v18, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v19, v20, "[ProtectedApps] on", buf, 2u);
    }
  }

  v55 = searchString;
  v21 = MEMORY[0x277CBEB58];
  v22 = MEMORY[0x26D67ED20](0);
  v23 = [v21 setWithSet:v22];

  v24 = MEMORY[0x277CBEB58];
  v25 = MEMORY[0x26D67ED10]();
  v56 = [v24 setWithSet:v25];

  if ([v23 containsObject:@"com.apple.DocumentsApp"])
  {
    [v23 removeObject:@"com.apple.DocumentsApp"];
    [v23 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v23 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v23 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v23 addObject:@"com.apple.FileProvider.LocalStorage"];
    v26 = SPLogForSPLogCategoryDefault();
    v27 = v26;
    v28 = MEMORY[0x277D4BF48];
    if (*MEMORY[0x277D4BF48])
    {
      v29 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v29 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v26, v29))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "[ProtectedApps] Files app disabled";
  }

  else
  {
    [v23 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v23 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v23 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v23 removeObject:@"com.apple.FileProvider.LocalStorage"];
    v32 = SPLogForSPLogCategoryDefault();
    v27 = v32;
    v28 = MEMORY[0x277D4BF48];
    if (*MEMORY[0x277D4BF48])
    {
      v29 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v29 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v32, v29))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "[ProtectedApps] Files app enabled";
  }

  _os_log_impl(&dword_26B71B000, v27, v29, v30, buf, 2u);
LABEL_27:

  [v23 addObject:*MEMORY[0x277D65AE8]];
  allObjects2 = [v23 allObjects];
  v34 = allObjects2;
  v35 = MEMORY[0x277CBEBF8];
  if (allObjects2)
  {
    v36 = allObjects2;
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  [v15 setDisabledBundles:v36];

  allObjects3 = [v56 allObjects];
  v38 = allObjects3;
  if (allObjects3)
  {
    v39 = allObjects3;
  }

  else
  {
    v39 = v35;
  }

  [v15 setDisabledApps:v39];

  v40 = SPLogForSPLogCategoryDefault();
  v41 = v40;
  if (*v28)
  {
    v42 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v42 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v40, v42))
  {
    disabledBundles = [v15 disabledBundles];
    *buf = 138412290;
    v58 = disabledBundles;
    _os_log_impl(&dword_26B71B000, v41, v42, "[ProtectedApps] Disabled bundles in query context: %@", buf, 0xCu);
  }

  v44 = SPLogForSPLogCategoryDefault();
  v45 = v44;
  if (*MEMORY[0x277D4BF48])
  {
    v46 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v46 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v44, v46))
  {
    disabledApps = [v15 disabledApps];
    *buf = 138412290;
    v58 = disabledApps;
    _os_log_impl(&dword_26B71B000, v45, v46, "[ProtectedApps] Disabled apps in query context: %@", buf, 0xCu);
  }

  if (v7)
  {
    if (([firstObject isAppEntitySearch] & 1) != 0 || (objc_msgSend(firstObject, "isPhotosEntitySearch") & 1) != 0 || objc_msgSend(firstObject, "isContactEntitySearch"))
    {
      v48 = 50;
    }

    else
    {
      v48 = 13;
    }
  }

  else
  {
    v48 = 13;
  }

  v49 = [objc_alloc(MEMORY[0x277D4BED0]) initWithSearchQueryContext:v15];
  [v49 setMaxCount:v48];
  [v49 setGrouped:1];
  [v49 setContentFilters:self->_contentFilter];
  [v49 setInfinitePatience:self->_infinitePatience];
  if (sClientRankAndBlend)
  {
    v50 = off_279CFCCC8;
  }

  else
  {
    v50 = off_279CFCCD0;
  }

  v31 = [objc_alloc(*v50) initForSession:self withQuery:v49];
  [v31 setWhyQuery:{objc_msgSend(v15, "whyQuery")}];
  [v31 setQueryKind:{objc_msgSend(v15, "queryKind")}];
  [v31 setMaxUISuggestions:{-[SPClientSession maxUISuggestions](self, "maxUISuggestions")}];
  currentQueryContext = [(SPClientSession *)self currentQueryContext];
  [v31 setPreviousQueryContext:currentQueryContext];

  [(SPClientSession *)self setCurrentQueryContext:v15];
  searchString = v55;
LABEL_53:

  v52 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)setLastSections:(id)sections forQuery:(id)query
{
  queryCopy = query;
  v7 = [sections copy];
  os_unfair_lock_lock(&self->_sectionsLock);
  lastSections = self->_lastSections;
  self->_lastSections = v7;
  v9 = v7;

  lastQuery = self->_lastQuery;
  self->_lastQuery = queryCopy;

  os_unfair_lock_unlock(&self->_sectionsLock);
}

- (id)copyStaleSectionsForQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_lock(&self->_sectionsLock);
  v5 = self->_lastSections;
  v6 = self->_lastQuery;
  os_unfair_lock_unlock(&self->_sectionsLock);
  if (queryCopy && [(SPSearchQuery *)v6 plausiblyMatchesQuery:queryCopy])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setSearchDomains:(id)domains
{
  v23 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = MEMORY[0x277D4BF50];
  v7 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v5, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v21 = 138412290;
    v22 = domainsCopy;
    _os_log_impl(&dword_26B71B000, v5, ((v7 & 1) == 0), "Setting search domains %@", &v21, 0xCu);
  }

  v8 = [(NSArray *)self->_searchDomains copy];
  if (domainsCopy)
  {
    v9 = domainsCopy;
    p_super = &self->_searchDomains->super;
    self->_searchDomains = v9;
  }

  else
  {
    v11 = SPDomains();
    searchDomains = self->_searchDomains;
    self->_searchDomains = v11;

    if (!self->_observersAdded)
    {
      self->_observersAdded = 1;
      notify_register_check("com.apple.spotlightui.prefschanged", &self->_prefsToken);
      v21 = 0;
      notify_check(self->_prefsToken, &v21);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _SpotlightInternetDomainsChangedCallback, *MEMORY[0x277D4BF58], 0, CFNotificationSuspensionBehaviorDrop);
    }

    v14 = SPDomains();
    v15 = self->_searchDomains;
    self->_searchDomains = v14;

    p_super = SPLogForSPLogCategoryDefault();
    v16 = *v6;
    if (os_log_type_enabled(p_super, ((v16 & 1) == 0)))
    {
      v17 = self->_searchDomains;
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&dword_26B71B000, p_super, ((v16 & 1) == 0), "Setting search domains to %@", &v21, 0xCu);
    }
  }

  v18 = [(NSArray *)self->_searchDomains isEqual:v8];
  v19 = *MEMORY[0x277D85DE8];
  return v18 ^ 1;
}

- (NSArray)disabledBundleIds
{
  if (self->_observersAdded)
  {
    check = 0;
    notify_check(self->_prefsToken, &check);
    if (check)
    {
      [(SPClientSession *)self _setSearchDomains:0];
    }
  }

  v3 = MEMORY[0x26D67ED20](0);
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)preheat
{
  if (sClientRankAndBlend == 1)
  {

    +[SPFederatedQueryTask preheat];
  }

  else
  {
    mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
    [mEMORY[0x277D4BEA8] preheat];
  }
}

- (void)activate
{
  SSScreenTimeStatusClearCache();
  if (sClientRankAndBlend == 1)
  {
    [SPFederatedQueryTask activate:self->_isSearchTool];
  }

  else
  {
    mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
    [mEMORY[0x277D4BEA8] activate:&__block_literal_global_103];
  }

  v5 = +[SPPARSession spotlightPARSession];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] setParsecFeedbackListener:v5];

  self->_contentFilter = [(SPClientSession *)self contentFilters];
}

- (void)deactivate
{
  if (sClientRankAndBlend == 1)
  {
    currentQueryContext = [(SPClientSession *)self currentQueryContext];
    [currentQueryContext clearEvaluators];

    +[SPFederatedQueryTask deactivate];
  }

  else
  {
    mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
    [mEMORY[0x277D4BEA8] deactivate];

    currentQueryContext2 = [(SPClientSession *)self currentQueryContext];
    [currentQueryContext2 clearEvaluators];
  }
}

- (void)finishRanking:(id)ranking blendingDuration:(double)duration spotlightQueryIntent:(int)intent
{
  v44 = *MEMORY[0x277D85DE8];
  rankingCopy = ranking;
  v30 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = rankingCopy;
  v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v31)
  {
    v29 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(*(&v38 + 1) + 8 * v7);
        v9 = objc_opt_new();
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = v8;
        results = [v8 results];
        v11 = [results countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            v14 = 0;
            do
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(results);
              }

              v15 = *(*(&v34 + 1) + 8 * v14);
              if (objc_opt_respondsToSelector())
              {
                duplicatedItems = [v15 duplicatedItems];
                sp_copyForFeedback = [duplicatedItems sp_copyForFeedback];
              }

              else
              {
                sp_copyForFeedback = 0;
              }

              v18 = objc_alloc(MEMORY[0x277D4C580]);
              objectForFeedback = [v15 objectForFeedback];
              v20 = [v18 initWithResult:objectForFeedback hiddenResults:0 duplicateResults:sp_copyForFeedback localResultPosition:0];

              [v9 addObject:v20];
              ++v14;
            }

            while (v12 != v14);
            v12 = [results countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v12);
        }

        v21 = objc_alloc(MEMORY[0x277D4C608]);
        objectForFeedback2 = [v32 objectForFeedback];
        v23 = [v21 initWithResults:v9 section:objectForFeedback2 localSectionPosition:0 personalizationScore:0.0];

        [v30 addObject:v23];
        v7 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v31);
  }

  v24 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v30 blendingDuration:duration];
  if (objc_opt_respondsToSelector())
  {
    [v24 setSpotlightQueryIntent:intent];
  }

  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didRankSections:v24];

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveFirstTimeExperienceTextWithReply:(id)reply
{
  replyCopy = reply;
  v4 = replyCopy;
  if (sClientRankAndBlend == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SPClientSession_retrieveFirstTimeExperienceTextWithReply___block_invoke;
    v6[3] = &unk_279CFE790;
    v7 = replyCopy;
    [SPParsecQuery getFTEStringsWithReply:v6];
  }

  else
  {
    mEMORY[0x277D4BEA8] = [MEMORY[0x277D4BEA8] sharedConnection];
    [mEMORY[0x277D4BEA8] retrieveFirstTimeExperienceTextWithReply:v4];
  }
}

void __60__SPClientSession_retrieveFirstTimeExperienceTextWithReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[SPQueryTask queryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPClientSession_retrieveFirstTimeExperienceTextWithReply___block_invoke_2;
  block[3] = &unk_279CFE768;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = *(a1 + 32);
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(v13, block);
}

void __60__SPClientSession_retrieveFirstTimeExperienceTextWithReply___block_invoke_2(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"FTE_STRING";
  if ([*(a1 + 32) length])
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = &stru_287C35638;
  }

  v13[0] = v2;
  v12[1] = @"FTE_LEARN_MORE_LINK";
  if ([*(a1 + 40) length])
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &stru_287C35638;
  }

  v13[1] = v3;
  v12[2] = @"FTE_CONTINUE_LINK";
  if ([*(a1 + 48) length])
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &stru_287C35638;
  }

  v12[3] = @"FTE_DOMAINS";
  v5 = *(a1 + 56);
  if (!v5)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v13[2] = v4;
  v13[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v7 = SPLogForSPLogCategoryDefault();
  v8 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v7, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_26B71B000, v7, ((v8 & 1) == 0), "[FTE] Received FTE dictionary in client: %@", &v10, 0xCu);
  }

  (*(*(a1 + 64) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

@end