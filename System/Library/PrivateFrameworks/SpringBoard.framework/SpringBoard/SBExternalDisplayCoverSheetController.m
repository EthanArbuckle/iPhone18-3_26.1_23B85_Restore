@interface SBExternalDisplayCoverSheetController
- (SBExternalDisplayCoverSheetController)initWithWindowScene:(id)a3;
- (SBWindowScene)_sbWindowScene;
- (id)_initWithWindowScene:(id)a3 lockStateProvider:(id)a4 backlightController:(id)a5 presentationManager:(id)a6 windowFactory:(id)a7 externalDisplayCoverSheetViewController:(id)a8;
- (id)newCoverSheetWindowForScene:(id)a3;
- (void)_embeddedLockStateDidChange:(id)a3;
- (void)_handleScrunchGesture:(id)a3;
- (void)_notifyObserversDidUpdateExternalDisplayCoverSheetAppearance:(BOOL)a3;
- (void)_notifyObserversWillUpdateExternalDisplayCoverSheetAppearance:(BOOL)a3;
- (void)_postNotificationForExternalCoverSheetVisibilityDidChange:(BOOL)a3;
- (void)_setCoverSheetWindowVisible:(BOOL)a3 fadeDuration:(double)a4;
- (void)_setCoversheetPresented:(BOOL)a3;
- (void)_setScreenOn:(BOOL)a3;
- (void)_updateExternalDisplayCoverSheetExistence;
- (void)_updateLockStateObservers;
- (void)_wakeScreenForMouseButtonDown:(id)a3;
- (void)addLockStateObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5;
- (void)coverSheetPresentationManagerDidChangeDismissedSinceKeyBagLock:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeLockStateObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
@end

@implementation SBExternalDisplayCoverSheetController

- (SBExternalDisplayCoverSheetController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v5 = +[SBLockStateAggregator sharedInstance];
  v6 = +[SBBacklightController sharedInstanceIfExists];
  v7 = [v4 coverSheetPresentationManager];
  v8 = [[SBExternalDisplayCoverSheetViewController alloc] _initWithWindowScene:v4 wallpaperEffectViewFactory:0];
  v9 = [(SBExternalDisplayCoverSheetController *)self _initWithWindowScene:v4 lockStateProvider:v5 backlightController:v6 presentationManager:v7 windowFactory:0 externalDisplayCoverSheetViewController:v8];

  return v9;
}

- (id)_initWithWindowScene:(id)a3 lockStateProvider:(id)a4 backlightController:(id)a5 presentationManager:(id)a6 windowFactory:(id)a7 externalDisplayCoverSheetViewController:(id)a8
{
  v14 = a3;
  v43 = a4;
  v42 = a5;
  v41 = a6;
  v15 = a7;
  v16 = a8;
  v44.receiver = self;
  v44.super_class = SBExternalDisplayCoverSheetController;
  v17 = [(SBExternalDisplayCoverSheetController *)&v44 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_sbWindowScene, v14);
    objc_storeStrong(&v18->_lockStateProvider, a4);
    objc_storeStrong(&v18->_backlightController, a5);
    objc_storeStrong(&v18->_presentationManager, a6);
    objc_storeStrong(&v18->_windowFactory, a7);
    v19 = [v14 _sbDisplayConfiguration];
    v20 = [v19 hardwareIdentifier];
    externalDisplayUUID = v18->_externalDisplayUUID;
    v18->_externalDisplayUUID = v20;

    if (!v18->_externalDisplayUUID)
    {
      [SBExternalDisplayCoverSheetController _initWithWindowScene:lockStateProvider:backlightController:presentationManager:windowFactory:externalDisplayCoverSheetViewController:];
    }

    [(SBBacklightController *)v18->_backlightController addObserver:v18];
    [(SBExternalDisplayCoverSheetController *)v18 _setScreenOn:[(SBBacklightController *)v18->_backlightController screenIsOn]];
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v18 selector:sel__embeddedLockStateDidChange_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    v23 = objc_alloc(MEMORY[0x277D66A50]);
    v24 = [v23 initWithIdentifier:*MEMORY[0x277D0ABA0]];
    displayLayoutElement = v18->_displayLayoutElement;
    v18->_displayLayoutElement = v24;

    v26 = *MEMORY[0x277D76EE8];
    [(SBSDisplayLayoutElement *)v18->_displayLayoutElement setLevel:*MEMORY[0x277D76EE8]];
    [(SBSDisplayLayoutElement *)v18->_displayLayoutElement setFillsDisplayBounds:1];
    [(SBSDisplayLayoutElement *)v18->_displayLayoutElement setLayoutRole:3];
    if (v18->_windowFactory)
    {
      windowFactory = v18->_windowFactory;
    }

    else
    {
      windowFactory = v18;
    }

    v28 = [windowFactory newCoverSheetWindowForScene:v14];
    coversheetWindow = v18->_coversheetWindow;
    v18->_coversheetWindow = v28;

    [(UIWindow *)v18->_coversheetWindow setWindowLevel:v26 + -15.0];
    v30 = v18->_coversheetWindow;
    v31 = [MEMORY[0x277D75348] clearColor];
    [(UIWindow *)v30 setBackgroundColor:v31];

    [(UIWindow *)v18->_coversheetWindow setAlpha:0.0];
    [(UIWindow *)v18->_coversheetWindow setHidden:0];
    [(UIWindow *)v18->_coversheetWindow setUserInteractionEnabled:0];
    [(UIWindow *)v18->_coversheetWindow setRootViewController:v16];
    objc_storeStrong(&v18->_rootViewController, a8);
    v32 = [v14 statusBarManager];
    v33 = [v32 layoutManager];
    [v33 setOrientationWindow:v18->_coversheetWindow forStatusBarLayoutLayer:1];

    [(SBExternalDisplayCoverSheetController *)v18 _updateExternalDisplayCoverSheetExistence];
    v34 = [objc_alloc(MEMORY[0x277D65EF0]) initWithTarget:v18 action:sel__wakeScreenForMouseButtonDown_];
    mouseButtonDownGesture = v18->_mouseButtonDownGesture;
    v18->_mouseButtonDownGesture = v34;

    v36 = [v14 systemGestureManager];
    [v36 addGestureRecognizer:v18->_mouseButtonDownGesture withType:71];

    [(SBFMouseButtonDownGestureRecognizer *)v18->_mouseButtonDownGesture setEnabled:!v18->_screenOn];
    v37 = [[SBFluidScrunchGestureRecognizer alloc] initWithTarget:v18 action:sel__handleScrunchGesture_];
    scrunchDismissGestureRecognizer = v18->_scrunchDismissGestureRecognizer;
    v18->_scrunchDismissGestureRecognizer = v37;

    [(SBFluidScrunchGestureRecognizer *)v18->_scrunchDismissGestureRecognizer setAllowedTouchTypes:&unk_28336E8E0];
    [(SBFluidScrunchGestureRecognizer *)v18->_scrunchDismissGestureRecognizer setDelegate:v18];
    v39 = [v14 systemGestureManager];
    [v39 addGestureRecognizer:v18->_scrunchDismissGestureRecognizer withType:8];
  }

  return v18;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_isInvalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBExternalDisplayCoverSheetController.m";
    v16 = 1024;
    v17 = 276;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addLockStateObserver:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBExternalDisplayCoverSheetController addLockStateObserver:];
    v4 = 0;
  }

  lockStateObservers = self->_lockStateObservers;
  if (!lockStateObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_lockStateObservers;
    self->_lockStateObservers = v6;

    v4 = v8;
    lockStateObservers = self->_lockStateObservers;
  }

  [(NSHashTable *)lockStateObservers addObject:v4];
  [(SBExternalDisplayCoverSheetController *)self _updateLockStateObservers];
}

- (void)removeLockStateObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBExternalDisplayCoverSheetController removeLockStateObserver:];
    v4 = 0;
  }

  [(NSHashTable *)self->_lockStateObservers removeObject:v4];
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %p", &v8, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(SBBacklightController *)self->_backlightController removeObserver:self];
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v7 = [WeakRetained systemGestureManager];

  [v7 removeGestureRecognizer:self->_mouseButtonDownGesture];
  [v7 removeGestureRecognizer:self->_scrunchDismissGestureRecognizer];
  self->_isInvalidated = 1;
}

- (id)newCoverSheetWindowForScene:(id)a3
{
  v3 = a3;
  v4 = [[SBWindow alloc] initWithWindowScene:v3 role:@"SBTraitsParticipantRoleCoverSheet" debugName:@"External Display Cover Sheet Window"];

  return v4;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  displayLayoutElement = self->_displayLayoutElement;
  if (self->_displayLayoutElementAssertion)
  {
    v6 = displayLayoutElement;
    v7 = a3;
    v8 = [(SBExternalDisplayCoverSheetController *)self _sbWindowScene];
    if (!v8)
    {
      [SBExternalDisplayCoverSheetController updateDisplayLayoutElementWithBuilder:];
    }

    v16 = [v8 displayLayoutPublisher];
    if (!v16)
    {
      [SBExternalDisplayCoverSheetController updateDisplayLayoutElementWithBuilder:];
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v16 transitionAssertionWithReason:v10];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v7[2](v7, v6);
    v13 = [v16 addElement:v6];
    v14 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v13;

    [(SBSDisplayLayoutElement *)v11 invalidate];
  }

  else
  {
    v15 = *(a3 + 2);
    v11 = displayLayoutElement;
    v16 = a3;
    v15();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (a3)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    v5 = self->_displayLayoutElement;
    v6 = [(SBExternalDisplayCoverSheetController *)self _sbWindowScene];
    if (!v6)
    {
      [SBExternalDisplayCoverSheetController setDisplayLayoutElementActive:];
    }

    v10 = [v6 displayLayoutPublisher];
    if (!v10)
    {
      [SBExternalDisplayCoverSheetController setDisplayLayoutElementActive:];
    }

    v7 = [v10 addElement:v5];
    v8 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v7;

    v9 = v10;
  }

  else
  {
    if (!displayLayoutElementAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    v9 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if ([(SBExternalDisplayCoverSheetController *)self _shouldIgnoreEmbeddedBacklightChangingSource:a5])
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = a5;
      v9 = "[EXTERNAL] ignoring backlight change source: %ld";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (self->_isInvalidated)
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "[EXTERNAL] ignoring backlight change because I'm invalidated";
      v10 = v8;
      v11 = 2;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v12 = fabsf(a4);
  v13 = fabsf(a4 + -1.0);
  if (v12 < 2.2204e-16 || v13 < 2.2204e-16)
  {

    [(SBExternalDisplayCoverSheetController *)self _setScreenOn:v12 >= 2.2204e-16];
  }
}

- (void)_embeddedLockStateDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  isInvalidated = self->_isInvalidated;
  v5 = SBLogCoverSheet();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isInvalidated)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[EXTERNAL] ignoring embedded lock state change because I'm invalidated", &v9, 2u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = [(SBLockStateProvider *)self->_lockStateProvider hasAnyLockState];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[EXTERNAL] lock state change - has any state: %{public}@", &v9, 0xCu);
    }

    [(SBExternalDisplayCoverSheetController *)self _updateExternalDisplayCoverSheetExistence];
  }
}

- (void)coverSheetPresentationManagerDidChangeDismissedSinceKeyBagLock:(id)a3
{
  v4 = a3;
  if (self->_presentationManager == v4 && !self->_isInvalidated)
  {
    v5 = v4;
    [(SBExternalDisplayCoverSheetController *)self _updateExternalDisplayCoverSheetExistence];
    v4 = v5;
  }
}

- (void)_updateExternalDisplayCoverSheetExistence
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBExternalDisplayCoverSheetController.m" lineNumber:437 description:{@"failed to get a SBSystemShellExternalDisplaySceneManager. instead we got: %@", v0}];
}

- (void)_setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    self->_screenOn = a3;
    [(SBFMouseButtonDownGestureRecognizer *)self->_mouseButtonDownGesture setEnabled:!a3];
  }
}

- (void)_setCoversheetPresented:(BOOL)a3
{
  if (self->_coversheetPresented != a3)
  {
    self->_coversheetPresented = a3;
    [(SBExternalDisplayCoverSheetController *)self _updateLockStateObservers];
  }
}

- (void)_setCoverSheetWindowVisible:(BOOL)a3 fadeDuration:(double)a4
{
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  self->_shouldBeVisible = a3;
  if ([(SBExternalDisplayCoverSheetController *)self noAnimations])
  {
    a4 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v8 = SBLogCoverSheet();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v5;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[EXTERNAL] making coversheet window visible: %{BOOL}u duration: %f", &buf, 0x12u);
  }

  if (self->_shouldBeVisible)
  {
    [(UIWindow *)self->_coversheetWindow setHidden:0];
    [(SBExternalDisplayCoverSheetController *)self _setCoversheetPresented:1];
    [(SBExternalDisplayCoverSheetViewController *)self->_rootViewController prepareForPresentation];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__SBExternalDisplayCoverSheetController__setCoverSheetWindowVisible_fadeDuration___block_invoke;
  v16[3] = &unk_2783A8C18;
  v16[4] = self;
  v9 = MEMORY[0x223D6F7F0](v16);
  if (BSFloatIsZero())
  {
    v9[2](v9);
    if (!self->_shouldBeVisible)
    {
      [(UIWindow *)self->_coversheetWindow setHidden:1];
      [(SBExternalDisplayCoverSheetViewController *)self->_rootViewController cleanupAfterDismissal];
      [(SBExternalDisplayCoverSheetController *)self _setCoversheetPresented:0];
    }
  }

  else
  {
    objc_initWeak(&buf, self);
    v10 = MEMORY[0x277D75D18];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __82__SBExternalDisplayCoverSheetController__setCoverSheetWindowVisible_fadeDuration___block_invoke_2;
    v14 = &unk_2783AC358;
    objc_copyWeak(&v15, &buf);
    [v10 animateWithDuration:v9 animations:&v11 completion:a4];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&buf);
  }

  [WeakRetained _synchronizeDrawing];
}

uint64_t __82__SBExternalDisplayCoverSheetController__setCoverSheetWindowVisible_fadeDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 25))
  {
    v2 = 1.0;
  }

  return [*(v1 + 32) setAlpha:v2];
}

void __82__SBExternalDisplayCoverSheetController__setCoverSheetWindowVisible_fadeDuration___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 25);
    v4 = SBLogCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[EXTERNAL] coversheet window animation to visible %{BOOL}u completed", v5, 8u);
    }

    if ((v3 & 1) == 0)
    {
      [v2[4] setHidden:1];
      [v2[6] cleanupAfterDismissal];
      [v2 _setCoversheetPresented:0];
    }
  }
}

- (void)_wakeScreenForMouseButtonDown:(id)a3
{
  v3 = a3;
  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  [v4 _wakeScreenForMouseButtonDown:v3];
}

- (void)_handleScrunchGesture:(id)a3
{
  v14 = a3;
  v4 = [v14 state];
  v5 = v14;
  if (v4 == 3)
  {
    v6 = [(SBExternalDisplayCoverSheetController *)self viewForSystemGestureRecognizer:v14];
    [v14 locationInView:v6];
    v8 = v7;
    [v6 bounds];
    v10 = v9 - v8;
    v11 = [MEMORY[0x277D02C20] rootSettings];
    [v11 unlockPasscodeThresholdForExternalDisplay];
    v13 = v12;

    if (v10 >= v13)
    {
      [(SBCoverSheetPresentationManager *)self->_presentationManager _notifyDelegateRequestsUnlock];
    }

    v5 = v14;
  }
}

- (void)_notifyObserversWillUpdateExternalDisplayCoverSheetAppearance:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
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
          [v9 willUpdateExternalDisplayCoverSheetAppearance:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_notifyObserversDidUpdateExternalDisplayCoverSheetAppearance:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
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
          [v9 didUpdateExternalDisplayCoverSheetAppearance:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_postNotificationForExternalCoverSheetVisibilityDidChange:(BOOL)a3
{
  v3 = @"SBExternalDisplayCoverSheetDidDismiss";
  if (a3)
  {
    v3 = @"SBExternalDisplayCoverSheetDidPresent";
  }

  v4 = MEMORY[0x277CCAB98];
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:v5 object:0];
}

- (void)_updateLockStateObservers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SBExternalDisplayCoverSheetController *)self isUILocked];
  v4 = [(NSHashTable *)self->_lockStateObservers copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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

        [*(*(&v10 + 1) + 8 * v9++) lockStateProvider:self didUpdateIsUILocked:{v3, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (void)_initWithWindowScene:lockStateProvider:backlightController:presentationManager:windowFactory:externalDisplayCoverSheetViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addLockStateObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeLockStateObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBExternalDisplayCoverSheetController.m" lineNumber:336 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

- (void)setDisplayLayoutElementActive:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setDisplayLayoutElementActive:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBExternalDisplayCoverSheetController.m" lineNumber:356 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

@end