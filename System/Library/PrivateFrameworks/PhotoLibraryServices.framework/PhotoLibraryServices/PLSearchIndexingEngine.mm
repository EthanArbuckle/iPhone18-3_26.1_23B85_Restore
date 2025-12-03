@interface PLSearchIndexingEngine
- (BOOL)hasRebuildWorkToDoForLibrary:(id)library;
- (PLSearchIndexingEngine)initWithLibraryServicesManager:(id)manager;
- (PLSearchIndexingEngine)initWithLibraryServicesProvider:(id)provider;
- (id)_clientStateFailureResultAndLogWithErrorCode:(unint64_t)code debugDescription:(id)description underlyingError:(id)error;
- (id)_spotlightIndexName;
- (id)indexAssetsIfNeededWithObjectIDs:(id)ds library:(id)library completion:(id)completion;
- (id)indexAssetsWithUUIDs:(id)ds partialUpdateMask:(unint64_t)mask completion:(id)completion;
- (id)processBatchOfJobsWithType:(signed __int16)type flags:(int64_t)flags library:(id)library completion:(id)completion;
- (id)sceneTaxonomyDigestsForSearchIndexingRebuildEngine:(id)engine;
- (unint64_t)_errorCodeForSpotlightClientStateError:(id)error debugDescription:(id *)description;
- (void)_dropSearchIndexWithSourceName:(id)name reasons:(unint64_t)reasons completion:(id)completion;
- (void)_inLibraryPerform_donateAssets:(id)assets library:(id)library progress:(id)progress completion:(id)completion;
- (void)_inLibraryPerform_donateManagedObjects:(id)objects partialUpdateMasks:(id)masks entity:(unint64_t)entity deleteIdentifiers:(id)identifiers identifiersRequiringAdditionalWorkByEntity:(id)byEntity library:(id)library progress:(id)progress completion:(id)self0;
- (void)_inq_acquireSpotlightSandboxExtensionIfNeeded;
- (void)_inq_close;
- (void)_inq_donatePSIObjectsByType:(id)type spotlightItemsByBundleID:(id)d deleteIdentifiers:(id)identifiers spotlightClientState:(id)state completion:(id)completion;
- (void)_inq_dropSearchIndexWithSourceName:(id)name reasons:(unint64_t)reasons completion:(id)completion;
- (void)_inq_handleClientStateValidationError:(id)error library:(id)library;
- (void)_inq_open;
- (void)_inq_releaseSpotlightSandboxExtension;
- (void)_inq_validateSpotlightClientStateAgainstExpectedClientState:(id)state completion:(id)completion;
- (void)_safePerformBlock:(id)block;
- (void)_safePerformBlockWithPSIDatabase:(id)database sync:(BOOL)sync;
- (void)close;
- (void)disableUISearch;
- (void)fetchRemainingWorkWithLibrary:(id)library completion:(id)completion;
- (void)openWithCompletion:(id)completion;
- (void)pauseProcessingIncrementalUpdates;
- (void)pauseSearchIndexRebuildWithSourceName:(id)name;
- (void)removeUnusedGroupsFromPSI;
- (void)reportFeatureProcessingSnapshot:(id)snapshot library:(id)library completion:(id)completion;
- (void)resetSearchIndexWithReason:(int64_t)reason library:(id)library dropCompletion:(id)completion completion:(id)a6;
- (void)resumeProcessingIncrementalUpdatesInLibrary:(id)library completion:(id)completion;
- (void)resumeSearchIndexRebuildIfNeededForLibrary:(id)library calledBy:(id)by completion:(id)completion;
@end

@implementation PLSearchIndexingEngine

- (void)removeUnusedGroupsFromPSI
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLSearchIndexingEngine_removeUnusedGroupsFromPSI__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __51__PLSearchIndexingEngine_removeUnusedGroupsFromPSI__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 32);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __51__PLSearchIndexingEngine_removeUnusedGroupsFromPSI__block_invoke_2;
  v9 = &unk_1E7573368;
  v10 = v2;
  if (PLBoolResultWithUnfairLock())
  {
    v3 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Skipped removeUnusedGroupsFromPSI due to index drop in progress", v5, 2u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 48) removeUnusedGroups];
  }

  return [*(*(a1 + 32) + 16) removeUser];
}

- (void)_safePerformBlockWithPSIDatabase:(id)database sync:(BOOL)sync
{
  syncCopy = sync;
  databaseCopy = database;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __64__PLSearchIndexingEngine__safePerformBlockWithPSIDatabase_sync___block_invoke;
  v14 = &unk_1E7577C08;
  selfCopy = self;
  v7 = databaseCopy;
  v16 = v7;
  v8 = _Block_copy(&v11);
  v9 = [PLConcurrencyLimiter sharedLimiter:v11];
  v10 = v9;
  if (syncCopy)
  {
    [v9 sync:v8 identifyingBlock:0 library:0];
  }

  else
  {
    [v9 async:v8 identifyingBlock:0 library:0];
  }
}

void __64__PLSearchIndexingEngine__safePerformBlockWithPSIDatabase_sync___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PLSearchIndexingEngine__safePerformBlockWithPSIDatabase_sync___block_invoke_2;
  v4[3] = &unk_1E7577C08;
  v4[4] = v2;
  v5 = v1;
  dispatch_sync(v3, v4);
}

uint64_t __64__PLSearchIndexingEngine__safePerformBlockWithPSIDatabase_sync___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __64__PLSearchIndexingEngine__safePerformBlockWithPSIDatabase_sync___block_invoke_3;
  v12 = &unk_1E7573368;
  v13 = v2;
  if (PLBoolResultWithUnfairLock())
  {
    v3 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v4 = "Skipping perform block with PSI due to index drop in progress";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v5, v6, v4, &v8, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!*(*(a1 + 32) + 48))
  {
    v3 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      v4 = "Skipping perform block with PSI due to nil PSI database";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

LABEL_9:

    return [*(*(a1 + 32) + 16) removeUser];
  }

  (*(*(a1 + 40) + 16))();
  return [*(*(a1 + 32) + 16) removeUser];
}

- (id)sceneTaxonomyDigestsForSearchIndexingRebuildEngine:(id)engine
{
  sceneTaxonomyProvider = [(PLSearchIndexConfiguration *)self->_configuration sceneTaxonomyProvider];
  digests = [sceneTaxonomyProvider digests];

  return digests;
}

- (id)_spotlightIndexName
{
  libraryIdentifier = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryIdentifier];

  return [PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:libraryIdentifier];
}

- (void)_inLibraryPerform_donateManagedObjects:(id)objects partialUpdateMasks:(id)masks entity:(unint64_t)entity deleteIdentifiers:(id)identifiers identifiersRequiringAdditionalWorkByEntity:(id)byEntity library:(id)library progress:(id)progress completion:(id)self0
{
  v117 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  masksCopy = masks;
  identifiersCopy = identifiers;
  byEntityCopy = byEntity;
  libraryCopy = library;
  progressCopy = progress;
  completionCopy = completion;
  v75 = objectsCopy;
  v74 = [objectsCopy count];
  v65 = identifiersCopy;
  v73 = [identifiersCopy count];
  v19 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 134218498;
    *&buf[4] = v74;
    *&buf[12] = 2048;
    *&buf[14] = v73;
    *&buf[22] = 2112;
    v113 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Donating %tu managed objects, deleting %tu identifiers for library: %@", buf, 0x20u);
  }

  v21 = PLPhotosSearchGetLog();
  spid = os_signpost_id_generate(v21);

  v22 = v21;
  v23 = v22;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchIndexItems", "", buf, 2u);
  }

  v66 = v23;

  v24 = PLPhotosSearchGetLog();
  v67 = os_signpost_id_generate(v24);

  v25 = v24;
  v26 = v25;
  if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v67, "PLSearchIndexIndexItemsTranslation", "", buf, 2u);
  }

  v63 = v26;

  v27 = v73 + v74;
  if ([(PLSearchIndexingEngine *)self supportsPSI])
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    allKeys = [byEntityCopy allKeys];
    v29 = [allKeys countByEnumeratingWithState:&v104 objects:v116 count:16];
    if (v29)
    {
      v30 = *v105;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v105 != v30)
          {
            objc_enumerationMutation(allKeys);
          }

          v32 = [byEntityCopy objectForKeyedSubscript:*(*(&v104 + 1) + 8 * i)];
          v33 = [v32 count];

          v27 += v33;
        }

        v29 = [allKeys countByEnumeratingWithState:&v104 objects:v116 count:16];
      }

      while (v29);
    }
  }

  [progressCopy setTotalUnitCount:v27];
  v64 = [MEMORY[0x1E695DF00] now];
  configuration = [(PLSearchIndexingEngine *)self configuration];
  managedObjectContext = [libraryCopy managedObjectContext];
  [configuration inLibraryPerform_refreshSharedLibraryEnabledWithManagedObjectContext:managedObjectContext];

  isCancelled = [progressCopy isCancelled];
  if (entity == 1)
  {
    v37 = isCancelled;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = objc_alloc_init(PLSearchIndexingEmbeddingsFetcher);
    indexingContext = [(PLSearchIndexConfiguration *)self->_configuration indexingContext];
    [(PLSearchIndexingEmbeddingsFetcher *)v38 prefetchEmbeddingsForAssets:v75 indexingContext:indexingContext];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v113 = __Block_byref_object_copy__54702;
  v114 = __Block_byref_object_dispose__54703;
  v115 = 0;
  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke;
  v95[3] = &unk_1E756E128;
  v42 = progressCopy;
  v96 = v42;
  v60 = masksCopy;
  v97 = v60;
  selfCopy = self;
  v72 = libraryCopy;
  v99 = v72;
  v43 = v40;
  v100 = v43;
  v62 = v38;
  v101 = v62;
  v44 = v41;
  v102 = v44;
  v103 = buf;
  [v75 enumerateObjectsUsingBlock:v95];
  if (([v42 isCancelled] & 1) == 0 && -[PLSearchIndexingEngine supportsPSI](self, "supportsPSI"))
  {
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_339;
    v93[3] = &unk_1E756E150;
    v94 = v43;
    [byEntityCopy enumerateKeysAndObjectsUsingBlock:v93];
  }

  v45 = v63;
  v46 = v45;
  if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *v108 = 134218240;
    v109 = v74;
    v110 = 2048;
    v111 = v73;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v46, OS_SIGNPOST_INTERVAL_END, v67, "PLSearchIndexIndexItemsTranslation", "Objects: %tu, DeleteIdentifiers: %tu", v108, 0x16u);
  }

  v47 = [MEMORY[0x1E695DF00] now];
  if (([v42 isCancelled] & 1) != 0 || (v48 = *(*&buf[8] + 40)) == 0)
  {
    v49 = 0;
    result = 0;
  }

  else
  {
    v49 = [PLGlobalValues searchIndexSpotlightClientStateDictionaryWithIdentifier:v48 timestamp:v47];
    v50 = [PLGlobalValues searchIndexSpotlightClientStateDataWithDictionary:v49];
    if ([v50 isSuccess])
    {
      result = [v50 result];
    }

    else
    {
      v52 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        error = [v50 error];
        *v108 = 138412290;
        v109 = error;
        v68 = error;
        _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Error serializing Spotlight client state: %@", v108, 0xCu);
      }

      v49 = 0;
      result = 0;
    }
  }

  if ([v42 isCancelled])
  {
    v54 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = self->_libraryServicesProvider;
      *v108 = 138412290;
      v109 = v55;
      _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "Search indexing canceled while in _inLibraryPerform_donateManagedObjects for library: %@", v108, 0xCu);
    }

    v56 = MEMORY[0x1E69BF2D0];
    v57 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v58 = [v56 failureWithError:v57];
    completionCopy[2](completionCopy, v58);
  }

  else
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3254779904;
    v76[2] = __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_341;
    v76[3] = &unk_1F0F04668;
    v77 = v64;
    selfCopy2 = self;
    v79 = v43;
    v80 = v44;
    v81 = v65;
    v82 = result;
    v89 = v66;
    v90 = spid;
    v91 = v74;
    v92 = v73;
    v83 = v49;
    v84 = v72;
    v85 = v47;
    v88 = buf;
    v86 = v42;
    v87 = completionCopy;
    [(PLSearchIndexingEngine *)self _safePerformBlock:v76];

    v57 = v77;
  }

  _Block_object_dispose(buf, 8);
}

void __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v6 objectID];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [PLSearchIndexingLazyFetchHelper alloc];
  v12 = [*(*(a1 + 48) + 8) libraryIdentifier];
  v13 = [*(a1 + 56) managedObjectContext];
  v14 = [(PLSearchIndexingLazyFetchHelper *)v11 initWithObject:v6 libraryIdentifier:v12 managedObjectContext:v13];

  if ([*(a1 + 48) supportsPSI])
  {
    v15 = [*(*(a1 + 48) + 120) indexingContext];
    v16 = [PLSearchManagedObjectUtilities psiObjectForObject:v6 fetchHelper:v14 partialUpdateMask:v10 indexingContext:v15];

    v17 = *(a1 + 64);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "objectType")}];
    [v17 _pl_safeAddObject:v16 toMutableArrayForKey:v18];
  }

  if ([*(a1 + 48) supportsSpotlightDonate])
  {
    v19 = [*(*(a1 + 48) + 8) libraryIdentifier];
    v20 = [*(*(a1 + 48) + 120) indexingContext];
    v21 = [PLSearchManagedObjectUtilities searchableItemForObject:v6 fetchHelper:v14 partialUpdateMask:v10 libraryIdentifier:v19 indexingContext:v20 embeddingsFetcher:*(a1 + 72)];

    v22 = +[PLSearchManagedObjectUtilities bundleIdentifierForManagedObject:wellKnownLibraryIdentifier:](PLSearchManagedObjectUtilities, "bundleIdentifierForManagedObject:wellKnownLibraryIdentifier:", v6, [*(*(a1 + 48) + 8) libraryIdentifier]);
    if (v22)
    {
      [*(a1 + 80) _pl_safeAddObject:v21 toMutableArrayForKey:v22];
      v23 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
      if ([v22 isEqualToString:v23])
      {
        v24 = *(*(*(a1 + 88) + 8) + 40);

        if (!v24)
        {
          v25 = [v21 uniqueIdentifier];
          v26 = *(*(a1 + 88) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v23 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = [v6 objectID];
        v29 = *(*(a1 + 48) + 8);
        v30 = 138543874;
        v31 = v28;
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = v29;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "nil bundle identifier, skipping indexing for objectID: %{public}@, object: %@, library: %@", &v30, 0x20u);
      }
    }

LABEL_16:
  }
}

void __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_339(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [PLSearchManagedObjectUtilities psiObjectForIdentifierRequiringAdditionalWork:*(*(&v15 + 1) + 8 * v10) entity:v6];
        v12 = *(a1 + 32);
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "objectType")}];
        [v12 _pl_safeAddObject:v11 toMutableArrayForKey:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_341(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    *buf = 134217984;
    v26 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Finish converting managed objects, elapsed: %f", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_342;
  v16[3] = &unk_1F0F04630;
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v24 = *(a1 + 152);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v21 = *(a1 + 120);
  v13 = *(a1 + 104);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v17 = v15;
  v18 = v14;
  v19 = *(a1 + 40);
  v20 = *(a1 + 112);
  [v5 _inq_donatePSIObjectsByType:v6 spotlightItemsByBundleID:v7 deleteIdentifiers:v8 spotlightClientState:v9 completion:v16];
}

void __180__PLSearchIndexingEngine__inLibraryPerform_donateManagedObjects_partialUpdateMasks_entity_deleteIdentifiers_identifiersRequiringAdditionalWorkByEntity_library_progress_completion___block_invoke_342(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 88);
  v5 = v4;
  v6 = *(a1 + 96);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    v16 = 134218240;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PLSearchIndexItems", "DonateObjects: %tu, DeleteIdentifiers: %tu", &v16, 0x16u);
  }

  if ([v3 isSuccess])
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [*(a1 + 40) globalValues];
      [v10 setSearchIndexSpotlightClientState:v9];

      v11 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Saving client state to global values: %@", &v16, 0xCu);
      }
    }

    v13 = [[PLSearchIndexingEvent alloc] initWithDonationCount:*(a1 + 104) deletionCount:*(a1 + 112) timestamp:*(a1 + 48) sampleIdentifier:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
  }

  else
  {
    v14 = [PLSearchIndexingEvent alloc];
    v15 = [v3 error];
    v13 = [(PLSearchIndexingEvent *)v14 initWithError:v15];
  }

  [*(*(a1 + 64) + 88) insertObject:v13 atIndex:0];
  if ([*(*(a1 + 64) + 88) count] >= 6)
  {
    [*(*(a1 + 64) + 88) removeLastObject];
  }

  (*(*(a1 + 72) + 16))();
}

- (void)_inq_dropSearchIndexWithSourceName:(id)name reasons:(unint64_t)reasons completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  v53 = MEMORY[0x1E69E9820];
  v54 = 3221225472;
  v55 = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke;
  v56 = &unk_1E75781E8;
  selfCopy = self;
  PLSafeRunWithUnfairLock();
  v10 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(reasons, 0);
    libraryServicesProvider = self->_libraryServicesProvider;
    [(PLSearchIndexingEngineLibraryServicesProvider *)libraryServicesProvider libraryIdentifier];
    v13 = PLStringFromWellKnownPhotoLibraryIdentifier();
    *buf = 138544130;
    v59 = nameCopy;
    v60 = 2114;
    v61 = v11;
    v62 = 2112;
    v63 = libraryServicesProvider;
    v64 = 2112;
    v65 = v13;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Dropping search index, source: %{public}@, reasons: %{public}@, for library %@, library identifier: %@", buf, 0x2Au);
  }

  v14 = [[PLTimedDispatchGroup alloc] initWithQueue:self->_queue name:@"drop index"];
  v15 = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryWithName:"[PLSearchIndexingEngine _inq_dropSearchIndexWithSourceName:reasons:completion:]"];
  if ([(PLSearchIndexingEngine *)self supportsSpotlightDelete])
  {
    v16 = nameCopy;
    v17 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
    v18 = [(PLTimedDispatchGroup *)v14 enterWithTimeout:@"drop spotlight" name:60.0];
    queue_spotlightIndex = self->_queue_spotlightIndex;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_324;
    v51[3] = &unk_1E7575FA8;
    v20 = v18;
    v52 = v20;
    [(CSSearchableIndex *)queue_spotlightIndex deleteAllSearchableItemsWithProtectionClass:0 forBundleID:v17 options:32 completionHandler:v51];
    globalValues = [v15 globalValues];
    v22 = [globalValues shouldDropGlobalSpotlightIndexForLibraryIdentifier:{-[PLSearchIndexingEngineLibraryServicesProvider libraryIdentifier](self->_libraryServicesProvider, "libraryIdentifier")}];

    if (v22)
    {
      v23 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Dropping global Spotlight index", buf, 2u);
      }

      v24 = objc_alloc(MEMORY[0x1E6964E78]);
      _spotlightIndexName = [(PLSearchIndexingEngine *)self _spotlightIndexName];
      v26 = [v24 initWithName:_spotlightIndexName options:32];

      v27 = [(PLTimedDispatchGroup *)v14 enterWithTimeout:@"drop spotlight global" name:60.0];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_328;
      v49[3] = &unk_1E7575FA8;
      v50 = v27;
      v28 = v27;
      [v26 deleteAllSearchableItemsWithProtectionClass:0 forBundleID:v17 options:32 completionHandler:v49];
    }

    nameCopy = v16;
  }

  if ([(PLSearchIndexingEngine *)self supportsPSI])
  {
    v29 = [(PLTimedDispatchGroup *)v14 enterWithName:@"drop psi"];
    v30 = v29;
    queue_psiDatabase = self->_queue_psiDatabase;
    if (queue_psiDatabase)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_2;
      v47[3] = &unk_1E7575FA8;
      v32 = &v48;
      v48 = v29;
      [(PSIDatabase *)queue_psiDatabase dropDatabaseWithCompletion:v47];
    }

    else
    {
      [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider pathManager];
      reasonsCopy = reasons;
      v34 = v33 = nameCopy;
      searchIndexDatabaseFilePath = [v34 searchIndexDatabaseFilePath];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_3;
      v45[3] = &unk_1E7575FA8;
      v32 = &v46;
      v46 = v30;
      [PSIDatabase dropDatabaseAtPath:searchIndexDatabaseFilePath withCompletion:v45];

      nameCopy = v33;
      reasons = reasonsCopy;
    }
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_4;
  v40[3] = &unk_1E7576190;
  v40[4] = self;
  v41 = v14;
  v43 = completionCopy;
  reasonsCopy2 = reasons;
  v42 = v15;
  v36 = completionCopy;
  v37 = v15;
  v38 = v14;
  [(PLTimedDispatchGroup *)v38 notify:v40];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69BF2D0];
  if (a2)
  {
    v4 = [MEMORY[0x1E69BF2D0] failureWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 successWithResult:v5];

    v4 = v6;
  }

  v7 = v4;
  [v2 leaveWithResult:v4];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69BF2D0];
  if (a2)
  {
    v4 = [MEMORY[0x1E69BF2D0] failureWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 successWithResult:v5];

    v4 = v6;
  }

  v7 = v4;
  [v2 leaveWithResult:v4];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69BF2D0];
  if (a2)
  {
    v4 = [MEMORY[0x1E69BF2D0] failureWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 successWithResult:v5];

    v4 = v6;
  }

  v7 = v4;
  [v2 leaveWithResult:v4];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69BF2D0];
  if (a2)
  {
    v4 = [MEMORY[0x1E69BF2D0] failureWithError:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 successWithResult:v5];

    v4 = v6;
  }

  v7 = v4;
  [v2 leaveWithResult:v4];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_4(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 80))
  {
    v2 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Search indexing engine: in group notify after _inq_dropSearchIndexForReason, but already closed.", buf, 2u);
    }
  }

  else
  {
    v3 = [PSIDatabase alloc];
    v4 = [*(*(a1 + 32) + 8) pathManager];
    v5 = [(PSIDatabase *)v3 initWithPathManager:v4 options:2];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;
  }

  v8 = [*(a1 + 40) defaultPreferredResult];
  v9 = [v8 isSuccess];

  v10 = PLSearchBackendIndexingEngineGetLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      v37 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Drop search index completed for library %@", buf, 0xCu);
    }

    v13 = *(a1 + 48);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_332;
    v32[3] = &unk_1E75782F8;
    v14 = v13;
    v15 = *(a1 + 32);
    v33 = v14;
    v34 = v15;
    v35 = *(a1 + 64);
    [v14 performTransactionAndWait:v32];
    v16 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[PLSearchIndexingEngine _inq_dropSearchIndexWithSourceName:reasons:completion:]_block_invoke_2";
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%s - Resetting search index availability", buf, 0xCu);
    }

    v17 = [*(a1 + 48) libraryServicesManager];
    v18 = [v17 availabilityComputer];
    v19 = *(a1 + 48);
    v31 = 0;
    v20 = [v18 didDropSearchIndexForPhotoLibrary:v19 error:&v31];
    v21 = v31;

    if ((v20 & 1) == 0)
    {
      v22 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to update feature availability after search index drop, error: %@", buf, 0xCu);
      }
    }

    v11 = v33;
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v23 = *(*(a1 + 32) + 8);
    v24 = [*(a1 + 40) defaultPreferredResult];
    v25 = [v24 error];
    *buf = 138412546;
    v37 = v23;
    v38 = 2112;
    v39 = v25;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Drop search index failed for library %@, error: %@", buf, 0x16u);
  }

  v28 = MEMORY[0x1E69E9820];
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  PLSafeRunWithUnfairLock();
  v26 = *(a1 + 56);
  if (v26)
  {
    v27 = [*(a1 + 40) defaultPreferredResult];
    (*(v26 + 16))(v26, v27);
  }
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_332(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  v3 = [*(*(a1 + 40) + 120) sceneTaxonomyProvider];
  v4 = [v3 digests];
  [v2 resetSearchIndexRebuildMetadataWithSceneTaxonomyDigests:v4];

  v5 = [*(a1 + 32) globalValues];
  [v5 addSearchIndexRebuildCoalescedReasons:*(a1 + 48)];
}

void __80__PLSearchIndexingEngine__inq_dropSearchIndexWithSourceName_reasons_completion___block_invoke_333(uint64_t a1)
{
  *(*(a1 + 32) + 100) = 0;
  v2 = [*(a1 + 40) defaultPreferredResult];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  v5 = *(*(a1 + 32) + 104);

  dispatch_group_leave(v5);
}

- (void)_inq_donatePSIObjectsByType:(id)type spotlightItemsByBundleID:(id)d deleteIdentifiers:(id)identifiers spotlightClientState:(id)state completion:(id)completion
{
  v129[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  identifiersCopy = identifiers;
  stateCopy = state;
  completionCopy = completion;
  if ([(PLSearchIndexingEngine *)self supportsPSI])
  {
    v16 = self->_queue_psiDatabase == 0;
  }

  else
  {
    v16 = 0;
  }

  if ([(PLSearchIndexingEngine *)self supportsSpotlightDonate])
  {
    v17 = self->_queue_spotlightIndex == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v16 || v17)
  {
    v18 = @", PSI index missing";
    if (!v16)
    {
      v18 = &stru_1F0F06D80;
    }

    if (v17)
    {
      v19 = @", Spotlight index missing";
    }

    else
    {
      v19 = &stru_1F0F06D80;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Search index unavailable, may have been closed%@%@", v18, v19];
    v21 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
    }

    v22 = MEMORY[0x1E69BF2D0];
    v23 = MEMORY[0x1E696ABC0];
    v128 = *MEMORY[0x1E696A278];
    v129[0] = v20;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v24];
    v26 = [v22 failureWithError:v25];
    completionCopy[2](completionCopy, v26);
  }

  else
  {
    v114 = MEMORY[0x1E69E9820];
    v115 = 3221225472;
    v116 = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke;
    v117 = &unk_1E7573368;
    selfCopy = self;
    if (PLBoolResultWithUnfairLock())
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Search index unavailable, drop in progress"];
      v28 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      v29 = MEMORY[0x1E69BF2D0];
      v30 = MEMORY[0x1E696ABC0];
      v126 = *MEMORY[0x1E696A278];
      v127 = v27;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      v32 = [v30 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v31];
      v33 = [v29 failureWithError:v32];
      completionCopy[2](completionCopy, v33);
    }

    else
    {
      v72 = [identifiersCopy count];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v124 = 0x2020000000;
      v125 = 0;
      v34 = PLPhotosSearchGetLog();
      spid = os_signpost_id_generate(v34);

      v35 = v34;
      v36 = v35;
      log = v35;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = os_signpost_enabled(v35);
        v36 = log;
        if (v37)
        {
          *v119 = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchIndexIndexItemsDonation", "", v119, 2u);
          v36 = log;
        }
      }

      v75 = [MEMORY[0x1E695DF00] now];
      v76 = [[PLTimedDispatchGroup alloc] initWithQueue:self->_queue name:@"donate"];
      if ([(PLSearchIndexingEngine *)self supportsPSI])
      {
        v38 = [typeCopy objectForKeyedSubscript:&unk_1F0FBCE68];
        if ([v38 count])
        {
          v39 = [(PLTimedDispatchGroup *)v76 enterWithName:@"psi assets"];
          queue_psiDatabase = self->_queue_psiDatabase;
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_285;
          v111[3] = &unk_1E7578848;
          v112 = v75;
          v41 = v39;
          v113 = v41;
          [(PSIDatabase *)queue_psiDatabase addAssets:v38 deferRemovingUnusedGroups:1 withCompletion:v111];
        }

        v71 = [v38 count];
        v42 = [typeCopy objectForKeyedSubscript:&unk_1F0FBCE80];
        if ([v42 count])
        {
          v43 = [(PLTimedDispatchGroup *)v76 enterWithName:@"psi collections"];
          v44 = self->_queue_psiDatabase;
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_291;
          v108[3] = &unk_1E7578848;
          v109 = v75;
          v45 = v43;
          v110 = v45;
          [(PSIDatabase *)v44 addCollections:v42 deferRemovingUnusedGroups:1 withCompletion:v108];
        }

        v70 = [v42 count];
        v46 = [typeCopy objectForKeyedSubscript:&unk_1F0FBCE98];
        if ([v46 count])
        {
          v47 = [(PLTimedDispatchGroup *)v76 enterWithName:@"psi groups"];
          v48 = self->_queue_psiDatabase;
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_297;
          v105[3] = &unk_1E7578848;
          v106 = v75;
          v49 = v47;
          v107 = v49;
          [(PSIDatabase *)v48 updateRankingScoreForGroups:v46 withCompletion:v105];
        }

        v69 = [v46 count];
        if ([identifiersCopy count])
        {
          v68 = v38;
          v50 = [(PLTimedDispatchGroup *)v76 enterWithName:@"psi delete assets"];
          v51 = self->_queue_psiDatabase;
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_301;
          v102[3] = &unk_1E7578848;
          v52 = v75;
          v103 = v52;
          v53 = v50;
          v104 = v53;
          [(PSIDatabase *)v51 removeAssetsWithUUIDs:identifiersCopy deferRemovingUnusedGroups:1 completion:v102];

          v54 = [(PLTimedDispatchGroup *)v76 enterWithName:@"psi delete collections"];
          v55 = self->_queue_psiDatabase;
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_305;
          v99[3] = &unk_1E7578848;
          v100 = v52;
          v56 = v54;
          v101 = v56;
          [(PSIDatabase *)v55 removeCollectionsWithUUIDs:identifiersCopy deferRemovingUnusedGroups:1 completion:v99];

          v38 = v68;
        }
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
      }

      v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (-[PLSearchIndexingEngine supportsSpotlightDonate](self, "supportsSpotlightDonate") && [dCopy count])
      {
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_306;
        v92[3] = &unk_1E756E100;
        v93 = v76;
        v94 = v57;
        v95 = stateCopy;
        selfCopy2 = self;
        v97 = v75;
        p_buf = &buf;
        [dCopy enumerateKeysAndObjectsUsingBlock:v92];
      }

      if (-[PLSearchIndexingEngine supportsSpotlightDelete](self, "supportsSpotlightDelete") && [identifiersCopy count])
      {
        v58 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [identifiersCopy count];
          v60 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
          *v119 = 134218242;
          v120 = v59;
          v121 = 2114;
          v122 = v60;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Deleting %tu items from Spotlight for bundleID: %{public}@", v119, 0x16u);
        }

        v61 = [(PLTimedDispatchGroup *)v76 enterWithTimeout:@"spotlight delete" name:60.0];
        [v57 addObject:v61];
        queue_spotlightIndex = self->_queue_spotlightIndex;
        v63 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_315;
        v89[3] = &unk_1E756E0D8;
        v90 = v75;
        v64 = v61;
        v91 = v64;
        [(CSSearchableIndex *)queue_spotlightIndex indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:identifiersCopy clientState:0 clientStateName:0 protectionClass:0 forBundleID:v63 options:32 completionHandler:v89];
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3254779904;
      v78[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_316;
      v78[3] = &unk_1F0F045F8;
      v65 = log;
      v82 = &buf;
      v83 = v65;
      v84 = spid;
      v85 = v71;
      v86 = v70;
      v87 = v69;
      v88 = v72;
      v66 = v57;
      v79 = v66;
      v81 = completionCopy;
      v67 = v76;
      v80 = v67;
      [(PLTimedDispatchGroup *)v67 notify:v78];

      _Block_object_dispose(&buf, 8);
    }
  }
}

uint64_t __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_285(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PSI asset donation completed, elapsed: %f", &v6, 0xCu);
  }

  return [*(a1 + 40) leave];
}

uint64_t __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_291(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PSI collection donation completed, elapsed: %f", &v6, 0xCu);
  }

  return [*(a1 + 40) leave];
}

uint64_t __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_297(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PSI update rankings completed, elapsed: %f", &v6, 0xCu);
  }

  return [*(a1 + 40) leave];
}

uint64_t __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_301(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PSI delete assets completed, elapsed: %f", &v6, 0xCu);
  }

  return [*(a1 + 40) leave];
}

uint64_t __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_305(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PSI delete collections completed, elapsed: %f", &v6, 0xCu);
  }

  return [*(a1 + 40) leave];
}

void __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = [v6 count];
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Donating %tu items to Spotlight for bundleID: %{public}@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spotlight donate for %@", v5];
  v10 = [v8 enterWithTimeout:v9 name:60.0];

  [*(a1 + 40) addObject:v10];
  v11 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
  if (![v5 isEqualToString:v11])
  {
    v12 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v12 = *(a1 + 48);

  if (v12)
  {
    v11 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v12 length];
      *buf = 134217984;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Donating client state of length %tu", buf, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:
  v14 = *(*(a1 + 56) + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_310;
  v16[3] = &unk_1E756E0D8;
  v17 = *(a1 + 64);
  v18 = v10;
  v15 = v10;
  [v14 indexSearchableItems:v6 deleteSearchableItemsWithIdentifiers:0 clientState:v12 protectionClass:0 forBundleID:v5 options:32 completionHandler:v16];
  *(*(*(a1 + 72) + 8) + 24) += [v6 count];
}

void __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_315(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendIndexingEngineGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Spotlight delete failed with error: %@", &v11, 0xCu);
    }

    v6 = [MEMORY[0x1E69BF2D0] failureWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x1E695DF00] now];
      [v7 timeIntervalSinceDate:*(a1 + 32)];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Spotlight delete completed, elapsed: %f", &v11, 0xCu);
    }

    v9 = MEMORY[0x1E69BF2D0];
    v10 = [MEMORY[0x1E695DFB0] null];
    v6 = [v9 successWithResult:v10];
  }

  [*(a1 + 40) leaveWithResult:v6];
}

void __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_316(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    *buf = 134219008;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PLSearchIndexIndexItemsDonation", "CSSearchableItems: %tu, PSI Assets: %tu, PSI Collections: %tu, PSI Groups: %tu, DeleteIdentifiers: %tu", buf, 0x34u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v18 + 1) + 8 * i) didTimeout])
        {
          v15 = PLSearchBackendIndexingEngineGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Spotlight request timed out, donation failure", buf, 2u);
          }

          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [*(a1 + 40) defaultPreferredResult];
    (*(v16 + 16))(v16, v17);
  }
}

void __129__PLSearchIndexingEngine__inq_donatePSIObjectsByType_spotlightItemsByBundleID_deleteIdentifiers_spotlightClientState_completion___block_invoke_310(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendIndexingEngineGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Spotlight donation failed with error: %@", &v11, 0xCu);
    }

    v6 = [MEMORY[0x1E69BF2D0] failureWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [MEMORY[0x1E695DF00] now];
      [v7 timeIntervalSinceDate:*(a1 + 32)];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Spotlight donation completed, elapsed: %f", &v11, 0xCu);
    }

    v9 = MEMORY[0x1E69BF2D0];
    v10 = [MEMORY[0x1E695DFB0] null];
    v6 = [v9 successWithResult:v10];
  }

  [*(a1 + 40) leaveWithResult:v6];
}

- (void)_inq_validateSpotlightClientStateAgainstExpectedClientState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchIndexingEngine.m" lineNumber:814 description:{@"Invalid parameter not satisfying: %@", @"expectedClientState != nil"}];
  }

  queue_spotlightIndex = self->_queue_spotlightIndex;
  v10 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
  _spotlightIndexName = [(PLSearchIndexingEngine *)self _spotlightIndexName];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__PLSearchIndexingEngine__inq_validateSpotlightClientStateAgainstExpectedClientState_completion___block_invoke;
  v15[3] = &unk_1E756E0B0;
  v16 = stateCopy;
  selfCopy = self;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = stateCopy;
  [(CSSearchableIndex *)queue_spotlightIndex fetchLastClientStateWithProtectionClass:0 forBundleID:v10 clientStateName:_spotlightIndexName options:131104 completionHandler:v15];
}

void __97__PLSearchIndexingEngine__inq_validateSpotlightClientStateAgainstExpectedClientState_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E69BF2D0];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 successWithResult:v8];

  if ([v5 length])
  {
    v10 = [PLGlobalValues searchIndexSpotlightClientStateDataWithDictionary:*(a1 + 32)];
    if ([v10 isSuccess])
    {
      v11 = [v10 result];
      v12 = [v11 isEqualToData:v5];

      if (v12)
      {
        v13 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 138412290;
          v36 = v14;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Fetched client state matches expected client state: %@", buf, 0xCu);
        }
      }

      else
      {
        v22 = [PLGlobalValues searchIndexSpotlightClientStateWithData:v5];
        if ([v22 isSuccess])
        {
          v23 = MEMORY[0x1E696AEC0];
          v24 = *(a1 + 32);
          v25 = [v22 result];
          v26 = [v23 stringWithFormat:@"Expected client state does not match fetched client state, expected: %@, fetched: %@", v24, v25];

          v27 = *(a1 + 40);
          v28 = 2;
          v29 = v26;
          v30 = 0;
        }

        else
        {
          v32 = *(a1 + 40);
          v26 = [v22 error];
          v29 = @"Error deserializing client state";
          v27 = v32;
          v28 = 3;
          v30 = v26;
        }

        v33 = [v27 _clientStateFailureResultAndLogWithErrorCode:v28 debugDescription:v29 underlyingError:v30];

        v9 = v33;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      v20 = [v10 error];
      v21 = [v19 _clientStateFailureResultAndLogWithErrorCode:3 debugDescription:@"Error serializing expected client state" underlyingError:v20];

      v9 = v21;
    }
  }

  else
  {
    if (v6)
    {
      v15 = *(a1 + 40);
      v34 = 0;
      v16 = [v15 _errorCodeForSpotlightClientStateError:v6 debugDescription:&v34];
      v17 = v34;
      v18 = [*(a1 + 40) _clientStateFailureResultAndLogWithErrorCode:v16 debugDescription:v17 underlyingError:v6];
    }

    else
    {
      if ([v5 length])
      {
        v31 = @"Spotlight client state is missing with no error, possible Spotlight donation loss, search index rebuild required";
      }

      else
      {
        v31 = @"Spotlight client state has zero length with no error, possible Spotlight donation loss, search index rebuild required";
      }

      v18 = [*(a1 + 40) _clientStateFailureResultAndLogWithErrorCode:1 debugDescription:v31 underlyingError:0];
    }

    v9 = v18;
  }

  (*(*(a1 + 48) + 16))();
}

- (unint64_t)_errorCodeForSpotlightClientStateError:(id)error debugDescription:(id *)description
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x1E6963AD8]];

  if (!v7)
  {
    v11 = MEMORY[0x1E696AEC0];
    domain2 = [errorCopy domain];
    v9 = [v11 stringWithFormat:@"Unexpected error domain %@ code %ld fetching spotlight client state", domain2, objc_msgSend(errorCopy, "code")];

    v10 = 4;
    if (!description)
    {
      goto LABEL_7;
    }

LABEL_6:
    v13 = v9;
    *description = v9;
    goto LABEL_7;
  }

  v8 = [errorCopy code] + 2013;
  if (v8 < 5)
  {
    v9 = off_1E756E1C0[v8];
    v10 = qword_19C60BE70[v8];
    if (!description)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([errorCopy code] == -1)
  {
    v9 = @"Unknown error fetching client state";
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected error code %ld fetching spotlight client state", objc_msgSend(errorCopy, "code")];
  }

  v10 = 1;
  if (description)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

- (id)_clientStateFailureResultAndLogWithErrorCode:(unint64_t)code debugDescription:(id)description underlyingError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  errorCopy = error;
  v10 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    v17 = 138543874;
    v18 = descriptionCopy;
    v19 = 2112;
    v20 = libraryServicesProvider;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "%{public}@ for library: %@, error: %@", &v17, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A278]];
  [v12 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v13 = MEMORY[0x1E69BF2D0];
  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLSearchIndexSpotlightClientStateErrorDomain" code:code userInfo:v12];
  v15 = [v13 failureWithError:v14];

  return v15;
}

- (void)_inq_close
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    v14 = 138412290;
    v15 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Closing search index for library: %@", &v14, 0xCu);
  }

  v5 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_libraryServicesProvider;
    queue_eventHistory = self->_queue_eventHistory;
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = queue_eventHistory;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Most recent search indexing events for library (%@) %@", &v14, 0x16u);
  }

  self->_queue_closed = 1;
  queue_spotlightIndex = self->_queue_spotlightIndex;
  self->_queue_spotlightIndex = 0;

  queue_managedSpotlightIndex = self->_queue_managedSpotlightIndex;
  self->_queue_managedSpotlightIndex = 0;

  queue_psiDatabase = self->_queue_psiDatabase;
  self->_queue_psiDatabase = 0;

  queue_rebuildEngine = self->_queue_rebuildEngine;
  self->_queue_rebuildEngine = 0;

  queue_updateEngine = self->_queue_updateEngine;
  self->_queue_updateEngine = 0;

  configuration = [(PLSearchIndexingEngine *)self configuration];
  [configuration releaseIndexingContext];

  [(PLSearchIndexingEngine *)self _inq_releaseSpotlightSandboxExtension];
}

- (void)_inq_open
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138412290;
    *&buf[4] = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Opening search index for library: %@", buf, 0xCu);
  }

  if ([(PLSearchIndexingEngine *)self supportsSpotlightDonate])
  {
    if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:[(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryIdentifier]])
    {
      pathManager = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider pathManager];
      queue_spotlightIndex = [pathManager spotlightSearchIndexPath];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v39 = 0;
      v8 = [defaultManager createDirectoryAtPath:queue_spotlightIndex withIntermediateDirectories:1 attributes:0 error:&v39];
      _spotlightIndexName2 = v39;

      if (v8)
      {
        [(PLSearchIndexingEngine *)self _inq_acquireSpotlightSandboxExtensionIfNeeded];
        v10 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = queue_spotlightIndex;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Creating managed spotlight index at path: %@", buf, 0xCu);
        }

        v11 = objc_alloc(MEMORY[0x1E6964E38]);
        _spotlightIndexName = [(PLSearchIndexingEngine *)self _spotlightIndexName];
        v13 = [v11 initWithName:_spotlightIndexName protectionClass:0 path:queue_spotlightIndex];

        v14 = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryIdentifier]== 1;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __35__PLSearchIndexingEngine__inq_open__block_invoke;
        v36[3] = &unk_1E756E088;
        v38 = v14;
        v37 = queue_spotlightIndex;
        [v13 setUISearchEnabled:v14 completionHandler:v36];
        objc_storeStrong(&self->_queue_spotlightIndex, v13);
        queue_managedSpotlightIndex = self->_queue_managedSpotlightIndex;
        self->_queue_managedSpotlightIndex = v13;
        v16 = v13;
      }

      else
      {
        v16 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = self->_libraryServicesProvider;
          *buf = 138412546;
          *&buf[4] = v19;
          v41 = 2112;
          v42 = _spotlightIndexName2;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to create Spotlight index directory for %@, error: %@", buf, 0x16u);
        }
      }

      if (!self->_queue_spotlightIndex)
      {
        v20 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_FAULT, "Unable to create managed spotlight index", buf, 2u);
        }
      }
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x1E6964E78]);
      _spotlightIndexName2 = [(PLSearchIndexingEngine *)self _spotlightIndexName];
      v18 = [v17 initWithName:_spotlightIndexName2 options:32];
      queue_spotlightIndex = self->_queue_spotlightIndex;
      self->_queue_spotlightIndex = v18;
    }
  }

  if ([(PLSearchIndexingEngine *)self supportsPSI])
  {
    v21 = [PSIDatabase alloc];
    pathManager2 = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider pathManager];
    v23 = [(PSIDatabase *)v21 initWithPathManager:pathManager2 options:2];
    queue_psiDatabase = self->_queue_psiDatabase;
    self->_queue_psiDatabase = v23;
  }

  v25 = [[PLSearchIndexingRebuildEngine alloc] initWithDelegate:self provider:self->_libraryServicesProvider];
  queue_rebuildEngine = self->_queue_rebuildEngine;
  self->_queue_rebuildEngine = v25;

  v27 = [[PLSearchIndexingIncrementalUpdateEngine alloc] initWithDelegate:self];
  queue_updateEngine = self->_queue_updateEngine;
  self->_queue_updateEngine = v27;

  self->_queue_closed = 0;
  v29 = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryWithName:"[PLSearchIndexingEngine _inq_open]"];
  if ([(PLSearchIndexingEngine *)self supportsSpotlightClientState])
  {
    globalValues = [v29 globalValues];
    searchIndexSpotlightClientState = [globalValues searchIndexSpotlightClientState];

    if (searchIndexSpotlightClientState)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __35__PLSearchIndexingEngine__inq_open__block_invoke_216;
      v34[3] = &unk_1E756E060;
      v34[4] = self;
      v35 = v29;
      [(PLSearchIndexingEngine *)self _inq_validateSpotlightClientStateAgainstExpectedClientState:searchIndexSpotlightClientState completion:v34];
    }
  }

  *buf = 0;
  if ([PLSearchIndexingRebuildEngine requiresImmediateDropIndexForLibrary:v29 reasons:buf])
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[PLSearchIndexingEngine _inq_open]"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __35__PLSearchIndexingEngine__inq_open__block_invoke_3;
    v33[3] = &unk_1E756E038;
    v33[4] = self;
    [(PLSearchIndexingEngine *)self _inq_dropSearchIndexWithSourceName:v32 reasons:*buf completion:v33];
  }
}

void __35__PLSearchIndexingEngine__inq_open__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v6 = @"enabled";
      }

      else
      {
        v6 = @"disabled";
      }

      v7 = 138543874;
      v8 = v6;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to set UI search %{public}@ for managed spotlight index at path: %@, error: %@", &v7, 0x20u);
    }
  }
}

void __35__PLSearchIndexingEngine__inq_open__block_invoke_216(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:@"PLSearchIndexSpotlightClientStateErrorDomain"];

    if (v6)
    {
      v7 = +[PLConcurrencyLimiter sharedLimiter];
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __35__PLSearchIndexingEngine__inq_open__block_invoke_2;
      v10[3] = &unk_1E75761B8;
      v10[4] = v8;
      v11 = v3;
      v12 = *(a1 + 40);
      [v7 dispatchAsync:v9 block:v10];
    }
  }
}

void __35__PLSearchIndexingEngine__inq_open__block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Drop search index completed following index open for library %@", &v4, 0xCu);
  }
}

void __35__PLSearchIndexingEngine__inq_open__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) error];
  [v2 _inq_handleClientStateValidationError:v3 library:*(a1 + 48)];
}

- (void)_inq_releaseSpotlightSandboxExtension
{
  queue_spotlightSandboxExtension = self->_queue_spotlightSandboxExtension;
  self->_queue_spotlightSandboxExtension = 0;
}

- (void)_inq_acquireSpotlightSandboxExtensionIfNeeded
{
  if (!self->_queue_spotlightSandboxExtension)
  {
    v4 = [PLSearchSpotlightSandboxExtension alloc];
    pathManager = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider pathManager];
    v5 = [(PLSearchSpotlightSandboxExtension *)v4 initWithPathManager:pathManager];
    queue_spotlightSandboxExtension = self->_queue_spotlightSandboxExtension;
    self->_queue_spotlightSandboxExtension = v5;
  }
}

- (void)_inq_handleClientStateValidationError:(id)error library:(id)library
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  libraryCopy = library;
  code = [errorCopy code];
  if (code == 2)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_204;
    v23[3] = &unk_1E75781E8;
    v24 = libraryCopy;
    [(PLTimedDispatchGroup *)v24 performTransactionAndWait:v23];
    v11 = v24;
LABEL_13:

    goto LABEL_14;
  }

  if (code == 1)
  {
    v9 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      libraryServicesProvider = self->_libraryServicesProvider;
      *buf = 138412290;
      v31 = libraryServicesProvider;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_FAULT, "Spotlight client state missing for library: %@, starting auto bug capture", buf, 0xCu);
    }

    v11 = [[PLTimedDispatchGroup alloc] initWithQueue:self->_queue name:@"countSpotlightAssetsQuery"];
    v12 = [PLSpotlightQueryUtilities countAssetsQueryStringForLibraryIdentifier:[(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryIdentifier]];
    libraryIdentifier = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider libraryIdentifier];
    pathManager = [(PLSearchIndexingEngineLibraryServicesProvider *)self->_libraryServicesProvider pathManager];
    v15 = [PLSpotlightQueryUtilities searchQueryForLibraryIdentifier:libraryIdentifier pathManager:pathManager queryString:v12];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke;
    v28[3] = &unk_1E756E060;
    v28[4] = self;
    v29 = errorCopy;
    [PLSpotlightQueryUtilities countForSearchQuery:v15 timedDispatchGroup:v11 completion:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_203;
    v26[3] = &unk_1E75781E8;
    v16 = libraryCopy;
    v27 = v16;
    [v16 performTransactionAndWait:v26];
    v17 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[PLSearchIndexingEngine _inq_handleClientStateValidationError:library:]";
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%s - in Resetting search index availability", buf, 0xCu);
    }

    libraryServicesManager = [v16 libraryServicesManager];
    availabilityComputer = [libraryServicesManager availabilityComputer];
    v25 = 0;
    v20 = [availabilityComputer didDropSearchIndexForPhotoLibrary:v16 error:&v25];
    v21 = v25;

    if ((v20 & 1) == 0)
    {
      v22 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to update feature availability after missing Spotlight client state, error: %@", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

void __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = PLSearchBackendIndexingEngineGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 result];
      v8 = [v7 unsignedIntegerValue];
      v9 = *(*(a1 + 32) + 8);
      *buf = 134218242;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v10 = "Found %lu Spotlight assets for library %@";
      v11 = v6;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = *(*(a1 + 32) + 8);
    v7 = [v3 error];
    *buf = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v7;
    v10 = "Spotlight query for assets failed for library %@, error: %@";
    v11 = v6;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v14 = [*(a1 + 40) userInfo];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v16 = *(a1 + 32);
  v17 = *(v16 + 88);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_202;
  v18[3] = &unk_1E756E038;
  v18[4] = v16;
  [PLAutoBugCapture captureSpotlightClientStateMissingSnapshotWithSpotlightAssetCountResult:v3 spotlightError:v15 searchIndexingEvents:v17 completion:v18];
}

void __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_203(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  [v2 addRebuildRequiredExternalReasons:256];

  v3 = [*(a1 + 32) globalValues];
  [v3 incrementSpotlightClientStateMissingCount];

  v4 = [*(a1 + 32) globalValues];
  [v4 setSearchIndexSpotlightClientState:0];
}

void __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_204(uint64_t a1)
{
  v2 = [*(a1 + 32) globalValues];
  [v2 incrementSpotlightClientStateMismatchedCount];

  v3 = [*(a1 + 32) globalValues];
  [v3 setSearchIndexSpotlightClientState:0];
}

void __72__PLSearchIndexingEngine__inq_handleClientStateValidationError_library___block_invoke_202(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Auto bug capture completed with result: %@ for library; %@", &v6, 0x16u);
  }
}

- (void)_inLibraryPerform_donateAssets:(id)assets library:(id)library progress:(id)progress completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  libraryCopy = library;
  progressCopy = progress;
  completionCopy = completion;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = assetsCopy;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 isEligibleForSearchIndexing])
        {
          [v13 addObject:v20];
        }

        else
        {
          uuid = [v20 uuid];
          [v14 addObject:uuid];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  [(PLSearchIndexingAccessManager *)self->_accessManager addUser];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__PLSearchIndexingEngine__inLibraryPerform_donateAssets_library_progress_completion___block_invoke;
  v24[3] = &unk_1E756E010;
  v24[4] = self;
  v25 = completionCopy;
  v22 = completionCopy;
  [(PLSearchIndexingEngine *)self _inLibraryPerform_donateManagedObjects:v13 partialUpdateMasks:0 entity:1 deleteIdentifiers:v14 identifiersRequiringAdditionalWorkByEntity:0 library:libraryCopy progress:progressCopy completion:v24];
}

void __85__PLSearchIndexingEngine__inLibraryPerform_donateAssets_library_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 removeUser];
  (*(*(a1 + 40) + 16))();
}

- (void)_safePerformBlock:(id)block
{
  blockCopy = block;
  v3 = blockCopy;
  PLSafeRunWithUnfairLock();
}

void __44__PLSearchIndexingEngine__safePerformBlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 100) == 1)
  {
    v2 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Drop index in progress, delaying work until drop complete: %{public}@", buf, 0xCu);
    }

    v4 = +[PLConcurrencyLimiter sharedLimiter];
    [v4 groupNotify:*(*(a1 + 32) + 104) queue:*(*(a1 + 32) + 24) block:*(a1 + 40)];
  }

  else
  {
    v5 = +[PLConcurrencyLimiter sharedLimiter];
    [v5 dispatchAsync:*(*(a1 + 32) + 24) block:*(a1 + 40)];
  }
}

- (void)reportFeatureProcessingSnapshot:(id)snapshot library:(id)library completion:(id)completion
{
  v6 = MEMORY[0x1E69BF2D0];
  v7 = MEMORY[0x1E695DFB0];
  completionCopy = completion;
  null = [v7 null];
  v10 = [v6 successWithResult:null];

  (*(completion + 2))(completionCopy, v10);
}

- (void)pauseProcessingIncrementalUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138412290;
    v7 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Pausing incremental updates for library: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PLSearchIndexingEngine_pauseProcessingIncrementalUpdates__block_invoke;
  v5[3] = &unk_1E75781E8;
  v5[4] = self;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v5];
}

- (void)resumeProcessingIncrementalUpdatesInLibrary:(id)library completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  completionCopy = completion;
  v8 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138412290;
    v16 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Resuming incremental updates for library: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PLSearchIndexingEngine_resumeProcessingIncrementalUpdatesInLibrary_completion___block_invoke;
  v12[3] = &unk_1E7576F38;
  v12[4] = self;
  v13 = libraryCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = libraryCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v12];
}

void __81__PLSearchIndexingEngine_resumeProcessingIncrementalUpdatesInLibrary_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__PLSearchIndexingEngine_resumeProcessingIncrementalUpdatesInLibrary_completion___block_invoke_2;
  v5[3] = &unk_1E756E010;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 resumeWithLibrary:v2 completion:v5];
}

uint64_t __81__PLSearchIndexingEngine_resumeProcessingIncrementalUpdatesInLibrary_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeUser];
}

- (id)processBatchOfJobsWithType:(signed __int16)type flags:(int64_t)flags library:(id)library completion:(id)completion
{
  typeCopy = type;
  v36 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  completionCopy = completion;
  v12 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (typeCopy > 0xA)
    {
      v13 = @"unknown";
    }

    else
    {
      v13 = off_1E756F240[typeCopy];
    }

    v14 = v13;
    v15 = PLBackgroundJobWorkerSearchJobFlagsDescription(flags);
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138543874;
    v31 = v14;
    v32 = 2114;
    v33 = v15;
    v34 = 2112;
    v35 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Processing batch of jobs of type: %{public}@, flags: %{public}@, for library: %@", buf, 0x20u);
  }

  v17 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78__PLSearchIndexingEngine_processBatchOfJobsWithType_flags_library_completion___block_invoke;
  v24[3] = &unk_1E756DFE8;
  v29 = typeCopy;
  flagsCopy = flags;
  v24[4] = self;
  v25 = libraryCopy;
  v18 = v17;
  v26 = v18;
  v27 = completionCopy;
  v19 = completionCopy;
  v20 = libraryCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v24];
  v21 = v27;
  v22 = v18;

  return v18;
}

void __78__PLSearchIndexingEngine_processBatchOfJobsWithType_flags_library_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PLSearchIndexingEngine_processBatchOfJobsWithType_flags_library_completion___block_invoke_2;
  v8[3] = &unk_1E756E010;
  v6 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v3 processBatchOfJobsWithType:v4 flags:v6 library:v2 progress:v5 completion:v8];
}

uint64_t __78__PLSearchIndexingEngine_processBatchOfJobsWithType_flags_library_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeUser];
}

- (void)fetchRemainingWorkWithLibrary:(id)library completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  v8 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Fetching remaining search indexing work", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke;
  v11[3] = &unk_1E7576F38;
  v11[4] = self;
  v12 = libraryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = libraryCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v11];
}

void __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 56);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2;
  v25[3] = &unk_1E756DF98;
  v27 = v30;
  v28 = v29;
  v5 = v2;
  v26 = v5;
  [v4 fetchRemainingWorkWithLibrary:v3 completion:v25];
  dispatch_group_enter(v5);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_3;
  v18[3] = &unk_1E756DF98;
  v20 = v23;
  v21 = v22;
  v8 = v5;
  v19 = v8;
  [v7 fetchRemainingWorkWithLibrary:v6 completion:v18];
  v9 = +[PLConcurrencyLimiter sharedLimiter];
  v10 = *(*(a1 + 32) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_4;
  v12[3] = &unk_1E756DFC0;
  v14 = v29;
  v15 = v30;
  v16 = v23;
  v17 = v22;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v9 groupNotify:v8 queue:v10 block:v12];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
}

void __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __67__PLSearchIndexingEngine_fetchRemainingWorkWithLibrary_completion___block_invoke_4(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 24);
  v3 = 7;
  if (!v2)
  {
    v3 = 8;
  }

  v4 = *(*(a1[v3] + 8) + 24);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || *(*(a1[9] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch remaining search indexing work", &v10, 2u);
    }
  }

  else
  {
    v5 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1[6] + 8) + 24);
      v8 = *(*(a1[9] + 8) + 24);
      v9 = @"N";
      if (v4)
      {
        v9 = @"Y";
      }

      v10 = 134218498;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Remaining search indexing work, rebuild: %tu, incremental: %tu isPaused: %{public}@", &v10, 0x20u);
    }
  }

  (*(a1[5] + 16))(0.0);
  return [*(a1[4] + 16) removeUser];
}

- (void)resetSearchIndexWithReason:(int64_t)reason library:(id)library dropCompletion:(id)completion completion:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  completionCopy = completion;
  v12 = a6;
  v13 = PLSearchBackendIndexRebuildGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if ((reason - 1) > 9)
    {
      v14 = @"PLSearchIndexRebuildReasonNone";
    }

    else
    {
      v14 = off_1E756E170[reason - 1];
    }

    *buf = 138543618;
    v24 = v14;
    v25 = 2050;
    reasonCopy = reason;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Received request to drop and rebuild search index with reason: %{public}@ (%{public}ld)", buf, 0x16u);
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[PLSearchIndexingEngine resetSearchIndexWithReason:library:dropCompletion:completion:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__PLSearchIndexingEngine_resetSearchIndexWithReason_library_dropCompletion_completion___block_invoke;
  v19[3] = &unk_1E756DF70;
  v19[4] = self;
  v20 = libraryCopy;
  v21 = completionCopy;
  v22 = v12;
  v16 = v12;
  v17 = libraryCopy;
  v18 = completionCopy;
  [(PLSearchIndexingEngine *)self dropSearchIndexWithSourceName:v15 completion:v19];
}

void __87__PLSearchIndexingEngine_resetSearchIndexWithReason_library_dropCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if ([v3 isSuccess])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__PLSearchIndexingEngine_resetSearchIndexWithReason_library_dropCompletion_completion___block_invoke_2;
    v8[3] = &unk_1E756DF48;
    v9 = *(a1 + 56);
    [v5 resumeSearchIndexRebuildIfNeededForLibrary:v6 calledBy:@"Reset" completion:v8];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }
}

uint64_t __87__PLSearchIndexingEngine_resetSearchIndexWithReason_library_dropCompletion_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pauseSearchIndexRebuildWithSourceName:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138412290;
    v11 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Pausing search indexing for library: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PLSearchIndexingEngine_pauseSearchIndexRebuildWithSourceName___block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v8];
}

- (void)resumeSearchIndexRebuildIfNeededForLibrary:(id)library calledBy:(id)by completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  byCopy = by;
  completionCopy = completion;
  v11 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    libraryServicesProvider = self->_libraryServicesProvider;
    *buf = 138412290;
    v21 = libraryServicesProvider;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Search indexing resuming if needed for library: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PLSearchIndexingEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke;
  v16[3] = &unk_1E7573C00;
  v16[4] = self;
  v17 = libraryCopy;
  v18 = byCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = byCopy;
  v15 = libraryCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v16];
}

void __89__PLSearchIndexingEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__PLSearchIndexingEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_2;
  v6[3] = &unk_1E756DF20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 resumeSearchIndexRebuildIfNeededForLibrary:v2 calledBy:v4 completion:v6];
}

uint64_t __89__PLSearchIndexingEngine_resumeSearchIndexRebuildIfNeededForLibrary_calledBy_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeUser];
}

- (BOOL)hasRebuildWorkToDoForLibrary:(id)library
{
  libraryServicesProvider = self->_libraryServicesProvider;
  libraryCopy = library;
  libraryIdentifier = [(PLSearchIndexingEngineLibraryServicesProvider *)libraryServicesProvider libraryIdentifier];
  sceneTaxonomyProvider = [(PLSearchIndexConfiguration *)self->_configuration sceneTaxonomyProvider];
  digests = [sceneTaxonomyProvider digests];
  v9 = [PLSearchIndexingRebuildEngine hasRebuildWorkToDoForLibrary:libraryCopy identifier:libraryIdentifier sceneTaxonomyDigests:digests];

  return v9;
}

- (void)_dropSearchIndexWithSourceName:(id)name reasons:(unint64_t)reasons completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke;
  v21 = &unk_1E756DEF8;
  selfCopy = self;
  v10 = nameCopy;
  v23 = v10;
  v11 = completionCopy;
  v24 = v11;
  if ((PLBoolResultWithUnfairLock() & 1) == 0)
  {
    v12 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      libraryServicesProvider = self->_libraryServicesProvider;
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = libraryServicesProvider;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Request to drop search index for source %{public}@, library: %@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_180;
    v14[3] = &unk_1E7576078;
    v14[4] = self;
    v15 = v10;
    reasonsCopy = reasons;
    v16 = v11;
    [(PLSearchIndexingEngine *)self _safePerformBlock:v14];
  }
}

uint64_t __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 100) == 1)
  {
    v2 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 8);
      *buf = 138543618;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Drop index currently in progress during request to drop for source %{public}@, library: %@", buf, 0x16u);
    }

    v5 = +[PLConcurrencyLimiter sharedLimiter];
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    v8 = *(v6 + 24);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_178;
    v12[3] = &unk_1E7577C08;
    v9 = *(a1 + 48);
    v12[4] = *(a1 + 32);
    v13 = v9;
    [v5 groupNotify:v7 queue:v8 block:v12];

    v10 = *(*(a1 + 32) + 100);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_180(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addUser];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_2;
  v6[3] = &unk_1E756E010;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _inq_dropSearchIndexWithSourceName:v3 reasons:v4 completion:v6];
}

uint64_t __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 32) + 16);

  return [v3 removeUser];
}

uint64_t __76__PLSearchIndexingEngine__dropSearchIndexWithSourceName_reasons_completion___block_invoke_178(uint64_t a1)
{
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Notifying drop index completed", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)disableUISearch
{
  v3 = +[PLConcurrencyLimiter sharedLimiter];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PLSearchIndexingEngine_disableUISearch__block_invoke;
  v4[3] = &unk_1E75781E8;
  v4[4] = self;
  [v3 sync:v4 identifyingBlock:0 library:0];
}

void __41__PLSearchIndexingEngine_disableUISearch__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) addUser];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Disabling UI search for %@", buf, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 8) description];
  v5 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PLSearchIndexingEngine_disableUISearch__block_invoke_176;
  v7[3] = &unk_1E7575FA8;
  v8 = v4;
  v6 = v4;
  [v5 setUISearchEnabled:0 completionHandler:v7];
  [*(*(a1 + 32) + 16) removeUser];
}

void __41__PLSearchIndexingEngine_disableUISearch__block_invoke_176(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendIndexingEngineGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Failed to disable UI search for library: %@, error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = 0;
    v7 = "Disabled UI search for library: %@, error: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

- (id)indexAssetsIfNeededWithObjectIDs:(id)ds library:(id)library completion:(id)completion
{
  dsCopy = ds;
  libraryCopy = library;
  completionCopy = completion;
  v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke;
  v19[3] = &unk_1E7576EE8;
  v20 = dsCopy;
  selfCopy = self;
  v22 = libraryCopy;
  v12 = v11;
  v23 = v12;
  v24 = completionCopy;
  v13 = completionCopy;
  v14 = libraryCopy;
  v15 = dsCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v19];
  v16 = v24;
  v17 = v12;

  return v12;
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(*(a1 + 40) + 8);
    *buf = 134218242;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Indexing assets if needed (%tu) for %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  [*(*(a1 + 40) + 16) addUser];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(a1 + 32)];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        if (([v11 isTemporaryID] & 1) != 0 || PLSearchIndexObjectIDRequiresRebuildPass(v11, *(a1 + 48)))
        {
          [v5 addObject:v11];
          [v6 removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v8);
  }

  v12 = [[PLTimedDispatchGroup alloc] initWithQueue:*(*(a1 + 40) + 24) name:@"indexAssetsIfNeeded"];
  [*(a1 + 56) setTotalUnitCount:{objc_msgSend(v6, "count") + objc_msgSend(v5, "count")}];
  if ([v5 count])
  {
    v13 = [(PLTimedDispatchGroup *)v12 enterWithName:@"assetsNeverIndexed"];
    v14 = *(a1 + 48);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_158;
    v36[3] = &unk_1E756DE60;
    v37 = v5;
    v38 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v39 = v15;
    v40 = v16;
    v42 = buf;
    v17 = v13;
    v41 = v17;
    [v14 performBlockAndWait:v36];
  }

  if ([v6 count])
  {
    v18 = [(PLTimedDispatchGroup *)v12 enterWithName:@"assetsIncrementalUpdates"];
    v19 = *(a1 + 48);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_3;
    v29[3] = &unk_1E756DE60;
    v30 = v6;
    v31 = *(a1 + 48);
    v20 = v18;
    v21 = *(a1 + 40);
    v32 = v20;
    v33 = v21;
    v35 = v47;
    v34 = *(a1 + 56);
    [v19 performBlockAndWait:v29];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_7;
  v23[3] = &unk_1E7572F58;
  v23[4] = *(a1 + 40);
  v26 = *(a1 + 64);
  v22 = v12;
  v24 = v22;
  v27 = buf;
  v28 = v47;
  v25 = *(a1 + 48);
  [(PLTimedDispatchGroup *)v22 notify:v23];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(buf, 8);
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_158(uint64_t a1)
{
  v2 = [PLManagedAsset assetsWithObjectIDs:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = [v2 count];
  v4 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v3];
  [*(a1 + 48) addChild:v4 withPendingUnitCount:{objc_msgSend(*(a1 + 32), "count")}];
  if ([*(a1 + 48) isCancelled])
  {
    [v4 cancel];
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_2;
  v9[3] = &unk_1E756DE38;
  v11 = v3;
  v8 = *(a1 + 64);
  v7 = v8;
  v10 = v8;
  [v5 _inLibraryPerform_donateAssets:v2 library:v6 progress:v4 completion:v9];
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_3(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  [v2 setFetchBatchSize:0];
  [v2 setResultType:2];
  v29[0] = @"uuid";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v2 setPropertiesToFetch:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", *(a1 + 32)];
  [v2 setPredicate:v4];

  v5 = [*(a1 + 40) managedObjectContext];
  v28 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v28];
  v7 = v28;

  if (v6)
  {
    v8 = PFMap();
    v9 = [*(a1 + 40) managedObjectContext];
    v10 = [PLBackgroundJobWorkItem searchIndexWorkItemManagedObjectIDsForIdentifiers:v8 managedObjectContext:v9];

    if ([v10 isSuccess] && (objc_msgSend(v10, "result"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
    {
      v13 = +[PLConcurrencyLimiter sharedLimiter];
      v14 = *(a1 + 56);
      v15 = *(v14 + 24);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_5;
      v21[3] = &unk_1E7576968;
      v21[4] = v14;
      v22 = v10;
      v16 = *(a1 + 40);
      v17 = *(a1 + 72);
      v23 = v16;
      v27 = v17;
      v24 = *(a1 + 48);
      v25 = *(a1 + 64);
      v26 = *(a1 + 32);
      [v13 dispatchAsync:v15 block:v21];
    }

    else
    {
      [*(a1 + 48) leaveWithResult:v10];
    }
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = MEMORY[0x1E69BF2D0];
    if (v7)
    {
      v8 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      v8 = [v19 successWithResult:v20];
    }

    [v18 leaveWithResult:v8];
  }
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeUser];
  v2 = +[PLConcurrencyLimiter sharedLimiter];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_8;
  v3[3] = &unk_1E756DED0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  [v2 async:v3 identifyingBlock:0 library:*(a1 + 48)];
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) defaultPreferredResult];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24));
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) result];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_6;
  v6[3] = &unk_1E756DEA8;
  v9 = *(a1 + 80);
  v4 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v5 = [v2 processJobObjectIDs:v3 entity:1 library:v4 completion:v6];

  [*(a1 + 64) addChild:v5 withPendingUnitCount:{objc_msgSend(*(a1 + 72), "count")}];
  if ([*(a1 + 64) isCancelled])
  {
    [v5 cancel];
  }
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isSuccess])
  {
    v3 = [*(a1 + 32) result];
    *(*(*(a1 + 48) + 8) + 24) = [v3 count];
  }

  [*(a1 + 40) leaveWithResult:v4];
}

void __78__PLSearchIndexingEngine_indexAssetsIfNeededWithObjectIDs_library_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSuccess])
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48);
  }

  [*(a1 + 32) leaveWithResult:v3];
}

- (id)indexAssetsWithUUIDs:(id)ds partialUpdateMask:(unint64_t)mask completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(dsCopy, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PLSearchIndexingEngine_indexAssetsWithUUIDs_partialUpdateMask_completion___block_invoke;
  v16[3] = &unk_1E7573C00;
  v17 = dsCopy;
  selfCopy = self;
  v20 = completionCopy;
  v10 = v9;
  v19 = v10;
  v11 = completionCopy;
  v12 = dsCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __76__PLSearchIndexingEngine_indexAssetsWithUUIDs_partialUpdateMask_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(*(a1 + 40) + 8);
    *buf = 134218242;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Force indexing assets with uuids (%tu) for %@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 40) + 8) libraryWithName:"-[PLSearchIndexingEngine indexAssetsWithUUIDs:partialUpdateMask:completion:]_block_invoke"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PLSearchIndexingEngine_indexAssetsWithUUIDs_partialUpdateMask_completion___block_invoke_2;
  v10[3] = &unk_1E7576EE8;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v15 = v6;
  v13 = v7;
  v14 = v8;
  v9 = v5;
  [v9 performBlockAndWait:v10];
}

void __76__PLSearchIndexingEngine_indexAssetsWithUUIDs_partialUpdateMask_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v7 = 0;
  v4 = [PLManagedAsset fetchAssetsWithUUIDs:v2 managedObjectContext:v3 error:&v7];
  v5 = v7;

  if (v4)
  {
    [*(a1 + 48) _inLibraryPerform_donateAssets:v4 library:*(a1 + 40) progress:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v6 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLSearchIndexingEngine_close__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)openWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PLSearchIndexingEngine_openWithCompletion___block_invoke;
  v6[3] = &unk_1E7577C08;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(PLSearchIndexingEngine *)self _safePerformBlock:v6];
}

uint64_t __45__PLSearchIndexingEngine_openWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Requesting open search index for %@", &v9, 0xCu);
  }

  [*(*(a1 + 32) + 16) addUser];
  v4 = *(a1 + 40);
  v5 = MEMORY[0x1E69BF2D0];
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 successWithResult:v6];

  (*(v4 + 16))(v4, v7);
  return [*(*(a1 + 32) + 16) removeUser];
}

- (PLSearchIndexingEngine)initWithLibraryServicesProvider:(id)provider
{
  v41 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v38.receiver = self;
  v38.super_class = PLSearchIndexingEngine;
  v6 = [(PLSearchIndexingEngine *)&v38 init];
  if (v6)
  {
    v7 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = providerCopy;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing search indexing engine for %@", buf, 0xCu);
    }

    pathManager = [providerCopy pathManager];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    searchIndexDirectory = [pathManager searchIndexDirectory];
    v37 = 0;
    v11 = [defaultManager createDirectoryAtPath:searchIndexDirectory withIntermediateDirectories:1 attributes:0 error:&v37];
    v12 = v37;

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = v14;
      uTF8String = [v14 UTF8String];
      v17 = qos_class_self();
      v18 = dispatch_queue_attr_make_with_qos_class(0, v17, 0);
      v19 = dispatch_queue_create(uTF8String, v18);
      queue = v6->_queue;
      v6->_queue = v19;

      objc_storeStrong(&v6->_libraryServicesProvider, provider);
      v21 = [[PLSearchIndexConfiguration alloc] initWithPathManager:pathManager];
      configuration = v6->_configuration;
      v6->_configuration = v21;

      objc_initWeak(buf, v6);
      v23 = [PLSearchIndexingAccessManager alloc];
      v24 = v6->_queue;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __58__PLSearchIndexingEngine_initWithLibraryServicesProvider___block_invoke;
      v35[3] = &unk_1E75788C0;
      objc_copyWeak(&v36, buf);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58__PLSearchIndexingEngine_initWithLibraryServicesProvider___block_invoke_2;
      v33[3] = &unk_1E75788C0;
      objc_copyWeak(&v34, buf);
      v25 = [(PLSearchIndexingAccessManager *)v23 initWithQueue:v24 openBlock:v35 closeBlock:v33 deferCloseSeconds:5];
      accessManager = v6->_accessManager;
      v6->_accessManager = v25;

      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      queue_eventHistory = v6->_queue_eventHistory;
      v6->_queue_eventHistory = v27;

      v6->_dropLock._os_unfair_lock_opaque = 0;
      v29 = dispatch_group_create();
      dropLock_dropGroup = v6->_dropLock_dropGroup;
      v6->_dropLock_dropGroup = v29;

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      v31 = PLSearchBackendIndexingEngineGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v40 = v12;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_FAULT, "Failed to create Photos search index directory. Error: %@", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  return v6;
}

void __58__PLSearchIndexingEngine_initWithLibraryServicesProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inq_open];
}

void __58__PLSearchIndexingEngine_initWithLibraryServicesProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inq_close];
}

- (PLSearchIndexingEngine)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v5 = [[PLSearchIndexingEngineLibraryServicesProvider alloc] initWithLSM:managerCopy];

  v6 = [(PLSearchIndexingEngine *)self initWithLibraryServicesProvider:v5];
  return v6;
}

@end