@interface PLUnintendedChangeChecker
+ (BOOL)shouldCheckForUnintendedChanges;
+ (void)checkForUnintendedChangeOnMergeConflicts:(id)a3 withBlock:(id)a4;
+ (void)checkForUnintendedChangesDuringeSave:(id)a3 withBlock:(id)a4;
- (PLUnintendedChangeChecker)init;
- (void)_checkForUnintendedCPLChangesOnObject:(id)a3 withBlock:(id)a4;
- (void)_checkForUnintendedChangesOnObject:(id)a3 withBlock:(id)a4;
- (void)_checkForUnintendedChangesOnObject:(id)a3 withEntity:(id)a4 unexpectedKeys:(id)a5 block:(id)a6;
- (void)_checkForUnintendedMomentChangesOnObject:(id)a3 withBlock:(id)a4;
- (void)checkForUnintendedChangeOnMergeConflicts:(id)a3 withBlock:(id)a4;
- (void)checkForUnintendedChangesDuringeSave:(id)a3 withBlock:(id)a4;
@end

@implementation PLUnintendedChangeChecker

+ (BOOL)shouldCheckForUnintendedChanges
{
  v2 = MEMORY[0x19EAEE230](a1, a2);
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PLEnableUnintendedChangeChecks"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_checkForUnintendedChangesOnObject:(id)a3 withEntity:(id)a4 unexpectedKeys:(id)a5 block:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 entity];
  v14 = [v13 isKindOfEntity:v10];

  if (v14)
  {
    v28 = v10;
    v30 = v9;
    v15 = [v9 changedValues];
    v16 = MEMORY[0x1E695DFD8];
    v29 = v15;
    v17 = [v15 allKeys];
    v18 = [v16 setWithArray:v17];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v11;
    obj = v11;
    v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          if ([v18 containsObject:v23])
          {
            v24 = [v29 objectForKeyedSubscript:v23];
            v25 = [v30 managedObjectContext];
            v26 = [v25 name];
            v12[2](v12, v23, v24, v26);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }

    v9 = v30;
    v11 = v27;
    v10 = v28;
  }
}

- (void)_checkForUnintendedCPLChangesOnObject:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PLManagedAsset entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v7 withEntity:v8 unexpectedKeys:self->_unexpectedCPLAssetKeys block:v6];
}

- (void)_checkForUnintendedMomentChangesOnObject:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PLManagedAsset entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v7 withEntity:v8 unexpectedKeys:self->_unexpectedMomentAssetKeys block:v6];

  v9 = +[PLAdditionalAssetAttributes entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v7 withEntity:v9 unexpectedKeys:self->_unexpectedMomentAdditionalAssetAttributeKeys block:v6];
}

- (void)_checkForUnintendedChangesOnObject:(id)a3 withBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v10 managedObjectContext];
  v9 = [v8 name];

  if ([v9 hasPrefix:PLDatabaseContextNameMomentLibrary])
  {
    [(PLUnintendedChangeChecker *)self _checkForUnintendedMomentChangesOnObject:v10 withBlock:v6];
  }

  else if ([v9 hasPrefix:PLDatabaseContextNameCPLLibrary])
  {
    [(PLUnintendedChangeChecker *)self _checkForUnintendedCPLChangesOnObject:v10 withBlock:v6];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)checkForUnintendedChangeOnMergeConflicts:(id)a3 withBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 sourceObject];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __80__PLUnintendedChangeChecker_checkForUnintendedChangeOnMergeConflicts_withBlock___block_invoke;
        v16[3] = &unk_1E7574690;
        v14 = v7;
        v16[4] = v12;
        v17 = v14;
        [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v13 withBlock:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)checkForUnintendedChangesDuringeSave:(id)a3 withBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [a3 updatedObjects];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76__PLUnintendedChangeChecker_checkForUnintendedChangesDuringeSave_withBlock___block_invoke;
        v14[3] = &unk_1E7574690;
        v13 = v6;
        v14[4] = v12;
        v15 = v13;
        [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v12 withBlock:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (PLUnintendedChangeChecker)init
{
  v14[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PLUnintendedChangeChecker;
  v2 = [(PLUnintendedChangeChecker *)&v11 init];
  if (v2)
  {
    v14[0] = @"uuid";
    v14[1] = @"cloudAssetGUID";
    v14[2] = @"videoCpDurationValue";
    v14[3] = @"favorite";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    unexpectedMomentAssetKeys = v2->_unexpectedMomentAssetKeys;
    v2->_unexpectedMomentAssetKeys = v3;

    v13 = @"assetDescription";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    unexpectedMomentAdditionalAssetAttributeKeys = v2->_unexpectedMomentAdditionalAssetAttributeKeys;
    v2->_unexpectedMomentAdditionalAssetAttributeKeys = v5;

    v12 = @"moment";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    unexpectedCPLAssetKeys = v2->_unexpectedCPLAssetKeys;
    v2->_unexpectedCPLAssetKeys = v7;

    v9 = v2;
  }

  return v2;
}

+ (void)checkForUnintendedChangeOnMergeConflicts:(id)a3 withBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if ([a1 shouldCheckForUnintendedChanges])
  {
    v8 = objc_alloc_init(PLUnintendedChangeChecker);
    [(PLUnintendedChangeChecker *)v8 checkForUnintendedChangeOnMergeConflicts:v9 withBlock:v6];
  }

  objc_autoreleasePoolPop(v7);
}

+ (void)checkForUnintendedChangesDuringeSave:(id)a3 withBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if ([a1 shouldCheckForUnintendedChanges])
  {
    v8 = objc_alloc_init(PLUnintendedChangeChecker);
    [(PLUnintendedChangeChecker *)v8 checkForUnintendedChangesDuringeSave:v9 withBlock:v6];
  }

  objc_autoreleasePoolPop(v7);
}

@end