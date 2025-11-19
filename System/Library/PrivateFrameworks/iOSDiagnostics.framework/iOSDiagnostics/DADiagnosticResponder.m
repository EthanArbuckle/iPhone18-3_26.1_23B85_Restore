@interface DADiagnosticResponder
+ (id)sharedInstance;
- (DADiagnosticResponder)init;
- (void)enableVolumeHUD:(BOOL)a3;
- (void)resetScreenBrightness:(id)a3;
- (void)setAutoBrightness:(BOOL)a3;
- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4;
@end

@implementation DADiagnosticResponder

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DADiagnosticResponder sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __39__DADiagnosticResponder_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(DADiagnosticResponder);

  return MEMORY[0x2821F96F8]();
}

- (DADiagnosticResponder)init
{
  v7.receiver = self;
  v7.super_class = DADiagnosticResponder;
  v2 = [(DADiagnosticResponder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    screenBrightnessUserSetting = v2->_screenBrightnessUserSetting;
    v2->_screenBrightnessUserSetting = 0;

    autoBrightnessEnabledUserSetting = v3->_autoBrightnessEnabledUserSetting;
    v3->_autoBrightnessEnabledUserSetting = 0;
  }

  return v3;
}

- (void)enableVolumeHUD:(BOOL)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DADiagnosticResponder_enableVolumeHUD___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__DADiagnosticResponder_enableVolumeHUD___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 connectedScenes];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 _setSystemVolumeHUDEnabled:{*(a1 + 32), v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4
{
  v7 = dispatch_queue_create("com.apple.Diagnostics.brightnessQueue", 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke;
  v8[3] = &unk_27A66EB70;
  v8[4] = self;
  v10 = a4;
  v9 = a3;
  dispatch_async(v7, v8);
}

void __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke(uint64_t a1)
{
  BKSDisplayBrightnessGetCurrent();
  v3 = v2;
  v4 = [*(a1 + 32) screenBrightnessUserSetting];

  if (!v4)
  {
    *&v5 = v3;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [*(a1 + 32) setScreenBrightnessUserSetting:v6];
  }

  [*(a1 + 32) setAutoBrightness:0];
  if (*(a1 + 44) == 1)
  {
    v7 = *(a1 + 40);
    if (v3 >= v7)
    {
      if (v3 > v7)
      {
        v11 = 0.0002;
        do
        {
          v12 = dispatch_time(0, (v11 * 1000000000.0));
          v13 = dispatch_get_global_queue(-2, 0);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_4;
          v16[3] = &__block_descriptor_36_e5_v8__0l;
          v17 = v3;
          dispatch_after(v12, v13, v16);

          v11 = v11 + 0.0002;
          v3 = v3 + -0.01;
        }

        while (v3 > *(a1 + 40));
      }
    }

    else
    {
      v8 = 0.0002;
      do
      {
        v9 = dispatch_time(0, (v8 * 1000000000.0));
        v10 = dispatch_get_global_queue(-2, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_2;
        block[3] = &__block_descriptor_36_e5_v8__0l;
        v19 = v3;
        dispatch_after(v9, v10, block);

        v8 = v8 + 0.0002;
        v3 = v3 + 0.01;
      }

      while (v3 < *(a1 + 40));
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_6;
    v14[3] = &__block_descriptor_36_e5_v8__0l;
    v15 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_3;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DADiagnosticResponder_setScreenToBrightness_animate___block_invoke_5;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setAutoBrightness:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "Setting auto brightness to %d", v10, 8u);
  }

  v6 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (!v6)
  {
    LOBYTE(v10[0]) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BKEnableALS", @"com.apple.backboardd", v10);
    if (LOBYTE(v10[0]))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
      [(DADiagnosticResponder *)self setAutoBrightnessEnabledUserSetting:v8];
    }
  }

  BKSDisplayBrightnessSetAutoBrightnessEnabled();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetScreenBrightness:(id)a3
{
  v4 = a3;
  v5 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
  if (v5)
  {

LABEL_4:
    v7 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    v8 = v7 != 0;

    v9 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    v10 = v9 != 0;

    v11 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    [v11 floatValue];
    v13 = v12;

    v14 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    v15 = [v14 BOOLValue];

    [(DADiagnosticResponder *)self setScreenBrightnessUserSetting:0];
    [(DADiagnosticResponder *)self setAutoBrightnessEnabledUserSetting:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__DADiagnosticResponder_resetScreenBrightness___block_invoke;
    block[3] = &unk_27A66EB98;
    v20 = v8;
    v21 = v10;
    v18 = v13;
    v19 = v15;
    v17 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_5;
  }

  v6 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (v6)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_5:
}

uint64_t __47__DADiagnosticResponder_resetScreenBrightness___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275BB3000, v2, OS_LOG_TYPE_DEFAULT, "Resetting screen brightness", buf, 2u);
    }

    v3 = *(a1 + 40);
    BKSDisplayBrightnessSet();
  }

  if (*(a1 + 49) == 1)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275BB3000, v4, OS_LOG_TYPE_DEFAULT, "Resetting auto screen brightness", v7, 2u);
    }

    v5 = *(a1 + 44);
    BKSDisplayBrightnessSetAutoBrightnessEnabled();
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end