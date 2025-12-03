@interface PLMergePolicy
- (BOOL)resolveConflicts:(id)conflicts error:(id *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
@end

@implementation PLMergePolicy

- (BOOL)resolveConflicts:(id)conflicts error:(id *)error
{
  self->_isResolvingConflicts = 1;
  v6.receiver = self;
  v6.super_class = PLMergePolicy;
  result = [(NSMergePolicy *)&v6 resolveConflicts:conflicts error:error];
  self->_isResolvingConflicts = 0;
  return result;
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  conflictsCopy = conflicts;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [PLUnintendedChangeChecker checkForUnintendedChangeOnMergeConflicts:conflictsCopy withBlock:&__block_literal_global_61577];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = conflictsCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        if ([v13 newVersionNumber])
        {
          sourceObject = [v13 sourceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:sourceObject];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v30.receiver = self;
  v30.super_class = PLMergePolicy;
  v15 = [(NSMergePolicy *)&v30 resolveOptimisticLockingVersionConflicts:v8 error:error];
  [PLUnintendedChangeChecker checkForUnintendedChangeOnMergeConflicts:v8 withBlock:&__block_literal_global_44_61580];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        managedObjectContext = [v21 managedObjectContext];
        delayedSaveActions = [managedObjectContext delayedSaveActions];
        [delayedSaveActions recordAlbumForCountsAndDateRangeUpdate:v21];

        delayedSaveActions2 = [managedObjectContext delayedSaveActions];
        [delayedSaveActions2 recordAlbumForKeyAssetsUpdate:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v18);
  }

  return v15;
}

void __64__PLMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke_42(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "Unintended change during post-flight merge: key %@, value: %@, context %@, conflict %@", buf, 0x2Au);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unintended change during post-flight merge: key %@, value: %@, context %@, conflict %@", v8, v9, v10, v11];
  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Unintended change during post-flight merge" radarDescription:v13];
}

void __64__PLMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "Unintended change during pre-flight merge: key %@, value: %@, context %@, conflict %@", buf, 0x2Au);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unintended change during pre-flight merge: key %@, value: %@, context %@, conflict %@", v8, v9, v10, v11];
  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Unintended change during pre-flight merge" radarDescription:v13];
}

@end