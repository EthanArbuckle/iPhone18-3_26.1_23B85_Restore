@interface _UIFocusStateObserver
- (BOOL)isActive;
- (_UIFocusStateObserver)init;
- (id)addObserver:(id)observer;
- (id)description;
- (id)descriptionBuilder;
- (void)notifyObserversIfNecessary;
- (void)performUpdatesAndNotifyObservers:(id)observers;
- (void)removeObserver:(id)observer;
@end

@implementation _UIFocusStateObserver

- (_UIFocusStateObserver)init
{
  v6.receiver = self;
  v6.super_class = _UIFocusStateObserver;
  v2 = [(_UIFocusStateObserver *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = strongToStrongObjectsMapTable;

    *&v2->_flags = *&v2->_flags & 0xFE | [(_UIFocusStateObserver *)v2 isActive];
  }

  return v2;
}

- (id)description
{
  descriptionBuilder = [(_UIFocusStateObserver *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

- (id)descriptionBuilder
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  isActive = [(_UIFocusStateObserver *)self isActive];
  v5 = [v3 appendBool:isActive withName:@"isActive"];
  if (isActive != (*&self->_flags & 1))
  {
    v6 = [v3 appendBool:? withName:?];
  }

  v7 = [v3 appendObject:self->_observers withName:@"observers"];

  return v3;
}

- (void)notifyObserversIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {
    isActive = [(_UIFocusStateObserver *)self isActive];
    flags = self->_flags;
    if (isActive != (flags & 1))
    {
      *&self->_flags = flags & 0xFE | isActive;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      objectEnumerator = [(NSMapTable *)self->_observers objectEnumerator];
      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
          }

          while (v7 != v9);
          v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)isActive
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:32 description:@"This is an abstract class. isActive needs to be implemented by a concrete subclass."];

  return 0;
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  observers = self->_observers;
  v8 = _Block_copy(observerCopy);
  [(NSMapTable *)observers setObject:v8 forKey:uUID];

  return uUID;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:49 description:@"Observer is not of type id<_UIFocusStateObserverToken>."];
  }

  [(NSMapTable *)self->_observers removeObjectForKey:observerCopy];
}

- (void)performUpdatesAndNotifyObservers:(id)observers
{
  flags = self->_flags;
  *&self->_flags = flags | 2;
  (*(observers + 2))(observers, a2);
  *&self->_flags = *&self->_flags & 0xFD | flags & 2;

  [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
}

@end