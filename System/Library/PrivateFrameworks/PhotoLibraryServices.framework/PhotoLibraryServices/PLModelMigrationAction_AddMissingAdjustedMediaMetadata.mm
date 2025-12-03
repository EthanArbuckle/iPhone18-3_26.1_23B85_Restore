@interface PLModelMigrationAction_AddMissingAdjustedMediaMetadata
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_AddMissingAdjustedMediaMetadata

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  databaseContext = [(PLModelMigrationActionBackground *)self databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:"-[PLModelMigrationAction_AddMissingAdjustedMediaMetadata performActionWithManagedObjectContext:error:]"];

  libraryServicesManager = [v8 libraryServicesManager];
  if (([libraryServicesManager isCloudPhotoLibraryEnabled] & 1) != 0 || -[PLModelMigrationAction_AddMissingAdjustedMediaMetadata isUnitTestingWithLibraryServiceManager:](self, "isUnitTestingWithLibraryServiceManager:", libraryServicesManager))
  {
    v48 = v8;
    resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
    v11 = contextCopy;
    errorCopy = error;
    v47 = libraryServicesManager;
    if (resumeMarker)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:resumeMarker];
    }

    else
    {
      v12 = 0;
    }

    persistentStoreCoordinator = [v11 persistentStoreCoordinator];
    v14 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v12];

    v15 = MEMORY[0x1E695D5E0];
    v16 = +[PLManagedAsset entityName];
    v17 = [v15 fetchRequestWithEntityName:v16];

    v18 = MEMORY[0x1E696AB28];
    v19 = [PLManagedAsset predicateForAdjustedAssetsWithKeyPathToAsset:0];
    v52[0] = v19;
    v45 = v14;
    if (v14)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v14];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v20 = ;
    v52[1] = v20;
    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"additionalAttributes.mediaMetadata"];
    v52[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
    v23 = [v18 andPredicateWithSubpredicates:v22];
    [v17 setPredicate:v23];

    v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
    v51 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    [v17 setSortDescriptors:v25];

    v50[0] = @"additionalAttributes";
    v50[1] = @"additionalAttributes.mediaMetadata";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    [v17 setRelationshipKeyPathsForPrefetching:v26];

    v49 = 0;
    v27 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:v11 fetchRequest:v17 useObjectIDResumeMarker:1 error:&v49 processingBlock:&__block_literal_global_436];
    v28 = v49;
    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v29 = v28;
    v30 = v29;
    if (v27 != 1 && errorCopy)
    {
      v31 = v29;
      *errorCopy = v30;
    }

    v8 = v48;
    libraryServicesManager = v47;
  }

  else
  {
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

    if (v33)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (logger)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        *buf = 0u;
        v56 = 0u;
        v35 = PLMigrationGetLog();
        os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v53 = 138543362;
        v54 = v37;
        LODWORD(v44) = 12;
        v38 = _os_log_send_and_compose_impl();

        v39 = [(PLModelMigrationActionBackground *)self logger:&v53];
        [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1343, 1}];

        if (v38 != buf)
        {
          free(v38);
        }
      }

      else
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543362;
          *&buf[4] = v42;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_INFO, "Skipping action %{public}@ based on CPL state", buf, 0xCu);
        }
      }
    }

    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v27 = 1;
  }

  return v27;
}

@end