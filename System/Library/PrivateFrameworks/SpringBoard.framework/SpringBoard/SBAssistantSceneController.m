@interface SBAssistantSceneController
- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)a3;
- (BOOL)isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)isOccludingSystemContent;
- (BOOL)isSystemAssistantExperienceAvailable;
- (BOOL)isSystemAssistantExperienceEnabled;
- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled;
- (BOOL)isVisible;
- (BOOL)isVisualSearchEnabled;
- (SBAssistantRootViewController)assistantRootViewController;
- (SBAssistantSceneController)initWithWindowScene:(id)a3;
- (SBAssistantSessionPresentationContext)presentationContext;
- (SBWindow)window;
- (SBWindowScene)windowScene;
- (void)addObserver:(id)a3;
- (void)assistantDidAppear:(id)a3 windowScene:(id)a4;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3;
- (void)assistantDidChangePresentation:(id)a3 windowScene:(id)a4;
- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)a3;
- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)a3;
- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4;
- (void)assistantWillAppear:(id)a3 windowScene:(id)a4;
- (void)assistantWillDisappear:(id)a3 windowScene:(id)a4;
- (void)dismissAssistantViewIfNecessary;
- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3;
- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 completion:(id)a4;
- (void)invalidate;
- (void)removeObserver:(id)a3;
@end

@implementation SBAssistantSceneController

- (BOOL)isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained isContinuityDisplayWindowScene];

  if (v3)
  {
    return 0;
  }

  v5 = +[SBAssistantController sharedInstance];
  v6 = [v5 isHomeAffordanceDoubleTapGestureEnabled];

  return v6;
}

- (SBAssistantSessionPresentationContext)presentationContext
{
  v3 = +[SBAssistantController sharedInstance];
  v4 = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:v4];
  v6 = [v5 presentationContext];

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (BOOL)isVisible
{
  v3 = +[SBAssistantController sharedInstance];
  v4 = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 isVisibleInWindowScene:v4];

  return v5;
}

- (BOOL)isSystemAssistantExperienceEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  v3 = [v2 isSystemAssistantExperienceEnabled];

  return v3;
}

- (SBAssistantSceneController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBAssistantSceneController;
  v5 = [(SBAssistantSceneController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v7;

    v6->_observingLayoutStateTransitions = 0;
    v9 = +[SBAssistantController sharedInstance];
    [v9 addObserver:v6];
  }

  return v6;
}

- (void)invalidate
{
  [(SBAssistantSceneController *)self dismissAssistantViewIfNecessary];
  v3 = +[SBAssistantController sharedInstance];
  [v3 removeObserver:self];
}

- (BOOL)isSystemAssistantExperienceAvailable
{
  v2 = +[SBAssistantController sharedInstance];
  v3 = [v2 isSystemAssistantExperienceAvailable];

  return v3;
}

- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  v3 = [v2 isSystemAssistantExperiencePersistentSiriEnabled];

  return v3;
}

- (BOOL)isVisualSearchEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  v3 = [v2 isVisualSearchEnabled];

  return v3;
}

- (BOOL)isOccludingSystemContent
{
  v2 = [(SBAssistantSceneController *)self presentationContext];
  if ([v2 isAssistantPresented])
  {
    v3 = [v2 allowsHDRContentBelow] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (SBWindow)window
{
  v3 = +[SBAssistantController sharedInstance];
  v4 = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:v4];
  v6 = [v5 window];

  return v6;
}

- (SBAssistantRootViewController)assistantRootViewController
{
  v3 = +[SBAssistantController sharedInstance];
  v4 = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:v4];
  v6 = [v5 assistantRootViewController];

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v7;
    if (!v5)
    {
      v6 = [(SBAssistantSceneController *)self observers];
      [v6 addObject:v7];

      v4 = v7;
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBAssistantSceneController *)self observers];
    [v5 removeObject:v4];
  }
}

- (void)dismissAssistantViewIfNecessary
{
  v4 = +[SBAssistantController sharedInstance];
  v3 = [(SBAssistantSceneController *)self windowScene];
  [v4 dismissAssistantViewIfNecessaryInWindowScene:v3];
}

- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v10 = +[SBAssistantController sharedInstance];
  v9 = [(SBAssistantSceneController *)self windowScene];
  [v10 dismissAssistantViewIfNecessaryForGestureTranslation:v9 velocity:v7 windowScene:{v6, x, y}];
}

- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3
{
  v6 = +[SBAssistantController sharedInstance];
  v5 = [(SBAssistantSceneController *)self windowScene];
  [v6 dismissAssistantViewIfNecessaryWithAnimation:a3 windowScene:v5];
}

- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8 = +[SBAssistantController sharedInstance];
  v7 = [(SBAssistantSceneController *)self windowScene];
  [v8 dismissAssistantViewIfNecessaryWithAnimation:a3 windowScene:v7 completion:v6];
}

- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)a3
{
  v4 = a3;
  v5 = +[SBAssistantController sharedInstance];
  v6 = [(SBAssistantSceneController *)self windowScene];
  v7 = [v5 commandeerCaptureDropletPreludeForVisionInvocation:v4 windowScene:v6];

  return v7;
}

- (void)assistantWillAppear:(id)a3 windowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBAssistantSceneController *)self windowScene];

  if (v6 == v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
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
            [v12 assistantWillAppear:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)assistantDidAppear:(id)a3 windowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBAssistantSceneController *)self windowScene];

  if (v6 == v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
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
            [v12 assistantDidAppear:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)assistantWillDisappear:(id)a3 windowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBAssistantSceneController *)self windowScene];

  if (v6 == v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
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
            [v12 assistantWillDisappear:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBAssistantSceneController *)self windowScene];

  if (v6 == v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
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
            [v12 assistantDidDisappear:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)assistantDidChangePresentation:(id)a3 windowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBAssistantSceneController *)self windowScene];

  if (v6 == v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
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
            [v12 assistantDidChangePresentation:self];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeSystemAssistantExperienceEnablement:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end