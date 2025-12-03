@interface PLModelMigrationAction_ResetSyndication
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSyndication

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E69BF2A0];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  libraryURL = [pathManager libraryURL];
  v10 = [v7 wellKnownPhotoLibraryIdentifierForURL:libraryURL];

  v11 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v12 = PLMigrationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Resetting syndication for library identifier %{public}@", buf, 0xCu);
  }

  v13 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  [v13 becomeCurrentWithPendingUnitCount:1];
  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  if (v10 == 3)
  {
    v25 = 0;
    v15 = PLResetSyndicationLibraryWithManagedObjectContext(contextCopy, pathManager2, &v25);
    v16 = v25;

    [v13 resignCurrent];
    if (v15)
    {
      v17 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v24 = 0;
    v17 = 1;
    v20 = PLDeleteGuestAssetsInLibraryWithManagedObjectContext(contextCopy, pathManager2, v19, 1, &v24);
    v16 = v24;

    [v13 resignCurrent];
    if (v20)
    {
      goto LABEL_10;
    }
  }

  v21 = PLMigrationGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v27 = v11;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to reset syndication for library identifier %{public}@", buf, 0xCu);
  }

  v17 = 3;
LABEL_10:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v22 = v16;
    *error = v16;
  }

  return v17;
}

@end