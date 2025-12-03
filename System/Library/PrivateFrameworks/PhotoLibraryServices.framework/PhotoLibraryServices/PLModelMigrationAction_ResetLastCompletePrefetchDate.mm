@interface PLModelMigrationAction_ResetLastCompletePrefetchDate
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetLastCompletePrefetchDate

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  [(PLGlobalValues *)v7 setLastCompletePrefetchDate:v8];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return 1;
}

@end