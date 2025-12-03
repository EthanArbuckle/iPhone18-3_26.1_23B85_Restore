@interface PLModelMigrationAction_RebuildHighlights
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RebuildHighlights

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [PLMomentGenerationDataManager alloc];
  pathManager = [(PLModelMigrationActionBackground *)self pathManager];
  v9 = [(PLMomentGenerationDataManager *)v7 initWithManagedObjectContext:contextCopy pathManagerForLightweightMigration:pathManager];

  generator = [(PLMomentGenerationDataManager *)v9 generator];
  [PLMomentGenerationDataManager setManagerMomentarilyBlessed:v9];
  if (generator)
  {
    v24 = PLMomentGenerationShouldDeleteAllHighlightsKey;
    v25[0] = MEMORY[0x1E695E110];
    v11 = 1;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__PLModelMigrationAction_RebuildHighlights_performActionWithManagedObjectContext_error___block_invoke;
    v20[3] = &unk_1E75781E8;
    v21 = v13;
    v14 = v13;
    [generator rebuildAllHighlightsWithOptions:v12 completionHandler:v20];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v22 = *MEMORY[0x1E696A578];
    v23 = @"Failed to obtain moment generator";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v15 errorWithDomain:v16 code:41001 userInfo:v17];

    if (error)
    {
      v18 = v12;
      *error = v12;
    }

    v11 = 3;
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  return v11;
}

@end