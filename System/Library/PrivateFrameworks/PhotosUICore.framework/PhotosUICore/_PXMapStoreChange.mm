@interface _PXMapStoreChange
- (BOOL)hasChanges;
- (_PXMapStoreChange)initWithAddedItems:(id)items removedItems:(id)removedItems updatedItems:(id)updatedItems;
- (void)dealloc;
- (void)updateWithChange:(id)change;
@end

@implementation _PXMapStoreChange

- (BOOL)hasChanges
{
  addedItems = self->_addedItems;
  if (addedItems && [(NSSet *)addedItems count]|| (removedItems = self->_removedItems) != 0 && [(NSSet *)removedItems count])
  {
    LOBYTE(updatedItems) = 1;
  }

  else
  {
    updatedItems = self->_updatedItems;
    if (updatedItems)
    {
      LOBYTE(updatedItems) = [(NSSet *)updatedItems count]!= 0;
    }
  }

  return updatedItems;
}

- (void)updateWithChange:(id)change
{
  if ([change addedItems])
  {
    if (self->_addedItems)
    {
      addedItems = [MEMORY[0x1E695DFA8] setWithSet:?];
      [addedItems unionSet:{objc_msgSend(change, "addedItems")}];
    }

    else
    {
      addedItems = [change addedItems];
    }

    self->_addedItems = addedItems;
  }

  if ([change removedItems])
  {
    if (self->_removedItems)
    {
      removedItems = [MEMORY[0x1E695DFA8] setWithSet:?];
      [removedItems unionSet:{objc_msgSend(change, "removedItems")}];
    }

    else
    {
      removedItems = [change removedItems];
    }

    self->_removedItems = removedItems;
  }

  if ([change updatedItems])
  {
    if (self->_updatedItems)
    {
      updatedItems = [MEMORY[0x1E695DFA8] setWithSet:?];
      [updatedItems unionSet:{objc_msgSend(change, "updatedItems")}];
    }

    else
    {
      updatedItems = [change updatedItems];
    }

    self->_updatedItems = updatedItems;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PXMapStoreChange;
  [(_PXMapStoreChange *)&v3 dealloc];
}

- (_PXMapStoreChange)initWithAddedItems:(id)items removedItems:(id)removedItems updatedItems:(id)updatedItems
{
  v10.receiver = self;
  v10.super_class = _PXMapStoreChange;
  v8 = [(_PXMapStoreChange *)&v10 init];
  if (v8)
  {
    v8->_addedItems = items;
    v8->_removedItems = removedItems;
    v8->_updatedItems = updatedItems;
  }

  return v8;
}

@end