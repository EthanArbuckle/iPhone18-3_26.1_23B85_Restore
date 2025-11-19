@interface SBMirroredDisplayController
- (NSString)description;
- (SBMirroredDisplayController)initWithExternalDisplayDefaults:(id)a3;
- (void)_ensureCADisplayModeForMirroring;
- (void)_updateDisplayAssertion;
- (void)_updateIdleSleepReason:(id)a3;
- (void)connectToDisplayIdentity:(id)a3 configuration:(id)a4 displayManager:(id)a5 sceneManager:(id)a6 caDisplayQueue:(id)a7 assertion:(id)a8 embeddedBacklightOn:(BOOL)a9;
- (void)dealloc;
- (void)displayAssertion:(id)a3 didLoseControlOfDisplayForDeactivationReasons:(unint64_t)a4;
- (void)displayAssertionDidGainControlOfDisplay:(id)a3;
- (void)displayIdentityDidUpdate:(id)a3 configuration:(id)a4;
- (void)embeddedBacklightStateDidChange:(BOOL)a3 source:(int64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SBMirroredDisplayController

- (SBMirroredDisplayController)initWithExternalDisplayDefaults:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBMirroredDisplayController;
  v6 = [(SBMirroredDisplayController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalDisplayDefaults, a3);
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v12, &location);
    v9 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureToken = v7->_stateCaptureToken;
    v7->_stateCaptureToken = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __63__SBMirroredDisplayController_initWithExternalDisplayDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = SBMirroredDisplayController;
  [(SBMirroredDisplayController *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(FBSDisplayIdentity *)self->_displayIdentity description];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __42__SBMirroredDisplayController_description__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:v4 multilinePrefix:0 block:&v8];

  v6 = [v5 build];

  return v6;
}

void __42__SBMirroredDisplayController_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 40) withName:{"hasControlOfDisplay"), @"hasControlOfDisplay"}];
  v3 = *(a1 + 40);
  if (*(v3 + 24))
  {
    v4 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__SBMirroredDisplayController_description__block_invoke_2;
    v13[3] = &unk_2783A92D8;
    v5 = v4;
    v6 = *(a1 + 40);
    v14 = v5;
    v15 = v6;
    [v5 appendBodySectionWithName:@"FBSDisplayConfiguration" multilinePrefix:@"\t" block:v13];

    v3 = *(a1 + 40);
  }

  if (*(v3 + 72))
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SBMirroredDisplayController_description__block_invoke_3;
    v10[3] = &unk_2783A92D8;
    v8 = v7;
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = v9;
    [v8 appendBodySectionWithName:@"CADisplay" multilinePrefix:@"\t" block:v10];
  }
}

void __42__SBMirroredDisplayController_description__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 24) bounds];
  v3 = [v2 appendRect:@"bounds" withName:?];
  v4 = *(a1 + 32);
  [*(*(a1 + 40) + 24) pointScale];
  v5 = [v4 appendFloat:@"scale" withName:2 decimalPrecision:?];
  v6 = *(a1 + 32);
  [*(*(a1 + 40) + 24) pixelSize];
  v7 = [v6 appendSize:@"pixelSize" withName:?];
  v8 = *(a1 + 32);
  [*(*(a1 + 40) + 24) overscanCompensation];
  v9 = FBSDisplayOverscanCompensationToCADisplayOverscanAdjustment();
  [v8 appendString:v9 withName:@"overscanCompensation"];

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 24) currentMode];
  v12 = [v10 appendObject:v11 withName:@"currentMode"];

  v13 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 24) identity];
  v14 = [v13 appendUInt64:objc_msgSend(v15 withName:{"connectionSeed"), @"connectionSeed"}];
}

id __42__SBMirroredDisplayController_description__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 72) bounds];
  v3 = [v2 appendRect:@"bounds" withName:?];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 72) overscanAdjustment];
  [v4 appendString:v5 withName:@"overscanAdjustment"];

  v6 = *(a1 + 32);
  [*(*(a1 + 40) + 72) logicalScale];
  v7 = [v6 appendSize:@"activeLogicalScale" withName:?];
  v8 = *(a1 + 32);
  [*(*(a1 + 40) + 72) minimumLogicalScale];
  v9 = [v8 appendDouble:@"minimumLogicalScale" withName:2 decimalPrecision:?];
  v10 = *(a1 + 32);
  [*(*(a1 + 40) + 72) maximumLogicalScale];
  v11 = [v10 appendDouble:@"maximumLogicalScale" withName:2 decimalPrecision:?];
  v12 = *(a1 + 32);
  v13 = [*(*(a1 + 40) + 72) transportType];
  [v12 appendString:v13 withName:@"transportType"];

  v14 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 72) currentMode];
  v16 = [v14 appendObject:v15 withName:@"currentMode"];

  return [*(a1 + 32) appendUInt64:objc_msgSend(*(*(a1 + 40) + 72) withName:{"seed"), @"seed"}];
}

- (void)connectToDisplayIdentity:(id)a3 configuration:(id)a4 displayManager:(id)a5 sceneManager:(id)a6 caDisplayQueue:(id)a7 assertion:(id)a8 embeddedBacklightOn:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  displayIdentity = self->_displayIdentity;
  self->_displayIdentity = v14;
  v19 = v14;
  v20 = a5;

  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v15;
  v22 = v15;

  v23 = [(FBSDisplayConfiguration *)self->_currentConfiguration CADisplay];
  caDisplay = self->_caDisplay;
  self->_caDisplay = v23;

  displayAssertion = self->_displayAssertion;
  self->_displayAssertion = v17;
  v26 = v17;

  v27 = [(FBSDisplayIdentity *)v19 rootIdentity];
  v28 = [v20 layoutPublisherForDisplay:v27];

  layoutPublisher = self->_layoutPublisher;
  self->_layoutPublisher = v28;

  self->_embeddedBacklightOn = a9;
  displayMutationQueue = self->_displayMutationQueue;
  self->_displayMutationQueue = v16;

  [(SBMirroredDisplayController *)self _updateIdleSleepReason:@"SBMirroredDisplayDisableIdleSleep"];
}

- (void)displayIdentityDidUpdate:(id)a3 configuration:(id)a4
{
  p_currentConfiguration = &self->_currentConfiguration;
  v12 = a4;
  if (([(FBSDisplayConfiguration *)*p_currentConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentConfiguration, a4);
    if ([(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay])
    {
      layoutPublisher = self->_layoutPublisher;
      v8 = objc_opt_class();
      v9 = layoutPublisher;
      if (v8)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      [(FBSDisplayLayoutPublishing *)v11 setDisplayConfiguration:*p_currentConfiguration];
    }
  }
}

- (void)embeddedBacklightStateDidChange:(BOOL)a3 source:(int64_t)a4
{
  if (self->_embeddedBacklightOn != a3)
  {
    self->_embeddedBacklightOn = a3;
    [(SBMirroredDisplayController *)self _updateDisplayAssertion];
  }
}

- (void)displayAssertionDidGainControlOfDisplay:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBMirroredDisplayController displayAssertionDidGainControlOfDisplay:];
  }

  [(CADisplay *)self->_caDisplay addObserver:self forKeyPath:@"preferences" options:0 context:self];
  v5 = objc_alloc_init(MEMORY[0x277CF0B80]);
  lostControlOfDisplaySignal = self->_lostControlOfDisplaySignal;
  self->_lostControlOfDisplaySignal = v5;

  v7 = v5;
  v8 = self->_displayIdentity;
  [(SBMirroredDisplayController *)self _updateIdleSleepReason:@"SBMirroredDisplayDisableIdleSleep"];
  v9 = dispatch_time(0, 30000000000);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__SBMirroredDisplayController_displayAssertionDidGainControlOfDisplay___block_invoke;
  v15 = &unk_2783AB280;
  v16 = v7;
  v17 = v8;
  v18 = self;
  v19 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_after(v9, MEMORY[0x277D85CD0], &v12);
  [(SBMirroredDisplayController *)self _ensureCADisplayModeForMirroring:v12];
  [MEMORY[0x277CD9FF0] generateSeed];
}

uint64_t __71__SBMirroredDisplayController_displayAssertionDidGainControlOfDisplay___block_invoke(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [a1[4] hasBeenSignalled];
  if ((result & 1) == 0)
  {
    v3 = SBLogDisplayControlling();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = _SBDisplayControllerLoggingProem(a1[5]);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ removing disable idle sleep reason after timeout", &v5, 0xCu);
    }

    return [a1[6] _updateIdleSleepReason:0];
  }

  return result;
}

- (void)displayAssertion:(id)a3 didLoseControlOfDisplayForDeactivationReasons:(unint64_t)a4
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBMirroredDisplayController displayAssertion:didLoseControlOfDisplayForDeactivationReasons:];
  }

  [(CADisplay *)self->_caDisplay removeObserver:self forKeyPath:@"preferences" context:self];
  lostControlOfDisplaySignal = self->_lostControlOfDisplaySignal;

  [(BSAtomicSignal *)lostControlOfDisplaySignal signal];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SBMirroredDisplayController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v6[3] = &unk_2783A8BC8;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __78__SBMirroredDisplayController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did detect CADisplay prefs change", &v5, 0xCu);
  }

  result = [*(*(a1 + 32) + 40) hasControlOfDisplay];
  if (result)
  {
    return [*(a1 + 32) _ensureCADisplayModeForMirroring];
  }

  return result;
}

- (void)_ensureCADisplayModeForMirroring
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMirroredDisplayController _ensureCADisplayModeForMirroring]"];
  [v1 handleFailureInFunction:v0 file:@"SBMirroredDisplayController.m" lineNumber:190 description:@"this call must be made on the main thread"];
}

void __63__SBMirroredDisplayController__ensureCADisplayModeForMirroring__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasBeenSignalled] & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x277CD9E60]);
    [v2 setCurrentMode:*(a1 + 40)];
    [v2 setOverscanAdjustment:*(a1 + 48)];
    v3 = [*(*(a1 + 56) + 24) identity];
    [v2 setConnectionSeed:{objc_msgSend(v3, "connectionSeed")}];

    [v2 setLogicalScale:{*(a1 + 64), *(a1 + 72)}];
    [v2 setPointScale:*(a1 + 80)];
    v4 = [*(*(a1 + 56) + 72) setDisplayProperties:v2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SBMirroredDisplayController__ensureCADisplayModeForMirroring__block_invoke_2;
    block[3] = &unk_2783AB438;
    v10 = v4;
    v5 = *(a1 + 88);
    block[4] = *(a1 + 56);
    v9 = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __63__SBMirroredDisplayController__ensureCADisplayModeForMirroring__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = SBLogDisplayControlling();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 138543874;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ display change successful : mode=%{public}@ overscan=%{public}@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__SBMirroredDisplayController__ensureCADisplayModeForMirroring__block_invoke_2_cold_1(a1, v4);
  }

  return [*(a1 + 32) _updateDisplayAssertion];
}

- (void)_updateIdleSleepReason:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_idleSleepReason isEqualToString:?])
  {
    objc_storeStrong(&self->_idleSleepReason, a3);
    [(SBMirroredDisplayController *)self _updateDisplayAssertion];
  }
}

- (void)_updateDisplayAssertion
{
  v4 = objc_alloc_init(SBDisplayAssertionPreferences);
  [(SBDisplayAssertionPreferences *)v4 setWantsControlOfDisplay:1];
  [(SBDisplayAssertionPreferences *)v4 setDisableSystemIdleSleepReason:self->_idleSleepReason];
  v3 = [SBDisplayPowerLogEntry forDisplay:self->_currentConfiguration mode:1 zoom:0];
  [(SBDisplayAssertionPreferences *)v4 setPowerLogEntry:v3];
  [(SBDisplayAssertionPreferences *)v4 setCloneMirroringMode:1];
  [(SBDisplayAssertionPreferences *)v4 setDisplayState:[(SBMirroredDisplayController *)self _displayState]];
  [(SBDisplayAssertionPreferences *)v4 setDisplayContentMirroringState:1];
  [(SBDisplayAssertion *)self->_displayAssertion updateWithPreferences:v4];
}

- (void)displayAssertionDidGainControlOfDisplay:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMirroredDisplayController displayAssertionDidGainControlOfDisplay:]"];
  [v1 handleFailureInFunction:v0 file:@"SBMirroredDisplayController.m" lineNumber:148 description:@"this call must be made on the main thread"];
}

- (void)displayAssertion:didLoseControlOfDisplayForDeactivationReasons:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMirroredDisplayController displayAssertion:didLoseControlOfDisplayForDeactivationReasons:]"];
  [v1 handleFailureInFunction:v0 file:@"SBMirroredDisplayController.m" lineNumber:169 description:@"this call must be made on the main thread"];
}

void __63__SBMirroredDisplayController__ensureCADisplayModeForMirroring__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 16));
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@ display change failed: is the connection seed out of date?", &v4, 0xCu);
}

@end