@interface PLContainerChangeNotification
- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4;
- (BOOL)hasMoves;
- (NSArray)changedObjects;
- (NSArray)deletedObjects;
- (NSArray)insertedObjects;
- (NSIndexSet)changedIndexes;
- (NSIndexSet)changedIndexesRelativeToSnapshot;
- (NSIndexSet)deletedIndexes;
- (NSIndexSet)insertedIndexes;
- (NSString)_contentRelationshipName;
- (NSString)_diffDescription;
- (PLContainerChangeNotification)init;
- (id)_initWithObject:(id)a3 snapshot:(id)a4 changedObjects:(id)a5;
- (id)name;
- (unint64_t)snapshotIndexForContainedObject:(id)a3;
- (void)_calculateDiffs;
- (void)_calculateDiffsIfNecessary;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(id)a3;
@end

@implementation PLContainerChangeNotification

- (unint64_t)snapshotIndexForContainedObject:(id)a3
{
  v4 = a3;
  if (self->_snapshot)
  {
    v5 = [(PLContainerChangeNotification *)self _contentRelationshipName];
    if (v5 && [(PLObjectSnapshot *)self->_snapshot hasSnapshotValueForProperty:v5])
    {
      v6 = [(PLObjectSnapshot *)self->_snapshot snapshotValueForProperty:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 indexOfObject:v4];
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (NSArray)changedObjects
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v9 = 0;
  v10 = 0;
  v3 = [(PLContainerChangeNotification *)self _getOldSet:&v10 newSet:&v9];
  v4 = v10;
  v5 = v9;
  if (v3)
  {
    v6 = [(PLContainerChangeNotification *)self changedIndexes];
    v7 = [v5 objectsAtIndexes:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  return v7;
}

- (NSArray)insertedObjects
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v9 = 0;
  v10 = 0;
  v3 = [(PLContainerChangeNotification *)self _getOldSet:&v10 newSet:&v9];
  v4 = v10;
  v5 = v9;
  if (v3)
  {
    v6 = [(PLContainerChangeNotification *)self insertedIndexes];
    v7 = [v5 objectsAtIndexes:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  return v7;
}

- (NSArray)deletedObjects
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v9 = 0;
  v10 = 0;
  v3 = [(PLContainerChangeNotification *)self _getOldSet:&v10 newSet:&v9];
  v4 = v10;
  v5 = v9;
  if (v3)
  {
    v6 = [(PLContainerChangeNotification *)self deletedIndexes];
    v7 = [v4 objectsAtIndexes:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  return v7;
}

- (NSIndexSet)changedIndexesRelativeToSnapshot
{
  v22 = *MEMORY[0x1E69E9840];
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v19 = 0;
  v20 = 0;
  v3 = [(PLContainerChangeNotification *)self _getOldSet:&v20 newSet:&v19];
  v4 = v20;
  v5 = v19;
  v6 = v5;
  v7 = 0;
  if (v3)
  {
    v8 = [v5 objectsAtIndexes:self->_changedIndexes];
    if (v8)
    {
      v7 = [MEMORY[0x1E696AD50] indexSet];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v7 addIndex:{objc_msgSend(v4, "indexOfObject:", *(*(&v15 + 1) + 8 * i), v15)}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSIndexSet)changedIndexes
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  changedIndexes = self->_changedIndexes;

  return changedIndexes;
}

- (BOOL)hasMoves
{
  movedIndexes = self->_movedIndexes;
  if (movedIndexes)
  {
    LOBYTE(movedIndexes) = [(NSIndexSet *)movedIndexes count]!= 0;
  }

  return movedIndexes;
}

- (void)enumerateMovesWithBlock:(id)a3
{
  v4 = a3;
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  movedIndexes = self->_movedIndexes;
  if (movedIndexes)
  {
    if (self->_movedFromIndexes)
    {
      [(NSIndexSet *)self->_movedIndexes count];
      CFArrayGetCount(self->_movedFromIndexes);
      movedIndexes = self->_movedIndexes;
    }

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PLContainerChangeNotification_enumerateMovesWithBlock___block_invoke;
    v6[3] = &unk_1E756D488;
    v6[4] = self;
    v8 = v9;
    v7 = v4;
    [(NSIndexSet *)movedIndexes enumerateIndexesUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __57__PLContainerChangeNotification_enumerateMovesWithBlock___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  CFArrayGetValueAtIndex(v2, v4);
  v5 = *(a1[5] + 16);

  return v5();
}

- (NSIndexSet)insertedIndexes
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  insertedIndexes = self->_insertedIndexes;

  return insertedIndexes;
}

- (NSIndexSet)deletedIndexes
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  deletedIndexes = self->_deletedIndexes;

  return deletedIndexes;
}

- (id)name
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLContainerChangeNotification.m" lineNumber:67 description:@"Abstract class"];

  return 0;
}

- (void)dealloc
{
  movedFromIndexes = self->_movedFromIndexes;
  if (movedFromIndexes)
  {
    CFRelease(movedFromIndexes);
  }

  v4.receiver = self;
  v4.super_class = PLContainerChangeNotification;
  [(PLContainerChangeNotification *)&v4 dealloc];
}

- (PLContainerChangeNotification)init
{
  v3.receiver = self;
  v3.super_class = PLContainerChangeNotification;
  return [(PLContainerChangeNotification *)&v3 init];
}

- (void)_calculateDiffs
{
  self->_didCalculateDiffs = 1;
  v35 = 0;
  v34 = 0;
  v3 = [(PLContainerChangeNotification *)self _getOldSet:&v35 newSet:&v34];
  v4 = v35;
  v5 = v34;
  self->_shouldReload = !v3;
  if (v3)
  {
    deletedIndexes = self->_deletedIndexes;
    self->_deletedIndexes = 0;

    insertedIndexes = self->_insertedIndexes;
    self->_insertedIndexes = 0;

    movedIndexes = self->_movedIndexes;
    self->_movedIndexes = 0;

    movedFromIndexes = self->_movedFromIndexes;
    if (movedFromIndexes)
    {
      CFRelease(movedFromIndexes);
      self->_movedFromIndexes = 0;
    }

    changedIndexes = self->_changedIndexes;
    self->_changedIndexes = 0;

    v11 = [(PLContainerChangeNotification *)self _changedObjects];
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = v5;
    v29 = v4;
    diffOrderedSets(v4, v5, v11, &v33, &v32, &v31, &self->_movedFromIndexes, &v30);
    v12 = v33;
    v27 = v33;
    v13 = v32;
    v26 = v32;
    v14 = v31;
    v25 = v31;
    v15 = v30;
    v24 = v30;

    objc_storeStrong(&self->_deletedIndexes, v12);
    objc_storeStrong(&self->_insertedIndexes, v13);
    objc_storeStrong(&self->_movedIndexes, v14);
    v16 = self->_movedFromIndexes;
    if (v16)
    {
      CFRetain(v16);
    }

    objc_storeStrong(&self->_changedIndexes, v15);
    if (!self->_deletedIndexes)
    {
      v17 = [MEMORY[0x1E696AC90] indexSet];
      v18 = self->_deletedIndexes;
      self->_deletedIndexes = v17;
    }

    v5 = v28;
    v4 = v29;
    if (!self->_insertedIndexes)
    {
      v19 = [MEMORY[0x1E696AC90] indexSet];
      v20 = self->_insertedIndexes;
      self->_insertedIndexes = v19;
    }

    if (!self->_changedIndexes)
    {
      v21 = [MEMORY[0x1E696AC90] indexSet];
      v22 = self->_changedIndexes;
      self->_changedIndexes = v21;
    }

    v23 = [v29 count];
    self->_countDidChange = v23 != [v28 count];
  }
}

- (void)_calculateDiffsIfNecessary
{
  if (![(PLContainerChangeNotification *)self _didCalculateDiffs])
  {

    [(PLContainerChangeNotification *)self _calculateDiffs];
  }
}

- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4
{
  v7 = [(PLContainerChangeNotification *)self _contentRelationshipName];
  v8 = [(PLObjectSnapshot *)self->_snapshot hasSnapshotValueForProperty:v7];
  if (v8)
  {
    *a3 = [(PLObjectSnapshot *)self->_snapshot snapshotValueForProperty:v7];
    v9 = [(PLContainerChangeNotification *)self _managedObject];
    *a4 = [v9 valueForKey:v7];
  }

  return v8;
}

- (NSString)_diffDescription
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD60] string];
  if ([(PLContainerChangeNotification *)self shouldReload])
  {
    v5 = [(PLContainerChangeNotification *)self _contentRelationshipName];
    [v4 appendFormat:@", %@ need reload", v5];
  }

  else
  {
    v6 = [(PLContainerChangeNotification *)self deletedIndexes];

    if (v6)
    {
      v7 = [(PLContainerChangeNotification *)self deletedIndexes];
      v8 = [v7 pl_shortDescription];
      [v4 appendFormat:@", deleted: {%@}", v8];
    }

    v9 = [(PLContainerChangeNotification *)self insertedIndexes];

    if (v9)
    {
      v10 = [(PLContainerChangeNotification *)self insertedIndexes];
      v11 = [v10 pl_shortDescription];
      [v4 appendFormat:@", inserted: {%@}", v11];
    }

    if (self->_movedIndexes)
    {
      [v4 appendString:{@", moved: {"}];
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 0;
      movedIndexes = self->_movedIndexes;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__PLContainerChangeNotification_Internal___diffDescription__block_invoke;
      v18[3] = &unk_1E7571F88;
      v18[4] = self;
      v20 = v21;
      v13 = v4;
      v19 = v13;
      [(NSIndexSet *)movedIndexes enumerateIndexesUsingBlock:v18];
      [v13 appendString:@"}"];

      _Block_object_dispose(v21, 8);
    }

    v14 = [(PLContainerChangeNotification *)self changedIndexes];

    if (v14)
    {
      v15 = [(PLContainerChangeNotification *)self changedIndexes];
      v16 = [v15 pl_shortDescription];
      [v4 appendFormat:@", changed: {%@}", v16];
    }

    if (self->_countDidChange)
    {
      [v4 appendString:{@", count changed"}];
    }
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

uint64_t __59__PLContainerChangeNotification_Internal___diffDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 64);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return [*(a1 + 40) appendFormat:@"%lu->%lu, ", CFArrayGetValueAtIndex(v4, v6), a2];
}

- (NSString)_contentRelationshipName
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLContainerChangeNotification.m" lineNumber:260 description:@"Abstract class"];

  return 0;
}

- (id)_initWithObject:(id)a3 snapshot:(id)a4 changedObjects:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PLContainerChangeNotification *)self _init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, a3);
    objc_storeStrong(v13 + 2, a4);
    objc_storeStrong(v13 + 3, a5);
  }

  return v13;
}

@end