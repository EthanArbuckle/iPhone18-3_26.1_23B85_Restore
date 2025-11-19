@interface PLManagedAssetRuleInterpreter
- (id)evaluateObjects:(id)a3 forCondition:(id)a4;
@end

@implementation PLManagedAssetRuleInterpreter

- (id)evaluateObjects:(id)a3 forCondition:(id)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 anyObject];
  v8 = [v7 photoLibrary];

  v9 = objc_alloc_init(PLQueryChangeDetectionCriteria);
  v10 = [v5 conditionQuery];

  v11 = [PLQueryHandler predicateForQuery:v10 inLibrary:v8 changeDetectionCriteria:v9];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v6];

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = MEMORY[0x1E696AB28];
  v28[0] = v11;
  v28[1] = v12;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];
  [v15 setPredicate:v18];

  v19 = [v8 managedObjectContext];
  v25 = 0;
  v20 = [v19 executeFetchRequest:v15 error:&v25];
  v21 = v25;

  if (v21)
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v21;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to fetch assets passing condition: %@", buf, 0xCu);
    }
  }

  v23 = [MEMORY[0x1E695DFD8] setWithArray:v20];

  return v23;
}

@end