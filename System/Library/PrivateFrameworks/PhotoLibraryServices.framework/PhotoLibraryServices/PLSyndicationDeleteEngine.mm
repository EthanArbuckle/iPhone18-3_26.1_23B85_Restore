@interface PLSyndicationDeleteEngine
- (BOOL)_deleteConversationWithBundleID:(id)d syndicationIdentifiers:(id)identifiers;
- (BOOL)_deleteSyndicationAssetsWithBundleID:(id)d syndicationIdentifiers:(id)identifiers deleteCount:(int64_t *)count;
- (BOOL)_processDeletesForBundleID:(id)d unprefixedIdentifiers:(id)identifiers;
- (PLSyndicationDeleteEngine)initWithDelegate:(id)delegate path:(id)path logPrefix:(id)prefix;
- (PLSyndicationDeleteEngine)initWithLibraryServicesManager:(id)manager;
- (PLSyndicationDeleteEngineDelegate)delegate;
- (void)_inqueueProcessDeletesForBundleID:(id)d identifiers:(id)identifiers;
- (void)processDeletesForBundleID:(id)d identifiers:(id)identifiers completion:(id)completion;
@end

@implementation PLSyndicationDeleteEngine

- (PLSyndicationDeleteEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processDeletesForBundleID:(id)d identifiers:(id)identifiers completion:(id)completion
{
  dCopy = d;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v11 = MEMORY[0x1E69BF360];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_wellKnownPhotoLibraryIdentifier];
  stringValue = [v12 stringValue];
  v14 = [@"PLSyndicationDeleteEngine-processDeletes-" stringByAppendingString:stringValue];
  v15 = [v11 transaction:{objc_msgSend(v14, "UTF8String")}];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PLSyndicationDeleteEngine_processDeletesForBundleID_identifiers_completion___block_invoke;
  block[3] = &unk_1E7576EE8;
  block[4] = self;
  v22 = dCopy;
  v24 = v15;
  v25 = completionCopy;
  v23 = identifiersCopy;
  v17 = v15;
  v18 = completionCopy;
  v19 = identifiersCopy;
  v20 = dCopy;
  dispatch_async(queue, block);
}

uint64_t __78__PLSyndicationDeleteEngine_processDeletesForBundleID_identifiers_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _inqueueProcessDeletesForBundleID:*(a1 + 40) identifiers:*(a1 + 48)];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 56);

  return [v3 stillAlive];
}

- (void)_inqueueProcessDeletesForBundleID:(id)d identifiers:(id)identifiers
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifiersCopy = identifiers;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefix = [(PLSyndicationDeleteEngine *)self logPrefix];
    v10 = 138543618;
    v11 = logPrefix;
    v12 = 2048;
    v13 = [identifiersCopy count];
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Going to delete %lu items", &v10, 0x16u);
  }

  [(PLSyndicationDeleteEngine *)self _processDeletesForBundleID:dCopy unprefixedIdentifiers:identifiersCopy];
  if ([dCopy isEqualToString:*MEMORY[0x1E69BFF00]])
  {
    [(PLSyndicationDeleteEngine *)self _deleteConversationWithBundleID:dCopy syndicationIdentifiers:identifiersCopy];
  }
}

- (BOOL)_deleteConversationWithBundleID:(id)d syndicationIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  delegate = [(PLSyndicationDeleteEngine *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PLSyndicationDeleteEngine__deleteConversationWithBundleID_syndicationIdentifiers___block_invoke;
  v12[3] = &unk_1E7574238;
  v13 = identifiersCopy;
  selfCopy = self;
  v15 = dCopy;
  v9 = dCopy;
  v10 = identifiersCopy;
  [delegate performTransactionForSyndicationDeleteManager:self name:"-[PLSyndicationDeleteEngine _deleteConversationWithBundleID:syndicationIdentifiers:]" transaction:v12];

  return 0;
}

void __84__PLSyndicationDeleteEngine__deleteConversationWithBundleID_syndicationIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLConversation entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"importSessionID", *(a1 + 32)];
  [v6 setPredicate:v7];
  v17 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PLSyndicationDeleteEngine__deleteConversationWithBundleID_syndicationIdentifiers___block_invoke_2;
  v15[3] = &unk_1E7574288;
  v8 = v3;
  v16 = v8;
  v9 = [v8 enumerateObjectsFromFetchRequest:v6 count:&v17 usingDefaultBatchSizeWithBlock:v15];
  if (*(*(a1 + 40) + 24) == 3)
  {
    v10 = @"syndicationLibrary";
  }

  else
  {
    v10 = @"SPL";
  }

  v11 = v10;
  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) logPrefix];
    v14 = *(a1 + 48);
    *buf = 138544130;
    v19 = v13;
    v20 = 2048;
    v21 = v17;
    v22 = 2112;
    v23 = v11;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleted %lu conversation(s) in %@ for bundleID: %{public}@", buf, 0x2Au);
  }
}

- (BOOL)_deleteSyndicationAssetsWithBundleID:(id)d syndicationIdentifiers:(id)identifiers deleteCount:(int64_t *)count
{
  dCopy = d;
  identifiersCopy = identifiers;
  delegate = [(PLSyndicationDeleteEngine *)self delegate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__PLSyndicationDeleteEngine__deleteSyndicationAssetsWithBundleID_syndicationIdentifiers_deleteCount___block_invoke;
  v14[3] = &unk_1E7574260;
  v15 = identifiersCopy;
  v16 = dCopy;
  selfCopy = self;
  countCopy = count;
  v11 = dCopy;
  v12 = identifiersCopy;
  [delegate performTransactionForSyndicationDeleteManager:self name:"-[PLSyndicationDeleteEngine _deleteSyndicationAssetsWithBundleID:syndicationIdentifiers:deleteCount:]" transaction:v14];

  return 0;
}

void __101__PLSyndicationDeleteEngine__deleteSyndicationAssetsWithBundleID_syndicationIdentifiers_deleteCount___block_invoke(uint64_t a1, void *a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = MEMORY[0x1E696AB28];
  v8 = [PLManagedAsset predicateForSyndicatedAssetIdentifiers:*(a1 + 32) includeRejected:1];
  v36[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.importedByBundleIdentifier", *(a1 + 40)];
  v36[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  if (*(*(a1 + 48) + 24) != 3)
  {
    v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
    v13 = MEMORY[0x1E696AB28];
    v35[0] = v11;
    v35[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    v11 = v15;
  }

  [v6 setPredicate:v11];
  v26 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__PLSyndicationDeleteEngine__deleteSyndicationAssetsWithBundleID_syndicationIdentifiers_deleteCount___block_invoke_2;
  v24[3] = &unk_1E7575368;
  v16 = v3;
  v25 = v16;
  v17 = [v16 enumerateObjectsFromFetchRequest:v6 count:&v26 usingDefaultBatchSizeWithBlock:v24];
  if (*(*(a1 + 48) + 24) == 3)
  {
    v18 = @"syndicationLibrary";
  }

  else
  {
    v18 = @"SPL";
  }

  v19 = v18;
  v20 = PLSyndicationGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 48) logPrefix];
    v22 = *(a1 + 40);
    *buf = 138544130;
    v28 = v21;
    v29 = 2048;
    v30 = v26;
    v31 = 2112;
    v32 = v19;
    v33 = 2114;
    v34 = v22;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleted %lu syndication guest asset(s) in %@ for bundleID: %{public}@", buf, 0x2Au);
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    *v23 = v26;
  }
}

- (BOOL)_processDeletesForBundleID:(id)d unprefixedIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  delegate = [(PLSyndicationDeleteEngine *)self delegate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PLSyndicationDeleteEngine__processDeletesForBundleID_unprefixedIdentifiers___block_invoke;
  v19[3] = &unk_1E7574238;
  v10 = identifiersCopy;
  v20 = v10;
  v21 = dCopy;
  v11 = v8;
  v22 = v11;
  v12 = dCopy;
  [delegate performTransactionForSyndicationDeleteManager:self name:"-[PLSyndicationDeleteEngine _processDeletesForBundleID:unprefixedIdentifiers:]" transaction:v19];

  v18 = 0;
  v13 = PLSyndicationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 count];
    v15 = [v10 count];
    *buf = 134218240;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Found %tu asset(s) for deletion using %tu unprefixed identifiers", buf, 0x16u);
  }

  [(PLSyndicationDeleteEngine *)self _deleteSyndicationAssetsWithBundleID:v12 syndicationIdentifiers:v11 deleteCount:&v18];
  v16 = v18 > 0;

  return v16;
}

void __78__PLSyndicationDeleteEngine__processDeletesForBundleID_unprefixedIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = MEMORY[0x1E696AB28];
  v8 = [PLManagedAsset predicateForSyndicatedAssetIdentifiersSuffix:*(a1 + 32)];
  v35[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.importedByBundleIdentifier", *(a1 + 40)];
  v35[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v25 = v11;
  [v6 setPredicate:v11];
  v34 = @"additionalAttributes";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  [v6 setRelationshipKeyPathsForPrefetching:v12];

  v30 = 0;
  v13 = [v3 executeFetchRequest:v6 error:&v30];
  v24 = v30;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [v19 additionalAttributes];
        v21 = [v20 syndicationIdentifier];

        if (v21)
        {
          [*(a1 + 48) addObject:v21];
        }

        else
        {
          v22 = PLSyndicationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v19 uuid];
            *buf = 138543362;
            v32 = v23;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unexpected nil syndicationIdentifier on asset %{public}@", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v16);
  }
}

- (PLSyndicationDeleteEngine)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  pathManager = [managerCopy pathManager];
  v6 = [pathManager photoDirectoryWithType:5];
  v7 = [v6 stringByAppendingPathComponent:@"SyndicationDeleteJournal"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[sync.delete] L%td", objc_msgSend(managerCopy, "wellKnownPhotoLibraryIdentifier")];
  v9 = [(PLSyndicationDeleteEngine *)self initWithDelegate:managerCopy path:v7 logPrefix:v8];

  return v9;
}

- (PLSyndicationDeleteEngine)initWithDelegate:(id)delegate path:(id)path logPrefix:(id)prefix
{
  delegateCopy = delegate;
  pathCopy = path;
  prefixCopy = prefix;
  v16.receiver = self;
  v16.super_class = PLSyndicationDeleteEngine;
  v11 = [(PLSyndicationDeleteEngine *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_logPrefix, prefix);
    objc_storeStrong(&v12->_path, path);
    v13 = dispatch_queue_create("com.apple.photos.syndicationDeleteManager", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    v12->_wellKnownPhotoLibraryIdentifier = [delegateCopy wellKnownPhotoLibraryIdentifier];
  }

  return v12;
}

@end