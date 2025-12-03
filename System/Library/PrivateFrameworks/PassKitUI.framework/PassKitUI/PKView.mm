@interface PKView
- (PKView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)addLayoutObserver:(id)observer;
- (void)addWindowObserver:(id)observer;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeLayoutObserver:(id)observer;
- (void)removeWindowObserver:(id)observer;
@end

@implementation PKView

- (PKView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKView;
  result = [(PKView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    allObjects = 0;
    goto LABEL_16;
  }

  allObjects = [(NSHashTable *)windowObservers allObjects];
  if (![allObjects count])
  {
    v10 = self->_windowObservers;
    self->_windowObservers = 0;

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (allObjects)
  {
    window = [(PKView *)self window];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = allObjects;
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v11 + 1) + 8 * i) observedView:self didMoveToWindow:{window, v11}];
        }

        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

LABEL_16:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if (self->_hitTestEnabled)
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKView;
    v6 = [(PKView *)&v8 hitTest:event withEvent:test.x, test.y];
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
    allObjects = 0;
    goto LABEL_16;
  }

  allObjects = [(NSHashTable *)layoutObservers allObjects];
  if (![allObjects count])
  {
    v9 = self->_layoutObservers;
    self->_layoutObservers = 0;

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (allObjects)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allObjects = allObjects;
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v10 + 1) + 8 * i) layoutSubviewsForObservedView:{self, v10}];
        }

        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

LABEL_16:
}

- (void)addWindowObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    windowObservers = self->_windowObservers;
    if (!windowObservers)
    {
      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v6 = self->_windowObservers;
      self->_windowObservers = pk_weakObjectsHashTableUsingPointerPersonality;

      windowObservers = self->_windowObservers;
    }

    [(NSHashTable *)windowObservers addObject:observerCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeWindowObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_windowObservers removeObject:observerCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)addLayoutObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    layoutObservers = self->_layoutObservers;
    if (!layoutObservers)
    {
      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v6 = self->_layoutObservers;
      self->_layoutObservers = pk_weakObjectsHashTableUsingPointerPersonality;

      layoutObservers = self->_layoutObservers;
    }

    [(NSHashTable *)layoutObservers addObject:observerCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeLayoutObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_layoutObservers removeObject:observerCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

@end