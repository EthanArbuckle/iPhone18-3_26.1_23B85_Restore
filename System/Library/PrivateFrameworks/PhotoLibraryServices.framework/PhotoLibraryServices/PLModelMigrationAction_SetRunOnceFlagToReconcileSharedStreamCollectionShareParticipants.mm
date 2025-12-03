@interface PLModelMigrationAction_SetRunOnceFlagToReconcileSharedStreamCollectionShareParticipants
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetRunOnceFlagToReconcileSharedStreamCollectionShareParticipants

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [PLCPLSettings settingsWithPathManager:pathManager];

  [v7 setRunOnceFlag:256 error:0];
  [v5 setCompletedUnitCount:{objc_msgSend(v5, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end