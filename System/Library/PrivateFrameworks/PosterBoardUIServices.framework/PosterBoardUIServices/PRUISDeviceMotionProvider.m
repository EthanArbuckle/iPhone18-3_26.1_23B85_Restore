@interface PRUISDeviceMotionProvider
+ (id)motionProvider;
- (BOOL)_isLightSourceSubscriptionActive;
- (BOOL)areMotionEventsAvailable;
- (BOOL)isGeneratingMotionEvents;
- (PRUISDeviceMotionProvider)init;
- (PRUISDeviceMotionProvider)initWithMotionSource:(id)a3;
- (PRUISDeviceMotionProviderDelegate)delegate;
- (float64_t)_scaleRotation:(double)a3@<D0> byFactor:;
- (id)__lock_lightSourceSubscription;
- (id)_activeOrientationChangedDate;
- (id)_lightSourceSubscription;
- (id)referenceAttitude;
- (int64_t)_activeOrientation;
- (int64_t)_motionActivityLevel;
- (int64_t)_previousOrientation;
- (void)_cancelDampeningTimer;
- (void)_invalidateLightSourceSubscription;
- (void)_lock_invalidateLightSourceSubscription;
- (void)_lock_setLightSourceSubscriptionActive:(BOOL)a3;
- (void)_motionGenerationQueue_cancelDampeningTimer;
- (void)_motionGenerationQueue_motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4;
- (void)_motionGenerationQueue_motionProvider:(void *)a3 motionDidUpdateWithRotation:(uint64_t)a4;
- (void)_motionGenerationQueue_processDampeningStep:(float64x2_t *)a3;
- (void)_motionGenerationQueue_processDeviceMotion:(id)a3;
- (void)_motionGenerationQueue_startDampeningToZeroFromRotation:(__int128 *)a3;
- (void)_motionGenerationQueue_startGeneratingMotionEvents;
- (void)_motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:(int64_t)a3 invalidateLightSourceSubscription:(BOOL)a4;
- (void)_motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4;
- (void)_motionProvider:(void *)a3 motionDidUpdateWithRotation:(__int128 *)a4;
- (void)_previousAttitudeQuaternion;
- (void)_setActiveOrientation:(int64_t)a3;
- (void)_setLightSourceSubscriptionActive:(BOOL)a3;
- (void)_setMotionActivityLevel:(int64_t)a3;
- (void)_setPreviousAttitudeQuaternion:(_OWORD *)a3;
- (void)_stopGeneratingMotionEventsRightNow;
- (void)dealloc;
- (void)invalidate;
- (void)pauseGeneratingMotionEvents;
- (void)resetReferenceAttitude;
- (void)setGeneratingMotionEvents:(BOOL)a3;
- (void)setMotionUpdateInterval:(double)a3;
- (void)setReferenceAttitude:(id)a3;
- (void)startGeneratingMotionEvents;
- (void)stopGeneratingMotionEvents;
@end

@implementation PRUISDeviceMotionProvider

- (PRUISDeviceMotionProvider)initWithMotionSource:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = PRUISDeviceMotionProvider;
  v6 = [(PRUISDeviceMotionProvider *)&v22 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    objc_storeStrong(v6 + 3, a3);
    *(v6 + 29) = 0x3F9111F0C34C1A8BLL;
    *(v6 + 8) = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
    v9 = BSDispatchQueueCreateWithQualityOfService();
    v10 = *(v6 + 10);
    *(v6 + 10) = v9;

    v11 = BSDispatchQueueCreateWithQualityOfService();
    v12 = *(v6 + 6);
    *(v6 + 6) = v11;

    *(v6 + 22) = 0;
    *(v6 + 7) = 0;
    v6[144] = 0;
    v20 = _simd_cos_d2(0);
    v21 = _simd_cos_d2(0);
    v19 = _simd_sin_d2(0);
    v13 = _simd_sin_d2(0);
    v14.f64[0] = v21.f64[0];
    v14.f64[1] = v19.f64[1];
    v15 = vdupq_lane_s64(*&v13.f64[0], 0);
    v16 = vzip1q_s64(v13, v20);
    v13.f64[1] = v20.f64[1];
    v17.f64[1] = v15.f64[1];
    v17.f64[0] = -v19.f64[0];
    v15.f64[0] = -v20.f64[0];
    *(v6 + 10) = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(v19, v19, 8uLL), v13), v15), vzip1q_s64(v19, v21), vmulq_f64(vextq_s8(v20, v20, 8uLL), v14));
    *(v6 + 11) = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v17, v19, 1), vzip1q_s64(v21, v19)), v16, vmulq_f64(v20, vextq_s8(v20, v21, 8uLL)));
    *(v6 + 200) = xmmword_1CAF024B0;
  }

  return v6;
}

- (void)dealloc
{
  [(PRUISDeviceMotionProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISDeviceMotionProvider;
  [(PRUISDeviceMotionProvider *)&v3 dealloc];
}

- (PRUISDeviceMotionProvider)init
{
  [(PRUISDeviceMotionProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)motionProvider
{
  if (motionProvider_onceToken != -1)
  {
    +[PRUISDeviceMotionProvider motionProvider];
  }

  v3 = motionProvider_coreMotionProvider;

  return v3;
}

void __43__PRUISDeviceMotionProvider_motionProvider__block_invoke()
{
  v0 = [PRUISDeviceMotionProvider alloc];
  v3 = objc_alloc_init(MEMORY[0x1E69634D0]);
  v1 = [(PRUISDeviceMotionProvider *)v0 initWithMotionSource:v3];
  v2 = motionProvider_coreMotionProvider;
  motionProvider_coreMotionProvider = v1;
}

- (BOOL)areMotionEventsAvailable
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) != 0)
  {
    return 0;
  }

  motionSource = self->_motionSource;
  if (!motionSource)
  {
    return 1;
  }

  return [(CMMotionManager *)motionSource isDeviceMotionAvailable];
}

- (void)setMotionUpdateInterval:(double)a3
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0 && self->_motionUpdateInterval != a3)
  {
    self->_motionUpdateInterval = a3;
    motionSource = self->_motionSource;

    [(CMMotionManager *)motionSource setDeviceMotionUpdateInterval:a3];
  }
}

- (void)startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    objc_initWeak(&location, self);
    motionGenerationQueue = self->_motionGenerationQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__PRUISDeviceMotionProvider_startGeneratingMotionEvents__block_invoke;
    v4[3] = &unk_1E83A72A8;
    objc_copyWeak(&v5, &location);
    dispatch_async(motionGenerationQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__PRUISDeviceMotionProvider_startGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_startGeneratingMotionEvents];
}

- (void)_motionGenerationQueue_startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    if (![(PRUISDeviceMotionProvider *)self isGeneratingMotionEvents])
    {
      if (self->_motionSource)
      {
        [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_cancelDampeningTimer];
        if ([(CMMotionManager *)self->_motionSource isDeviceMotionAvailable])
        {
          v3 = [(PRUISDeviceMotionProvider *)self _lightSourceSubscription];
          [(CMMotionManager *)self->_motionSource setDeviceMotionUpdateInterval:self->_motionUpdateInterval];
          [(CMMotionManager *)self->_motionSource setPowerConservationMode:3];
          if ([(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment])
          {
            [(CMMotionManager *)self->_motionSource setShouldResetStartingReference:0];
          }

          v4 = PRUISLogMotionEvents();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Starting motion updates", buf, 2u);
          }

          v5 = objc_opt_new();
          [v5 setUnderlyingQueue:self->_motionGenerationQueue];
          objc_initWeak(buf, self);
          motionSource = self->_motionSource;
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3221225472;
          v7[2] = __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke;
          v7[3] = &unk_1E83A72D0;
          objc_copyWeak(&v8, buf);
          [(CMMotionManager *)motionSource startDeviceMotionUpdatesToQueue:v5 withHandler:v7];
          [(PRUISDeviceMotionProvider *)self setGeneratingMotionEvents:1];
          objc_destroyWeak(&v8);
          objc_destroyWeak(buf);
        }

        else
        {
          v5 = PRUISLogMotionEvents();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Device motion updates are not available.", buf, 2u);
          }
        }
      }
    }
  }
}

void __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained isGeneratingMotionEvents])
  {
    v9 = [v8 _wantsNorthByNorthwestTreatment];
    if (v9 && ([v8 _isLightSourceSubscriptionActive] & 1) == 0)
    {
      v10 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_1();
      }

      goto LABEL_15;
    }

    if (v6)
    {
      v10 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_2(v6, v10);
      }

      goto LABEL_15;
    }

    v11 = [MEMORY[0x1E698E730] sharedInstance];
    v12 = [v11 deviceClass];

    if (v12 == 2)
    {
      [v8 _setActiveOrientation:{objc_msgSend(*MEMORY[0x1E69DDA98], "activeInterfaceOrientation")}];
    }

    if (!v9)
    {
      v13 = [v8 referenceAttitude];

      if (!v13)
      {
        v10 = [v5 attitude];
        [v8 setReferenceAttitude:v10];
LABEL_15:

        goto LABEL_16;
      }
    }

    [v8 _motionGenerationQueue_processDeviceMotion:v5];
  }

LABEL_16:
}

- (void)stopGeneratingMotionEvents
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PRUISDeviceMotionProvider_stopGeneratingMotionEvents__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__PRUISDeviceMotionProvider_stopGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:0 invalidateLightSourceSubscription:1];
}

- (void)_stopGeneratingMotionEventsRightNow
{
  BSDispatchQueueAssertNot();
  motionGenerationQueue = self->_motionGenerationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PRUISDeviceMotionProvider__stopGeneratingMotionEventsRightNow__block_invoke;
  block[3] = &unk_1E83A72F8;
  block[4] = self;
  dispatch_sync(motionGenerationQueue, block);
}

uint64_t __64__PRUISDeviceMotionProvider__stopGeneratingMotionEventsRightNow__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 216) = 1;
  [*(a1 + 32) _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:0 invalidateLightSourceSubscription:1];
  v2 = *(a1 + 32);

  return [v2 _motionGenerationQueue_cancelDampeningTimer];
}

- (void)pauseGeneratingMotionEvents
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PRUISDeviceMotionProvider_pauseGeneratingMotionEvents__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__PRUISDeviceMotionProvider_pauseGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:1 invalidateLightSourceSubscription:0];
}

- (void)_motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:(int64_t)a3 invalidateLightSourceSubscription:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__PRUISDeviceMotionProvider__motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel_invalidateLightSourceSubscription___block_invoke;
  aBlock[3] = &unk_1E83A7320;
  v14 = a4;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([(PRUISDeviceMotionProvider *)self isGeneratingMotionEvents])
  {
    motionSource = self->_motionSource;
    if (motionSource)
    {
      if ([(CMMotionManager *)motionSource isDeviceMotionActive])
      {
        v9 = PRUISLogMotionEvents();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = @"Stopping";
          if (a3 == 1)
          {
            v10 = @"Pausing";
          }

          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "%@ motion updates", buf, 0xCu);
        }

        if (!self->_motionGenerationQueue_deallocating)
        {
          os_unfair_lock_lock(&self->_lock);
          v11 = *&self->_anon_a0[16];
          v12 = *self->_anon_a0;
          os_unfair_lock_unlock(&self->_lock);
          *buf = v12;
          v16 = v11;
          [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_startDampeningToZeroFromRotation:buf];
        }

        [(CMMotionManager *)self->_motionSource stopDeviceMotionUpdates:v11];
        [(PRUISDeviceMotionProvider *)self resetReferenceAttitude];
        [(PRUISDeviceMotionProvider *)self setGeneratingMotionEvents:0];
      }
    }
  }

  v7[2](v7);
}

uint64_t __130__PRUISDeviceMotionProvider__motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel_invalidateLightSourceSubscription___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _invalidateLightSourceSubscription];
  }

  return result;
}

- (void)resetReferenceAttitude
{
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_resetReferenceAttitude];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)referenceAttitude
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_referenceAttitude;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReferenceAttitude:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_referenceAttitude = self->_lock_referenceAttitude;
  self->_lock_referenceAttitude = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGeneratingMotionEvents:(BOOL)a3
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_lock_isGeneratingMotionEvents = a3;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)isGeneratingMotionEvents
{
  os_unfair_lock_lock(&self->_lock);
  lock_isGeneratingMotionEvents = self->_lock_isGeneratingMotionEvents;
  os_unfair_lock_unlock(&self->_lock);
  return lock_isGeneratingMotionEvents;
}

- (void)_setActiveOrientation:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_activeOrientation != a3)
    {
      v5 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        lock_activeOrientation = self->_lock_activeOrientation;
        v9 = 134218240;
        v10 = lock_activeOrientation;
        v11 = 2048;
        v12 = a3;
        _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Active orientation changed from %lu to %lu, reseting reference attitude", &v9, 0x16u);
      }

      self->_lock_previousOrientation = self->_lock_activeOrientation;
      self->_lock_activeOrientation = a3;
      v7 = [MEMORY[0x1E695DF00] now];
      lock_activeOrientationChangedDate = self->_lock_activeOrientationChangedDate;
      self->_lock_activeOrientationChangedDate = v7;

      [(PRUISDeviceMotionProvider *)self _lock_resetReferenceAttitude];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)_activeOrientation
{
  os_unfair_lock_lock(&self->_lock);
  lock_activeOrientation = self->_lock_activeOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_activeOrientation;
}

- (int64_t)_previousOrientation
{
  os_unfair_lock_lock(&self->_lock);
  lock_previousOrientation = self->_lock_previousOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_previousOrientation;
}

- (id)_activeOrientationChangedDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_activeOrientationChangedDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setPreviousAttitudeQuaternion:(_OWORD *)a3
{
  os_unfair_lock_lock((a1 + 88));
  v5 = a3[1];
  *(a1 + 96) = *a3;
  *(a1 + 112) = v5;

  os_unfair_lock_unlock((a1 + 88));
}

- (void)_previousAttitudeQuaternion
{
  os_unfair_lock_lock((a1 + 88));
  v4 = *(a1 + 112);
  *a2 = *(a1 + 96);
  a2[1] = v4;

  os_unfair_lock_unlock((a1 + 88));
}

- (void)_setLightSourceSubscriptionActive:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_setLightSourceSubscriptionActive:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setLightSourceSubscriptionActive:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_lock_lightSourceSubscriptionActive != a3)
  {
    v3 = a3;
    v5 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Light source subscription is active: %{BOOL}u", v6, 8u);
    }

    self->_lock_lightSourceSubscriptionActive = v3;
  }
}

- (BOOL)_isLightSourceSubscriptionActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_lightSourceSubscriptionActive = self->_lock_lightSourceSubscriptionActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_lightSourceSubscriptionActive;
}

- (void)_setMotionActivityLevel:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_motionActivityLevel == a3)
    {

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v5 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (a3 > 2)
        {
          v6 = @"unknown";
        }

        else
        {
          v6 = off_1E83A73E0[a3];
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Motion activity level changed: %@", &v7, 0xCu);
      }

      self->_lock_motionActivityLevel = a3;
      os_unfair_lock_unlock(&self->_lock);
      [(PRUISDeviceMotionProvider *)self _motionProvider:self motionActivityLevelDidUpdate:a3];
    }
  }
}

- (int64_t)_motionActivityLevel
{
  os_unfair_lock_lock(&self->_lock);
  lock_motionActivityLevel = self->_lock_motionActivityLevel;
  os_unfair_lock_unlock(&self->_lock);
  return lock_motionActivityLevel;
}

- (id)_lightSourceSubscription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PRUISDeviceMotionProvider *)self __lock_lightSourceSubscription];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)__lock_lightSourceSubscription
{
  if ([(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment])
  {
    lock_lightSourceSubscription = self->_lock_lightSourceSubscription;
    if (!lock_lightSourceSubscription || [(PRUISLightSourceSubscription *)lock_lightSourceSubscription isInvalidated])
    {
      [(PRUISDeviceMotionProvider *)self _lock_invalidateLightSourceSubscription];
      [(PRUISDeviceMotionProvider *)self _lock_setLightSourceSubscriptionActive:0];
      objc_initWeak(&location, self);
      lock_lightSourceSubscriptionQueue = self->_lock_lightSourceSubscriptionQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PRUISDeviceMotionProvider___lock_lightSourceSubscription__block_invoke;
      v9[3] = &unk_1E83A7348;
      objc_copyWeak(&v10, &location);
      v5 = [PRUISLightSourceSubscription subscriberOnQueue:lock_lightSourceSubscriptionQueue activityLevelChangeHandler:v9];
      v6 = self->_lock_lightSourceSubscription;
      self->_lock_lightSourceSubscription = v5;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    v7 = self->_lock_lightSourceSubscription;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __59__PRUISDeviceMotionProvider___lock_lightSourceSubscription__block_invoke(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  v4 = a2 > 1;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [WeakRetained _setLightSourceSubscriptionActive:v4];
  [v6 _setMotionActivityLevel:v5];
}

- (void)_invalidateLightSourceSubscription
{
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_invalidateLightSourceSubscription];
  os_unfair_lock_unlock(&self->_lock);

  [(PRUISDeviceMotionProvider *)self _setLightSourceSubscriptionActive:0];
}

- (void)_lock_invalidateLightSourceSubscription
{
  lock_lightSourceSubscription = self->_lock_lightSourceSubscription;
  if (lock_lightSourceSubscription)
  {
    [(PRUISLightSourceSubscription *)lock_lightSourceSubscription invalidate];
    v4 = self->_lock_lightSourceSubscription;
    self->_lock_lightSourceSubscription = 0;
  }
}

- (void)_motionGenerationQueue_processDeviceMotion:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v5 = [v4 attitude];

  if (![(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment])
  {
    v23 = [(PRUISDeviceMotionProvider *)self referenceAttitude];
    [v5 multiplyByInverseOfAttitude:v23];

    [v5 quaternion];
    v25.f64[1] = v24;
    v27.f64[1] = v26;
    v81 = v27;
    v83 = v25;
    goto LABEL_7;
  }

  v6 = CACurrentMediaTime() + -0.045;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(PRUISDeviceMotionProvider *)self __lock_lightSourceSubscription];
  v8 = [v7 lightSourceOrientationQuaternionForTimestamp:v6];
  os_unfair_lock_unlock(&self->_lock);
  [v8 timestamp];
  if ([PRUISDeviceMotionProvider _isTimestamp:"_isTimestamp:almostEqualToTimestamp:withinThreshold:" almostEqualToTimestamp:? withinThreshold:?])
  {
    [v8 orientation];
    v10.f64[1] = v9;
    v12.f64[1] = v11;
    v80 = v10;
    v82 = v12;
    [v5 quaternion];
    v76 = v13;
    v77 = v14;
    *(&v13 + 1) = v14;
    v74 = v15;
    v75 = v16;
    *&v15.f64[1] = v16;
    v78 = v15;
    v79 = v13;
    v17 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      buf[0].n128_u32[0] = 134218752;
      *(buf[0].n128_u64 + 4) = *&v74.f64[0];
      buf[0].n128_u16[6] = 2048;
      *(&buf[0].n128_u64[1] + 6) = v75;
      buf[1].n128_u16[3] = 2048;
      buf[1].n128_u64[1] = v76;
      v88 = 2048;
      v89 = v77;
      _os_log_debug_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEBUG, "Device motion attitude: x: %f, y: %f, z: %f, w: %f", buf, 0x2Au);
    }

    v18 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(v82, v82), vmulq_f64(v80, v80)));
    v19 = vmulq_n_f64(vmulq_f64(v80, xmmword_1CAF024C0), v18);
    v20 = vmulq_n_f64(vnegq_f64(v82), v18);
    v21 = vnegq_f64(v78);
    v22 = vextq_s8(v79, vnegq_f64(v79), 8uLL);
    v81 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v79, v20, 1), v22, v20.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v78, v19, 1), vextq_s8(v21, v78, 8uLL), v19.f64[0]));
    v83 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v21, v20, 1), vextq_s8(v78, v21, 8uLL), v20.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v79, v19, 1), v22, v19.f64[0]));

LABEL_7:
    v28 = [MEMORY[0x1E698E730] sharedInstance];
    v29 = [v28 deviceClass];

    if (v29 != 2)
    {
LABEL_24:
      buf[0] = v81;
      buf[1] = v83;
      [(PRUISDeviceMotionProvider *)self _setPreviousAttitudeQuaternion:buf];
      buf[0] = v81;
      buf[1] = v83;
      [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_motionProvider:self motionDidUpdateWithRotation:buf];
      goto LABEL_25;
    }

    v30 = [(PRUISDeviceMotionProvider *)self _activeOrientation];
    switch(v30)
    {
      case 2:
        v58 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF024D0, v81, 1), xmmword_1CAF024F0, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(vnegq_f64(0), v83, 1), xmmword_1CAF02500, v83.f64[0]));
        v59 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(0, v81, 1), xmmword_1CAF024E0, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF024D0, v83, 1), xmmword_1CAF024F0, v83.f64[0]));
        v60 = vnegq_f64(v58);
        v61 = vextq_s8(v59, vnegq_f64(v59), 8uLL);
        v49 = vmlaq_f64(vmulq_f64(v59, 0), 0, v61);
        v50 = vmlaq_f64(vmulq_f64(v60, 0), 0, vextq_s8(v58, v60, 8uLL));
        v62 = vextq_s8(v60, v58, 8uLL);
        v63 = vdupq_n_s64(0x3C91A62633145C07uLL);
        v56 = vaddq_f64(v62, vmulq_f64(v58, v63));
        v57 = vaddq_f64(v61, vmulq_f64(v59, v63));
        break;
      case 3:
        v45 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02510, v81, 1), xmmword_1CAF02520, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(vnegq_f64(0), v83, 1), xmmword_1CAF02500, v83.f64[0]));
        v46 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(0, v81, 1), xmmword_1CAF024E0, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02510, v83, 1), xmmword_1CAF02520, v83.f64[0]));
        v47 = vnegq_f64(v45);
        v48 = vextq_s8(v46, vnegq_f64(v46), 8uLL);
        v49 = vmlaq_f64(vmulq_f64(v46, 0), 0, v48);
        v50 = vmlaq_f64(vmulq_f64(v47, 0), 0, vextq_s8(v45, v47, 8uLL));
        v51 = vextq_s8(v47, v45, 8uLL);
        v52 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
        v53 = vmulq_f64(v46, v52);
        v54 = vmulq_f64(v45, v52);
        v55 = vdupq_n_s64(0x3FE6A09E667F3BCCuLL);
        v56 = vmlaq_f64(v54, v55, v51);
        v57 = vmlaq_f64(v53, v55, v48);
        break;
      case 4:
        v31 = vnegq_f64(0);
        v32 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02530, v81, 1), xmmword_1CAF02540, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(0, v83, 1), xmmword_1CAF024E0, v83.f64[0]));
        v33 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v31, v81, 1), xmmword_1CAF02500, v81.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02530, v83, 1), xmmword_1CAF02540, v83.f64[0]));
        v34 = vnegq_f64(v32);
        v35 = vextq_s8(v33, vnegq_f64(v33), 8uLL);
        v36 = vmlsq_f64(vmulq_f64(v33, v31), v35, 0);
        v37 = vmlsq_f64(vmulq_f64(v32, 0), vextq_s8(v32, v34, 8uLL), 0);
        v38 = vextq_s8(v34, v32, 8uLL);
        v39 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
        v40 = vmulq_f64(v33, v39);
        v41 = vmulq_f64(v32, v39);
        v42 = vdupq_n_s64(0xBFE6A09E667F3BCCLL);
        v83 = vaddq_f64(vmlaq_f64(v40, v42, v35), v37);
        v43 = vaddq_f64(vmlaq_f64(v41, v42, v38), v36);
LABEL_18:
        v81 = v43;
        goto LABEL_19;
      default:
LABEL_19:
        if ([(PRUISDeviceMotionProvider *)self _previousOrientation])
        {
          v64 = [(PRUISDeviceMotionProvider *)self _activeOrientationChangedDate];
          [v64 timeIntervalSinceNow];
          v66 = fabs(v65);

          if (v66 < 1.0)
          {
            memset(buf, 0, sizeof(buf));
            [(PRUISDeviceMotionProvider *)self _previousAttitudeQuaternion];
            v67 = PRUISLogMotionEvents();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              [(PRUISDeviceMotionProvider *)buf _motionGenerationQueue_processDeviceMotion:v67, v68, v69, v70, v71, v72, v73];
            }

            v85[0] = buf[0];
            v85[1] = buf[1];
            v84[0] = v81;
            v84[1] = v83;
            simd_slerp(v85, v84, v86, v66);
            v81 = v86[0];
            v83 = v86[1];
          }
        }

        goto LABEL_24;
    }

    v83 = vaddq_f64(v57, v50);
    v43 = vaddq_f64(v56, v49);
    goto LABEL_18;
  }

  v44 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    [PRUISDeviceMotionProvider _motionGenerationQueue_processDeviceMotion:];
  }

LABEL_25:
}

- (void)_motionProvider:(void *)a3 motionDidUpdateWithRotation:(__int128 *)a4
{
  v6 = a3;
  v7 = *(a1 + 80);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PRUISDeviceMotionProvider__motionProvider_motionDidUpdateWithRotation___block_invoke;
  v10[3] = &unk_1E83A7370;
  v13 = a1;
  v14 = v6;
  v8 = a4[1];
  v11 = *a4;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __73__PRUISDeviceMotionProvider__motionProvider_motionDidUpdateWithRotation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [v2 _motionGenerationQueue_motionProvider:v1 motionDidUpdateWithRotation:v5];
}

- (void)_motionGenerationQueue_motionProvider:(void *)a3 motionDidUpdateWithRotation:(uint64_t)a4
{
  v6 = a3;
  BSDispatchQueueAssert();
  os_unfair_lock_lock((a1 + 88));
  v7 = *(a4 + 16);
  *(a1 + 160) = *a4;
  *(a1 + 176) = v7;
  os_unfair_lock_unlock((a1 + 88));
  WeakRetained = objc_loadWeakRetained((a1 + 224));
  v9 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(PRUISDeviceMotionProvider *)a4 _motionGenerationQueue_motionProvider:v9 motionDidUpdateWithRotation:v10, v11, v12, v13, v14, v15];
  }

  v16 = *(a4 + 16);
  v17[0] = *a4;
  v17[1] = v16;
  [WeakRetained motionProvider:v6 motionDidUpdateWithRotation:v17];
}

- (void)_motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4
{
  v6 = a3;
  motionGenerationQueue = self->_motionGenerationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PRUISDeviceMotionProvider__motionProvider_motionActivityLevelDidUpdate___block_invoke;
  block[3] = &unk_1E83A7398;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(motionGenerationQueue, block);
}

- (void)_motionGenerationQueue_motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4
{
  v6 = a3;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained motionProvider:v6 motionActivityLevelDidUpdate:a4];
}

- (void)_motionGenerationQueue_startDampeningToZeroFromRotation:(__int128 *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  [a1 _motionGenerationQueue_cancelDampeningTimer];
  os_unfair_lock_lock((a1 + 88));
  if (*(a1 + 144) == 1)
  {

    os_unfair_lock_unlock((a1 + 88));
  }

  else
  {
    *(a1 + 144) = 1;
    *(a1 + 200) = 0x3FF0000000000000;
    os_unfair_lock_unlock((a1 + 88));
    v5 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 208);
      *buf = 134217984;
      v18 = v6;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Starting dampening motion to zero over %f seconds", buf, 0xCu);
    }

    v7 = *(a1 + 232);
    v8 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"PRUISDeviceMotionProvider.dampening"];
    v9 = *(a1 + 192);
    *(a1 + 192) = v8;

    objc_initWeak(buf, a1);
    v10 = *(a1 + 192);
    v11 = *(a1 + 80);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PRUISDeviceMotionProvider__motionGenerationQueue_startDampeningToZeroFromRotation___block_invoke;
    v13[3] = &unk_1E83A73C0;
    objc_copyWeak(v16, buf);
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    [v10 scheduleRepeatingWithFireInterval:v11 repeatInterval:v13 leewayInterval:v7 queue:v7 handler:v7 * 0.1];
    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }
}

void __85__PRUISDeviceMotionProvider__motionGenerationQueue_startDampeningToZeroFromRotation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v5[0] = *(a1 + 32);
    v5[1] = v4;
    [WeakRetained _motionGenerationQueue_processDampeningStep:v5];
  }
}

- (void)_motionGenerationQueue_processDampeningStep:(float64x2_t *)a3
{
  BSDispatchQueueAssert();
  os_unfair_lock_lock((a1 + 88));
  if (*(a1 + 144))
  {
    v5 = *(a1 + 200) - *(a1 + 232) / *(a1 + 208);
    *(a1 + 200) = v5;
    if (v5 <= 0.0)
    {
      *(a1 + 200) = 0;
      *(a1 + 144) = 0;
      os_unfair_lock_unlock((a1 + 88));
      v15 = _simd_cos_d2(0);
      v16 = _simd_cos_d2(0);
      v14 = _simd_sin_d2(0);
      v8 = _simd_sin_d2(0);
      v9.f64[0] = v16.f64[0];
      v9.f64[1] = v14.f64[1];
      v10 = vdupq_lane_s64(*&v8.f64[0], 0);
      v11 = vzip1q_s64(v8, v15);
      v8.f64[1] = v15.f64[1];
      v12.f64[1] = v10.f64[1];
      v12.f64[0] = -v14.f64[0];
      v10.f64[0] = -v15.f64[0];
      *buf = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(v14, v14, 8uLL), v8), v10), vzip1q_s64(v14, v16), vmulq_f64(vextq_s8(v15, v15, 8uLL), v9));
      v20 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, v14, 1), vzip1q_s64(v16, v14)), v11, vmulq_f64(v15, vextq_s8(v15, v16, 8uLL)));
      [a1 _motionGenerationQueue_motionProvider:a1 motionDidUpdateWithRotation:buf];
      [a1 _motionGenerationQueue_cancelDampeningTimer];
      v13 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "Dampening complete - reached zero rotation", buf, 2u);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 88));
      v6 = pow(1.0 - v5, 3.0);
      *buf = 0u;
      v20 = 0u;
      v7 = a3[1];
      v17 = *a3;
      v18 = v7;
      [a1 _scaleRotation:&v17 byFactor:(1.0 - v6)];
      v17 = *buf;
      v18 = v20;
      [a1 _motionGenerationQueue_motionProvider:a1 motionDidUpdateWithRotation:&v17];
    }
  }

  else
  {

    os_unfair_lock_unlock((a1 + 88));
  }
}

- (float64_t)_scaleRotation:(double)a3@<D0> byFactor:
{
  v4 = *a1;
  v5 = a1[1];
  v10 = 0u;
  v11 = 0u;
  v9[0] = 0uLL;
  v9[1] = xmmword_1CAF02550;
  v8[0] = v4;
  v8[1] = v5;
  simd_slerp(v9, v8, &v10, a3);
  result = v10.f64[0];
  v7 = v11;
  *a2 = v10;
  *(a2 + 16) = v7;
  return result;
}

- (void)_cancelDampeningTimer
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PRUISDeviceMotionProvider__cancelDampeningTimer__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PRUISDeviceMotionProvider__cancelDampeningTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_cancelDampeningTimer];
}

- (void)_motionGenerationQueue_cancelDampeningTimer
{
  BSDispatchQueueAssert();
  dampeningTimer = self->_dampeningTimer;
  if (dampeningTimer)
  {
    [(BSAbsoluteMachTimer *)dampeningTimer invalidate];
    v4 = self->_dampeningTimer;
    self->_dampeningTimer = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_isDampening = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  BSDispatchQueueAssertNot();
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {

    [(PRUISDeviceMotionProvider *)self _stopGeneratingMotionEventsRightNow];
  }
}

- (PRUISDeviceMotionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Error while receiving motion updates: %@", &v2, 0xCu);
}

- (void)_motionGenerationQueue_processDeviceMotion:(uint64_t)a3 .cold.2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(a1[1].n128_f64[0], *a1, a1, a2, a3, a4, a5, a6, a7, a8, v13);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

- (void)_motionGenerationQueue_motionProvider:(uint64_t)a3 motionDidUpdateWithRotation:(uint64_t)a4 .cold.1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(a1[1].n128_f64[0], *a1, a1, a2, a3, a4, a5, a6, a7, a8, v13);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

@end