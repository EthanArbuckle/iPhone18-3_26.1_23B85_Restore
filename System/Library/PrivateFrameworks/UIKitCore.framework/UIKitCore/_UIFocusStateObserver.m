@interface _UIFocusStateObserver
- (BOOL)isActive;
- (_UIFocusStateObserver)init;
- (id)addObserver:(id)a3;
- (id)description;
- (id)descriptionBuilder;
- (void)notifyObserversIfNecessary;
- (void)performUpdatesAndNotifyObservers:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation _UIFocusStateObserver

- (_UIFocusStateObserver)init
{
  v6.receiver = self;
  v6.super_class = _UIFocusStateObserver;
  v2 = [(_UIFocusStateObserver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = v3;

    *&v2->_flags = *&v2->_flags & 0xFE | [(_UIFocusStateObserver *)v2 isActive];
  }

  return v2;
}

- (id)description
{
  v2 = [(_UIFocusStateObserver *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilder
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  v4 = [(_UIFocusStateObserver *)self isActive];
  v5 = [v3 appendBool:v4 withName:@"isActive"];
  if (v4 != (*&self->_flags & 1))
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
    v3 = [(_UIFocusStateObserver *)self isActive];
    flags = self->_flags;
    if (v3 != (flags & 1))
    {
      *&self->_flags = flags & 0xFE | v3;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [(NSMapTable *)self->_observers objectEnumerator];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)isActive
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:32 description:@"This is an abstract class. isActive needs to be implemented by a concrete subclass."];

  return 0;
}

- (id)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = [MEMORY[0x1E696AFB0] UUID];
  observers = self->_observers;
  v8 = _Block_copy(v5);
  [(NSMapTable *)observers setObject:v8 forKey:v6];

  return v6;
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIFocusStateObserver.m" lineNumber:49 description:@"Observer is not of type id<_UIFocusStateObserverToken>."];
  }

  [(NSMapTable *)self->_observers removeObjectForKey:v6];
}

- (void)performUpdatesAndNotifyObservers:(id)a3
{
  flags = self->_flags;
  *&self->_flags = flags | 2;
  (*(a3 + 2))(a3, a2);
  *&self->_flags = *&self->_flags & 0xFD | flags & 2;

  [(_UIFocusStateObserver *)self notifyObserversIfNecessary];
}

@end