@interface UITextPasteCoordinator
- (BOOL)performBlockingWait:(double)wait;
- (UITextPasteCoordinator)initWithDelegate:(id)delegate;
- (UITextPasteCoordinatorDelegate)delegate;
- (void)_determineFinished;
- (void)_finish;
- (void)addItem:(id)item;
- (void)setResult:(id)result forItem:(id)item;
@end

@implementation UITextPasteCoordinator

- (UITextPasteCoordinator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = UITextPasteCoordinator;
  v5 = [(UITextPasteCoordinator *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_new();
    items = v6->_items;
    v6->_items = v7;

    wait = v6->_wait;
    v6->_wait = 0;
  }

  return v6;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v6 = itemCopy;
    v5 = self->_items;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_items addObject:v6];
    objc_sync_exit(v5);

    itemCopy = v6;
  }
}

- (void)setResult:(id)result forItem:(id)item
{
  resultCopy = result;
  itemCopy = item;
  if (itemCopy)
  {
    v7 = self->_items;
    objc_sync_enter(v7);
    v8 = [(NSMutableArray *)self->_items indexOfObject:itemCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_sync_exit(v7);
    }

    else
    {
      null = resultCopy;
      if (!resultCopy)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      [(NSMutableArray *)self->_items setObject:null atIndexedSubscript:v8];
      if (!resultCopy)
      {
      }

      objc_sync_exit(v7);

      [(UITextPasteCoordinator *)self _determineFinished];
    }
  }
}

- (BOOL)performBlockingWait:(double)wait
{
  wait = self->_wait;
  if (!wait)
  {
    v6 = dispatch_group_create();
    v7 = self->_wait;
    self->_wait = v6;

    dispatch_group_enter(self->_wait);
    wait = self->_wait;
  }

  v8 = dispatch_time(0, (wait * 1000000000.0));
  v9 = dispatch_group_wait(wait, v8);
  if (v9)
  {
    v10 = self->_wait;
    self->_wait = 0;
  }

  else
  {
    [(UITextPasteCoordinator *)self _finish];
  }

  return v9 == 0;
}

- (void)_determineFinished
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_items;
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_items;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            objc_sync_exit(v3);
            goto LABEL_14;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  objc_sync_exit(v3);
  v8 = self->_wait;
  if (v8)
  {
    v3 = v8;
    wait = self->_wait;
    self->_wait = 0;

    dispatch_group_leave(&v3->super.super);
  }

  else
  {
    [(UITextPasteCoordinator *)self _finish];
    v3 = 0;
  }

LABEL_14:
}

- (void)_finish
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_items;
  objc_sync_enter(v3);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v9, v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coordinator:self endPastingItems:v4];
}

- (UITextPasteCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end