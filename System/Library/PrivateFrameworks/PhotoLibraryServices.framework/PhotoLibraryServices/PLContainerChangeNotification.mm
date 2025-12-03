@interface PLContainerChangeNotification
- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet;
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
- (id)_initWithObject:(id)object snapshot:(id)snapshot changedObjects:(id)objects;
- (id)name;
- (unint64_t)snapshotIndexForContainedObject:(id)object;
- (void)_calculateDiffs;
- (void)_calculateDiffsIfNecessary;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(id)block;
@end

@implementation PLContainerChangeNotification

- (unint64_t)snapshotIndexForContainedObject:(id)object
{
  objectCopy = object;
  if (self->_snapshot)
  {
    _contentRelationshipName = [(PLContainerChangeNotification *)self _contentRelationshipName];
    if (_contentRelationshipName && [(PLObjectSnapshot *)self->_snapshot hasSnapshotValueForProperty:_contentRelationshipName])
    {
      v6 = [(PLObjectSnapshot *)self->_snapshot snapshotValueForProperty:_contentRelationshipName];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 indexOfObject:objectCopy];
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
    changedIndexes = [(PLContainerChangeNotification *)self changedIndexes];
    array = [v5 objectsAtIndexes:changedIndexes];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
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
    insertedIndexes = [(PLContainerChangeNotification *)self insertedIndexes];
    array = [v5 objectsAtIndexes:insertedIndexes];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
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
    deletedIndexes = [(PLContainerChangeNotification *)self deletedIndexes];
    array = [v4 objectsAtIndexes:deletedIndexes];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
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
  indexSet = 0;
  if (v3)
  {
    v8 = [v5 objectsAtIndexes:self->_changedIndexes];
    if (v8)
    {
      indexSet = [MEMORY[0x1E696AD50] indexSet];
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

            [indexSet addIndex:{objc_msgSend(v4, "indexOfObject:", *(*(&v15 + 1) + 8 * i), v15)}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v11);
      }
    }

    else
    {
      indexSet = 0;
    }
  }

  return indexSet;
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

- (void)enumerateMovesWithBlock:(id)block
{
  blockCopy = block;
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
    v7 = blockCopy;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLContainerChangeNotification.m" lineNumber:67 description:@"Abstract class"];

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

    _changedObjects = [(PLContainerChangeNotification *)self _changedObjects];
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = v5;
    v29 = v4;
    diffOrderedSets(v4, v5, _changedObjects, &v33, &v32, &v31, &self->_movedFromIndexes, &v30);
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
      indexSet = [MEMORY[0x1E696AC90] indexSet];
      v18 = self->_deletedIndexes;
      self->_deletedIndexes = indexSet;
    }

    v5 = v28;
    v4 = v29;
    if (!self->_insertedIndexes)
    {
      indexSet2 = [MEMORY[0x1E696AC90] indexSet];
      v20 = self->_insertedIndexes;
      self->_insertedIndexes = indexSet2;
    }

    if (!self->_changedIndexes)
    {
      indexSet3 = [MEMORY[0x1E696AC90] indexSet];
      v22 = self->_changedIndexes;
      self->_changedIndexes = indexSet3;
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

- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet
{
  _contentRelationshipName = [(PLContainerChangeNotification *)self _contentRelationshipName];
  v8 = [(PLObjectSnapshot *)self->_snapshot hasSnapshotValueForProperty:_contentRelationshipName];
  if (v8)
  {
    *set = [(PLObjectSnapshot *)self->_snapshot snapshotValueForProperty:_contentRelationshipName];
    _managedObject = [(PLContainerChangeNotification *)self _managedObject];
    *newSet = [_managedObject valueForKey:_contentRelationshipName];
  }

  return v8;
}

- (NSString)_diffDescription
{
  [(PLContainerChangeNotification *)self _calculateDiffsIfNecessary];
  v3 = objc_autoreleasePoolPush();
  string = [MEMORY[0x1E696AD60] string];
  if ([(PLContainerChangeNotification *)self shouldReload])
  {
    _contentRelationshipName = [(PLContainerChangeNotification *)self _contentRelationshipName];
    [string appendFormat:@", %@ need reload", _contentRelationshipName];
  }

  else
  {
    deletedIndexes = [(PLContainerChangeNotification *)self deletedIndexes];

    if (deletedIndexes)
    {
      deletedIndexes2 = [(PLContainerChangeNotification *)self deletedIndexes];
      pl_shortDescription = [deletedIndexes2 pl_shortDescription];
      [string appendFormat:@", deleted: {%@}", pl_shortDescription];
    }

    insertedIndexes = [(PLContainerChangeNotification *)self insertedIndexes];

    if (insertedIndexes)
    {
      insertedIndexes2 = [(PLContainerChangeNotification *)self insertedIndexes];
      pl_shortDescription2 = [insertedIndexes2 pl_shortDescription];
      [string appendFormat:@", inserted: {%@}", pl_shortDescription2];
    }

    if (self->_movedIndexes)
    {
      [string appendString:{@", moved: {"}];
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
      v13 = string;
      v19 = v13;
      [(NSIndexSet *)movedIndexes enumerateIndexesUsingBlock:v18];
      [v13 appendString:@"}"];

      _Block_object_dispose(v21, 8);
    }

    changedIndexes = [(PLContainerChangeNotification *)self changedIndexes];

    if (changedIndexes)
    {
      changedIndexes2 = [(PLContainerChangeNotification *)self changedIndexes];
      pl_shortDescription3 = [changedIndexes2 pl_shortDescription];
      [string appendFormat:@", changed: {%@}", pl_shortDescription3];
    }

    if (self->_countDidChange)
    {
      [string appendString:{@", count changed"}];
    }
  }

  objc_autoreleasePoolPop(v3);

  return string;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLContainerChangeNotification.m" lineNumber:260 description:@"Abstract class"];

  return 0;
}

- (id)_initWithObject:(id)object snapshot:(id)snapshot changedObjects:(id)objects
{
  objectCopy = object;
  snapshotCopy = snapshot;
  objectsCopy = objects;
  _init = [(PLContainerChangeNotification *)self _init];
  v13 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, object);
    objc_storeStrong(v13 + 2, snapshot);
    objc_storeStrong(v13 + 3, objects);
  }

  return v13;
}

@end