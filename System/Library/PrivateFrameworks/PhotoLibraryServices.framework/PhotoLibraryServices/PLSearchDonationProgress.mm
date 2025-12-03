@interface PLSearchDonationProgress
- (PLSearchDonationProgress)initWithPathManager:(id)manager contextProviderBlock:(id)block;
- (id)_newSearchQueryForTaskID:(unint64_t)d completionHandler:(id)handler;
- (id)_setupProgressForTaskID:(unint64_t)d completionHandler:(id)handler;
- (id)_updateProgressForTaskID:(unint64_t)d;
- (id)donationProgressForMediaProcessingTaskID:(unint64_t)d completionHandler:(id)handler;
- (id)donationProgressForMediaProcessingTaskIDs:(id)ds completionHandler:(id)handler;
- (void)_lock_removeQueryForTaskID:(unint64_t)d;
- (void)_lock_storeQuery:(id)query forTaskID:(unint64_t)d;
- (void)dealloc;
@end

@implementation PLSearchDonationProgress

- (void)_lock_removeQueryForTaskID:(unint64_t)d
{
  lock_queryByTaskID = self->_lock_queryByTaskID;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  [(NSMutableDictionary *)lock_queryByTaskID removeObjectForKey:v5];

  if (![(NSMutableDictionary *)self->_lock_queryByTaskID count])
  {
    lock_spotlightSandboxExtension = self->_lock_spotlightSandboxExtension;
    self->_lock_spotlightSandboxExtension = 0;
  }
}

- (void)_lock_storeQuery:(id)query forTaskID:(unint64_t)d
{
  lock_queryByTaskID = self->_lock_queryByTaskID;
  queryCopy = query;
  v8 = [(NSMutableDictionary *)lock_queryByTaskID count];
  v9 = self->_lock_queryByTaskID;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  [(NSMutableDictionary *)v9 setObject:queryCopy forKeyedSubscript:v10];

  if (!v8 && [(NSMutableDictionary *)self->_lock_queryByTaskID count]== 1)
  {
    v11 = [[PLSearchSpotlightSandboxExtension alloc] initWithPathManager:self->_pathManager];
    lock_spotlightSandboxExtension = self->_lock_spotlightSandboxExtension;
    self->_lock_spotlightSandboxExtension = v11;
  }
}

- (id)_updateProgressForTaskID:(unint64_t)d
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__60974;
  v9 = __Block_byref_object_dispose__60975;
  v10 = 0;
  PLRunWithUnfairLock();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __53__PLSearchDonationProgress__updateProgressForTaskID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *(*(a1 + 32) + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v4 && *(*(*(a1 + 40) + 8) + 40))
  {
    v10 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
      v12 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
      v15 = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = [v4 foundItemCount];
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "taskID %@ updating completed count %lld to %llu", &v15, 0x20u);
    }

    [*(*(*(a1 + 40) + 8) + 40) setCompletedUnitCount:{objc_msgSend(v4, "foundItemCount")}];
  }

  else
  {
    v13 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to update progress for taskID %@", &v15, 0xCu);
    }
  }

  [*(a1 + 32) _lock_removeQueryForTaskID:*(a1 + 48)];
}

- (id)_setupProgressForTaskID:(unint64_t)d completionHandler:(id)handler
{
  v81[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = PLInternalPredicateForMediaProcessingTaskID(d, 0, 0, 0, 0, 0.0);
  [v9 setPredicate:v10];

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__60974;
  v66 = __Block_byref_object_dispose__60975;
  v67 = 0;
  v11 = _Block_copy(self->_contextProviderBlock);
  v12 = v11;
  if (v11)
  {
    v13 = (*(v11 + 2))(v11);
    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Context provider block is nil", buf, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A278];
    v81[0] = @"Context provider block is nil";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v17 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v16];
    v18 = v63[5];
    v63[5] = v17;
  }

  if (!v63[5])
  {
    v19 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "MOC returned from context provider block is nil", buf, 2u);
    }

    v20 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A278];
    v79 = @"MOC returned from context provider block is nil";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:46502 userInfo:v21];
    v23 = v63[5];
    v63[5] = v22;
  }

  v13 = 0;
LABEL_12:
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __70__PLSearchDonationProgress__setupProgressForTaskID_completionHandler___block_invoke;
  v56[3] = &unk_1E756E960;
  v59 = &v68;
  v24 = v13;
  v57 = v24;
  v25 = v9;
  v58 = v25;
  v60 = &v62;
  dCopy = d;
  [v24 performBlockAndWait:v56];
  if (v69[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    handlerCopy[2](handlerCopy, 0, v63[5]);
    v26 = 0;
  }

  else
  {
    *buf = 0;
    v51 = buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__60974;
    v54 = __Block_byref_object_dispose__60975;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__60974;
    v48 = __Block_byref_object_dispose__60975;
    v49 = 0;
    v40 = MEMORY[0x1E69E9820];
    selfCopy = self;
    dCopy2 = d;
    v27 = handlerCopy;
    v42 = v27;
    PLRunWithUnfairLock();
    if (v45[5])
    {
      v28 = PLSearchBackendDonationProgressGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{d, v40, 3221225472, __70__PLSearchDonationProgress__setupProgressForTaskID_completionHandler___block_invoke_79, &unk_1E756E988, selfCopy, v27, buf, &v68, &v44, d}];
        v30 = MEMORY[0x1E696AD98];
        queryContext = [v45[5] queryContext];
        v32 = [v30 numberWithInteger:{objc_msgSend(queryContext, "queryID")}];
        *v74 = 138412546;
        v75 = v29;
        v76 = 2112;
        v77 = v32;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Starting search query with taskID %@ with queryID %@", v74, 0x16u);
      }

      [v45[5] start];
      v33 = PLSearchBackendDonationProgressGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(v51 + 5);
        *v74 = 138412290;
        v75 = v34;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Reporting %@ progress", v74, 0xCu);
      }

      v26 = *(v51 + 5);
    }

    else
    {
      v35 = PLSearchBackendDonationProgressGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v74 = 0;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "CSSearchQuery was nil", v74, 2u);
      }

      v36 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A278];
      v73 = @"nil CSSearchQuery";
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:{1, v40, 3221225472, __70__PLSearchDonationProgress__setupProgressForTaskID_completionHandler___block_invoke_79, &unk_1E756E988, self, v27, buf, &v68, &v44, dCopy2}];
      v38 = [v36 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v37];

      v27[2](v27, 0, v38);
      v26 = 0;
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  return v26;
}

void __70__PLSearchDonationProgress__setupProgressForTaskID_completionHandler___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[8]];
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failure to get count of allowed assets for taskID %@: %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

uint64_t __70__PLSearchDonationProgress__setupProgressForTaskID_completionHandler___block_invoke_79(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    [v7 setTotalUnitCount:*(*(*(a1 + 56) + 8) + 24)];
    v8 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 56) + 8) + 24);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
      v11 = MEMORY[0x1E696AD98];
      v12 = [*(*(*(a1 + 64) + 8) + 40) queryContext];
      v13 = [v11 numberWithInteger:{objc_msgSend(v12, "queryID")}];
      v24 = 134218498;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Received %lu assets for taskID %@ with queryID %@", &v24, 0x20u);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:*(*(*(a1 + 56) + 8) + 24)];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 48) + 8) + 40);
    v18 = *(*(a1 + 32) + 40);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    [v18 setObject:v17 forKeyedSubscript:v19];
  }

  v20 = [*(a1 + 32) _newSearchQueryForTaskID:*(a1 + 72) completionHandler:*(a1 + 40)];
  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  return [*(a1 + 32) _lock_storeQuery:*(*(*(a1 + 64) + 8) + 40) forTaskID:*(a1 + 72)];
}

- (id)_newSearchQueryForTaskID:(unint64_t)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = 0;
  if (d <= 2)
  {
    if (d == 1)
    {
      v7 = *MEMORY[0x1E69647D8];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLSearchDonationProgressVersionProvider mediaAnalysisVersion](self->_versionProvider, "mediaAnalysisVersion")}];
    }

    else
    {
      v8 = 0;
      if (d != 2)
      {
        goto LABEL_17;
      }

      v7 = *MEMORY[0x1E6964828];
      v9 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLSearchDonationProgressVersionProvider sceneAnalysisVersion](self->_versionProvider, "sceneAnalysisVersion")}];
    }
  }

  else if (d == 3)
  {
    v7 = *MEMORY[0x1E6964790];
    v9 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLSearchDonationProgressVersionProvider faceAnalysisVersion](self->_versionProvider, "faceAnalysisVersion")}];
  }

  else if (d == 10)
  {
    v7 = *MEMORY[0x1E6964758];
    v9 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLSearchDonationProgressVersionProvider characterRecognitionAlgorithmVersion](self->_versionProvider, "characterRecognitionAlgorithmVersion")}];
  }

  else
  {
    v8 = 0;
    if (d != 17)
    {
      goto LABEL_17;
    }

    v7 = *MEMORY[0x1E69647D0];
    v9 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLSearchDonationProgressVersionProvider mediaAnalysisImageVersion](self->_versionProvider, "mediaAnalysisImageVersion")}];
  }

  v8 = v9;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
    v14 = [v12 stringWithFormat:@"%@ == %@ && %@ >= %@", *MEMORY[0x1E6963D40], v13, v7, v8];

    v15 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLSearchDonationProgress:%tu:%@", d, v7];
    [v15 setReason:v16];

    [v15 setDisableBlockingOnIndex:1];
    if (+[PLSpotlightDonationUtilities spotlightPrivateIndexEnabled])
    {
      spotlightSearchIndexPath = [(PLPhotoLibraryPathManager *)self->_pathManager spotlightSearchIndexPath];
      v11 = [objc_alloc(MEMORY[0x1E6964E30]) initWithPath:spotlightSearchIndexPath queryString:v14 context:v15];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v14 queryContext:v15];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__PLSearchDonationProgress__newSearchQueryForTaskID_completionHandler___block_invoke;
    v26[3] = &unk_1E756E910;
    v26[4] = &buf;
    v26[5] = d;
    [v11 setFoundItemsHandler:v26];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v11);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__PLSearchDonationProgress__newSearchQueryForTaskID_completionHandler___block_invoke_69;
    v19[3] = &unk_1E756E938;
    v23[1] = d;
    objc_copyWeak(&v22, &from);
    p_buf = &buf;
    objc_copyWeak(v23, &location);
    v20 = handlerCopy;
    [v11 setCompletionHandler:v19];

    objc_destroyWeak(v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);

    goto LABEL_24;
  }

LABEL_17:
  v14 = PLSearchBackendDonationProgressGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = d;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "No search query for taskID %tu", &buf, 0xCu);
  }

  v11 = 0;
LABEL_24:

  return v11;
}

void __71__PLSearchDonationProgress__newSearchQueryForTaskID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 count];
  v4 = PLSearchBackendDonationProgressGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Query for taskID %tu found %tu items", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) += v3;
}

void __71__PLSearchDonationProgress__newSearchQueryForTaskID_completionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      v18 = 134218242;
      v19 = v5;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Query for taskID %tu completed with error: %@", &v18, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained foundItemCount];

  if (v7 != *(*(*(a1 + 40) + 8) + 24))
  {
    v8 = PLSearchBackendDonationProgressGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(*(a1 + 40) + 8) + 24);
      v18 = 134218240;
      v19 = v7;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Query foundItemCount %tu not equal to the number of items actually returned to us %tu", &v18, 0x16u);
    }
  }

  v10 = PLSearchBackendDonationProgressGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 64);
    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = [v12 queryContext];
    v14 = [v13 queryID];
    v18 = 134218496;
    v19 = v11;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Query for taskID %tu with queryID %tu found %tu items", &v18, 0x20u);
  }

  v15 = objc_loadWeakRetained((a1 + 56));
  v16 = [v15 _updateProgressForTaskID:*(a1 + 64)];

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v16, v3);
  }
}

- (id)donationProgressForMediaProcessingTaskIDs:(id)ds completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__60974;
  v33[4] = __Block_byref_object_dispose__60975;
  v34 = 0;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        unsignedIntegerValue = [v11 unsignedIntegerValue];
        dispatch_group_enter(v7);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __88__PLSearchDonationProgress_donationProgressForMediaProcessingTaskIDs_completionHandler___block_invoke;
        v26[3] = &unk_1E7575F00;
        v28 = v33;
        v27 = v7;
        v13 = [(PLSearchDonationProgress *)self donationProgressForMediaProcessingTaskID:unsignedIntegerValue completionHandler:v26];
        if (v13)
        {
          [v21 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v14 = dispatch_queue_create("[PLSearchDonationProgress donationProgressForMediaProcessingTaskIDs:completionHandler:]", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PLSearchDonationProgress_donationProgressForMediaProcessingTaskIDs_completionHandler___block_invoke_2;
  block[3] = &unk_1E7577918;
  v15 = handlerCopy;
  v24 = v15;
  v16 = v21;
  v23 = v16;
  v25 = v33;
  dispatch_group_notify(v7, v14, block);
  v17 = [v16 copy];

  _Block_object_dispose(v33, 8);

  return v17;
}

void __88__PLSearchDonationProgress_donationProgressForMediaProcessingTaskIDs_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __88__PLSearchDonationProgress_donationProgressForMediaProcessingTaskIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (![*(a1 + 32) count] && !*(*(*(a1 + 48) + 8) + 40))
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = *MEMORY[0x1E69BFF48];
      v10 = *MEMORY[0x1E696A278];
      v11[0] = @"No valid child progress objects";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v5 = [v2 errorWithDomain:v3 code:41008 userInfo:v4];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) copy];
    (*(v8 + 16))(v8, v9, *(*(*(a1 + 48) + 8) + 40));
  }
}

- (id)donationProgressForMediaProcessingTaskID:(unint64_t)d completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(PLSearchDonationProgress *)self _setupProgressForTaskID:d completionHandler:handler];
  v6 = PLPhotosSearchGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    dCopy = d;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLSearchDonationProgress - donationProgress is %@ for taskID %lu", &v8, 0x16u);
  }

  return v5;
}

void __38__PLSearchDonationProgress_invalidate__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v15 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 16);
  *(v13 + 16) = 0;
}

- (void)dealloc
{
  [(PLSearchDonationProgress *)self invalidate];
  v3.receiver = self;
  v3.super_class = PLSearchDonationProgress;
  [(PLSearchDonationProgress *)&v3 dealloc];
}

- (PLSearchDonationProgress)initWithPathManager:(id)manager contextProviderBlock:(id)block
{
  managerCopy = manager;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = PLSearchDonationProgress;
  v9 = [(PLSearchDonationProgress *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pathManager, manager);
    v11 = _Block_copy(blockCopy);
    contextProviderBlock = v10->_contextProviderBlock;
    v10->_contextProviderBlock = v11;

    v13 = objc_alloc_init(PLSearchDonationProgressVersionProvider);
    versionProvider = v10->_versionProvider;
    v10->_versionProvider = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_progressByTaskID = v10->_lock_progressByTaskID;
    v10->_lock_progressByTaskID = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_queryByTaskID = v10->_lock_queryByTaskID;
    v10->_lock_queryByTaskID = v17;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

@end