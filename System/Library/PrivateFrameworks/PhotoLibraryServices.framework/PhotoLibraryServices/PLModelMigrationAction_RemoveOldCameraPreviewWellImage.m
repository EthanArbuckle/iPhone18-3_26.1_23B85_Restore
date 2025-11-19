@interface PLModelMigrationAction_RemoveOldCameraPreviewWellImage
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveOldCameraPreviewWellImage

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = 1;
  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [v8 becomeCurrentWithPendingUnitCount:1];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [MEMORY[0x1E69BF168] photoDataMiscDirectory];
  v11 = [v10 stringByAppendingPathComponent:@"PreviewWellImage.tiff"];

  if ([v9 fileExistsAtPath:v11])
  {
    v32 = 0;
    v12 = [v9 removeItemAtPath:v11 error:&v32];
    v13 = v32;
    if (v12)
    {
      v14 = 1;
      v7 = 1;
    }

    else
    {
      v15 = PLMigrationGetLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = [(PLModelMigrationActionCore *)self logger];

        if (v17)
        {
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
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v33 = 138543618;
          v34 = v20;
          v35 = 2112;
          v36 = v13;
          LODWORD(v31) = 22;
          v21 = _os_log_send_and_compose_impl();

          v22 = [(PLModelMigrationActionCore *)self logger:&v33];
          [v22 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{456, 16}];

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
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138543618;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to delete existing camera preview well image %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }

      v14 = 0;
      v7 = 3;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  v26 = objc_alloc_init(PLCameraPreviewWellManager);
  [(PLCameraPreviewWellManager *)v26 refreshPreviewWellImageWithContext:v6 avoidNotificationIfLinkIsAlreadySet:0];

  [v8 resignCurrent];
  v27 = v13;
  v28 = v27;
  if ((v14 & 1) == 0 && a4)
  {
    v29 = v27;
    *a4 = v28;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v7;
}

@end