@interface WFGallerySessionManager
+ (WFGallerySessionManager)sharedManager;
+ (id)currentDeviceIdiom;
+ (id)defaultPreferredLocalizations;
- (BOOL)bannerIsRestricted:(id)a3;
- (BOOL)collectionIsRestricted:(id)a3;
- (BOOL)workflowIsRestricted:(id)a3;
- (NSString)containerDescription;
- (WFGallerySessionManager)init;
- (WFGallerySessionManager)initWithContainer:(id)a3 preferredLocalizations:(id)a4 currentRegion:(id)a5 currentIdiom:(id)a6 performExpensiveFetchOperations:(BOOL)a7;
- (id)createItemRequest;
- (id)getImageForBanner:(id)a3 completionHandler:(id)a4;
- (id)getWorkflowForIdentifier:(id)a3 completionHandler:(id)a4;
- (id)loadWorkflowInGalleryWorkflow:(id)a3 completionHandler:(id)a4;
- (id)localPageWithId:(id)a3;
- (id)preferredPageInPages:(id)a3 preferredLanguages:(id)a4;
- (id)searchCollections:(id)a3 completionHandler:(id)a4;
- (id)searchUsingWebServicesForItem:(Class)a3 query:(id)a4 queryFilter:(id)a5 completionHandler:(id)a6;
- (id)searchWorkflows:(id)a3 completionHandler:(id)a4;
- (id)searchWorkflowsAndCollections:(id)a3 completionHandler:(id)a4;
- (id)sortAndFilterSearchResults:(id)a3 query:(id)a4;
- (id)unshareSharedShortcut:(id)a3 completionHandler:(id)a4;
- (id)updateItems:(id)a3 completionHandler:(id)a4;
- (int64_t)version;
- (void)addLocalContent:(id)a3 toPage:(id)a4;
- (void)getCollectionForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getCollectionForPersistentIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getCurrentUserIdentifierWithCompletionHandler:(id)a3;
- (void)getHomeWithCompletionHandler:(id)a3;
- (void)getHomeWithPreferredLanguages:(id)a3 completionHandler:(id)a4;
- (void)getPageWithID:(id)a3 completionHandler:(id)a4;
- (void)getPageWithID:(id)a3 localContent:(id)a4 completionHandler:(id)a5;
- (void)removeRestrictedContentFromCollection:(id)a3;
- (void)removeRestrictedContentFromPage:(id)a3;
- (void)reportWorkflow:(id)a3 iCloudIdentifier:(id)a4 reportReason:(id)a5 reportMessage:(id)a6 completionHandler:(id)a7;
- (void)uploadWorkflow:(id)a3 withName:(id)a4 shortDescription:(id)a5 longDescription:(id)a6 private:(BOOL)a7 completionHandler:(id)a8;
@end

@implementation WFGallerySessionManager

- (id)localPageWithId:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  WFGallerySessionManager.localPage(id:)(v9, v8);
  v11 = v10;

  return v11;
}

- (void)uploadWorkflow:(id)a3 withName:(id)a4 shortDescription:(id)a5 longDescription:(id)a6 private:(BOOL)a7 completionHandler:(id)a8
{
  v29[1] = *MEMORY[0x1E69E9840];
  v11 = a8;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(WFSharedShortcut);
  [(WFSharedShortcut *)v14 setName:v12];

  v15 = [v13 icon];
  [(WFSharedShortcut *)v14 setIcon:v15];

  [(WFSharedShortcut *)v14 setWorkflowRecord:v13];
  v16 = v14;
  v17 = [WFCloudKitItemRequest alloc];
  v18 = [(WFGallerySessionManager *)self container];
  v19 = [(WFGallerySessionManager *)self database];
  v20 = [(WFCloudKitItemRequest *)v17 initWithContainer:v18 database:v19];

  v29[0] = v16;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __110__WFGallerySessionManager_uploadWorkflow_withName_shortDescription_longDescription_private_completionHandler___block_invoke;
  v26[3] = &unk_1E837FA10;
  v27 = v16;
  v28 = v11;
  v22 = v16;
  v23 = v11;
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

- (void)reportWorkflow:(id)a3 iCloudIdentifier:(id)a4 reportReason:(id)a5 reportMessage:(id)a6 completionHandler:(id)a7
{
  v30[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 fileRepresentation];
  v29 = 0;
  v17 = [v16 writeToDiskWithError:&v29];
  v18 = v29;
  if (v17)
  {
    v28 = v13;
    v19 = [[WFShortcutConcerningReport alloc] initWithReason:v13 shortcutContent:v17];
    [(WFShortcutConcerningReport *)v19 setReportMessage:v14];
    if (v12)
    {
      v20 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v12];
      [(WFShortcutConcerningReport *)v19 setShortcut:v20];
    }

    v21 = [WFCloudKitItemRequest alloc];
    v22 = [(WFGallerySessionManager *)self container];
    v23 = [(WFGallerySessionManager *)self database];
    v24 = [(WFCloudKitItemRequest *)v21 initWithContainer:v22 database:v23];

    v30[0] = v19;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v26 = [(WFCloudKitItemRequest *)v24 updateItems:v25 setNilValues:0 qualityOfService:25 timeoutIntervalForRequest:v15 completionHandler:30.0];

    v13 = v28;
  }

  else
  {
    v15[2](v15, v18);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)unshareSharedShortcut:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [v8 deleteItem:v7 completionHandler:v6];

  return v9;
}

- (id)updateItems:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [v8 updateItems:v7 setNilValues:0 completionHandler:v6];

  return v9;
}

- (void)getCurrentUserIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFGallerySessionManager *)self container];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WFGallerySessionManager_getCurrentUserIdentifierWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837EA78;
  v8 = v4;
  v6 = v4;
  [v5 fetchUserRecordIDWithCompletionHandler:v7];
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

- (void)getCollectionForIdentifier:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFGallerySessionManager *)self createItemRequest];
  v8 = [v7 fetchItemWithID:v9 itemType:objc_opt_class() groupName:@"GalleryFetch" properties:0 completionHandler:v6];
}

- (void)getCollectionForPersistentIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFGallerySessionManager *)self createItemRequest];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  v11 = [v10 integerValue];

  v12 = MEMORY[0x1E696AE18];
  v13 = +[WFGallerySessionManager defaultPreferredLocalizations];
  v14 = [v12 predicateWithFormat:@"persistentIdentifier == %@ AND language IN %@ AND minVersion <= %ld", v7, v13, v11];

  v15 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__WFGallerySessionManager_getCollectionForPersistentIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E837F020;
  v18[4] = self;
  v19 = v6;
  v16 = v6;
  v17 = [v8 fetchItemsWithPredicate:v14 itemType:v15 groupName:@"GalleryFetch" properties:0 completionHandler:v18];
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

- (id)getWorkflowForIdentifier:(id)a3 completionHandler:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [WFCloudKitWebServiceRequest alloc];
  v9 = [(WFGallerySessionManager *)self container];
  v10 = [(WFGallerySessionManager *)self database];
  v11 = [(WFCloudKitWebServiceRequest *)v8 initWithContainer:v9 database:v10];

  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v13 = [(WFCloudKitWebServiceRequest *)v11 fetchProxiedRecordWithIdentifier:v7 possibleItemTypes:v12 completionHandler:v6];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)sortAndFilterSearchResults:(id)a3 query:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = a4;
  v6 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v5;
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
      v13 = [v12 persistentIdentifier];
      if (v13)
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
            v17 = [v6 objectForKey:v13];
            if (!v17)
            {
              v17 = objc_opt_new();
              [v6 setObject:v17 forKey:v13];
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

  v18 = [(WFGallerySessionManager *)self preferredLocalizations];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke;
  v35[3] = &unk_1E837EA28;
  v19 = v18;
  v36 = v19;
  [v6 enumerateKeysAndObjectsUsingBlock:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_3;
  v33[3] = &unk_1E837EA50;
  v20 = v6;
  v34 = v20;
  v21 = [v7 if_objectsPassingTest:v33];

  if (v29)
  {
    v22 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v23 = [v29 componentsSeparatedByCharactersInSet:v22];
    v24 = [v23 firstObject];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__WFGallerySessionManager_sortAndFilterSearchResults_query___block_invoke_4;
    v31[3] = &unk_1E837EA00;
    v32 = v24;
    v25 = v24;
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

- (id)searchCollections:(id)a3 completionHandler:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [v6 stringByTrimmingCharactersInSet:v8];

  v10 = [(WFGallerySessionManager *)self collectionSearchCache];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v7[2](v7, v11, 0);
    v12 = 0;
  }

  else
  {
    v13 = [(WFGallerySessionManager *)self queryFilterForTokenizedKey:@"name" query:v9];
    v14 = [(WFGallerySessionManager *)self preferredLocalizations];
    v15 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"language" toStringArray:v14 by:1];

    v24[0] = v13;
    v24[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v17 = [WFCloudKitWebServiceQueryFilter filterWithCombinationOf:v16 by:0];

    v18 = objc_opt_class();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__WFGallerySessionManager_searchCollections_completionHandler___block_invoke;
    v21[3] = &unk_1E837E9D0;
    v23 = v7;
    v21[4] = self;
    v22 = v9;
    v12 = [(WFGallerySessionManager *)self searchUsingWebServicesForItem:v18 query:v6 queryFilter:v17 completionHandler:v21];
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

- (id)searchUsingWebServicesForItem:(Class)a3 query:(id)a4 queryFilter:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [WFCloudKitWebServiceRequest alloc];
  v14 = [(WFGallerySessionManager *)self container];
  v15 = [(WFGallerySessionManager *)self database];
  v16 = [(WFCloudKitWebServiceRequest *)v13 initWithContainer:v14 database:v15];

  v17 = [MEMORY[0x1E695E000] workflowUserDefaults];
  LOBYTE(v15) = [v17 BOOLForKey:@"WFDisableGallerySearchEdgeCaching"];

  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [(WFGallerySessionManager *)self container];
    v21 = [v20 containerIdentifier];
    v22 = [(objc_class *)a3 recordType];
    v18 = [v19 stringWithFormat:@"%@-%@-%li", v21, v22, objc_msgSend(v10, "hash")];
  }

  v23 = [(WFCloudKitWebServiceRequest *)v16 fetchRecordsWithItemType:a3 filter:v11 cacheKey:v18 completionHandler:v12];

  return v23;
}

- (id)searchWorkflows:(id)a3 completionHandler:(id)a4
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v9 = [v6 stringByTrimmingCharactersInSet:v8];

  v10 = [(WFGallerySessionManager *)self workflowSearchCache];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v7[2](v7, v11, 0);
    v12 = 0;
  }

  else
  {
    v13 = [(WFGallerySessionManager *)self queryFilterForTokenizedKey:@"name" query:v9];
    v14 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"searchable" toInt:1 by:0];
    v15 = [(WFGallerySessionManager *)self preferredLocalizations];
    v16 = [WFCloudKitWebServiceQueryFilter filterWithComparisonOf:@"language" toStringArray:v15 by:1];

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
    v24 = v7;
    v22[4] = self;
    v23 = v9;
    v12 = [(WFGallerySessionManager *)self searchUsingWebServicesForItem:v19 query:v6 queryFilter:v18 completionHandler:v22];
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

- (id)searchWorkflowsAndCollections:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v7;
  v26 = v10;
  v24 = self;
  v11 = v6;
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

- (id)loadWorkflowInGalleryWorkflow:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFGallerySessionManager *)self workflowCache];
  v9 = [v6 identifier];
  v10 = [v9 recordName];
  v11 = [v8 objectForKey:v10];

  if (v11)
  {
    v7[2](v7, v11, 0);
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v12 = [v6 workflowRecord];

  if (v12)
  {
    v13 = [v6 workflowRecord];
    v7[2](v7, v13, 0);

    goto LABEL_5;
  }

  v16 = [(WFGallerySessionManager *)self createItemRequest];
  v17 = [v6 identifier];
  v18 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__WFGallerySessionManager_loadWorkflowInGalleryWorkflow_completionHandler___block_invoke;
  v19[3] = &unk_1E837E930;
  v19[4] = self;
  v20 = v7;
  v14 = [v16 fetchItemWithID:v17 itemType:v18 groupName:@"GalleryFetch" properties:&unk_1F4A9B7D0 completionHandler:v19];

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

- (BOOL)workflowIsRestricted:(id)a3
{
  v4 = a3;
  v5 = [v4 hiddenRegions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(WFGallerySessionManager *)self currentRegion];
    if (v7)
    {
      v8 = [v4 hiddenRegions];
      v9 = [(WFGallerySessionManager *)self currentRegion];
      v10 = [v8 containsObject:v9];
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

  v11 = [v4 supportedIdioms];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(WFGallerySessionManager *)self currentIdiom];
    if (v13)
    {
      v14 = [v4 supportedIdioms];
      v15 = [(WFGallerySessionManager *)self currentIdiom];
      v16 = [v14 containsObject:v15] ^ 1;
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

- (BOOL)collectionIsRestricted:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 recordName];
  if (([v6 isEqualToString:@"UseModel"] & 1) == 0)
  {

LABEL_7:
    v9 = [v4 supportedIdioms];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(WFGallerySessionManager *)self currentIdiom];
      if (v11)
      {
        v12 = [v4 supportedIdioms];
        v13 = [(WFGallerySessionManager *)self currentIdiom];
        LODWORD(self) = [v12 containsObject:v13] ^ 1;
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
  v8 = [v7 isActionVisible];

  if (v8)
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

- (BOOL)bannerIsRestricted:(id)a3
{
  v4 = a3;
  v5 = [v4 supportedIdioms];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(WFGallerySessionManager *)self currentIdiom];
    if (v7)
    {
      v8 = [v4 supportedIdioms];
      v9 = [(WFGallerySessionManager *)self currentIdiom];
      v10 = [v8 containsObject:v9] ^ 1;
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

- (void)removeRestrictedContentFromCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 workflows];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WFGallerySessionManager_removeRestrictedContentFromCollection___block_invoke;
  v7[3] = &unk_1E837E900;
  v7[4] = self;
  v6 = [v5 if_objectsPassingTest:v7];
  [v4 setWorkflows:v6];
}

- (void)removeRestrictedContentFromPage:(id)a3
{
  v4 = a3;
  v5 = [v4 collections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke;
  v10[3] = &unk_1E837E8B0;
  v10[4] = self;
  v6 = [v5 if_compactMap:v10];
  [v4 setCollections:v6];

  v7 = [v4 banners];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__WFGallerySessionManager_removeRestrictedContentFromPage___block_invoke_2;
  v9[3] = &unk_1E837E8D8;
  v9[4] = self;
  v8 = [v7 if_compactMap:v9];
  [v4 setBanners:v8];
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

- (void)addLocalContent:(id)a3 toPage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 collections];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v5 collections];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  v14 = [v10 arrayByAddingObjectsFromArray:v13];
  [v5 setCollections:v14];

  v20 = [v6 banners];

  if (v20)
  {
    v15 = v20;
  }

  else
  {
    v15 = v9;
  }

  v16 = [v5 banners];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v9;
  }

  v19 = [v15 arrayByAddingObjectsFromArray:v18];
  [v5 setBanners:v19];
}

- (id)preferredPageInPages:(id)a3 preferredLanguages:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 sortedArrayUsingComparator:&__block_literal_global_251_68297];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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

- (id)getImageForBanner:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 recordName];

  v10 = [(WFGallerySessionManager *)self bannerImageCache];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v7[2](v7, v11, 1, 0);
    v12 = objc_alloc_init(WFCloudKitTask);
  }

  else
  {
    v13 = [v6 image];
    if (v13)
    {
      v14 = [(WFGallerySessionManager *)self bannerImageCache];
      [v14 setObject:v13 forKey:v9];

      v7[2](v7, v13, 1, 0);
      v12 = objc_alloc_init(WFCloudKitTask);
    }

    else
    {
      v15 = [(WFGallerySessionManager *)self createItemRequest];
      v16 = [v6 identifier];
      v21 = objc_opt_class();
      v17 = +[WFGalleryBanner imageProperty];
      v25[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__WFGallerySessionManager_getImageForBanner_completionHandler___block_invoke;
      v22[3] = &unk_1E837E868;
      v22[4] = self;
      v23 = v9;
      v24 = v7;
      v12 = [v15 fetchItemWithID:v16 itemType:v21 groupName:@"GalleryFetch" properties:v18 completionHandler:v22];
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

- (void)getPageWithID:(id)a3 localContent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFGallerySessionManager *)self pageCache];
  v12 = [v8 recordName];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v10[2](v10, v13, 0);
  }

  else
  {
    v14 = [(WFGallerySessionManager *)self createItemRequest];
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__WFGallerySessionManager_getPageWithID_localContent_completionHandler___block_invoke;
    v17[3] = &unk_1E837E840;
    v18 = v9;
    v19 = self;
    v20 = v8;
    v21 = v10;
    v16 = [v14 fetchItemWithID:v20 itemType:v15 groupName:@"GalleryFetch" properties:0 completionHandler:v17];
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

- (void)getPageWithID:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 recordName];
  v8 = [(WFGallerySessionManager *)self localPageWithId:v7];

  if (v8)
  {
    [(WFGallerySessionManager *)self removeRestrictedContentFromPage:v8];
    v6[2](v6, v8, 0);
  }

  else
  {
    [(WFGallerySessionManager *)self getPageWithID:v9 localContent:0 completionHandler:v6];
  }
}

- (void)getHomeWithPreferredLanguages:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFGallerySessionManager *)self localPageWithId:@"root"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isRoot = 1 AND language IN %@ AND minVersion <= %ld", v6, -[WFGallerySessionManager version](self, "version")];
  v10 = [(WFGallerySessionManager *)self createItemRequest];
  v11 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__WFGallerySessionManager_getHomeWithPreferredLanguages_completionHandler___block_invoke;
  v16[3] = &unk_1E837E818;
  v16[4] = self;
  v17 = v6;
  v18 = v8;
  v19 = v7;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v15 = [v10 fetchItemsWithPredicate:v9 itemType:v11 groupName:@"GalleryPageQuery" properties:&unk_1F4A9B7B8 completionHandler:v16];
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

- (void)getHomeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFGallerySessionManager *)self preferredLocalizations];
  [(WFGallerySessionManager *)self getHomeWithPreferredLanguages:v5 completionHandler:v4];
}

- (id)createItemRequest
{
  v3 = [WFCloudKitItemRequest alloc];
  v4 = [(WFGallerySessionManager *)self container];
  v5 = [(WFGallerySessionManager *)self database];
  v6 = [(WFCloudKitItemRequest *)v3 initWithContainer:v4 database:v5];

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

  v4 = [(WFGallerySessionManager *)self container];
  v5 = [v4 containerIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E6997148]];

  v7 = [(WFGallerySessionManager *)self container];
  v8 = [v7 containerID];
  v9 = [v8 environment];

  if (v6)
  {
    if (v9 == 2)
    {
      return @"Dev";
    }

    else
    {
      return 0;
    }
  }

  else if (v9 == 2)
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
  v4 = [v3 integerValue];

  if (VCIsInternalBuild())
  {
    v5 = [MEMORY[0x1E695E000] workflowUserDefaults];
    if ([v5 BOOLForKey:@"WFGalleryOverrideBuildKey"])
    {
      v6 = [MEMORY[0x1E695E000] workflowUserDefaults];
      v4 = [v6 integerForKey:@"WFGalleryOverrideBuildVersionKey"];
    }
  }

  v7 = getWFGalleryLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFGallerySessionManager version]";
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s using build version: %li", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (WFGallerySessionManager)initWithContainer:(id)a3 preferredLocalizations:(id)a4 currentRegion:(id)a5 currentIdiom:(id)a6 performExpensiveFetchOperations:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v39.receiver = self;
  v39.super_class = WFGallerySessionManager;
  v17 = [(WFGallerySessionManager *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_container, a3);
    v19 = [(CKContainer *)v18->_container publicCloudDatabase];
    database = v18->_database;
    v18->_database = v19;

    if (v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = +[WFGallerySessionManager defaultPreferredLocalizations];
    }

    preferredLocalizations = v18->_preferredLocalizations;
    v18->_preferredLocalizations = v21;

    v23 = [v15 copy];
    currentRegion = v18->_currentRegion;
    v18->_currentRegion = v23;

    v25 = [v16 copy];
    currentIdiom = v18->_currentIdiom;
    v18->_currentIdiom = v25;

    v18->_performExpensiveFetchOperations = a7;
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
  v3 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v4 = [v3 stringForKey:@"WFGalleryEnvironment"];
  v5 = v4;
  v6 = *MEMORY[0x1E6997148];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E695E000] workflowUserDefaults];
  if ([v8 BOOLForKey:@"WFGallerySandbox"])
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
  v2 = [MEMORY[0x1E6996CA8] sharedContext];
  v3 = [v2 applicationBundle];

  v4 = [v3 localizations];
  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [v5 mutableCopy];

  v7 = objc_opt_new();
  while ([v6 count])
  {
    v8 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v4 forPreferences:v6];
    v9 = [v8 firstObject];

    if (v9)
    {
      [v7 addObject:v9];
    }

    [v6 removeObjectAtIndex:0];
  }

  [v7 addObject:@"en"];
  v10 = [v7 array];

  return v10;
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
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 idiom];

  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E837EA98[v3];
  }
}

@end