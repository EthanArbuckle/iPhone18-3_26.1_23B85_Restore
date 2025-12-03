@interface PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier
- (id)recipeIDs;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier

- (id)recipeIDs
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __86__PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier_recipeIDs__block_invoke;
  v14 = &unk_1E7568100;
  v3 = v2;
  v15 = v3;
  v4 = v12;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [&unk_1F0FBF5F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(&unk_1F0FBF5F8);
        }

        unsignedIntValue = [*(*(&v16 + 1) + 8 * i) unsignedIntValue];
        if ((unsignedIntValue - 327695) <= 6 && ((1 << (unsignedIntValue - 15)) & 0x55) != 0)
        {
          v13(v4, unsignedIntValue);
        }
      }

      v6 = [&unk_1F0FBF5F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLInternalResource fetchRequest];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"resourceType", 14];
  v27[0] = v9;
  v10 = MEMORY[0x1E696AE18];
  recipeIDs = [(PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier *)self recipeIDs];
  v12 = [v10 predicateWithFormat:@"%K IN %@", @"recipeID", recipeIDs];
  v27[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v14 = [v8 andPredicateWithSubpredicates:v13];
  [v7 setPredicate:v14];

  identifier = [*MEMORY[0x1E6983148] identifier];
  v16 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];

  v26 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __121__PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier_performActionWithManagedObjectContext_error___block_invoke;
  v24[3] = &unk_1E7572988;
  v17 = v16;
  v25 = v17;
  v18 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v7 pendingParentUnitCount:0 error:&v26 processingBlock:v24];

  v19 = v26;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v20 = v19;
  v21 = v20;
  if (v18 != 1 && error)
  {
    v22 = v20;
    *error = v21;
  }

  return v18;
}

@end