@interface _UISceneDestructionHostComponent
- (NSSet)destructionConditions;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation _UISceneDestructionHostComponent

- (NSSet)destructionConditions
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 destructionConditions];
  v5 = [v4 object];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v7;

  return v8;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v5 = [v17 settingsDiff];
  v6 = [v5 containsProperty:sel_destructionConditions];

  if (v6)
  {
    v7 = [v17 settings];
    v8 = [v7 destructionConditions];

    v9 = [v8 object];
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
            v16 = [(FBSSceneComponent *)self hostScene];
            [v15 _scene:v16 didUpdateDestructionConditions:v9];
          }

          v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISceneDestructionHostComponent.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    v5 = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_observers;
    self->_observers = v7;

    v5 = v10;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v5];
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneDestructionHostComponent.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    v5 = 0;
  }

  [(NSHashTable *)self->_observers removeObject:v5];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

@end