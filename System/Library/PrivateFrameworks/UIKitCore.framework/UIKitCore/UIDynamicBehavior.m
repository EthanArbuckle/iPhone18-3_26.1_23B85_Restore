@interface UIDynamicBehavior
+ (void)initialize;
- (BOOL)allowsAnimatorToStop;
- (UIDynamicAnimator)dynamicAnimator;
- (UIDynamicBehavior)init;
- (id)_context;
- (id)_itemsDescription;
- (id)description;
- (void)_addItem:(id)a3;
- (void)_associate;
- (void)_changedParameterForBody:(id)a3;
- (void)_dissociate;
- (void)_removeItem:(id)a3;
- (void)_setItems:(id)a3;
- (void)_updateAutolayoutEngagementForItemIfNecessary:(id)a3 detach:(BOOL)a4;
- (void)addChildBehavior:(UIDynamicBehavior *)behavior;
- (void)removeChildBehavior:(UIDynamicBehavior *)behavior;
- (void)willMoveToAnimator:(UIDynamicAnimator *)dynamicAnimator;
@end

@implementation UIDynamicBehavior

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _UISetupPhysicsKit();
  }
}

- (void)_setItems:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_items;
  v7 = [(UIDynamicBehavior *)self _context];

  if (v7)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v6;
    v8 = v6;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ([v5 containsObject:v14])
          {
            v12 = 0;
          }

          else
          {
            [(UIDynamicBehavior *)self _reattachAutolayoutToItemIfNecessary:v14];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 1;
    }

    objc_storeStrong(&self->_items, a3);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v22 + 1) + 8 * j);
          if ((v12 & 1) != 0 || ([(NSMutableArray *)v8 containsObject:*(*(&v22 + 1) + 8 * j)]& 1) == 0)
          {
            [(UIDynamicBehavior *)self _detachAutolayoutFromItemIfNecessary:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    v6 = v21;
  }

  else
  {
    objc_storeStrong(&self->_items, a3);
  }
}

- (void)_addItem:(id)a3
{
  items = self->_items;
  v5 = a3;
  [(NSMutableArray *)items addObject:v5];
  [(UIDynamicBehavior *)self _detachAutolayoutFromItemIfNecessary:v5];
}

- (void)_removeItem:(id)a3
{
  v4 = a3;
  [(UIDynamicBehavior *)self _reattachAutolayoutToItemIfNecessary:v4];
  [(NSMutableArray *)self->_items removeObject:v4];
}

- (id)_context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (UIDynamicAnimator)dynamicAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (UIDynamicBehavior)init
{
  v9.receiver = self;
  v9.super_class = UIDynamicBehavior;
  v2 = [(UIDynamicBehavior *)&v9 init];
  if (v2)
  {
    v3 = [objc_opt_class() _isPrimitiveBehavior];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3)
    {
      v5 = 16;
    }

    else
    {
      addedBehaviors = v2->_addedBehaviors;
      v2->_addedBehaviors = v4;

      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = 24;
    }

    v7 = *(&v2->super.isa + v5);
    *(&v2->super.isa + v5) = v4;
  }

  return v2;
}

- (void)willMoveToAnimator:(UIDynamicAnimator *)dynamicAnimator
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 _wantsAutolayout])
        {
          if (dynamicAnimator)
          {
            if (v9)
            {
              v10 = [v9 _disableLayoutFlushingCount];
              if (v10 >= 1)
              {
                v11 = v10 + 1;
              }

              else
              {
                v11 = 1;
              }

              [v9 _setDisableLayoutFlushingCount:v11];
              [v9 _disableLayoutFlushing];
            }
          }

          else
          {
            [(UIView *)v9 _popDisableLayoutFlushing];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateAutolayoutEngagementForItemIfNecessary:(id)a3 detach:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(UIDynamicBehavior *)self _context];

  v7 = v12;
  if (v6)
  {
    v8 = objc_opt_respondsToSelector();
    v7 = v12;
    if (v8)
    {
      v9 = [v12 _wantsAutolayout];
      v7 = v12;
      if (v9)
      {
        if (v4)
        {
          if (!v12)
          {
            goto LABEL_12;
          }

          v10 = [v12 _disableLayoutFlushingCount];
          if (v10 >= 1)
          {
            v11 = v10 + 1;
          }

          else
          {
            v11 = 1;
          }

          [v12 _setDisableLayoutFlushingCount:v11];
          [v12 _disableLayoutFlushing];
        }

        else
        {
          [(UIView *)v12 _popDisableLayoutFlushing];
        }

        v7 = v12;
      }
    }
  }

LABEL_12:
}

- (void)_associate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_addedBehaviors;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        [WeakRetained _checkBehavior:{v8, v11}];

        v10 = objc_loadWeakRetained(&self->_context);
        [v10 _registerBehavior:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_addedBehaviors removeAllObjects];
}

- (void)_dissociate
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_addedBehaviors addObjectsFromArray:self->_behaviors];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_behaviors;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        [WeakRetained _unregisterBehavior:{v8, v10}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)allowsAnimatorToStop
{
  v16 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() _isPrimitiveBehavior])
  {
    return 0;
  }

  if (![(NSMutableArray *)self->_behaviors count])
  {
    v9 = [(UIDynamicBehavior *)self action];

    if (v9)
    {
      return 0;
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_behaviors;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v3 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (v3)
        {
          v3 = [*(*(&v11 + 1) + 8 * i) allowsAnimatorToStop];
        }

        else
        {
          v3 = 0;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)addChildBehavior:(UIDynamicBehavior *)behavior
{
  v7 = behavior;
  if (([(NSMutableArray *)self->_behaviors containsObject:?]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_context);
      [v5 _checkBehavior:v7];

      v6 = objc_loadWeakRetained(&self->_context);
      [v6 _registerBehavior:v7];
    }

    else
    {
      [(NSMutableArray *)self->_addedBehaviors addObject:v7];
    }

    [(NSMutableArray *)self->_behaviors addObject:v7];
  }
}

- (void)removeChildBehavior:(UIDynamicBehavior *)behavior
{
  v6 = behavior;
  if ([(NSMutableArray *)self->_behaviors containsObject:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_context);
      [v5 _unregisterBehavior:v6];
    }

    else
    {
      [(NSMutableArray *)self->_addedBehaviors removeObject:v6];
    }

    [(NSMutableArray *)self->_behaviors removeObject:v6];
  }
}

- (void)_changedParameterForBody:(id)a3
{
  [a3 setResting:0];
  v4 = [(UIDynamicBehavior *)self _context];
  [v4 _tickle];
}

- (id)_itemsDescription
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(UIDynamicBehavior *)self _items];
    v6 = [v5 count];

    if (v6 < 4)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = self;
      v11 = [(UIDynamicBehavior *)self _items];
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            v17 = MEMORY[0x1E696AEC0];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = [v17 stringWithFormat:@"%@:%p", v19, v16];
            [v10 addObject:v20];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = [(UIDynamicBehavior *)v26 _items];
      v23 = [v22 count];
      v24 = [v10 componentsJoinedByString:{@", "}];
      v9 = [v21 stringWithFormat:@"(%lu items: [%@])", v23, v24];
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(UIDynamicBehavior *)self _items];
      v9 = [v7 stringWithFormat:@"(%lu items)", objc_msgSend(v8, "count")];
    }
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = UIDynamicBehavior;
  v4 = [(UIDynamicBehavior *)&v7 description];
  v5 = [v3 stringWithString:v4];

  if ([(UIDynamicBehavior *)self allowsAnimatorToStop])
  {
    [v5 appendString:@" (Stoppable)"];
  }

  if (self->_action)
  {
    [v5 appendString:@" (A)"];
  }

  return v5;
}

@end