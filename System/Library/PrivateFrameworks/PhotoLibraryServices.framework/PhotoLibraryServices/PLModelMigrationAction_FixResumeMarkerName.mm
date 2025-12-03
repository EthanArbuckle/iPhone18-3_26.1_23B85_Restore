@interface PLModelMigrationAction_FixResumeMarkerName
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixResumeMarkerName

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = MEMORY[0x1E69BF188];
  v6 = [(PLModelMigrationActionCore *)self pathManager:context];
  libraryURL = [v6 libraryURL];
  v8 = [v5 appPrivateDataForLibraryURL:libraryURL];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MigrationAction.ResumeMaker"];
  v10 = [v8 valueForKeyPath:v9];
  [v8 setValue:0 forKeyPath:v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MigrationAction.ResumeMarker"];
    [v8 setValue:v10 forKeyPath:v11];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end