@interface _UISceneRenderingEnvironmentHostComponent
- (BOOL)isCapturingContentForAdditionalRenderingDestination;
- (BOOL)prefersContentProtection;
- (NSString)systemDisplayIdentifier;
- (id)clientSettings;
- (id)settings;
- (int64_t)activeAppearance;
- (void)addObserver:(id)a3;
- (void)notifyObserversOfPrefersContentProtectionUpdate:(BOOL)a3;
- (void)removeObserver:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)setActiveAppearance:(int64_t)a3;
- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)a3;
- (void)setScene:(id)a3;
- (void)setSystemDisplayIdentifier:(id)a3;
- (void)updateSettings:(id)a3;
@end

@implementation _UISceneRenderingEnvironmentHostComponent

- (int64_t)activeAppearance
{
  v2 = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  v3 = [v2 activeAppearance];

  return v3;
}

- (id)settings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 settings];

  return v3;
}

- (void)updateSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  [v5 updateSettings:v4];
}

- (id)clientSettings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 clientSettings];

  return v3;
}

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UISceneRenderingEnvironmentHostComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(_UISceneRenderingEnvironmentHostComponent *)self setIsCapturingContentForAdditionalRenderingDestination:0];
  [(_UISceneRenderingEnvironmentHostComponent *)self setSystemDisplayIdentifier:0];
}

- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __100___UISceneRenderingEnvironmentHostComponent_setIsCapturingContentForAdditionalRenderingDestination___block_invoke;
  v3[3] = &__block_descriptor_33_e71_v16__0__FBSMutableSceneSettings__UISceneRenderingEnvironmentSettings__8l;
  v4 = a3;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v3];
}

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  v2 = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  v3 = [v2 modern_isCapturingContentForAdditionalRenderingDestination];

  return v3;
}

- (void)setSystemDisplayIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___UISceneRenderingEnvironmentHostComponent_setSystemDisplayIdentifier___block_invoke;
  v6[3] = &unk_1E7125860;
  v7 = v4;
  v5 = v4;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v6];
}

- (NSString)systemDisplayIdentifier
{
  v2 = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  v3 = [v2 systemDisplayIdentifier];

  return v3;
}

- (BOOL)prefersContentProtection
{
  v2 = [(_UISceneRenderingEnvironmentHostComponent *)self clientSettings];
  v3 = [v2 prefersContentProtection];

  return v3;
}

- (void)setActiveAppearance:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65___UISceneRenderingEnvironmentHostComponent_setActiveAppearance___block_invoke;
  v3[3] = &__block_descriptor_40_e71_v16__0__FBSMutableSceneSettings__UISceneRenderingEnvironmentSettings__8l;
  v3[4] = a3;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v3];
}

- (void)notifyObserversOfPrefersContentProtectionUpdate:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(FBSSceneComponent *)self hostScene];
        [v10 _scene:v11 didUpdatePrefersContentProtection:v3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISceneRenderingEnvironmentHostComponent.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

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
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneRenderingEnvironmentHostComponent.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    v5 = 0;
  }

  [(NSHashTable *)self->_observers removeObject:v5];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v9 = a4;
  v5 = [v9 settingsDiff];
  v6 = [v5 containsProperty:sel_isCapturingContentForAdditionalRenderingDestination];

  if (v6)
  {
    v7 = [v9 settings];
    v8 = [v7 isCapturingContentForAdditionalRenderingDestination];

    [(_UISceneRenderingEnvironmentHostComponent *)self setIsCapturingContentForAdditionalRenderingDestination:v8];
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v9 = a4;
  v5 = [v9 settingsDiff];
  v6 = [v5 containsProperty:sel_prefersContentProtection];

  if (v6)
  {
    v7 = [v9 settings];
    v8 = [v7 prefersContentProtection];

    [(_UISceneRenderingEnvironmentHostComponent *)self notifyObserversOfPrefersContentProtectionUpdate:v8];
  }
}

@end