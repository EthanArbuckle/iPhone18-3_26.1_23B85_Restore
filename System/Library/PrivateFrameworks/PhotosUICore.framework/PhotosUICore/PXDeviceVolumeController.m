@interface PXDeviceVolumeController
+ (PXDeviceVolumeController)sharedInstance;
- (PXDeviceVolumeController)initWithIsInSilentMode:(BOOL)a3;
- (id)_initAsSharedInstance;
- (void)_handleSystemVolumeChange:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXDeviceVolumeController

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NSStringFromSelector(sel_simulateSilentMode);
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PXDeviceVolumeController_settings_changedValueForKey___block_invoke;
    v11[3] = &unk_1E7743B88;
    v13 = self;
    v14 = a2;
    v12 = v7;
    [(PXVolumeController *)self performChanges:v11];
  }
}

void __56__PXDeviceVolumeController_settings_changedValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = a2;
  [v3 setIsInSilentMode:{objc_msgSend(v4, "simulateSilentMode")}];
}

- (void)_handleSystemVolumeChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_debug_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEBUG, "volume changed %@", &v16, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEA18]];
  [v6 floatValue];
  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEA10]];
  v10 = [v9 isEqual:@"ExplicitVolumeChange"];

  if (v10)
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "explicit volume change %@", &v16, 0xCu);
    }

    lastKnownVolume = self->_lastKnownVolume;
    if (v8 == 1.0 || v8 > lastKnownVolume)
    {
      v14 = &__block_literal_global_21_201194;
LABEL_18:
      [(PXVolumeController *)self performChanges:v14];
      goto LABEL_19;
    }

    if (v8 == 0.0 || v8 < lastKnownVolume)
    {
      v14 = &__block_literal_global_23;
      goto LABEL_18;
    }
  }

LABEL_19:
  self->_lastKnownVolume = v8;
}

- (id)_initAsSharedInstance
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 UTF8String];

  v6 = os_log_create(*MEMORY[0x1E69BFF60], v5);
  v7 = [MEMORY[0x1E69AED10] sharedInstance];
  v35 = 0.0;
  v34 = 0;
  v8 = [v7 getActiveCategoryVolume:&v35 andName:&v34];
  v9 = v34;
  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "active category volume %f name %{public}@", buf, 0x16u);
    }

    v10 = v35;
  }

  else
  {
    v10 = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed to get active category volume", buf, 2u);
    }
  }

  v11 = +[PXKitSettings sharedInstance];
  if (([v11 honorSilentMode] & 1) == 0)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

    *buf = 0;
    v13 = "ignoring silent mode";
LABEL_14:
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_15;
  }

  if ([v11 simulateSilentMode])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "simulated silent mode", buf, 2u);
    }

    v12 = 1;
    goto LABEL_16;
  }

  if (PLPhysicalDeviceIsIPad())
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "device has no physical ringer switch";
    goto LABEL_14;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXDeviceVolumeController__initAsSharedInstance__block_invoke;
  aBlock[3] = &unk_1E7743AF8;
  v33 = buf;
  v19 = v6;
  v32 = v19;
  v20 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v21 = *&buf[8];
  v22 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __49__PXDeviceVolumeController__initAsSharedInstance__block_invoke_10;
  handler[3] = &unk_1E7743B40;
  v23 = v20;
  v28 = v23;
  v24 = v19;
  v27 = v24;
  objc_copyWeak(&v29, &location);
  notify_register_dispatch("com.apple.springboard.ringerstate", (v21 + 24), MEMORY[0x1E69E96A0], handler);

  v12 = v23[2](v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 67109120;
    v37 = v12;
    _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "ringer muted %i", v36, 8u);
  }

  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
LABEL_16:
  v25.receiver = self;
  v25.super_class = PXDeviceVolumeController;
  v14 = [(PXVolumeController *)&v25 initWithIsInSilentMode:v12];
  v15 = v14;
  if (v14)
  {
    log = v14->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v12;
      *&buf[8] = 2048;
      *&buf[10] = v10;
      _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "initialized muted %i volume %f", buf, 0x12u);
    }

    objc_storeStrong(&v15->_log, v6);
    v15->_lastKnownVolume = v10;
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v15 selector:sel__handleSystemVolumeChange_ name:*MEMORY[0x1E69AECE8] object:v7];

    [v11 addDeferredKeyObserver:v15];
  }

  return v15;
}

BOOL __49__PXDeviceVolumeController__initAsSharedInstance__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(*(*(*(a1 + 40) + 8) + 24), &state64);
  if (state)
  {
    v3 = state;
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_error_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "failed to get ringer state %i", buf, 8u);
    }

    return 0;
  }

  else
  {
    v6 = state64;
    v5 = state64 == 0;
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v6 == 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "ringer state is on mute %i", buf, 8u);
    }
  }

  return v5;
}

void __49__PXDeviceVolumeController__initAsSharedInstance__block_invoke_10(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v2;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "ringer changed to muted %i", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PXDeviceVolumeController__initAsSharedInstance__block_invoke_11;
  v5[3] = &__block_descriptor_33_e37_v16__0___PXMutableVolumeController__8l;
  v6 = v2;
  [WeakRetained performChanges:v5];
}

- (PXDeviceVolumeController)initWithIsInSilentMode:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXDeviceVolumeController.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXDeviceVolumeController initWithIsInSilentMode:]"}];

  abort();
}

+ (PXDeviceVolumeController)sharedInstance
{
  if (sharedInstance_onceToken_201230 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_201230, &__block_literal_global_201231);
  }

  v3 = sharedInstance_sharedInstance_201232;

  return v3;
}

void __42__PXDeviceVolumeController_sharedInstance__block_invoke()
{
  v0 = [[PXDeviceVolumeController alloc] _initAsSharedInstance];
  v1 = sharedInstance_sharedInstance_201232;
  sharedInstance_sharedInstance_201232 = v0;
}

@end