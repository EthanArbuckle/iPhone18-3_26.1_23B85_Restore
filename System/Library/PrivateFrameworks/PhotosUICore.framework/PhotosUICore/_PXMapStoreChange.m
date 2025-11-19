@interface _PXMapStoreChange
- (BOOL)hasChanges;
- (_PXMapStoreChange)initWithAddedItems:(id)a3 removedItems:(id)a4 updatedItems:(id)a5;
- (void)dealloc;
- (void)updateWithChange:(id)a3;
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

- (void)updateWithChange:(id)a3
{
  if ([a3 addedItems])
  {
    if (self->_addedItems)
    {
      v5 = [MEMORY[0x1E695DFA8] setWithSet:?];
      [v5 unionSet:{objc_msgSend(a3, "addedItems")}];
    }

    else
    {
      v5 = [a3 addedItems];
    }

    self->_addedItems = v5;
  }

  if ([a3 removedItems])
  {
    if (self->_removedItems)
    {
      v6 = [MEMORY[0x1E695DFA8] setWithSet:?];
      [v6 unionSet:{objc_msgSend(a3, "removedItems")}];
    }

    else
    {
      v6 = [a3 removedItems];
    }

    self->_removedItems = v6;
  }

  if ([a3 updatedItems])
  {
    if (self->_updatedItems)
    {
      v7 = [MEMORY[0x1E695DFA8] setWithSet:?];
      [v7 unionSet:{objc_msgSend(a3, "updatedItems")}];
    }

    else
    {
      v7 = [a3 updatedItems];
    }

    self->_updatedItems = v7;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PXMapStoreChange;
  [(_PXMapStoreChange *)&v3 dealloc];
}

- (_PXMapStoreChange)initWithAddedItems:(id)a3 removedItems:(id)a4 updatedItems:(id)a5
{
  v10.receiver = self;
  v10.super_class = _PXMapStoreChange;
  v8 = [(_PXMapStoreChange *)&v10 init];
  if (v8)
  {
    v8->_addedItems = a3;
    v8->_removedItems = a4;
    v8->_updatedItems = a5;
  }

  return v8;
}

@end