@interface PLModelMigrationAction_DeletePetPersonsAndDetectedFaces
- (int64_t)deleteManagedObjectsWithManagedObjectContext:(id)context entity:(Class)entity predicate:(id)predicate pendingParentUnitCount:(int64_t)count deletedIdentifiers:(id *)identifiers entityIdentifierKeyPath:(id)path error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeletePetPersonsAndDetectedFaces

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 2;

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFCD0];
  v26 = 0;
  v10 = [(PLModelMigrationAction_DeletePetPersonsAndDetectedFaces *)self deleteManagedObjectsWithManagedObjectContext:contextCopy entity:objc_opt_class() predicate:v9 pendingParentUnitCount:v8 deletedIdentifiers:&v26 entityIdentifierKeyPath:@"personUUID" error:error];
  v11 = v26;
  if (v10 == 1)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFCE8];
    v10 = [(PLModelMigrationAction_DeletePetPersonsAndDetectedFaces *)self deleteManagedObjectsWithManagedObjectContext:contextCopy entity:objc_opt_class() predicate:v12 pendingParentUnitCount:v8 deletedIdentifiers:0 entityIdentifierKeyPath:0 error:error];
  }

  if ([v11 count])
  {
    v61 = @"RKPerson";
    v62[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    pathManager = [(PLModelMigrationActionCore *)self pathManager];
    v15 = [pathManager photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:0];

    v16 = [v15 stringByAppendingPathComponent:@"recordstodelete.plist"];
    if (([v13 writeToFile:v16 atomically:1] & 1) == 0)
    {
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          *buf = 0u;
          v20 = PLMigrationGetLog();
          os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
          v27 = 138412290;
          v28 = v13;
          LODWORD(v25) = 12;
          v21 = _os_log_send_and_compose_impl();

          v22 = [(PLModelMigrationActionCore *)self logger:&v27];
          [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{233, 16}];

          if (v21 != buf)
          {
            free(v21);
          }
        }

        else
        {
          v23 = PLMigrationGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to persist Person delete records to recordstodelete.plist: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v10;
}

- (int64_t)deleteManagedObjectsWithManagedObjectContext:(id)context entity:(Class)entity predicate:(id)predicate pendingParentUnitCount:(int64_t)count deletedIdentifiers:(id *)identifiers entityIdentifierKeyPath:(id)path error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathCopy = path;
  v16 = MEMORY[0x1E695D5E0];
  predicateCopy = predicate;
  entityName = [(objc_class *)entity entityName];
  v19 = [v16 fetchRequestWithEntityName:entityName];

  [v19 setPredicate:predicateCopy];
  v20 = contextCopy;
  [v19 setFetchBatchSize:100];
  v70 = 0;
  v21 = [contextCopy executeFetchRequest:v19 error:&v70];
  v22 = v70;
  v23 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v21 count], count);
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v63 = v24;
  if (!v21)
  {
    v31 = v20;
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        memset(buf, 0, sizeof(buf));
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v71 = 138543618;
        v72 = v37;
        v73 = 2114;
        v74 = v22;
        LODWORD(v59) = 22;
        v38 = _os_log_send_and_compose_impl();

        v39 = [(PLModelMigrationActionCore *)self logger:&v71];
        [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{200, 16}];

        if (v38 != buf)
        {
          free(v38);
        }
      }

      else
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v51 = v22;
    v30 = 3;
    v20 = v31;
    goto LABEL_30;
  }

  v25 = v24;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __193__PLModelMigrationAction_DeletePetPersonsAndDetectedFaces_deleteManagedObjectsWithManagedObjectContext_entity_predicate_pendingParentUnitCount_deletedIdentifiers_entityIdentifierKeyPath_error___block_invoke;
  v64[3] = &unk_1E756DCA0;
  v65 = pathCopy;
  entityCopy = entity;
  v66 = v25;
  v67 = v20;
  v68 = v23;
  v26 = [v67 enumerateWithIncrementalSaveUsingObjects:v21 withBlock:v64];
  v27 = v26;
  if (v26)
  {
    v28 = v22 == 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = !v28;
  v61 = v29;
  if (!v28)
  {
    v30 = 1;
    goto LABEL_28;
  }

  v60 = v20;
  v22 = v26;
  v40 = PLMigrationGetLog();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

  if (!v41)
  {
    goto LABEL_27;
  }

  logger2 = [(PLModelMigrationActionCore *)self logger];

  if (!logger2)
  {
    v52 = PLMigrationGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138543618;
      *&buf[4] = v54;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
    }

LABEL_27:
    v30 = 3;
    v20 = v60;
    goto LABEL_28;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(buf, 0, sizeof(buf));
  v43 = PLMigrationGetLog();
  os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v71 = 138543618;
  v72 = v45;
  v73 = 2114;
  v74 = v22;
  LODWORD(v59) = 22;
  v46 = _os_log_send_and_compose_impl();

  v47 = [(PLModelMigrationActionCore *)self logger:&v71];
  [v47 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{196, 16}];

  if (v46 != buf)
  {
    free(v46);
  }

  v30 = 3;
  v20 = v60;
LABEL_28:
  v55 = v63;

  v51 = v22;
  if (v61)
  {
    v30 = 1;
    identifiersCopy2 = identifiers;
    goto LABEL_33;
  }

LABEL_30:
  identifiersCopy2 = identifiers;
  if (error)
  {
    v57 = v51;
    *error = v51;
  }

  v55 = v63;
LABEL_33:

  if (identifiersCopy2)
  {
    *identifiersCopy2 = [v55 copy];
  }

  return v30;
}

@end