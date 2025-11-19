@interface PLModelMigrationAction_ClearInterruptedMaintenanceTaskLibraries
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ClearInterruptedMaintenanceTaskLibraries

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E69BF2A0];
  v6 = [(PLModelMigrationActionCore *)self pathManager:a3];
  v7 = [v6 libraryURL];
  LODWORD(v5) = [v5 isSystemPhotoLibraryURL:v7];

  if (v5)
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 removeObjectForKey:@"PLIncompleteMaintenanceTaskPaths.periodicmaintenance"];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return 1;
}

@end