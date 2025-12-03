@interface SBBacklightPlatformProvider
+ (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isShowingBlankingWindow;
- (SBBacklightPlatformProvider)init;
- (SBBacklightPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)provider;
- (UIWindowScene)windowScene;
- (double)backlightFadeInDuration;
- (void)_notifyObserversOfSignificantUserInteraction;
- (void)_setBlankingWindowVisible:(BOOL)visible fadeDuration:(double)duration;
- (void)_updateAlwaysOnEnabled;
- (void)addObserver:(id)observer;
- (void)completeInitializationAfterBLSStartup;
- (void)removeObserver:(id)observer;
- (void)setSignificantUserInteractionMonitor:(id)monitor;
- (void)showBlankingWindow:(BOOL)window withFadeDuration:(double)duration;
@end

@implementation SBBacklightPlatformProvider

- (BOOL)isShowingBlankingWindow
{
  os_unfair_lock_lock(&self->_lock);
  lock_showingBlankingWindow = self->_lock_showingBlankingWindow;
  os_unfair_lock_unlock(&self->_lock);
  return lock_showingBlankingWindow;
}

- (void)_notifyObserversOfSignificantUserInteraction
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_alwaysOnObservers allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBBacklightPlatformProvider sending significant user interaction notice", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 platformProviderDidDetectSignificantUserInteraction:{self, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

+ (BOOL)deviceSupportsAlwaysOn
{
  v2 = MGGetBoolAnswer();
  has_internal_content = os_variant_has_internal_content();
  if (!has_internal_content || (v2 & 1) != 0)
  {
    return (has_internal_content | v2) & 1;
  }

  v4 = +[SBDefaults localDefaults];
  alwaysOnDefaults = [v4 alwaysOnDefaults];
  forceAndromedaSupport = [alwaysOnDefaults forceAndromedaSupport];

  return forceAndromedaSupport;
}

- (double)backlightFadeInDuration
{
  v2 = +[SBBacklightController sharedInstanceIfExists];
  v3 = v2;
  if (v2)
  {
    lastBacklightChangeSource = [v2 lastBacklightChangeSource];
  }

  else
  {
    lastBacklightChangeSource = 0;
  }

  [SBScreenWakeAnimationController backlightFadeDurationForSource:lastBacklightChangeSource isWake:1];
  v6 = v5;

  return v6;
}

- (SBBacklightPlatformProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithBacklightEnvironmentSessionProvider_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBBacklightPlatformProvider.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[SBBacklightPlatformProvider init]", v5}];

  return 0;
}

- (SBBacklightPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)provider
{
  v42[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v41.receiver = self;
  v41.super_class = SBBacklightPlatformProvider;
  v6 = [(SBBacklightPlatformProvider *)&v41 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    rootSettings = [MEMORY[0x277D65FB8] rootSettings];
    wakeAnimationSettings = v7->_wakeAnimationSettings;
    v7->_wakeAnimationSettings = rootSettings;

    objc_storeStrong(&v7->_sessionProvider, provider);
    v10 = +[SBDefaults localDefaults];
    alwaysOnDefaults = [v10 alwaysOnDefaults];
    alwaysOnDefaults = v7->_alwaysOnDefaults;
    v7->_alwaysOnDefaults = alwaysOnDefaults;

    if ([(SBAlwaysOnDefaults *)v7->_alwaysOnDefaults useAlwaysOnBrightnessCurve])
    {
      v13 = objc_alloc_init(SBAlwaysOnBrightnessCurveController);
      brightnessCurveController = v7->_brightnessCurveController;
      v7->_brightnessCurveController = v13;
    }

    [(SBBacklightPlatformProvider *)v7 _updateAlwaysOnEnabled];
    v15 = v7->_alwaysOnDefaults;
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableAlwaysOn"];
    v42[0] = v16;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"forceAndromedaSupport"];
    v42[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __75__SBBacklightPlatformProvider_initWithBacklightEnvironmentSessionProvider___block_invoke;
    v39 = &unk_2783A8C18;
    v19 = v7;
    v40 = v19;
    v20 = [(SBAlwaysOnDefaults *)v15 observeDefaults:v18 onQueue:MEMORY[0x277D85CD0] withBlock:&v36];

    v21 = [SBMainDisplayRootWindowScenePresentationBinder sharedInstance:v36];
    rootWindow = [v21 rootWindow];

    v23 = objc_alloc_init(SBAveragePixelLuminanceLimitController);
    aplLimitController = v19->_aplLimitController;
    v19->_aplLimitController = v23;

    [(SBAveragePixelLuminanceLimitController *)v19->_aplLimitController setGlobalFilter:1];
    [(SBAveragePixelLuminanceLimitController *)v19->_aplLimitController setTargetView:rootWindow];
    if ([objc_opt_class() deviceSupportsAlwaysOn])
    {
      v25 = [[SBAlwaysOnTelemetryEmitter alloc] initWithBacklightEnvironmentSessionProvider:v7->_sessionProvider];
    }

    else
    {
      v25 = v19;
    }

    telemetryEmitter = v19->_telemetryEmitter;
    v19->_telemetryEmitter = v25;

    v27 = MGGetSInt32Answer();
    v28 = (v27 & ~(v27 >> 31)) << 20;
    maximumRenderInterval = [(SBAlwaysOnDefaults *)v7->_alwaysOnDefaults maximumRenderInterval];
    v30 = maximumRenderInterval;
    if (maximumRenderInterval)
    {
      [maximumRenderInterval doubleValue];
      v32 = v31;
    }

    else
    {
      v32 = 300.0;
    }

    v33 = [objc_alloc(MEMORY[0x277CF0A28]) initWithSoftMemoryLimit:v28 frameCapacity:120 framesPerSecond:120.0 minimumGapDuration:3.0 coaelscingEpsilon:0.028 minimumPrepareInterval:90.0 maximumRenderInterval:v32];
    flipbookSpecification = v19->_flipbookSpecification;
    v19->_flipbookSpecification = v33;
  }

  return v7;
}

- (void)setSignificantUserInteractionMonitor:(id)monitor
{
  monitorCopy = monitor;
  significantUserInteractionMonitor = self->_significantUserInteractionMonitor;
  if (significantUserInteractionMonitor != monitorCopy)
  {
    v7 = monitorCopy;
    [(SBBacklightSignificantUserInteractionMonitor *)significantUserInteractionMonitor removeObserver:self];
    objc_storeStrong(&self->_significantUserInteractionMonitor, monitor);
    [(SBBacklightSignificantUserInteractionMonitor *)self->_significantUserInteractionMonitor addObserver:self];
    monitorCopy = v7;
  }
}

- (void)completeInitializationAfterBLSStartup
{
  v3 = objc_alloc_init(SBAlwaysOnPolicyCoordinator);
  alwaysOnPolicyCoordinator = self->_alwaysOnPolicyCoordinator;
  self->_alwaysOnPolicyCoordinator = v3;

  [(SBAlwaysOnPolicyCoordinator *)self->_alwaysOnPolicyCoordinator activate];
  telemetryEmitter = self->_telemetryEmitter;
  v6 = objc_opt_class();
  v7 = telemetryEmitter;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(BLSHFlipbookTelemetry *)v9 setAlwaysOnPolicyCoordinator:self->_alwaysOnPolicyCoordinator];
  [(BLSHFlipbookTelemetry *)v9 completeIntializationAfterBLSStartup];
}

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabled = self->_lock_alwaysOnEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabled;
}

- (void)showBlankingWindow:(BOOL)window withFadeDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_showingBlankingWindow = window;
  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

uint64_t __75__SBBacklightPlatformProvider_useAlwaysOnBrightnessCurve_withRampDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__SBBacklightPlatformProvider_useAlwaysOnBrightnessCurve_withRampDuration___block_invoke_2;
  v3[3] = &unk_2783A9F58;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v1];
}

uint64_t __75__SBBacklightPlatformProvider_useAlwaysOnBrightnessCurve_withRampDuration___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (*(a1 + 40) == 1)
  {
    v3 = [*(v1 + 48) enforceOverallAPLLimit];
  }

  else
  {
    v3 = 0;
  }

  return [v2 setAplLimitsEnabled:v3];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnObservers = self->_lock_alwaysOnObservers;
  if (!lock_alwaysOnObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v6 = self->_lock_alwaysOnObservers;
    self->_lock_alwaysOnObservers = weakObjectsHashTable;

    lock_alwaysOnObservers = self->_lock_alwaysOnObservers;
  }

  [(NSHashTable *)lock_alwaysOnObservers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_alwaysOnObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateAlwaysOnEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() deviceSupportsAlwaysOn])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SBAlwaysOnDefaults *)self->_alwaysOnDefaults enableAlwaysOn]& v3;
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabled = self->_lock_alwaysOnEnabled;
  self->_lock_alwaysOnEnabled = v4;
  allObjects = [(NSHashTable *)self->_lock_alwaysOnObservers allObjects];
  v7 = [allObjects copy];

  os_unfair_lock_unlock(&self->_lock);
  if (lock_alwaysOnEnabled != v4)
  {
    v8 = SBLogBacklight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "isAlwaysOnEnabled updated to new value:%{BOOL}u", buf, 8u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 platformProvider:self didChangeAlwaysOnSetting:{v4, v15}];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)_setBlankingWindowVisible:(BOOL)visible fadeDuration:(double)duration
{
  visibleCopy = visible;
  v21 = *MEMORY[0x277D85DE8];
  windowScene = [(SBBacklightPlatformProvider *)self windowScene];
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v18 = visibleCopy;
    v19 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "making blanking window visible: %{BOOL}u duration: %f", buf, 0x12u);
  }

  if (visibleCopy && !self->_blankingWindow)
  {
    v9 = [[SBBacklightBlankingWindow alloc] initWithWindowScene:windowScene];
    [(SBBacklightBlankingWindow *)v9 setWindowLevel:*MEMORY[0x277D76A38] + 801.0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBBacklightBlankingWindow *)v9 setBackgroundColor:blackColor];

    [(SBBacklightBlankingWindow *)v9 setAlpha:0.0];
    [(SBFWindow *)v9 setHidden:0];
    blankingWindow = self->_blankingWindow;
    self->_blankingWindow = v9;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SBBacklightPlatformProvider__setBlankingWindowVisible_fadeDuration___block_invoke;
  v15[3] = &unk_2783A9F58;
  v16 = visibleCopy;
  v15[4] = self;
  v12 = MEMORY[0x223D6F7F0](v15);
  if (BSFloatIsZero())
  {
    v12[2](v12);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__SBBacklightPlatformProvider__setBlankingWindowVisible_fadeDuration___block_invoke_2;
    v13[3] = &unk_2783AF318;
    v14 = visibleCopy;
    v13[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v13 completion:duration];
  }

  [windowScene _synchronizeDrawing];
}

uint64_t __70__SBBacklightPlatformProvider__setBlankingWindowVisible_fadeDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

void __70__SBBacklightPlatformProvider__setBlankingWindowVisible_fadeDuration___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogBacklight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "blanking window animation to visible %{BOOL}u completed", v6, 8u);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    [*(*(a1 + 32) + 32) setHidden:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end