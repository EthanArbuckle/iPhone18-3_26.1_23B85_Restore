@interface PLModelMigrationAction_UpdateSharedAssetContainerWorkItems
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UpdateSharedAssetContainerWorkItems

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695D5E0]);
  v7 = +[PLBackgroundJobWorkItem entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"jobType", 9];
  [v8 setPredicate:v9];

  [v8 setFetchBatchSize:100];
  v29 = 0;
  v10 = [v5 executeFetchRequest:v8 error:&v29];
  v11 = v29;
  v12 = v11;
  if (v10)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          if (![v18 jobFlags])
          {
            [v18 setJobFlags:1];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v15);
    }

    [PLGlobalKeyValue setGlobalValue:0 forKey:@"LastPersonSyncSourceLibraryPath" managedObjectContext:v5];
    v24 = v12;
    v19 = [v5 save:&v24];
    v20 = v24;

    if (v19)
    {
      v21 = 1;
LABEL_20:
      v12 = v20;
      goto LABEL_21;
    }

    if (!a4)
    {
      v21 = 3;
      goto LABEL_20;
    }

    v12 = v20;
    goto LABEL_17;
  }

  if (a4)
  {
    v20 = v11;
LABEL_17:
    v22 = v20;
    *a4 = v20;
  }

  v21 = 3;
LABEL_21:

  return v21;
}

@end