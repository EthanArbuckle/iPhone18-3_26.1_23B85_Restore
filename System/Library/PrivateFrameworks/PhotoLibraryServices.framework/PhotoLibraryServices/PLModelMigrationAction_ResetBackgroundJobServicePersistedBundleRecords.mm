@interface PLModelMigrationAction_ResetBackgroundJobServicePersistedBundleRecords
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetBackgroundJobServicePersistedBundleRecords

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"PLBackgroundJobServiceBundleRecordsVeryLowPriorityKey"];
  [standardUserDefaults removeObjectForKey:@"PLBackgroundJobServiceBundleRecordsLowPriorityKey"];
  [standardUserDefaults removeObjectForKey:@"PLBackgroundJobServiceBundleRecordsMediumPriorityKey"];
  [standardUserDefaults removeObjectForKey:@"PLBackgroundJobServiceBundleRecordsHighPriorityKey"];
  v7 = PLMigrationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Removed all records from background job service's persisted bundle records", v9, 2u);
  }

  [v5 setCompletedUnitCount:{objc_msgSend(v5, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end