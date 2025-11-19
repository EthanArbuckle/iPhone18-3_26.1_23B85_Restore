@interface PRUISDeviceMotionController
+ (id)_sbUserDefaults;
- (BOOL)isGeneratingMotionEvents;
- (PRUISDeviceMotionController)init;
- (PRUISDeviceMotionController)initWithMotionProvider:(id)a3;
- (PRUISDeviceMotionControllerDelegate)delegate;
- (double)updateMotionUpdateInterval:(double)a3 reason:(int64_t)a4;
- (int64_t)deviceMotionActivityLevel;
- (void)_lowPowerModeDidChange:(id)a3;
- (void)_queue_pauseGeneratingMotionEvents;
- (void)_queue_setDeviceMotionActivityLevel:(int64_t)a3;
- (void)_queue_startGeneratingMotionEvents;
- (void)_queue_stopGeneratingMotionEvents;
- (void)_reduceMotionStatusDidChange:(id)a3;
- (void)dealloc;
- (void)deviceMotionDisableAssertionManager:(id)a3 didDisableDeviceMotion:(BOOL)a4;
- (void)invalidate;
- (void)motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4;
- (void)motionProvider:(uint64_t)a3 motionDidUpdateWithRotation:(_OWORD *)a4;
- (void)setDeviceMotionActivityLevel:(int64_t)a3;
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)startGeneratingMotionEvents;
- (void)stopGeneratingMotionEvents;
@end

@implementation PRUISDeviceMotionController

+ (id)_sbUserDefaults
{
  if (_sbUserDefaults_onceToken != -1)
  {
    +[PRUISDeviceMotionController _sbUserDefaults];
  }

  v3 = _sbUserDefaults_sbUserDefaults;

  return v3;
}

uint64_t __46__PRUISDeviceMotionController__sbUserDefaults__block_invoke()
{
  _sbUserDefaults_sbUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

  return MEMORY[0x1EEE66BB8]();
}

- (PRUISDeviceMotionController)init
{
  v3 = [objc_opt_class() _sbUserDefaults];
  v4 = [v3 BOOLForKey:@"SBDeviceMotionTesting"];

  v5 = off_1E83A6598;
  if (!v4)
  {
    v5 = off_1E83A63D0;
  }

  v6 = [(__objc2_class *)*v5 motionProvider];
  v7 = [(PRUISDeviceMotionController *)self initWithMotionProvider:v6];

  return v7;
}

- (PRUISDeviceMotionController)initWithMotionProvider:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PRUISDeviceMotionController;
  v6 = [(PRUISDeviceMotionController *)&v19 init];
  if (v6)
  {
    v7 = objc_opt_new();
    invalidationSignal = v6->_invalidationSignal;
    v6->_invalidationSignal = v7;

    objc_storeStrong(&v6->_motionProvider, a3);
    [(PRUISDeviceMotionProviding *)v6->_motionProvider setDelegate:v6];
    v9 = objc_alloc_init(PRUISDeviceMotionSettings);
    deviceMotionSettings = v6->_deviceMotionSettings;
    v6->_deviceMotionSettings = v9;

    [(PRUISDeviceMotionSettings *)v6->_deviceMotionSettings setReducedMotionEnabled:UIAccessibilityIsReduceMotionEnabled()];
    v11 = v6->_deviceMotionSettings;
    v12 = [MEMORY[0x1E696AE30] processInfo];
    -[PRUISDeviceMotionSettings setLowPowerModeEnabled:](v11, "setLowPowerModeEnabled:", [v12 isLowPowerModeEnabled]);

    [(PRUISDeviceMotionSettings *)v6->_deviceMotionSettings setSignificantMotion:1];
    [(PRUISDeviceMotionSettings *)v6->_deviceMotionSettings setDeviceMotionMode:1];
    v6->_lock_deviceMotionActivityLevel = 0;
    v13 = +[PRUISDeviceMotionDisablementAssertionManager sharedInstance];
    disableAssertionManager = v6->_disableAssertionManager;
    v6->_disableAssertionManager = v13;

    [(PRUISDeviceMotionDisablementAssertionManager *)v6->_disableAssertionManager addObserver:v6];
    v6->_lock._os_unfair_lock_opaque = 0;
    v15 = dispatch_queue_create("com.apple.PosterBoardUIServices.PRUISDeviceMotionController", 0);
    motionControlQueue = v6->_motionControlQueue;
    v6->_motionControlQueue = v15;

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v6 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x1E69DD918] object:0];
    [v17 addObserver:v6 selector:sel__lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  [(PRUISDeviceMotionController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISDeviceMotionController;
  [(PRUISDeviceMotionController *)&v3 dealloc];
}

- (BOOL)isGeneratingMotionEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionControlQueue = self->_motionControlQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PRUISDeviceMotionController_isGeneratingMotionEvents__block_invoke;
  v5[3] = &unk_1E83A7800;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(motionControlQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDeviceMotionActivityLevel:(int64_t)a3
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    motionControlQueue = self->_motionControlQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PRUISDeviceMotionController_setDeviceMotionActivityLevel___block_invoke;
    v6[3] = &unk_1E83A7828;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(motionControlQueue, v6);
  }
}

- (void)_queue_setDeviceMotionActivityLevel:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_deviceMotionActivityLevel != a3)
    {
      v5 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PRUISStringFromDeviceMotionActivityLevel(self->_lock_deviceMotionActivityLevel);
        v7 = PRUISStringFromDeviceMotionActivityLevel(a3);
        v8 = 138412546;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Device motion activity level updated from %@ to %@", &v8, 0x16u);
      }

      self->_lock_deviceMotionActivityLevel = a3;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (a3 == 2)
    {
      [(PRUISDeviceMotionController *)self _queue_startGeneratingMotionEvents];
    }

    else if (a3 == 1)
    {
      [(PRUISDeviceMotionController *)self _queue_pauseGeneratingMotionEvents];
    }
  }
}

- (int64_t)deviceMotionActivityLevel
{
  os_unfair_lock_lock(&self->_lock);
  lock_deviceMotionActivityLevel = self->_lock_deviceMotionActivityLevel;
  os_unfair_lock_unlock(&self->_lock);
  return lock_deviceMotionActivityLevel;
}

- (void)startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    motionControlQueue = self->_motionControlQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PRUISDeviceMotionController_startGeneratingMotionEvents__block_invoke;
    block[3] = &unk_1E83A72F8;
    block[4] = self;
    dispatch_sync(motionControlQueue, block);
  }
}

- (void)_queue_startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    if ([(PRUISDeviceMotionDisablementAssertionManager *)self->_disableAssertionManager isDeviceMotionDisabled])
    {
      v3 = PRUISLogMotionEvents();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        return;
      }

      *buf = 0;
      v4 = "Can't start motion generation because device motion updates are currently disabled.";
      v5 = buf;
LABEL_5:
      _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_6;
    }

    if (!self->_queue_isGeneratingMotionEvents)
    {
      if (![(PRUISDeviceMotionProviding *)self->_motionProvider areMotionEventsAvailable])
      {
        v3 = PRUISLogMotionEvents();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v6 = 0;
        v4 = "Device motion updates are not available.";
        v5 = &v6;
        goto LABEL_5;
      }

      [(PRUISDeviceMotionProviding *)self->_motionProvider startGeneratingMotionEvents];
      self->_queue_isGeneratingMotionEvents = 1;
    }
  }
}

- (void)stopGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    motionControlQueue = self->_motionControlQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PRUISDeviceMotionController_stopGeneratingMotionEvents__block_invoke;
    block[3] = &unk_1E83A72F8;
    block[4] = self;
    dispatch_sync(motionControlQueue, block);
  }
}

- (void)_queue_stopGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    [(PRUISDeviceMotionProviding *)self->_motionProvider stopGeneratingMotionEvents];
    self->_queue_isGeneratingMotionEvents = 0;
  }
}

- (void)_queue_pauseGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    [(PRUISDeviceMotionProviding *)self->_motionProvider pauseGeneratingMotionEvents];
    self->_queue_isGeneratingMotionEvents = 0;
  }
}

- (double)updateMotionUpdateInterval:(double)a3 reason:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled];
  result = -1.0;
  if ((v7 & 1) == 0)
  {
    [(PRUISDeviceMotionProviding *)self->_motionProvider motionUpdateInterval];
    v10 = v9;
    v11 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E83A7848[a4];
      }

      v16 = 134218498;
      v17 = v10;
      v18 = 2048;
      v19 = a3;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "Current device motion update interval is %f (s). Attempting to update to %f (s) for reason: %@", &v16, 0x20u);
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (a3 < 0.0083 || a3 > 0.0333)
        {
          v13 = PRUISLogMotionEvents();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [PRUISDeviceMotionController updateMotionUpdateInterval:reason:];
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (a4 != 2)
        {
LABEL_21:
          v14 = PRUISLogMotionEvents();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(PRUISDeviceMotionController *)a4 updateMotionUpdateInterval:v14 reason:a3];
          }

          a3 = v10;
LABEL_24:

          return a3;
        }

        if (a3 < 0.0083 || a3 > 0.0333)
        {
          v13 = PRUISLogMotionEvents();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [PRUISDeviceMotionController updateMotionUpdateInterval:reason:];
          }

LABEL_20:

          goto LABEL_21;
        }
      }
    }

    [(PRUISDeviceMotionProviding *)self->_motionProvider setMotionUpdateInterval:a3];
    v14 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = off_1E83A7848[a4];
      v16 = 134218242;
      v17 = a3;
      v18 = 2112;
      v19 = *&v15;
      _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "Device motion update interval is updated to %f for reason: %@", &v16, 0x16u);
    }

    goto LABEL_24;
  }

  return result;
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  if ([(PRUISDeviceMotionSettings *)self->_deviceMotionSettings deviceMotionMode]!= a3)
  {
    [(PRUISDeviceMotionSettings *)self->_deviceMotionSettings setDeviceMotionMode:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained deviceMotionControllerDidUpdateDeviceMotionSettings:self];
    }
  }
}

- (void)motionProvider:(uint64_t)a3 motionDidUpdateWithRotation:(_OWORD *)a4
{
  if (([*(a1 + 40) hasBeenSignalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = a4[1];
    v8[0] = *a4;
    v8[1] = v7;
    [WeakRetained deviceMotionController:a1 didUpdateMotionWithRotation:v8];
  }
}

- (void)motionProvider:(id)a3 motionActivityLevelDidUpdate:(int64_t)a4
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {

    [(PRUISDeviceMotionController *)self setDeviceMotionActivityLevel:a4];
  }
}

- (void)_reduceMotionStatusDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v4 = [(PRUISDeviceMotionSettings *)self->_deviceMotionSettings isReducedMotionEnabled];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    if (v4 != IsReduceMotionEnabled)
    {
      v6 = IsReduceMotionEnabled;
      v7 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Reduced motion enabled: %{BOOL}u", v9, 8u);
      }

      [(PRUISDeviceMotionSettings *)self->_deviceMotionSettings setReducedMotionEnabled:v6];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained deviceMotionControllerDidUpdateDeviceMotionSettings:self];
      }
    }
  }
}

- (void)_lowPowerModeDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v4 = [(PRUISDeviceMotionSettings *)self->_deviceMotionSettings isLowPowerModeEnabled];
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 isLowPowerModeEnabled];

    if (v4 != v6)
    {
      v7 = PRUISLogMotionEvents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Low Power mode enabled: %{BOOL}u", v9, 8u);
      }

      [(PRUISDeviceMotionSettings *)self->_deviceMotionSettings setLowPowerModeEnabled:v6];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained deviceMotionControllerDidUpdateDeviceMotionSettings:self];
      }
    }
  }
}

- (void)deviceMotionDisableAssertionManager:(id)a3 didDisableDeviceMotion:(BOOL)a4
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchMain();
  }
}

uint64_t __90__PRUISDeviceMotionController_deviceMotionDisableAssertionManager_didDisableDeviceMotion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = PRUISLogMotionEvents();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "Stopping generating device motion events because of assertion state", buf, 2u);
    }

    return [*(a1 + 32) stopGeneratingMotionEvents];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "Starting generating device motion events because of assertion state", v6, 2u);
    }

    return [*(a1 + 32) startGeneratingMotionEvents];
  }
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    [(PRUISDeviceMotionController *)self stopGeneratingMotionEvents];
    disableAssertionManager = self->_disableAssertionManager;
    if (disableAssertionManager)
    {
      [(PRUISDeviceMotionDisablementAssertionManager *)disableAssertionManager removeObserver:self];
      v4 = self->_disableAssertionManager;
      self->_disableAssertionManager = 0;
    }

    motionControlQueue = self->_motionControlQueue;
    self->_motionControlQueue = 0;

    if (objc_opt_respondsToSelector())
    {
      [(PRUISDeviceMotionProviding *)self->_motionProvider invalidate];
    }

    motionProvider = self->_motionProvider;
    self->_motionProvider = 0;
  }
}

- (PRUISDeviceMotionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateMotionUpdateInterval:reason:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_ERROR, "Preferred motion update interval (%f) can't be set. Motion update interval range for %@ is %f-%f (s)", v1, 0x2Au);
}

- (void)updateMotionUpdateInterval:reason:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_ERROR, "Preferred motion update interval (%f) can't be set. Motion update interval range for %@ is %f-%f (s)", v1, 0x2Au);
}

- (void)updateMotionUpdateInterval:(double)a3 reason:.cold.3(unint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E83A7848[a1];
  }

  v4 = 134218242;
  v5 = a3;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Device motion update interval can't be updated to %f for reason: %@", &v4, 0x16u);
}

@end