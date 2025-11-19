@interface SFAirDropDiscoveryController
- (BOOL)isNearbySharingSupported;
- (BOOL)isStoreDemoMode;
- (SFAirDropDiscoveryAlertControllerDelegate)alertControllerDelegate;
- (SFAirDropDiscoveryController)init;
- (SFAirDropDiscoveryControllerDelegate)delegate;
- (id)discoverableModeAlertController;
- (id)discoverableModeToString:(int64_t)a3;
- (int64_t)operationDiscoverableModeToInteger:(id)a3;
- (void)dealloc;
- (void)didChangeRadioState:(BOOL)a3;
- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)invalidate;
- (void)isNearbySharingSupported;
- (void)setCellularUsageEnabled:(BOOL)a3;
- (void)setDiscoverableMode:(int64_t)a3;
- (void)setLegacyModeEnabled:(BOOL)a3;
- (void)setNearbySharingEnabled:(BOOL)a3;
- (void)startNFCMonitoring;
- (void)updateAlertControllerTitle;
@end

@implementation SFAirDropDiscoveryController

- (void)dealloc
{
  [(SFAirDropDiscoveryController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFAirDropDiscoveryController;
  [(SFAirDropDiscoveryController *)&v3 dealloc];
}

- (void)invalidate
{
  if (self->_controller)
  {
    SFOperationCancel();
    CFRelease(self->_controller);
    self->_controller = 0;
  }

  [(SFWirelessSettingsController *)self->_settingsController setDelegate:0];
  [(SFWirelessSettingsController *)self->_settingsController invalidate];
  v3 = [(objc_class *)getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
  [v3 unregisterEventListener:self];
}

- (SFAirDropDiscoveryController)init
{
  v8.receiver = self;
  v8.super_class = SFAirDropDiscoveryController;
  v2 = [(SFAirDropDiscoveryController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    v3->_isVisible = 1;
    *&v3->_isLegacyModeEnabled = 0;
    alertController = v3->_alertController;
    v3->_alertController = 0;

    objc_storeWeak(&v3->_alertControllerDelegate, 0);
    v5 = objc_alloc_init(MEMORY[0x1E69CDEE8]);
    settingsController = v3->_settingsController;
    v3->_settingsController = v5;

    [(SFWirelessSettingsController *)v3->_settingsController setDelegate:v3];
    v3->_isLegacyDevice = SFDeviceSupportsAirDrop() ^ 1;
    v3->_discoverableMode = 0;
    v3->_controller = SFOperationCreate();
    SFOperationSetClient();
    SFOperationSetDispatchQueue();
    SFOperationResume();
  }

  return v3;
}

- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = v7;
  if (a4 == 10)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropDiscoveryController handleOperationCallback:v8 event:v12 withResults:?];
    }
  }

  else if (a4 == 12)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69CDFA8]];
    self->_isLegacyDevice = [v9 BOOLValue];

    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69CDFB0]];
    self->_isLegacyModeEnabled = [v10 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69CDFB8]];
    self->_isLegacyModeSettable = [v11 BOOLValue];

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69CDF78]];
    v13 = airdrop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v12;
      _os_log_impl(&dword_1B9E4B000, v13, OS_LOG_TYPE_DEFAULT, "Discoverable mode changed to %@", &v23, 0xCu);
    }

    if (v12)
    {
      self->_isVisible = [v12 isEqual:*MEMORY[0x1E69CDF68]]^ 1;
      self->_discoverableMode = [(SFAirDropDiscoveryController *)self operationDiscoverableModeToInteger:v12];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 discoveryControllerVisibilityDidChange:self];
      }

      v17 = objc_loadWeakRetained(&self->_delegate);
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = objc_loadWeakRetained(&self->_delegate);
        [v19 discoveryControllerSettingsDidChange:self];
      }
    }

    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 discoveryControllerLegacyModePropertiesDidChange:self];
    }
  }

  else
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropDiscoveryController handleOperationCallback:a4 event:v8 withResults:v12];
    }
  }
}

- (void)setLegacyModeEnabled:(BOOL)a3
{
  if (self->_isLegacyModeEnabled != a3)
  {
    v3 = a3;
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(SFAirDropDiscoveryController *)v3 setLegacyModeEnabled:v4];
    }

    [MEMORY[0x1E696AD98] numberWithBool:v3];
    SFOperationSetProperty();
  }
}

- (BOOL)isStoreDemoMode
{
  if (isStoreDemoMode_onceToken != -1)
  {
    [SFAirDropDiscoveryController isStoreDemoMode];
  }

  return isStoreDemoMode_result;
}

uint64_t __47__SFAirDropDiscoveryController_isStoreDemoMode__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
  isStoreDemoMode_result = result != 0;
  return result;
}

- (BOOL)isNearbySharingSupported
{
  v3 = [(objc_class *)getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
  v14 = 0;
  v4 = [v3 areFeaturesSupported:1 outError:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropDiscoveryController isNearbySharingSupported];
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  v7 = [(objc_class *)getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
  v8 = [v7 getRadioEnabledState:&v13];

  if (v8)
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropDiscoveryController isNearbySharingSupported];
    }

    v10 = 0;
  }

  else
  {
    v10 = v13 == 1;
  }

LABEL_11:
  if ([(SFAirDropDiscoveryController *)self isStoreDemoMode])
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B9E4B000, v11, OS_LOG_TYPE_DEFAULT, "Nearby sharing not supported for store demo devices", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)setNearbySharingEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69CDE08] nearFieldSharingEnabled] != a3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "Changing nearby sharing enabled to %d", v5, 8u);
    }

    [MEMORY[0x1E69CDE08] setNearFieldSharingEnabled:v3];
    notify_post([*MEMORY[0x1E69CDF28] UTF8String]);
  }
}

- (void)startNFCMonitoring
{
  v3 = [(objc_class *)getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
  [v3 registerEventListener:self];
}

- (void)setCellularUsageEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69CDE08] cellularUsageEnabled] != a3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "Changing cellular usage enabled to %d", v5, 8u);
    }

    [MEMORY[0x1E69CDE08] setCellularUsageEnabled:v3];
    notify_post([*MEMORY[0x1E69CDF20] UTF8String]);
  }
}

- (void)updateAlertControllerTitle
{
  if ([(SFWirelessSettingsController *)self->_settingsController deviceSupportsWAPI])
  {
    v3 = [(SFWirelessSettingsController *)self->_settingsController isWifiEnabled];
    v4 = [(SFWirelessSettingsController *)self->_settingsController isBluetoothEnabled];
    v10 = SFLocalizedStringForKey();
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = SFLocalizedStringForKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = SFLocalizedStringForKey();
      v9 = [v7 stringWithFormat:v8, v10, v6];

      [(UIAlertController *)self->_alertController setTitle:v9];
    }

    else
    {
      [(UIAlertController *)self->_alertController setTitle:v10];
    }
  }
}

- (id)discoverableModeAlertController
{
  alertController = self->_alertController;
  if (!alertController)
  {
    v4 = [getUMUserManagerClass[0]() sharedManager];
    v30 = v4;
    if ([v4 isMultiUser])
    {
      v5 = [v4 currentUser];
      v6 = [v5 userType] == 1;
    }

    else
    {
      v6 = 0;
    }

    v31 = SFLocalizedStringForKey();
    v7 = SFLocalizedStringForKey();
    v8 = SFLocalizedStringForKey();
    v9 = SFLocalizedStringForKey();
    v29 = SFLocalizedStringForKey();
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:? message:? preferredStyle:?];
    v11 = self->_alertController;
    self->_alertController = v10;

    [(SFAirDropDiscoveryController *)self updateAlertControllerTitle];
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = __Block_byref_object_copy_;
    v46[4] = __Block_byref_object_dispose_;
    v47 = self;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy_;
    v44[4] = __Block_byref_object_dispose_;
    v45 = self->_alertController;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke;
    aBlock[3] = &unk_1E7EE3E20;
    aBlock[4] = v46;
    aBlock[5] = v44;
    v12 = _Block_copy(aBlock);
    v13 = self->_alertController;
    v14 = MEMORY[0x1E69DC648];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_2;
    v41[3] = &unk_1E7EE3E48;
    v15 = v12;
    v42 = v15;
    v16 = [v14 actionWithTitle:v7 style:1 handler:v41];
    [(UIAlertController *)v13 addAction:v16];

    v17 = self->_alertController;
    v18 = MEMORY[0x1E69DC648];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_3;
    v38[3] = &unk_1E7EE3E70;
    v40 = v46;
    v19 = v15;
    v39 = v19;
    v20 = [v18 actionWithTitle:v31 style:0 handler:v38];
    [(UIAlertController *)v17 addAction:v20];

    if (!v6)
    {
      v21 = self->_alertController;
      v22 = MEMORY[0x1E69DC648];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_4;
      v35[3] = &unk_1E7EE3E70;
      v37 = v46;
      v36 = v19;
      v23 = [v22 actionWithTitle:v9 style:0 handler:v35];
      [(UIAlertController *)v21 addAction:v23];
    }

    v24 = self->_alertController;
    v25 = MEMORY[0x1E69DC648];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_5;
    v32[3] = &unk_1E7EE3E70;
    v34 = v46;
    v26 = v19;
    v33 = v26;
    v27 = [v25 actionWithTitle:v8 style:0 handler:v32];
    [(UIAlertController *)v24 addAction:v27];

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);

    alertController = self->_alertController;
  }

  return alertController;
}

void __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) alertControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) alertControllerDelegate];
    [v4 discoveryController:*(*(*(a1 + 32) + 8) + 40) alertControllerDidDismiss:*(*(*(a1 + 40) + 8) + 40)];
  }
}

uint64_t __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setDiscoverableMode:0];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_4(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setDiscoverableMode:1];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __63__SFAirDropDiscoveryController_discoverableModeAlertController__block_invoke_5(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setDiscoverableMode:2];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)setDiscoverableMode:(int64_t)a3
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SFAirDropDiscoveryController *)self setDiscoverableMode:a3, v5];
  }

  [(SFAirDropDiscoveryController *)self discoverableModeToString:a3];
  SFOperationSetProperty();
}

- (int64_t)operationDiscoverableModeToInteger:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69CDF80]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69CDF68]))
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69CDF60]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69CDF70]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)discoverableModeToString:(int64_t)a3
{
  if (a3 <= 2)
  {
    self = **(&unk_1E7EE3F08 + a3);
  }

  return self;
}

- (void)didChangeRadioState:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 discoveryControllerSettingsDidChange:self];
  }
}

- (SFAirDropDiscoveryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFAirDropDiscoveryAlertControllerDelegate)alertControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerDelegate);

  return WeakRetained;
}

- (void)handleOperationCallback:(void *)a1 event:(NSObject *)a2 withResults:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69CDF88]];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_ERROR, "SFAirDropDiscoveryController %@", v4, 0xCu);
}

- (void)handleOperationCallback:(uint64_t)a1 event:(uint64_t)a2 withResults:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v11 = *MEMORY[0x1E69E9840];
  SFOperationEventToString(a1);
  OUTLINED_FUNCTION_0_1();
  v7 = 1024;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_ERROR, "SFAirDropDiscoveryController UNHANDLED EVENT %@ [%d] %@", v6, 0x1Cu);
}

- (void)setLegacyModeEnabled:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"Off";
  if (a1)
  {
    v2 = @"On";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "Turning AirDrop Legacy Mode %@", &v3, 0xCu);
}

- (void)isNearbySharingSupported
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B9E4B000, v0, OS_LOG_TYPE_ERROR, "Failed to get NFC radio state enabled: %@", v1, 0xCu);
}

- (void)setDiscoverableMode:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [a1 discoverableModeToString:a2];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_DEBUG, "Changing discoverable mode to %@", v5, 0xCu);
}

@end