@interface SBTapToWakeController
+ (BOOL)isTapToWakeSupported;
- (SBInactiveTouchShieldWindow)_inactiveTouchShieldWindow;
- (SBTapToWakeController)init;
- (SBTapToWakeDelegate)delegate;
- (void)_evaluateEnablement;
- (void)_setGesturesEnabled:(BOOL)enabled;
- (void)_setHitTestSuppressionEnabled:(BOOL)enabled;
- (void)pencilToWakeDidRecognize:(id)recognize;
- (void)setDigitizerInTapToWakeMode:(BOOL)mode;
- (void)setDigitizerModeRequiresHitTestSuppression:(BOOL)suppression;
- (void)tapToWakeDidRecognize:(id)recognize;
@end

@implementation SBTapToWakeController

- (void)_evaluateEnablement
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBTapToWakeController.m" lineNumber:119 description:@"don't instantiate this class if it's not supported"];
}

+ (BOOL)isTapToWakeSupported
{
  if (isTapToWakeSupported_onceToken != -1)
  {
    +[SBTapToWakeController isTapToWakeSupported];
  }

  return isTapToWakeSupported_supportsTTW;
}

- (SBTapToWakeController)init
{
  v17.receiver = self;
  v17.super_class = SBTapToWakeController;
  v2 = [(SBTapToWakeController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D65F60]);
    tapToWakeGestureRecognizer = v2->_tapToWakeGestureRecognizer;
    v2->_tapToWakeGestureRecognizer = v3;

    [(SBFTapToWakeGestureRecognizer *)v2->_tapToWakeGestureRecognizer setName:@"tapToWake"];
    [(SBFTapToWakeGestureRecognizer *)v2->_tapToWakeGestureRecognizer setAllowedTouchTypes:&unk_28336DE30];
    [(SBFTapToWakeGestureRecognizer *)v2->_tapToWakeGestureRecognizer setDelegate:v2];
    [(SBFTapToWakeGestureRecognizer *)v2->_tapToWakeGestureRecognizer addTarget:v2 action:sel_tapToWakeDidRecognize_];
    v5 = objc_alloc_init(MEMORY[0x277D65F60]);
    pencilToWakeGestureRecognizer = v2->_pencilToWakeGestureRecognizer;
    v2->_pencilToWakeGestureRecognizer = v5;

    [(SBFTapToWakeGestureRecognizer *)v2->_pencilToWakeGestureRecognizer setName:@"pencilToWake"];
    [(SBFTapToWakeGestureRecognizer *)v2->_pencilToWakeGestureRecognizer setAllowedTouchTypes:&unk_28336DE48];
    [(SBFTapToWakeGestureRecognizer *)v2->_pencilToWakeGestureRecognizer setDelegate:v2];
    [(SBFTapToWakeGestureRecognizer *)v2->_pencilToWakeGestureRecognizer addTarget:v2 action:sel_pencilToWakeDidRecognize_];
    v2->_digitizerInTapToWakeMode = 0;
    *&v2->_gesturesEnabled = 0;
    v7 = +[SBDefaults localDefaults];
    idleTimerDefaults = [v7 idleTimerDefaults];
    idleTimerDefaults = v2->_idleTimerDefaults;
    v2->_idleTimerDefaults = idleTimerDefaults;

    v10 = v2->_idleTimerDefaults;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supportTapToWake"];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __29__SBTapToWakeController_init__block_invoke;
    v15[3] = &unk_2783A8C18;
    v12 = v2;
    v16 = v12;
    v13 = [(SBIdleTimerDefaults *)v10 observeDefault:v11 onQueue:MEMORY[0x277D85CD0] withBlock:v15];

    [(SBTapToWakeController *)v12 _evaluateEnablement];
  }

  return v2;
}

void __45__SBTapToWakeController_isTapToWakeSupported__block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  isTapToWakeSupported_supportsTTW = MGGetBoolAnswer();
  v0 = SBLogBacklight();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1[0] = 67109120;
    v1[1] = isTapToWakeSupported_supportsTTW;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_INFO, "TTW supported:%{BOOL}u", v1, 8u);
  }
}

- (void)setDigitizerInTapToWakeMode:(BOOL)mode
{
  if (self->_digitizerInTapToWakeMode != mode)
  {
    self->_digitizerInTapToWakeMode = mode;
    [(SBTapToWakeController *)self _evaluateEnablement];
  }
}

- (void)setDigitizerModeRequiresHitTestSuppression:(BOOL)suppression
{
  if (self->_digitizerModeRequiresHitTestSuppression != suppression)
  {
    self->_digitizerModeRequiresHitTestSuppression = suppression;
    [(SBTapToWakeController *)self _evaluateEnablement];
  }
}

- (void)_setGesturesEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_gesturesEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_gesturesEnabled = enabled;
    v5 = +[SBSystemGestureManager mainDisplayManager];
    v6 = v5;
    tapToWakeGestureRecognizer = self->_tapToWakeGestureRecognizer;
    if (enabledCopy)
    {
      [v5 addGestureRecognizer:tapToWakeGestureRecognizer withType:69];

      v8 = +[SBSystemGestureManager mainDisplayManager];
      [v8 addGestureRecognizer:self->_pencilToWakeGestureRecognizer withType:70];
    }

    else
    {
      [v5 removeGestureRecognizer:tapToWakeGestureRecognizer];

      v8 = +[SBSystemGestureManager mainDisplayManager];
      [v8 removeGestureRecognizer:self->_pencilToWakeGestureRecognizer];
    }

    v9 = SBLogBacklight();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_gesturesEnabled)
      {
        v10 = "enabled";
      }

      else
      {
        v10 = "disabled";
      }

      v11 = 136446210;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "TTW: gestures now %{public}s", &v11, 0xCu);
    }
  }
}

- (void)tapToWakeDidRecognize:(id)recognize
{
  recognizeCopy = recognize;
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "tapToWakeDidRecognize:", buf, 2u);
  }

  v6 = SBLogBacklight();
  v7 = os_signpost_id_make_with_pointer(v6, recognizeCopy);

  v8 = SBLogBacklight();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "tapToWakeDidRecognize", &unk_21F8B82DE, v14, 2u);
  }

  delegate = [(SBTapToWakeController *)self delegate];
  [delegate tapToWakeControllerDidRecognizeWakeGesture:self];

  v11 = SBLogBacklight();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_INTERVAL_END, v7, "tapToWakeDidRecognize", &unk_21F8B82DE, v13, 2u);
  }
}

- (void)pencilToWakeDidRecognize:(id)recognize
{
  recognizeCopy = recognize;
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "pencilToWakeDidRecognize:", buf, 2u);
  }

  v6 = SBLogBacklight();
  v7 = os_signpost_id_make_with_pointer(v6, recognizeCopy);

  v8 = SBLogBacklight();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "pencilToWakeDidRecognize", &unk_21F8B82DE, v14, 2u);
  }

  delegate = [(SBTapToWakeController *)self delegate];
  [delegate tapToWakeControllerDidRecognizePencilWakeGesture:self];

  v11 = SBLogBacklight();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_INTERVAL_END, v7, "pencilToWakeDidRecognize", &unk_21F8B82DE, v13, 2u);
  }
}

- (SBInactiveTouchShieldWindow)_inactiveTouchShieldWindow
{
  inactiveTouchShieldWindow = self->_inactiveTouchShieldWindow;
  if (!inactiveTouchShieldWindow)
  {
    anyObject = [(NSHashTable *)self->_recycledInactiveTouchShieldWindows anyObject];
    if (anyObject)
    {
      v5 = anyObject;
      [(NSHashTable *)self->_recycledInactiveTouchShieldWindows removeObject:anyObject];
    }

    else
    {
      v6 = [SBInactiveTouchShieldWindow alloc];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      v5 = [(_UIRootWindow *)v6 initWithScreen:mainScreen];
    }

    [(_UIRootWindow *)v5 setHidden:1];
    [(SBInactiveTouchShieldWindow *)v5 setWindowLevel:3.40282347e38];
    v8 = self->_inactiveTouchShieldWindow;
    self->_inactiveTouchShieldWindow = v5;

    inactiveTouchShieldWindow = self->_inactiveTouchShieldWindow;
  }

  return inactiveTouchShieldWindow;
}

- (void)_setHitTestSuppressionEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_hitTestSuppressionEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = SBLogBacklight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = enabledCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "TTW: hit-testing suppression enabled:%{BOOL}u", v12, 8u);
    }

    self->_hitTestSuppressionEnabled = enabledCopy;
    if (enabledCopy)
    {
      _inactiveTouchShieldWindow = [(SBTapToWakeController *)self _inactiveTouchShieldWindow];
    }

    else
    {
      _inactiveTouchShieldWindow = self->_inactiveTouchShieldWindow;
    }

    v7 = _inactiveTouchShieldWindow;
    [(_UIRootWindow *)_inactiveTouchShieldWindow setHidden:!enabledCopy];
    if (v7 && !enabledCopy)
    {
      recycledInactiveTouchShieldWindows = self->_recycledInactiveTouchShieldWindows;
      if (!recycledInactiveTouchShieldWindows)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v10 = self->_recycledInactiveTouchShieldWindows;
        self->_recycledInactiveTouchShieldWindows = weakObjectsHashTable;

        recycledInactiveTouchShieldWindows = self->_recycledInactiveTouchShieldWindows;
      }

      [(NSHashTable *)recycledInactiveTouchShieldWindows addObject:v7];
      inactiveTouchShieldWindow = self->_inactiveTouchShieldWindow;
      self->_inactiveTouchShieldWindow = 0;
    }
  }
}

- (SBTapToWakeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end