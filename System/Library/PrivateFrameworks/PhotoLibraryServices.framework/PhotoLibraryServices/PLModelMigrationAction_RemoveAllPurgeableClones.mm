@interface PLModelMigrationAction_RemoveAllPurgeableClones
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)removePurgableClonesForAssetUUID:(id)d withMOC:(id)c error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveAllPurgeableClones

- (int64_t)removePurgableClonesForAssetUUID:(id)d withMOC:(id)c error:(id *)error
{
  v7 = MEMORY[0x1E695D5E0];
  cCopy = c;
  dCopy = d;
  v10 = +[PLManagedAsset entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", dCopy];

  [v11 setPredicate:dCopy];
  v20 = 0;
  v13 = [cCopy executeFetchRequest:v11 error:&v20];

  v14 = v20;
  v15 = v14;
  if (v13)
  {
    firstObject = [v13 firstObject];
    if ([firstObject isReadyForPurgeSyndicationResources])
    {
      [firstObject purgeSyndicationResourcesAfterMediaAnalysisProcessing];
    }

    v17 = 1;
  }

  else
  {
    if (error)
    {
      v18 = v14;
      *error = v15;
    }

    v17 = 3;
  }

  return v17;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1060;
  v35 = __Block_byref_object_dispose__1061;
  v36 = 0;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [uUIDString length];

  v10 = objc_alloc(MEMORY[0x1E69BF240]);
  pathManager = [(PLModelMigrationActionBackground *)self pathManager];
  v12 = [pathManager photoDirectoryWithType:28];
  v13 = [v10 initWithFilePath:v12];

  v41[0] = *MEMORY[0x1E695DBA8];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__PLModelMigrationAction_RemoveAllPurgeableClones_performActionWithManagedObjectContext_error___block_invoke;
  v24 = &unk_1E7564A48;
  selfCopy = self;
  v28 = &v37;
  v29 = &v31;
  v15 = v14;
  v26 = v15;
  v30 = v9;
  v16 = contextCopy;
  v27 = v16;
  [v13 visitURLsLoadingPropertiesForKeys:v15 withBlock:&v21];
  [(PLModelMigrationActionBackground *)self finalizeProgress:v21];
  v17 = v38[3];
  v18 = v32[5];
  if (v17 != 1 && error)
  {
    v18 = v18;
    *error = v18;
  }

  v19 = v38[3];
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v19;
}

@end