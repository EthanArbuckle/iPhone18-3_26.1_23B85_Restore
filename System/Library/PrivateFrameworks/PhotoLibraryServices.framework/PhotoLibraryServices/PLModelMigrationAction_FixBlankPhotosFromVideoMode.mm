@interface PLModelMigrationAction_FixBlankPhotosFromVideoMode
- (id)buildFetchRequest;
- (id)startDate;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixBlankPhotosFromVideoMode

- (id)startDate
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:3];
  [v2 setMonth:5];
  [v2 setYear:2024];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 dateFromComponents:v2];

  return v5;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  buildFetchRequest = [(PLModelMigrationAction_FixBlankPhotosFromVideoMode *)self buildFetchRequest];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__43771;
  v53 = __Block_byref_object_dispose__43772;
  v54 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke;
  v47[3] = &unk_1E7575B30;
  v10 = contextCopy;
  v48 = v10;
  v45[4] = &v49;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_2;
  v46[3] = &unk_1E7572E50;
  v46[4] = self;
  v46[5] = &v49;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_3;
  v45[3] = &unk_1E756C620;
  v11 = [(PLEnumerateAndSaveController *)v9 initWithName:v8 fetchRequest:buildFetchRequest context:v10 options:4 generateContextBlock:v47 didFetchObjectIDsBlock:v46 processResultBlock:v45];
  v44 = 0;
  v12 = [(PLEnumerateAndSaveController *)v11 processObjectsWithError:&v44];
  v42 = v44;
  if (v12)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v16 = logger == 0;

      if (v16)
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v50[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Completed photo recovery on %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v50[5] completedUnitCount];
        v55 = 134217984;
        v56 = completedUnitCount2;
        LODWORD(v41) = 12;
        v19 = _os_log_send_and_compose_impl();

        v20 = [(PLModelMigrationActionCore *)self logger:&v55];
        [v20 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1421, 1}];

        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    v32 = 1;
  }

  else
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger2 = [(PLModelMigrationActionCore *)self logger];
      v24 = logger2 == 0;

      if (v24)
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v42;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v25 = PLMigrationGetLog();
        os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v55 = 138543618;
        v56 = v27;
        v57 = 2114;
        v58 = v42;
        LODWORD(v41) = 22;
        v28 = _os_log_send_and_compose_impl();

        v29 = [(PLModelMigrationActionCore *)self logger:&v55];
        [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1424, 16}];

        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    v32 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v36 = v42;
  v37 = v36;
  if (error)
  {
    v38 = v12;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & 1) == 0)
  {
    v39 = v36;
    *error = v37;
  }

  _Block_object_dispose(&v49, 8);
  return v32;
}

- (id)buildFetchRequest
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 0];
  v16[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniformTypeIdentifier", *MEMORY[0x1E6982E58]];
  v16[1] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"adjustmentsState", 3];
  v16[2] = v9;
  v10 = MEMORY[0x1E696AE18];
  startDate = [(PLModelMigrationAction_FixBlankPhotosFromVideoMode *)self startDate];
  v12 = [v10 predicateWithFormat:@"%K >= %@", @"dateCreated", startDate];
  v16[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v14 = [v6 andPredicateWithSubpredicates:v13];
  [v5 setPredicate:v14];

  [v5 setFetchBatchSize:100];

  return v5;
}

@end