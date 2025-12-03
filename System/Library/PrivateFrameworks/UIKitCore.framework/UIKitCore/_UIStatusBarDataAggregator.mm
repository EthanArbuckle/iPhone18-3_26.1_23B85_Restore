@interface _UIStatusBarDataAggregator
+ (void)initialize;
- (NSSet)coalescedEntryKeys;
- (_UIStatusBarDataAggregator)initWithUpdateBlock:(id)block;
- (id)_updatedDataFromData:(id)data delayedKeys:(id)keys;
- (void)_coalescedUpdateForEntryKeys:(id)keys;
- (void)_updateForCoalescedKeysWithData:(id)data;
- (void)_updateForDelayedKeysWithData:(id)data;
- (void)_updateForOverlayWithData:(id)data;
- (void)_updateFromPendingUpdatesForKeys:(id)keys block:(id)block;
- (void)beginCoalescingUpdatesForEntryKeys:(id)keys delay:(double)delay;
- (void)beginDelayingUpdatesForEntryKeys:(id)keys;
- (void)endCoalescingUpdatesForEntryKeys:(id)keys;
- (void)endDelayingUpdatesForEntryKeys:(id)keys;
- (void)updateWithData:(id)data;
@end

@implementation _UIStatusBarDataAggregator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v3 = _statusBarDelayedDataEntryKeys;
    _statusBarDelayedDataEntryKeys = v2;
  }
}

- (_UIStatusBarDataAggregator)initWithUpdateBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataAggregator;
  blockCopy = block;
  v4 = [(_UIStatusBarDataAggregator *)&v10 init];
  [(_UIStatusBarDataAggregator *)v4 setUpdateBlock:blockCopy, v10.receiver, v10.super_class];

  v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
  [(_UIStatusBarDataAggregator *)v4 setDelayedKeys:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(_UIStatusBarDataAggregator *)v4 setPendingUpdates:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(_UIStatusBarDataAggregator *)v4 setCoalescedKeys:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(_UIStatusBarDataAggregator *)v4 setCoalescedTimers:v8];

  return v4;
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  v7 = dataCopy;
  if (!self->_dataClass)
  {
    v5 = objc_opt_class();
    dataClass = self->_dataClass;
    self->_dataClass = v5;

    dataCopy = v7;
  }

  [(_UIStatusBarDataAggregator *)self _updateForOverlayWithData:dataCopy];
}

- (id)_updatedDataFromData:(id)data delayedKeys:(id)keys
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keysCopy = keys;
  if (![keysCopy count])
  {
    v17 = dataCopy;
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = keysCopy;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [dataCopy valueForKey:v14];
        if (v15)
        {
          if (!v11)
          {
            v11 = [dataCopy copy];
          }

          [v11 setValue:0 forKey:v14];
          v16 = [_UIStatusBarDataAggregatorUpdate updateWithEntry:v15];
          [(NSMutableDictionary *)self->_pendingUpdates setObject:v16 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);

    keysCopy = v19;
    if (v11)
    {
      if ([v11 isEmpty])
      {
        v17 = 0;
      }

      else
      {
        v11 = v11;
        v17 = v11;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  v17 = dataCopy;
  v11 = 0;
LABEL_20:

LABEL_21:

  return v17;
}

- (void)_updateFromPendingUpdatesForKeys:(id)keys block:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  blockCopy = block;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = keysCopy;
  v8 = [keysCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = blockCopy;
    v10 = 0;
    v11 = 0;
    v12 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_pendingUpdates objectForKeyedSubscript:v14, v22];
        v16 = v15;
        if (v15)
        {
          animated = [v15 animated];
          if (animated)
          {
            v18 = v10;
          }

          else
          {
            v18 = v11;
          }

          if (!v18)
          {
            v19 = animated;
            v20 = objc_alloc_init(self->_dataClass);
            v18 = v20;
            if (v19)
            {
              v10 = v20;
            }

            else
            {
              v11 = v20;
            }
          }

          entry = [v16 entry];
          [v18 setValue:entry forKey:v14];

          [(NSMutableDictionary *)self->_pendingUpdates setObject:0 forKeyedSubscript:v14];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
    blockCopy = v22;
    if (v11)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69___UIStatusBarDataAggregator__updateFromPendingUpdatesForKeys_block___block_invoke;
      v24[3] = &unk_1E70F4A50;
      v26 = v22;
      v25 = v11;
      [UIView performWithoutAnimation:v24];
    }

    if (v10)
    {
      (v22)[2](v22, v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }
}

- (void)_updateForOverlayWithData:(id)data
{
  v4 = [data dataByApplyingOverlay:self->_overlayData];
  [(_UIStatusBarDataAggregator *)self _updateForDelayedKeysWithData:v4];
}

- (void)_updateForDelayedKeysWithData:(id)data
{
  delayedKeys = self->_delayedKeys;
  dataCopy = data;
  if ([(NSCountedSet *)delayedKeys count])
  {
    v5 = [(_UIStatusBarDataAggregator *)self _updatedDataFromData:dataCopy delayedKeys:self->_delayedKeys];

    if (v5)
    {
      [(_UIStatusBarDataAggregator *)self _updateForCoalescedKeysWithData:v5];
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [(_UIStatusBarDataAggregator *)self _updateForCoalescedKeysWithData:dataCopy];
    v6 = dataCopy;
  }
}

- (void)beginDelayingUpdatesForEntryKeys:(id)keys
{
  v15 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(keysCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(NSCountedSet *)self->_delayedKeys addObject:v9];
        [_statusBarDelayedDataEntryKeys addObject:v9];
      }

      v6 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)endDelayingUpdatesForEntryKeys:(id)keys
{
  v21 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v6 = [MEMORY[0x1E695DFA8] setWithSet:self->_delayedKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = keysCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (![(NSCountedSet *)self->_delayedKeys countForObject:v13])
        {
          currentHandler = [*(v11 + 2728) currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDataAggregator.m" lineNumber:187 description:{@"Ending delayed updates for non-delayed key %@", v13}];

          v11 = 0x1E696A000;
        }

        [(NSCountedSet *)self->_delayedKeys removeObject:v13];
        [_statusBarDelayedDataEntryKeys removeObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v6 minusSet:self->_delayedKeys];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___UIStatusBarDataAggregator_endDelayingUpdatesForEntryKeys___block_invoke;
  v15[3] = &unk_1E7121F20;
  v15[4] = self;
  [(_UIStatusBarDataAggregator *)self _updateFromPendingUpdatesForKeys:v6 block:v15];
}

- (void)_updateForCoalescedKeysWithData:(id)data
{
  dataCopy = data;
  if ([(NSMutableDictionary *)self->_coalescedKeys count])
  {
    coalescedEntryKeys = [(_UIStatusBarDataAggregator *)self coalescedEntryKeys];
    v6 = [(_UIStatusBarDataAggregator *)self _updatedDataFromData:dataCopy delayedKeys:coalescedEntryKeys];

    coalescedKeys = self->_coalescedKeys;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __62___UIStatusBarDataAggregator__updateForCoalescedKeysWithData___block_invoke;
    v13 = &unk_1E7121F48;
    v14 = dataCopy;
    selfCopy = self;
    [(NSMutableDictionary *)coalescedKeys enumerateKeysAndObjectsUsingBlock:&v10];
    if (v6)
    {
      v8 = [(_UIStatusBarDataAggregator *)self updateBlock:v10];
      (v8)[2](v8, v6);
    }
  }

  else
  {
    updateBlock = [(_UIStatusBarDataAggregator *)self updateBlock];
    (updateBlock)[2](updateBlock, dataCopy);
  }
}

- (void)_coalescedUpdateForEntryKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  updateBlock = [(_UIStatusBarDataAggregator *)self updateBlock];
  [(_UIStatusBarDataAggregator *)self _updateFromPendingUpdatesForKeys:keysCopy block:updateBlock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_coalescedTimers objectForKeyedSubscript:v11, v13];
        [v12 invalidate];

        [(NSMutableDictionary *)self->_coalescedTimers setObject:0 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)beginCoalescingUpdatesForEntryKeys:(id)keys delay:(double)delay
{
  v19 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [keysCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(keysCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_coalescedKeys objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
          [(NSMutableDictionary *)self->_coalescedKeys setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [keysCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)endCoalescingUpdatesForEntryKeys:(id)keys
{
  keysCopy = keys;
  v7 = [keysCopy mutableCopy];
  [v7 minusSet:self->_delayedKeys];
  [(_UIStatusBarDataAggregator *)self _coalescedUpdateForEntryKeys:v7];
  coalescedKeys = self->_coalescedKeys;
  allObjects = [keysCopy allObjects];

  [(NSMutableDictionary *)coalescedKeys removeObjectsForKeys:allObjects];
}

- (NSSet)coalescedEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)self->_coalescedKeys allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

@end