@interface SBUIFlashlightController
+ (id)sharedInstance;
- (BOOL)deviceSupportsDynamicFlashlightInterface;
- (SBUIFlashlightController)init;
- (SBUIFlashlightController)initWithFlashlight:(id)flashlight;
- (int)_hasRunningFlashlightAnimation;
- (unint64_t)_loadFlashlightLevel;
- (unint64_t)level;
- (void)_applyPowerChange:(unint64_t)change;
- (void)_beginFlashlightAnimation;
- (void)_endFlashlightAnimation;
- (void)_loadFlashlightIntensity:(float *)intensity width:(float *)width;
- (void)_postLevelChangeNotification:(unint64_t)notification;
- (void)_setFlashlightBeamWidth:(float)width;
- (void)_setFlashlightLevel:(float)level;
- (void)_setIntensity:(double)intensity width:(double)width animated:(BOOL)animated withPowerChange:(unint64_t)change;
- (void)_storeFlashlightLevel:(unint64_t)level;
- (void)_turnPowerOff;
- (void)_turnPowerOn;
- (void)_updateLevelForIntensityChange;
- (void)_updateObservedBeamWidth:(float)width;
- (void)_updateObservedFlashlightLevel:(float)level;
- (void)addObserver:(id)observer;
- (void)coolDown;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLevel:(unint64_t)level;
- (void)storeFlashlightIntensity:(float)intensity width:(float)width;
- (void)turnFlashlightOffForReason:(id)reason withCoolDown:(BOOL)down;
- (void)turnFlashlightOnForReason:(id)reason;
- (void)warmUp;
@end

@implementation SBUIFlashlightController

- (void)_updateLevelForIntensityChange
{
  intensity = self->_intensity;
  if (intensity == 0.0)
  {
    v4 = 0;
  }

  else if (intensity >= 0.5)
  {
    v5 = 4;
    if (intensity < 1.0)
    {
      v5 = 3;
    }

    if (intensity >= 0.85)
    {
      v4 = v5;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  if (self->_level != v4)
  {
    self->_level = v4;
    [(SBUIFlashlightController *)self _postLevelChangeNotification:v4];
    if (!self->_dynamicInterfaceEnabled)
    {

      [(SBUIFlashlightController *)self _storeFlashlightLevel:v4];
    }
  }
}

- (void)_turnPowerOff
{
  [(SBUIFlashlightController *)self _setFlashlightLevel:0.0];
  flashlightQueue = self->_flashlightQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SBUIFlashlightController__turnPowerOff__block_invoke;
  block[3] = &unk_27836AFB0;
  block[4] = self;
  dispatch_async(flashlightQueue, block);
}

- (unint64_t)level
{
  intensity = self->_intensity;
  if (intensity == 0.0)
  {
    return 0;
  }

  if (intensity < 0.5)
  {
    return 1;
  }

  if (intensity < 0.85)
  {
    return 2;
  }

  if (intensity >= 1.0)
  {
    return 4;
  }

  return 3;
}

uint64_t __41__SBUIFlashlightController__turnPowerOff__block_invoke(uint64_t a1)
{
  v2 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v2, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Power Off", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) turnPowerOff];
}

- (void)coolDown
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] coolDown", v4, 2u);
  }

  if (self->_intensity <= 0.0)
  {
    if (self->_pendingPowerChange)
    {
      self->_pendingPowerChange = 2;
    }

    else
    {
      [(SBUIFlashlightController *)self _turnPowerOff];
    }
  }

  else
  {
    [(SBUIFlashlightController *)self _setIntensity:0 width:2 animated:0.0 withPowerChange:self->_width];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBUIFlashlightController sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

- (BOOL)deviceSupportsDynamicFlashlightInterface
{
  v2 = SBSIsSystemApertureAvailable();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282203478]("SpringBoard", "DynamicFlashlight");
  }

  return v2;
}

- (void)dealloc
{
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"available"];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"overheated"];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"flashlightLevel"];
  if (self->_beamWidthSupported)
  {
    [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"beamWidth"];
  }

  v3.receiver = self;
  v3.super_class = SBUIFlashlightController;
  [(SBUIFlashlightController *)&v3 dealloc];
}

- (SBUIFlashlightController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CE5B78]);
  v4 = [(SBUIFlashlightController *)self initWithFlashlight:v3];

  return v4;
}

- (SBUIFlashlightController)initWithFlashlight:(id)flashlight
{
  v43[1] = *MEMORY[0x277D85DE8];
  flashlightCopy = flashlight;
  v42.receiver = self;
  v42.super_class = SBUIFlashlightController;
  v6 = [(SBUIFlashlightController *)&v42 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  *&v6->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v6->_flashlight, flashlight);
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"available" options:1 context:0];
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"overheated" options:1 context:0];
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"flashlightLevel" options:1 context:0];
  v7->_overheated = [(AVFlashlight *)v7->_flashlight isOverheated];
  if ([(AVFlashlight *)v7->_flashlight isAvailable])
  {
    v8 = !v7->_overheated;
  }

  else
  {
    v8 = 0;
  }

  v7->_available = v8;
  [(AVFlashlight *)v7->_flashlight flashlightLevel];
  v7->_intensity = v9;
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else if (v9 >= 0.5)
  {
    v10 = 2;
    v11 = 4;
    if (v9 < 1.0)
    {
      v11 = 3;
    }

    if (v9 >= 0.85)
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = 1;
  }

  v7->_level = v10;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

  v14 = dispatch_queue_create("com.apple.ControlCenter.FlashlightModule.AVFlashlight", v13);
  flashlightQueue = v7->_flashlightQueue;
  v7->_flashlightQueue = v14;

  if (!CCUILogFlashlightModule)
  {
    v16 = os_log_create("com.apple.ControlCenter", "Flashlight");
    v17 = CCUILogFlashlightModule;
    CCUILogFlashlightModule = v16;
  }

  if (![(SBUIFlashlightController *)v7 deviceSupportsDynamicFlashlightInterface])
  {
    p_beamWidthSupported = &v7->_beamWidthSupported;
LABEL_21:
    *p_beamWidthSupported = 0;
    goto LABEL_22;
  }

  beamWidthControlSupported = [(AVFlashlight *)v7->_flashlight beamWidthControlSupported];
  v7->_beamWidthSupported = beamWidthControlSupported;
  p_beamWidthSupported = &v7->_beamWidthSupported;
  if (beamWidthControlSupported)
  {
    [(AVFlashlight *)v7->_flashlight minBeamWidth];
    v7->_minBeamWidth = v20;
    [(AVFlashlight *)v7->_flashlight maxBeamWidth];
    v7->_maxBeamWidth = v21;
    if (v21 != v7->_minBeamWidth)
    {
      [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"beamWidth" options:1 context:0];
      [(AVFlashlight *)v7->_flashlight beamWidth];
      v23 = v22;
      v24 = fmax(fmin((v22 - v7->_minBeamWidth) / (v7->_maxBeamWidth - v7->_minBeamWidth), 1.0), 0.0);
      v7->_width = v24;
      if (v7->_beamWidthSupported)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_22:
  *&v7->_minBeamWidth = 0x3F80000000000000;
  v7->_width = 1.0;
  v23 = 1.0;
LABEL_23:
  deviceSupportsDynamicFlashlightInterface = [(SBUIFlashlightController *)v7 deviceSupportsDynamicFlashlightInterface];
  v7->_dynamicInterfaceEnabled = deviceSupportsDynamicFlashlightInterface;
  if (deviceSupportsDynamicFlashlightInterface)
  {
    v26 = [MEMORY[0x277D75D48] behaviorWithDampingRatio:1.0 response:0.3];
    springBehavior = v7->_springBehavior;
    v7->_springBehavior = v26;

    v28 = [objc_alloc(MEMORY[0x277D75D50]) initWithLength:2];
    animatableProperties = v7->_animatableProperties;
    v7->_animatableProperties = v28;

    v30 = v7->_animatableProperties;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __47__SBUIFlashlightController_initWithFlashlight___block_invoke;
    v39[3] = &unk_27836B398;
    v31 = v7;
    v40 = v31;
    v41 = v23;
    [(UIViewVectorAnimatableProperty *)v30 _mutateValue:v39];
    objc_initWeak(&location, v31);
    v32 = MEMORY[0x277D75D18];
    v43[0] = v7->_animatableProperties;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__SBUIFlashlightController_initWithFlashlight___block_invoke_2;
    v36[3] = &unk_27836B3C0;
    objc_copyWeak(&v37, &location);
    [v32 _createTransformerWithInputAnimatableProperties:v33 presentationValueChangedCallback:v36];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

LABEL_26:
  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

double __47__SBUIFlashlightController_initWithFlashlight___block_invoke(uint64_t a1, double *a2)
{
  result = *(*(a1 + 32) + 108);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void __47__SBUIFlashlightController_initWithFlashlight___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained[9] _presentationValue];
    v3 = *v2;
    *&v3 = *v2;
    [v5 _setFlashlightLevel:v3];
    v4 = *(v2 + 8);
    *&v4 = v4;
    [v5 _setFlashlightBeamWidth:v4];
    WeakRetained = v5;
  }
}

uint64_t __42__SBUIFlashlightController_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__instance;
  sharedInstance__instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)turnFlashlightOnForReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  intensity = self->_intensity;
  v6 = CCUILogFlashlightModule;
  v7 = os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT);
  if (intensity <= 0.0)
  {
    if (v7)
    {
      *buf = 5.7779e-34;
      v11 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v6, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] turnFlashlightOnForReason: %@", buf, 0xCu);
    }

    if (self->_dynamicInterfaceEnabled)
    {
      v9 = 0.0;
      *buf = 0.0;
      [(SBUIFlashlightController *)self _loadFlashlightIntensity:buf width:&v9];
      [(SBUIFlashlightController *)self _setIntensity:1 width:0 animated:*buf withPowerChange:v9];
    }

    else
    {
      [(SBUIFlashlightController *)self setLevel:[(SBUIFlashlightController *)self _loadFlashlightLevel]];
    }
  }

  else if (v7)
  {
    *buf = 5.7779e-34;
    v11 = reasonCopy;
    _os_log_impl(&dword_21E74E000, v6, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Already turned on, got redundant request: %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)turnFlashlightOffForReason:(id)reason withCoolDown:(BOOL)down
{
  downCopy = down;
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  pendingPowerChange = self->_pendingPowerChange;
  v8 = CCUILogFlashlightModule;
  v9 = os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT);
  if (pendingPowerChange)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Already turning off, got redundant request: %@", &v13, 0xCu);
    }

    if (downCopy)
    {
      self->_pendingPowerChange = 2;
    }
  }

  else
  {
    if (v9)
    {
      v10 = &stru_282FD6FB8;
      if (downCopy)
      {
        v10 = @" (with coolDown)";
      }

      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] turnFlashlightOffForReason%@: %@", &v13, 0x16u);
    }

    if (downCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (self->_intensity <= 0.0)
    {
      [(SBUIFlashlightController *)self _applyPowerChange:v11];
    }

    else
    {
      [(SBUIFlashlightController *)self _setIntensity:1 width:v11 animated:0.0 withPowerChange:self->_width];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLevel:(unint64_t)level
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    levelCopy = level;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_INFO, "[Flashlight Controller] setLevel: %lu", &v8, 0xCu);
  }

  v6 = 0.0;
  if (level - 1 <= 3)
  {
    v6 = dbl_21E76A9E0[level - 1];
  }

  [(SBUIFlashlightController *)self _setIntensity:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)warmUp
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] warmUp", v4, 2u);
  }

  [(SBUIFlashlightController *)self _turnPowerOn];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v51 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (observeValueForKeyPath_ofObject_change_context__onceToken != -1)
  {
    [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
  }

  if (![observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet containsObject:pathCopy])
  {
    goto LABEL_8;
  }

  if (dispatch_queue_get_label(0) != "com.apple.ControlCenter.FlashlightModule.AVFlashlight")
  {
    if ([(SBUIFlashlightController *)self _hasRunningFlashlightAnimation])
    {
      v13 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = pathCopy;
        _os_log_impl(&dword_21E74E000, v13, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Ignoring KVO change during flashlight animation for %@", buf, 0xCu);
      }

      goto LABEL_48;
    }

LABEL_8:
    if ([pathCopy isEqualToString:@"flashlightLevel"])
    {
      v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v15 = objc_opt_class();
      v16 = v14;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v26 = v17;

      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
      {
        [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
      }

      [v26 floatValue];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_35;
      v47[3] = &unk_27836B3E8;
      v47[4] = self;
      v48 = v27;
      v28 = MEMORY[0x277D85CD0];
      v29 = v47;
    }

    else if ([pathCopy isEqualToString:@"beamWidth"])
    {
      v18 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v26 = v21;

      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
      {
        [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
      }

      [v26 floatValue];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_36;
      v45[3] = &unk_27836B3E8;
      v45[4] = self;
      v46 = v34;
      v28 = MEMORY[0x277D85CD0];
      v29 = v45;
    }

    else if ([pathCopy isEqualToString:@"available"])
    {
      v22 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v23 = objc_opt_class();
      v24 = v22;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      v35 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v26;
        _os_log_impl(&dword_21E74E000, v35, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] observed available change to: %@", buf, 0xCu);
      }

      bOOLValue = [v26 BOOLValue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_37;
      v43[3] = &unk_27836B410;
      v43[4] = self;
      v44 = bOOLValue;
      v28 = MEMORY[0x277D85CD0];
      v29 = v43;
    }

    else
    {
      if (![pathCopy isEqualToString:@"overheated"])
      {
        v40.receiver = self;
        v40.super_class = SBUIFlashlightController;
        [(SBUIFlashlightController *)&v40 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
        goto LABEL_48;
      }

      v30 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v31 = objc_opt_class();
      v32 = v30;
      if (v31)
      {
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v26 = v33;

      v37 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v26;
        _os_log_impl(&dword_21E74E000, v37, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] observed overheated change to: %@", buf, 0xCu);
      }

      bOOLValue2 = [v26 BOOLValue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_38;
      block[3] = &unk_27836B410;
      block[4] = self;
      v42 = bOOLValue2;
      v28 = MEMORY[0x277D85CD0];
      v29 = block;
    }

    dispatch_async(v28, v29);

    goto LABEL_48;
  }

  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
  {
    [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
  }

LABEL_48:

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"flashlightLevel", @"beamWidth", 0}];
  v1 = observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet;
  observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_37(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1[1] isOverheated];

  return [v1 _updateObservedAvailability:v2 isOverheated:v3];
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[1] isAvailable];
  v4 = *(a1 + 40);

  return [v2 _updateObservedAvailability:v3 isOverheated:v4];
}

- (void)_updateObservedFlashlightLevel:(float)level
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    levelCopy = level;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Got KVO intensity change to: %f", &v7, 0xCu);
  }

  if (self->_intensity != level)
  {
    self->_intensity = level;
    [(SBUIFlashlightController *)self _updateLevelForIntensityChange];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateObservedBeamWidth:(float)width
{
  v16 = *MEMORY[0x277D85DE8];
  minBeamWidth = self->_minBeamWidth;
  maxBeamWidth = self->_maxBeamWidth;
  v5 = self->_width * maxBeamWidth + (1.0 - self->_width) * minBeamWidth;
  if (v5 != width && self->_beamWidthSupported)
  {
    widthCopy = width;
    v8 = fmax(fmin((width - minBeamWidth) / (maxBeamWidth - minBeamWidth), 1.0), 0.0);
    self->_width = v8;
    v9 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
    {
      width = self->_width;
      v12 = 134218240;
      widthCopy2 = width;
      v14 = 2048;
      v15 = widthCopy;
      _os_log_impl(&dword_21E74E000, v9, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Got KVO width change to: %f beamWidth: %f", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_postLevelChangeNotification:(unint64_t)notification
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    notificationCopy = notification;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_INFO, "[Flashlight Controller] posting level change to: %lu", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v10++) flashlightLevelDidChange:notification];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setIntensity:(double)intensity width:(double)width animated:(BOOL)animated withPowerChange:(unint64_t)change
{
  animatedCopy = animated;
  v39 = *MEMORY[0x277D85DE8];
  v11 = fmin(fmax(intensity, 0.0), 1.0);
  v12 = fmin(fmax(width, 0.0), 1.0);
  v13 = v11;
  self->_intensity = v13;
  self->_pendingPowerChange = change;
  if (self->_beamWidthSupported)
  {
    maxBeamWidth = v12 * self->_maxBeamWidth + (1.0 - v12) * self->_minBeamWidth;
  }

  else
  {
    maxBeamWidth = self->_maxBeamWidth;
  }

  v15 = v12;
  self->_width = v15;
  [(SBUIFlashlightController *)self _updateLevelForIntensityChange];
  v16 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219264;
    intensityCopy = intensity;
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    widthCopy = width;
    v33 = 2048;
    v34 = maxBeamWidth;
    v35 = 1024;
    v36 = animatedCopy;
    v37 = 2048;
    changeCopy = change;
    _os_log_debug_impl(&dword_21E74E000, v16, OS_LOG_TYPE_DEBUG, "[Flashlight Controller] _setIntensity:%0.3f(%0.3f) width:%0.3f(%0.3f) animated:%{BOOL}u withPowerChange:%lu", buf, 0x3Au);
  }

  dynamicInterfaceEnabled = self->_dynamicInterfaceEnabled;
  if (!animatedCopy)
  {
    if (self->_dynamicInterfaceEnabled)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_44;
      v22[3] = &unk_27836B458;
      v22[4] = self;
      *&v22[5] = v11;
      v23 = maxBeamWidth;
      [MEMORY[0x277D75D18] performWithoutAnimation:v22];
      if (!change)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    *&v17 = v11;
    [(SBUIFlashlightController *)self _setFlashlightLevel:v17];
    if (!change)
    {
      goto LABEL_16;
    }

LABEL_15:
    [(SBUIFlashlightController *)self _applyPowerChange:change];
    goto LABEL_16;
  }

  if (!self->_dynamicInterfaceEnabled)
  {
    goto LABEL_14;
  }

  animationCount = self->_animationCount;
  self->_animationCount = animationCount + 1;
  if (!animationCount)
  {
    [(SBUIFlashlightController *)self _beginFlashlightAnimation];
  }

  springBehavior = self->_springBehavior;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke;
  v25[3] = &unk_27836B458;
  v25[4] = self;
  *&v25[5] = v11;
  v26 = maxBeamWidth;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3;
  v24[3] = &unk_27836B480;
  v24[4] = self;
  v24[5] = change;
  [MEMORY[0x277D75D18] _animateUsingSpringBehavior:springBehavior tracking:0 animations:v25 completion:v24];
LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2;
  v3[3] = &__block_descriptor_44_e9_v16__0_d8l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _mutateValue:v3];
}

double __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1 + 32;
  --*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (!*(v2 + 80))
  {
    v5 = *(v2 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_4;
    block[3] = &unk_27836AFB0;
    block[4] = v2;
    dispatch_async(v5, block);
    v6 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
    {
      __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3_cold_1(v1, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *v1;
    if (*(*v1 + 88))
    {
      if (v13[27] == 0.0)
      {
        [v13 _applyPowerChange:?];
      }

      else
      {
        v14 = CCUILogFlashlightModule;
        if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = *(*(a1 + 32) + 108);
          *buf = 134218240;
          v19 = v15;
          v20 = 2048;
          v21 = v16;
          _os_log_impl(&dword_21E74E000, v14, OS_LOG_TYPE_DEFAULT, "Aborting requested power change (%lu) because intensity is nonzero: %0.3f", buf, 0x16u);
        }

        *(*v1 + 88) = 0;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_44(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2_45;
  v3[3] = &__block_descriptor_44_e9_v16__0_d8l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _mutateValue:v3];
}

double __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2_45(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

- (void)_beginFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_flashlightAnimationCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_endFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  --self->_lock_flashlightAnimationCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)_hasRunningFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  lock_flashlightAnimationCount = self->_lock_flashlightAnimationCount;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flashlightAnimationCount > 0;
}

- (void)_applyPowerChange:(unint64_t)change
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changeCopy = change;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "Applying power change: %lu", &v7, 0xCu);
  }

  if (change == 2)
  {
    [(SBUIFlashlightController *)self _turnPowerOff];
  }

  else if (change == 1)
  {
    [(SBUIFlashlightController *)self _setFlashlightLevel:0.0];
  }

  self->_pendingPowerChange = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setFlashlightLevel:(float)level
{
  flashlightQueue = self->_flashlightQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SBUIFlashlightController__setFlashlightLevel___block_invoke;
  v4[3] = &unk_27836B3E8;
  v4[4] = self;
  levelCopy = level;
  dispatch_async(flashlightQueue, v4);
}

void __48__SBUIFlashlightController__setFlashlightLevel___block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  LODWORD(a2) = *(a1 + 40);
  v5 = 0;
  v3 = [v2 setFlashlightLevel:&v5 withError:a2];
  v4 = v5;
  if ((v3 & 1) == 0 && os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_ERROR))
  {
    __48__SBUIFlashlightController__setFlashlightLevel___block_invoke_cold_1();
  }
}

- (void)_setFlashlightBeamWidth:(float)width
{
  if (self->_beamWidthSupported)
  {
    v9 = v3;
    v10 = v4;
    v5 = fmaxf(self->_minBeamWidth, fminf(width, self->_maxBeamWidth));
    flashlightQueue = self->_flashlightQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SBUIFlashlightController__setFlashlightBeamWidth___block_invoke;
    v7[3] = &unk_27836B3E8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(flashlightQueue, v7);
  }
}

- (void)_turnPowerOn
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Power On", buf, 2u);
  }

  flashlightQueue = self->_flashlightQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SBUIFlashlightController__turnPowerOn__block_invoke;
  block[3] = &unk_27836AFB0;
  block[4] = self;
  dispatch_async(flashlightQueue, block);
}

void __40__SBUIFlashlightController__turnPowerOn__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  v2 = [v1 turnPowerOnWithError:&v4];
  v3 = v4;
  if ((v2 & 1) == 0 && os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_ERROR))
  {
    __40__SBUIFlashlightController__turnPowerOn__block_invoke_cold_1();
  }
}

- (void)_storeFlashlightLevel:(unint64_t)level
{
  if (level)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:level forKey:@"FlashlightLevel"];
  }
}

- (unint64_t)_loadFlashlightLevel
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"FlashlightLevel"];

  if (v3 - 1 >= 4)
  {
    return SBUIFlashlightLevelDefault;
  }

  else
  {
    return v3;
  }
}

- (void)storeFlashlightIntensity:(float)intensity width:(float)width
{
  v20 = *MEMORY[0x277D85DE8];
  if (intensity > 0.0)
  {
    intensityCopy = intensity;
    v8 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v16 = 134218240;
      v17 = intensityCopy;
      v18 = 2048;
      widthCopy = width;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_INFO, "[Flashlight Controller] Persisting intensity: %f, width: %f", &v16, 0x16u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v10 = intensity;
    [standardUserDefaults setFloat:@"FlashlightIntensity" forKey:v10];

    if (intensity >= 0.5)
    {
      v12 = 4;
      if (intensity < 1.0)
      {
        v12 = 3;
      }

      if (intensityCopy >= 0.85)
      {
        v11 = v12;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

    [(SBUIFlashlightController *)self _storeFlashlightLevel:v11];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v14 = width;
    [standardUserDefaults2 setFloat:@"FlashlightWidth" forKey:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_loadFlashlightIntensity:(float *)intensity width:(float *)width
{
  v21 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = standardUserDefaults;
  if (intensity)
  {
    v8 = [standardUserDefaults objectForKey:@"FlashlightIntensity"];

    if (v8)
    {
      [v7 floatForKey:@"FlashlightIntensity"];
      v10 = fminf(fmaxf(v9, 0.0), 1.0);
    }

    else
    {
      v10 = 1.0;
    }

    *intensity = v10;
    v11 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v12 = *intensity;
      v19 = 134217984;
      v20 = v12;
      _os_log_impl(&dword_21E74E000, v11, OS_LOG_TYPE_INFO, "[Flashlight Controller] Loaded intensity: %f", &v19, 0xCu);
    }
  }

  if (width)
  {
    v13 = [v7 objectForKey:@"FlashlightWidth"];

    if (v13)
    {
      [v7 floatForKey:@"FlashlightWidth"];
      v15 = fminf(fmaxf(v14, 0.0), 1.0);
    }

    else
    {
      v15 = 0.5;
    }

    *width = v15;
    v16 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v17 = *width;
      v19 = 134217984;
      v20 = v17;
      _os_log_impl(&dword_21E74E000, v16, OS_LOG_TYPE_INFO, "[Flashlight Controller] Loaded width: %f", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_21E74E000, v0, v1, "[Flashlight Controller] observed beamWidth change to: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_21E74E000, v0, v1, "[Flashlight Controller] observed flashlightLevel change to: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_21E74E000, v0, v1, "[Flashlight Controller] Ignoring flashlight queue KVO to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 108);
  OUTLINED_FUNCTION_0_0(&dword_21E74E000, a2, a3, "[Flashlight Controller] Animations Finished; _intensity = %f", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

void __48__SBUIFlashlightController__setFlashlightLevel___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_21E74E000, v0, OS_LOG_TYPE_ERROR, "Error setting flashlight level: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __40__SBUIFlashlightController__turnPowerOn__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_21E74E000, v0, OS_LOG_TYPE_ERROR, "Error turning on flashlight power: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end