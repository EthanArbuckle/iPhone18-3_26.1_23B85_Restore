@interface SBHomeAffordanceInteractionManager
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)_homeAffordanceHitTestRectOfSize:(int64_t)a3 forHomeAffordanceInteraction:(id)a4;
- (SBHomeAffordanceInteractionManager)initWithWindowScene:(id)a3;
- (SBWindowScene)windowScene;
- (id)_assistantController;
- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)a3;
- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)a3 touch:(id)a4;
- (id)_systemGestureManager;
- (id)acquireDisableHomeAffordanceDoubleTapGestureAssertionWithReason:(id)a3;
- (id)newHomeAffordanceInteraction;
- (void)_bounceDoubleTapFailureRecognized:(id)a3;
- (void)_bounceDoubleTapRecognized:(id)a3;
- (void)_bounceTapRecognized:(id)a3;
- (void)_gestureRecognizer:(id)a3 didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:(id)a4;
- (void)_gestureRecognizer:(id)a3 didRecognizeDoubleTapWithHomeAffordanceInteraction:(id)a4;
- (void)_gestureRecognizer:(id)a3 didRecognizeSingleTapWithHomeAffordanceInteraction:(id)a4;
- (void)_logShouldReceiveTouchIfNeeded:(BOOL)a3 forGestureRecognizer:(id)a4 touch:(id)a5;
- (void)_revealEdgePanRecognized:(id)a3;
- (void)_revealTapRecognized:(id)a3;
- (void)_updateBounceTapGestureRecognizers;
- (void)dealloc;
- (void)registerHomeAffordanceInteraction:(id)a3;
- (void)unregisterHomeAffordanceInteraction:(id)a3;
- (void)updateHomeAffordanceHitTestRectForHomeAffordanceInteraction:(id)a3;
@end

@implementation SBHomeAffordanceInteractionManager

- (id)_systemGestureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained systemGestureManager];

  return v3;
}

- (id)newHomeAffordanceInteraction
{
  v3 = [SBHomeAffordanceInteraction alloc];

  return [(SBHomeAffordanceInteraction *)v3 initWithHomeAffordanceInteractionManager:self];
}

- (SBHomeAffordanceInteractionManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SBHomeAffordanceInteractionManager;
  v5 = [(SBHomeAffordanceInteractionManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = _os_feature_enabled_impl();
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v6 action:sel__bounceTapRecognized_];
    bounceTapRecognizer = v6->_bounceTapRecognizer;
    v6->_bounceTapRecognizer = v8;

    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setName:@"homeGrabber.bounce.tap"];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setDelaysTouchesBegan:0];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setAllowedTouchTypes:&unk_28336E520];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer sbf_setPencilTouchesAllowed:v7];
    [(UITapGestureRecognizer *)v6->_bounceTapRecognizer setDelegate:v6];
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v6 action:sel__revealTapRecognized_];
    revealTapRecognizer = v6->_revealTapRecognizer;
    v6->_revealTapRecognizer = v10;

    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setName:@"homeGrabber.reveal.tap"];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setDelaysTouchesBegan:0];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setAllowedTouchTypes:&unk_28336E538];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer sbf_setPencilTouchesAllowed:v7];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer setDelegate:v6];
    v12 = objc_alloc_init(MEMORY[0x277D75B80]);
    revealDoubleTapRecognizer = v6->_revealDoubleTapRecognizer;
    v6->_revealDoubleTapRecognizer = v12;

    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setName:@"homeGrabber.reveal.doubleTap"];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setDelaysTouchesBegan:0];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setDelaysTouchesEnded:0];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setAllowedTouchTypes:&unk_28336E550];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer sbf_setPencilTouchesAllowed:v7];
    [(UITapGestureRecognizer *)v6->_revealDoubleTapRecognizer setDelegate:v6];
    [(UITapGestureRecognizer *)v6->_revealTapRecognizer requireGestureRecognizerToFail:v6->_revealDoubleTapRecognizer];
    v14 = [objc_alloc(MEMORY[0x277D759A8]) initWithTarget:v6 action:sel__revealEdgePanRecognized_ type:3 options:v7];
    revealEdgePanRecognizer = v6->_revealEdgePanRecognizer;
    v6->_revealEdgePanRecognizer = v14;

    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setName:@"homeGrabber.reveal.edgePan"];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setCancelsTouchesInView:0];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setDelaysTouchesBegan:0];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setDelaysTouchesEnded:0];
    v16 = v6->_revealEdgePanRecognizer;
    if ([objc_opt_class() _wantsModernRevealGestureRecognizerBehaviors])
    {
      v17 = 4;
    }

    else
    {
      v17 = 15;
    }

    [(UIScreenEdgePanGestureRecognizer *)v16 setEdges:v17];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setAllowedTouchTypes:&unk_28336E568];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer sbf_setPencilTouchesAllowed:v7];
    [(UIScreenEdgePanGestureRecognizer *)v6->_revealEdgePanRecognizer setDelegate:v6];
    v18 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    registeredHomeAffordanceInteractions = v6->_registeredHomeAffordanceInteractions;
    v6->_registeredHomeAffordanceInteractions = v18;

    v20 = objc_alloc_init(MEMORY[0x277D55218]);
    quickTypeGestureSource = v6->_quickTypeGestureSource;
    v6->_quickTypeGestureSource = v20;

    v22 = [(SBHomeAffordanceInteractionManager *)v6 _assistantController];
    [v22 addObserver:v6];

    [(SBHomeAffordanceInteractionManager *)v6 _updateBounceTapGestureRecognizers];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  [v3 removeObserver:self];

  [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource invalidate];
  v4.receiver = self;
  v4.super_class = SBHomeAffordanceInteractionManager;
  [(SBHomeAffordanceInteractionManager *)&v4 dealloc];
}

- (void)registerHomeAffordanceInteraction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSHashTable *)self->_registeredHomeAffordanceInteractions addObject:a3];
  if (!self->_gesturesEnabled && [(NSHashTable *)self->_registeredHomeAffordanceInteractions count])
  {
    v4 = SBLogHomeAffordance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSHashTable *)self->_registeredHomeAffordanceInteractions count];
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizers; _registeredHomeAffordanceInteractions count changed to %lu", &v13, 0xCu);
    }

    self->_gesturesEnabled = 1;
    v6 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
    [v6 addGestureRecognizer:self->_bounceTapRecognizer withType:99];
    [v6 addGestureRecognizer:self->_revealTapRecognizer withType:102];
    [v6 addGestureRecognizer:self->_revealDoubleTapRecognizer withType:103];
    [v6 addGestureRecognizer:self->_revealEdgePanRecognizer withType:104];
    bounceDoubleTapRecognizer = self->_bounceDoubleTapRecognizer;
    if (bounceDoubleTapRecognizer)
    {
      [v6 addGestureRecognizer:bounceDoubleTapRecognizer withType:100];
      v8 = SBLogHomeAffordance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v13, 0xCu);
      }
    }

    bounceDoubleTapFailureRecognizer = self->_bounceDoubleTapFailureRecognizer;
    if (bounceDoubleTapFailureRecognizer)
    {
      [v6 addGestureRecognizer:bounceDoubleTapFailureRecognizer withType:101];
      v11 = SBLogHomeAffordance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v13, 0xCu);
      }
    }

    [v6 gestureRecognizerOfType:122 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [v6 gestureRecognizerOfType:123 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [v6 gestureRecognizerOfType:107 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [v6 gestureRecognizerOfType:108 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
  }
}

- (void)unregisterHomeAffordanceInteraction:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  [(NSHashTable *)self->_registeredHomeAffordanceInteractions removeObject:a3];
  if (self->_gesturesEnabled && ![(NSHashTable *)self->_registeredHomeAffordanceInteractions count])
  {
    v4 = SBLogHomeAffordance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSHashTable *)self->_registeredHomeAffordanceInteractions count];
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizers; _registeredHomeAffordanceInteractions count changed to %lu", &v11, 0xCu);
    }

    self->_gesturesEnabled = 0;
    v6 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
    [v6 removeGestureRecognizer:self->_bounceTapRecognizer];
    [v6 removeGestureRecognizer:self->_revealTapRecognizer];
    [v6 removeGestureRecognizer:self->_revealDoubleTapRecognizer];
    [v6 removeGestureRecognizer:self->_revealEdgePanRecognizer];
    if (self->_bounceDoubleTapRecognizer)
    {
      [v6 removeGestureRecognizer:?];
      v7 = SBLogHomeAffordance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v11, 0xCu);
      }
    }

    if (self->_bounceDoubleTapFailureRecognizer)
    {
      [v6 removeGestureRecognizer:?];
      v9 = SBLogHomeAffordance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v11, 0xCu);
      }
    }
  }
}

- (id)acquireDisableHomeAffordanceDoubleTapGestureAssertionWithReason:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 setWithArray:&unk_28336E580];
  v7 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
  v8 = [v7 acquireSystemGestureDisableAssertionForReason:v5 forSystemGestureTypes:v6];

  return v8;
}

- (void)updateHomeAffordanceHitTestRectForHomeAffordanceInteraction:(id)a3
{
  v4 = self->_currentHomeAffordanceInteraction == a3;
  v5 = a3;
  [(SBHomeAffordanceInteractionManager *)self _homeAffordanceHitTestRectOfSize:v4 forHomeAffordanceInteraction:v5];
  [v5 setHomeAffordanceHitTestRect:?];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager gestureRecognizer:shouldReceiveTouch:];
  }

  if (self->_bounceTapRecognizer == v6)
  {
    v11 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v6 touch:v7];
    v9 = v11;
    if (v11)
    {
      LOBYTE(v10) = [v11 allowsUserInteraction];
    }

    else
    {
      LOBYTE(v10) = 0;
    }

LABEL_19:

    goto LABEL_23;
  }

  if (self->_bounceDoubleTapRecognizer == v6 || self->_bounceDoubleTapFailureRecognizer == v6)
  {
    if ([v7 _isPointerTouch])
    {
      v10 = 0;
    }

    else
    {
      v12 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v6 touch:v7];
      v13 = v12;
      if (v12)
      {
        v10 = [v12 allowsUserInteraction];
      }

      else
      {
        v10 = 0;
      }
    }

    [(SBHomeAffordanceInteractionManager *)self _logShouldReceiveTouchIfNeeded:v10 forGestureRecognizer:v6 touch:v7];
  }

  else
  {
    if ((self->_revealTapRecognizer == v6 || self->_revealDoubleTapRecognizer == v6) && [objc_opt_class() _wantsModernRevealGestureRecognizerBehaviors])
    {
      v8 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v6 touch:v7];
      v9 = v8;
      LOBYTE(v10) = v8 != 0;
      if (v8)
      {
        [v8 notifyDidRecognizeTouchThatShouldUnhideViewImmediately:1];
      }

      goto LABEL_19;
    }

    LOBYTE(v10) = 1;
  }

LABEL_23:

  return v10;
}

- (id)_assistantController
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained assistantController];

  return v3;
}

- (void)_bounceTapRecognized:(id)a3
{
  v8 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceTapRecognized:];
  }

  v4 = [v8 sbf_hasPointerTouch];
  v5 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
  v6 = [v5 areSystemGesturesDisabledForAccessibility];

  v7 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v8];
  if (!v4 || (v6 & 1) != 0)
  {
    [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:v8 didRecognizeSingleTapWithHomeAffordanceInteraction:v7];
  }

  else
  {
    [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:v8 didRecognizeSingleClickWithHomeAffordanceInteraction:v7];
  }
}

- (void)_bounceDoubleTapRecognized:(id)a3
{
  v4 = MEMORY[0x277CCACC8];
  v5 = a3;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceDoubleTapRecognized:];
  }

  v6 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v5];
  [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:v5 didRecognizeDoubleTapWithHomeAffordanceInteraction:v6];
}

- (void)_bounceDoubleTapFailureRecognized:(id)a3
{
  v4 = MEMORY[0x277CCACC8];
  v5 = a3;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceDoubleTapFailureRecognized:];
  }

  v6 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v5];
  [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:v5 didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:v6];
}

- (void)_revealTapRecognized:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _revealTapRecognized:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSHashTable *)self->_registeredHomeAffordanceInteractions copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 view];
        [v9 notifyDidRecognizeTouchThatShouldUnhideViewImmediately:{objc_msgSend(v10, "isHidden")}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_revealEdgePanRecognized:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _revealEdgePanRecognized:];
  }

  if ([v4 state] == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSHashTable *)self->_registeredHomeAffordanceInteractions copy];
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

          [*(*(&v10 + 1) + 8 * v9++) notifyDidRecognizeTouchThatShouldUnhideViewImmediately:{objc_msgSend(objc_opt_class(), "_wantsModernRevealGestureRecognizerBehaviors")}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (CGRect)_homeAffordanceHitTestRectOfSize:(int64_t)a3 forHomeAffordanceInteraction:(id)a4
{
  v5 = a4;
  [v5 homeAffordanceFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a3 == 1)
  {
    [v5 expandedHomeAffordanceHitTestRectOutsets];
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (!a3)
    {
      [v5 standardHomeAffordanceHitTestRectOutsets];
    }
  }

  v18 = v7 + v16;
  v19 = v9 + v17;
  v20 = v11 - (v14 + v16);
  v21 = v13 - (v15 + v17);

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_logShouldReceiveTouchIfNeeded:(BOOL)a3 forGestureRecognizer:(id)a4 touch:(id)a5
{
  v6 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = SBLogHomeAffordance();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v8 touch:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 view];
      _UISystemGestureLocationForTouchInView();
      v16 = v15;
      v18 = v17;
      [v13 homeAffordanceHitTestRect];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
    }

    else
    {
      v14 = 0;
      v20 = *MEMORY[0x277CBF398];
      v22 = *(MEMORY[0x277CBF398] + 8);
      v24 = *(MEMORY[0x277CBF398] + 16);
      v26 = *(MEMORY[0x277CBF398] + 24);
      v18 = INFINITY;
      v16 = INFINITY;
    }

    v27 = SBLogHomeAffordance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v8 name];
      v33 = [v9 _isPointerTouch];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v47.x = v16;
      v47.y = v18;
      v31 = NSStringFromCGPoint(v47);
      v48.origin.x = v20;
      v48.origin.y = v22;
      v48.size.width = v24;
      v48.size.height = v26;
      v32 = NSStringFromCGRect(v48);
      *buf = 138544642;
      v35 = v28;
      v36 = 1026;
      v37 = v6;
      v38 = 1026;
      v39 = v33;
      v40 = 2114;
      v41 = v30;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v32;
    }
  }
}

- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 sbf_activeTouches];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:v4 touch:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)a3 touch:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NSHashTable *)self->_registeredHomeAffordanceInteractions copy];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 view];
        _UISystemGestureLocationForTouchInView();
        v15 = v14;
        v17 = v16;
        [v12 homeAffordanceHitTestRect];
        v26.x = v15;
        v26.y = v17;
        if (CGRectContainsPoint(v27, v26))
        {
          v9 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)_updateBounceTapGestureRecognizers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  v4 = [v3 isHomeAffordanceDoubleTapGestureEnabled];

  v5 = SBLogHomeAffordance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizers with isHomeAffordanceDoubleTapGestureEnabled: %{BOOL}u", &v24, 8u);
  }

  [(UITapGestureRecognizer *)self->_bounceTapRecognizer _wantsGESEvents:v4];
  bounceDoubleTapRecognizer = self->_bounceDoubleTapRecognizer;
  if (v4)
  {
    if (!bounceDoubleTapRecognizer)
    {
      v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__bounceDoubleTapRecognized_];
      v8 = self->_bounceDoubleTapRecognizer;
      self->_bounceDoubleTapRecognizer = v7;

      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setName:@"homeGrabber.bounce.doubleTap"];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setCancelsTouchesInView:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setDelaysTouchesEnded:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setAllowedTouchTypes:&unk_28336E598];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer _wantsGESEvents:1];
      if (self->_gesturesEnabled)
      {
        v9 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [v9 addGestureRecognizer:self->_bounceDoubleTapRecognizer withType:100];

        v10 = SBLogHomeAffordance();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
          v24 = 138543362;
          v25 = v11;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v24, 0xCu);
        }
      }
    }

    if (!self->_bounceDoubleTapFailureRecognizer)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__bounceDoubleTapFailureRecognized_];
      bounceDoubleTapFailureRecognizer = self->_bounceDoubleTapFailureRecognizer;
      self->_bounceDoubleTapFailureRecognizer = v12;

      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setName:@"homeGrabber.bounce.doubleTapFailure"];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setCancelsTouchesInView:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setDelaysTouchesEnded:0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setAllowedTouchTypes:&unk_28336E5B0];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer _wantsGESEvents:1];
      if (self->_gesturesEnabled)
      {
        v14 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [v14 addGestureRecognizer:self->_bounceDoubleTapFailureRecognizer withType:101];

        v15 = SBLogHomeAffordance();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
          v24 = 138543362;
          v25 = v16;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v24, 0xCu);
        }
      }

      [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer requireGestureRecognizerToFail:self->_bounceDoubleTapRecognizer];
    }
  }

  else
  {
    if (bounceDoubleTapRecognizer)
    {
      if (self->_gesturesEnabled)
      {
        v17 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [v17 removeGestureRecognizer:self->_bounceDoubleTapRecognizer];

        v18 = SBLogHomeAffordance();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
          v24 = 138543362;
          v25 = v19;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v24, 0xCu);
        }

        bounceDoubleTapRecognizer = self->_bounceDoubleTapRecognizer;
      }

      self->_bounceDoubleTapRecognizer = 0;
    }

    v20 = self->_bounceDoubleTapFailureRecognizer;
    if (v20)
    {
      if (self->_gesturesEnabled)
      {
        v21 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [v21 removeGestureRecognizer:self->_bounceDoubleTapFailureRecognizer];

        v22 = SBLogHomeAffordance();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
          v24 = 138543362;
          v25 = v23;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v24, 0xCu);
        }

        v20 = self->_bounceDoubleTapFailureRecognizer;
      }

      self->_bounceDoubleTapFailureRecognizer = 0;
    }
  }
}

- (void)_gestureRecognizer:(id)a3 didRecognizeSingleTapWithHomeAffordanceInteraction:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  v9 = [v8 isHomeAffordanceDoubleTapGestureEnabled];

  if (v9)
  {
    v10 = self->_currentHomeAffordanceInteraction;
    objc_storeStrong(&self->_currentHomeAffordanceInteraction, a4);
    [(SBHomeAffordanceInteraction *)v10 setNeedsUpdate];
    [(SBHomeAffordanceInteraction *)self->_currentHomeAffordanceInteraction notifyDidRecognizeSingleTap];
    [(SBHomeAffordanceInteraction *)self->_currentHomeAffordanceInteraction setNeedsUpdate];
    v11 = [v6 sbf_activeTouches];
    v12 = [v11 anyObject];
    v13 = [v7 view];
    _UISystemGestureLocationForTouchInView();
    v15 = v14;
    v17 = v16;

    v18 = SBLogHomeAffordance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v25.x = v15;
      v25.y = v17;
      v19 = NSStringFromCGPoint(v25);
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Recognized single tap at %{public}@", &v22, 0xCu);
    }

    self->_isTrackingPossibleDoubleTap = 1;
    if (!self->_quickTypePrewarmAssertion)
    {
      v20 = [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource prewarm];
      quickTypePrewarmAssertion = self->_quickTypePrewarmAssertion;
      self->_quickTypePrewarmAssertion = v20;
    }
  }

  else
  {
    [v7 notifyDidRecognizeSingleTap];
    [v7 setNeedsUpdate];
  }
}

- (void)_gestureRecognizer:(id)a3 didRecognizeDoubleTapWithHomeAffordanceInteraction:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  v9 = [v8 isHomeAffordanceDoubleTapGestureEnabled];

  if (v9)
  {
    v10 = self->_currentHomeAffordanceInteraction;
    currentHomeAffordanceInteraction = self->_currentHomeAffordanceInteraction;
    self->_currentHomeAffordanceInteraction = 0;

    [(SBHomeAffordanceInteraction *)v10 notifyDidRecognizeDoubleTap];
    [(SBHomeAffordanceInteraction *)v10 setNeedsUpdate];
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v13 = [WeakRetained sceneManager];
      v14 = [v13 policyAggregator];

      if ([v14 allowsCapability:5])
      {
        [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource activate];
      }
    }

    if (self->_isTrackingPossibleDoubleTap)
    {
      v15 = [v6 sbf_activeTouches];
      v16 = [v15 anyObject];
      v17 = [v7 view];
      _UISystemGestureLocationForTouchInView();
      v19 = v18;
      v21 = v20;

      v22 = SBLogHomeAffordance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v28.x = v19;
        v28.y = v21;
        v23 = NSStringFromCGPoint(v28);
        v25 = 138543362;
        v26 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Recognized double tap at %{public}@", &v25, 0xCu);
      }

      self->_isTrackingPossibleDoubleTap = 0;
    }

    quickTypePrewarmAssertion = self->_quickTypePrewarmAssertion;
    if (quickTypePrewarmAssertion)
    {
      self->_quickTypePrewarmAssertion = 0;
    }
  }
}

- (void)_gestureRecognizer:(id)a3 didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:(id)a4
{
  v5 = [(SBHomeAffordanceInteractionManager *)self _assistantController:a3];
  v6 = [v5 isHomeAffordanceDoubleTapGestureEnabled];

  if (v6)
  {
    v7 = self->_currentHomeAffordanceInteraction;
    currentHomeAffordanceInteraction = self->_currentHomeAffordanceInteraction;
    self->_currentHomeAffordanceInteraction = 0;

    [(SBHomeAffordanceInteraction *)v7 notifyDidFailToRecognizeDoubleTap];
    [(SBHomeAffordanceInteraction *)v7 setNeedsUpdate];
    if (self->_isTrackingPossibleDoubleTap)
    {
      v9 = SBLogHomeAffordance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Failed to recognize double tap", v12, 2u);
      }

      self->_isTrackingPossibleDoubleTap = 0;
    }

    quickTypePrewarmAssertion = self->_quickTypePrewarmAssertion;
    if (quickTypePrewarmAssertion)
    {
      [(SiriAssertion *)quickTypePrewarmAssertion invalidate];
      v11 = self->_quickTypePrewarmAssertion;
      self->_quickTypePrewarmAssertion = 0;
    }
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)gestureRecognizer:shouldReceiveTouch:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager gestureRecognizer:shouldReceiveTouch:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_bounceTapRecognized:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager _bounceTapRecognized:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_bounceDoubleTapRecognized:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager _bounceDoubleTapRecognized:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_bounceDoubleTapFailureRecognized:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager _bounceDoubleTapFailureRecognized:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_revealTapRecognized:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager _revealTapRecognized:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_revealEdgePanRecognized:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeAffordanceInteractionManager _revealEdgePanRecognized:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end