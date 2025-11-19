@interface SFB332SetupObserver
- (SFB332UIProtocol)delegate;
- (id)exportedInterface;
- (void)acquireHUDTransaction;
- (void)activate;
- (void)dismissBTPrompt;
- (void)dismissChargingStatus;
- (void)dismissUIAnimated:(BOOL)a3;
- (void)dismissUnlockPrompt;
- (void)enableBluetoothTapped;
- (void)invalidate;
- (void)pairTapped;
- (void)releaseHUDTransaction;
- (void)setDeviceType:(unint64_t)a3;
- (void)setShouldShowWhatsNew:(BOOL)a3;
- (void)showChargingStatus;
- (void)showEnableBluetoothPill;
- (void)showPairConsentPrompt;
- (void)showPairingFailure;
- (void)showPairingStarted;
- (void)showPairingSuccess;
- (void)showSubsequentPairSuccess;
- (void)showUnlockPrompt;
- (void)updateDeviceInfoWithDeviceType:(unint64_t)a3 batteryLevel:(double)a4 batteryLevelKnown:(BOOL)a5 edge:(unint64_t)a6 orientation:(unint64_t)a7 isCharging:(BOOL)a8 identifier:(id)a9;
@end

@implementation SFB332SetupObserver

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SFB332SetupObserver;
  [(SFXPCClient *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SFB332SetupObserver;
  [(SFXPCClient *)&v2 _invalidate];
}

- (id)exportedInterface
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3826410];
  v3 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_updateDeviceInfoWithDeviceType_batteryLevel_batteryLevelKnown_edge_orientation_isCharging_identifier_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_updateDeviceInfoWithDeviceType_batteryLevel_batteryLevelKnown_edge_orientation_isCharging_identifier_ argumentIndex:6 ofReply:0];

  return v2;
}

- (void)updateDeviceInfoWithDeviceType:(unint64_t)a3 batteryLevel:(double)a4 batteryLevelKnown:(BOOL)a5 edge:(unint64_t)a6 orientation:(unint64_t)a7 isCharging:(BOOL)a8 identifier:(id)a9
{
  v9 = a8;
  v12 = a5;
  v16 = a9;
  v17 = [(SFB332SetupObserver *)self delegate];
  [v17 updateDeviceInfoWithDeviceType:a3 batteryLevel:v12 batteryLevelKnown:a6 edge:a7 orientation:v9 isCharging:v16 identifier:a4];
}

- (void)showPairingStarted
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showPairingStarted];
}

- (void)showEnableBluetoothPill
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showEnableBluetoothPill];
}

- (void)showPairingSuccess
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showPairingSuccess];
}

- (void)showPairingFailure
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showPairingFailure];
}

- (void)showSubsequentPairSuccess
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showSubsequentPairSuccess];
}

- (void)showChargingStatus
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showChargingStatus];
}

- (void)dismissChargingStatus
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 dismissChargingStatus];
}

- (void)showUnlockPrompt
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showUnlockPrompt];
}

- (void)showPairConsentPrompt
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 showPairConsentPrompt];
}

- (void)dismissUnlockPrompt
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 dismissUnlockPrompt];
}

- (void)dismissBTPrompt
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 dismissBTPrompt];
}

- (void)releaseHUDTransaction
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 releaseHUDTransaction];
}

- (void)acquireHUDTransaction
{
  v2 = [(SFB332SetupObserver *)self delegate];
  [v2 acquireHUDTransaction];
}

- (void)setShouldShowWhatsNew:(BOOL)a3
{
  v3 = a3;
  v4 = [(SFB332SetupObserver *)self delegate];
  [v4 setShouldShowWhatsNew:v3];
}

- (void)setDeviceType:(unint64_t)a3
{
  v4 = [(SFB332SetupObserver *)self delegate];
  [v4 setDeviceType:a3];
}

- (void)dismissUIAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SFB332SetupObserver *)self delegate];
  [v4 dismissUIAnimated:v3];
}

- (void)enableBluetoothTapped
{
  v3 = _os_activity_create(&dword_1B9E4B000, "Sharing/SFB332SetupXPCConnection/enableBluetoothTapped", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  [(SFXPCClient *)self getRemoteObjectProxyOnQueue:&__block_literal_global];
  os_activity_scope_leave(&v4);
}

- (void)pairTapped
{
  v3 = _os_activity_create(&dword_1B9E4B000, "Sharing/SFB332SetupXPCConnection/pairTapped", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  [(SFXPCClient *)self getRemoteObjectProxyOnQueue:&__block_literal_global_203];
  os_activity_scope_leave(&v4);
}

- (SFB332UIProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end