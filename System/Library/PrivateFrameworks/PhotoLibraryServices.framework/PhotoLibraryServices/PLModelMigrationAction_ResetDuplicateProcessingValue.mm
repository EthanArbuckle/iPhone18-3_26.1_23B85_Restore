@interface PLModelMigrationAction_ResetDuplicateProcessingValue
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetDuplicateProcessingValue

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [PLDuplicateDetector duplicateDetectorCompletedPerceptualHashProcessingWithManagedObjectContext:contextCopy pathManager:pathManager];

  if (!v8)
  {
    [(PLGlobalValues *)v6 setLastInitialDuplicateDetectorProcessingCompletedDate:0];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end