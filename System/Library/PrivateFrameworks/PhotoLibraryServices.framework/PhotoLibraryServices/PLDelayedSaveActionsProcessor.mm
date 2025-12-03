@interface PLDelayedSaveActionsProcessor
- (PLDelayedSaveActionsProcessor)initWithLibraryServicesManager:(id)manager;
- (id)_assetIDsByContainingSocialGroupIDsFromAssetIDsNeedingContainmentUpdates:(id)updates inContext:(id)context;
- (id)_assetIDsByNodeIDFromAssetPersonEdgeDictionaries:(id)dictionaries assetIDsNeedingContainmentUpdates:(id)updates inContext:(id)context;
- (id)_assetIDsByPersonUUIDWithAllPersonsFromAssetsNeedingContainmentUpdates:(id)updates assetIDsNeedingContainmentUpdates:(id)containmentUpdates inContext:(id)context;
- (id)_personUUIDsByNodeIDFromAssetPersonDictionaries:(id)dictionaries inContext:(id)context;
- (id)_socialGroupNodeIDsContainingMember:(id)member library:(id)library error:(id *)error;
- (void)_deleteUUIDs:(id)ds fromCoreDuetStreams:(id)streams transaction:(id)transaction;
- (void)_processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs:(id)ds library:(id)library transaction:(id)transaction;
- (void)_processAssetIDsByPersonUUIDNeedingContainmentUpdates:(id)updates assetIDsNeedingContainmentUpdates:(id)containmentUpdates pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates:(BOOL)needingContainmentUpdates library:(id)library transaction:(id)transaction;
- (void)_processAssetsNeedingAssetPersonEdgeUpdates:(id)updates library:(id)library transaction:(id)transaction;
- (void)_processDelayedAlbumCountsAndDateRangeUpdates:(id)updates library:(id)library transaction:(id)transaction;
- (void)_processDelayedAlbumKeyAssetsUpdates:(id)updates library:(id)library transaction:(id)transaction;
- (void)_processDelayedAlbumTrashUpdates:(id)updates library:(id)library transaction:(id)transaction;
- (void)_processDelayedAlbumWidgetTimelineReload:(BOOL)reload library:(id)library transaction:(id)transaction;
- (void)_processDelayedAssetsForDuetDelete:(id)delete transaction:(id)transaction;
- (void)_processDelayedAssetsForWallpaperFavoriteAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction;
- (void)_processDelayedAssetsForWallpaperUserAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction;
- (void)_processDelayedAssetsForWidgetFavoriteAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction;
- (void)_processDelayedAssetsForWidgetUserAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction;
- (void)_processDelayedBackgroundUploadEventUpdate:(BOOL)update library:(id)library transaction:(id)transaction;
- (void)_processDelayedCloudFeedAlbumUpdates:(id)updates collectionShareUpdates:(id)shareUpdates collectionShareDeletes:(id)deletes assetInserts:(id)inserts assetUpdates:(id)assetUpdates commentInserts:(id)commentInserts invitationRecordUpdates:(id)recordUpdates shareParticipantUpdates:(id)self0 shareParticipantDeletes:(id)self1 deletionEntries:(id)self2 transaction:(id)self3;
- (void)_processDelayedFeaturedContentUpdateAndWidgetTimelineReload:(BOOL)reload withPersonUUIDs:(id)ds shouldReloadWidgetTimeline:(BOOL)timeline library:(id)library transaction:(id)transaction;
- (void)_processDelayedForYouWidgetTimelineReload:(BOOL)reload library:(id)library transaction:(id)transaction;
- (void)_processDelayedImportSessionCountsAndDateRangeUpdates:(id)updates library:(id)library transaction:(id)transaction;
- (void)_processDelayedLibraryScopeParticipantsUpdate:(id)update library:(id)library transaction:(id)transaction;
- (void)_processDelayedLibraryScopeRulesUpdate:(BOOL)update library:(id)library transaction:(id)transaction;
- (void)_processDelayedMemoriesAssetUpdate:(id)update library:(id)library transaction:(id)transaction;
- (void)_processDelayedMemoriesForDuetDelete:(id)delete transaction:(id)transaction;
- (void)_processDelayedMomentChangesWithTransaction:(id)transaction;
- (void)_processDelayedWallpaperSuggestionReload:(id)reload library:(id)library transaction:(id)transaction;
- (void)_processMembersOfSocialGroupsNeedingDeduplication:(id)deduplication pendingSocialGroupIDsNeedingDeduplication:(BOOL)needingDeduplication library:(id)library transaction:(id)transaction;
- (void)_processSocialGroupsNeedingDeduplication:(id)deduplication library:(id)library transaction:(id)transaction;
- (void)_runAssetContainmentForSocialGroup:(id)group assetIDsToUpdate:(id)update;
- (void)_runContainmentOnAllGroupsNeedingContainmentUpdates:(id)updates inLibrary:(id)library;
- (void)processDelayedDeletionsFromChangeHubEvent:(id)event library:(id)library transaction:(id)transaction;
- (void)processDelayedMomentGeneratorSaveActionsFromDetail:(id)detail;
- (void)processDelayedSaveActionsDetail:(id)detail withPhotoLibrary:(id)library transaction:(id)transaction;
@end

@implementation PLDelayedSaveActionsProcessor

- (void)_processDelayedBackgroundUploadEventUpdate:(BOOL)update library:(id)library transaction:(id)transaction
{
  updateCopy = update;
  libraryCopy = library;
  if (PLIsAssetsd())
  {
    if (updateCopy)
    {
      libraryServicesManager = [libraryCopy libraryServicesManager];
      v8 = +[PLBackgroundJobResourceUploadExtensionRunnerWorker supportsWellKnownPhotoLibraryIdentifier:](PLBackgroundJobResourceUploadExtensionRunnerWorker, "supportsWellKnownPhotoLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);

      if (v8)
      {
        libraryBundle = [libraryCopy libraryBundle];
        v10 = [PLBackgroundJobResourceUploadExtensionRunnerWorker isEnabledForBundle:libraryBundle];

        if (v10)
        {
          v11 = PLBackendGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Delayed save actions processor: Signaling the background resource upload extension worker", buf, 2u);
          }

          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __96__PLDelayedSaveActionsProcessor__processDelayedBackgroundUploadEventUpdate_library_transaction___block_invoke;
          v12[3] = &unk_1E75781E8;
          v13 = libraryCopy;
          [v13 performTransaction:v12];
        }
      }
    }
  }
}

- (void)_processSocialGroupsNeedingDeduplication:(id)deduplication library:(id)library transaction:(id)transaction
{
  deduplicationCopy = deduplication;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [deduplicationCopy count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__PLDelayedSaveActionsProcessor__processSocialGroupsNeedingDeduplication_library_transaction___block_invoke;
    v12[3] = &unk_1E7578848;
    v13 = deduplicationCopy;
    v14 = libraryCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PLDelayedSaveActionsProcessor__processSocialGroupsNeedingDeduplication_library_transaction___block_invoke_171;
    v10[3] = &unk_1E75781E8;
    v11 = transactionCopy;
    [v14 performTransactionAndWait:v12 completionHandler:v10];
  }
}

void __94__PLDelayedSaveActionsProcessor__processSocialGroupsNeedingDeduplication_library_transaction___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = +[PLGraphNode fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) managedObjectContext];
  v26 = 0;
  v20 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v26];
  v6 = v26;

  if (!v5)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error getting social group source nodes from ids: %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if (([v13 isDeleted] & 1) == 0)
        {
          v15 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v13];
          v21 = v6;
          v16 = [PLSocialGroup deleteDuplicateGroupsAfterInsertionOfGroup:v15 error:&v21];
          v17 = v21;

          if (!v16)
          {
            v18 = PLBackendGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v15 uuid];
              *buf = 138412546;
              v28 = v19;
              v29 = 2112;
              v30 = v17;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error deleting duplicate groups after insertion of group with UUID: %@, error: %@", buf, 0x16u);
            }
          }

          v6 = v17;
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }
}

void *__94__PLDelayedSaveActionsProcessor__processSocialGroupsNeedingDeduplication_library_transaction___block_invoke_171(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    [result stillAlive];
    v3 = *(a1 + 32);

    return [v3 completeTransactionScope:@"PLTransactionScopeSocialGroupDeduplication"];
  }

  return result;
}

- (void)_processMembersOfSocialGroupsNeedingDeduplication:(id)deduplication pendingSocialGroupIDsNeedingDeduplication:(BOOL)needingDeduplication library:(id)library transaction:(id)transaction
{
  deduplicationCopy = deduplication;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [deduplicationCopy count])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __145__PLDelayedSaveActionsProcessor__processMembersOfSocialGroupsNeedingDeduplication_pendingSocialGroupIDsNeedingDeduplication_library_transaction___block_invoke;
    v16[3] = &unk_1E75761B8;
    v16[4] = self;
    v17 = deduplicationCopy;
    v18 = libraryCopy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __145__PLDelayedSaveActionsProcessor__processMembersOfSocialGroupsNeedingDeduplication_pendingSocialGroupIDsNeedingDeduplication_library_transaction___block_invoke_170;
    v13[3] = &unk_1E7576F80;
    v14 = transactionCopy;
    needingDeduplicationCopy = needingDeduplication;
    [v18 performBlockAndWait:v16 completionHandler:v13];
  }
}

void __145__PLDelayedSaveActionsProcessor__processMembersOfSocialGroupsNeedingDeduplication_pendingSocialGroupIDsNeedingDeduplication_library_transaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = 0;
  v5 = [v2 _socialGroupNodeIDsContainingMember:v3 library:v4 error:&v8];
  v6 = v8;
  if (!v5)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetching social group node IDs containing member for deduplication: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _processSocialGroupsNeedingDeduplication:v5 library:*(a1 + 48) transaction:0];
}

uint64_t __145__PLDelayedSaveActionsProcessor__processMembersOfSocialGroupsNeedingDeduplication_pendingSocialGroupIDsNeedingDeduplication_library_transaction___block_invoke_170(uint64_t a1)
{
  result = [*(a1 + 32) stillAlive];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 completeTransactionScope:@"PLTransactionScopeSocialGroupDeduplication"];
  }

  return result;
}

- (void)_processAssetsNeedingAssetPersonEdgeUpdates:(id)updates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [updatesCopy count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__PLDelayedSaveActionsProcessor__processAssetsNeedingAssetPersonEdgeUpdates_library_transaction___block_invoke;
    v12[3] = &unk_1E7578848;
    v13 = updatesCopy;
    v14 = libraryCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__PLDelayedSaveActionsProcessor__processAssetsNeedingAssetPersonEdgeUpdates_library_transaction___block_invoke_169;
    v10[3] = &unk_1E75781E8;
    v11 = transactionCopy;
    [v14 performBlockAndWait:v12 completionHandler:v10];
  }
}

void __97__PLDelayedSaveActionsProcessor__processAssetsNeedingAssetPersonEdgeUpdates_library_transaction___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allObjects];
  v3 = [*(a1 + 40) managedObjectContext];
  v7 = 0;
  v4 = [PLSocialGroupAssetContainment updateAndSaveAssetPersonEdgesForAssetsWithIDs:v2 inContext:v3 error:&v7];
  v5 = v7;

  if (!v4)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error updating asset-person edges: %@", buf, 0xCu);
    }
  }
}

uint64_t __97__PLDelayedSaveActionsProcessor__processAssetsNeedingAssetPersonEdgeUpdates_library_transaction___block_invoke_169(uint64_t a1)
{
  [*(a1 + 32) stillAlive];
  v2 = *(a1 + 32);

  return [v2 completeTransactionScope:@"PLTransactionScopeSocialGroupAssetPersonEdges"];
}

- (void)_processAssetIDsByPersonUUIDNeedingContainmentUpdates:(id)updates assetIDsNeedingContainmentUpdates:(id)containmentUpdates pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates:(BOOL)needingContainmentUpdates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  containmentUpdatesCopy = containmentUpdates;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && ([updatesCopy count] || objc_msgSend(containmentUpdatesCopy, "count")))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke;
    v24[3] = &unk_1E75730F8;
    v25 = libraryCopy;
    selfCopy = self;
    v27 = updatesCopy;
    v28 = containmentUpdatesCopy;
    v29 = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke_2;
    v19[3] = &unk_1E7576310;
    v20 = v29;
    v21 = v25;
    v22 = transactionCopy;
    needingContainmentUpdatesCopy = needingContainmentUpdates;
    v18 = v29;
    [v21 performTransactionAndWait:v24 completionHandler:v19];

    objc_autoreleasePoolPop(v16);
  }
}

void __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _assetIDsByPersonUUIDWithAllPersonsFromAssetsNeedingContainmentUpdates:*(a1 + 48) assetIDsNeedingContainmentUpdates:*(a1 + 56) inContext:v2];
  v4 = [*(a1 + 40) _assetIDsByNodeIDFromAssetPersonEdgeDictionaries:v3 assetIDsNeedingContainmentUpdates:*(a1 + 56) inContext:v2];
  v5 = +[PLGraphNode fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  v7 = [v4 allKeys];
  v8 = [v6 predicateWithFormat:@"self in %@", v7];
  [v5 setPredicate:v8];

  v16 = 0;
  v9 = [v2 executeFetchRequest:v5 error:&v16];
  v10 = v16;
  if (!v9)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetching nodes with IDs: %@", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke_166;
  v13[3] = &unk_1E756EA50;
  v13[4] = *(a1 + 40);
  v14 = v4;
  v15 = *(a1 + 64);
  v12 = v4;
  [v9 enumerateObjectsUsingBlock:v13];
}

uint64_t __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke_2(uint64_t a1)
{
  [PLSocialGroup updateKeyAssetOfSocialGroupsWithUUIDs:*(a1 + 32) inLibrary:*(a1 + 40)];
  result = [*(a1 + 48) stillAlive];
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);

    return [v3 completeTransactionScope:@"PLTransactionScopeSocialGroupAssetContainment"];
  }

  return result;
}

void __197__PLDelayedSaveActionsProcessor__processAssetIDsByPersonUUIDNeedingContainmentUpdates_assetIDsNeedingContainmentUpdates_pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates_library_transaction___block_invoke_166(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 isDeleted];
  v4 = v12;
  if ((v3 & 1) == 0)
  {
    v5 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v12];
    v6 = a1[4];
    v7 = a1[5];
    v8 = [v12 objectID];
    v9 = [v7 objectForKeyedSubscript:v8];
    [v6 _runAssetContainmentForSocialGroup:v5 assetIDsToUpdate:v9];

    if ([v5 keyAssetIsNeeded])
    {
      v10 = a1[6];
      v11 = [v5 uuid];
      [v10 addObject:v11];
    }

    v4 = v12;
  }
}

- (id)_assetIDsByNodeIDFromAssetPersonEdgeDictionaries:(id)dictionaries assetIDsNeedingContainmentUpdates:(id)updates inContext:(id)context
{
  dictionariesCopy = dictionaries;
  updatesCopy = updates;
  contextCopy = context;
  v11 = [(PLDelayedSaveActionsProcessor *)self _personUUIDsByNodeIDFromAssetPersonDictionaries:dictionariesCopy inContext:contextCopy];
  if (updatesCopy)
  {
    [(PLDelayedSaveActionsProcessor *)self _assetIDsByContainingSocialGroupIDsFromAssetIDsNeedingContainmentUpdates:updatesCopy inContext:contextCopy];
  }

  else
  {
    [MEMORY[0x1E695DF20] dictionary];
  }
  v12 = ;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __126__PLDelayedSaveActionsProcessor__assetIDsByNodeIDFromAssetPersonEdgeDictionaries_assetIDsNeedingContainmentUpdates_inContext___block_invoke;
  v22[3] = &unk_1E756EA00;
  v14 = dictionary;
  v23 = v14;
  v24 = dictionariesCopy;
  v15 = dictionariesCopy;
  [v11 enumerateKeysAndObjectsUsingBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __126__PLDelayedSaveActionsProcessor__assetIDsByNodeIDFromAssetPersonEdgeDictionaries_assetIDsNeedingContainmentUpdates_inContext___block_invoke_2;
  v20[3] = &unk_1E756EA28;
  v16 = v14;
  v21 = v16;
  [v12 enumerateKeysAndObjectsUsingBlock:v20];
  v17 = v21;
  v18 = v16;

  return v16;
}

void __126__PLDelayedSaveActionsProcessor__assetIDsByNodeIDFromAssetPersonEdgeDictionaries_assetIDsNeedingContainmentUpdates_inContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [*(a1 + 40) objectForKeyedSubscript:{v13, v16}];
        [v7 unionSet:v15];

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void __126__PLDelayedSaveActionsProcessor__assetIDsByNodeIDFromAssetPersonEdgeDictionaries_assetIDsNeedingContainmentUpdates_inContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
  }

  [v7 unionSet:v8];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_assetIDsByContainingSocialGroupIDsFromAssetIDsNeedingContainmentUpdates:(id)updates inContext:(id)context
{
  v45[2] = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache labelWithCode:1000 inContext:contextCopy];
  v8 = +[PLGraphEdge fetchRequest];
  v9 = MEMORY[0x1E696AB28];
  v31 = v7;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode.primaryLabel", v7];
  v45[0] = v10;
  v34 = updatesCopy;
  updatesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"targetAsset", updatesCopy];
  v45[1] = updatesCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  [v8 setResultType:2];
  v44[0] = @"sourceNode";
  v44[1] = @"targetAsset";
  v44[2] = @"objectID";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  [v8 setPropertiesToFetch:v14];

  [v8 setFetchBatchSize:100];
  v40 = 0;
  v33 = contextCopy;
  v30 = v8;
  v15 = [contextCopy executeFetchRequest:v8 error:&v40];
  v16 = v40;
  if (!v15)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetch social group asset edges: %@", buf, 0xCu);
    }
  }

  v29 = v16;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v15;
  v19 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = [v23 objectForKeyedSubscript:@"targetAsset"];
        v26 = [v23 objectForKeyedSubscript:@"sourceNode"];
        v27 = [dictionary objectForKeyedSubscript:v26];
        if (!v27)
        {
          v27 = [MEMORY[0x1E695DFA8] set];
        }

        [v27 addObject:v25];
        [dictionary setObject:v27 forKeyedSubscript:v26];

        objc_autoreleasePoolPop(v24);
      }

      v20 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v20);
  }

  return dictionary;
}

- (id)_personUUIDsByNodeIDFromAssetPersonDictionaries:(id)dictionaries inContext:(id)context
{
  v46[2] = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache labelWithCode:1000 inContext:contextCopy];
  v8 = +[PLGraphEdge fetchRequest];
  v9 = MEMORY[0x1E696AB28];
  v10 = MEMORY[0x1E696AE18];
  v35 = dictionariesCopy;
  allKeys = [dictionariesCopy allKeys];
  v12 = [v10 predicateWithFormat:@"%K in %@", @"targetPerson.personUUID", allKeys];
  v46[0] = v12;
  v32 = v7;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode.primaryLabel", v7];
  v46[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v15 = [v9 andPredicateWithSubpredicates:v14];
  [v8 setPredicate:v15];

  [v8 setResultType:2];
  v45[0] = @"sourceNode";
  v45[1] = @"targetPerson.personUUID";
  v45[2] = @"objectID";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  [v8 setPropertiesToFetch:v16];

  [v8 setFetchBatchSize:100];
  v41 = 0;
  v34 = contextCopy;
  v17 = [contextCopy executeFetchRequest:v8 error:&v41];
  v18 = v41;
  if (!v17)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetch social group member edges: %@", buf, 0xCu);
    }
  }

  v31 = v18;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v17;
  v21 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v37 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 objectForKeyedSubscript:@"targetPerson.personUUID"];
        v28 = [v25 objectForKeyedSubscript:@"sourceNode"];
        v29 = [dictionary objectForKeyedSubscript:v28];
        if (!v29)
        {
          v29 = [MEMORY[0x1E695DFA8] set];
        }

        [v29 addObject:v27];
        [dictionary setObject:v29 forKeyedSubscript:v28];

        objc_autoreleasePoolPop(v26);
      }

      v22 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v22);
  }

  return dictionary;
}

- (id)_assetIDsByPersonUUIDWithAllPersonsFromAssetsNeedingContainmentUpdates:(id)updates assetIDsNeedingContainmentUpdates:(id)containmentUpdates inContext:(id)context
{
  v49[2] = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  containmentUpdatesCopy = containmentUpdates;
  contextCopy = context;
  if (updatesCopy)
  {
    dictionary = [updatesCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;
  if (!containmentUpdatesCopy)
  {
LABEL_16:
    v32 = v11;
    goto LABEL_20;
  }

  v12 = +[PLGraphEdge fetchRequest];
  v13 = MEMORY[0x1E696AB28];
  containmentUpdatesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"sourceAsset", containmentUpdatesCopy];
  v49[0] = containmentUpdatesCopy;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"targetPerson"];
  v49[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  [v12 setResultType:2];
  v48[0] = @"sourceAsset";
  v48[1] = @"targetPerson.personUUID";
  v48[2] = @"objectID";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  [v12 setPropertiesToFetch:v18];

  [v12 setFetchBatchSize:100];
  v44 = 0;
  v38 = v12;
  v19 = [contextCopy executeFetchRequest:v12 error:&v44];
  v20 = v44;
  v21 = v20;
  if (v19)
  {
    v35 = v20;
    v36 = contextCopy;
    v37 = updatesCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v19;
    v22 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          v28 = [v26 objectForKeyedSubscript:@"targetPerson.personUUID"];
          v29 = [v26 objectForKeyedSubscript:@"sourceAsset"];
          v30 = [v11 objectForKeyedSubscript:v28];
          v31 = [v30 mutableCopy];

          if (!v31)
          {
            v31 = [MEMORY[0x1E695DFA8] set];
          }

          [v31 addObject:v29];
          [v11 setObject:v31 forKeyedSubscript:v28];

          objc_autoreleasePoolPop(v27);
        }

        v23 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v23);
    }

    updatesCopy = v37;
    contextCopy = v36;
    goto LABEL_16;
  }

  v33 = PLBackendGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v47 = v21;
    _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetching asset-person edge dictionaries: %@", buf, 0xCu);
  }

  v32 = 0;
LABEL_20:

  return v32;
}

- (void)_processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs:(id)ds library:(id)library transaction:(id)transaction
{
  dsCopy = ds;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [dsCopy count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __125__PLDelayedSaveActionsProcessor__processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs_library_transaction___block_invoke;
    v13[3] = &unk_1E75761B8;
    v13[4] = self;
    v14 = dsCopy;
    v15 = libraryCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __125__PLDelayedSaveActionsProcessor__processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs_library_transaction___block_invoke_141;
    v11[3] = &unk_1E75781E8;
    v12 = transactionCopy;
    [v15 performTransactionAndWait:v13 completionHandler:v11];
  }
}

void __125__PLDelayedSaveActionsProcessor__processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs_library_transaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = 0;
  v5 = [v2 _socialGroupNodeIDsContainingMember:v3 library:v4 error:&v8];
  v6 = v8;
  if (!v5)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error fetching social group node IDs containing member for containment: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _runContainmentOnAllGroupsNeedingContainmentUpdates:v5 inLibrary:*(a1 + 48)];
}

void *__125__PLDelayedSaveActionsProcessor__processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs_library_transaction___block_invoke_141(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    [result stillAlive];
    v3 = *(a1 + 32);

    return [v3 completeTransactionScope:@"PLTransactionScopeSocialGroupAssetContainment"];
  }

  return result;
}

- (id)_socialGroupNodeIDsContainingMember:(id)member library:(id)library error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  memberCopy = member;
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  pl_graphCache = [managedObjectContext pl_graphCache];

  managedObjectContext2 = [libraryCopy managedObjectContext];
  v12 = [pl_graphCache labelWithCode:1000 inContext:managedObjectContext2];

  if (v12)
  {
    v45 = pl_graphCache;
    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLGraphEdge entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v17 = MEMORY[0x1E696AB28];
    v46 = libraryCopy;
    v44 = v12;
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode.primaryLabel", v12];
    v53[0] = v18;
    memberCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"targetPerson", memberCopy];
    v53[1] = memberCopy;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v21 = [v17 andPredicateWithSubpredicates:v20];
    [v16 setPredicate:v21];

    managedObjectContext3 = [libraryCopy managedObjectContext];
    v51 = 0;
    v23 = [managedObjectContext3 executeFetchRequest:v16 error:&v51];
    v24 = v51;

    if (v24)
    {
      if (error)
      {
        v25 = v24;
        v26 = 0;
        *error = v24;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v42 = v23;
      v43 = memberCopy;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v31 = v23;
      v32 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v48;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v47 + 1) + 8 * i);
            sourceNode = [v36 sourceNode];
            v38 = sourceNode;
            if (sourceNode && ([sourceNode isDeleted] & 1) == 0)
            {
              sourceNode2 = [v36 sourceNode];
              objectID = [sourceNode2 objectID];
              if (objectID)
              {
                [v13 addObject:objectID];
              }
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v33);
      }

      v26 = v13;
      v23 = v42;
      memberCopy = v43;
      libraryCopy = v46;
    }

    v12 = v44;
    pl_graphCache = v45;
  }

  else
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E69BFF48];
    v54 = *MEMORY[0x1E696A278];
    v55[0] = @"error getting the social group label";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v29 = [v27 errorWithDomain:v28 code:46502 userInfo:v13];
    v16 = v29;
    if (error)
    {
      v30 = v29;
      v26 = 0;
      *error = v16;
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (void)_runContainmentOnAllGroupsNeedingContainmentUpdates:(id)updates inLibrary:(id)library
{
  v29 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  libraryCopy = library;
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = updatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        managedObjectContext = [libraryCopy managedObjectContext];
        v21 = 0;
        v15 = [managedObjectContext existingObjectWithID:v12 error:&v21];
        v16 = v21;

        if (v15)
        {
          if ([v15 isDeleted])
          {
            goto LABEL_13;
          }

          v17 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v15];
          [(PLDelayedSaveActionsProcessor *)self _runAssetContainmentForSocialGroup:v17 assetIDsToUpdate:0];
          if ([v17 keyAssetIsNeeded])
          {
            uuid = [v17 uuid];
            [v19 addObject:uuid];
          }
        }

        else
        {
          v17 = PLBackendGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v16;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error getting social group source node from ID: %@", buf, 0xCu);
          }
        }

LABEL_13:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  [PLSocialGroup updateKeyAssetOfSocialGroupsWithUUIDs:v19 inLibrary:libraryCopy];
}

- (void)_runAssetContainmentForSocialGroup:(id)group assetIDsToUpdate:(id)update
{
  v13 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  updateCopy = update;
  if (([groupCopy socialGroupVerifiedType] - 1) > 1u)
  {
    v8 = 0;
  }

  else
  {
    v10 = 0;
    v7 = [groupCopy runAssetContainmentWithError:&v10 assetIDsToUpdate:updateCopy];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error running containment on social group needing update: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_processDelayedLibraryScopeRulesUpdate:(BOOL)update library:(id)library transaction:(id)transaction
{
  updateCopy = update;
  libraryCopy = library;
  if (PLIsAssetsd() && updateCopy)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Delayed save actions processor: Reset sharing suggestions on library scope rules update", v9, 2u);
    }

    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    [photoAnalysisClient requestReprocessSuggestionsOnLibraryScopeRulesChangeWithReply:0];
  }
}

- (void)_processDelayedLibraryScopeParticipantsUpdate:(id)update library:(id)library transaction:(id)transaction
{
  v23 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  libraryCopy = library;
  if (PLIsAssetsd() && [updateCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = updateCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = PLBackendGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Delayed save actions processor: Updating smart-sharing cache with photo analysis %@", buf, 0xCu);
          }

          photoAnalysisClient = [libraryCopy photoAnalysisClient];
          [photoAnalysisClient asyncRequestCameraSmartSharingProcessingForLibraryScopeWithUUID:v13 withOptions:0 reply:0];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)_processDelayedMemoriesAssetUpdate:(id)update library:(id)library transaction:(id)transaction
{
  updateCopy = update;
  libraryCopy = library;
  if (PLIsAssetsd() && [updateCopy count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__PLDelayedSaveActionsProcessor__processDelayedMemoriesAssetUpdate_library_transaction___block_invoke;
    v8[3] = &unk_1E7578848;
    v9 = updateCopy;
    v10 = libraryCopy;
    [v10 performTransaction:v8];
  }
}

void __88__PLDelayedSaveActionsProcessor__processDelayedMemoriesAssetUpdate_library_transaction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [PLMemory memoryWithUUID:*(*(&v8 + 1) + 8 * v6) inPhotoLibrary:*(a1 + 40), v8];
        [v7 calculateSyndicatedContentState];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_deleteUUIDs:(id)ds fromCoreDuetStreams:(id)streams transaction:(id)transaction
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  streamsCopy = streams;
  transactionCopy = transaction;
  v30 = [MEMORY[0x1E69979D0] predicateForEventsWithStreamNames:streamsCopy];
  knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
  v26 = dsCopy;
  allObjects = [dsCopy allObjects];
  v9 = [allObjects count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v34 = v11;
      v35 = v10;
      if (v10 >= 0xA)
      {
        v10 = 10;
      }

      v12 = [allObjects subarrayWithRange:{v11, v10}];
      v32 = v10;
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [MEMORY[0x1E69979D0] predicateForObjectsWithMetadataKey:@"_DKPhotosMetadataKey.identifier" andStringValue:*(*(&v39 + 1) + 8 * i)];
            if (v19)
            {
              [v13 addObject:v19];
            }

            else
            {
              v20 = PLBackendGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to create a predicate for coreduet stream info", buf, 2u);
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      v21 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v13];
      v22 = MEMORY[0x1E696AB28];
      v43[0] = v30;
      v43[1] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      v24 = [v22 andPredicateWithSubpredicates:v23];

      coreDuetCallback = self->_coreDuetCallback;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __78__PLDelayedSaveActionsProcessor__deleteUUIDs_fromCoreDuetStreams_transaction___block_invoke;
      v36[3] = &unk_1E756E9D8;
      v37 = transactionCopy;
      [knowledgeStore deleteAllEventsMatchingPredicate:v24 responseQueue:coreDuetCallback withCompletion:v36];
      v10 = v35 - v32;
      v11 = v34 + v32;

      objc_autoreleasePoolPop(context);
    }

    while (v35 != v32);
  }
}

void __78__PLDelayedSaveActionsProcessor__deleteUUIDs_fromCoreDuetStreams_transaction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to delete info from knowledge store: %@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) stillAlive];
}

- (void)_processDelayedMemoriesForDuetDelete:(id)delete transaction:(id)transaction
{
  v15 = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  transactionCopy = transaction;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:446 description:@"Must be in assetsd"];
  }

  v9 = [deleteCopy count];
  if (v9)
  {
    v10 = v9;
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Going to delete %lu memories from knowledge store", &v13, 0xCu);
    }

    [(PLDelayedSaveActionsProcessor *)self _deleteUUIDs:deleteCopy fromCoreDuetStreams:&unk_1F0FBFD30 transaction:transactionCopy];
  }
}

- (void)_processDelayedAssetsForDuetDelete:(id)delete transaction:(id)transaction
{
  v82 = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  transactionCopy = transaction;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:399 description:@"Must be in assetsd"];
  }

  v9 = [deleteCopy count];
  if (v9)
  {
    v10 = v9;
    v76 = transactionCopy;
    selfCopy = self;
    v78 = deleteCopy;
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v81 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Going to delete %lu assets from knowledge store", buf, 0xCu);
    }

    sharesStream = [MEMORY[0x1E69979B8] sharesStream];
    name = [sharesStream name];
    v79[0] = name;
    shareExtensionStream = [MEMORY[0x1E69979B8] shareExtensionStream];
    name2 = [shareExtensionStream name];
    v79[1] = name2;
    useAsWallpaperStream = [MEMORY[0x1E69979B8] useAsWallpaperStream];
    name3 = [useAsWallpaperStream name];
    v79[2] = name3;
    createWatchFaceStream = [MEMORY[0x1E69979B8] createWatchFaceStream];
    name4 = [createWatchFaceStream name];
    v79[3] = name4;
    airplayStream = [MEMORY[0x1E69979B8] airplayStream];
    name5 = [airplayStream name];
    v79[4] = name5;
    airdropStream = [MEMORY[0x1E69979B8] airdropStream];
    name6 = [airdropStream name];
    v79[5] = name6;
    saveToFilesStream = [MEMORY[0x1E69979B8] saveToFilesStream];
    name7 = [saveToFilesStream name];
    v79[6] = name7;
    assignToContactStream = [MEMORY[0x1E69979B8] assignToContactStream];
    name8 = [assignToContactStream name];
    v79[7] = name8;
    addToAlbumStream = [MEMORY[0x1E69979B8] addToAlbumStream];
    name9 = [addToAlbumStream name];
    v79[8] = name9;
    addToSharedAlbumStream = [MEMORY[0x1E69979B8] addToSharedAlbumStream];
    name10 = [addToSharedAlbumStream name];
    v79[9] = name10;
    hideStream = [MEMORY[0x1E69979B8] hideStream];
    name11 = [hideStream name];
    v79[10] = name11;
    viewedFor1SecondStream = [MEMORY[0x1E69979B8] viewedFor1SecondStream];
    name12 = [viewedFor1SecondStream name];
    v79[11] = name12;
    viewedFor2SecondsStream = [MEMORY[0x1E69979B8] viewedFor2SecondsStream];
    name13 = [viewedFor2SecondsStream name];
    v79[12] = name13;
    viewedFor3SecondsStream = [MEMORY[0x1E69979B8] viewedFor3SecondsStream];
    name14 = [viewedFor3SecondsStream name];
    v79[13] = name14;
    eyeCatchinessStream = [MEMORY[0x1E69979B8] eyeCatchinessStream];
    name15 = [eyeCatchinessStream name];
    v79[14] = name15;
    zoomEngagementStream = [MEMORY[0x1E69979B8] zoomEngagementStream];
    name16 = [zoomEngagementStream name];
    v79[15] = name16;
    otherEngagementStream = [MEMORY[0x1E69979B8] otherEngagementStream];
    name17 = [otherEngagementStream name];
    v79[16] = name17;
    recentFavoritesStream = [MEMORY[0x1E69979B8] recentFavoritesStream];
    name18 = [recentFavoritesStream name];
    v79[17] = name18;
    oldFavoritesStream = [MEMORY[0x1E69979B8] oldFavoritesStream];
    name19 = [oldFavoritesStream name];
    v79[18] = name19;
    otherFavoritesStream = [MEMORY[0x1E69979B8] otherFavoritesStream];
    name20 = [otherFavoritesStream name];
    v79[19] = name20;
    recentDeletionsStream = [MEMORY[0x1E69979B8] recentDeletionsStream];
    name21 = [recentDeletionsStream name];
    v79[20] = name21;
    oldDeletionsStream = [MEMORY[0x1E69979B8] oldDeletionsStream];
    name22 = [oldDeletionsStream name];
    v79[21] = name22;
    allDeletionsStream = [MEMORY[0x1E69979B8] allDeletionsStream];
    name23 = [allDeletionsStream name];
    v79[22] = name23;
    editFilterStream = [MEMORY[0x1E69979B8] editFilterStream];
    name24 = [editFilterStream name];
    v79[23] = name24;
    editLightingStream = [MEMORY[0x1E69979B8] editLightingStream];
    name25 = [editLightingStream name];
    v79[24] = name25;
    editCropStream = [MEMORY[0x1E69979B8] editCropStream];
    name26 = [editCropStream name];
    v79[25] = name26;
    editAllStream = [MEMORY[0x1E69979B8] editAllStream];
    name27 = [editAllStream name];
    v79[26] = name27;
    livePhotosLoopStream = [MEMORY[0x1E69979B8] livePhotosLoopStream];
    name28 = [livePhotosLoopStream name];
    v79[27] = name28;
    livePhotosBounceStream = [MEMORY[0x1E69979B8] livePhotosBounceStream];
    name29 = [livePhotosBounceStream name];
    v79[28] = name29;
    livePhotosLongExposureStream = [MEMORY[0x1E69979B8] livePhotosLongExposureStream];
    name30 = [livePhotosLongExposureStream name];
    v79[29] = name30;
    livePhotosOtherStream = [MEMORY[0x1E69979B8] livePhotosOtherStream];
    name31 = [livePhotosOtherStream name];
    v79[30] = name31;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:31];

    deleteCopy = v78;
    transactionCopy = v76;
    [(PLDelayedSaveActionsProcessor *)selfCopy _deleteUUIDs:v78 fromCoreDuetStreams:v37 transaction:v76];
  }
}

- (void)_processDelayedWallpaperSuggestionReload:(id)reload library:(id)library transaction:(id)transaction
{
  v12 = *MEMORY[0x1E69E9840];
  reloadCopy = reload;
  libraryCopy = library;
  if (PLIsAssetsd() && [reloadCopy count])
  {
    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    [photoAnalysisClient reloadWallpaperSuggestions:reloadCopy reply:0];
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [reloadCopy count];
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Delayed save actions processor: reloading wallpaper suggestions. suggestion count %lu", &v10, 0xCu);
    }
  }
}

- (void)_processDelayedAssetsForWallpaperFavoriteAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction
{
  removalCopy = removal;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [removalCopy count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __107__PLDelayedSaveActionsProcessor__processDelayedAssetsForWallpaperFavoriteAlbumRemoval_library_transaction___block_invoke;
    v11[3] = &unk_1E7578100;
    v12 = libraryCopy;
    v13 = removalCopy;
    selfCopy = self;
    v15 = transactionCopy;
    [v12 performTransaction:v11];
  }
}

void __107__PLDelayedSaveActionsProcessor__processDelayedAssetsForWallpaperFavoriteAlbumRemoval_library_transaction___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d && %K == %d && %K == %d && ANY %K IN %@", @"featuredState", 1, @"type", 6, @"subtype", 682, @"keyAssets", *(a1 + 40)];
  v4 = [PLSuggestion suggestionsMatchingPredicate:v3 sortDescriptors:0 limit:0 inManagedObjectContext:v2];
  if ([v4 count])
  {
    v16 = v3;
    v17 = a1;
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          [v2 deleteObject:v11];
          v12 = PLBackendGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v11 uuid];
            *buf = 138543362;
            v23 = v13;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Delayed save actions processor: Deleting suggestion due to favorite album no long being tied to key asset for suggestion %{public}@", buf, 0xCu);
          }

          v14 = [v11 uuid];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    [*(v17 + 48) _processDelayedWallpaperSuggestionReload:v5 library:*(v17 + 32) transaction:*(v17 + 56)];
    v4 = v15;
    v3 = v16;
  }
}

- (void)_processDelayedAssetsForWallpaperUserAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction
{
  removalCopy = removal;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [removalCopy count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __103__PLDelayedSaveActionsProcessor__processDelayedAssetsForWallpaperUserAlbumRemoval_library_transaction___block_invoke;
    v11[3] = &unk_1E7578100;
    v12 = libraryCopy;
    v13 = removalCopy;
    selfCopy = self;
    v15 = transactionCopy;
    [v12 performTransaction:v11];
  }
}

void __103__PLDelayedSaveActionsProcessor__processDelayedAssetsForWallpaperUserAlbumRemoval_library_transaction___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = a1;
  obj = [*(a1 + 40) allKeys];
  v23 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v23)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v6 = [*(v22 + 40) objectForKeyedSubscript:v5];
        v7 = MEMORY[0x1E696AE18];
        v39 = v5;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        v9 = [v7 predicateWithFormat:@"%K == %d && %K == %d && %K == %d && ANY %K IN %@ && ANY %K IN %@", @"featuredState", 1, @"type", 6, @"subtype", 681, @"suggestionContext", v6, @"keyAssets", v8];

        v10 = [PLSuggestion suggestionsMatchingPredicate:v9 sortDescriptors:0 limit:0 inManagedObjectContext:v2];
        if ([v10 count])
        {
          v25 = v9;
          v26 = v6;
          v27 = i;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v24 = v10;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v29;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * j);
                [v2 deleteObject:v16];
                v17 = PLBackendGetLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  v18 = [v16 uuid];
                  *buf = 138543362;
                  v37 = v18;
                  _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "Delayed save actions processor: Deleting suggestion due to user album no long being tied to key asset for wallpaper suggestion %{public}@", buf, 0xCu);
                }

                v19 = [v16 uuid];
                [v3 addObject:v19];
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v13);
          }

          v6 = v26;
          i = v27;
          v10 = v24;
          v9 = v25;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  if ([v3 count])
  {
    [*(v22 + 48) _processDelayedWallpaperSuggestionReload:v3 library:*(v22 + 32) transaction:*(v22 + 56)];
  }
}

- (void)_processDelayedAssetsForWidgetFavoriteAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction
{
  removalCopy = removal;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [removalCopy count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__PLDelayedSaveActionsProcessor__processDelayedAssetsForWidgetFavoriteAlbumRemoval_library_transaction___block_invoke;
    v11[3] = &unk_1E7578100;
    v12 = libraryCopy;
    v13 = removalCopy;
    selfCopy = self;
    v15 = transactionCopy;
    [v12 performTransaction:v11];
  }
}

void __104__PLDelayedSaveActionsProcessor__processDelayedAssetsForWidgetFavoriteAlbumRemoval_library_transaction___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d && %K == %d && %K == %d && ANY %K IN %@", @"featuredState", 1, @"type", 7, @"subtype", 702, @"keyAssets", *(a1 + 40)];
  v4 = [PLSuggestion suggestionsMatchingPredicate:v3 sortDescriptors:0 limit:0 inManagedObjectContext:v2];
  if ([v4 count])
  {
    v13 = v4;
    v14 = v3;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          [v2 deleteObject:v10];
          v11 = PLBackendGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 uuid];
            *buf = 138543362;
            v20 = v12;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Delayed save actions processor: Deleting suggestion due to user album tied to suggestion being deleted %{public}@", buf, 0xCu);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    [*(a1 + 48) _processDelayedAlbumWidgetTimelineReload:1 library:*(a1 + 32) transaction:*(a1 + 56)];
    v4 = v13;
    v3 = v14;
  }
}

- (void)_processDelayedAssetsForWidgetUserAlbumRemoval:(id)removal library:(id)library transaction:(id)transaction
{
  removalCopy = removal;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [removalCopy count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__PLDelayedSaveActionsProcessor__processDelayedAssetsForWidgetUserAlbumRemoval_library_transaction___block_invoke;
    v11[3] = &unk_1E7578100;
    v12 = removalCopy;
    v13 = libraryCopy;
    selfCopy = self;
    v15 = transactionCopy;
    [v13 performTransaction:v11];
  }
}

void __100__PLDelayedSaveActionsProcessor__processDelayedAssetsForWidgetUserAlbumRemoval_library_transaction___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v23 = [v2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v3 = 0;
    v22 = *v32;
    obj = v2;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v7 = MEMORY[0x1E696AE18];
        v38 = v5;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        v9 = [v7 predicateWithFormat:@"%K == %d && %K == %d && %K == %d && ANY %K IN %@ && ANY %K IN %@", @"featuredState", 1, @"type", 7, @"subtype", 701, @"suggestionContext", v6, @"keyAssets", v8];

        v10 = [*(a1 + 40) managedObjectContext];
        v11 = [PLSuggestion suggestionsMatchingPredicate:v9 sortDescriptors:0 limit:0 inManagedObjectContext:v10];

        if ([v11 count])
        {
          v25 = v9;
          v26 = v6;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v24 = v11;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                v18 = [*(a1 + 40) managedObjectContext];
                [v18 deleteObject:v17];

                v19 = PLBackendGetLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  v20 = [v17 uuid];
                  *buf = 138543362;
                  v36 = v20;
                  _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Delayed save actions processor: Deleting suggestion due to user album tied to widget suggestion being deleted %{public}@", buf, 0xCu);
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
            }

            while (v14);
          }

          v3 = 1;
          v9 = v25;
          v6 = v26;
          v11 = v24;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);

    if (v3)
    {
      [*(a1 + 48) _processDelayedAlbumWidgetTimelineReload:1 library:*(a1 + 40) transaction:*(a1 + 56)];
    }
  }

  else
  {
  }
}

- (void)_processDelayedForYouWidgetTimelineReload:(BOOL)reload library:(id)library transaction:(id)transaction
{
  reloadCopy = reload;
  libraryCopy = library;
  if (PLIsAssetsd() && reloadCopy)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Delayed save actions processor: Invalidating ForYou widget timeline with photo analysis", v9, 2u);
    }

    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    [photoAnalysisClient reloadForYouWidgetTimelineWithReply:0];
  }
}

- (void)_processDelayedAlbumWidgetTimelineReload:(BOOL)reload library:(id)library transaction:(id)transaction
{
  reloadCopy = reload;
  libraryCopy = library;
  if (PLIsAssetsd() && reloadCopy)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Delayed save actions processor: Invalidating Album widget timeline with photo analysis", v9, 2u);
    }

    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    [photoAnalysisClient reloadAlbumWidgetTimelineWithReply:0];
  }
}

- (void)_processDelayedFeaturedContentUpdateAndWidgetTimelineReload:(BOOL)reload withPersonUUIDs:(id)ds shouldReloadWidgetTimeline:(BOOL)timeline library:(id)library transaction:(id)transaction
{
  timelineCopy = timeline;
  reloadCopy = reload;
  dsCopy = ds;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && reloadCopy)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Delayed save actions processor: updating featured content with photo analysis", buf, 2u);
    }

    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __156__PLDelayedSaveActionsProcessor__processDelayedFeaturedContentUpdateAndWidgetTimelineReload_withPersonUUIDs_shouldReloadWidgetTimeline_library_transaction___block_invoke;
    v17[3] = &unk_1E756E9B0;
    v20 = timelineCopy;
    v17[4] = self;
    v18 = libraryCopy;
    v19 = transactionCopy;
    [photoAnalysisClient requestUpdateFeaturedContentBasedOnUserFeedbackWithPersonUUIDs:dsCopy reply:v17];
  }

  else
  {
    [(PLDelayedSaveActionsProcessor *)self _processDelayedForYouWidgetTimelineReload:timelineCopy library:libraryCopy transaction:transactionCopy];
  }
}

void __156__PLDelayedSaveActionsProcessor__processDelayedFeaturedContentUpdateAndWidgetTimelineReload_withPersonUUIDs_shouldReloadWidgetTimeline_library_transaction___block_invoke(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Delayed save actions processor: error updating featured content with photo analysis: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) _processDelayedForYouWidgetTimelineReload:(*(a1 + 56) | a2) & 1 library:*(a1 + 40) transaction:*(a1 + 48)];
  [*(a1 + 48) stillAlive];
}

- (void)_processDelayedImportSessionCountsAndDateRangeUpdates:(id)updates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  libraryCopy = library;
  if (PLIsAssetsd() && [updatesCopy count])
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    if (!libraryServicesManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
    }

    [libraryServicesManager refreshImportSessionCountForImportSessionIDs:updatesCopy];
  }
}

- (void)_processDelayedAlbumTrashUpdates:(id)updates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [updatesCopy count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__PLDelayedSaveActionsProcessor__processDelayedAlbumTrashUpdates_library_transaction___block_invoke;
    v12[3] = &unk_1E7578848;
    v13 = updatesCopy;
    v14 = libraryCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__PLDelayedSaveActionsProcessor__processDelayedAlbumTrashUpdates_library_transaction___block_invoke_2;
    v10[3] = &unk_1E75781E8;
    v11 = transactionCopy;
    [v14 performTransactionAndWait:v12 completionHandler:v10];
  }
}

uint64_t __86__PLDelayedSaveActionsProcessor__processDelayedAlbumTrashUpdates_library_transaction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransactionScope:@"PLTransactionScopeAlbumTrashCycle"];
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_processDelayedAlbumKeyAssetsUpdates:(id)updates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  libraryCopy = library;
  transactionCopy = transaction;
  if (PLIsAssetsd() && [updatesCopy count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90__PLDelayedSaveActionsProcessor__processDelayedAlbumKeyAssetsUpdates_library_transaction___block_invoke;
    v12[3] = &unk_1E7578848;
    v13 = libraryCopy;
    v14 = updatesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__PLDelayedSaveActionsProcessor__processDelayedAlbumKeyAssetsUpdates_library_transaction___block_invoke_2;
    v10[3] = &unk_1E75781E8;
    v11 = transactionCopy;
    [v13 performTransaction:v12 completionHandler:v10];
  }
}

uint64_t __90__PLDelayedSaveActionsProcessor__processDelayedAlbumKeyAssetsUpdates_library_transaction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransactionScope:@"PLTransactionScopeAlbumCounts"];
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_processDelayedAlbumCountsAndDateRangeUpdates:(id)updates library:(id)library transaction:(id)transaction
{
  updatesCopy = updates;
  libraryCopy = library;
  if (PLIsAssetsd() && [updatesCopy count])
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    if (!libraryServicesManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
    }

    [libraryServicesManager refreshAlbumCountForAlbumIDs:updatesCopy];
  }
}

- (void)_processDelayedMomentChangesWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:163 description:@"Must be in assetsd"];
  }

  momentGenerationDataManager = [(PLLibraryServicesManager *)self->_libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PLDelayedSaveActionsProcessor__processDelayedMomentChangesWithTransaction___block_invoke;
  v10[3] = &unk_1E75781E8;
  v11 = transactionCopy;
  v8 = transactionCopy;
  [generator generateWithIncrementalDataCompletionHandler:v10];
}

uint64_t __77__PLDelayedSaveActionsProcessor__processDelayedMomentChangesWithTransaction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeTransactionScope:@"PLTransactionScopeMomentGeneration"];
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_processDelayedCloudFeedAlbumUpdates:(id)updates collectionShareUpdates:(id)shareUpdates collectionShareDeletes:(id)deletes assetInserts:(id)inserts assetUpdates:(id)assetUpdates commentInserts:(id)commentInserts invitationRecordUpdates:(id)recordUpdates shareParticipantUpdates:(id)self0 shareParticipantDeletes:(id)self1 deletionEntries:(id)self2 transaction:(id)self3
{
  updatesCopy = updates;
  shareUpdatesCopy = shareUpdates;
  deletesCopy = deletes;
  insertsCopy = inserts;
  assetUpdatesCopy = assetUpdates;
  commentInsertsCopy = commentInserts;
  recordUpdatesCopy = recordUpdates;
  participantUpdatesCopy = participantUpdates;
  participantDeletesCopy = participantDeletes;
  entriesCopy = entries;
  transactionCopy = transaction;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:144 description:@"Must be in assetsd"];
  }

  if ([updatesCopy count] || (v25 = shareUpdatesCopy, objc_msgSend(shareUpdatesCopy, "count")) || objc_msgSend(deletesCopy, "count") || objc_msgSend(insertsCopy, "count") || objc_msgSend(assetUpdatesCopy, "count") || objc_msgSend(commentInsertsCopy, "count") || objc_msgSend(recordUpdatesCopy, "count") || objc_msgSend(participantUpdatesCopy, "count") || objc_msgSend(participantDeletesCopy, "count") || objc_msgSend(entriesCopy, "count"))
  {
    databaseContext = [(PLLibraryServicesManager *)self->_libraryServicesManager databaseContext];
    v27 = [databaseContext newShortLivedLibraryWithName:"delayedSaveActions_cloudFeed_processAlbumUpdates"];

    v28 = [[PLCloudFeedEntriesManager alloc] initWithPhotoLibrary:v27];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __257__PLDelayedSaveActionsProcessor__processDelayedCloudFeedAlbumUpdates_collectionShareUpdates_collectionShareDeletes_assetInserts_assetUpdates_commentInserts_invitationRecordUpdates_shareParticipantUpdates_shareParticipantDeletes_deletionEntries_transaction___block_invoke;
    v36[3] = &unk_1E75781E8;
    v37 = transactionCopy;
    v25 = shareUpdatesCopy;
    [(PLCloudFeedEntriesManager *)v28 processAlbumUpdates:updatesCopy collectionShareUpdates:shareUpdatesCopy collectionShareDeletes:deletesCopy assetInserts:insertsCopy assetUpdates:assetUpdatesCopy commentInserts:commentInsertsCopy invitationRecordUpdates:recordUpdatesCopy shareParticipantUpdates:participantUpdatesCopy shareParticipantDeletes:participantDeletesCopy deletionEntries:entriesCopy completionHandler:v36];
  }
}

uint64_t __257__PLDelayedSaveActionsProcessor__processDelayedCloudFeedAlbumUpdates_collectionShareUpdates_collectionShareDeletes_assetInserts_assetUpdates_commentInserts_invitationRecordUpdates_shareParticipantUpdates_shareParticipantDeletes_deletionEntries_transaction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeTransactionScope:@"PLTransactionScopeCloudFeed"];
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)processDelayedSaveActionsDetail:(id)detail withPhotoLibrary:(id)library transaction:(id)transaction
{
  detailCopy = detail;
  transactionCopy = transaction;
  libraryCopy = library;
  if (PLPlatformCloudFeedSupported())
  {
    cloudFeedAlbumUpdates = [detailCopy cloudFeedAlbumUpdates];
    cloudFeedCollectionShareUpdates = [detailCopy cloudFeedCollectionShareUpdates];
    cloudFeedCollectionShareDeletes = [detailCopy cloudFeedCollectionShareDeletes];
    cloudFeedAssetInserts = [detailCopy cloudFeedAssetInserts];
    cloudFeedAssetUpdates = [detailCopy cloudFeedAssetUpdates];
    cloudFeedCommentInserts = [detailCopy cloudFeedCommentInserts];
    cloudFeedInvitationRecordUpdates = [detailCopy cloudFeedInvitationRecordUpdates];
    cloudFeedShareParticipantUpdates = [detailCopy cloudFeedShareParticipantUpdates];
    cloudFeedShareParticipantDeletes = [detailCopy cloudFeedShareParticipantDeletes];
    cloudFeedDeletionEntries = [detailCopy cloudFeedDeletionEntries];
    [(PLDelayedSaveActionsProcessor *)self _processDelayedCloudFeedAlbumUpdates:cloudFeedAlbumUpdates collectionShareUpdates:cloudFeedCollectionShareUpdates collectionShareDeletes:cloudFeedCollectionShareDeletes assetInserts:cloudFeedAssetInserts assetUpdates:cloudFeedAssetUpdates commentInserts:cloudFeedCommentInserts invitationRecordUpdates:cloudFeedInvitationRecordUpdates shareParticipantUpdates:cloudFeedShareParticipantUpdates shareParticipantDeletes:cloudFeedShareParticipantDeletes deletionEntries:cloudFeedDeletionEntries transaction:transactionCopy];
  }

  if ([detailCopy shouldHandleMoments])
  {
    [(PLDelayedSaveActionsProcessor *)self _processDelayedMomentChangesWithTransaction:transactionCopy];
  }

  albumCountsAndDateRangeUpdates = [detailCopy albumCountsAndDateRangeUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAlbumCountsAndDateRangeUpdates:albumCountsAndDateRangeUpdates library:libraryCopy transaction:transactionCopy];

  albumKeyAssetsUpdates = [detailCopy albumKeyAssetsUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAlbumKeyAssetsUpdates:albumKeyAssetsUpdates library:libraryCopy transaction:transactionCopy];

  albumTrashCycleUpdates = [detailCopy albumTrashCycleUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAlbumTrashUpdates:albumTrashCycleUpdates library:libraryCopy transaction:transactionCopy];

  importSessionCountsAndDateRangeUpdates = [detailCopy importSessionCountsAndDateRangeUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedImportSessionCountsAndDateRangeUpdates:importSessionCountsAndDateRangeUpdates library:libraryCopy transaction:transactionCopy];

  widgetTimelineReloadTypesNeeded = [detailCopy widgetTimelineReloadTypesNeeded];
  v19 = [widgetTimelineReloadTypesNeeded containsObject:&unk_1F0FBD1F8];

  shouldUpdateFeaturedContent = [detailCopy shouldUpdateFeaturedContent];
  personsToUpdateForFeaturedContent = [detailCopy personsToUpdateForFeaturedContent];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedFeaturedContentUpdateAndWidgetTimelineReload:shouldUpdateFeaturedContent withPersonUUIDs:personsToUpdateForFeaturedContent shouldReloadWidgetTimeline:v19 library:libraryCopy transaction:transactionCopy];

  assetsForWidgetUserAlbumRemoval = [detailCopy assetsForWidgetUserAlbumRemoval];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAssetsForWidgetUserAlbumRemoval:assetsForWidgetUserAlbumRemoval library:libraryCopy transaction:transactionCopy];

  assetsForWidgetFavoriteAlbumRemoval = [detailCopy assetsForWidgetFavoriteAlbumRemoval];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAssetsForWidgetFavoriteAlbumRemoval:assetsForWidgetFavoriteAlbumRemoval library:libraryCopy transaction:transactionCopy];

  widgetTimelineReloadTypesNeeded2 = [detailCopy widgetTimelineReloadTypesNeeded];
  v25 = [widgetTimelineReloadTypesNeeded2 containsObject:&unk_1F0FBD210];

  [(PLDelayedSaveActionsProcessor *)self _processDelayedAlbumWidgetTimelineReload:v25 library:libraryCopy transaction:transactionCopy];
  assetsForWallpaperUserAlbumRemoval = [detailCopy assetsForWallpaperUserAlbumRemoval];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAssetsForWallpaperUserAlbumRemoval:assetsForWallpaperUserAlbumRemoval library:libraryCopy transaction:transactionCopy];

  assetsForWallpaperFavoriteAlbumRemoval = [detailCopy assetsForWallpaperFavoriteAlbumRemoval];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAssetsForWallpaperFavoriteAlbumRemoval:assetsForWallpaperFavoriteAlbumRemoval library:libraryCopy transaction:transactionCopy];

  wallpaperSuggestionReloadUUIDs = [detailCopy wallpaperSuggestionReloadUUIDs];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedWallpaperSuggestionReload:wallpaperSuggestionReloadUUIDs library:libraryCopy transaction:transactionCopy];

  assetsForDuetDelete = [detailCopy assetsForDuetDelete];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedAssetsForDuetDelete:assetsForDuetDelete transaction:transactionCopy];

  memoriesForDuetDelete = [detailCopy memoriesForDuetDelete];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedMemoriesForDuetDelete:memoriesForDuetDelete transaction:transactionCopy];

  memoriesForAssetUpdate = [detailCopy memoriesForAssetUpdate];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedMemoriesAssetUpdate:memoriesForAssetUpdate library:libraryCopy transaction:transactionCopy];

  libraryScopeParticipantsForUpdate = [detailCopy libraryScopeParticipantsForUpdate];
  [(PLDelayedSaveActionsProcessor *)self _processDelayedLibraryScopeParticipantsUpdate:libraryScopeParticipantsForUpdate library:libraryCopy transaction:transactionCopy];

  -[PLDelayedSaveActionsProcessor _processDelayedLibraryScopeRulesUpdate:library:transaction:](self, "_processDelayedLibraryScopeRulesUpdate:library:transaction:", [detailCopy libraryScopeRulesUpdated], libraryCopy, transactionCopy);
  socialGroupNodeIDsNeedingDeduplication = [detailCopy socialGroupNodeIDsNeedingDeduplication];
  v34 = [socialGroupNodeIDsNeedingDeduplication count] != 0;

  memberIDsOfSocialGroupsNeedingDeduplication = [detailCopy memberIDsOfSocialGroupsNeedingDeduplication];
  [(PLDelayedSaveActionsProcessor *)self _processMembersOfSocialGroupsNeedingDeduplication:memberIDsOfSocialGroupsNeedingDeduplication pendingSocialGroupIDsNeedingDeduplication:v34 library:libraryCopy transaction:transactionCopy];

  socialGroupNodeIDsNeedingDeduplication2 = [detailCopy socialGroupNodeIDsNeedingDeduplication];
  [(PLDelayedSaveActionsProcessor *)self _processSocialGroupsNeedingDeduplication:socialGroupNodeIDsNeedingDeduplication2 library:libraryCopy transaction:transactionCopy];

  assetIDsNeedingAssetPersonEdgeUpdates = [detailCopy assetIDsNeedingAssetPersonEdgeUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processAssetsNeedingAssetPersonEdgeUpdates:assetIDsNeedingAssetPersonEdgeUpdates library:libraryCopy transaction:transactionCopy];

  memberIDsOfSocialGroupsNeedingContainmentUpdates = [detailCopy memberIDsOfSocialGroupsNeedingContainmentUpdates];
  v39 = [memberIDsOfSocialGroupsNeedingContainmentUpdates count] != 0;

  assetIDsByPersonUUIDNeedingContainmentUpdates = [detailCopy assetIDsByPersonUUIDNeedingContainmentUpdates];
  assetIDsNeedingContainmentUpdates = [detailCopy assetIDsNeedingContainmentUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processAssetIDsByPersonUUIDNeedingContainmentUpdates:assetIDsByPersonUUIDNeedingContainmentUpdates assetIDsNeedingContainmentUpdates:assetIDsNeedingContainmentUpdates pendingMemberIDsOfSocialGroupsNeedingContainmentUpdates:v39 library:libraryCopy transaction:transactionCopy];

  memberIDsOfSocialGroupsNeedingContainmentUpdates2 = [detailCopy memberIDsOfSocialGroupsNeedingContainmentUpdates];
  [(PLDelayedSaveActionsProcessor *)self _processAssetContainmentUpdatesForSocialGroupsContainingMemberPersonIDs:memberIDsOfSocialGroupsNeedingContainmentUpdates2 library:libraryCopy transaction:transactionCopy];

  -[PLDelayedSaveActionsProcessor _processDelayedBackgroundUploadEventUpdate:library:transaction:](self, "_processDelayedBackgroundUploadEventUpdate:library:transaction:", [detailCopy backgroundUploadEventUpdated], libraryCopy, transactionCopy);
  [transactionCopy completeTransactionScope:@"PLTransactionScopeFileIngestion"];
}

- (void)processDelayedMomentGeneratorSaveActionsFromDetail:(id)detail
{
  libraryServicesManager = self->_libraryServicesManager;
  detailCopy = detail;
  momentGenerationDataManager = [(PLLibraryServicesManager *)libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  momentInsertsAndUpdates = [detailCopy momentInsertsAndUpdates];
  momentDeletes = [detailCopy momentDeletes];
  updatedAssetIDsForHighlights = [detailCopy updatedAssetIDsForHighlights];
  updatedMomentIDsForHighlights = [detailCopy updatedMomentIDsForHighlights];
  sharedAssetContainerIncrementalChangesByAssetID = [detailCopy sharedAssetContainerIncrementalChangesByAssetID];

  [generator saveChangesForAssetInsertsAndUpdates:momentInsertsAndUpdates assetDeletes:momentDeletes assetUpdatesForHighlights:updatedAssetIDsForHighlights momentUpdatesForHighlights:updatedMomentIDsForHighlights sharedAssetContainerIncrementalChangesByAssetID:sharedAssetContainerIncrementalChangesByAssetID];
}

- (void)processDelayedDeletionsFromChangeHubEvent:(id)event library:(id)library transaction:(id)transaction
{
  eventCopy = event;
  transactionCopy = transaction;
  libraryCopy = library;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedSaveActionsProcessor.m" lineNumber:69 description:@"Must be in assetsd"];
  }

  v11 = [PLDelayedFiledSystemDeletions deletionsFromChangeHubEvent:eventCopy];
  [v11 deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary:libraryCopy];

  [transactionCopy stillAlive];
}

- (PLDelayedSaveActionsProcessor)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PLDelayedSaveActionsProcessor;
  v6 = [(PLDelayedSaveActionsProcessor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryServicesManager, manager);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("com.apple.assetsd.coreduetcallback", v9);
    coreDuetCallback = v7->_coreDuetCallback;
    v7->_coreDuetCallback = v10;

    v12 = v7;
  }

  return v7;
}

@end