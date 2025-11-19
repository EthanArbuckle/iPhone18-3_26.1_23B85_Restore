@interface PLModelMigrationAction_FixBadExtendedAttribute
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixBadExtendedAttribute

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = 1;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = [(PLModelMigrationActionCore *)self pathManager];
  v9 = [v8 isSystemPhotoLibraryPathManager];

  v10 = 0;
  if (v9)
  {
    v11 = MEMORY[0x1E695DFF8];
    v12 = [(PLModelMigrationActionCore *)self pathManager];
    v13 = [v12 photoDirectoryWithType:2];
    v6 = 1;
    v14 = [v11 fileURLWithPath:v13 isDirectory:1];

    v18 = 0;
    LOBYTE(v12) = [MEMORY[0x1E69BF2A8] setTimeMachineExclusionAttribute:0 url:v14 error:&v18];
    v10 = v18;
    if ((v12 & 1) == 0)
    {
      v15 = PLMigrationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "[PLModelMigrationAction_FixBadExtendedAttribute performActionWithManagedObjectContext:error:]";
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Failed to remove the exclusion attribute: %@", buf, 0x16u);
      }

      v6 = 3;
    }
  }

  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    v16 = v10;
    *a4 = v10;
  }

  return v6;
}

@end