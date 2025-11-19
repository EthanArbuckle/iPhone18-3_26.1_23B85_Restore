@interface PLModelMigrationAction_SetShareParticipantOnCloudComments
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_SetShareParticipantOnCloudComments

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCloudSharedComment entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"shareParticipant"];
  [v9 setPredicate:v10];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[6] = &v42;
  v37 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __105__PLModelMigrationAction_SetShareParticipantOnCloudComments_performActionWithManagedObjectContext_error___block_invoke;
  v36[3] = &unk_1E75680D8;
  v36[4] = self;
  v36[5] = &v38;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v9 pendingParentUnitCount:0 error:&v37 processingBlock:v36];
  v12 = v37;
  if (v39[3])
  {
    v13 = [(PLModelMigrationActionCore *)self analyticsEventManager];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46702 userInfo:0];
    [v13 setPayloadValue:v14 forKey:*MEMORY[0x1E69BF6D8] onEventWithName:*MEMORY[0x1E69BF6D0]];
  }

  v15 = PLMigrationGetLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = [(PLModelMigrationActionCore *)self logger];
    v18 = v17 == 0;

    if (v18)
    {
      v26 = PLMigrationGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = v43[3];
        v30 = v39[3];
        *buf = 138543874;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = v30;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: summary - countOfCommentsWithParticipant: %ld, countOfCommentsWithoutParticipant: %ld", buf, 0x20u);
      }
    }

    else
    {
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
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      memset(buf, 0, sizeof(buf));
      v19 = PLMigrationGetLog();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = v43[3];
      v23 = v39[3];
      v46 = 138543874;
      v47 = v21;
      v48 = 2048;
      v49 = v22;
      v50 = 2048;
      v51 = v23;
      LODWORD(v35) = 32;
      v24 = _os_log_send_and_compose_impl();

      v25 = [(PLModelMigrationActionCore *)self logger:&v46];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1320, 0}];

      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v31 = v12;
  v32 = v31;
  if (v11 != 1 && a4)
  {
    v33 = v31;
    *a4 = v32;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v11;
}

@end