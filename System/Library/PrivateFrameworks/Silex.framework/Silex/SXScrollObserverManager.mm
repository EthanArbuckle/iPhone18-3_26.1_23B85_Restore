@interface SXScrollObserverManager
- (SXScrollObserverManager)init;
- (void)addScrollObserver:(id)observer;
- (void)didScroll;
- (void)removeScrollObserver:(id)observer;
- (void)setScrolling:(BOOL)scrolling;
@end

@implementation SXScrollObserverManager

- (SXScrollObserverManager)init
{
  v6.receiver = self;
  v6.super_class = SXScrollObserverManager;
  v2 = [(SXScrollObserverManager *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)addScrollObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXScrollObserverManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeScrollObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXScrollObserverManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)didScroll
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(SXScrollObserverManager *)self scrolling])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    observers = [(SXScrollObserverManager *)self observers];
    v4 = [observers copy];

    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) didScroll];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setScrolling:(BOOL)scrolling
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_scrolling != scrolling)
  {
    scrollingCopy = scrolling;
    self->_scrolling = scrolling;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    observers = [(SXScrollObserverManager *)self observers];
    v5 = [observers copy];

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
          if (scrollingCopy)
          {
            [v10 scrollingWillStart];
          }

          else
          {
            [v10 scrollingDidStop];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

@end