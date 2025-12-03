@interface UIInteractionProgress
- (UIInteractionProgress)init;
- (double)velocity;
- (id)description;
- (int64_t)numberOfObservers;
- (unint64_t)_indexOfObserver:(id)observer;
- (void)addProgressObserver:(id)observer;
- (void)endInteraction:(BOOL)interaction;
- (void)removeProgressObserver:(id)observer;
- (void)setPercentComplete:(double)complete;
@end

@implementation UIInteractionProgress

- (UIInteractionProgress)init
{
  v6.receiver = self;
  v6.super_class = UIInteractionProgress;
  v2 = [(UIInteractionProgress *)&v6 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = weakObjectsPointerArray;

    v2->_previousUpdateTime = CACurrentMediaTime();
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() description];
  v5 = MEMORY[0x1E696AD98];
  [(UIInteractionProgress *)self percentComplete];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSPointerArray count](self->_observers, "count")}];
  v8 = [v3 stringWithFormat:@"<%@: %p - percentComplete: %@, num observers: %@>", v4, self, v6, v7];

  return v8;
}

- (void)setPercentComplete:(double)complete
{
  v18 = *MEMORY[0x1E69E9840];
  percentComplete = self->_percentComplete;
  self->_percentComplete = complete;
  mostRecentUpdateTime = self->_mostRecentUpdateTime;
  self->_previousPercentComplete = percentComplete;
  self->_previousUpdateTime = mostRecentUpdateTime;
  self->_mostRecentUpdateTime = CACurrentMediaTime();
  atLeastTwoUpdates = self->_atLeastTwoUpdates;
  if (atLeastTwoUpdates <= 1)
  {
    self->_atLeastTwoUpdates = atLeastTwoUpdates + 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSPointerArray *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 interactionProgressDidUpdate:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (double)velocity
{
  result = 0.0;
  if (self->_atLeastTwoUpdates >= 2)
  {
    v3 = self->_mostRecentUpdateTime - self->_previousUpdateTime;
    if (v3 > 0.000000001)
    {
      return (self->_percentComplete - self->_previousPercentComplete) / v3;
    }
  }

  return result;
}

- (void)endInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSPointerArray *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [(UIInteractionProgress *)self velocity];
          [v10 interactionProgress:self didEnd:interactionCopy finalVelocity:?];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v10 interactionProgress:self didEnd:interactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (unint64_t)_indexOfObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(NSPointerArray *)self->_observers count];
  v6 = v5 - 1;
  if ((v5 - 1) >= 0)
  {
    v7 = v5;
    while (1)
    {
      v8 = [(NSPointerArray *)self->_observers pointerAtIndex:--v7];
      v9 = v8;
      if (v8 == observerCopy)
      {
        break;
      }

      if (!v8)
      {
        [(NSPointerArray *)self->_observers removePointerAtIndex:v7];
      }

      if (v7 <= 0)
      {
        v6 = -1;
        goto LABEL_9;
      }
    }

    v6 = v7;
  }

LABEL_9:
  if (v6 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (void)addProgressObserver:(id)observer
{
  observerCopy = observer;
  if ([(UIInteractionProgress *)self _indexOfObserver:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_observers addPointer:observerCopy];
  }
}

- (void)removeProgressObserver:(id)observer
{
  v4 = [(UIInteractionProgress *)self _indexOfObserver:observer];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    observers = self->_observers;

    [(NSPointerArray *)observers removePointerAtIndex:v5];
  }
}

- (int64_t)numberOfObservers
{
  [(NSPointerArray *)self->_observers compact];
  observers = self->_observers;

  return [(NSPointerArray *)observers count];
}

@end