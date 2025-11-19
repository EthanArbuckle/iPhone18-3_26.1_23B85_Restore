@interface PLModelMigrationAction_RepushAssetsWithImportedByBundleIdentifier
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RepushAssetsWithImportedByBundleIdentifier

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v6 = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [PLCPLSettings settingsWithPathManager:v6];

  [v7 setRunOnceFlag:64 error:0];
  [v5 setCompletedUnitCount:{objc_msgSend(v5, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end