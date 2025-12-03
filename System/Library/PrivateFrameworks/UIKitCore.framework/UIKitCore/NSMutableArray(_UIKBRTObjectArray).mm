@interface NSMutableArray(_UIKBRTObjectArray)
- (id)_syncQueue;
- (uint64_t)_listContainsOrderedItems;
- (void)_set_listContainsOrderedItems:()_UIKBRTObjectArray;
- (void)_uikbrtInsert:()_UIKBRTObjectArray after:;
- (void)_uikbrtInsert:()_UIKBRTObjectArray before:;
- (void)_uikbrtInsert:()_UIKBRTObjectArray beforeItemPassingTest:;
- (void)_uikbrtRemove:()_UIKBRTObjectArray;
@end

@implementation NSMutableArray(_UIKBRTObjectArray)

- (uint64_t)_listContainsOrderedItems
{
  v1 = objc_getAssociatedObject(self, &_listContainsOrderedItemsKey);
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_set_listContainsOrderedItems:()_UIKBRTObjectArray
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  objc_setAssociatedObject(self, &_listContainsOrderedItemsKey, v3, 3);
}

- (id)_syncQueue
{
  v2 = objc_getAssociatedObject(self, &_syncQueueKey);
  if (!v2)
  {
    v2 = dispatch_queue_create("_UIKBRTObjectArrayQueue", 0);
    objc_setAssociatedObject(self, &_syncQueueKey, v2, 1);
  }

  return v2;
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray before:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  owner = [v7 owner];

  if (owner)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  owner2 = [v8 owner];

  if (owner2 != self)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"nextEntry == nil || nextEntry.owner == self"}];
  }

LABEL_7:
  if ([self count] && objc_msgSend(self, "_listContainsOrderedItems"))
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"!self._listContainsOrderedItems"}];
  }

  _syncQueue = [self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_before___block_invoke;
  block[3] = &unk_1E7107CE8;
  v19 = v7;
  selfCopy = self;
  v21 = v8;
  v22 = a2;
  v13 = v8;
  v14 = v7;
  dispatch_sync(_syncQueue, block);
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray after:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  owner = [v7 owner];

  if (owner)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  owner2 = [v8 owner];

  if (owner2 != self)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"previousEntry == nil || previousEntry.owner == self"}];
  }

LABEL_7:
  if ([self count] && objc_msgSend(self, "_listContainsOrderedItems"))
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"!self._listContainsOrderedItems"}];
  }

  _syncQueue = [self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_after___block_invoke;
  block[3] = &unk_1E7107CE8;
  v19 = v7;
  selfCopy = self;
  v21 = v8;
  v22 = a2;
  v13 = v8;
  v14 = v7;
  dispatch_sync(_syncQueue, block);
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray beforeItemPassingTest:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  owner = [v7 owner];

  if (owner)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"test"}];

LABEL_5:
  if ([self count])
  {
    if (([self _listContainsOrderedItems] & 1) == 0)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"self._listContainsOrderedItems"}];
    }
  }

  else
  {
    [self _set_listContainsOrderedItems:1];
  }

  _syncQueue = [self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_beforeItemPassingTest___block_invoke;
  block[3] = &unk_1E70FCE28;
  v18 = v7;
  selfCopy = self;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_sync(_syncQueue, block);
}

- (void)_uikbrtRemove:()_UIKBRTObjectArray
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  owner = [v5 owner];

  if (owner != self)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKBRTObjectArray.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == self"}];
  }

  _syncQueue = [self _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NSMutableArray__UIKBRTObjectArray___uikbrtRemove___block_invoke;
  block[3] = &unk_1E70F35B8;
  block[4] = self;
  v12 = v5;
  v8 = v5;
  dispatch_sync(_syncQueue, block);
}

@end