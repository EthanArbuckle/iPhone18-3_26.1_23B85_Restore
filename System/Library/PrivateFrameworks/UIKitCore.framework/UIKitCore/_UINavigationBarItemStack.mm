@interface _UINavigationBarItemStack
- (BOOL)isPushingOrPopping;
- (BOOL)stackItemsAreEqualTo:(id)to;
- (NSArray)items;
- (UINavigationItem)backItem;
- (UINavigationItem)previousBackItem;
- (UINavigationItem)previousTopItem;
- (UINavigationItem)topItem;
- (_UINavigationBarItemStack)initWithItems:(id)items;
- (_UINavigationBarItemStackEntry)backEntry;
- (_UINavigationBarItemStackEntry)previousBackEntry;
- (_UINavigationItemChangeObserver)changeObserver;
- (id)_shim_popNestedNavigationItem;
- (id)description;
- (int64_t)_effectiveDisplayModeForItem:(id)item inStack:(id)stack;
- (int64_t)effectiveDisplayModeForItemInCurrentStack:(id)stack;
- (int64_t)effectiveDisplayModeForItemInPreviousStack:(id)stack;
- (void)_cleanupTransitionAssistant;
- (void)_completeTransition;
- (void)_prepareTransitionWithAssistant:(id)assistant;
- (void)_shim_pushNestedNavigationItem:(id)item;
- (void)_updateChangeObserversFor:(id)for;
- (void)cancelOperation;
- (void)completeOperation;
- (void)endInteractiveTransition;
- (void)iterateEntries:(id)entries;
- (void)iterateItems:(id)items;
- (void)popItemWithTransitionAssistant:(id)assistant;
- (void)pushItem:(id)item withTransitionAssistant:(id)assistant;
- (void)reverseIterateEntries:(id)entries;
- (void)setChangeObserver:(id)observer;
- (void)setItems:(id)items withTransitionAssistant:(id)assistant;
@end

@implementation _UINavigationBarItemStack

- (UINavigationItem)topItem
{
  topEntry = [(_UINavigationBarItemStack *)self topEntry];
  item = [topEntry item];

  return item;
}

- (UINavigationItem)backItem
{
  backEntry = [(_UINavigationBarItemStack *)self backEntry];
  item = [backEntry item];

  return item;
}

- (UINavigationItem)previousTopItem
{
  previousTopEntry = [(_UINavigationBarItemStack *)self previousTopEntry];
  item = [previousTopEntry item];

  return item;
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
  previousBackEntry = [(_UINavigationBarItemStack *)self previousBackEntry];
  item = [previousBackEntry item];

  return item;
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

        item = [*(*(&v11 + 1) + 8 * i) item];
        [v3 addObject:item];
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
    previousTopItem = [(_UINavigationBarItemStack *)self previousTopItem];
    [previousTopItem _movedFromTopOfStack:1];

    topItem = [(_UINavigationBarItemStack *)self topItem];
    [topItem _movedToTopOfStack:1];

    [(_UINavigationBarItemStack *)self _completeTransition];
  }
}

- (void)_cleanupTransitionAssistant
{
  state = self->_state;
  needsLifetimeExtended = [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant needsLifetimeExtended];
  if (!state && !needsLifetimeExtended)
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

- (_UINavigationBarItemStack)initWithItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = _UINavigationBarItemStack;
  v5 = [(_UINavigationBarItemStack *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    items = v5->_items;
    v5->_items = v6;

    _WrapItemsAndAddToArray(v5->_items, itemsCopy);
    topItem = [(_UINavigationBarItemStack *)v5 topItem];
    [topItem _movingToTopOfStack];
    [topItem _movedToTopOfStack:1];
  }

  return v5;
}

- (void)setChangeObserver:(id)observer
{
  obj = observer;
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

- (void)_updateChangeObserversFor:(id)for
{
  v17 = *MEMORY[0x1E69E9840];
  forCopy = for;
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = forCopy;
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

        item = [*(*(&v12 + 1) + 8 * v10) item];
        [item _setChangeObserver:WeakRetained];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_prepareTransitionWithAssistant:(id)assistant
{
  objc_storeStrong(&self->_transitionAssistant, assistant);
  assistantCopy = assistant;
  [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant startInteractiveTransition];

  previousTopItem = [(_UINavigationBarItemStack *)self previousTopItem];
  [previousTopItem _movingFromTopOfStack];

  topItem = [(_UINavigationBarItemStack *)self topItem];
  [topItem _movingToTopOfStack];
}

- (void)pushItem:(id)item withTransitionAssistant:(id)assistant
{
  itemCopy = item;
  assistantCopy = assistant;
  if (self->_state)
  {
    NSLog(&cfstr_NestedPushAnim.isa);
  }

  v7 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v7;

  items = self->_items;
  v10 = [_UINavigationBarItemStackEntry newEntryForItem:itemCopy];
  [(NSMutableArray *)items addObject:v10];

  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:assistantCopy];
  [(_UINavigationBarItemStack *)self _updateChangeObserversFor:self->_items];
  self->_state = 1;
}

- (void)popItemWithTransitionAssistant:(id)assistant
{
  assistantCopy = assistant;
  if (self->_state)
  {
    NSLog(&cfstr_NestedPopAnima.isa);
  }

  v4 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v4;

  [(NSMutableArray *)self->_items removeLastObject];
  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:assistantCopy];
  self->_state = 2;
}

- (void)setItems:(id)items withTransitionAssistant:(id)assistant
{
  itemsCopy = items;
  assistantCopy = assistant;
  if (self->_state)
  {
    NSLog(&cfstr_ChangingItemsW.isa);
  }

  v7 = [(NSMutableArray *)self->_items copy];
  previousItems = self->_previousItems;
  self->_previousItems = v7;

  [(NSMutableArray *)self->_items removeAllObjects];
  _WrapItemsAndAddToArray(self->_items, itemsCopy);
  [(_UINavigationBarItemStack *)self _prepareTransitionWithAssistant:assistantCopy];
  [(_UINavigationBarItemStack *)self _updateChangeObserversFor:self->_items];
  self->_state = 3;
}

- (void)cancelOperation
{
  if (self->_state)
  {
    previousTopItem = [(_UINavigationBarItemStack *)self previousTopItem];
    [previousTopItem _movedFromTopOfStack:0];

    topItem = [(_UINavigationBarItemStack *)self topItem];
    [topItem _movedToTopOfStack:0];

    [(NSMutableArray *)self->_items setArray:self->_previousItems];

    [(_UINavigationBarItemStack *)self _completeTransition];
  }
}

- (void)endInteractiveTransition
{
  [(_UINavigationBarTransitionAssistant *)self->_transitionAssistant setNeedsLifetimeExtended:0];

  [(_UINavigationBarItemStack *)self _cleanupTransitionAssistant];
}

- (void)_shim_pushNestedNavigationItem:(id)item
{
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)self topItem];
  [topItem _movingFromTopOfStack];
  [itemCopy _movingToTopOfStack];
  items = self->_items;
  v6 = [_UINavigationBarItemStackEntry entryForItem:itemCopy replaceExistingWithNew:0];
  [(NSMutableArray *)items addObject:v6];

  [topItem _movedFromTopOfStack:1];
  [itemCopy _movedToTopOfStack:1];
}

- (id)_shim_popNestedNavigationItem
{
  topItem = [(_UINavigationBarItemStack *)self topItem];
  backItem = [(_UINavigationBarItemStack *)self backItem];
  [topItem _movingFromTopOfStack];
  [backItem _movingToTopOfStack];
  [(NSMutableArray *)self->_items removeLastObject];
  [topItem _movedFromTopOfStack:1];
  [backItem _movedToTopOfStack:1];

  return topItem;
}

- (BOOL)stackItemsAreEqualTo:(id)to
{
  toCopy = to;
  v5 = [(NSMutableArray *)self->_items count];
  v6 = v5;
  if (toCopy)
  {
    if (v5 == [toCopy count])
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
          v10 = [toCopy objectAtIndexedSubscript:v8];
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

- (void)iterateItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UINavigationBarItemStack_iterateItems___block_invoke;
  v6[3] = &unk_1E70F7C90;
  v7 = itemsCopy;
  v5 = itemsCopy;
  [(_UINavigationBarItemStack *)self iterateEntries:v6];
}

- (void)iterateEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
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

      entriesCopy[2](entriesCopy, *(*(&v10 + 1) + 8 * v9), &v14);
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

- (void)reverseIterateEntries:(id)entries
{
  entriesCopy = entries;
  items = self->_items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UINavigationBarItemStack_reverseIterateEntries___block_invoke;
  v7[3] = &unk_1E70F7CB8;
  v8 = entriesCopy;
  v6 = entriesCopy;
  [(NSMutableArray *)items enumerateObjectsWithOptions:2 usingBlock:v7];
}

- (int64_t)_effectiveDisplayModeForItem:(id)item inStack:(id)stack
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  stackCopy = stack;
  v7 = [stackCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(stackCopy);
        }

        item = [*(*(&v16 + 1) + 8 * i) item];
        largeTitleDisplayMode = [item largeTitleDisplayMode];
        if (largeTitleDisplayMode)
        {
          v9 = largeTitleDisplayMode;
        }

        if (item == itemCopy)
        {

          goto LABEL_16;
        }
      }

      v8 = [stackCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  largeTitleDisplayMode2 = [itemCopy largeTitleDisplayMode];
  if (largeTitleDisplayMode2)
  {
    v9 = largeTitleDisplayMode2;
  }

LABEL_16:

  return v9;
}

- (int64_t)effectiveDisplayModeForItemInCurrentStack:(id)stack
{
  if (stack)
  {

    return [_UINavigationBarItemStack _effectiveDisplayModeForItem:"_effectiveDisplayModeForItem:inStack:" inStack:?];
  }

  else
  {
    topItem = [(_UINavigationBarItemStack *)self topItem];
    v6 = [(_UINavigationBarItemStack *)self _effectiveDisplayModeForItem:topItem inStack:self->_items];

    return v6;
  }
}

- (int64_t)effectiveDisplayModeForItemInPreviousStack:(id)stack
{
  if (stack)
  {

    return [_UINavigationBarItemStack _effectiveDisplayModeForItem:"_effectiveDisplayModeForItem:inStack:" inStack:?];
  }

  else
  {
    previousTopItem = [(_UINavigationBarItemStack *)self previousTopItem];
    v6 = [(_UINavigationBarItemStack *)self _effectiveDisplayModeForItem:previousTopItem inStack:self->_previousItems];

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
    topEntry = [(_UINavigationBarItemStack *)self topEntry];
    backEntry = [(_UINavigationBarItemStack *)self backEntry];
    [v4 appendFormat:@" topEntry=%p backEntry=%p items=%p", topEntry, backEntry, self->_items, v11];
  }

  else
  {
    [v4 appendString:off_1E70F7CD8[v5]];
    topEntry2 = [(_UINavigationBarItemStack *)self topEntry];
    backEntry2 = [(_UINavigationBarItemStack *)self backEntry];
    [v4 appendFormat:@" topEntry=%p backEntry=%p items=%p", topEntry2, backEntry2, self->_items];

    topEntry = [(_UINavigationBarItemStack *)self previousTopEntry];
    backEntry = [(_UINavigationBarItemStack *)self previousBackEntry];
    [v4 appendFormat:@" previousTopEntry=%p previousBackEntry=%p previousItems=%p transitionAssistant=%p", topEntry, backEntry, self->_previousItems, self->_transitionAssistant];
  }

  return v4;
}

- (_UINavigationItemChangeObserver)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end