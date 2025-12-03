@interface PBFPosterSnapshotCollection
- (BOOL)shouldProceedFetchingSnapshotForContext:(id)context maxNumberOfRetryAfterErrors:(unint64_t)errors;
- (PBFPosterSnapshotCollection)initWithUniqueIdentifier:(id)identifier;
- (id)invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:(id)context;
- (id)receivedSnapshotBundleForContext:(id)context;
- (id)snapshotFutureForContext:(id)context outStatus:(int64_t *)status;
- (id)trackRequestForContext:(id)context future:(id)future;
- (unint64_t)hash;
- (unint64_t)numberOfTimesSnapshotHasFailedToHydrateForContext:(id)context;
- (void)_snapshotRequestForContext:(void *)context completedWithError:;
- (void)cancel;
- (void)enumerateInProgressRequests:(id)requests;
- (void)invalidate;
@end

@implementation PBFPosterSnapshotCollection

- (PBFPosterSnapshotCollection)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PBFPosterSnapshotCollection initWithUniqueIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotCollection initWithUniqueIdentifier:a2];
  }

  v16.receiver = self;
  v16.super_class = PBFPosterSnapshotCollection;
  v7 = [(PBFPosterSnapshotCollection *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_uniqueIdentifier, identifier);
    v9 = objc_alloc(MEMORY[0x277D3EB68]);
    v10 = [@"SNAPSHOTCOLLECTION_" stringByAppendingString:identifierCopy];
    v11 = [v9 initWithLockIdentifier:v10];
    lock = v8->_lock;
    v8->_lock = v11;

    v13 = objc_opt_new();
    lock_definitionToCollection = v8->_lock_definitionToCollection;
    v8->_lock_definitionToCollection = v13;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  v5.receiver = self;
  v5.super_class = PBFPosterSnapshotCollection;
  return [(PBFPosterSnapshotCollection *)&v5 hash]^ v3;
}

- (id)snapshotFutureForContext:(id)context outStatus:(int64_t *)status
{
  contextCopy = context;
  v7 = contextCopy;
  if (contextCopy)
  {
    definition = [contextCopy definition];
    displayContext = [v7 displayContext];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__3;
    v29 = __Block_byref_object_dispose__3;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    lock = self->_lock;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__PBFPosterSnapshotCollection_snapshotFutureForContext_outStatus___block_invoke;
    v16[3] = &unk_2782C7868;
    v19 = &v21;
    v20 = &v25;
    v16[4] = self;
    v11 = definition;
    v17 = v11;
    v12 = displayContext;
    v18 = v12;
    [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v16];
    if (status)
    {
      *status = v22[3];
    }

    v13 = v26[5];

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (status)
    {
      *status = 2;
    }

    v14 = MEMORY[0x277D3EC50];
    v11 = PFFunctionNameForAddress();
    v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v13 = [v14 futureWithError:{v12, 0}];
  }

  return v13;
}

void __66__PBFPosterSnapshotCollection_snapshotFutureForContext_outStatus___block_invoke(void *a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    *(*(a1[7] + 8) + 24) = 2;
    v3 = MEMORY[0x277D3EC50];
    v13 = PFFunctionNameForAddress();
    v4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v5 = [v3 futureWithError:{v4, 0}];
    v6 = *(a1[8] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = [*(a2 + 16) objectForKey:a1[5]];
    if (!v8)
    {
      goto LABEL_6;
    }

    v13 = v8;
    v9 = [v8 snapshotBundleFutureForDisplayContext];
    v10 = [v9 objectForKey:a1[6]];
    v11 = *(a1[8] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(a1[7] + 8) + 24) = [v13 requestStatusForDisplayContext:a1[6]];
  }

  v8 = v13;
LABEL_6:
}

- (unint64_t)numberOfTimesSnapshotHasFailedToHydrateForContext:(id)context
{
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  definition = [contextCopy definition];
  displayContext = [contextCopy displayContext];
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__PBFPosterSnapshotCollection_numberOfTimesSnapshotHasFailedToHydrateForContext___block_invoke;
  v12[3] = &unk_2782C7890;
  v8 = definition;
  v13 = v8;
  v15 = &v16;
  v9 = displayContext;
  v14 = v9;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __81__PBFPosterSnapshotCollection_numberOfTimesSnapshotHasFailedToHydrateForContext___block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = [*(a2 + 16) objectForKey:a1[4]];
    if (v4)
    {
      v6 = v4;
      v5 = [v4 displayContextRequestFailures];
      *(*(a1[6] + 8) + 24) = [v5 countForObject:a1[5]];

      v4 = v6;
    }
  }
}

- (id)receivedSnapshotBundleForContext:(id)context
{
  if (context)
  {
    v3 = [(PBFPosterSnapshotCollection *)self snapshotFutureForContext:context outStatus:0];
    v4 = 0;
    if ([v3 isFinished])
    {
      v4 = [v3 result:0];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldProceedFetchingSnapshotForContext:(id)context maxNumberOfRetryAfterErrors:(unint64_t)errors
{
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  definition = [contextCopy definition];
  displayContext = [contextCopy displayContext];
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__PBFPosterSnapshotCollection_shouldProceedFetchingSnapshotForContext_maxNumberOfRetryAfterErrors___block_invoke;
  v13[3] = &unk_2782C78B8;
  v10 = definition;
  v14 = v10;
  v11 = displayContext;
  v15 = v11;
  v16 = &v18;
  errorsCopy = errors;
  [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v13];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

void __99__PBFPosterSnapshotCollection_shouldProceedFetchingSnapshotForContext_maxNumberOfRetryAfterErrors___block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = [*(a2 + 16) objectForKey:a1[4]];
    if (v4)
    {
      v9 = v4;
      v5 = [v4 snapshotBundleFutureForDisplayContext];
      v6 = [v5 objectForKey:a1[5]];

      if (!v6 || [v6 isFinished])
      {
        v7 = [v9 displayContextRequestFailures];
        v8 = [v7 countForObject:a1[5]];

        *(*(a1[6] + 8) + 24) = v8 < a1[7];
      }

      v4 = v9;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }
}

- (void)enumerateInProgressRequests:(id)requests
{
  requestsCopy = requests;
  if (requestsCopy)
  {
    [(PFOSUnfairLock *)self->_lock lock];
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_lock_definitionToCollection copyItems:1];
    [(PFOSUnfairLock *)self->_lock unlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__PBFPosterSnapshotCollection_enumerateInProgressRequests___block_invoke;
    v6[3] = &unk_2782C7908;
    v7 = requestsCopy;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __59__PBFPosterSnapshotCollection_enumerateInProgressRequests___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = [a3 snapshotBundleFutureForDisplayContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__PBFPosterSnapshotCollection_enumerateInProgressRequests___block_invoke_2;
  v11[3] = &unk_2782C78E0;
  v9 = *(a1 + 32);
  v12 = v7;
  v13 = v9;
  v14 = a4;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __59__PBFPosterSnapshotCollection_enumerateInProgressRequests___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = 0;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a3;
  v10 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:a2 definition:v8];
  (*(v7 + 16))(v7, v10, v9, &v12);

  v11 = v12;
  if (v12 == 1)
  {
    *a4 = v12;
    **(a1 + 48) = v11;
  }
}

- (id)invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [(PFOSUnfairLock *)self->_lock lock];
  if (!self->_lock_invalidated)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_lock_definitionToCollection;
    v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v26)
    {
      v24 = *v38;
      selfCopy = self;
      do
      {
        v7 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v7;
          v27 = [(NSMutableDictionary *)self->_lock_definitionToCollection objectForKey:*(*(&v37 + 1) + 8 * v7)];
          snapshotBundleFutureForDisplayContext = [v27 snapshotBundleFutureForDisplayContext];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          allKeys = [snapshotBundleFutureForDisplayContext allKeys];
          v10 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v34;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v34 != v12)
                {
                  objc_enumerationMutation(allKeys);
                }

                v14 = *(*(&v33 + 1) + 8 * i);
                if ((BSEqualObjects() & 1) == 0)
                {
                  v15 = [snapshotBundleFutureForDisplayContext objectForKey:contextCopy];
                  if (v15)
                  {
                    [v5 addObject:v14];
                    [v6 addObject:v15];
                    [snapshotBundleFutureForDisplayContext removeObjectForKey:contextCopy];
                  }
                }
              }

              v11 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v11);
          }

          v7 = v28 + 1;
          self = selfCopy;
        }

        while (v28 + 1 != v26);
        v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v26);
    }
  }

  [(PFOSUnfairLock *)self->_lock unlock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v29 + 1) + 8 * j) cancelWithReason:@"Cancelled because it did not match requested display context"];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v18);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)trackRequestForContext:(id)context future:(id)future
{
  contextCopy = context;
  futureCopy = future;
  v8 = futureCopy;
  if (contextCopy && futureCopy)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__3;
    v38 = __Block_byref_object_dispose__3;
    v39 = 0;
    definition = [contextCopy definition];
    displayContext = [contextCopy displayContext];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    lock = self->_lock;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__PBFPosterSnapshotCollection_trackRequestForContext_future___block_invoke;
    v25[3] = &unk_2782C7930;
    v28 = &v34;
    v25[4] = self;
    v12 = definition;
    v26 = v12;
    v13 = displayContext;
    v27 = v13;
    v29 = &v30;
    [(PFOSUnfairLock *)lock performBlockWhileCapturingWeak:self performBlock:v25];
    if (*(v31 + 24) == 1)
    {
      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __61__PBFPosterSnapshotCollection_trackRequestForContext_future___block_invoke_2;
      v20[3] = &unk_2782C7958;
      objc_copyWeak(&v23, &location);
      v21 = contextCopy;
      v22 = &v34;
      offMainThreadScheduler = [MEMORY[0x277D3EC60] offMainThreadScheduler];
      [v8 addCompletionBlock:v20 scheduler:offMainThreadScheduler];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    v15 = v35[5];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v16 = MEMORY[0x277D3EC50];
    v17 = PFFunctionNameForAddress();
    v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v15 = [v16 futureWithError:{v18, 0}];
  }

  return v15;
}

void __61__PBFPosterSnapshotCollection_trackRequestForContext_future___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (*(v3 + 24) == 1)
  {
    v4 = MEMORY[0x277D3EC50];
    v5 = PFFunctionNameForAddress();
    v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v7 = [v4 futureWithError:{v6, 0}];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v5 = [v3[2] objectForKey:a1[5]];
    if (!v5)
    {
      v5 = objc_opt_new();
      [v15[2] setObject:v5 forKey:a1[5]];
    }

    v10 = [v5 snapshotBundleFutureForDisplayContext];
    v6 = [v10 objectForKey:a1[6]];

    if (v6)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), v6);
    }

    else
    {
      v11 = objc_opt_new();
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = [v5 snapshotBundleFutureForDisplayContext];
      [v14 setObject:*(*(a1[7] + 8) + 40) forKey:a1[6]];

      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

void __61__PBFPosterSnapshotCollection_trackRequestForContext_future___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(PBFPosterSnapshotCollection *)WeakRetained _snapshotRequestForContext:v5 completedWithError:?];

  [*(*(*(a1 + 40) + 8) + 40) finishWithResult:v7 error:v5];
}

- (void)_snapshotRequestForContext:(void *)context completedWithError:
{
  contextCopy = context;
  if (self && a2)
  {
    v6 = a2;
    definition = [v6 definition];
    displayContext = [v6 displayContext];

    v9 = *(self + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__PBFPosterSnapshotCollection__snapshotRequestForContext_completedWithError___block_invoke;
    v12[3] = &unk_2782C7980;
    v13 = definition;
    v14 = displayContext;
    v15 = contextCopy;
    v10 = displayContext;
    v11 = definition;
    [v9 performBlockWhileCapturingWeak:self performBlock:v12];
  }
}

void __77__PBFPosterSnapshotCollection__snapshotRequestForContext_completedWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = [*(a2 + 16) objectForKey:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 snapshotBundleFutureForDisplayContext];
      v6 = [v5 objectForKey:*(a1 + 40)];

      if (v6)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __77__PBFPosterSnapshotCollection__snapshotRequestForContext_completedWithError___block_invoke_2;
        v16 = &unk_2782C58B0;
        v7 = v4;
        v17 = v7;
        v18 = *(a1 + 40);
        v8 = _Block_copy(&v13);
        v9 = *(a1 + 48);
        if (!v9 || (([v9 domain], v10 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CCA050])) ? (v11 = 0) : (v11 = objc_msgSend(*(a1 + 48), "code") == 3072), (v10, (objc_msgSend(*(a1 + 48), "pbf_isGeneralCancelledError") & 1) != 0) || v11))
        {
          v8[2](v8);
        }

        else
        {
          v12 = [v7 displayContextRequestFailures];
          [v12 addObject:*(a1 + 40)];
        }
      }
    }
  }
}

void __77__PBFPosterSnapshotCollection__snapshotRequestForContext_completedWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) displayContextRequestFailures];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    do
    {
      v4 = [*(a1 + 32) displayContextRequestFailures];
      [v4 removeObject:*(a1 + 40)];

      v5 = [*(a1 + 32) displayContextRequestFailures];
      v6 = [v5 containsObject:*(a1 + 40)];
    }

    while ((v6 & 1) != 0);
  }
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  [(PFOSUnfairLock *)self->_lock lock];
  allValues = [(NSMutableDictionary *)self->_lock_definitionToCollection allValues];
  [(NSMutableDictionary *)self->_lock_definitionToCollection removeAllObjects];
  [(PFOSUnfairLock *)self->_lock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  [(PFOSUnfairLock *)self->_lock lock];
  v3 = self->_lock_definitionToCollection;
  lock_definitionToCollection = self->_lock_definitionToCollection;
  self->_lock_definitionToCollection = 0;

  [(PFOSUnfairLock *)self->_lock unlock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMutableDictionary *)v3 objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)initWithUniqueIdentifier:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterSnapshotCollection.m";
    v9 = 1024;
    v10 = 35;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFPosterSnapshotCollection.m";
    v9 = 1024;
    v10 = 35;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end