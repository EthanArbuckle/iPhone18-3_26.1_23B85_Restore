@interface PLModelMigrationAction_ResetDuplicateDetectorProcessingToken
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetDuplicateDetectorProcessingToken

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = [PLModelMigrationActionUtility resetDuplicateProcessingWithAction:self managedObjectContext:a3 error:a4];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v5;
}

@end