@interface WFGallerySessionManager
+ (WFGallerySessionManager)sharedManager;
+ (id)currentDeviceIdiom;
+ (id)defaultPreferredLocalizations;
- (BOOL)bannerIsRestricted:(id)restricted;
- (BOOL)collectionIsRestricted:(id)restricted;
- (BOOL)workflowIsRestricted:(id)restricted;
- (NSString)containerDescription;
- (WFGallerySessionManager)init;
- (WFGallerySessionManager)initWithContainer:(id)container preferredLocalizations:(id)localizations currentRegion:(id)region currentIdiom:(id)idiom performExpensiveFetchOperations:(BOOL)operations;
- (id)createItemRequest;
- (id)getImageForBanner:(id)banner completionHandler:(id)handler;
- (id)getWorkflowForIdentifier:(id)identifier completionHandler:(id)handler;
- (id)loadWorkflowInGalleryWorkflow:(id)workflow completionHandler:(id)handler;
- (id)localPageWithId:(id)id;
- (id)preferredPageInPages:(id)pages preferredLanguages:(id)languages;
- (id)searchCollections:(id)collections completionHandler:(id)handler;
- (id)searchUsingWebServicesForItem:(Class)item query:(id)query queryFilter:(id)filter completionHandler:(id)handler;
- (id)searchWorkflows:(id)workflows completionHandler:(id)handler;
- (id)searchWorkflowsAndCollections:(id)collections completionHandler:(id)handler;
- (id)sortAndFilterSearchResults:(id)results query:(id)query;
- (id)unshareSharedShortcut:(id)shortcut completionHandler:(id)handler;
- (id)updateItems:(id)items completionHandler:(id)handler;
- (int64_t)version;
- (void)addLocalContent:(id)content toPage:(id)page;
- (void)getCollectionForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getCollectionForPersistentIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getCurrentUserIdentifierWithCompletionHandler:(id)handler;
- (void)getHomeWithCompletionHandler:(id)handler;
- (void)getHomeWithPreferredLanguages:(id)languages completionHandler:(id)handler;
- (void)getPageWithID:(id)d completionHandler:(id)handler;
- (void)getPageWithID:(id)d localContent:(id)content completionHandler:(id)handler;
- (void)removeRestrictedContentFromCollection:(id)collection;
- (void)removeRestrictedContentFromPage:(id)page;
- (void)reportWorkflow:(id)workflow iCloudIdentifier:(id)identifier reportReason:(id)reason reportMessage:(id)message completionHandler:(id)handler;
- (void)uploadWorkflow:(id)workflow withName:(id)name shortDescription:(id)description longDescription:(id)longDescription private:(BOOL)private completionHandler:(id)handler;
@end

@implementation WFGallerySessionManager

- (id)localPageWithId:(id)id
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  WFGallerySessionManager.localPage(id:)(v9, v8);
  v11 = v10;

  return v11;
}

- (void)uploadWorkflow:(id)workflow withName:(id)name shortDescription:(id)description longDescription:(id)longDescription private:(BOOL)private completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  nameCopy = name;
  workflowCopy = workflow;
  v14 = objc_alloc_init(WFSharedShortcut);
  [(WFSharedShortcut *)v14 setName:nameCopy];

  icon = [workflowCopy icon];
  [(WFSharedShortcut *)v14 setIcon:icon];

  [(WFSharedShortcut *)v14 setWorkflowRecord:workflowCopy];
  v16 = v14;
  v17 = [WFCloudKitItemRequest alloc];
  container = [(WFGallerySessionManager *)self container];
  database = [(WFGallerySessionManager *)self database];
  v20 = [(WFCloudKitItemRequest *)v17 initWithContainer:container database:database];

  v29[0] = v16;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __110__WFGallerySessionManager_uploadWorkflow_withName_shortDescription_longDescription_private_completionHandler___block_invoke;
  v26[3] = &unk_1E837FA10;
  v27 = v16;
  v28 = handlerCopy;
  v22 = v16;
  v23 = handlerCopy;
  v24 = [(WFCloudKitItemRequest *)v20 updateItems:v21 setNilValues:0 qualityOfService:25 timeoutIntervalForRequest:v26 completionHandler:30.0];

  v25 = *MEMORY[0x1E69E9840];
}

void __110__WFGallerySessionManager_uploadWorkflow_withName_shortDescription_longDescription_private_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
LABEL_3:

    v4();
    return;
  }

  v5 = [*(a1 + 32) identifier];

  if (!v5)
  {
    v4 = *(*(a1 + 40) + 16);
    goto LABEL_3;
  }

  v6 = [*(a1 + 32) identifier];
  v7 = [v6 recordName];
  v8 = WFGallerySharingURLForIdentifier(v7);

  (*(*(a1 + 40) + 16))();
}

- (void)reportWorkflow:(id)workflow iCloudIdentifier:(id)identifier reportReason:(id)reason reportMessage:(id)message completionHandler:(id)handler
{
  v30[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  messageCopy = message;
  handlerCopy = handler;
  fileRepresentation = [workflow fileRepresentation];
  v29 = 0;
  v17 = [fileRepresentation writeToDiskWithError:&v29];
  v18 = v29;
  if (v17)
  {
    v28 = reasonCopy;
    v19 = [[WFShortcutConcerningReport alloc] initWithReason:reasonCopy shortcutContent:v17];
    [(WFShortcutConcerningReport *)v19 setReportMessage:messageCopy];
    if (identifierCopy)
    {
      v20 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:identifierCopy];
      [(WFShortcutConcerningReport *)v19 setShortcut:v20];
    }

    v21 = [WFCloudKitItemRequest alloc];
    container = [(WFGallerySessionManager *)self container];
    database = [(WFGallerySessionManager *)self database];
    v24 = [(WFCloudKitItemRequest *)v21 initWithContainer:container database:database];

    v30[0] = v19;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v26 = [(WFCloudKitItemRequest *)v24 updateItems:v25 setNilValues:0 qualityOfService:25 timeoutIntervalForRequest:handlerCopy completionHandler:30.0];

    reasonCopy = v28;
  }

  else
  {
    handlerCopy[2](handlerCopy, v18);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)unshareSharedShortcut:(id)shortcut completionHandler:(id)handler
{
  handlerCopy = handler;
  shortcutCopy = shortcut;
  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [createItemRequest deleteItem:shortcutCopy completionHandler:handlerCopy];

  return v9;
}

- (id)updateItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [createItemRequest updateItems:itemsCopy setNilValues:0 completionHandler:handlerCopy];

  return v9;
}

- (void)getCurrentUserIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = [(WFGallerySessionManager *)self container];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WFGallerySessionManager_getCurrentUserIdentifierWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837EA78;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [container fetchUserRecordIDWithCompletionHandler:v7];
}

void __73__WFGallerySessionManager_getCurrentUserIdentifierWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 recordName];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WFGallerySessionManager_getCurrentUserIdentifierWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E837ECE0;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)getCollectionForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  v8 = [createItemRequest fetchItemWithID:identifierCopy itemType:objc_opt_class() groupName:@"GalleryFetch" properties:0 completionHandler:handlerCopy];
}

- (void)getCollectionForPersistentIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  integerValue = [v10 integerValue];

  v12 = MEMORY[0x1E696AE18];
  v13 = +[WFGallerySessionManager defaultPreferredLocalizations];
  v14 = [v12 predicateWithFormat:@"persistentIdentifier == %@ AND language IN %@ AND minVersion <= %ld", identifierCopy, v13, integerValue];

  v15 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__WFGallerySessionManager_getCollectionForPersistentIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E837F020;
  v18[4] = self;
  v19 = handlerCopy;
  v16 = handlerCopy;
  v17 = [createItemRequest fetchItemsWithPredicate:v14 itemType:v15 groupName:@"GalleryFetch" properties:0 completionHandler:v18];
}

void __82__WFGallerySessionManager_getCollectionForPersistentIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v8 = [v5 sortAndFilterSearchResults:a2 query:0];
  v7 = [v8 firstObject];
  (*(v4 + 16))(v4, v7, v6);
}

- (id)getWorkflowForIdentifier:(id)identifier completionHandler:(id)handler
{
  v16[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = [WFCloudKitWebServiceRequest alloc];
  container = [(WFGallerySessionManager *)self container];
  database = [(WFGallerySessionManager *)self database];
  v11 = [(WFCloudKitWebServiceRequest *)v8 initWithContainer:container database:database];

  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v13 = [(WFCloudKitWebServiceRequest *)v11 fetchProxiedRecordWithIdentifier:identifierCopy possibleItemTypes:v12 completionHandler:handlerCopy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)sortAndFilterSearchResults:(id)results query:(id)query
{
  v42 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  queryCopy = query;
  v6 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = *v38;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v37 + 1) + 8 * i);
      persistentIdentifier = [v12 persistentIdentifier];
      if (persistentIdentifier)
      {
        v14 = v12;
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if ([(WFGallerySessionManager *)self workflowIsRestricted:v14])
            {
              goto LABEL_21;
            }
          }

          else
          {

            v15 = 0;
          }

          v16 = v14;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([(WFGallerySessionManager *)self collectionIsRestricted:v16])
            {
LABEL_20:

              v14 = v15;
LABEL_21:

              goto LABEL_22;
            }

LABEL_17:
            v17 = [v6 objectForKey:persistentIdentifier];
            if (!v17)
            {
              v17 = objc_opt_new();
              [v6 setObject:v17 forKey:persistentIdentifier];
            }

            [v17 addObject:v14];

            goto LABEL_20;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        goto LABEL_17;
      }

LABEL_22:
    }

    v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v9);
LABEL_24:

  preferredLocalizations = [(WFGallerySessionManager *)self preferredLocalizations];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke;
  v35[3] = &unk_1E837EA28;
  v19 = preferredLocalizations;
  v36 = v19;
  [v6 enumerateKeysAndObjectsUsingBlock:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_3;
  v33[3] = &unk_1E837EA50;
  v20 = v6;
  v34 = v20;
  v21 = [v7 if_objectsPassingTest:v33];

  if (queryCopy)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v23 = [queryCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    firstObject = [v23 firstObject];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_4;
    v31[3] = &unk_1E837EA00;
    v32 = firstObject;
    v25 = firstObject;
    v26 = [v21 sortedArrayUsingComparator:v31];
  }

  else
  {
    v26 = v21;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_2;
  v4[3] = &unk_1E837EA00;
  v5 = *(a1 + 32);
  [a3 sortUsingComparator:v4];
}

BOOL __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 persistentIdentifier];
  v5 = [v3 language];
  v6 = v5;
  v7 = 1;
  if (v4 && v5)
  {
    v8 = [*(a1 + 32) objectForKey:v4];
    v9 = [v8 firstObject];
    v7 = v9 == v3;
  }

  return v7;
}

uint64_t __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 name];
  v7 = [v6 localizedStandardRangeOfString:*(a1 + 32)];

  v8 = [v5 name];

  v9 = [v8 localizedStandardRangeOfString:*(a1 + 32)];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [v10 compare:v11];

  return v12;
}

uint64_t __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 language];
  if (v7 && (v8 = v7, [v6 language], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = *(a1 + 32);
    v11 = [v5 language];
    v12 = [v10 indexOfObject:v11];

    v13 = *(a1 + 32);
    v14 = [v6 language];
    v15 = [v13 indexOfObject:v14];

    if (v12 >= v15)
    {
      if (v12 > v15)
      {
        v16 = 1;
      }

      else
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "minVersion")}];
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "minVersion")}];
        v16 = [v18 compare:v19];
      }
    }

    else
    {
      v16 = -1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)searchCollections:(id)collections completionHandler:(id)handler
{
  v24[2] = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  handlerCopy = handler;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [collectionsCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  collectionSearchCache = [(WFGallerySessionManager *)self collectionSearchCache];
  v11 = [collectionSearchCache objectForKey:v9];

  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 0);
    v12 = 0;
  }

  else
  {
    v13 = [(WFGallerySessionManager *)self queryFilterForTokenizedKey:@"name" query:v9];
    preferredLocalizations = [(WFGallerySessionManager *)self preferredLocalizations];
    v15 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"language" toStringArray:preferredLocalizations by:1];

    v24[0] = v13;
    v24[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v17 = [WFCloudKitWebServiceQueryFilter filterWithCombinationOf:v16 by:0];

    v18 = objc_opt_class();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__WFGallerySessionManager_searchCollections_completionHandler___block_invoke;
    v21[3] = &unk_1E837E9D0;
    v23 = handlerCopy;
    v21[4] = self;
    v22 = v9;
    v12 = [(WFGallerySessionManager *)self searchUsingWebServicesForItem:v18 query:collectionsCopy queryFilter:v17 completionHandler:v21];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __63__WFGallerySessionManager_searchCollections_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5, 0);
  }

  else
  {
    v6 = [*(a1 + 32) sortAndFilterSearchResults:a2 query:*(a1 + 40)];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (id)searchUsingWebServicesForItem:(Class)item query:(id)query queryFilter:(id)filter completionHandler:(id)handler
{
  queryCopy = query;
  filterCopy = filter;
  handlerCopy = handler;
  v13 = [WFCloudKitWebServiceRequest alloc];
  container = [(WFGallerySessionManager *)self container];
  database = [(WFGallerySessionManager *)self database];
  v16 = [(WFCloudKitWebServiceRequest *)v13 initWithContainer:container database:database];

  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  LOBYTE(database) = [workflowUserDefaults BOOLForKey:@"WFDisableGallerySearchEdgeCaching"];

  if (database)
  {
    v18 = 0;
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    container2 = [(WFGallerySessionManager *)self container];
    containerIdentifier = [container2 containerIdentifier];
    recordType = [(objc_class *)item recordType];
    v18 = [v19 stringWithFormat:@"%@-%@-%li", containerIdentifier, recordType, objc_msgSend(queryCopy, "hash")];
  }

  v23 = [(WFCloudKitWebServiceRequest *)v16 fetchRecordsWithItemType:item filter:filterCopy cacheKey:v18 completionHandler:handlerCopy];

  return v23;
}

- (id)searchWorkflows:(id)workflows completionHandler:(id)handler
{
  v25[3] = *MEMORY[0x1E69E9840];
  workflowsCopy = workflows;
  handlerCopy = handler;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [workflowsCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  workflowSearchCache = [(WFGallerySessionManager *)self workflowSearchCache];
  v11 = [workflowSearchCache objectForKey:v9];

  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 0);
    v12 = 0;
  }

  else
  {
    v13 = [(WFGallerySessionManager *)self queryFilterForTokenizedKey:@"name" query:v9];
    v14 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"searchable" toInt:1 by:0];
    preferredLocalizations = [(WFGallerySessionManager *)self preferredLocalizations];
    v16 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"language" toStringArray:preferredLocalizations by:1];

    v25[0] = v13;
    v25[1] = v14;
    v25[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v18 = [WFCloudKitWebServiceQueryFilter filterWithCombinationOf:v17 by:0];

    v19 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__WFGallerySessionManager_searchWorkflows_completionHandler___block_invoke;
    v22[3] = &unk_1E837E9D0;
    v24 = handlerCopy;
    v22[4] = self;
    v23 = v9;
    v12 = [(WFGallerySessionManager *)self searchUsingWebServicesForItem:v19 query:workflowsCopy queryFilter:v18 completionHandler:v22];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

void __61__WFGallerySessionManager_searchWorkflows_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5, 0);
  }

  else
  {
    v6 = [*(a1 + 32) sortAndFilterSearchResults:a2 query:*(a1 + 40)];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (id)searchWorkflowsAndCollections:(id)collections completionHandler:(id)handler
{
  collectionsCopy = collections;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__68273;
  v28[4] = __Block_byref_object_dispose__68274;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke;
  v22[3] = &unk_1E837E980;
  v9 = v8;
  v23 = v9;
  v10 = handlerCopy;
  v26 = v10;
  selfCopy = self;
  v11 = collectionsCopy;
  v25 = v11;
  v27 = v28;
  v12 = [(WFGallerySessionManager *)self searchWorkflows:v11 completionHandler:v22];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_5;
  v18[3] = &unk_1E837E9A8;
  v13 = v12;
  v19 = v13;
  v21 = v28;
  v14 = v10;
  v20 = v14;
  [v9 setCancellationHandler:v18];
  v15 = v20;
  v16 = v9;

  _Block_object_dispose(v28, 8);

  return v16;
}

void __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (v5)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_2;
        v23[3] = &unk_1E837E900;
        v23[4] = *(a1 + 40);
        v7 = [v5 if_objectsPassingTest:v23];

        v8 = [*(a1 + 40) workflowSearchCache];
        [v8 setObject:v7 forKey:*(a1 + 48)];
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_3;
      v17[3] = &unk_1E837E958;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v18 = v11;
      v19 = v12;
      v20 = v13;
      v22 = *(a1 + 56);
      v5 = v7;
      v21 = v5;
      v14 = [v9 searchCollections:v10 completionHandler:v17];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) cancel];
  [*(*(*(a1 + 48) + 8) + 40) cancel];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:0 userInfo:0];
  (*(v2 + 16))(v2, 0, 0, v3);
}

void __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_4;
      v7[3] = &unk_1E837E8B0;
      v7[4] = *(a1 + 40);
      v4 = [v3 if_compactMap:v7];

      v5 = [*(a1 + 40) collectionSearchCache];
      [v5 setObject:v4 forKey:*(a1 + 48)];

      v3 = v4;
    }

    v6 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }
}

id __75__WFGallerySessionManager_searchWorkflowsAndCollections_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) collectionIsRestricted:v3])
  {
    v4 = 0;
  }

  else
  {
    [*(a1 + 32) removeRestrictedContentFromCollection:v3];
    v4 = v3;
  }

  return v4;
}

- (id)loadWorkflowInGalleryWorkflow:(id)workflow completionHandler:(id)handler
{
  workflowCopy = workflow;
  handlerCopy = handler;
  workflowCache = [(WFGallerySessionManager *)self workflowCache];
  identifier = [workflowCopy identifier];
  recordName = [identifier recordName];
  v11 = [workflowCache objectForKey:recordName];

  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 0);
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  workflowRecord = [workflowCopy workflowRecord];

  if (workflowRecord)
  {
    workflowRecord2 = [workflowCopy workflowRecord];
    handlerCopy[2](handlerCopy, workflowRecord2, 0);

    goto LABEL_5;
  }

  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  identifier2 = [workflowCopy identifier];
  v18 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__WFGallerySessionManager_loadWorkflowInGalleryWorkflow_completionHandler___block_invoke;
  v19[3] = &unk_1E837E930;
  v19[4] = self;
  v20 = handlerCopy;
  v14 = [createItemRequest fetchItemWithID:identifier2 itemType:v18 groupName:@"GalleryFetch" properties:&unk_1F4A9B7D0 completionHandler:v19];

LABEL_6:

  return v14;
}

void __75__WFGallerySessionManager_loadWorkflowInGalleryWorkflow_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"WFCloudKitErrorDomain"])
  {
    v7 = [v5 code];

    if (!v7)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v15 workflowRecord];
  if (v8)
  {
    v9 = [*(a1 + 32) workflowCache];
    v10 = [v15 identifier];
    v11 = [v10 recordName];
    [v9 setObject:v8 forKey:v11];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = objc_opt_new();
    v13 = WFLocalizedString(@"Unable to load this shortcut. Please try again later.");
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A578]];

    if (v5)
    {
      [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFGalleryErrorDomain" code:1 userInfo:v12];
    (*(*(a1 + 40) + 16))();
  }

LABEL_11:
}

- (BOOL)workflowIsRestricted:(id)restricted
{
  restrictedCopy = restricted;
  hiddenRegions = [restrictedCopy hiddenRegions];
  v6 = [hiddenRegions count];

  if (v6)
  {
    currentRegion = [(WFGallerySessionManager *)self currentRegion];
    if (currentRegion)
    {
      hiddenRegions2 = [restrictedCopy hiddenRegions];
      currentRegion2 = [(WFGallerySessionManager *)self currentRegion];
      v10 = [hiddenRegions2 containsObject:currentRegion2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  supportedIdioms = [restrictedCopy supportedIdioms];
  v12 = [supportedIdioms count];

  if (v12)
  {
    currentIdiom = [(WFGallerySessionManager *)self currentIdiom];
    if (currentIdiom)
    {
      supportedIdioms2 = [restrictedCopy supportedIdioms];
      currentIdiom2 = [(WFGallerySessionManager *)self currentIdiom];
      v16 = [supportedIdioms2 containsObject:currentIdiom2] ^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v10 | v16;
}

- (BOOL)collectionIsRestricted:(id)restricted
{
  v18 = *MEMORY[0x1E69E9840];
  restrictedCopy = restricted;
  identifier = [restrictedCopy identifier];
  recordName = [identifier recordName];
  if (([recordName isEqualToString:@"UseModel"] & 1) == 0)
  {

LABEL_7:
    supportedIdioms = [restrictedCopy supportedIdioms];
    v10 = [supportedIdioms count];

    if (v10)
    {
      currentIdiom = [(WFGallerySessionManager *)self currentIdiom];
      if (currentIdiom)
      {
        supportedIdioms2 = [restrictedCopy supportedIdioms];
        currentIdiom2 = [(WFGallerySessionManager *)self currentIdiom];
        LODWORD(self) = [supportedIdioms2 containsObject:currentIdiom2] ^ 1;
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }

    goto LABEL_13;
  }

  v7 = +[WFAskLLMAvailabilityProvider shared];
  isActionVisible = [v7 isActionVisible];

  if (isActionVisible)
  {
    goto LABEL_7;
  }

  self = getWFGalleryLogObject();
  if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[WFGallerySessionManager collectionIsRestricted:]";
    _os_log_impl(&dword_1CA256000, &self->super, OS_LOG_TYPE_DEFAULT, "%s Use model collection is restricted due to action disablement", &v16, 0xCu);
  }

  LOBYTE(self) = 1;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)bannerIsRestricted:(id)restricted
{
  restrictedCopy = restricted;
  supportedIdioms = [restrictedCopy supportedIdioms];
  v6 = [supportedIdioms count];

  if (v6)
  {
    currentIdiom = [(WFGallerySessionManager *)self currentIdiom];
    if (currentIdiom)
    {
      supportedIdioms2 = [restrictedCopy supportedIdioms];
      currentIdiom2 = [(WFGallerySessionManager *)self currentIdiom];
      v10 = [supportedIdioms2 containsObject:currentIdiom2] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)removeRestrictedContentFromCollection:(id)collection
{
  collectionCopy = collection;
  workflows = [collectionCopy workflows];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WFGallerySessionManager_removeRestrictedContentFromCollection___block_invoke;
  v7[3] = &unk_1E837E900;
  v7[4] = self;
  v6 = [workflows if_objectsPassingTest:v7];
  [collectionCopy setWorkflows:v6];
}

- (void)removeRestrictedContentFromPage:(id)page
{
  pageCopy = page;
  collections = [pageCopy collections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke;
  v10[3] = &unk_1E837E8B0;
  v10[4] = self;
  v6 = [collections if_compactMap:v10];
  [pageCopy setCollections:v6];

  banners = [pageCopy banners];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke_2;
  v9[3] = &unk_1E837E8D8;
  v9[4] = self;
  v8 = [banners if_compactMap:v9];
  [pageCopy setBanners:v8];
}

id __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) collectionIsRestricted:v3])
  {
    v4 = 0;
  }

  else
  {
    [*(a1 + 32) removeRestrictedContentFromCollection:v3];
    v4 = v3;
  }

  return v4;
}

id __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) bannerIsRestricted:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)addLocalContent:(id)content toPage:(id)page
{
  pageCopy = page;
  contentCopy = content;
  collections = [contentCopy collections];
  v8 = collections;
  v9 = MEMORY[0x1E695E0F0];
  if (collections)
  {
    v10 = collections;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  collections2 = [pageCopy collections];
  v12 = collections2;
  if (collections2)
  {
    v13 = collections2;
  }

  else
  {
    v13 = v9;
  }

  v14 = [v10 arrayByAddingObjectsFromArray:v13];
  [pageCopy setCollections:v14];

  banners = [contentCopy banners];

  if (banners)
  {
    v15 = banners;
  }

  else
  {
    v15 = v9;
  }

  banners2 = [pageCopy banners];
  v17 = banners2;
  if (banners2)
  {
    v18 = banners2;
  }

  else
  {
    v18 = v9;
  }

  v19 = [v15 arrayByAddingObjectsFromArray:v18];
  [pageCopy setBanners:v19];
}

- (id)preferredPageInPages:(id)pages preferredLanguages:(id)languages
{
  v21 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  v6 = [pages sortedArrayUsingComparator:&__block_literal_global_251_68297];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = languagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 objectMatchingKey:@"language" value:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __67__WFGallerySessionManager_preferredPageInPages_preferredLanguages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 minVersion];
  v6 = [v4 minVersion];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)getImageForBanner:(id)banner completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  handlerCopy = handler;
  identifier = [bannerCopy identifier];
  recordName = [identifier recordName];

  bannerImageCache = [(WFGallerySessionManager *)self bannerImageCache];
  v11 = [bannerImageCache objectForKey:recordName];

  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 1, 0);
    v12 = objc_alloc_init(WFCloudKitTask);
  }

  else
  {
    image = [bannerCopy image];
    if (image)
    {
      bannerImageCache2 = [(WFGallerySessionManager *)self bannerImageCache];
      [bannerImageCache2 setObject:image forKey:recordName];

      handlerCopy[2](handlerCopy, image, 1, 0);
      v12 = objc_alloc_init(WFCloudKitTask);
    }

    else
    {
      createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
      identifier2 = [bannerCopy identifier];
      v21 = objc_opt_class();
      v17 = +[WFGalleryBanner imageProperty];
      v25[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__WFGallerySessionManager_getImageForBanner_completionHandler___block_invoke;
      v22[3] = &unk_1E837E868;
      v22[4] = self;
      v23 = recordName;
      v24 = handlerCopy;
      v12 = [createItemRequest fetchItemWithID:identifier2 itemType:v21 groupName:@"GalleryFetch" properties:v18 completionHandler:v22];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __63__WFGallerySessionManager_getImageForBanner_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 image];
  if (v5)
  {
    v6 = [*(a1 + 32) bannerImageCache];
    [v6 setObject:v5 forKey:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getPageWithID:(id)d localContent:(id)content completionHandler:(id)handler
{
  dCopy = d;
  contentCopy = content;
  handlerCopy = handler;
  pageCache = [(WFGallerySessionManager *)self pageCache];
  recordName = [dCopy recordName];
  v13 = [pageCache objectForKey:recordName];

  if (v13)
  {
    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__WFGallerySessionManager_getPageWithID_localContent_completionHandler___block_invoke;
    v17[3] = &unk_1E837E840;
    v18 = contentCopy;
    selfCopy = self;
    v20 = dCopy;
    v21 = handlerCopy;
    v16 = [createItemRequest fetchItemWithID:v20 itemType:v15 groupName:@"GalleryFetch" properties:0 completionHandler:v17];
  }
}

void __72__WFGallerySessionManager_getPageWithID_localContent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v10;
  v7 = v5;
  if (v10)
  {
    if (*(a1 + 32))
    {
      [*(a1 + 40) addLocalContent:? toPage:?];
      v6 = v10;
    }

    [*(a1 + 40) removeRestrictedContentFromPage:v6];
    v8 = [*(a1 + 40) pageCache];
    v9 = [*(a1 + 48) recordName];
    [v8 setObject:v10 forKey:v9];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)getPageWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  recordName = [dCopy recordName];
  v8 = [(WFGallerySessionManager *)self localPageWithId:recordName];

  if (v8)
  {
    [(WFGallerySessionManager *)self removeRestrictedContentFromPage:v8];
    handlerCopy[2](handlerCopy, v8, 0);
  }

  else
  {
    [(WFGallerySessionManager *)self getPageWithID:dCopy localContent:0 completionHandler:handlerCopy];
  }
}

- (void)getHomeWithPreferredLanguages:(id)languages completionHandler:(id)handler
{
  languagesCopy = languages;
  handlerCopy = handler;
  v8 = [(WFGallerySessionManager *)self localPageWithId:@"root"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isRoot = 1 AND language IN %@ AND minVersion <= %ld", languagesCopy, -[WFGallerySessionManager version](self, "version")];
  createItemRequest = [(WFGallerySessionManager *)self createItemRequest];
  v11 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__WFGallerySessionManager_getHomeWithPreferredLanguages_completionHandler___block_invoke;
  v16[3] = &unk_1E837E818;
  v16[4] = self;
  v17 = languagesCopy;
  v18 = v8;
  v19 = handlerCopy;
  v12 = v8;
  v13 = handlerCopy;
  v14 = languagesCopy;
  v15 = [createItemRequest fetchItemsWithPredicate:v9 itemType:v11 groupName:@"GalleryPageQuery" properties:&unk_1F4A9B7B8 completionHandler:v16];
}

void __75__WFGallerySessionManager_getHomeWithPreferredLanguages_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11 && !v5 && ([*(a1 + 32) preferredPageInPages:v11 preferredLanguages:*(a1 + 40)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v6 identifier];
    [v8 getPageWithID:v9 localContent:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v9 = WFLocalizedString(@"The gallery is not available right now.");
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v5)
    {
      [v10 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFGalleryErrorDomain" code:0 userInfo:v10];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)getHomeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  preferredLocalizations = [(WFGallerySessionManager *)self preferredLocalizations];
  [(WFGallerySessionManager *)self getHomeWithPreferredLanguages:preferredLocalizations completionHandler:handlerCopy];
}

- (id)createItemRequest
{
  v3 = [WFCloudKitItemRequest alloc];
  container = [(WFGallerySessionManager *)self container];
  database = [(WFGallerySessionManager *)self database];
  v6 = [(WFCloudKitItemRequest *)v3 initWithContainer:container database:database];

  [(WFCloudKitItemRequest *)v6 setPerformExpensiveFetchOperations:[(WFGallerySessionManager *)self performExpensiveFetchOperations]];

  return v6;
}

- (NSString)containerDescription
{
  v3 = *MEMORY[0x1E69E1140];
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  container = [(WFGallerySessionManager *)self container];
  containerIdentifier = [container containerIdentifier];
  v6 = [containerIdentifier isEqualToString:*MEMORY[0x1E6997148]];

  container2 = [(WFGallerySessionManager *)self container];
  containerID = [container2 containerID];
  environment = [containerID environment];

  if (v6)
  {
    if (environment == 2)
    {
      return @"Dev";
    }

    else
    {
      return 0;
    }
  }

  else if (environment == 2)
  {
    return @"QA (Dev)";
  }

  else
  {
    return @"QA";
  }
}

- (int64_t)version
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  integerValue = [v3 integerValue];

  if (VCIsInternalBuild())
  {
    workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
    if ([workflowUserDefaults BOOLForKey:@"WFGalleryOverrideBuildKey"])
    {
      workflowUserDefaults2 = [MEMORY[0x1E695E000] workflowUserDefaults];
      integerValue = [workflowUserDefaults2 integerForKey:@"WFGalleryOverrideBuildVersionKey"];
    }
  }

  v7 = getWFGalleryLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFGallerySessionManager version]";
    v12 = 2048;
    v13 = integerValue;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s using build version: %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (WFGallerySessionManager)initWithContainer:(id)container preferredLocalizations:(id)localizations currentRegion:(id)region currentIdiom:(id)idiom performExpensiveFetchOperations:(BOOL)operations
{
  containerCopy = container;
  localizationsCopy = localizations;
  regionCopy = region;
  idiomCopy = idiom;
  v39.receiver = self;
  v39.super_class = WFGallerySessionManager;
  v17 = [(WFGallerySessionManager *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_container, container);
    publicCloudDatabase = [(CKContainer *)v18->_container publicCloudDatabase];
    database = v18->_database;
    v18->_database = publicCloudDatabase;

    if (localizationsCopy)
    {
      v21 = localizationsCopy;
    }

    else
    {
      v21 = +[WFGallerySessionManager defaultPreferredLocalizations];
    }

    preferredLocalizations = v18->_preferredLocalizations;
    v18->_preferredLocalizations = v21;

    v23 = [regionCopy copy];
    currentRegion = v18->_currentRegion;
    v18->_currentRegion = v23;

    v25 = [idiomCopy copy];
    currentIdiom = v18->_currentIdiom;
    v18->_currentIdiom = v25;

    v18->_performExpensiveFetchOperations = operations;
    v27 = objc_opt_new();
    workflowSearchCache = v18->_workflowSearchCache;
    v18->_workflowSearchCache = v27;

    v29 = objc_opt_new();
    collectionSearchCache = v18->_collectionSearchCache;
    v18->_collectionSearchCache = v29;

    v31 = objc_opt_new();
    pageCache = v18->_pageCache;
    v18->_pageCache = v31;

    v33 = objc_opt_new();
    workflowCache = v18->_workflowCache;
    v18->_workflowCache = v33;

    v35 = objc_opt_new();
    bannerImageCache = v18->_bannerImageCache;
    v18->_bannerImageCache = v35;

    v37 = v18;
  }

  return v18;
}

- (WFGallerySessionManager)init
{
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v4 = [workflowUserDefaults stringForKey:@"WFGalleryEnvironment"];
  v5 = v4;
  v6 = *MEMORY[0x1E6997148];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  workflowUserDefaults2 = [MEMORY[0x1E695E000] workflowUserDefaults];
  if ([workflowUserDefaults2 BOOLForKey:@"WFGallerySandbox"])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E695B888] containerIDForContainerIdentifier:v7 environment:v9];

  v11 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v10];
  WFSetShortcutsAppAttributionOnContainer(v11);
  v12 = MGCopyAnswer();
  v13 = +[WFGallerySessionManager currentDeviceIdiom];
  v14 = [(WFGallerySessionManager *)self initWithContainer:v11 preferredLocalizations:0 currentRegion:v12 currentIdiom:v13 performExpensiveFetchOperations:0];

  return v14;
}

+ (id)defaultPreferredLocalizations
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  applicationBundle = [mEMORY[0x1E6996CA8] applicationBundle];

  localizations = [applicationBundle localizations];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [preferredLanguages mutableCopy];

  v7 = objc_opt_new();
  while ([v6 count])
  {
    v8 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:localizations forPreferences:v6];
    firstObject = [v8 firstObject];

    if (firstObject)
    {
      [v7 addObject:firstObject];
    }

    [v6 removeObjectAtIndex:0];
  }

  [v7 addObject:@"en"];
  array = [v7 array];

  return array;
}

+ (WFGallerySessionManager)sharedManager
{
  if (sharedManager_onceToken_68355 != -1)
  {
    dispatch_once(&sharedManager_onceToken_68355, &__block_literal_global_68356);
  }

  v3 = sharedManager_sharedManager_68357;

  return v3;
}

void __40__WFGallerySessionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFGallerySessionManager);
  v1 = sharedManager_sharedManager_68357;
  sharedManager_sharedManager_68357 = v0;
}

+ (id)currentDeviceIdiom
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  idiom = [currentDevice idiom];

  if (idiom > 4)
  {
    return 0;
  }

  else
  {
    return off_1E837EA98[idiom];
  }
}

@end