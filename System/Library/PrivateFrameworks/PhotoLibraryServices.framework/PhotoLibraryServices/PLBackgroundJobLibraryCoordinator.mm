@interface PLBackgroundJobLibraryCoordinator
- (PLBackgroundJobLibraryCoordinator)initWithStatusCenter:(id)center;
- (PLBackgroundJobLibraryCoordinator)initWithWorkerCoordinator:(id)coordinator statusCenter:(id)center;
- (PLBackgroundJobLibraryCoordinatorDelegate)delegate;
- (id)pendingJobsOnBuffer:(id)buffer;
- (id)pendingJobsOnBundles:(id)bundles;
- (void)_handleAllBundlesCompleted;
- (void)_handleBundleComplete:(id)complete;
- (void)_submitNextQueuedBundle;
- (void)startBackgroundJobsOnBundles:(id)bundles withCriteria:(id)criteria reportProgressUsingBlock:(id)block;
- (void)stopBackgroundJobsOnAllBundles;
- (void)workerCoordinatorDidFinishAllSubmittedJobsOnBundle:(id)bundle;
@end

@implementation PLBackgroundJobLibraryCoordinator

- (PLBackgroundJobLibraryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)workerCoordinatorDidFinishAllSubmittedJobsOnBundle:(id)bundle
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(PLBackgroundJobLibraryCoordinator *)self _handleBundleComplete:self->_currentPhotoLibraryBundle];
  [(NSMutableArray *)self->_pendingPhotoLibraryBundles removeObject:self->_currentPhotoLibraryBundle];
  v4 = [(NSMutableArray *)self->_pendingPhotoLibraryBundles count];
  v5 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pendingPhotoLibraryBundles = self->_pendingPhotoLibraryBundles;
    currentPhotoLibraryBundle = self->_currentPhotoLibraryBundle;
    v9 = 138412546;
    v10 = currentPhotoLibraryBundle;
    v11 = 2112;
    v12 = pendingPhotoLibraryBundles;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Removed bundle:%@ from pending bundles queue: %@", &v9, 0x16u);
  }

  v8 = self->_currentPhotoLibraryBundle;
  self->_currentPhotoLibraryBundle = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(PLBackgroundJobLibraryCoordinator *)self _submitNextQueuedBundle];
  }

  else
  {
    [(PLBackgroundJobLibraryCoordinator *)self _handleAllBundlesCompleted];
  }
}

- (void)stopBackgroundJobsOnAllBundles
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_pendingPhotoLibraryBundles count];
    *buf = 134217984;
    v19 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Clearing %tu bundles from _pendingPhotoLibraryBundles queue", buf, 0xCu);
  }

  v5 = [(NSMutableArray *)self->_pendingPhotoLibraryBundles count];
  v6 = [(NSMutableArray *)self->_pendingPhotoLibraryBundles copy];
  [(NSMutableArray *)self->_pendingPhotoLibraryBundles removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([v12 isEqual:{self->_currentPhotoLibraryBundle, v13}] & 1) == 0)
        {
          [(PLBackgroundJobLibraryCoordinator *)self _handleBundleComplete:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (v5)
  {
    [(PLBackgroundJobWorkerCoordinator *)self->_workerCoordinator stopAllBackgroundJobs];
  }
}

- (void)_handleAllBundlesCompleted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 libraryCoordinatorFinishedJobsOnAllSubmittedBundles];
  }
}

- (void)_handleBundleComplete:(id)complete
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    bundle = [completeCopy bundle];
    criteria = [completeCopy criteria];
    [v6 libraryCoordinatorFinishedJobsOnSubmittedBundle:bundle withCriteria:criteria];
  }
}

- (void)_submitNextQueuedBundle
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  firstObject = [(NSMutableArray *)self->_pendingPhotoLibraryBundles firstObject];
  currentPhotoLibraryBundle = self->_currentPhotoLibraryBundle;
  self->_currentPhotoLibraryBundle = firstObject;

  v5 = self->_currentPhotoLibraryBundle;
  os_unfair_lock_unlock(&self->_lock);
  v6 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    bundle = [(PLPhotoLibraryBundleCriteriaTuple *)v5 bundle];
    libraryURL = [bundle libraryURL];
    criteria = [(PLPhotoLibraryBundleCriteriaTuple *)v5 criteria];
    name = [criteria name];
    v15 = 138412546;
    v16 = libraryURL;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Submitted bundle %@ for criteria %@ processing", &v15, 0x16u);
  }

  workerCoordinator = self->_workerCoordinator;
  bundle2 = [(PLPhotoLibraryBundleCriteriaTuple *)v5 bundle];
  criteria2 = [(PLPhotoLibraryBundleCriteriaTuple *)v5 criteria];
  progressBlock = [(PLPhotoLibraryBundleCriteriaTuple *)v5 progressBlock];
  [(PLBackgroundJobWorkerCoordinator *)workerCoordinator submitBundleForProcessing:bundle2 withCriteria:criteria2 reportProgressUsingBlock:progressBlock];
}

- (void)startBackgroundJobsOnBundles:(id)bundles withCriteria:(id)criteria reportProgressUsingBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  criteriaCopy = criteria;
  blockCopy = block;
  if (blockCopy)
  {
    v11 = blockCopy;
  }

  else
  {
    v11 = &__block_literal_global_65579;
  }

  os_unfair_lock_lock(&self->_lock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104__PLBackgroundJobLibraryCoordinator_startBackgroundJobsOnBundles_withCriteria_reportProgressUsingBlock___block_invoke_2;
  v19[3] = &unk_1E756F9B0;
  v12 = criteriaCopy;
  v20 = v12;
  v13 = v11;
  selfCopy = self;
  v22 = v13;
  [bundlesCopy enumerateObjectsUsingBlock:v19];
  v14 = self->_currentPhotoLibraryBundle;
  v15 = [(NSMutableArray *)self->_pendingPhotoLibraryBundles count];
  os_unfair_lock_unlock(&self->_lock);
  v16 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [bundlesCopy count];
    *buf = 134217984;
    v24 = v17;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Added %tu bundles to the pending bundles queue", buf, 0xCu);
  }

  if (![bundlesCopy count])
  {
    v18 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_FAULT, "LibraryCoordinator asked to add 0 bundles to pending bundles queue!", buf, 2u);
    }
  }

  if (!v14 && v15)
  {
    [(PLBackgroundJobLibraryCoordinator *)self _submitNextQueuedBundle];
  }
}

void __104__PLBackgroundJobLibraryCoordinator_startBackgroundJobsOnBundles_withCriteria_reportProgressUsingBlock___block_invoke_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[PLPhotoLibraryBundleCriteriaTuple alloc] initWithBundle:v3 withCriteria:a1[4] withProgressReportBlock:a1[6]];

  [*(a1[5] + 16) addObject:v4];
  v5 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1[5] + 16);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Adding bundle %@ to pending bundles queue: %@", &v7, 0x16u);
  }
}

- (id)pendingJobsOnBuffer:(id)buffer
{
  v50 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Checking all library bundles for pending jobs", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [bufferCopy bundles];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v34)
  {
    v31 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        libraryURL = [v6 libraryURL];
        absoluteString = [libraryURL absoluteString];

        v9 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = absoluteString;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Checking library %@ for pending jobs", buf, 0xCu);
        }

        workerCoordinator = self->_workerCoordinator;
        v11 = [bufferCopy workerTypesForBundle:v6];
        v12 = [(PLBackgroundJobWorkerCoordinator *)workerCoordinator pendingJobsForBundle:v6 workerTypes:v11];

        if (![v12 count])
        {
          v13 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = absoluteString;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Library %@ does not have pending jobs", buf, 0xCu);
          }
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v36 + 1) + 8 * i);
              v20 = PLBackgroundJobServiceGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                name = [v19 name];
                *buf = 138412546;
                v45 = absoluteString;
                v46 = 2112;
                v47 = name;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Library %@ has pending jobs for criteria %@", buf, 0x16u);
              }

              v22 = [v4 objectForKeyedSubscript:v19];

              if (!v22)
              {
                v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [v4 setObject:v23 forKeyedSubscript:v19];
              }

              v24 = [v4 objectForKeyedSubscript:v19];
              [v24 addObject:v6];
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v16);
        }

        v5 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v34);
  }

  v25 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v4 count];
    v27 = @"YES";
    if (!v26)
    {
      v27 = @"NO";
    }

    *buf = 138412290;
    v45 = v27;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Checked all submitted library bundles. Result: %@", buf, 0xCu);
  }

  if ([v4 count])
  {
    v28 = [v4 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)pendingJobsOnBundles:(id)bundles
{
  v20 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v5 = objc_alloc_init(PLBackgroundJobWorkerTypesBuffer);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = bundlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = +[PLBackgroundJobWorkerTypes allTypesMask];
        [(PLBackgroundJobWorkerTypesBuffer *)v5 addBackgroundJobWorkerTypes:v12 forBundle:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(PLBackgroundJobLibraryCoordinator *)self pendingJobsOnBuffer:v5];

  return v13;
}

- (PLBackgroundJobLibraryCoordinator)initWithWorkerCoordinator:(id)coordinator statusCenter:(id)center
{
  coordinatorCopy = coordinator;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = PLBackgroundJobLibraryCoordinator;
  v9 = [(PLBackgroundJobLibraryCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_statusCenter, centerCopy);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingPhotoLibraryBundles = v10->_pendingPhotoLibraryBundles;
    v10->_pendingPhotoLibraryBundles = v11;

    objc_storeStrong(&v10->_workerCoordinator, coordinator);
    [(PLBackgroundJobWorkerCoordinator *)v10->_workerCoordinator setDelegate:v10];
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (PLBackgroundJobLibraryCoordinator)initWithStatusCenter:(id)center
{
  centerCopy = center;
  v5 = [[PLBackgroundJobWorkerCoordinator alloc] initWithWorkerCoordinatorWorkerMode:0 statusCenter:centerCopy];
  v6 = [(PLBackgroundJobLibraryCoordinator *)self initWithWorkerCoordinator:v5 statusCenter:centerCopy];

  return v6;
}

@end