@interface PLModelMigrationAction_ResetDuplicateDetectorProcessingToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetDuplicateDetectorProcessingToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = [PLModelMigrationActionUtility resetDuplicateProcessingWithAction:self managedObjectContext:context error:error];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v5;
}

@end