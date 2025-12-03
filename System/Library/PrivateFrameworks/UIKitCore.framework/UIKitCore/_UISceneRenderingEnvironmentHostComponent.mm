@interface _UISceneRenderingEnvironmentHostComponent
- (BOOL)isCapturingContentForAdditionalRenderingDestination;
- (BOOL)prefersContentProtection;
- (NSString)systemDisplayIdentifier;
- (id)clientSettings;
- (id)settings;
- (int64_t)activeAppearance;
- (void)addObserver:(id)observer;
- (void)notifyObserversOfPrefersContentProtectionUpdate:(BOOL)update;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)setActiveAppearance:(int64_t)appearance;
- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)destination;
- (void)setScene:(id)scene;
- (void)setSystemDisplayIdentifier:(id)identifier;
- (void)updateSettings:(id)settings;
@end

@implementation _UISceneRenderingEnvironmentHostComponent

- (int64_t)activeAppearance
{
  settings = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  activeAppearance = [settings activeAppearance];

  return activeAppearance;
}

- (id)settings
{
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];

  return settings;
}

- (void)updateSettings:(id)settings
{
  settingsCopy = settings;
  hostScene = [(FBSSceneComponent *)self hostScene];
  [hostScene updateSettings:settingsCopy];
}

- (id)clientSettings
{
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];

  return clientSettings;
}

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = _UISceneRenderingEnvironmentHostComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  [(_UISceneRenderingEnvironmentHostComponent *)self setIsCapturingContentForAdditionalRenderingDestination:0];
  [(_UISceneRenderingEnvironmentHostComponent *)self setSystemDisplayIdentifier:0];
}

- (void)setIsCapturingContentForAdditionalRenderingDestination:(BOOL)destination
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __100___UISceneRenderingEnvironmentHostComponent_setIsCapturingContentForAdditionalRenderingDestination___block_invoke;
  v3[3] = &__block_descriptor_33_e71_v16__0__FBSMutableSceneSettings__UISceneRenderingEnvironmentSettings__8l;
  destinationCopy = destination;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v3];
}

- (BOOL)isCapturingContentForAdditionalRenderingDestination
{
  settings = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  modern_isCapturingContentForAdditionalRenderingDestination = [settings modern_isCapturingContentForAdditionalRenderingDestination];

  return modern_isCapturingContentForAdditionalRenderingDestination;
}

- (void)setSystemDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___UISceneRenderingEnvironmentHostComponent_setSystemDisplayIdentifier___block_invoke;
  v6[3] = &unk_1E7125860;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v6];
}

- (NSString)systemDisplayIdentifier
{
  settings = [(_UISceneRenderingEnvironmentHostComponent *)self settings];
  systemDisplayIdentifier = [settings systemDisplayIdentifier];

  return systemDisplayIdentifier;
}

- (BOOL)prefersContentProtection
{
  clientSettings = [(_UISceneRenderingEnvironmentHostComponent *)self clientSettings];
  prefersContentProtection = [clientSettings prefersContentProtection];

  return prefersContentProtection;
}

- (void)setActiveAppearance:(int64_t)appearance
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65___UISceneRenderingEnvironmentHostComponent_setActiveAppearance___block_invoke;
  v3[3] = &__block_descriptor_40_e71_v16__0__FBSMutableSceneSettings__UISceneRenderingEnvironmentSettings__8l;
  v3[4] = appearance;
  [(_UISceneRenderingEnvironmentHostComponent *)self updateSettings:v3];
}

- (void)notifyObserversOfPrefersContentProtectionUpdate:(BOOL)update
{
  updateCopy = update;
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
        hostScene = [(FBSSceneComponent *)self hostScene];
        [v10 _scene:hostScene didUpdatePrefersContentProtection:updateCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v10 = observerCopy;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneRenderingEnvironmentHostComponent.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneRenderingEnvironmentHostComponent.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

    observerCopy = 0;
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_isCapturingContentForAdditionalRenderingDestination];

  if (v6)
  {
    settings = [settingsCopy settings];
    isCapturingContentForAdditionalRenderingDestination = [settings isCapturingContentForAdditionalRenderingDestination];

    [(_UISceneRenderingEnvironmentHostComponent *)self setIsCapturingContentForAdditionalRenderingDestination:isCapturingContentForAdditionalRenderingDestination];
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_prefersContentProtection];

  if (v6)
  {
    settings = [settingsCopy settings];
    prefersContentProtection = [settings prefersContentProtection];

    [(_UISceneRenderingEnvironmentHostComponent *)self notifyObserversOfPrefersContentProtectionUpdate:prefersContentProtection];
  }
}

@end