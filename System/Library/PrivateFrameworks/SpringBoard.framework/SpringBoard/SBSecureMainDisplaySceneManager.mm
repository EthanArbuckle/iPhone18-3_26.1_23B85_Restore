@interface SBSecureMainDisplaySceneManager
- (BOOL)_shouldAutoHostScene:(id)scene;
- (id)newSceneIdentityForApplication:(id)application;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneIdentityForApplication:(id)application;
- (id)sceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier;
- (id)sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier;
- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene;
- (void)addActionHandler:(id)handler forScene:(id)scene;
- (void)removeActionHandler:(id)handler forScene:(id)scene;
@end

@implementation SBSecureMainDisplaySceneManager

- (BOOL)_shouldAutoHostScene:(id)scene
{
  sceneCopy = scene;
  clientProcess = [sceneCopy clientProcess];
  if ([clientProcess isApplicationProcess])
  {
    clientProcess2 = [sceneCopy clientProcess];
    isCurrentProcess = [clientProcess2 isCurrentProcess];
  }

  else
  {
    isCurrentProcess = 1;
  }

  return isCurrentProcess;
}

- (id)newSceneIdentityForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v6 = [(SBSecureMainDisplaySceneManager *)self _sceneIdentifierForBundleIdentifier:bundleIdentifier];

  v7 = [(SBSecureMainDisplaySceneManager *)self sceneIdentityForApplication:applicationCopy uniqueIdentifier:v6];

  return v7;
}

- (id)sceneIdentityForApplication:(id)application
{
  v3 = [(SBSecureMainDisplaySceneManager *)self newSceneIdentityForApplication:application];

  return v3;
}

- (id)sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8 = identifierCopy;
  }

  else
  {
    bundleIdentifier = [application bundleIdentifier];
    v8 = [(SBSecureMainDisplaySceneManager *)self _sceneIdentifierForBundleIdentifier:bundleIdentifier];
  }

  v10 = [MEMORY[0x277D0ADC0] identityForIdentifier:v8];

  return v10;
}

- (id)sceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier
{
  identifier = [(SBSecureMainDisplaySceneManager *)self newSceneIdentityForApplication:application, identifier];

  return identifier;
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v7 = [actions mutableCopy];
  v8 = [(NSMapTable *)self->_blsActionHandlersForScenes objectForKey:sceneCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) respondToActions:v7 forFBScene:sceneCopy];
        [v7 intersectSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16.receiver = self;
  v16.super_class = SBSecureMainDisplaySceneManager;
  v14 = [(SBSceneManager *)&v16 scene:sceneCopy handleActions:v7];

  return v14;
}

- (void)addActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  sceneCopy = scene;
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  if (!blsActionHandlersForScenes)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_blsActionHandlersForScenes;
    self->_blsActionHandlersForScenes = weakToStrongObjectsMapTable;

    blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  }

  v10 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:sceneCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    [(NSMapTable *)self->_blsActionHandlersForScenes setObject:v10 forKey:sceneCopy];
  }

  [v10 addObject:handlerCopy];
}

- (void)removeActionHandler:(id)handler forScene:(id)scene
{
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  handlerCopy = handler;
  v7 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:scene];
  [v7 removeObject:handlerCopy];
}

- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene
{
  sceneCopy = scene;
  externalForegroundApplicationSceneHandles = [(SBSceneManager *)self externalForegroundApplicationSceneHandles];
  v8 = +[SBBackgroundActivityAttributionManager sharedInstance];
  [v8 updateForegroundApplicationSceneHandles:externalForegroundApplicationSceneHandles withOptions:-1 completion:0];

  clientProcess = [sceneCopy clientProcess];

  if ([clientProcess isApplicationProcess])
  {
    v10 = +[SBApplicationController sharedInstance];
    bundleIdentifier = [clientProcess bundleIdentifier];
    v12 = [v10 applicationWithBundleIdentifier:bundleIdentifier];

    if (v12)
    {
      [v12 setHasProminentlyIndicatedLocationUseWhileForeground:0];
      if (visibility == 1)
      {
        if ([v12 hasRegisteredBackgroundActivityWithIdentifier:*MEMORY[0x277D6BC00]])
        {
          [SBApp nowLocatingAppDidEnterForeground:v12];
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }
}

@end