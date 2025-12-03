@interface PLModelMigrationAction_WriteLibraryScopeIsActiveDefaults
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_WriteLibraryScopeIsActiveDefaults

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  [PLLibraryScope updateLibraryScopeActiveDefaultsWithManagedObjectContext:context];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = 0;
  }

  return 1;
}

@end