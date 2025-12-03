@interface SBAssistantSceneController
- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)invocation;
- (BOOL)isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)isOccludingSystemContent;
- (BOOL)isSystemAssistantExperienceAvailable;
- (BOOL)isSystemAssistantExperienceEnabled;
- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled;
- (BOOL)isVisible;
- (BOOL)isVisualSearchEnabled;
- (SBAssistantRootViewController)assistantRootViewController;
- (SBAssistantSceneController)initWithWindowScene:(id)scene;
- (SBAssistantSessionPresentationContext)presentationContext;
- (SBWindow)window;
- (SBWindowScene)windowScene;
- (void)addObserver:(id)observer;
- (void)assistantDidAppear:(id)appear windowScene:(id)scene;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement;
- (void)assistantDidChangePresentation:(id)presentation windowScene:(id)scene;
- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)enablement;
- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)enablement;
- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)assistantWillDisappear:(id)disappear windowScene:(id)scene;
- (void)dismissAssistantViewIfNecessary;
- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation;
- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation completion:(id)completion;
- (void)invalidate;
- (void)removeObserver:(id)observer;
@end

@implementation SBAssistantSceneController

- (BOOL)isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  isContinuityDisplayWindowScene = [WeakRetained isContinuityDisplayWindowScene];

  if (isContinuityDisplayWindowScene)
  {
    return 0;
  }

  v5 = +[SBAssistantController sharedInstance];
  isHomeAffordanceDoubleTapGestureEnabled = [v5 isHomeAffordanceDoubleTapGestureEnabled];

  return isHomeAffordanceDoubleTapGestureEnabled;
}

- (SBAssistantSessionPresentationContext)presentationContext
{
  v3 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:windowScene];
  presentationContext = [v5 presentationContext];

  return presentationContext;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (BOOL)isVisible
{
  v3 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 isVisibleInWindowScene:windowScene];

  return v5;
}

- (BOOL)isSystemAssistantExperienceEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  isSystemAssistantExperienceEnabled = [v2 isSystemAssistantExperienceEnabled];

  return isSystemAssistantExperienceEnabled;
}

- (SBAssistantSceneController)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = SBAssistantSceneController;
  v5 = [(SBAssistantSceneController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
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
  isSystemAssistantExperienceAvailable = [v2 isSystemAssistantExperienceAvailable];

  return isSystemAssistantExperienceAvailable;
}

- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  isSystemAssistantExperiencePersistentSiriEnabled = [v2 isSystemAssistantExperiencePersistentSiriEnabled];

  return isSystemAssistantExperiencePersistentSiriEnabled;
}

- (BOOL)isVisualSearchEnabled
{
  v2 = +[SBAssistantController sharedInstance];
  isVisualSearchEnabled = [v2 isVisualSearchEnabled];

  return isVisualSearchEnabled;
}

- (BOOL)isOccludingSystemContent
{
  presentationContext = [(SBAssistantSceneController *)self presentationContext];
  if ([presentationContext isAssistantPresented])
  {
    v3 = [presentationContext allowsHDRContentBelow] ^ 1;
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
  windowScene = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:windowScene];
  window = [v5 window];

  return window;
}

- (SBAssistantRootViewController)assistantRootViewController
{
  v3 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  v5 = [v3 sessionForWindowScene:windowScene];
  assistantRootViewController = [v5 assistantRootViewController];

  return assistantRootViewController;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v7;
    if (!v5)
    {
      observers = [(SBAssistantSceneController *)self observers];
      [observers addObject:v7];

      observerCopy = v7;
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SBAssistantSceneController *)self observers];
    [observers removeObject:observerCopy];
  }
}

- (void)dismissAssistantViewIfNecessary
{
  v4 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  [v4 dismissAssistantViewIfNecessaryInWindowScene:windowScene];
}

- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = translation.y;
  v7 = translation.x;
  v10 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  [v10 dismissAssistantViewIfNecessaryForGestureTranslation:windowScene velocity:v7 windowScene:{v6, x, y}];
}

- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation
{
  v6 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  [v6 dismissAssistantViewIfNecessaryWithAnimation:animation windowScene:windowScene];
}

- (void)dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation completion:(id)completion
{
  completionCopy = completion;
  v8 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  [v8 dismissAssistantViewIfNecessaryWithAnimation:animation windowScene:windowScene completion:completionCopy];
}

- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = +[SBAssistantController sharedInstance];
  windowScene = [(SBAssistantSceneController *)self windowScene];
  v7 = [v5 commandeerCaptureDropletPreludeForVisionInvocation:invocationCopy windowScene:windowScene];

  return v7;
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowScene = [(SBAssistantSceneController *)self windowScene];

  if (windowScene == sceneCopy)
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

- (void)assistantDidAppear:(id)appear windowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowScene = [(SBAssistantSceneController *)self windowScene];

  if (windowScene == sceneCopy)
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

- (void)assistantWillDisappear:(id)disappear windowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowScene = [(SBAssistantSceneController *)self windowScene];

  if (windowScene == sceneCopy)
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

- (void)assistantDidDisappear:(id)disappear windowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowScene = [(SBAssistantSceneController *)self windowScene];

  if (windowScene == sceneCopy)
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

- (void)assistantDidChangePresentation:(id)presentation windowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowScene = [(SBAssistantSceneController *)self windowScene];

  if (windowScene == sceneCopy)
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

- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)enablement
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:enablement];
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

- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)enablement
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:enablement];
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

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:enablement];
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