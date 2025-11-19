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
  v1 = objc_getAssociatedObject(a1, &_listContainsOrderedItemsKey);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

  objc_setAssociatedObject(a1, &_listContainsOrderedItemsKey, v3, 3);
}

- (id)_syncQueue
{
  v2 = objc_getAssociatedObject(a1, &_syncQueueKey);
  if (!v2)
  {
    v2 = dispatch_queue_create("_UIKBRTObjectArrayQueue", 0);
    objc_setAssociatedObject(a1, &_syncQueueKey, v2, 1);
  }

  return v2;
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray before:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v9 = [v7 owner];

  if (v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  v10 = [v8 owner];

  if (v10 != a1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"nextEntry == nil || nextEntry.owner == self"}];
  }

LABEL_7:
  if ([a1 count] && objc_msgSend(a1, "_listContainsOrderedItems"))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"!self._listContainsOrderedItems"}];
  }

  v12 = [a1 _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_before___block_invoke;
  block[3] = &unk_1E7107CE8;
  v19 = v7;
  v20 = a1;
  v21 = v8;
  v22 = a2;
  v13 = v8;
  v14 = v7;
  dispatch_sync(v12, block);
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray after:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v9 = [v7 owner];

  if (v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  v10 = [v8 owner];

  if (v10 != a1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"previousEntry == nil || previousEntry.owner == self"}];
  }

LABEL_7:
  if ([a1 count] && objc_msgSend(a1, "_listContainsOrderedItems"))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"!self._listContainsOrderedItems"}];
  }

  v12 = [a1 _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_after___block_invoke;
  block[3] = &unk_1E7107CE8;
  v19 = v7;
  v20 = a1;
  v21 = v8;
  v22 = a2;
  v13 = v8;
  v14 = v7;
  dispatch_sync(v12, block);
}

- (void)_uikbrtInsert:()_UIKBRTObjectArray beforeItemPassingTest:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v9 = [v7 owner];

  if (v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == nil"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"test"}];

LABEL_5:
  if ([a1 count])
  {
    if (([a1 _listContainsOrderedItems] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"self._listContainsOrderedItems"}];
    }
  }

  else
  {
    [a1 _set_listContainsOrderedItems:1];
  }

  v11 = [a1 _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_beforeItemPassingTest___block_invoke;
  block[3] = &unk_1E70FCE28;
  v18 = v7;
  v19 = a1;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_sync(v11, block);
}

- (void)_uikbrtRemove:()_UIKBRTObjectArray
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v6 = [v5 owner];

  if (v6 != a1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"_UIKBRTObjectArray.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"entry.owner == self"}];
  }

  v7 = [a1 _syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NSMutableArray__UIKBRTObjectArray___uikbrtRemove___block_invoke;
  block[3] = &unk_1E70F35B8;
  block[4] = a1;
  v12 = v5;
  v8 = v5;
  dispatch_sync(v7, block);
}

@end