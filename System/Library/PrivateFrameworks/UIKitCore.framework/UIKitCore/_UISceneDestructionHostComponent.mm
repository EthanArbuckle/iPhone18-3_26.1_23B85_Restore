@interface _UISceneDestructionHostComponent
- (NSSet)destructionConditions;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation _UISceneDestructionHostComponent

- (NSSet)destructionConditions
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  destructionConditions = [clientSettings destructionConditions];
  object = [destructionConditions object];
  v6 = object;
  if (object)
  {
    v7 = object;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v7;

  return v8;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_destructionConditions];

  if (v6)
  {
    settings = [settingsCopy settings];
    destructionConditions = [settings destructionConditions];

    object = [destructionConditions object];
    if (self)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = self->_observers;
      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            hostScene = [(FBSSceneComponent *)self hostScene];
            [v15 _scene:hostScene didUpdateDestructionConditions:object];
          }

          v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v10 = observerCopy;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneDestructionHostComponent.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    observerCopy = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v10;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v8 = observerCopy;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneDestructionHostComponent.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    observerCopy = 0;
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

@end