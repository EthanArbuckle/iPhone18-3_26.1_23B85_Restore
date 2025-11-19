@interface SFWirelessSettingsController
- (SFWirelessSettingsController)init;
- (SFWirelessSettingsControllerDelegate)delegate;
- (void)dealloc;
- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)invalidate;
- (void)setAirplaneModeEnabled:(BOOL)a3;
- (void)setBluetoothEnabled:(BOOL)a3;
- (void)setWifiEnabled:(BOOL)a3;
- (void)setWirelessAccessPointEnabled:(BOOL)a3;
@end

@implementation SFWirelessSettingsController

- (void)dealloc
{
  [(SFWirelessSettingsController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFWirelessSettingsController;
  [(SFWirelessSettingsController *)&v3 dealloc];
}

- (void)invalidate
{
  information = self->_information;
  if (information)
  {
    SFOperationCancel(information);
    CFRelease(self->_information);
    self->_information = 0;
  }
}

- (SFWirelessSettingsController)init
{
  v8.receiver = self;
  v8.super_class = SFWirelessSettingsController;
  v2 = [(SFWirelessSettingsController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 65537;
    *(v2 + 6) = 0;
    *(v2 + 33) = 0;
    v2[20] = 0;
    v4 = SFOperationCreate(0, @"Information");
    *(v3 + 5) = v4;
    *&v6[0] = 0;
    v6[1] = 0u;
    v7 = 0;
    *(&v6[0] + 1) = v3;
    SFOperationSetClient(v4, operationCallBack_0, v6);
    SFOperationSetDispatchQueue(*(v3 + 5), MEMORY[0x1E69E96A0]);
    SFOperationResume(*(v3 + 5));
  }

  return v3;
}

- (void)handleOperationCallback:(__SFOperation *)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 10)
  {
    v17 = airdrop_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SFWirelessSettingsController handleOperationCallback:v8 event:v17 withResults:?];
    }

    goto LABEL_8;
  }

  if (a4 != 12)
  {
    v17 = airdrop_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SFWirelessSettingsController handleOperationCallback:a4 event:v8 withResults:v17];
    }

LABEL_8:

    goto LABEL_9;
  }

  v9 = [v7 objectForKeyedSubscript:@"WirelessEnabled"];
  self->_wifiEnabled = [v9 BOOLValue];

  v10 = [v8 objectForKeyedSubscript:@"BluetoothEnabled"];
  self->_bluetoothEnabled = [v10 BOOLValue];

  v11 = [v8 objectForKeyedSubscript:@"AirplaneModeEnabled"];
  self->_airplaneModeEnabled = [v11 BOOLValue];

  v12 = [v8 objectForKeyedSubscript:@"UltraWideBandEnabled"];
  self->_ultraWideBandStatus = [v12 intValue];

  v13 = [v8 objectForKeyedSubscript:@"DeviceSupportsWAPI"];
  self->_deviceSupportsWAPI = [v13 BOOLValue];

  v14 = [v8 objectForKeyedSubscript:@"WirelessCarPlay"];
  self->_wirelessCarPlayEnabled = [v14 BOOLValue];

  v15 = [v8 objectForKeyedSubscript:@"WirelessAccessPoint"];
  self->_wirelessAccessPointEnabled = [v15 BOOLValue];

  v16 = [v8 objectForKeyedSubscript:@"AirDropMDMRestricted"];
  self->_isAirDropMDMRestricted = [v16 BOOLValue];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFWirelessSettingsController_handleOperationCallback_event_withResults___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_9:
}

void __74__SFWirelessSettingsController_handleOperationCallback_event_withResults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained wirelessSettingsDidChange:*(a1 + 32)];
}

- (void)setWifiEnabled:(BOOL)a3
{
  information = self->_information;
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  SFOperationSetProperty(information, @"WirelessEnabled", *v4);
}

- (void)setBluetoothEnabled:(BOOL)a3
{
  information = self->_information;
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  SFOperationSetProperty(information, @"BluetoothEnabled", *v4);
}

- (void)setAirplaneModeEnabled:(BOOL)a3
{
  information = self->_information;
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  SFOperationSetProperty(information, @"AirplaneModeEnabled", *v4);
}

- (void)setWirelessAccessPointEnabled:(BOOL)a3
{
  information = self->_information;
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  SFOperationSetProperty(information, @"WirelessAccessPoint", *v4);
}

- (SFWirelessSettingsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleOperationCallback:(void *)a1 event:(NSObject *)a2 withResults:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKeyedSubscript:@"Error"];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "SFWirelessSettingsController %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleOperationCallback:(uint64_t)a1 event:(uint64_t)a2 withResults:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v13 = *MEMORY[0x1E69E9840];
  v7 = 138412802;
  v8 = SFOperationEventToString_0(a1);
  v9 = 1024;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "SFWirelessSettingsController UNHANDLED EVENT %@ [%d] %@", &v7, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

@end