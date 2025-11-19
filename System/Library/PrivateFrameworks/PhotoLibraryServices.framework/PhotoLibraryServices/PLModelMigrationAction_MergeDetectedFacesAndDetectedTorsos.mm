@interface PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v88[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__53822;
  v47 = __Block_byref_object_dispose__53823;
  v48 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLDetectedFace entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil || %K != nil", @"assetForTorso", @"personForTorso"];
  [v9 setPredicate:v10];

  v88[0] = @"assetForTorso";
  v88[1] = @"personForTorso";
  v88[2] = @"assetForFace";
  v88[3] = @"personForFace";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:4];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__53822;
  v41[4] = __Block_byref_object_dispose__53823;
  v42 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke;
  v39[3] = &unk_1E7575B30;
  v15 = v6;
  v40 = v15;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_2;
  v38[3] = &unk_1E7572E50;
  v38[4] = self;
  v38[5] = v41;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_3;
  v37[3] = &unk_1E756DCF0;
  v37[4] = self;
  v37[5] = &v43;
  v37[6] = &v49;
  v37[7] = v41;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:4 generateContextBlock:v39 didFetchObjectIDsBlock:v38 processResultBlock:v37];

  v17 = (v44 + 5);
  obj = v44[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (!v18)
  {
    v50[3] = 3;
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = [(PLModelMigrationActionCore *)self logger];
      v22 = v21 == 0;

      if (v22)
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = v44[5];
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v58 = 0u;
        v59 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = v44[5];
        v53 = 138543618;
        v54 = v25;
        v55 = 2114;
        v56 = v26;
        LODWORD(v35) = 22;
        v27 = _os_log_send_and_compose_impl();

        v28 = [(PLModelMigrationActionCore *)self logger:&v53];
        [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{397, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    *a4 = v44[5];
  }

  v33 = v50[3];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  return v33;
}

@end