@interface _UINavigationBarItemStack
- (BOOL)isPushingOrPopping;
- (BOOL)stackItemsAreEqualTo:(id)a3;
- (NSArray)items;
- (UINavigationItem)backItem;
- (UINavigationItem)previousBackItem;
- (UINavigationItem)previousTopItem;
- (UINavigationItem)topItem;
- (_UINavigationBarItemStack)initWithItems:(id)a3;
- (_UINavigationBarItemStackEntry)backEntry;
- (_UINavigationBarItemStackEntry)previousBackEntry;
- (_UINavigationItemChangeObserver)changeObserver;
- (id)_shim_popNestedNavigationItem;
- (id)description;
- (int64_t)_effectiveDisplayModeForItem:(id)a3 inStack:(id)a4;
- (int64_t)effectiveDisplayModeForItemInCurrentStack:(id)a3;
- (int64_t)effectiveDisplayModeForItemInPreviousStack:(id)a3;
- (void)_cleanupTransitionAssistant;
- (void)_completeTransition;
- (void)_prepareTransitionWithAssistant:(id)a3;
- (void)_shim_pushNestedNavigationItem:(id)a3;
- (void)_updateChangeObserversFor:(id)a3;
- (void)cancelOperation;
- (void)completeOperation;
- (void)endInteractiveTransition;
- (void)iterateEntries:(id)a3;
- (void)iterateItems:(id)a3;
- (void)popItemWithTransitionAssistant:(id)a3;
- (void)pushItem:(id)a3 withTransitionAssistant:(id)a4;
- (void)reverseIterateEntries:(id)a3;
- (void)setChangeObserver:(id)a3;
- (void)setItems:(id)a3 withTransitionAssistant:(id)a4;
@end

@implementation _UINavigationBarItemStack

- (UINavigationItem)topItem
{
  v2 = [(_UINavigationBarItemStack *)self topEntry];
  v3 = [v2 item];

  return v3;
}

- (UINavigationItem)backItem
{
  v2 = [(_UINavigationBarItemStack *)self backEntry];
  v3 = [v2 item];

  return v3;
}

- (UINavigationItem)previousTopItem
{
  v2 = [(_UINavigationBarItemStack *)self previousTopEntry];
  v3 = [v2 item];

  return v3;
}

- (_UINavigationBarItemStackEntry)backEntry
{
  v3 = [(NSMutableArray *)self->_items count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:v3 - 2];
  }

  return v4;
}

- (_UINavigationBarItemStackEntry)previousBackEntry
{
  v3 = [(NSArray *)self->_previousItems count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_previousItems objectAtIndexedSubscript:v3 - 2];
  }

  return v4;
}

- (UINavigationItem)previousBackItem
{
  v2 = [(_UINavigationBarItemStack *)self previousBackEntry];
  v3 = [v2 item];

  return v3;
}

- (void)_completeTransition
{
  previousItems = self->_previousItems;
  self->_previousItems = 0;

  [(_UINavigationBarItemStack *)self _cleanupTransitionAssistant];
  self->_state = 0;
}

- (NSArray)items
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_items;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) item];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)completeOperation
{
  if (self->_state)
  {
    v3 = [(_UINavigationBarItemStack *)self previousTopItem];
    [v3 _movedFromTopOfStack:1];

    v4 = [(_UINavigationBarItemStack *)self topItem];
    [v4 _movedToTopOfStack:1];

    [(_UINavigationBarItemStack *)self _completeTransition];
  }
}

- (void)_cleanupTransitionAssistant
{
  state = self->_state;
  v4 = [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant needsLifetimeExtended];
  if (!state && !v4)
  {
    transitionAssistant = self->_transitionAssistant;
    self->_transitionAssistant = 0;
  }
}

- (BOOL)isPushingOrPopping
{
  if ([(_UINavigationBarItemStack *)self isPushing])
  {
    return 1;
  }

  return [(_UINavigationBarItemStack *)self isPopping];
}

- (_UINavigationBarItemStack)initWithItems:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UINavigationBarItemStack;
  v5 = [(_UINavigationBarItemStack *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    items = v5->_items;
    v5->_items = v6;

    _WrapItemsAndAddToArray(v5->_items, v4);
    v8 = [(_UINavigationBarItemStack *)v5 topItem];
    [v8 _movingToTopOfStack];
    [v8 _movedToTopOfStack:1];
  }

  return v5;
}

- (void)setChangeObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_changeObserver, obj);
    [(_UINavigationBarItemStack *)self _updateChangeObserversFor:self->_items];
    v5 = obj;
    if (self->_previousItems)
    {
      [(_UINavigationBarItemStack *)self _updateChangeObserversFor:?];
      v5 = obj;
    }
  }
}

- (void)_updateChangeObserversFor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) item];
        [v11 _setChangeObserver:WeakRetained];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_prepareTransitionWithAssistant:(id)a3
{
  objc_storeStrong(&self->_transitionAssistant, a3);
  v5 = a3;
  [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant startInteractiveTransition];

  v6 = [(_UINavigationBarItemStack *)self previousTopItem];
  [v6 _movingFromTopOfStack];

  v7 = [(_UINavigationBarItemStack *)self topItem];
  [v7 _movingToTopOfStack];
}

- (void)pushItem:(id)a3 withTransitionAssistant:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_state)
  {
    NSLog(&cfstr_NestedPushAnim.isa);
  }

  v7 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v7;

  items = self->_items;
  v10 = [_UINavigationBarItemStackEntry newEntryForItem:v11];
  [(NSMutableArray *)items addObject:v10];

  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:v6];
  [(_UINavigationBarItemStack *)self _updateChangeObserversFor:self->_items];
  self->_state = 1;
}

- (void)popItemWithTransitionAssistant:(id)a3
{
  v6 = a3;
  if (self->_state)
  {
    NSLog(&cfstr_NestedPopAnima.isa);
  }

  v4 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v4;

  [(NSMutableArray *)self->_items removeLastObject];
  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:v6];
  self->_state = 2;
}

- (void)setItems:(id)a3 withTransitionAssistant:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (self->_state)
  {
    NSLog(&cfstr_ChangingItemsW.isa);
  }

  v7 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v7;

  [(NSMutableArray *)self->_items removeAllObjects];
  _WrapItemsAndAddToArray(self->_items, v9);
  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:v6];
  [(_UINavigationBarItemStack *)self _updateChangeObserversFor:self->_items];
  self->_state = 3;
}

- (void)cancelOperation
{
  if (self->_state)
  {
    v3 = [(_UINavigationBarItemStack *)self previousTopItem];
    [v3 _movedFromTopOfStack:0];

    v4 = [(_UINavigationBarItemStack *)self topItem];
    [v4 _movedToTopOfStack:0];

    [(NSMutableArray *)self->_items setArray:self->_previousItems];

    [(_UINavigationBarItemStack *)self _completeTransition];
  }
}

- (void)endInteractiveTransition
{
  [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant setNeedsLifetimeExtended:0];

  [(_UINavigationBarItemStack *)self _cleanupTransitionAssistant];
}

- (void)_shim_pushNestedNavigationItem:(id)a3
{
  v4 = a3;
  v7 = [(_UINavigationBarItemStack *)self topItem];
  [v7 _movingFromTopOfStack];
  [v4 _movingToTopOfStack];
  items = self->_items;
  v6 = [_UINavigationBarItemStackEntry entryForItem:v4 replaceExistingWithNew:0];
  [(NSMutableArray *)items addObject:v6];

  [v7 _movedFromTopOfStack:1];
  [v4 _movedToTopOfStack:1];
}

- (id)_shim_popNestedNavigationItem
{
  v3 = [(_UINavigationBarItemStack *)self topItem];
  v4 = [(_UINavigationBarItemStack *)self backItem];
  [v3 _movingFromTopOfStack];
  [v4 _movingToTopOfStack];
  [(NSMutableArray *)self->_items removeLastObject];
  [v3 _movedFromTopOfStack:1];
  [v4 _movedToTopOfStack:1];

  return v3;
}

- (BOOL)stackItemsAreEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_items count];
  v6 = v5;
  if (v4)
  {
    if (v5 == [v4 count])
    {
      v7 = v6 - 1;
      if (v6 < 1)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        v8 = 0;
        do
        {
          v9 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:v8];
          v10 = [v4 objectAtIndexedSubscript:v8];
          v11 = [v9 isEqual:v10];

          if (v11)
          {
            v12 = v7 == v8;
          }

          else
          {
            v12 = 1;
          }

          ++v8;
        }

        while (!v12);
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = v5 == 0;
  }

  return v11;
}

- (void)iterateItems:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UINavigationBarItemStack_iterateItems___block_invoke;
  v6[3] = &unk_1E70F7C90;
  v7 = v4;
  v5 = v4;
  [(_UINavigationBarItemStack *)self iterateEntries:v6];
}

- (void)iterateEntries:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)reverseIterateEntries:(id)a3
{
  v4 = a3;
  items = self->_items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UINavigationBarItemStack_reverseIterateEntries___block_invoke;
  v7[3] = &unk_1E70F7CB8;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)items enumerateObjectsWithOptions:2 usingBlock:v7];
}

- (int64_t)_effectiveDisplayModeForItem:(id)a3 inStack:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) item];
        v13 = [v12 largeTitleDisplayMode];
        if (v13)
        {
          v9 = v13;
        }

        if (v12 == v5)
        {

          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = [v5 largeTitleDisplayMode];
  if (v14)
  {
    v9 = v14;
  }

LABEL_16:

  return v9;
}

- (int64_t)effectiveDisplayModeForItemInCurrentStack:(id)a3
{
  if (a3)
  {

    return [_UINavigationBarItemStack _effectiveDisplayModeForItem:"_effectiveDisplayModeForItem:inStack:" inStack:?];
  }

  else
  {
    v5 = [(_UINavigationBarItemStack *)self topItem];
    v6 = [(_UINavigationBarItemStack *)self _effectiveDisplayModeForItem:v5 inStack:self->_items];

    return v6;
  }
}

- (int64_t)effectiveDisplayModeForItemInPreviousStack:(id)a3
{
  if (a3)
  {

    return [_UINavigationBarItemStack _effectiveDisplayModeForItem:"_effectiveDisplayModeForItem:inStack:" inStack:?];
  }

  else
  {
    v5 = [(_UINavigationBarItemStack *)self previousTopItem];
    v6 = [(_UINavigationBarItemStack *)self _effectiveDisplayModeForItem:v5 inStack:self->_previousItems];

    return v6;
  }
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = _UINavigationBarItemStack;
  v3 = [(_UINavigationBarItemStack *)&v12 description];
  v4 = [v3 mutableCopy];

  v5 = self->_state - 1;
  if (v5 >= 3)
  {
    v8 = [(_UINavigationBarItemStack *)self topEntry];
    v9 = [(_UINavigationBarItemStack *)self backEntry];
    [v4 appendFormat:@" topEntry=%p backEntry=%p items=%p", v8, v9, self->_items, v11];
  }

  else
  {
    [v4 appendString:off_1E70F7CD8[v5]];
    v6 = [(_UINavigationBarItemStack *)self topEntry];
    v7 = [(_UINavigationBarItemStack *)self backEntry];
    [v4 appendFormat:@" topEntry=%p backEntry=%p items=%p", v6, v7, self->_items];

    v8 = [(_UINavigationBarItemStack *)self previousTopEntry];
    v9 = [(_UINavigationBarItemStack *)self previousBackEntry];
    [v4 appendFormat:@" previousTopEntry=%p previousBackEntry=%p previousItems=%p transitionAssistant=%p", v8, v9, self->_previousItems, self->_transitionAssistant];
  }

  return v4;
}

- (_UINavigationItemChangeObserver)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end