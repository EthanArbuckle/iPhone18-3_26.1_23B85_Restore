@interface PLModelMigrationAction_RemoveAllPurgeableClones
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (int64_t)removePurgableClonesForAssetUUID:(id)a3 withMOC:(id)a4 error:(id *)a5;
@end

@implementation PLModelMigrationAction_RemoveAllPurgeableClones

- (int64_t)removePurgableClonesForAssetUUID:(id)a3 withMOC:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = a3;
  v10 = +[PLManagedAsset entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", v9];

  [v11 setPredicate:v12];
  v20 = 0;
  v13 = [v8 executeFetchRequest:v11 error:&v20];

  v14 = v20;
  v15 = v14;
  if (v13)
  {
    v16 = [v13 firstObject];
    if ([v16 isReadyForPurgeSyndicationResources])
    {
      [v16 purgeSyndicationResourcesAfterMediaAnalysisProcessing];
    }

    v17 = 1;
  }

  else
  {
    if (a5)
    {
      v18 = v14;
      *a5 = v15;
    }

    v17 = 3;
  }

  return v17;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
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
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v8 length];

  v10 = objc_alloc(MEMORY[0x1E69BF240]);
  v11 = [(PLModelMigrationActionBackground *)self pathManager];
  v12 = [v11 photoDirectoryWithType:28];
  v13 = [v10 initWithFilePath:v12];

  v41[0] = *MEMORY[0x1E695DBA8];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__PLModelMigrationAction_RemoveAllPurgeableClones_performActionWithManagedObjectContext_error___block_invoke;
  v24 = &unk_1E7564A48;
  v25 = self;
  v28 = &v37;
  v29 = &v31;
  v15 = v14;
  v26 = v15;
  v30 = v9;
  v16 = v6;
  v27 = v16;
  [v13 visitURLsLoadingPropertiesForKeys:v15 withBlock:&v21];
  [(PLModelMigrationActionBackground *)self finalizeProgress:v21];
  v17 = v38[3];
  v18 = v32[5];
  if (v17 != 1 && a4)
  {
    v18 = v18;
    *a4 = v18;
  }

  v19 = v38[3];
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v19;
}

@end