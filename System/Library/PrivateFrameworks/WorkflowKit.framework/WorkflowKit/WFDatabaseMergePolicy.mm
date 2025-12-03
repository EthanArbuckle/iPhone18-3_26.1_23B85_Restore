@interface WFDatabaseMergePolicy
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
- (WFDatabase)database;
@end

@implementation WFDatabaseMergePolicy

- (WFDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  conflictsCopy = conflicts;
  v59.receiver = self;
  v59.super_class = WFDatabaseMergePolicy;
  v50 = [(NSMergePolicy *)&v59 resolveOptimisticLockingVersionConflicts:conflictsCopy error:error];
  database = [(WFDatabaseMergePolicy *)self database];
  persistenceMode = [database persistenceMode];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = conflictsCopy;
  v8 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = &off_1E836E000;
    v11 = *v56;
    do
    {
      v12 = 0;
      do
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * v12);
        newVersionNumber = [v13 newVersionNumber];
        sourceObject = [v13 sourceObject];
        v16 = sourceObject;
        if (newVersionNumber)
        {
          v17 = v10[31];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_35;
          }

          v19 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v62 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
            v63 = 2112;
            v64 = v13;
            _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEBUG, "%s Found coherence library conflict: %@", buf, 0x16u);
          }

          sourceObject2 = [v13 sourceObject];
          v21 = v10[31];
          v22 = objc_opt_class();
          v23 = sourceObject2;
          if (v23 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = getWFGeneralLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              v27 = objc_opt_class();
              *buf = 136315906;
              v62 = "WFEnforceClass";
              v63 = 2114;
              v64 = v23;
              v65 = 2114;
              v66 = v27;
              v67 = 2114;
              v68 = v22;
              v28 = v27;
              _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_FAULT, "%s Found coherence library conflict: %@", buf, 0x2Au);
            }

            v16 = 0;
          }

          else
          {
            v16 = v23;
          }

          persistedSnapshot = [v13 persistedSnapshot];
          v30 = [persistedSnapshot objectForKey:@"data"];

          if (v30)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = v30;
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          cachedSnapshot = [v13 cachedSnapshot];
          v34 = [cachedSnapshot objectForKey:@"data"];

          if (v34)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = v34;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          v37 = [WFLibrary alloc];
          identifier = [v16 identifier];
          managedObjectContext = [(WFLibrary *)v37 initWithIdentifier:identifier data:v32];

          v39 = [WFLibrary alloc];
          identifier2 = [v16 identifier];
          sourceObject3 = [(WFLibrary *)v39 initWithIdentifier:identifier2 data:v36];

          v54 = 0;
          v41 = [(WFLibrary *)managedObjectContext mergeWithOther:sourceObject3 error:&v54];
          v42 = v54;

          if (!v41)
          {
            v43 = getWFCoherenceLogObject();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v62 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
              v63 = 2112;
              v64 = v42;
              _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_ERROR, "%s Could not merge libraries: %@", buf, 0x16u);
            }
          }

          v53 = v42;
          v44 = [(WFLibrary *)managedObjectContext capsuleDataWithPersistenceMode:persistenceMode error:&v53];
          v45 = v53;

          if (v44)
          {
            if (v45)
            {
LABEL_33:

              v10 = &off_1E836E000;
              goto LABEL_34;
            }
          }

          else
          {
            v46 = getWFCoherenceLogObject();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v62 = "[WFDatabaseMergePolicy resolveOptimisticLockingVersionConflicts:error:]";
              v63 = 2112;
              v64 = v45;
              _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_ERROR, "%s Could not fetch library capsule data: %@", buf, 0x16u);
            }

            if (v45)
            {
              goto LABEL_33;
            }
          }

          [v16 setData:v44];
          [v16 setSyncHash:{+[WFLibraryRecord syncHashFromData:](WFLibraryRecord, "syncHashFromData:", v44)}];
          goto LABEL_33;
        }

        managedObjectContext = [sourceObject managedObjectContext];
        sourceObject3 = [v13 sourceObject];
        [(WFLibrary *)managedObjectContext deleteObject:sourceObject3];
LABEL_34:

LABEL_35:
        ++v12;
      }

      while (v9 != v12);
      v47 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      v9 = v47;
    }

    while (v47);
  }

  v48 = *MEMORY[0x1E69E9840];
  return v50;
}

@end