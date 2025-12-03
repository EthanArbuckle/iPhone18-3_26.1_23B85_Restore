@interface SBDisplayBrightnessController
+ (BOOL)handlesKeyCommands;
- (BOOL)_isBrightnessPropertyRunning;
- (SBDisplayBrightnessController)initWithCoordinator:(id)coordinator;
- (float)_effectiveCurrentTargetBrightness;
- (void)_beginBrightnessTransaction;
- (void)_brightnessControlAvailabilityDidChange;
- (void)_completeBrightnessTransaction;
- (void)_setBrightnessLevel:(float)level animated:(BOOL)animated;
- (void)buttonSetArbiter:(id)arbiter performActionForButtonPage:(unsigned __int16)page usage:(unsigned __int16)usage;
- (void)buttonSetArbiterDidReset:(id)reset;
- (void)dealloc;
- (void)noteValueUpdatesDidEnd;
- (void)noteValueUpdatesWillBegin;
@end

@implementation SBDisplayBrightnessController

- (SBDisplayBrightnessController)initWithCoordinator:(id)coordinator
{
  v24[4] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    [(SBDisplayBrightnessController *)a2 initWithCoordinator:?];
  }

  v23.receiver = self;
  v23.super_class = SBDisplayBrightnessController;
  v6 = [(SBDisplayBrightnessController *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_coordinator, coordinatorCopy);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:786544];
    v24[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4278255649];
    v24[1] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:786543];
    v24[2] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4278255648];
    v24[3] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];

    v13 = [[SBHIDValueModifyingButtonSetArbiter alloc] initWithHIDKeyPressEventUsages:v12 initialRepeatDelay:0.333000004 subsequentRepeatDelay:0.0416666679];
    buttonArbiter = v7->_buttonArbiter;
    v7->_buttonArbiter = v13;

    [(SBHIDValueModifyingButtonSetArbiter *)v7->_buttonArbiter setDelegate:v7];
    v15 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v7->_brightnessSystemClient;
    v7->_brightnessSystemClient = v15;

    objc_initWeak(&location, v7);
    v17 = v7->_brightnessSystemClient;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__SBDisplayBrightnessController_initWithCoordinator___block_invoke;
    v20[3] = &unk_2783B4EE8;
    objc_copyWeak(&v21, &location);
    [(BrightnessSystemClient *)v17 registerNotificationBlock:v20 forProperties:&unk_28336E1A8];
    v18 = [(BrightnessSystemClient *)v7->_brightnessSystemClient copyPropertyForKey:@"CBBrightnessControlAvailable"];
    v7->_brightnessControlAvailable = [v18 BOOLValue];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__SBDisplayBrightnessController_initWithCoordinator___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBDisplayBrightnessController_initWithCoordinator___block_invoke_2;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __53__SBDisplayBrightnessController_initWithCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _brightnessControlAvailabilityDidChange];
}

- (void)dealloc
{
  [(SBUIViewFloatSpringProperty *)self->_brightnessProperty invalidate];
  [(SBDisplayBrightnessController *)self _completeBrightnessTransaction];
  v3.receiver = self;
  v3.super_class = SBDisplayBrightnessController;
  [(SBDisplayBrightnessController *)&v3 dealloc];
}

+ (BOOL)handlesKeyCommands
{
  if (handlesKeyCommands_onceToken_0 != -1)
  {
    +[SBDisplayBrightnessController handlesKeyCommands];
  }

  v3 = handlesKeyCommands_settings_0;

  return [v3 displayBrightnessKeyCommandsEnabled];
}

void __51__SBDisplayBrightnessController_handlesKeyCommands__block_invoke()
{
  v0 = +[SBElasticHUDDomain rootSettings];
  v1 = handlesKeyCommands_settings_0;
  handlesKeyCommands_settings_0 = v0;
}

- (void)noteValueUpdatesWillBegin
{
  if ([(SBDisplayBrightnessController *)self _isBrightnessPropertyRunning])
  {
    [(SBUIViewFloatSpringProperty *)self->_brightnessProperty invalidate];
  }

  [(SBDisplayBrightnessController *)self _beginBrightnessTransaction];
}

- (void)noteValueUpdatesDidEnd
{
  if ([(SBDisplayBrightnessController *)self _isBrightnessPropertyRunning])
  {
    [(SBUIViewFloatSpringProperty *)self->_brightnessProperty invalidate];
  }

  [(SBDisplayBrightnessController *)self _completeBrightnessTransaction];
}

- (void)buttonSetArbiter:(id)arbiter performActionForButtonPage:(unsigned __int16)page usage:(unsigned __int16)usage
{
  usageCopy = usage;
  pageCopy = page;
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v9 = WeakRetained;
  if (!self->_brightnessControlAvailable)
  {
    v12 = SBLogBacklight();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring brightness key press; brightness control is unavailable", &v16, 0xCu);
    }

    goto LABEL_14;
  }

  v10 = usageCopy | (pageCopy << 16);
  if (v10 <= 786542)
  {
    if (v10 != -16711648)
    {
      v11 = -16711647;
      goto LABEL_10;
    }

LABEL_12:
    selfCopy3 = self;
    v14 = 1;
    v15 = 0;
    goto LABEL_13;
  }

  if (v10 == 786543)
  {
    goto LABEL_12;
  }

  v11 = 786544;
LABEL_10:
  if (v10 == v11)
  {
    selfCopy3 = self;
    v14 = 0;
    v15 = 1;
LABEL_13:
    [WeakRetained brightnessController:selfCopy3 performCoordinatedBrightnessChangeForIncrementKeyDown:v14 decrementKeyDown:v15];
  }

LABEL_14:
}

- (void)buttonSetArbiterDidReset:(id)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained brightnessController:self performCoordinatedBrightnessChangeForIncrementKeyDown:0 decrementKeyDown:0];
}

- (void)_brightnessControlAvailabilityDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"CBBrightnessControlAvailable"];
  bOOLValue = [v3 BOOLValue];

  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 1024;
    v9 = bOOLValue;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ brightness control availability did change; available: %{BOOL}u", &v6, 0x12u);
  }

  self->_brightnessControlAvailable = bOOLValue;
  if ((bOOLValue & 1) == 0)
  {
    [(SBDisplayBrightnessController *)self cancelBrightnessKeyPressEvent];
  }
}

- (void)_beginBrightnessTransaction
{
  v6 = *MEMORY[0x277D85DE8];
  if (!self->_brightnessTransaction)
  {
    v3 = SBLogBacklight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%@ beginning brightness transaction", &v4, 0xCu);
    }

    self->_brightnessTransaction = BKSDisplayBrightnessTransactionCreate();
  }
}

- (void)_completeBrightnessTransaction
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_brightnessTransaction)
  {
    v3 = SBLogBacklight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%@ completing brightness transaction", &v4, 0xCu);
    }

    CFRelease(self->_brightnessTransaction);
    self->_brightnessTransaction = 0;
  }
}

- (float)_effectiveCurrentTargetBrightness
{
  if ([(SBDisplayBrightnessController *)self _isBrightnessPropertyRunning])
  {
    [(SBUIViewFloatSpringProperty *)self->_brightnessProperty input];
    return v3;
  }

  else
  {

    BKSDisplayBrightnessGetCurrent();
  }

  return result;
}

- (BOOL)_isBrightnessPropertyRunning
{
  brightnessProperty = self->_brightnessProperty;
  if (brightnessProperty)
  {
    LOBYTE(brightnessProperty) = [(SBUIViewFloatSpringProperty *)brightnessProperty isInvalidated]^ 1;
  }

  return brightnessProperty;
}

- (void)_setBrightnessLevel:(float)level animated:(BOOL)animated
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (animated)
  {
    if ([(SBDisplayBrightnessController *)self _isBrightnessPropertyRunning])
    {
      v6 = self->_brightnessProperty;
      v7 = MEMORY[0x277D75D18];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __62__SBDisplayBrightnessController__setBrightnessLevel_animated___block_invoke;
      v36[3] = &unk_2783AC098;
      v37 = v6;
      levelCopy = level;
      v8 = *MEMORY[0x277CD9DD0];
      v9 = *(MEMORY[0x277CD9DD0] + 4);
      v10 = *(MEMORY[0x277CD9DD0] + 8);
      v11 = v6;
      LODWORD(v12) = v8;
      LODWORD(v13) = v9;
      LODWORD(v14) = v10;
      [v7 sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v36 animations:{v12, v13, v14}];
    }

    else
    {
      BKSDisplayBrightnessGetCurrent();
      v16 = v15;
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        v17 = objc_alloc_init(MEMORY[0x277D679D0]);
        v18 = MEMORY[0x277D75D18];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __62__SBDisplayBrightnessController__setBrightnessLevel_animated___block_invoke_2;
        v33[3] = &unk_2783A8BC8;
        v19 = v17;
        v34 = v19;
        v35 = v16;
        [v18 performWithoutAnimation:v33];
        [(SBDisplayBrightnessController *)self _beginBrightnessTransaction];
        objc_initWeak(&location, self);
        v20 = MEMORY[0x277D75D18];
        v39[0] = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __62__SBDisplayBrightnessController__setBrightnessLevel_animated___block_invoke_3;
        v30[3] = &unk_2783A8C68;
        objc_copyWeak(&v31, &location);
        [v20 _createTransformerWithInputAnimatableProperties:v21 presentationValueChangedCallback:v30];

        objc_storeStrong(&self->_brightnessProperty, v17);
        v22 = MEMORY[0x277D75D18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __62__SBDisplayBrightnessController__setBrightnessLevel_animated___block_invoke_4;
        v27[3] = &unk_2783AC098;
        v23 = v19;
        v28 = v23;
        levelCopy2 = level;
        LODWORD(v24) = *MEMORY[0x277CD9DD0];
        LODWORD(v25) = *(MEMORY[0x277CD9DD0] + 4);
        LODWORD(v26) = *(MEMORY[0x277CD9DD0] + 8);
        [v22 sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v27 animations:{v24, v25, v26}];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {

    BKSDisplayBrightnessSet();
  }
}

void __62__SBDisplayBrightnessController__setBrightnessLevel_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained[4];
    v3 = v2;
    if (v2 && ![v2 isInvalidated])
    {
      [v3 input];
      [v3 output];
      BKSDisplayBrightnessSet();
      if (BSFloatEqualToFloat())
      {
        [v3 invalidate];
        v5 = v6[4];
        v6[4] = 0;

        [v6 _completeBrightnessTransaction];
      }
    }

    else
    {
      v4 = v6[4];
      v6[4] = 0;
    }

    WeakRetained = v6;
  }
}

- (void)initWithCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayBrightnessController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];
}

@end