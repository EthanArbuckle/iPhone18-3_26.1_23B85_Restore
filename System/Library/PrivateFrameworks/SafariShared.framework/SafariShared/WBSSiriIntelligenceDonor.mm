@interface WBSSiriIntelligenceDonor
+ (WBSSiriIntelligenceDonor)sharedInstance;
+ (id)_bookmarkItemIdentifierForURLString:(id)string;
+ (id)_coreSpotlightTabDonationIdentifierForProfileWithIdentifier:(id)identifier;
+ (id)_historyItemIdentifierForURLString:(id)string profileIdentifier:(id)identifier;
+ (id)_safariCSSearchableIndex;
+ (id)coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey;
+ (id)coreSpotlightBookmarkTitleAttributeKey;
+ (id)coreSpotlightHistoryItemIsSTPAttributeKey;
+ (id)coreSpotlightPageDonationIdentifierForProfileWithIdentifier:(id)identifier;
+ (id)coreSpotlightProfileIDKey;
+ (id)coreSpotlightTabTabGroupAttributeKey;
+ (id)historyItemIdentifierForURL:(id)l profileIdentifier:(id)identifier;
- (WBSSiriIntelligenceDonor)init;
- (id)_arrayByFilteringDeletedHistoryItems:(id)items;
- (id)_computeCoreSpotlightIDsForBookmarks:(id)bookmarks;
- (id)_contentDescriptionForURL:(id)l;
- (id)_coreSpotlightItemsSubarrays:(id)subarrays;
- (id)_searchableItemsForIDs:(id)ds allBookmarks:(id)bookmarks;
- (void)_computeCoreSpotlightIndexingRequirementsForAllIDs:(id)ds indexedIDs:(id)iDs outIndexIDs:(id *)indexIDs outRemoveIDs:(id *)removeIDs;
- (void)_donateDataForPageWithURL:(id)l history:(id)history fullPageText:(id)text readerText:(id)readerText autocompleteTriggers:(id)triggers profileIdentifier:(id)identifier personalizationData:(id)data;
- (void)_donateHistoryItemsToCoreSpotlightCreatedAfterDate:(id)date beforeDate:(id)beforeDate historiesForProfiles:(id)profiles withCompletionHandler:(id)handler;
- (void)_donatePendingTabDataOnQueue:(id)queue withCompletionHandler:(id)handler;
- (void)_getIndexedBookmarksIDsToAttributesWithCompletionHandler:(id)handler;
- (void)_getIndexedIDsForSearchQueryString:(id)string completionHandler:(id)handler;
- (void)_getIndexedItemsForSearchQueryString:(id)string attributes:(id)attributes completionHandler:(id)handler;
- (void)_indexCoreSpotlightData:(id)data filterDeletedHistoryItems:(BOOL)items onDispatchQueue:(id)queue completionHandler:(id)handler;
- (void)_indexHistoryItemsToCoreSpotlight:(id)spotlight filterDeletedHistoryItems:(BOOL)items completionHandler:(id)handler;
- (void)_indexTabData:(id)data onDispatchQueue:(id)queue withCompletionHandler:(id)handler;
- (void)_removeCoreSpotlightDataWithIDs:(id)ds onDispatchQueue:(id)queue completionHandler:(id)handler;
- (void)_sanitizeAttributeSet:(id)set;
- (void)_scheduleTabBatchDonationTimerIfNeeded;
- (void)donateAllHistoryToCoreSpotlightForProfiles:(id)profiles completionHandler:(id)handler;
- (void)donateDataForPageWithURL:(id)l fullPageText:(id)text readerText:(id)readerText profileIdentifier:(id)identifier personalizationData:(id)data;
- (void)donateSafariBookmarksToCoreSpotlight:(id)spotlight withCompletionHandler:(id)handler;
- (void)export30DaysWorthOfHistoryToCoreSpotlightForProfiles:(id)profiles completionHandler:(id)handler;
- (void)reindexAllBookmarkAndHistoryItems:(id)items historiesForProfiles:(id)profiles withAcknowledgementHandler:(id)handler;
- (void)reindexBookmarkAndHistoryItemsWithIdentifiers:(id)identifiers allBookmarks:(id)bookmarks historiesForProfiles:(id)profiles withAcknowledgementHandler:(id)handler;
- (void)removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:(id)identifier;
- (void)removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:(id)identifier;
- (void)setTabNeedsSpotlightDeletion:(id)deletion;
- (void)setTabNeedsSpotlightDonation:(id)donation;
- (void)updateCoreSpotlightReadingListDataAfterUpgrade:(id)upgrade;
@end

@implementation WBSSiriIntelligenceDonor

+ (WBSSiriIntelligenceDonor)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __42__WBSSiriIntelligenceDonor_sharedInstance__block_invoke()
{
  if (NSClassFromString(&cfstr_Cssearchablein.isa))
  {
    v0 = objc_alloc_init(WBSSiriIntelligenceDonor);
    v1 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v0;
  }
}

- (WBSSiriIntelligenceDonor)init
{
  v19.receiver = self;
  v19.super_class = WBSSiriIntelligenceDonor;
  v2 = [(WBSSiriIntelligenceDonor *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.SafariShared.CoreSpotlightDonation", v4);
    coreSpotlightDonationSerialQueue = v2->_coreSpotlightDonationSerialQueue;
    v2->_coreSpotlightDonationSerialQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.SafariShared.TabDonationExitQueue", v8);
    tabDonationExitQueue = v2->_tabDonationExitQueue;
    v2->_tabDonationExitQueue = v9;

    v11 = dispatch_queue_create("com.apple.SafariShared.TabDonationBackgroundQueue", v4);
    tabDonationBackgroundQueue = v2->_tabDonationBackgroundQueue;
    v2->_tabDonationBackgroundQueue = v11;

    initIfAvailable = [objc_alloc(MEMORY[0x1E69C8A50]) initIfAvailable];
    entityCorrelator = v2->_entityCorrelator;
    v2->_entityCorrelator = initIfAvailable;

    v15 = objc_alloc_init(WBSSpotlightReindexingBackgroundSystemTaskManager);
    reindexingBackgroundSystemTaskManager = v2->_reindexingBackgroundSystemTaskManager;
    v2->_reindexingBackgroundSystemTaskManager = v15;

    v17 = v2;
  }

  return v2;
}

+ (id)_safariCSSearchableIndex
{
  v2 = [objc_alloc(MEMORY[0x1E6964E78]) initWithName:@"Safari" bundleIdentifier:@"com.apple.mobilesafari"];

  return v2;
}

+ (id)historyItemIdentifierForURL:(id)l profileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  absoluteString = [l absoluteString];
  v8 = [self _historyItemIdentifierForURLString:absoluteString profileIdentifier:identifierCopy];

  return v8;
}

+ (id)_historyItemIdentifierForURLString:(id)string profileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  safari_userVisibleURL = [string safari_userVisibleURL];
  safari_stringByFoldingWideCharactersAndNormalizing = [safari_userVisibleURL safari_stringByFoldingWideCharactersAndNormalizing];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"history:%@", safari_stringByFoldingWideCharactersAndNormalizing];
  v10 = [self _coreSpotlightItemIdentifierForURLString:v9];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", identifierCopy, v10];

  return v11;
}

+ (id)_bookmarkItemIdentifierForURLString:(id)string
{
  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"bookmark:%@", string];
  v5 = [self _coreSpotlightItemIdentifierForURLString:string];

  return v5;
}

+ (id)coreSpotlightPageDonationIdentifierForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (coreSpotlightPageDonationIdentifierForProfileWithIdentifier__once == -1)
  {
    if (!identifierCopy)
    {
LABEL_4:
      coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier = coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier;
      goto LABEL_6;
    }
  }

  else
  {
    +[WBSSiriIntelligenceDonor coreSpotlightPageDonationIdentifierForProfileWithIdentifier:];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    goto LABEL_4;
  }

  coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v4, coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier];
LABEL_6:
  v6 = coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier;

  return v6;
}

void __88__WBSSiriIntelligenceDonor_coreSpotlightPageDonationIdentifierForProfileWithIdentifier___block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v1 = [v0 stringWithFormat:@"%@.PageContentDonation", v3];
  v2 = coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier;
  coreSpotlightPageDonationIdentifierForProfileWithIdentifier__identifier = v1;
}

+ (id)_coreSpotlightTabDonationIdentifierForProfileWithIdentifier:(id)identifier
{
  v3 = _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[WBSSiriIntelligenceDonor _coreSpotlightTabDonationIdentifierForProfileWithIdentifier:];
  }

  _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", identifierCopy, _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__identifier];

  return _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__identifier;
}

void __88__WBSSiriIntelligenceDonor__coreSpotlightTabDonationIdentifierForProfileWithIdentifier___block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v1 = [v0 stringWithFormat:@"%@.TabDonation", v3];
  v2 = _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__identifier;
  _coreSpotlightTabDonationIdentifierForProfileWithIdentifier__identifier = v1;
}

+ (id)coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey
{
  if (coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey];
  }

  v3 = coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey_coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey;

  return v3;
}

void __82__WBSSiriIntelligenceDonor_coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"bookmarkIsVistedForProfileIDs" searchable:1 searchableByDefault:0 unique:1 multiValued:1];
  v1 = coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey_coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey;
  coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey_coreSpotlightBookmarkIsVistedForProfileIDsAttributeKey = v0;
}

+ (id)coreSpotlightBookmarkTitleAttributeKey
{
  if (coreSpotlightBookmarkTitleAttributeKey_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor coreSpotlightBookmarkTitleAttributeKey];
  }

  v3 = coreSpotlightBookmarkTitleAttributeKey_coreSpotlightBookmarkTitleAttributeKey;

  return v3;
}

void __66__WBSSiriIntelligenceDonor_coreSpotlightBookmarkTitleAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"bookmarkTitle" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  v1 = coreSpotlightBookmarkTitleAttributeKey_coreSpotlightBookmarkTitleAttributeKey;
  coreSpotlightBookmarkTitleAttributeKey_coreSpotlightBookmarkTitleAttributeKey = v0;
}

+ (id)coreSpotlightProfileIDKey
{
  if (coreSpotlightProfileIDKey_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor coreSpotlightProfileIDKey];
  }

  v3 = coreSpotlightProfileIDKey_coreSpotlightProfileIDAttributeKey;

  return v3;
}

void __53__WBSSiriIntelligenceDonor_coreSpotlightProfileIDKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"profileIdentifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  v1 = coreSpotlightProfileIDKey_coreSpotlightProfileIDAttributeKey;
  coreSpotlightProfileIDKey_coreSpotlightProfileIDAttributeKey = v0;
}

+ (id)coreSpotlightHistoryItemIsSTPAttributeKey
{
  if (coreSpotlightHistoryItemIsSTPAttributeKey_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor coreSpotlightHistoryItemIsSTPAttributeKey];
  }

  v3 = coreSpotlightHistoryItemIsSTPAttributeKey_coreSpotlightHistoryItemIsSTPAttributeKey;

  return v3;
}

void __69__WBSSiriIntelligenceDonor_coreSpotlightHistoryItemIsSTPAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"itemIsFromSTP" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  v1 = coreSpotlightHistoryItemIsSTPAttributeKey_coreSpotlightHistoryItemIsSTPAttributeKey;
  coreSpotlightHistoryItemIsSTPAttributeKey_coreSpotlightHistoryItemIsSTPAttributeKey = v0;
}

+ (id)coreSpotlightTabTabGroupAttributeKey
{
  if (coreSpotlightTabTabGroupAttributeKey_onceToken != -1)
  {
    +[WBSSiriIntelligenceDonor coreSpotlightTabTabGroupAttributeKey];
  }

  v3 = coreSpotlightTabTabGroupAttributeKey_coreSpotlightTabTabGroupCustomAttributeKey;

  return v3;
}

void __64__WBSSiriIntelligenceDonor_coreSpotlightTabTabGroupAttributeKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"tabGroupUUID" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
  v1 = coreSpotlightTabTabGroupAttributeKey_coreSpotlightTabTabGroupCustomAttributeKey;
  coreSpotlightTabTabGroupAttributeKey_coreSpotlightTabTabGroupCustomAttributeKey = v0;
}

- (void)donateDataForPageWithURL:(id)l fullPageText:(id)text readerText:(id)readerText profileIdentifier:(id)identifier personalizationData:(id)data
{
  lCopy = l;
  textCopy = text;
  readerTextCopy = readerText;
  identifierCopy = identifier;
  dataCopy = data;
  v17 = +[WBSHistoryController existingSharedHistoryController];
  v18 = [v17 historyForProfileIdentifier:identifierCopy loadIfNeeded:1];

  safari_originalDataAsString = [lCopy safari_originalDataAsString];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __115__WBSSiriIntelligenceDonor_donateDataForPageWithURL_fullPageText_readerText_profileIdentifier_personalizationData___block_invoke;
  v26[3] = &unk_1E7FCA708;
  v26[4] = self;
  v27 = lCopy;
  v28 = v18;
  v29 = textCopy;
  v30 = readerTextCopy;
  v31 = identifierCopy;
  v32 = dataCopy;
  v20 = dataCopy;
  v21 = identifierCopy;
  v22 = readerTextCopy;
  v23 = textCopy;
  v24 = v18;
  v25 = lCopy;
  [v24 getAutocompleteTriggersForURLString:safari_originalDataAsString completionHandler:v26];
}

- (void)_donateDataForPageWithURL:(id)l history:(id)history fullPageText:(id)text readerText:(id)readerText autocompleteTriggers:(id)triggers profileIdentifier:(id)identifier personalizationData:(id)data
{
  lCopy = l;
  historyCopy = history;
  textCopy = text;
  readerTextCopy = readerText;
  triggersCopy = triggers;
  identifierCopy = identifier;
  dataCopy = data;
  if (([lCopy safari_isURLTooLongToDisplay] & 1) == 0)
  {
    coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __145__WBSSiriIntelligenceDonor__donateDataForPageWithURL_history_fullPageText_readerText_autocompleteTriggers_profileIdentifier_personalizationData___block_invoke;
    v23[3] = &unk_1E7FB7280;
    v24 = historyCopy;
    v25 = lCopy;
    v26 = textCopy;
    v27 = readerTextCopy;
    v28 = triggersCopy;
    v29 = dataCopy;
    v30 = identifierCopy;
    selfCopy = self;
    dispatch_async(coreSpotlightDonationSerialQueue, v23);
  }
}

void __145__WBSSiriIntelligenceDonor__donateDataForPageWithURL_history_fullPageText_readerText_autocompleteTriggers_profileIdentifier_personalizationData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemForURL:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_alloc_init(WBSSiriIntelligenceDonorHistoryData);
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setFullPageText:*(a1 + 48)];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setPageURL:*(a1 + 40)];
    v4 = [v2 title];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setPageTitle:v4];

    [(WBSSiriIntelligenceDonorHistoryData *)v3 setReaderText:*(a1 + 56)];
    v5 = [v2 userVisibleURLString];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setUserVisibleURLString:v5];

    v6 = [v2 lastVisitedDate];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setLastVisitedDate:v6];

    [(WBSSiriIntelligenceDonorHistoryData *)v3 setAutocompleteTriggers:*(a1 + 64)];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setPersonalizationData:*(a1 + 72)];
    [(WBSSiriIntelligenceDonorHistoryData *)v3 setProfileIdentifier:*(a1 + 80)];
    v7 = *(a1 + 88);
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v3];
    [v7 _indexHistoryItemsToCoreSpotlight:v8 filterDeletedHistoryItems:1 completionHandler:0];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __145__WBSSiriIntelligenceDonor__donateDataForPageWithURL_history_fullPageText_readerText_autocompleteTriggers_profileIdentifier_personalizationData___block_invoke_cold_1();
    }

    v10 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __145__WBSSiriIntelligenceDonor__donateDataForPageWithURL_history_fullPageText_readerText_autocompleteTriggers_profileIdentifier_personalizationData___block_invoke_cold_2();
    }
  }
}

- (void)donateAllHistoryToCoreSpotlightForProfiles:(id)profiles completionHandler:(id)handler
{
  v6 = MEMORY[0x1E695DF00];
  handlerCopy = handler;
  profilesCopy = profiles;
  distantPast = [v6 distantPast];
  date = [MEMORY[0x1E695DF00] date];
  [(WBSSiriIntelligenceDonor *)self _donateHistoryItemsToCoreSpotlightCreatedAfterDate:distantPast beforeDate:date historiesForProfiles:profilesCopy withCompletionHandler:handlerCopy];
}

- (void)export30DaysWorthOfHistoryToCoreSpotlightForProfiles:(id)profiles completionHandler:(id)handler
{
  v6 = MEMORY[0x1E695DEE8];
  handlerCopy = handler;
  profilesCopy = profiles;
  currentCalendar = [v6 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v10 = [currentCalendar components:60 fromDate:date];
  [v10 setDay:{objc_msgSend(v10, "day") - 30}];
  v11 = [currentCalendar dateFromComponents:v10];
  [(WBSSiriIntelligenceDonor *)self _donateHistoryItemsToCoreSpotlightCreatedAfterDate:v11 beforeDate:date historiesForProfiles:profilesCopy withCompletionHandler:handlerCopy];
}

- (void)donateSafariBookmarksToCoreSpotlight:(id)spotlight withCompletionHandler:(id)handler
{
  spotlightCopy = spotlight;
  handlerCopy = handler;
  v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Indexing bookmarks to CoreSpotlight", buf, 2u);
  }

  v9 = [(WBSSiriIntelligenceDonor *)self _computeCoreSpotlightIDsForBookmarks:spotlightCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7FCA778;
  v13 = spotlightCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = spotlightCopy;
  v11 = handlerCopy;
  [(WBSSiriIntelligenceDonor *)self _getIndexedBookmarksIDsToAttributesWithCompletionHandler:v12];
}

void __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_cold_1(v7, v6);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v5 allKeys];
    v11 = [v9 setWithArray:v10];

    if (![v11 count])
    {
      v12 = [objc_opt_class() _safariCSSearchableIndex];
      v13 = coreSpotlightBookmarksDonationIdentifier();
      v51[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      [v12 deleteSearchableItemsWithDomainIdentifiers:v14 completionHandler:0];
    }

    v15 = [*(a1 + 40) safari_setByApplyingBlock:&__block_literal_global_212];
    v16 = *(a1 + 32);
    v48 = 0;
    v49 = 0;
    v37 = v15;
    v38 = v11;
    [v16 _computeCoreSpotlightIndexingRequirementsForAllIDs:? indexedIDs:? outIndexIDs:? outRemoveIDs:?];
    v17 = v49;
    v36 = v48;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = a1;
    obj = *(a1 + 40);
    v18 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 coreSpotlightID];
          v24 = [v5 objectForKey:v23];
          v25 = [v24 objectForKey:@"title"];

          v26 = [v22 bookmarkTitle];
          LOBYTE(v22) = [v25 isEqualToString:v26];

          if ((v22 & 1) == 0)
          {
            v27 = [v17 setByAddingObject:v23];

            v17 = v27;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v19);
    }

    v28 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    v29 = v36;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_cold_2();
    }

    v30 = [*(v39 + 32) _searchableItemsForIDs:v17 allBookmarks:{*(v39 + 40), v36}];
    v31 = [MEMORY[0x1E695DF70] array];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_217;
    v41[3] = &unk_1E7FCA750;
    v42 = v29;
    v43 = v31;
    v32 = v31;
    v33 = v29;
    [v5 enumerateKeysAndObjectsUsingBlock:v41];
    v34 = *(v39 + 32);
    v35 = [v33 allObjects];
    [v34 removeCoreSpotlightDataWithIDs:v35 completionHandler:0];

    [*(v39 + 32) _indexCoreSpotlightData:v30 filterDeletedHistoryItems:0 completionHandler:*(v39 + 48)];
    v6 = 0;
  }
}

void __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_217(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) containsObject:a2];
  v6 = v8;
  if (v5)
  {
    v7 = [v8 objectForKey:@"weakRelatedUniqueIdentifier"];
    if ([v7 length])
    {
      [*(a1 + 40) addObject:v7];
    }

    v6 = v8;
  }
}

- (void)updateCoreSpotlightReadingListDataAfterUpgrade:(id)upgrade
{
  v4 = [upgrade safari_filterObjectsUsingBlock:&__block_literal_global_225];
  coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSSiriIntelligenceDonor_updateCoreSpotlightReadingListDataAfterUpgrade___block_invoke_2;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(coreSpotlightDonationSerialQueue, v7);
}

void __75__WBSSiriIntelligenceDonor_updateCoreSpotlightReadingListDataAfterUpgrade___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _computeCoreSpotlightIDsForBookmarks:*(a1 + 40)];
  v2 = [*(a1 + 32) _searchableItemsForIDs:v3 allBookmarks:*(a1 + 40)];
  [*(a1 + 32) _indexCoreSpotlightData:v2 filterDeletedHistoryItems:0 completionHandler:&__block_literal_global_228];
}

void __75__WBSSiriIntelligenceDonor_updateCoreSpotlightReadingListDataAfterUpgrade___block_invoke_3(uint64_t a1, int a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Successfully indexed reading list items to CoreSpotlight on upgrade", v6, 2u);
    }

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 setBool:1 forKey:@"DidUpdateCoreSpotlightBookmarksDataOnUpgrade"];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__WBSSiriIntelligenceDonor_updateCoreSpotlightReadingListDataAfterUpgrade___block_invoke_3_cold_1();
  }
}

- (void)reindexAllBookmarkAndHistoryItems:(id)items historiesForProfiles:(id)profiles withAcknowledgementHandler:(id)handler
{
  itemsCopy = items;
  profilesCopy = profiles;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke;
  v22[3] = &unk_1E7FCA7C0;
  v22[4] = self;
  v23 = itemsCopy;
  v24 = handlerCopy;
  v11 = handlerCopy;
  v12 = itemsCopy;
  v13 = MEMORY[0x1BFB13CE0](v22);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v16 = [currentCalendar components:60 fromDate:date];
  [v16 setDay:{objc_msgSend(v16, "day") - 7}];
  v17 = [currentCalendar dateFromComponents:v16];
  [(WBSSiriIntelligenceDonor *)self _donateHistoryItemsToCoreSpotlightCreatedAfterDate:v17 beforeDate:date historiesForProfiles:profilesCopy withCompletionHandler:v13];

  reindexingBackgroundSystemTaskManager = self->_reindexingBackgroundSystemTaskManager;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_231;
  v20[3] = &unk_1E7FB6E30;
  v20[4] = self;
  v21 = profilesCopy;
  v19 = profilesCopy;
  [(WBSSpotlightReindexingBackgroundSystemTaskManager *)reindexingBackgroundSystemTaskManager registerAndSubmitRequestForTask:v20];
}

void __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Successfully re-indexed last week of searchable history items for CoreSpotlight", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_230;
  v8[3] = &unk_1E7FC8870;
  v9 = *(a1 + 48);
  [v6 donateSafariBookmarksToCoreSpotlight:v7 withCompletionHandler:v8];
}

uint64_t __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_230(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Successfully re-indexed all searchable bookmark items for CoreSpotlight", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_230_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_2(uint64_t a1, int a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Successfully re-indexed all searchable history items for CoreSpotlight", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __110__WBSSiriIntelligenceDonor_reindexAllBookmarkAndHistoryItems_historiesForProfiles_withAcknowledgementHandler___block_invoke_2_cold_1();
  }
}

- (void)reindexBookmarkAndHistoryItemsWithIdentifiers:(id)identifiers allBookmarks:(id)bookmarks historiesForProfiles:(id)profiles withAcknowledgementHandler:(id)handler
{
  bookmarksCopy = bookmarks;
  profilesCopy = profiles;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (identifiers)
  {
    v14 = [identifiers mutableCopy];
    identifiersLeftToReindex = self->_identifiersLeftToReindex;
    self->_identifiersLeftToReindex = v14;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    date = [MEMORY[0x1E695DF00] date];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke;
    v18[3] = &unk_1E7FCA7C0;
    v18[4] = self;
    v19 = bookmarksCopy;
    v20 = v13;
    [(WBSSiriIntelligenceDonor *)self _donateHistoryItemsToCoreSpotlightCreatedAfterDate:distantPast beforeDate:date historiesForProfiles:profilesCopy withCompletionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

void __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Successfully re-indexed searchable history items with identifiers to CoreSpotlight", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_cold_1();
  }

  v6 = [*(a1 + 32) _computeCoreSpotlightIDsForBookmarks:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [v7[2] copy];
  v9 = [v7 _searchableItemsForIDs:v8 allBookmarks:*(a1 + 40)];

  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_234;
  v11[3] = &unk_1E7FC5238;
  v11[4] = v10;
  v12 = *(a1 + 48);
  [v10 _indexCoreSpotlightData:v9 filterDeletedHistoryItems:0 completionHandler:v11];
}

void __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_234(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Successfully re-indexed searchable bookmark items with identifiers to CoreSpotlight", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_234_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = [v6[2] allObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_235;
  v9[3] = &unk_1E7FC5238;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v6 removeCoreSpotlightDataWithIDs:v7 completionHandler:v9];
}

uint64_t __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_235(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Successfully removed spotlight items that do not map to a current history or bookmark item", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __135__WBSSiriIntelligenceDonor_reindexBookmarkAndHistoryItemsWithIdentifiers_allBookmarks_historiesForProfiles_withAcknowledgementHandler___block_invoke_235_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  return (*(*(a1 + 40) + 16))();
}

- (void)_donateHistoryItemsToCoreSpotlightCreatedAfterDate:(id)date beforeDate:(id)beforeDate historiesForProfiles:(id)profiles withCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  beforeDateCopy = beforeDate;
  profilesCopy = profiles;
  handlerCopy = handler;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v11 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = profilesCopy;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        dispatch_group_enter(v11);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke;
        v24[3] = &unk_1E7FCA860;
        v25 = v11;
        selfCopy = self;
        v27 = v15;
        v28 = v33;
        [v15 getVisitsCreatedAfterDate:dateCopy beforeDate:beforeDateCopy completionHandler:v24];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v12);
  }

  if (handlerCopy)
  {
    coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_240;
    block[3] = &unk_1E7FCA888;
    v22 = handlerCopy;
    v23 = v33;
    dispatch_group_notify(v11, coreSpotlightDonationSerialQueue, block);
  }

  _Block_object_dispose(v33, 8);
}

void __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(*(a1 + 40) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7FCA838;
    block[4] = *(a1 + 48);
    v5 = v3;
    v6 = *(a1 + 56);
    v10 = v5;
    v13 = v6;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    dispatch_async(v4, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(a1 + 32);
  v4 = [v3 databaseID];
  v5 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_3;
  v14[3] = &unk_1E7FCA7E8;
  v6 = v4;
  v15 = v6;
  v16 = v2;
  v7 = v2;
  [v5 enumerateObjectsUsingBlock:v14];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_4;
  v10[3] = &unk_1E7FCA810;
  v13 = *(a1 + 64);
  v11 = v6;
  v12 = *(a1 + 48);
  v8 = v6;
  v9 = MEMORY[0x1BFB13CE0](v10);
  [*(a1 + 56) _indexHistoryItemsToCoreSpotlight:v7 filterDeletedHistoryItems:1 completionHandler:v9];
}

void __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = objc_alloc_init(WBSSiriIntelligenceDonorHistoryData);
  v4 = [v3 item];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [v4 urlString];
  v7 = [v5 URLWithString:v6];
  [(WBSSiriIntelligenceDonorHistoryData *)v14 setPageURL:v7];

  v8 = [v3 title];

  [(WBSSiriIntelligenceDonorHistoryData *)v14 setPageTitle:v8];
  v9 = [v4 lastVisitedDate];
  [(WBSSiriIntelligenceDonorHistoryData *)v14 setLastVisitedDate:v9];

  v10 = [v4 userVisibleURLString];
  [(WBSSiriIntelligenceDonorHistoryData *)v14 setUserVisibleURLString:v10];

  [(WBSSiriIntelligenceDonorHistoryData *)v14 setProfileIdentifier:*(a1 + 32)];
  v11 = [(WBSSiriIntelligenceDonorHistoryData *)v14 pageURL];
  if (v11)
  {
    v12 = v11;
    v13 = [(WBSSiriIntelligenceDonorHistoryData *)v14 pageTitle];

    if (v13)
    {
      [*(a1 + 40) addObject:v14];
    }
  }
}

void __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Successfully re-indexed all searchable history items to CoreSpotlight for profile with ID: %@", &v6, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_4_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)_searchableItemsForIDs:(id)ds allBookmarks:(id)bookmarks
{
  v49 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __64__WBSSiriIntelligenceDonor__searchableItemsForIDs_allBookmarks___block_invoke;
  v45[3] = &unk_1E7FCA8B0;
  v38 = dsCopy;
  v46 = v38;
  selfCopy = self;
  v7 = [bookmarks safari_filterObjectsUsingBlock:v45];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        isReadingListItem = [v12 isReadingListItem];
        v14 = @"com.apple.safari.bookmark";
        if (isReadingListItem)
        {
          v14 = @"com.apple.safari.readinglist";
        }

        v15 = MEMORY[0x1E6964E90];
        v16 = v14;
        v17 = [[v15 alloc] initWithItemContentType:v16];

        bookmarkTitle = [v12 bookmarkTitle];
        [v17 setTitle:bookmarkTitle];

        v19 = MEMORY[0x1E695DFF8];
        bookmarkURLString = [v12 bookmarkURLString];
        v21 = [v19 URLWithString:bookmarkURLString];

        [v17 setContentURL:v21];
        v22 = objc_opt_class();
        bookmarkURLString2 = [v12 bookmarkURLString];
        v24 = [v22 _coreSpotlightItemIdentifierForURLString:bookmarkURLString2];
        [v17 setWeakRelatedUniqueIdentifier:v24];

        path = [v21 path];
        [v17 setPath:path];

        host = [v21 host];
        v27 = [host safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:0 simplifiedStringOffset:0];
        [v17 setComment:v27];

        [(WBSSiriIntelligenceDonor *)self _sanitizeAttributeSet:v17];
        v28 = objc_alloc(MEMORY[0x1E6964E80]);
        coreSpotlightID = [v12 coreSpotlightID];
        v30 = coreSpotlightBookmarksDonationIdentifier();
        v31 = [v28 initWithUniqueIdentifier:coreSpotlightID domainIdentifier:v30 attributeSet:v17];

        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        [v31 setExpirationDate:distantFuture];

        if (v31)
        {
          [v40 addObject:v31];
          isReadingListItem2 = [v12 isReadingListItem];
          entityCorrelator = self->_entityCorrelator;
          uuidString = [v12 uuidString];
          if (isReadingListItem2)
          {
            [(WBSSpotlightDonationEntityCorrelator *)entityCorrelator correlateReadingListEntityForItem:v31 withUUIDString:uuidString];
          }

          else
          {
            [(WBSSpotlightDonationEntityCorrelator *)entityCorrelator correlateBookmarkEntityForItem:v31 withUUIDString:uuidString];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v9);
  }

  v36 = [v40 copy];

  return v36;
}

uint64_t __64__WBSSiriIntelligenceDonor__searchableItemsForIDs_allBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 coreSpotlightID];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
    if (v7)
    {
      v8 = [v3 coreSpotlightID];
      [v7 removeObject:v8];
    }
  }

  return v6;
}

- (id)_coreSpotlightItemsSubarrays:(id)subarrays
{
  subarraysCopy = subarrays;
  v4 = [subarraysCopy count];
  if (v4)
  {
    v5 = v4;
    array = [MEMORY[0x1E695DF70] array];
    v7 = array;
    if (v5 >= 0x8000)
    {
      do
      {
        if (v5 >= 0x7FFF)
        {
          v8 = 0x7FFFLL;
        }

        else
        {
          v8 = v5;
        }

        v9 = [subarraysCopy subarrayWithRange:{0, v8}];
        [v7 addObject:v9];
        v5 -= v8;
      }

      while (v5);
    }

    else
    {
      [array addObject:subarraysCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_arrayByFilteringDeletedHistoryItems:(id)items
{
  v4 = MEMORY[0x1E695DF90];
  itemsCopy = items;
  dictionary = [v4 dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WBSSiriIntelligenceDonor__arrayByFilteringDeletedHistoryItems___block_invoke;
  v10[3] = &unk_1E7FCA8D8;
  v10[4] = self;
  v11 = dictionary;
  v7 = dictionary;
  v8 = [itemsCopy safari_filterObjectsUsingBlock:v10];

  return v8;
}

BOOL __65__WBSSiriIntelligenceDonor__arrayByFilteringDeletedHistoryItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributeSet];
  v5 = [v4 contentType];

  if (v5 == @"com.apple.safari.history")
  {
    v7 = [v3 attributeSet];
    v8 = [objc_opt_class() coreSpotlightProfileIDKey];
    v9 = [v7 valueForCustomKey:v8];

    if (v9)
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
      if (!v10)
      {
        v11 = +[WBSHistoryController existingSharedHistoryController];
        v10 = [v11 historyForProfileIdentifier:v9 loadIfNeeded:1];

        [*(a1 + 40) setValue:v10 forKey:v9];
      }

      v12 = [v3 attributeSet];
      v13 = [v12 contentURL];
      v14 = [v10 itemForURL:v13];
      v6 = v14 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_indexCoreSpotlightData:(id)data filterDeletedHistoryItems:(BOOL)items onDispatchQueue:(id)queue completionHandler:(id)handler
{
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
  if ([dataCopy count])
  {
    v13 = [(WBSSiriIntelligenceDonor *)self _coreSpotlightItemsSubarrays:dataCopy];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__34;
    v22[4] = __Block_byref_object_dispose__34;
    v23 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke;
    v15[3] = &unk_1E7FCA900;
    itemsCopy = items;
    v16 = v13;
    selfCopy = self;
    v20 = v22;
    v18 = queueCopy;
    v19 = handlerCopy;
    v14 = v13;
    dispatch_async(v18, v15);

    _Block_object_dispose(v22, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if (*(a1 + 72) == 1)
        {
          v8 = [*(a1 + 40) _arrayByFilteringDeletedHistoryItems:v7];
        }

        else
        {
          v8 = v7;
        }

        v9 = v8;
        v10 = [objc_opt_class() _safariCSSearchableIndex];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_2;
        v17[3] = &unk_1E7FC6E98;
        v17[4] = *(a1 + 64);
        [v10 indexSearchableItems:v9 completionHandler:v17];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_246;
  block[3] = &unk_1E7FCA888;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = v12;
  v16 = v13;
  dispatch_async(v11, block);
}

void __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_2_cold_1(v5, v4);
    }
  }
}

uint64_t __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_246(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40) == 0);
  }

  return result;
}

- (void)_removeCoreSpotlightDataWithIDs:(id)ds onDispatchQueue:(id)queue completionHandler:(id)handler
{
  dsCopy = ds;
  queueCopy = queue;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke;
    v10[3] = &unk_1E7FB81B8;
    v11 = dsCopy;
    v12 = handlerCopy;
    dispatch_async(queueCopy, v10);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB8300;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 deleteSearchableItemsWithIdentifiers:v3 completionHandler:v4];
}

void __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke_2_cold_1(v4, v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0);
  }
}

- (void)removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(coreSpotlightDonationSerialQueue, v7);
}

void __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() coreSpotlightPageDonationIdentifierForProfileWithIdentifier:*(a1 + 40)];
  v2 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v1;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Removing all CoreSpotlight history data under domain identifier %@ donated by Safari", buf, 0xCu);
  }

  v3 = [objc_opt_class() _safariCSSearchableIndex];
  v8 = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke_247;
  v6[3] = &unk_1E7FB8278;
  v7 = v1;
  v5 = v1;
  [v3 deleteSearchableItemsWithDomainIdentifiers:v4 completionHandler:v6];
}

void __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke_247(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke_247_cold_1(v4, v2);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke_247_cold_2();
  }
}

- (void)removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(coreSpotlightDonationSerialQueue, v7);
}

void __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() _coreSpotlightTabDonationIdentifierForProfileWithIdentifier:*(a1 + 40)];
  v2 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v1;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Removing all CoreSpotlight tab data under domain identifier %@ donated by Safari", buf, 0xCu);
  }

  v3 = [objc_opt_class() _safariCSSearchableIndex];
  v8 = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke_248;
  v6[3] = &unk_1E7FB8278;
  v7 = v1;
  v5 = v1;
  [v3 deleteSearchableItemsWithDomainIdentifiers:v4 completionHandler:v6];
}

void __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke_248(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke_248_cold_1(v4, v2);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke_248_cold_2();
  }
}

- (void)_indexHistoryItemsToCoreSpotlight:(id)spotlight filterDeletedHistoryItems:(BOOL)items completionHandler:(id)handler
{
  itemsCopy = items;
  spotlightCopy = spotlight;
  handlerCopy = handler;
  if ([spotlightCopy count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __106__WBSSiriIntelligenceDonor__indexHistoryItemsToCoreSpotlight_filterDeletedHistoryItems_completionHandler___block_invoke;
    v15 = &unk_1E7FCA928;
    selfCopy = self;
    v17 = v10;
    v11 = v10;
    [spotlightCopy enumerateObjectsUsingBlock:&v12];
    [(WBSSiriIntelligenceDonor *)self _indexCoreSpotlightData:v11 filterDeletedHistoryItems:itemsCopy completionHandler:handlerCopy, v12, v13, v14, v15, selfCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

void __106__WBSSiriIntelligenceDonor__indexHistoryItemsToCoreSpotlight_filterDeletedHistoryItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 userVisibleURLString];
  v6 = [v3 profileIdentifier];
  v7 = [v4 _historyItemIdentifierForURLString:v5 profileIdentifier:v6];

  v8 = *(*(a1 + 32) + 16);
  if (v8)
  {
    if (![v8 containsObject:v7])
    {
      goto LABEL_30;
    }

    v9 = *(*(a1 + 32) + 16);
    if (v9)
    {
      [v9 removeObject:v7];
    }
  }

  v10 = [v3 pageURL];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E6964E90]) initWithItemContentType:@"com.apple.safari.history"];
    v12 = [v3 pageURL];
    [v11 setContentURL:v12];

    v13 = [v3 pageTitle];
    [v11 setTitle:v13];

    v14 = [v3 readerText];
    if (v14)
    {
      [v11 setTextContent:v14];
    }

    else
    {
      v16 = [v3 fullPageText];
      [v11 setTextContent:v16];
    }

    v17 = [v3 readerText];
    if (v17)
    {
      v18 = @"ReaderText";
    }

    else
    {
      v18 = @"FullPageText";
    }

    [v11 setTextContentDataSource:v18];

    v19 = [v3 lastVisitedDate];
    [v11 setLastUsedDate:v19];

    v20 = [v3 profileIdentifier];
    v21 = [objc_opt_class() coreSpotlightProfileIDKey];
    [v11 setValue:v20 forCustomKey:v21];

    v22 = *(a1 + 32);
    v23 = [v3 pageURL];
    v24 = [v22 _contentDescriptionForURL:v23];
    [v11 setContentDescription:v24];

    if (objc_opt_respondsToSelector())
    {
      v25 = [v3 autocompleteTriggers];
      [v11 setAutocompleteTriggers:v25];
    }

    v26 = [v3 personalizationData];
    if (v26)
    {
      v27 = v26;
      v28 = [v3 personalizationData];
      v29 = [v28 searchQuery];

      if (v29)
      {
        if (objc_opt_respondsToSelector())
        {
          v30 = [v3 lastVisitedDate];
          [v11 setLastAppEngagementDate:v30];
        }

        if (objc_opt_respondsToSelector())
        {
          v31 = [v3 personalizationData];
          v32 = [v31 searchQuery];
          [v11 setLastAppSearchEngagementQuery:v32];
        }

        if (objc_opt_respondsToSelector())
        {
          v33 = MEMORY[0x1E696AD98];
          v34 = [v3 personalizationData];
          v35 = [v33 numberWithInt:{objc_msgSend(v34, "position")}];
          [v11 setLastAppSearchEngagementRenderPosition:v35];
        }
      }
    }

    v36 = objc_opt_class();
    v37 = [v3 userVisibleURLString];
    v38 = [v36 _coreSpotlightItemIdentifierForURLString:v37];
    [v11 setWeakRelatedUniqueIdentifier:v38];

    [*(a1 + 32) _sanitizeAttributeSet:v11];
    v39 = objc_opt_class();
    v40 = [v3 profileIdentifier];
    v41 = [v39 coreSpotlightPageDonationIdentifierForProfileWithIdentifier:v40];

    v42 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v7 domainIdentifier:v41 attributeSet:v11];
    v43 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      __106__WBSSiriIntelligenceDonor__indexHistoryItemsToCoreSpotlight_filterDeletedHistoryItems_completionHandler___block_invoke_cold_1(v7, v43, v11);
    }

    v44 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = v44;
      v46 = [v3 pageURL];
      v47 = [v11 textContent];
      v48 = 138478339;
      v49 = v46;
      v50 = 2113;
      v51 = v7;
      v52 = 2048;
      v53 = [v47 length];
      _os_log_debug_impl(&dword_1BB6F3000, v45, OS_LOG_TYPE_DEBUG, "Donating history item to CoreSpotlight with URL: %{private}@ ID: %{private}@ text content length: %ld", &v48, 0x20u);

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    else if (!v42)
    {
LABEL_29:

      goto LABEL_30;
    }

    [*(*(a1 + 32) + 40) correlateHistoryEntityForItem:v42];
    [*(a1 + 40) addObject:v42];
    goto LABEL_29;
  }

  v15 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v48) = 0;
    _os_log_impl(&dword_1BB6F3000, v15, OS_LOG_TYPE_INFO, "Skipping donation of history item due to nil url.", &v48, 2u);
  }

LABEL_30:
}

- (id)_contentDescriptionForURL:(id)l
{
  safari_userVisibleString = [l safari_userVisibleString];
  v4 = [safari_userVisibleString safari_simplifiedUserVisibleURLStringWithSimplifications:463 forDisplayOnly:1 simplifiedStringOffset:0];

  return v4;
}

- (void)_getIndexedItemsForSearchQueryString:(id)string attributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  stringCopy = string;
  v10 = [handler copy];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObject:@"uniqueIdentifier"];
  if ([attributesCopy count])
  {
    v12 = [v11 arrayByAddingObjectsFromArray:attributesCopy];

    v11 = v12;
  }

  v13 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v13 setPrivateQuery:1];
  [v13 setFetchAttributes:v11];
  v14 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:stringCopy queryContext:v13];

  v15 = [MEMORY[0x1E695DFA8] set];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke;
  v35[3] = &unk_1E7FC9CA8;
  v16 = v15;
  v36 = v16;
  [v14 setFoundItemsHandler:v35];
  coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_3;
  v32[3] = &unk_1E7FB81B8;
  v33 = v14;
  v18 = v10;
  v34 = v18;
  v19 = v14;
  v20 = [WBSDispatchSourceTimer timerWithInterval:0 repeats:coreSpotlightDonationSerialQueue queue:v32 handler:5000000000.0];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_4;
  v27 = &unk_1E7FCA9A0;
  selfCopy = self;
  v29 = v20;
  v30 = v16;
  v31 = v18;
  v21 = v16;
  v22 = v18;
  v23 = v20;
  [v19 setCompletionHandler:&v24];
  [v19 start];
}

void __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7FCA950;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [v6 attributeSet];
  v5 = [v4 uniqueIdentifier];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }

  objc_sync_exit(v3);
}

void __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) cancel];
  obj = MEMORY[0x1BFB13CE0](*(a1 + 40));
  objc_sync_enter(obj);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    (*(v2 + 16))(v2, 0, v3);
  }

  objc_sync_exit(obj);
}

void __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_5;
  v6[3] = &unk_1E7FCA978;
  v7 = *(a1 + 40);
  v8 = v3;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __94__WBSSiriIntelligenceDonor__getIndexedItemsForSearchQueryString_attributes_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (*(a1 + 40))
  {
    obj = MEMORY[0x1BFB13CE0](*(a1 + 56));
    objc_sync_enter(obj);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_sync_exit(obj);
    v2 = obj;
  }

  else
  {
    objb = *(a1 + 48);
    objc_sync_enter(objb);
    v3 = [*(a1 + 48) copy];
    objc_sync_exit(objb);

    obja = MEMORY[0x1BFB13CE0](*(a1 + 56));
    objc_sync_enter(obja);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_sync_exit(obja);

    v2 = v3;
  }
}

- (void)_getIndexedIDsForSearchQueryString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  v7 = [handler copy];
  v8 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v8 setPrivateQuery:1];
  [v8 setFetchAttributes:&unk_1F3A9B378];
  v9 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:stringCopy queryContext:v8];

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke;
  v26[3] = &unk_1E7FC9CA8;
  v11 = v10;
  v27 = v11;
  [v9 setFoundItemsHandler:v26];
  coreSpotlightDonationSerialQueue = self->_coreSpotlightDonationSerialQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_3;
  v23[3] = &unk_1E7FB81B8;
  v24 = v9;
  v13 = v7;
  v25 = v13;
  v14 = v9;
  v15 = [WBSDispatchSourceTimer timerWithInterval:0 repeats:coreSpotlightDonationSerialQueue queue:v23 handler:5000000000.0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_4;
  v19[3] = &unk_1E7FCA9A0;
  v19[4] = self;
  v20 = v15;
  v21 = v11;
  v22 = v13;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  [v14 setCompletionHandler:v19];
  [v14 start];
}

void __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7FCA950;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [v6 attributeSet];
  v5 = [v4 uniqueIdentifier];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  objc_sync_exit(v3);
}

void __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) cancel];
  obj = MEMORY[0x1BFB13CE0](*(a1 + 40));
  objc_sync_enter(obj);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    (*(v2 + 16))(v2, 0, v3);
  }

  objc_sync_exit(obj);
}

void __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_5;
  v6[3] = &unk_1E7FCA978;
  v7 = *(a1 + 40);
  v8 = v3;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __81__WBSSiriIntelligenceDonor__getIndexedIDsForSearchQueryString_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (*(a1 + 40))
  {
    obj = MEMORY[0x1BFB13CE0](*(a1 + 56));
    objc_sync_enter(obj);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_sync_exit(obj);
    v2 = obj;
  }

  else
  {
    objb = *(a1 + 48);
    objc_sync_enter(objb);
    v3 = [*(a1 + 48) copy];
    objc_sync_exit(objb);

    obja = MEMORY[0x1BFB13CE0](*(a1 + 56));
    objc_sync_enter(obja);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_sync_exit(obja);

    v2 = v3;
  }
}

- (void)_getIndexedBookmarksIDsToAttributesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contentType == %@ || contentType == %@", @"com.apple.safari.bookmark", @"com.apple.safari.readinglist"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__WBSSiriIntelligenceDonor__getIndexedBookmarksIDsToAttributesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FCA9C8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSSiriIntelligenceDonor *)self _getIndexedItemsForSearchQueryString:v5 attributes:&unk_1F3A9B390 completionHandler:v7];
}

void __85__WBSSiriIntelligenceDonor__getIndexedBookmarksIDsToAttributesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v23 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 attributeSet];
        v13 = [v12 uniqueIdentifier];

        if ([v13 length])
        {
          v14 = [v11 attributeSet];
          v15 = [v14 weakRelatedUniqueIdentifier];

          v16 = [v11 attributeSet];
          v17 = [v16 title];

          if ([(__CFString *)v15 length])
          {
            if (!v17)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __85__WBSSiriIntelligenceDonor__getIndexedBookmarksIDsToAttributesWithCompletionHandler___block_invoke_cold_1(&v26, v27);
            }

            v15 = &stru_1F3A5E418;
            if (!v17)
            {
LABEL_15:
              v20 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
              v17 = &stru_1F3A5E418;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                __85__WBSSiriIntelligenceDonor__getIndexedBookmarksIDsToAttributesWithCompletionHandler___block_invoke_cold_2(&v24, v25);
              }
            }
          }

          v21 = [MEMORY[0x1E695DF90] dictionary];
          [v21 setObject:v15 forKey:@"weakRelatedUniqueIdentifier"];
          [v21 setObject:v17 forKey:@"title"];
          [v5 setObject:v21 forKey:v13];

          goto LABEL_18;
        }

        v18 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __85__WBSSiriIntelligenceDonor__getIndexedBookmarksIDsToAttributesWithCompletionHandler___block_invoke_cold_3(&v28, v29);
        }

LABEL_18:
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  (*(*(v22 + 32) + 16))();
}

- (id)_computeCoreSpotlightIDsForBookmarks:(id)bookmarks
{
  v4 = MEMORY[0x1E695DFA8];
  bookmarksCopy = bookmarks;
  v6 = [v4 set];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__WBSSiriIntelligenceDonor__computeCoreSpotlightIDsForBookmarks___block_invoke;
  v13 = &unk_1E7FCA9F0;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [bookmarksCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __65__WBSSiriIntelligenceDonor__computeCoreSpotlightIDsForBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 bookmarkURLString];
  v6 = [v4 _bookmarkItemIdentifierForURLString:v5];
  [v3 setCoreSpotlightID:v6];

  v7 = *(a1 + 40);
  v8 = [v3 coreSpotlightID];

  [v7 addObject:v8];
}

- (void)_computeCoreSpotlightIndexingRequirementsForAllIDs:(id)ds indexedIDs:(id)iDs outIndexIDs:(id *)indexIDs outRemoveIDs:(id *)removeIDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v12 = [dsCopy mutableCopy];
  [v12 minusSet:iDsCopy];
  *indexIDs = [v12 copy];
  v11 = [iDsCopy mutableCopy];

  [v11 minusSet:dsCopy];
  *removeIDs = [v11 copy];
}

- (void)_sanitizeAttributeSet:(id)set
{
  setCopy = set;
  title = [setCopy title];
  v4 = [title length];

  if (!v4)
  {
    contentURL = [setCopy contentURL];
    safari_userVisibleString = [contentURL safari_userVisibleString];
    [setCopy setTitle:safari_userVisibleString];
  }
}

- (void)setTabNeedsSpotlightDeletion:(id)deletion
{
  appEntityUUIDString = [deletion appEntityUUIDString];
  if (appEntityUUIDString)
  {
    [(NSMutableDictionary *)self->_tabsToDonate removeObjectForKey:appEntityUUIDString];
    v5 = [(NSMutableSet *)self->_closedTabsToIndex count];
    closedTabsToIndex = self->_closedTabsToIndex;
    if (v5 > 0x18)
    {
      [(NSMutableSet *)closedTabsToIndex addObject:appEntityUUIDString];
      [(WBSSiriIntelligenceDonor *)self _donatePendingTabDataOnBackgroundQueue];
    }

    else
    {
      if (!closedTabsToIndex)
      {
        v7 = [MEMORY[0x1E695DFA8] set];
        v8 = self->_closedTabsToIndex;
        self->_closedTabsToIndex = v7;

        closedTabsToIndex = self->_closedTabsToIndex;
      }

      [(NSMutableSet *)closedTabsToIndex addObject:appEntityUUIDString];
      [(WBSSiriIntelligenceDonor *)self _scheduleTabBatchDonationTimerIfNeeded];
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSSiriIntelligenceDonor setTabNeedsSpotlightDeletion:];
    }
  }
}

- (void)setTabNeedsSpotlightDonation:(id)donation
{
  donationCopy = donation;
  appEntityUUIDString = [donationCopy appEntityUUIDString];
  if (appEntityUUIDString)
  {
    [(NSMutableSet *)self->_closedTabsToIndex removeObject:appEntityUUIDString];
    v6 = [(NSMutableDictionary *)self->_tabsToDonate count];
    tabsToDonate = self->_tabsToDonate;
    if (v6 > 0x18)
    {
      [(NSMutableDictionary *)tabsToDonate setObject:donationCopy forKeyedSubscript:appEntityUUIDString];
      [(WBSSiriIntelligenceDonor *)self _donatePendingTabDataOnBackgroundQueue];
    }

    else
    {
      if (!tabsToDonate)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v9 = self->_tabsToDonate;
        self->_tabsToDonate = dictionary;

        tabsToDonate = self->_tabsToDonate;
      }

      [(NSMutableDictionary *)tabsToDonate setObject:donationCopy forKeyedSubscript:appEntityUUIDString];
      [(WBSSiriIntelligenceDonor *)self _scheduleTabBatchDonationTimerIfNeeded];
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSSiriIntelligenceDonor setTabNeedsSpotlightDonation:];
    }
  }
}

- (void)_donatePendingTabDataOnQueue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  [(WBSDispatchSourceTimer *)self->_tabDonationTimer invalidate];
  tabDonationTimer = self->_tabDonationTimer;
  self->_tabDonationTimer = 0;

  allValues = [(NSMutableDictionary *)self->_tabsToDonate allValues];
  v10 = [allValues safari_mapObjectsUsingBlock:&__block_literal_global_285];

  v11 = [(NSMutableSet *)self->_closedTabsToIndex copy];
  tabsToDonate = self->_tabsToDonate;
  self->_tabsToDonate = 0;

  closedTabsToIndex = self->_closedTabsToIndex;
  self->_closedTabsToIndex = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB71A8;
  block[4] = self;
  v19 = v10;
  v20 = queueCopy;
  v21 = v11;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = v11;
  v16 = queueCopy;
  v17 = v10;
  dispatch_async(v16, block);
}

void __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Donating Pending Tabs to CoreSpotlight", buf, 2u);
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_286;
  v16[3] = &unk_1E7FB6D90;
  v7 = v3;
  v17 = v7;
  [v4 _indexTabData:v5 onDispatchQueue:v6 withCompletionHandler:v16];
  dispatch_group_enter(v7);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 56) allObjects];
  v10 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_2_287;
  v14[3] = &unk_1E7FC8848;
  v11 = v7;
  v15 = v11;
  [v8 _removeCoreSpotlightDataWithIDs:v9 onDispatchQueue:v10 completionHandler:v14];

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = v12;
    WBSDispatchGroupNotifyWithTimeout();
  }
}

void __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  v5 = v4;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__WBSSiriIntelligenceDonor__donatePendingTabDataOnQueue_withCompletionHandler___block_invoke_3_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Finished CoreSpotlight tab donations successfully.", buf, 2u);
  }

  v6 = *(a1 + 32);
  WBSPerformBlockOnMainRunLoopWithCommonModes();
}

- (void)_scheduleTabBatchDonationTimerIfNeeded
{
  if (!self->_tabDonationTimer)
  {
    v7[7] = v2;
    v7[8] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__WBSSiriIntelligenceDonor__scheduleTabBatchDonationTimerIfNeeded__block_invoke;
    v7[3] = &unk_1E7FB6D90;
    v7[4] = self;
    v5 = [WBSDispatchSourceTimer scheduledTimerWithInterval:0 repeats:v7 handler:30.0];
    tabDonationTimer = self->_tabDonationTimer;
    self->_tabDonationTimer = v5;
  }
}

- (void)_indexTabData:(id)data onDispatchQueue:(id)queue withCompletionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        v16 = objc_alloc_init(MEMORY[0x1E6964E90]);
        [v16 setContentType:@"com.apple.safari.tab"];
        v17 = [v15 url];
        [v16 setContentURL:v17];

        title = [v15 title];
        [v16 setTitle:title];

        lastVisitedDate = [v15 lastVisitedDate];
        [v16 setLastUsedDate:lastVisitedDate];

        [v16 setDisableSearchInSpotlight:MEMORY[0x1E695E118]];
        profileIdentifier = [v15 profileIdentifier];
        coreSpotlightProfileIDKey = [objc_opt_class() coreSpotlightProfileIDKey];
        [v16 setValue:profileIdentifier forCustomKey:coreSpotlightProfileIDKey];

        tabGroupUUID = [v15 tabGroupUUID];
        coreSpotlightTabTabGroupAttributeKey = [objc_opt_class() coreSpotlightTabTabGroupAttributeKey];
        [v16 setValue:tabGroupUUID forCustomKey:coreSpotlightTabTabGroupAttributeKey];

        [(WBSSiriIntelligenceDonor *)self _sanitizeAttributeSet:v16];
        v24 = objc_opt_class();
        profileIdentifier2 = [v15 profileIdentifier];
        v26 = [v24 _coreSpotlightTabDonationIdentifierForProfileWithIdentifier:profileIdentifier2];

        v27 = objc_alloc(MEMORY[0x1E6964E80]);
        uuidString = [v15 uuidString];
        v29 = [v27 initWithUniqueIdentifier:uuidString domainIdentifier:v26 attributeSet:v16];

        [v9 addObject:v29];
        [(WBSSpotlightDonationEntityCorrelator *)self->_entityCorrelator correlateTabEntityForItem:v29];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __80__WBSSiriIntelligenceDonor__indexTabData_onDispatchQueue_withCompletionHandler___block_invoke;
  v33[3] = &unk_1E7FC8870;
  v34 = handlerCopy;
  v30 = handlerCopy;
  [(WBSSiriIntelligenceDonor *)self _indexCoreSpotlightData:v9 filterDeletedHistoryItems:0 onDispatchQueue:queueCopy completionHandler:v33];
}

uint64_t __80__WBSSiriIntelligenceDonor__indexTabData_onDispatchQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to obtain indexed bookmarks IDs with error: %{public}@", v7, v8, v9, v10, v11);
}

void __87__WBSSiriIntelligenceDonor_donateSafariBookmarksToCoreSpotlight_withCompletionHandler___block_invoke_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1BB6F3000, v1, OS_LOG_TYPE_DEBUG, "Safari will index bookmarks to CoreSpotlight with IDs %@ and remove bookmarks with IDs: %@", v2, 0x16u);
}

void __133__WBSSiriIntelligenceDonor__donateHistoryItemsToCoreSpotlightCreatedAfterDate_beforeDate_historiesForProfiles_withCompletionHandler___block_invoke_4_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_ERROR, "Failed to re-indexed all searchable history items to CoreSpotlight for profile with ID: %@", v1, 0xCu);
}

void __112__WBSSiriIntelligenceDonor__indexCoreSpotlightData_filterDeletedHistoryItems_onDispatchQueue_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to index CoreSpotlight searchable items with error: %{public}@", v7, v8, v9, v10, v11);
}

void __94__WBSSiriIntelligenceDonor__removeCoreSpotlightDataWithIDs_onDispatchQueue_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to remove CoreSpotlight searchable items with error: %{public}@", v7, v8, v9, v10, v11);
}

void __101__WBSSiriIntelligenceDonor_removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier___block_invoke_247_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v5, v6, "Failed to remove CoreSpotlight history data under domain identifier %@ with error %{public}@", v7, v8, v9, v10, v11);
}

void __97__WBSSiriIntelligenceDonor_removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier___block_invoke_248_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v5, v6, "Failed to remove CoreSpotlight tab data under domain identifier %@ with error %{public}@", v7, v8, v9, v10, v11);
}

void __106__WBSSiriIntelligenceDonor__indexHistoryItemsToCoreSpotlight_filterDeletedHistoryItems_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 textContent];
  v7 = 138478083;
  v8 = a1;
  v9 = 2048;
  v10 = [v6 length];
  _os_log_debug_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEBUG, "Donating history item to CoreSpotlight with ID: %{private}@ text content length: %ld", &v7, 0x16u);
}

@end