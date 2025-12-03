@interface PLModelMigrationAction_ClearInterruptedMaintenanceTaskLibraries
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ClearInterruptedMaintenanceTaskLibraries

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = MEMORY[0x1E69BF2A0];
  v6 = [(PLModelMigrationActionCore *)self pathManager:context];
  libraryURL = [v6 libraryURL];
  LODWORD(v5) = [v5 isSystemPhotoLibraryURL:libraryURL];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:@"PLIncompleteMaintenanceTaskPaths.periodicmaintenance"];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return 1;
}

@end