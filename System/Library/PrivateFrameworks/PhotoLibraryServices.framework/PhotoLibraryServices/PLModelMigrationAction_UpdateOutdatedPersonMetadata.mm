@interface PLModelMigrationAction_UpdateOutdatedPersonMetadata
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateOutdatedPersonMetadata

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [PLPersistedPersonMetadata urlsForPersistedPersonsInMetadataDirectoryWithPathManager:pathManager];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v81 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v43;
    v12 = off_1E7560000;
    v38 = 0;
    v39 = *v43;
    do
    {
      v13 = 0;
      v40 = v9;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [objc_alloc(v12[303]) initWithPersistedDataAtURL:v14 cplEnabled:0];
        if (([v16 matchesEntityInLibraryBackedByManagedObjectContext:contextCopy diff:0] & 1) == 0)
        {
          personUUID = [v16 personUUID];
          v18 = [PLPerson personWithUUID:personUUID inManagedObjectContext:contextCopy];

          if (v18 && [v18 verifiedType])
          {
            v19 = objc_alloc(v12[303]);
            pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
            v21 = [v19 initWithPLPerson:v18 pathManager:pathManager2];

            [v21 writePersistedData];
            ++v38;
          }

          else
          {
            v22 = v12[303];
            personUUID2 = [v16 personUUID];
            [(PLModelMigrationActionCore *)self pathManager];
            v24 = v10;
            v25 = contextCopy;
            v27 = v26 = self;
            [(__objc2_class *)v22 deleteMetadataFileForPersonUUID:personUUID2 pathManager:v27];

            self = v26;
            contextCopy = v25;
            v28 = v24;
            v12 = off_1E7560000;

            v10 = v28 + 1;
          }

          v11 = v39;
          v9 = v40;
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v42 objects:v81 count:16];
    }

    while (v9);
  }

  else
  {
    v38 = 0;
    v10 = 0;
  }

  v29 = PLMigrationGetLog();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);

  if (v30)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      v32 = PLMigrationGetLog();
      os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      v46 = 134218240;
      v47 = v38;
      v48 = 2048;
      v49 = v10;
      LODWORD(v37) = 22;
      v33 = _os_log_send_and_compose_impl();

      v34 = [(PLModelMigrationActionCore *)self logger:&v46];
      [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1644, 1}];

      if (v33 != buf)
      {
        free(v33);
      }
    }

    else
    {
      v35 = PLMigrationGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_INFO, "Updated %lu person metadata files and deleted %lu person metadata files", buf, 0x16u);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end