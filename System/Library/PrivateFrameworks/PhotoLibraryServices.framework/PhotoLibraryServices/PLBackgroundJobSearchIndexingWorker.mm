@interface PLBackgroundJobSearchIndexingWorker
+ (id)_criteriaToUse;
- (BOOL)_isErrorCausedByLocaleChange:(id)change maxDepth:(unint64_t)depth;
- (PLBackgroundJobSearchIndexingWorker)initWithLibraryBundle:(id)bundle;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (signed)_jobType;
- (void)_performWorkOnItem:(id)item completion:(id)completion;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
@end

@implementation PLBackgroundJobSearchIndexingWorker

- (signed)_jobType
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)_isErrorCausedByLocaleChange:(id)change maxDepth:(unint64_t)depth
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v7 = changeCopy;
  LOBYTE(v8) = 0;
  if (changeCopy && depth)
  {
    domain = [changeCopy domain];
    if ([domain isEqual:*MEMORY[0x1E69BFF48]])
    {
      code = [v7 code];

      if (code == 45003)
      {
        LOBYTE(v8) = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    underlyingErrors = [v7 underlyingErrors];
    v8 = [underlyingErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v12 = *v17;
      v13 = depth - 1;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          if ([(PLBackgroundJobSearchIndexingWorker *)self _isErrorCausedByLocaleChange:*(*(&v16 + 1) + 8 * i) maxDepth:v13])
          {
            LOBYTE(v8) = 1;
            goto LABEL_17;
          }
        }

        v8 = [underlyingErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

LABEL_18:

  return v8;
}

- (void)stopWorkingOnItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = PLSearchBackendIndexStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = itemCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Request received to stop work item: %@", buf, 0xCu);
  }

  v6 = PLSafeResultWithUnfairLock();
  libraryServicesManager = [v6 libraryServicesManager];
  searchIndexingEngine = [libraryServicesManager searchIndexingEngine];
  [searchIndexingEngine pauseSearchIndexRebuildWithSourceName:@"Background Job"];

  [(PLAtomicProgressIvar *)self->_progressContainer cancel];
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  if (itemCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSearchIndexingWorker.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"_item"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSearchIndexingWorker.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSearchIndexingWorker.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"[_item isKindOfClass:[PLSearchIndexPendingWorkItem class]]"}];
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__PLBackgroundJobSearchIndexingWorker_performWorkOnItem_inLibrary_completion___block_invoke;
  v23 = &unk_1E7578848;
  selfCopy = self;
  v25 = libraryCopy;
  v12 = libraryCopy;
  v13 = itemCopy;
  PLSafeRunWithUnfairLock();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__PLBackgroundJobSearchIndexingWorker_performWorkOnItem_inLibrary_completion___block_invoke_2;
  v18[3] = &unk_1E7576050;
  v18[4] = self;
  v19 = completionCopy;
  v14 = completionCopy;
  [(PLBackgroundJobSearchIndexingWorker *)self _performWorkOnItem:v13 completion:v18];
}

void __78__PLBackgroundJobSearchIndexingWorker_performWorkOnItem_inLibrary_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  PLSafeRunWithUnfairLock();
  (*(*(a1 + 40) + 16))();
}

void __78__PLBackgroundJobSearchIndexingWorker_performWorkOnItem_inLibrary_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

- (void)_performWorkOnItem:(id)item completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__34451;
  v47[4] = __Block_byref_object_dispose__34452;
  v48 = 0;
  v46[2] = MEMORY[0x1E69E9820];
  v46[3] = 3221225472;
  v46[4] = __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke;
  v46[5] = &unk_1E75787F8;
  v46[6] = self;
  v7 = PLSafeResultWithUnfairLock();
  libraryServicesManager = [v7 libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByAppendingString:@".donateCompletion"];
    v13 = v12;
    uTF8String = [v12 UTF8String];
    v15 = qos_class_self();
    v16 = dispatch_queue_attr_make_with_qos_class(0, v15, 0);
    v17 = dispatch_queue_create(uTF8String, v16);

    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = PLPhotosSearchGetLog();
    spid = os_signpost_id_generate(v19);

    v20 = v19;
    v21 = v20;
    log = v20;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = os_signpost_enabled(v20);
      v21 = log;
      if (v22)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchIndexBackgroundWorkerPerformWorkOnItem", "", buf, 2u);
        v21 = log;
      }
    }

    if ([itemCopy rebuildInProgress])
    {
      libraryServicesManager2 = [v7 libraryServicesManager];
      searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_80;
      v45[3] = &unk_1E756B358;
      v46[1] = v47;
      v46[0] = v18;
      [searchIndexingEngine resumeSearchIndexRebuildIfNeededForLibrary:v7 calledBy:@"Background Job" completion:v45];
      v25 = v46;
    }

    else
    {
      libraryServicesManager2 = [v7 libraryServicesManager];
      searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];
      jobType = [itemCopy jobType];
      jobFlags = [itemCopy jobFlags];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_2;
      v43[3] = &unk_1E756B380;
      v44[1] = v47;
      v44[0] = v18;
      v30 = [searchIndexingEngine processBatchOfJobsWithType:jobType flags:jobFlags library:v7 completion:v43];
      [(PLAtomicProgressIvar *)self->_progressContainer setProgress:v30];

      v25 = v44;
    }

    v31 = +[PLConcurrencyLimiter sharedLimiter];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3254779904;
    v36[2] = __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_3;
    v36[3] = &unk_1F0F038B8;
    v32 = log;
    v41 = v32;
    v42 = spid;
    v37 = itemCopy;
    selfCopy = self;
    v40 = v47;
    v39 = completionCopy;
    [v31 groupNotify:v18 queue:v17 block:v36];
  }

  else
  {
    v26 = PLSearchBackendIndexWorkerGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v52 = v7;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_FAULT, "Search indexing not enabled for library %@", buf, 0xCu);
    }

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v49 = *MEMORY[0x1E696A278];
    v50 = @"Search indexing not enabled for library";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v18 = [v27 initWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v17];
    (*(completionCopy + 2))(completionCopy, v18);
  }

  _Block_object_dispose(v47, 8);
}

void __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_80(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __69__PLBackgroundJobSearchIndexingWorker__performWorkOnItem_completion___block_invoke_3(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) jobType];
    v6 = [*(a1 + 32) jobFlags];
    v7 = [*(a1 + 32) rebuildInProgress];
    *buf = 67109632;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PLSearchIndexBackgroundWorkerPerformWorkOnItem", "JobType: %hd, JobFlags: %lld, RebuildInProgress: %d", buf, 0x18u);
  }

  [*(*(a1 + 40) + 120) setProgress:0];
  if ([*(*(*(a1 + 56) + 8) + 40) isFailure] && (v8 = *(a1 + 40), objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "error"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "_isErrorCausedByLocaleChange:maxDepth:", v9, 4), v9, v8))
  {
    v10 = *(a1 + 48);
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E69BFF48];
    v13 = [*(*(*(a1 + 56) + 8) + 40) error];
    v18 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = [v11 initWithDomain:v12 code:50004 userInfo:v14];
    (*(v10 + 16))(v10, v15);
  }

  else
  {
    v16 = *(a1 + 48);
    v13 = [*(*(*(a1 + 56) + 8) + 40) error];
    (*(v16 + 16))(v16, v13);
  }
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  v53[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  criteriasCopy = criterias;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobSearchIndexingWorker.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  _criteriaToUse = [objc_opt_class() _criteriaToUse];
  v10 = [criteriasCopy containsObject:_criteriaToUse];

  if (v10)
  {
    v11 = PLPhotosSearchGetLog();
    v12 = os_signpost_id_generate(v11);

    v13 = v11;
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLSearchIndexBackgroundWorkerWorkItemsNeedingProcessing", "", &buf, 2u);
    }

    libraryServicesManager = [libraryCopy libraryServicesManager];
    isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

    if (isSearchIndexingEnabled)
    {
      if (-[PLBackgroundJobSearchIndexingWorker _supportsIndexRebuild](self, "_supportsIndexRebuild") && ([libraryCopy libraryServicesManager], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "searchIndexingEngine"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "hasRebuildWorkToDoForLibrary:", libraryCopy), v19, v18, v20))
      {
        v21 = v14;
        v22 = v21;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          libraryServicesManager2 = [libraryCopy libraryServicesManager];
          wellKnownPhotoLibraryIdentifier = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = wellKnownPhotoLibraryIdentifier;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v12, "PLSearchIndexBackgroundWorkerWorkItemsNeedingProcessing", "WellKnownPhotoLibraryIdentifier: %tu, HasRebuildWorkToDoForLibrary", &buf, 0xCu);
        }

        v25 = [PLBackgroundJobWorkerPendingWorkItems alloc];
        _criteriaToUse2 = [objc_opt_class() _criteriaToUse];
        v27 = +[PLSearchIndexPendingWorkItem rebuildInProgressPendingWorkItem];
        v53[0] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
        initWithZeroWorkItems = [(PLBackgroundJobWorkerPendingWorkItems *)v25 initWithCriteria:_criteriaToUse2 workItemsNeedingProcessing:v28];
      }

      else
      {
        if ([(PLBackgroundJobSearchIndexingWorker *)self _supportsIndexRebuild])
        {
          [PLSpotlightReindexing drainSpotlightReindexIdentifiersIfNeededForLibrary:libraryCopy];
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy__34451;
        v51 = __Block_byref_object_dispose__34452;
        v52 = 0;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __90__PLBackgroundJobSearchIndexingWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
        v40[3] = &unk_1E7578820;
        v31 = libraryCopy;
        v41 = v31;
        selfCopy = self;
        p_buf = &buf;
        [v31 performBlockAndWait:v40];
        v32 = v14;
        v33 = v32;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          libraryServicesManager3 = [v31 libraryServicesManager];
          wellKnownPhotoLibraryIdentifier2 = [libraryServicesManager3 wellKnownPhotoLibraryIdentifier];
          workItemsNeedingProcessing = [*(*(&buf + 1) + 40) workItemsNeedingProcessing];
          v37 = [workItemsNeedingProcessing count];
          *v44 = 134218240;
          v45 = wellKnownPhotoLibraryIdentifier2;
          v46 = 2048;
          v47 = v37;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v33, OS_SIGNPOST_INTERVAL_END, v12, "PLSearchIndexBackgroundWorkerWorkItemsNeedingProcessing", "WellKnownPhotoLibraryIdentifier: %tu, PendingWorkItems: %tu", v44, 0x16u);
        }

        initWithZeroWorkItems = *(*(&buf + 1) + 40);
        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v30 = PLSearchBackendIndexWorkerGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = libraryCopy;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_FAULT, "Search indexing not enabled for library %@", &buf, 0xCu);
      }

      initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    }
  }

  else
  {
    initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
  }

  return initWithZeroWorkItems;
}

void __90__PLBackgroundJobSearchIndexingWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = +[PLBackgroundJobWorkItem nextSearchIndexWorkItemJobFlagsInManagedObjectContext:jobType:](PLBackgroundJobWorkItem, "nextSearchIndexWorkItemJobFlagsInManagedObjectContext:jobType:", v2, [*(a1 + 40) _jobType]);

  if ([v3 isFailure])
  {
    v4 = PLSearchBackendIndexWorkerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) workerName];
      v6 = [v3 error];
      *buf = 138543618;
      v50 = v5;
      v51 = 2112;
      v52 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "%{public}@ unable to fetch work items needing processing, error: %@", buf, 0x16u);
    }

    v7 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = [v3 result];
    v11 = [v10 unsignedIntegerValue];

    if (v11)
    {
      v12 = [v3 result];
      v13 = PLSearchBackendIndexWorkerGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) workerName];
        v15 = PLBackgroundJobWorkerSearchJobFlagsDescription([v12 integerValue]);
        *buf = 138543618;
        v50 = v14;
        v51 = 2114;
        v52 = v15;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ found search jobs needing processing with flags %{public}@", buf, 0x16u);
      }

      v16 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v17 = [objc_opt_class() _criteriaToUse];
      v18 = +[PLSearchIndexPendingWorkItem pendingWorkItemWithType:flags:](PLSearchIndexPendingWorkItem, "pendingWorkItemWithType:flags:", [*(a1 + 40) _jobType], objc_msgSend(v12, "integerValue"));
      v48 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      v20 = [(PLBackgroundJobWorkerPendingWorkItems *)v16 initWithCriteria:v17 workItemsNeedingProcessing:v19];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40) || ![*(a1 + 40) _supportsIndexRebuild])
  {
    v24 = v3;
  }

  else
  {
    v23 = [*(a1 + 32) managedObjectContext];
    v24 = [PLBackgroundJobWorkItem nextSearchIndexWorkItemJobFlagsInManagedObjectContext:v23 jobType:3];

    if ([v24 isFailure])
    {
      v25 = PLSearchBackendIndexWorkerGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 40) workerName];
        v27 = [v24 error];
        *buf = 138543618;
        v50 = v26;
        v51 = 2112;
        v52 = v27;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "%{public}@ unable to fetch search repair failure work items needing processing, error: %@", buf, 0x16u);
      }

      v28 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
      v29 = *(*(a1 + 48) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v31 = [v24 result];
      v32 = [v31 unsignedIntegerValue];

      if (v32)
      {
        v33 = [v24 result];
        v34 = PLSearchBackendIndexWorkerGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [*(a1 + 40) workerName];
          v36 = PLBackgroundJobWorkerSearchJobFlagsDescription([v33 integerValue]);
          *buf = 138543618;
          v50 = v35;
          v51 = 2114;
          v52 = v36;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ found search repair failure jobs needing processing with flags %{public}@", buf, 0x16u);
        }

        v37 = [PLBackgroundJobWorkerPendingWorkItems alloc];
        v38 = [objc_opt_class() _criteriaToUse];
        v39 = +[PLSearchIndexPendingWorkItem pendingWorkItemWithType:flags:](PLSearchIndexPendingWorkItem, "pendingWorkItemWithType:flags:", 3, [v33 integerValue]);
        v47 = v39;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
        v41 = [(PLBackgroundJobWorkerPendingWorkItems *)v37 initWithCriteria:v38 workItemsNeedingProcessing:v40];
        v42 = *(*(a1 + 48) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = v41;
      }
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v44 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    v45 = *(*(a1 + 48) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;
  }
}

- (PLBackgroundJobSearchIndexingWorker)initWithLibraryBundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PLBackgroundJobSearchIndexingWorker;
  v3 = [(PLBackgroundJobWorker *)&v8 initWithLibraryBundle:bundle];
  v4 = v3;
  if (v3)
  {
    v3->_lock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(PLAtomicProgressIvar);
    progressContainer = v4->_progressContainer;
    v4->_progressContainer = v5;
  }

  return v4;
}

+ (id)_criteriaToUse
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

@end