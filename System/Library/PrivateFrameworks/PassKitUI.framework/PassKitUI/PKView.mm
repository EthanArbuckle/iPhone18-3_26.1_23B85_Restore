@interface PKView
- (PKView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)addLayoutObserver:(id)a3;
- (void)addWindowObserver:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeLayoutObserver:(id)a3;
- (void)removeWindowObserver:(id)a3;
@end

@implementation PKView

- (PKView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PKView;
  result = [(PKView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_hitTestEnabled = 1;
  }

  return result;
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKView;
  [(PKView *)&v15 didMoveToWindow];
  if (!self)
  {
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock);
  windowObservers = self->_windowObservers;
  if (!windowObservers)
  {
LABEL_14:
    os_unfair_lock_unlock(&self->_lock);
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v4 = [(NSHashTable *)windowObservers allObjects];
  if (![v4 count])
  {
    v10 = self->_windowObservers;
    self->_windowObservers = 0;

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = [(PKView *)self window];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v4;
    v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * i) observedView:self didMoveToWindow:{v5, v11}];
        }

        v7 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

LABEL_16:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if (self->_hitTestEnabled)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKView;
    v6 = [(PKView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKView;
  [(PKView *)&v14 layoutSubviews];
  if (!self)
  {
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock);
  layoutObservers = self->_layoutObservers;
  if (!layoutObservers)
  {
LABEL_14:
    os_unfair_lock_unlock(&self->_lock);
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v4 = [(NSHashTable *)layoutObservers allObjects];
  if (![v4 count])
  {
    v9 = self->_layoutObservers;
    self->_layoutObservers = 0;

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v4;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) layoutSubviewsForObservedView:{self, v10}];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

LABEL_16:
}

- (void)addWindowObserver:(id)a3
{
  v7 = a3;
  if (v7)
  {
    os_unfair_lock_lock(&self->_lock);
    windowObservers = self->_windowObservers;
    if (!windowObservers)
    {
      v5 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v6 = self->_windowObservers;
      self->_windowObservers = v5;

      windowObservers = self->_windowObservers;
    }

    [(NSHashTable *)windowObservers addObject:v7];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeWindowObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_windowObservers removeObject:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)addLayoutObserver:(id)a3
{
  v7 = a3;
  if (v7)
  {
    os_unfair_lock_lock(&self->_lock);
    layoutObservers = self->_layoutObservers;
    if (!layoutObservers)
    {
      v5 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v6 = self->_layoutObservers;
      self->_layoutObservers = v5;

      layoutObservers = self->_layoutObservers;
    }

    [(NSHashTable *)layoutObservers addObject:v7];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeLayoutObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_layoutObservers removeObject:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

@end