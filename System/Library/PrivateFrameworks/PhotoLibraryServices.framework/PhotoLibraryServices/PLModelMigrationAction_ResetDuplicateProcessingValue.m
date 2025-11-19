@interface PLModelMigrationAction_ResetDuplicateProcessingValue
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetDuplicateProcessingValue

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[PLGlobalValues alloc] initWithManagedObjectContext:v5];
  v7 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [PLDuplicateDetector duplicateDetectorCompletedPerceptualHashProcessingWithManagedObjectContext:v5 pathManager:v7];

  if (!v8)
  {
    [(PLGlobalValues *)v6 setLastInitialDuplicateDetectorProcessingCompletedDate:0];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end