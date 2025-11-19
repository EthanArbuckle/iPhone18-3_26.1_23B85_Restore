@interface SBHLightSourceManager
+ (SBHLightSourceManager)sharedManager;
- (BOOL)canUpdateLight;
- (BOOL)shouldUpdateLight;
- (CAFrameRateRange)preferredFrameRateRange;
- (SBH3DPoint)initialLightDirection;
- (SBH3DPoint)lastLightDirection;
- (SBH3DPoint)lastLightDirection2;
- (SBHLightSourceManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)layers;
- (id)pauseUpdatesForReason:(id)a3;
- (id)reduceUpdateFrequencyForReason:(id)a3;
- (id)succinctDescription;
- (unsigned)effectiveActivityLevel;
- (void)_didAddLightSourceObserverInView:(id)a3;
- (void)addLayer:(id)a3 inView:(id)a4;
- (void)addObserver:(id)a3 inView:(id)a4;
- (void)evaluateLightAngleUpdates;
- (void)invalidateAssertion:(id)a3;
- (void)invalidateDisableUpdatesAssertion:(id)a3;
- (void)invalidateReduceUpdateFrequencyAssertion:(id)a3;
- (void)lightSourceDisplayLinkDidFire:(id)a3;
- (void)pauseLightAngleUpdates;
- (void)pushLightAngleUpdateWithDirection:(SBH3DPoint)a3 intensity:(double)a4 angle:(double)a5;
- (void)reduceMotionDidChange:(id)a3;
- (void)removeLayer:(id)a3;
- (void)removeObserver:(id)a3;
- (void)resumeLightAngleUpdates;
- (void)setUpDisplayLink;
- (void)setUpLightSourceSubscription;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)startOrStopUpdatesAsNecessary;
- (void)startUpdates;
- (void)stopUpdates;
- (void)tearDownDisplayLink;
- (void)tearDownLightSourceSubscription;
- (void)updateLightInLayerOutsideOfDisplayLink:(id)a3;
- (void)updateLightSourceForTargetTimestamp:(double)a3;
- (void)updateLightSourceRefreshRate;
- (void)updateLightSourceUpdateActivityLevel:(unsigned __int8)a3;
@end

@implementation SBHLightSourceManager

+ (SBHLightSourceManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SBHLightSourceManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (unsigned)effectiveActivityLevel
{
  BSDispatchQueueAssertMain();
  if ([(SBHLightSourceManager *)self areUpdatesDisabled])
  {
    return 0;
  }

  v3 = [(NSHashTable *)self->_layers count];
  if (!(v3 + [(NSHashTable *)self->_observers count]))
  {
    return 0;
  }

  return [(SBHLightSourceManager *)self currentActivityLevel];
}

- (void)pauseLightAngleUpdates
{
  v16 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) setLightActivityLevel:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [(SBHLightSourceManager *)self lightSourceDisplayLink];
  if (([v8 isPaused] & 1) == 0)
  {
    v9 = SBLogLightAngle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "Pausing light angle update display link", v10, 2u);
    }

    [v8 setPaused:1];
  }

  [(SBHLightSourceManager *)self setInitialLightDirection:0.0, 0.0, 0.0];
  [(SBHLightSourceManager *)self setAccumulatedDistance:0.0];
}

- (void)evaluateLightAngleUpdates
{
  BSDispatchQueueAssertMain();
  v3 = [(SBHLightSourceManager *)self effectiveActivityLevel];
  if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {
      v4 = CACurrentMediaTime();

      [(SBHLightSourceManager *)self updateLightSourceForTargetTimestamp:v4];
    }

    else
    {

      [(SBHLightSourceManager *)self pauseLightAngleUpdates];
    }
  }

  else
  {

    [(SBHLightSourceManager *)self resumeLightAngleUpdates];
  }
}

void __53__SBHLightSourceManager_setUpLightSourceSubscription__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLightSourceUpdateActivityLevel:a2];
}

- (void)resumeLightAngleUpdates
{
  v13 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setLightActivityLevel:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(SBHLightSourceManager *)self startUpdates];
}

- (SBH3DPoint)lastLightDirection
{
  objc_copyStruct(dest, &self->_lastLightDirection, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (SBHLightSourceManager)init
{
  v15.receiver = self;
  v15.super_class = SBHLightSourceManager;
  v2 = [(SBHLightSourceManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    layers = v2->_layers;
    v2->_layers = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel_reduceMotionDidChange_ name:*MEMORY[0x1E69DD918] object:0];

    v8 = +[SBHHomeScreenDomain rootSettings];
    v9 = [v8 iconSettings];
    iconSettings = v2->_iconSettings;
    v2->_iconSettings = v9;

    [(PTSettings *)v2->_iconSettings addKeyObserver:v2];
    [(SBHIconSettings *)v2->_iconSettings lightAngleRefreshRate];
    v2->_activeRefreshRate = v11;
    [(SBHIconSettings *)v2->_iconSettings lightAngleInitialDistanceThreshold];
    v2->_initialDistanceThreshold = v12;
    [(SBHIconSettings *)v2->_iconSettings lightAngleInitialVelocityThreshold];
    v2->_initialVelocityThreshold = v13;
  }

  return v2;
}

- (void)startUpdates
{
  BSDispatchQueueAssertMain();
  if ([(SBHLightSourceManager *)self shouldUpdateLight])
  {
    v3 = SBLogLightAngle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "Starting light angle updates", v4, 2u);
    }

    [(SBHLightSourceManager *)self setUpLightSourceSubscription];
    [(SBHLightSourceManager *)self setUpDisplayLink];
  }
}

uint64_t __38__SBHLightSourceManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(SBHLightSourceManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)addLayer:(id)a3 inView:(id)a4
{
  v7 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
  if (![(NSHashTable *)self->_layers containsObject:v7])
  {
    [(NSHashTable *)self->_layers addObject:v7];
    [(SBHLightSourceManager *)self updateLightInLayerOutsideOfDisplayLink:v7];
    [(SBHLightSourceManager *)self _didAddLightSourceObserverInView:v6];
  }
}

- (void)updateLightInLayerOutsideOfDisplayLink:(id)a3
{
  v12 = a3;
  if ([(SBHLightSourceManager *)self canUpdateLight])
  {
    [(SBHLightSourceManager *)self lastLightDirectionCoordinates];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(SBHLightSourceManager *)self lastLightIntensity];
    v11 = v10;
    [v12 setLightDirection:{v5, v7, v9}];
    [v12 setLightIntensity:v11];
  }
}

- (void)_didAddLightSourceObserverInView:(id)a3
{
  v4 = a3;
  v5 = [(SBHLightSourceManager *)self lightSourceDisplayLink];

  if (!v5)
  {
    [(SBHLightSourceManager *)self startUpdates];
  }

  [(SBHLightSourceManager *)self evaluateLightAngleUpdates];
  if (v4 && !self->_overlayManager && +[SBHLightSourceOverlayManager isOverlayAllowed](SBHLightSourceOverlayManager, "isOverlayAllowed") && (-[SBHLightSourceManager iconSettings](self, "iconSettings"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lightAngleDebugUIEnabled], v6, v7))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SBHLightSourceManager__didAddLightSourceObserverInView___block_invoke;
    v8[3] = &unk_1E8088F18;
    v9 = v4;
    v10 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else
  {
    [(SBHLightSourceOverlayManager *)self->_overlayManager updateOverlay];
  }
}

void __58__SBHLightSourceManager__didAddLightSourceObserverInView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  v7 = [v2 windowScene];

  if (*(*(a1 + 40) + 136))
  {
    v3 = 1;
  }

  else
  {
    v3 = v7 == 0;
  }

  if (!v3)
  {
    v4 = [[SBHLightSourceOverlayManager alloc] initWithWindowScene:v7];
    v5 = *(a1 + 40);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;
  }
}

- (void)removeLayer:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if ([(NSHashTable *)self->_layers containsObject:v4])
  {
    v5 = SBLogLightAngle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBHLightSourceManager *)v4 removeLayer:v5];
    }

    [(NSHashTable *)self->_layers removeObject:v4];
    [(SBHLightSourceManager *)self evaluateLightAngleUpdates];
    [(SBHLightSourceManager *)self startOrStopUpdatesAsNecessary];
    [(SBHLightSourceOverlayManager *)self->_overlayManager updateOverlay];
  }
}

- (void)addObserver:(id)a3 inView:(id)a4
{
  v7 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
  if (![(NSHashTable *)self->_observers containsObject:v7])
  {
    [(NSHashTable *)self->_observers addObject:v7];
    [(SBHLightSourceManager *)self _didAddLightSourceObserverInView:v6];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if ([(NSHashTable *)self->_observers containsObject:v4])
  {
    v5 = SBLogLightAngle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBHLightSourceManager *)v4 removeObserver:v5];
    }

    [(NSHashTable *)self->_observers removeObject:v4];
    [(SBHLightSourceManager *)self evaluateLightAngleUpdates];
    [(SBHLightSourceOverlayManager *)self->_overlayManager updateOverlay];
  }
}

- (id)layers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSHashTable *)self->_layers allObjects];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)pauseUpdatesForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogLightAngle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Pausing light angle updates for reason '%{public}@'", &v11, 0xCu);
  }

  v6 = [[SBHLightSourceManagerAssertion alloc] initWithLightSourceManager:self type:0 reason:v4];
  disableUpdatesAssertions = self->_disableUpdatesAssertions;
  if (!disableUpdatesAssertions)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_disableUpdatesAssertions;
    self->_disableUpdatesAssertions = v8;

    disableUpdatesAssertions = self->_disableUpdatesAssertions;
  }

  [(NSHashTable *)disableUpdatesAssertions addObject:v6];
  if (![(SBHLightSourceManager *)self areUpdatesDisabled])
  {
    [(SBHLightSourceManager *)self setUpdatesDisabled:1];
    [(SBHLightSourceManager *)self stopUpdates];
  }

  return v6;
}

- (id)reduceUpdateFrequencyForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogLightAngle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Reducing light angle update frequency for reason '%{public}@'", &v11, 0xCu);
  }

  v6 = [[SBHLightSourceManagerAssertion alloc] initWithLightSourceManager:self type:1 reason:v4];
  reduceUpdateFreqencyAssertions = self->_reduceUpdateFreqencyAssertions;
  if (!reduceUpdateFreqencyAssertions)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_reduceUpdateFreqencyAssertions;
    self->_reduceUpdateFreqencyAssertions = v8;

    reduceUpdateFreqencyAssertions = self->_reduceUpdateFreqencyAssertions;
  }

  [(NSHashTable *)reduceUpdateFreqencyAssertions addObject:v6];
  [(SBHLightSourceManager *)self updateLightSourceRefreshRate];

  return v6;
}

- (BOOL)canUpdateLight
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 0;
  }

  v3 = [MEMORY[0x1E698E740] processHandle];
  v4 = [v3 hasEntitlement:@"com.apple.lightsourcesupport.listener"];

  if (!v4)
  {
    return 0;
  }

  else
  {
    return ![(SBHLightSourceManager *)self areUpdatesDisabled];
  }
}

- (BOOL)shouldUpdateLight
{
  LODWORD(v3) = [(SBHLightSourceManager *)self canUpdateLight];
  if (v3)
  {
    if ([(SBHLightSourceManager *)self layerCount]|| (v3 = [(SBHLightSourceManager *)self observerCount]) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)setUpLightSourceSubscription
{
  v3 = [(SBHLightSourceManager *)self lightSourceSubscription];
  if (!v3)
  {
    if ([(SBHLightSourceManager *)self areUpdatesDisabled])
    {
      v3 = 0;
    }

    else
    {
      objc_initWeak(&location, self);
      v4 = [MEMORY[0x1E69AC030] sharedInstance];
      v5 = MEMORY[0x1E69E96A0];
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __53__SBHLightSourceManager_setUpLightSourceSubscription__block_invoke;
      v10 = &unk_1E8092048;
      objc_copyWeak(&v11, &location);
      v3 = [v4 subscribeOnQueue:v5 options:2 activityLevelChangeHandler:&v7];

      [(SBHLightSourceManager *)self setLightSourceSubscription:v3, v7, v8, v9, v10];
      objc_destroyWeak(&v11);

      objc_destroyWeak(&location);
    }
  }
}

- (void)tearDownLightSourceSubscription
{
  v3 = [(SBHLightSourceManager *)self lightSourceSubscription];
  if (v3)
  {
    v4 = v3;
    [v3 invalidate];
    [(SBHLightSourceManager *)self setLightSourceSubscription:0];
    v3 = v4;
  }
}

- (void)updateLightSourceUpdateActivityLevel:(unsigned __int8)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v5 = SBLogLightAngle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = [(SBHLightSourceManager *)self currentActivityLevel];
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Light source update activity level changed: %li -> %li", &v6, 0x16u);
  }

  [(SBHLightSourceManager *)self setCurrentActivityLevel:v3];
  [(SBHLightSourceManager *)self evaluateLightAngleUpdates];
}

- (void)setUpDisplayLink
{
  BSDispatchQueueAssertMain();
  v4 = [(SBHLightSourceManager *)self lightSourceDisplayLink];
  if (v4 || [(SBHLightSourceManager *)self areUpdatesDisabled])
  {
    [v4 setPaused:{-[SBHLightSourceManager effectiveActivityLevel](self, "effectiveActivityLevel") == 0}];
  }

  else
  {
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_lightSourceDisplayLinkDidFire_];
    [(SBHLightSourceManager *)self preferredFrameRateRange];
    [v4 setPreferredFrameRateRange:?];
    v3 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v4 addToRunLoop:v3 forMode:*MEMORY[0x1E695DA28]];

    [(SBHLightSourceManager *)self setLightSourceDisplayLink:v4];
  }
}

- (void)tearDownDisplayLink
{
  v3 = [(SBHLightSourceManager *)self lightSourceDisplayLink];
  if (v3)
  {
    v4 = v3;
    [v3 invalidate];
    [(SBHLightSourceManager *)self setLightSourceDisplayLink:0];
    v3 = v4;
  }
}

- (void)stopUpdates
{
  [(SBHLightSourceManager *)self tearDownDisplayLink];

  [(SBHLightSourceManager *)self tearDownLightSourceSubscription];
}

- (void)startOrStopUpdatesAsNecessary
{
  if ([(SBHLightSourceManager *)self shouldUpdateLight])
  {

    [(SBHLightSourceManager *)self startUpdates];
  }

  else
  {

    [(SBHLightSourceManager *)self stopUpdates];
  }
}

- (void)lightSourceDisplayLinkDidFire:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [v4 targetTimestamp];
  v6 = v5;

  [(SBHLightSourceManager *)self updateLightSourceForTargetTimestamp:v6];
}

- (void)updateLightSourceForTargetTimestamp:(double)a3
{
  BSDispatchQueueAssertMain();
  v5 = [(SBHLightSourceManager *)self lightSourceSubscription];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lightSourceForTargetTime:a3];
    [v7 direction];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v7 intensity];
    v15 = v14;
    [(SBHLightSourceManager *)self lastLightDirection];
    v17 = v16;
    v42 = v19;
    v43 = v18;
    [(SBHLightSourceManager *)self lastLightIntensity];
    if (BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && (BSFloatApproximatelyEqualToFloat() & 1) != 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    [(SBHLightSourceManager *)self initialLightDirection];
    v41 = v15;
    if (v20 == 0.0 || v21 == 0.0 || v22 == 0.0)
    {
      [(SBHLightSourceManager *)self setInitialLightDirection:v9, v11, v13];
      [(SBHLightSourceManager *)self lastLightTimestamp];
      v29 = v30;
    }

    else
    {
      v23 = SBH3DPointDistance(v20, v21, v22, v9, v11, v13);
      [(SBHLightSourceManager *)self accumulatedDistance];
      v25 = v23 + v24;
      [(SBHLightSourceManager *)self initialDistanceThreshold];
      v27 = v26;
      [(SBHLightSourceManager *)self setAccumulatedDistance:v25];
      [(SBHLightSourceManager *)self lastLightTimestamp];
      v29 = v28;
      if (v25 >= v27)
      {
        goto LABEL_14;
      }
    }

    v31 = SBH3DPointVelocity(v17, v43, v42, v9, v11, v13, a3 - v29);
    v34 = SBH3DVelocityMagnitude(v31, v32, v33);
    [(SBHLightSourceManager *)self initialVelocityThreshold];
    if (v34 <= v35)
    {
      [v7 angle];
      v38 = v39;
      v36 = v41;
      goto LABEL_16;
    }

    [(SBHLightSourceManager *)self setAccumulatedDistance:10000.0];
LABEL_14:
    v36 = v41;
    [v7 angle];
    v38 = v37;
    [(SBHLightSourceManager *)self pushLightAngleUpdateWithDirection:v9 intensity:v11 angle:v13, v41, v37];
LABEL_16:
    [(SBHLightSourceManager *)self setLastLightAngle:v38];
    [(SBHLightSourceManager *)self setLastLightDirection:v9, v11, v13];
    [(SBHLightSourceManager *)self setLastLightDirection2:v17, v43, v42];
    [(SBHLightSourceManager *)self setLastLightIntensity:v36];
    [(SBHLightSourceManager *)self setLastLightTimestamp:a3];
    [(SBHLightSourceManager *)self setLastLightTimestamp2:v29];
    [(SBHLightSourceOverlayManager *)self->_overlayManager noteLightAngleDidUpdate];
    v40 = SBLogLightAngle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [(SBHLightSourceManager *)v40 updateLightSourceForTargetTimestamp:v38];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)pushLightAngleUpdateWithDirection:(SBH3DPoint)a3 intensity:(double)a4 angle:(double)a5
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_layers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        [v16 setLightDirection:{x, y, z}];
        [v16 setLightIntensity:a4];
      }

      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_observers;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * j) setLightAngle:{a5, v22}];
      }

      v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)updateLightSourceRefreshRate
{
  v3 = [(SBHLightSourceManager *)self lightSourceDisplayLink];
  [(SBHLightSourceManager *)self preferredFrameRateRange];
  [v3 setPreferredFrameRateRange:?];
}

- (CAFrameRateRange)preferredFrameRateRange
{
  v3 = [(NSHashTable *)self->_reduceUpdateFreqencyAssertions count];
  v4 = 4.0;
  if (!v3)
  {
    [(SBHLightSourceManager *)self activeRefreshRate];
    v4 = v5;
  }

  return CAFrameRateRangeMake(4.0, v4, v4);
}

- (void)invalidateAssertion:(id)a3
{
  v6 = a3;
  v4 = [v6 type];
  if (v4 == 1)
  {
    v4 = [(SBHLightSourceManager *)self invalidateReduceUpdateFrequencyAssertion:v6];
  }

  else
  {
    v5 = v6;
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = [(SBHLightSourceManager *)self invalidateDisableUpdatesAssertion:v6];
  }

  v5 = v6;
LABEL_6:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)invalidateDisableUpdatesAssertion:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if ([(NSHashTable *)self->_disableUpdatesAssertions containsObject:v4])
  {
    v5 = SBLogLightAngle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 reason];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Light angle pause reason '%{public}@' did invalidate", &v7, 0xCu);
    }

    [(NSHashTable *)self->_disableUpdatesAssertions removeObject:v4];
    if (![(NSHashTable *)self->_disableUpdatesAssertions count])
    {
      [(SBHLightSourceManager *)self setUpdatesDisabled:0];
      [(SBHLightSourceManager *)self startOrStopUpdatesAsNecessary];
    }
  }
}

- (void)invalidateReduceUpdateFrequencyAssertion:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if ([(NSHashTable *)self->_reduceUpdateFreqencyAssertions containsObject:v4])
  {
    v5 = SBLogLightAngle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 reason];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Light angle update frequency reason '%{public}@' did invalidate", &v7, 0xCu);
    }

    [(NSHashTable *)self->_reduceUpdateFreqencyAssertions removeObject:v4];
    if (![(NSHashTable *)self->_reduceUpdateFreqencyAssertions count])
    {
      [(SBHLightSourceManager *)self updateLightSourceRefreshRate];
    }
  }
}

- (void)reduceMotionDidChange:(id)a3
{
  BSDispatchQueueAssertMain();

  [(SBHLightSourceManager *)self startOrStopUpdatesAsNecessary];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(SBHLightSourceManager *)self iconSettings];

  if (v7 == v6)
  {
    if ([v9 isEqualToString:@"lightAngleRefreshRate"])
    {
      [v7 lightAngleRefreshRate];
      [(SBHLightSourceManager *)self setActiveRefreshRate:?];
      [(SBHLightSourceManager *)self updateLightSourceRefreshRate];
    }

    else if ([v9 isEqualToString:@"lightAngleDebugUIEnabled"] && (objc_msgSend(v7, "lightAngleDebugUIEnabled") & 1) == 0)
    {
      v8 = [(SBHLightSourceManager *)self overlayManager];
      [v8 invalidate];

      [(SBHLightSourceManager *)self setOverlayManager:0];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBHLightSourceManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHLightSourceManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHLightSourceManager *)self succinctDescriptionBuilder];
  v5 = [(SBHLightSourceManager *)self currentActivityLevel];
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1E8092068 + v5);
  }

  [v4 appendString:v6 withName:@"currentActivityLevel"];
  v7 = [v4 appendBool:-[SBHLightSourceManager areUpdatesDisabled](self withName:"areUpdatesDisabled") ifEqualTo:{@"areUpdatesDisabled", 1}];

  return v4;
}

- (SBH3DPoint)lastLightDirection2
{
  objc_copyStruct(dest, &self->_lastLightDirection2, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (SBH3DPoint)initialLightDirection
{
  objc_copyStruct(dest, &self->_initialLightDirection, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)removeLayer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Removing layer %p", &v2, 0xCu);
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Removing observer %p", &v2, 0xCu);
}

- (void)updateLightSourceForTargetTimestamp:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a2;
  v4 = 2048;
  v5 = a2 / 0.0174532925;
  _os_log_debug_impl(&dword_1BEB18000, log, OS_LOG_TYPE_DEBUG, "Updating icon light angle to %f (%fº)", &v2, 0x16u);
}

@end