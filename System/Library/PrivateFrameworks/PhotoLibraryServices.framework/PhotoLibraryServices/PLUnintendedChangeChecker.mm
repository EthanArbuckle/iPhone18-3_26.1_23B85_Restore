@interface PLUnintendedChangeChecker
+ (BOOL)shouldCheckForUnintendedChanges;
+ (void)checkForUnintendedChangeOnMergeConflicts:(id)conflicts withBlock:(id)block;
+ (void)checkForUnintendedChangesDuringeSave:(id)save withBlock:(id)block;
- (PLUnintendedChangeChecker)init;
- (void)_checkForUnintendedCPLChangesOnObject:(id)object withBlock:(id)block;
- (void)_checkForUnintendedChangesOnObject:(id)object withBlock:(id)block;
- (void)_checkForUnintendedChangesOnObject:(id)object withEntity:(id)entity unexpectedKeys:(id)keys block:(id)block;
- (void)_checkForUnintendedMomentChangesOnObject:(id)object withBlock:(id)block;
- (void)checkForUnintendedChangeOnMergeConflicts:(id)conflicts withBlock:(id)block;
- (void)checkForUnintendedChangesDuringeSave:(id)save withBlock:(id)block;
@end

@implementation PLUnintendedChangeChecker

+ (BOOL)shouldCheckForUnintendedChanges
{
  v2 = MEMORY[0x19EAEE230](self, a2);
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"PLEnableUnintendedChangeChecks"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_checkForUnintendedChangesOnObject:(id)object withEntity:(id)entity unexpectedKeys:(id)keys block:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  entityCopy = entity;
  keysCopy = keys;
  blockCopy = block;
  entity = [objectCopy entity];
  v14 = [entity isKindOfEntity:entityCopy];

  if (v14)
  {
    v28 = entityCopy;
    v30 = objectCopy;
    changedValues = [objectCopy changedValues];
    v16 = MEMORY[0x1E695DFD8];
    v29 = changedValues;
    allKeys = [changedValues allKeys];
    v18 = [v16 setWithArray:allKeys];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = keysCopy;
    obj = keysCopy;
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
            managedObjectContext = [v30 managedObjectContext];
            name = [managedObjectContext name];
            blockCopy[2](blockCopy, v23, v24, name);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }

    objectCopy = v30;
    keysCopy = v27;
    entityCopy = v28;
  }
}

- (void)_checkForUnintendedCPLChangesOnObject:(id)object withBlock:(id)block
{
  blockCopy = block;
  objectCopy = object;
  v8 = +[PLManagedAsset entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:objectCopy withEntity:v8 unexpectedKeys:self->_unexpectedCPLAssetKeys block:blockCopy];
}

- (void)_checkForUnintendedMomentChangesOnObject:(id)object withBlock:(id)block
{
  blockCopy = block;
  objectCopy = object;
  v8 = +[PLManagedAsset entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:objectCopy withEntity:v8 unexpectedKeys:self->_unexpectedMomentAssetKeys block:blockCopy];

  v9 = +[PLAdditionalAssetAttributes entity];
  [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:objectCopy withEntity:v9 unexpectedKeys:self->_unexpectedMomentAdditionalAssetAttributeKeys block:blockCopy];
}

- (void)_checkForUnintendedChangesOnObject:(id)object withBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  managedObjectContext = [objectCopy managedObjectContext];
  name = [managedObjectContext name];

  if ([name hasPrefix:PLDatabaseContextNameMomentLibrary])
  {
    [(PLUnintendedChangeChecker *)self _checkForUnintendedMomentChangesOnObject:objectCopy withBlock:blockCopy];
  }

  else if ([name hasPrefix:PLDatabaseContextNameCPLLibrary])
  {
    [(PLUnintendedChangeChecker *)self _checkForUnintendedCPLChangesOnObject:objectCopy withBlock:blockCopy];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)checkForUnintendedChangeOnMergeConflicts:(id)conflicts withBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  conflictsCopy = conflicts;
  blockCopy = block;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = conflictsCopy;
  v8 = [conflictsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        sourceObject = [v12 sourceObject];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __80__PLUnintendedChangeChecker_checkForUnintendedChangeOnMergeConflicts_withBlock___block_invoke;
        v16[3] = &unk_1E7574690;
        v14 = blockCopy;
        v16[4] = v12;
        v17 = v14;
        [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:sourceObject withBlock:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)checkForUnintendedChangesDuringeSave:(id)save withBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  updatedObjects = [save updatedObjects];
  v8 = [updatedObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(updatedObjects);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76__PLUnintendedChangeChecker_checkForUnintendedChangesDuringeSave_withBlock___block_invoke;
        v14[3] = &unk_1E7574690;
        v13 = blockCopy;
        v14[4] = v12;
        v15 = v13;
        [(PLUnintendedChangeChecker *)self _checkForUnintendedChangesOnObject:v12 withBlock:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [updatedObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (void)checkForUnintendedChangeOnMergeConflicts:(id)conflicts withBlock:(id)block
{
  conflictsCopy = conflicts;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  if ([self shouldCheckForUnintendedChanges])
  {
    v8 = objc_alloc_init(PLUnintendedChangeChecker);
    [(PLUnintendedChangeChecker *)v8 checkForUnintendedChangeOnMergeConflicts:conflictsCopy withBlock:blockCopy];
  }

  objc_autoreleasePoolPop(v7);
}

+ (void)checkForUnintendedChangesDuringeSave:(id)save withBlock:(id)block
{
  saveCopy = save;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  if ([self shouldCheckForUnintendedChanges])
  {
    v8 = objc_alloc_init(PLUnintendedChangeChecker);
    [(PLUnintendedChangeChecker *)v8 checkForUnintendedChangesDuringeSave:saveCopy withBlock:blockCopy];
  }

  objc_autoreleasePoolPop(v7);
}

@end