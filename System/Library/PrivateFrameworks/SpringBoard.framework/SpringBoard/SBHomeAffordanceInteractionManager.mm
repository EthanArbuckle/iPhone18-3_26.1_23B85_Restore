@interface SBHomeAffordanceInteractionManager
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)_homeAffordanceHitTestRectOfSize:(int64_t)size forHomeAffordanceInteraction:(id)interaction;
- (SBHomeAffordanceInteractionManager)initWithWindowScene:(id)scene;
- (SBWindowScene)windowScene;
- (id)_assistantController;
- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)recognizer;
- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)recognizer touch:(id)touch;
- (id)_systemGestureManager;
- (id)acquireDisableHomeAffordanceDoubleTapGestureAssertionWithReason:(id)reason;
- (id)newHomeAffordanceInteraction;
- (void)_bounceDoubleTapFailureRecognized:(id)recognized;
- (void)_bounceDoubleTapRecognized:(id)recognized;
- (void)_bounceTapRecognized:(id)recognized;
- (void)_gestureRecognizer:(id)recognizer didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:(id)interaction;
- (void)_gestureRecognizer:(id)recognizer didRecognizeDoubleTapWithHomeAffordanceInteraction:(id)interaction;
- (void)_gestureRecognizer:(id)recognizer didRecognizeSingleTapWithHomeAffordanceInteraction:(id)interaction;
- (void)_logShouldReceiveTouchIfNeeded:(BOOL)needed forGestureRecognizer:(id)recognizer touch:(id)touch;
- (void)_revealEdgePanRecognized:(id)recognized;
- (void)_revealTapRecognized:(id)recognized;
- (void)_updateBounceTapGestureRecognizers;
- (void)dealloc;
- (void)registerHomeAffordanceInteraction:(id)interaction;
- (void)unregisterHomeAffordanceInteraction:(id)interaction;
- (void)updateHomeAffordanceHitTestRectForHomeAffordanceInteraction:(id)interaction;
@end

@implementation SBHomeAffordanceInteractionManager

- (id)_systemGestureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  systemGestureManager = [WeakRetained systemGestureManager];

  return systemGestureManager;
}

- (id)newHomeAffordanceInteraction
{
  v3 = [SBHomeAffordanceInteraction alloc];

  return [(SBHomeAffordanceInteraction *)v3 initWithHomeAffordanceInteractionManager:self];
}

- (SBHomeAffordanceInteractionManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v24.receiver = self;
  v24.super_class = SBHomeAffordanceInteractionManager;
  v5 = [(SBHomeAffordanceInteractionManager *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
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
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    registeredHomeAffordanceInteractions = v6->_registeredHomeAffordanceInteractions;
    v6->_registeredHomeAffordanceInteractions = weakObjectsHashTable;

    v20 = objc_alloc_init(MEMORY[0x277D55218]);
    quickTypeGestureSource = v6->_quickTypeGestureSource;
    v6->_quickTypeGestureSource = v20;

    _assistantController = [(SBHomeAffordanceInteractionManager *)v6 _assistantController];
    [_assistantController addObserver:v6];

    [(SBHomeAffordanceInteractionManager *)v6 _updateBounceTapGestureRecognizers];
  }

  return v6;
}

- (void)dealloc
{
  _assistantController = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  [_assistantController removeObserver:self];

  [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource invalidate];
  v4.receiver = self;
  v4.super_class = SBHomeAffordanceInteractionManager;
  [(SBHomeAffordanceInteractionManager *)&v4 dealloc];
}

- (void)registerHomeAffordanceInteraction:(id)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSHashTable *)self->_registeredHomeAffordanceInteractions addObject:interaction];
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
    _systemGestureManager = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
    [_systemGestureManager addGestureRecognizer:self->_bounceTapRecognizer withType:99];
    [_systemGestureManager addGestureRecognizer:self->_revealTapRecognizer withType:102];
    [_systemGestureManager addGestureRecognizer:self->_revealDoubleTapRecognizer withType:103];
    [_systemGestureManager addGestureRecognizer:self->_revealEdgePanRecognizer withType:104];
    bounceDoubleTapRecognizer = self->_bounceDoubleTapRecognizer;
    if (bounceDoubleTapRecognizer)
    {
      [_systemGestureManager addGestureRecognizer:bounceDoubleTapRecognizer withType:100];
      v8 = SBLogHomeAffordance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        name = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
        v13 = 138543362;
        v14 = name;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v13, 0xCu);
      }
    }

    bounceDoubleTapFailureRecognizer = self->_bounceDoubleTapFailureRecognizer;
    if (bounceDoubleTapFailureRecognizer)
    {
      [_systemGestureManager addGestureRecognizer:bounceDoubleTapFailureRecognizer withType:101];
      v11 = SBLogHomeAffordance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
        v13 = 138543362;
        v14 = name2;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Added gesture recognizer: %{public}@", &v13, 0xCu);
      }
    }

    [_systemGestureManager gestureRecognizerOfType:122 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [_systemGestureManager gestureRecognizerOfType:123 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [_systemGestureManager gestureRecognizerOfType:107 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
    [_systemGestureManager gestureRecognizerOfType:108 shouldBeRequiredToFailByGestureRecognizer:self->_revealEdgePanRecognizer];
  }
}

- (void)unregisterHomeAffordanceInteraction:(id)interaction
{
  v13 = *MEMORY[0x277D85DE8];
  [(NSHashTable *)self->_registeredHomeAffordanceInteractions removeObject:interaction];
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
    _systemGestureManager = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
    [_systemGestureManager removeGestureRecognizer:self->_bounceTapRecognizer];
    [_systemGestureManager removeGestureRecognizer:self->_revealTapRecognizer];
    [_systemGestureManager removeGestureRecognizer:self->_revealDoubleTapRecognizer];
    [_systemGestureManager removeGestureRecognizer:self->_revealEdgePanRecognizer];
    if (self->_bounceDoubleTapRecognizer)
    {
      [_systemGestureManager removeGestureRecognizer:?];
      v7 = SBLogHomeAffordance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        name = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
        v11 = 138543362;
        v12 = name;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v11, 0xCu);
      }
    }

    if (self->_bounceDoubleTapFailureRecognizer)
    {
      [_systemGestureManager removeGestureRecognizer:?];
      v9 = SBLogHomeAffordance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
        v11 = 138543362;
        v12 = name2;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v11, 0xCu);
      }
    }
  }
}

- (id)acquireDisableHomeAffordanceDoubleTapGestureAssertionWithReason:(id)reason
{
  v4 = MEMORY[0x277CBEB98];
  reasonCopy = reason;
  v6 = [v4 setWithArray:&unk_28336E580];
  _systemGestureManager = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
  v8 = [_systemGestureManager acquireSystemGestureDisableAssertionForReason:reasonCopy forSystemGestureTypes:v6];

  return v8;
}

- (void)updateHomeAffordanceHitTestRectForHomeAffordanceInteraction:(id)interaction
{
  v4 = self->_currentHomeAffordanceInteraction == interaction;
  interactionCopy = interaction;
  [(SBHomeAffordanceInteractionManager *)self _homeAffordanceHitTestRectOfSize:v4 forHomeAffordanceInteraction:interactionCopy];
  [interactionCopy setHomeAffordanceHitTestRect:?];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager gestureRecognizer:shouldReceiveTouch:];
  }

  if (self->_bounceTapRecognizer == recognizerCopy)
  {
    v11 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizerCopy touch:touchCopy];
    v9 = v11;
    if (v11)
    {
      LOBYTE(allowsUserInteraction) = [v11 allowsUserInteraction];
    }

    else
    {
      LOBYTE(allowsUserInteraction) = 0;
    }

LABEL_19:

    goto LABEL_23;
  }

  if (self->_bounceDoubleTapRecognizer == recognizerCopy || self->_bounceDoubleTapFailureRecognizer == recognizerCopy)
  {
    if ([touchCopy _isPointerTouch])
    {
      allowsUserInteraction = 0;
    }

    else
    {
      v12 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizerCopy touch:touchCopy];
      v13 = v12;
      if (v12)
      {
        allowsUserInteraction = [v12 allowsUserInteraction];
      }

      else
      {
        allowsUserInteraction = 0;
      }
    }

    [(SBHomeAffordanceInteractionManager *)self _logShouldReceiveTouchIfNeeded:allowsUserInteraction forGestureRecognizer:recognizerCopy touch:touchCopy];
  }

  else
  {
    if ((self->_revealTapRecognizer == recognizerCopy || self->_revealDoubleTapRecognizer == recognizerCopy) && [objc_opt_class() _wantsModernRevealGestureRecognizerBehaviors])
    {
      v8 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizerCopy touch:touchCopy];
      v9 = v8;
      LOBYTE(allowsUserInteraction) = v8 != 0;
      if (v8)
      {
        [v8 notifyDidRecognizeTouchThatShouldUnhideViewImmediately:1];
      }

      goto LABEL_19;
    }

    LOBYTE(allowsUserInteraction) = 1;
  }

LABEL_23:

  return allowsUserInteraction;
}

- (id)_assistantController
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  assistantController = [WeakRetained assistantController];

  return assistantController;
}

- (void)_bounceTapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceTapRecognized:];
  }

  sbf_hasPointerTouch = [recognizedCopy sbf_hasPointerTouch];
  _systemGestureManager = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
  areSystemGesturesDisabledForAccessibility = [_systemGestureManager areSystemGesturesDisabledForAccessibility];

  v7 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizedCopy];
  if (!sbf_hasPointerTouch || (areSystemGesturesDisabledForAccessibility & 1) != 0)
  {
    [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:recognizedCopy didRecognizeSingleTapWithHomeAffordanceInteraction:v7];
  }

  else
  {
    [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:recognizedCopy didRecognizeSingleClickWithHomeAffordanceInteraction:v7];
  }
}

- (void)_bounceDoubleTapRecognized:(id)recognized
{
  v4 = MEMORY[0x277CCACC8];
  recognizedCopy = recognized;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceDoubleTapRecognized:];
  }

  v6 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizedCopy];
  [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:recognizedCopy didRecognizeDoubleTapWithHomeAffordanceInteraction:v6];
}

- (void)_bounceDoubleTapFailureRecognized:(id)recognized
{
  v4 = MEMORY[0x277CCACC8];
  recognizedCopy = recognized;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _bounceDoubleTapFailureRecognized:];
  }

  v6 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizedCopy];
  [(SBHomeAffordanceInteractionManager *)self _gestureRecognizer:recognizedCopy didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:v6];
}

- (void)_revealTapRecognized:(id)recognized
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
        view = [v9 view];
        [v9 notifyDidRecognizeTouchThatShouldUnhideViewImmediately:{objc_msgSend(view, "isHidden")}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_revealEdgePanRecognized:(id)recognized
{
  v15 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeAffordanceInteractionManager _revealEdgePanRecognized:];
  }

  if ([recognizedCopy state] == 1)
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

- (CGRect)_homeAffordanceHitTestRectOfSize:(int64_t)size forHomeAffordanceInteraction:(id)interaction
{
  interactionCopy = interaction;
  [interactionCopy homeAffordanceFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (size == 1)
  {
    [interactionCopy expandedHomeAffordanceHitTestRectOutsets];
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (!size)
    {
      [interactionCopy standardHomeAffordanceHitTestRectOutsets];
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

- (void)_logShouldReceiveTouchIfNeeded:(BOOL)needed forGestureRecognizer:(id)recognizer touch:(id)touch
{
  neededCopy = needed;
  v46 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  touchCopy = touch;
  v10 = SBLogHomeAffordance();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizerCopy touch:touchCopy];
    v13 = v12;
    if (v12)
    {
      view = [v12 view];
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
      view = 0;
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
      name = [recognizerCopy name];
      _isPointerTouch = [touchCopy _isPointerTouch];
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
      v35 = name;
      v36 = 1026;
      v37 = neededCopy;
      v38 = 1026;
      v39 = _isPointerTouch;
      v40 = 2114;
      v41 = v30;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v32;
    }
  }
}

- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)recognizer
{
  v18 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sbf_activeTouches = [recognizerCopy sbf_activeTouches];
  v6 = [sbf_activeTouches countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(sbf_activeTouches);
        }

        v10 = [(SBHomeAffordanceInteractionManager *)self _firstHomeAffordanceInteractionForGestureRecognizer:recognizerCopy touch:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [sbf_activeTouches countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_firstHomeAffordanceInteractionForGestureRecognizer:(id)recognizer touch:(id)touch
{
  v24 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  touchCopy = touch;
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
        view = [v12 view];
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
  _assistantController = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [_assistantController isHomeAffordanceDoubleTapGestureEnabled];

  v5 = SBLogHomeAffordance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = isHomeAffordanceDoubleTapGestureEnabled;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizers with isHomeAffordanceDoubleTapGestureEnabled: %{BOOL}u", &v24, 8u);
  }

  [(UITapGestureRecognizer *)self->_bounceTapRecognizer _wantsGESEvents:isHomeAffordanceDoubleTapGestureEnabled];
  bounceDoubleTapRecognizer = self->_bounceDoubleTapRecognizer;
  if (isHomeAffordanceDoubleTapGestureEnabled)
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
        _systemGestureManager = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [_systemGestureManager addGestureRecognizer:self->_bounceDoubleTapRecognizer withType:100];

        v10 = SBLogHomeAffordance();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          name = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
          v24 = 138543362;
          v25 = name;
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
        _systemGestureManager2 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [_systemGestureManager2 addGestureRecognizer:self->_bounceDoubleTapFailureRecognizer withType:101];

        v15 = SBLogHomeAffordance();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
          v24 = 138543362;
          v25 = name2;
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
        _systemGestureManager3 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [_systemGestureManager3 removeGestureRecognizer:self->_bounceDoubleTapRecognizer];

        v18 = SBLogHomeAffordance();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [(UITapGestureRecognizer *)self->_bounceDoubleTapRecognizer name];
          v24 = 138543362;
          v25 = name3;
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
        _systemGestureManager4 = [(SBHomeAffordanceInteractionManager *)self _systemGestureManager];
        [_systemGestureManager4 removeGestureRecognizer:self->_bounceDoubleTapFailureRecognizer];

        v22 = SBLogHomeAffordance();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          name4 = [(UITapGestureRecognizer *)self->_bounceDoubleTapFailureRecognizer name];
          v24 = 138543362;
          v25 = name4;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Removed gesture recognizer: %{public}@", &v24, 0xCu);
        }

        v20 = self->_bounceDoubleTapFailureRecognizer;
      }

      self->_bounceDoubleTapFailureRecognizer = 0;
    }
  }
}

- (void)_gestureRecognizer:(id)recognizer didRecognizeSingleTapWithHomeAffordanceInteraction:(id)interaction
{
  v24 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  interactionCopy = interaction;
  _assistantController = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [_assistantController isHomeAffordanceDoubleTapGestureEnabled];

  if (isHomeAffordanceDoubleTapGestureEnabled)
  {
    v10 = self->_currentHomeAffordanceInteraction;
    objc_storeStrong(&self->_currentHomeAffordanceInteraction, interaction);
    [(SBHomeAffordanceInteraction *)v10 setNeedsUpdate];
    [(SBHomeAffordanceInteraction *)self->_currentHomeAffordanceInteraction notifyDidRecognizeSingleTap];
    [(SBHomeAffordanceInteraction *)self->_currentHomeAffordanceInteraction setNeedsUpdate];
    sbf_activeTouches = [recognizerCopy sbf_activeTouches];
    anyObject = [sbf_activeTouches anyObject];
    view = [interactionCopy view];
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
      prewarm = [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource prewarm];
      quickTypePrewarmAssertion = self->_quickTypePrewarmAssertion;
      self->_quickTypePrewarmAssertion = prewarm;
    }
  }

  else
  {
    [interactionCopy notifyDidRecognizeSingleTap];
    [interactionCopy setNeedsUpdate];
  }
}

- (void)_gestureRecognizer:(id)recognizer didRecognizeDoubleTapWithHomeAffordanceInteraction:(id)interaction
{
  v27 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  interactionCopy = interaction;
  _assistantController = [(SBHomeAffordanceInteractionManager *)self _assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [_assistantController isHomeAffordanceDoubleTapGestureEnabled];

  if (isHomeAffordanceDoubleTapGestureEnabled)
  {
    v10 = self->_currentHomeAffordanceInteraction;
    currentHomeAffordanceInteraction = self->_currentHomeAffordanceInteraction;
    self->_currentHomeAffordanceInteraction = 0;

    [(SBHomeAffordanceInteraction *)v10 notifyDidRecognizeDoubleTap];
    [(SBHomeAffordanceInteraction *)v10 setNeedsUpdate];
    if (interactionCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      sceneManager = [WeakRetained sceneManager];
      policyAggregator = [sceneManager policyAggregator];

      if ([policyAggregator allowsCapability:5])
      {
        [(SiriQuickTypeGestureSource *)self->_quickTypeGestureSource activate];
      }
    }

    if (self->_isTrackingPossibleDoubleTap)
    {
      sbf_activeTouches = [recognizerCopy sbf_activeTouches];
      anyObject = [sbf_activeTouches anyObject];
      view = [interactionCopy view];
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

- (void)_gestureRecognizer:(id)recognizer didFailToRecognizeDoubleTapWithHomeAffordanceInteraction:(id)interaction
{
  v5 = [(SBHomeAffordanceInteractionManager *)self _assistantController:recognizer];
  isHomeAffordanceDoubleTapGestureEnabled = [v5 isHomeAffordanceDoubleTapGestureEnabled];

  if (isHomeAffordanceDoubleTapGestureEnabled)
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