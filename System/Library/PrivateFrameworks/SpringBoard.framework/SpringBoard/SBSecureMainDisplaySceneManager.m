@interface SBSecureMainDisplaySceneManager
- (BOOL)_shouldAutoHostScene:(id)a3;
- (id)newSceneIdentityForApplication:(id)a3;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)sceneIdentityForApplication:(id)a3;
- (id)sceneIdentityForApplication:(id)a3 targetContentIdentifier:(id)a4;
- (id)sceneIdentityForApplication:(id)a3 uniqueIdentifier:(id)a4;
- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5;
- (void)addActionHandler:(id)a3 forScene:(id)a4;
- (void)removeActionHandler:(id)a3 forScene:(id)a4;
@end

@implementation SBSecureMainDisplaySceneManager

- (BOOL)_shouldAutoHostScene:(id)a3
{
  v3 = a3;
  v4 = [v3 clientProcess];
  if ([v4 isApplicationProcess])
  {
    v5 = [v3 clientProcess];
    v6 = [v5 isCurrentProcess];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)newSceneIdentityForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(SBSecureMainDisplaySceneManager *)self _sceneIdentifierForBundleIdentifier:v5];

  v7 = [(SBSecureMainDisplaySceneManager *)self sceneIdentityForApplication:v4 uniqueIdentifier:v6];

  return v7;
}

- (id)sceneIdentityForApplication:(id)a3
{
  v3 = [(SBSecureMainDisplaySceneManager *)self newSceneIdentityForApplication:a3];

  return v3;
}

- (id)sceneIdentityForApplication:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a3 bundleIdentifier];
    v8 = [(SBSecureMainDisplaySceneManager *)self _sceneIdentifierForBundleIdentifier:v9];
  }

  v10 = [MEMORY[0x277D0ADC0] identityForIdentifier:v8];

  return v10;
}

- (id)sceneIdentityForApplication:(id)a3 targetContentIdentifier:(id)a4
{
  v4 = [(SBSecureMainDisplaySceneManager *)self newSceneIdentityForApplication:a3, a4];

  return v4;
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [(NSMapTable *)self->_blsActionHandlersForScenes objectForKey:v6];
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

        v13 = [*(*(&v17 + 1) + 8 * i) respondToActions:v7 forFBScene:v6];
        [v7 intersectSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16.receiver = self;
  v16.super_class = SBSecureMainDisplaySceneManager;
  v14 = [(SBSceneManager *)&v16 scene:v6 handleActions:v7];

  return v14;
}

- (void)addActionHandler:(id)a3 forScene:(id)a4
{
  v11 = a3;
  v6 = a4;
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  if (!blsActionHandlersForScenes)
  {
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_blsActionHandlersForScenes;
    self->_blsActionHandlersForScenes = v8;

    blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  }

  v10 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    [(NSMapTable *)self->_blsActionHandlersForScenes setObject:v10 forKey:v6];
  }

  [v10 addObject:v11];
}

- (void)removeActionHandler:(id)a3 forScene:(id)a4
{
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  v6 = a3;
  v7 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:a4];
  [v7 removeObject:v6];
}

- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5
{
  v7 = a5;
  v13 = [(SBSceneManager *)self externalForegroundApplicationSceneHandles];
  v8 = +[SBBackgroundActivityAttributionManager sharedInstance];
  [v8 updateForegroundApplicationSceneHandles:v13 withOptions:-1 completion:0];

  v9 = [v7 clientProcess];

  if ([v9 isApplicationProcess])
  {
    v10 = +[SBApplicationController sharedInstance];
    v11 = [v9 bundleIdentifier];
    v12 = [v10 applicationWithBundleIdentifier:v11];

    if (v12)
    {
      [v12 setHasProminentlyIndicatedLocationUseWhileForeground:0];
      if (a3 == 1)
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