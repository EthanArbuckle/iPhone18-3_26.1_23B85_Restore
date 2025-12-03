@interface SFB332SetupObserver
- (SFB332UIProtocol)delegate;
- (id)exportedInterface;
- (void)acquireHUDTransaction;
- (void)activate;
- (void)dismissBTPrompt;
- (void)dismissChargingStatus;
- (void)dismissUIAnimated:(BOOL)animated;
- (void)dismissUnlockPrompt;
- (void)enableBluetoothTapped;
- (void)invalidate;
- (void)pairTapped;
- (void)releaseHUDTransaction;
- (void)setDeviceType:(unint64_t)type;
- (void)setShouldShowWhatsNew:(BOOL)new;
- (void)showChargingStatus;
- (void)showEnableBluetoothPill;
- (void)showPairConsentPrompt;
- (void)showPairingFailure;
- (void)showPairingStarted;
- (void)showPairingSuccess;
- (void)showSubsequentPairSuccess;
- (void)showUnlockPrompt;
- (void)updateDeviceInfoWithDeviceType:(unint64_t)type batteryLevel:(double)level batteryLevelKnown:(BOOL)known edge:(unint64_t)edge orientation:(unint64_t)orientation isCharging:(BOOL)charging identifier:(id)identifier;
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

- (void)updateDeviceInfoWithDeviceType:(unint64_t)type batteryLevel:(double)level batteryLevelKnown:(BOOL)known edge:(unint64_t)edge orientation:(unint64_t)orientation isCharging:(BOOL)charging identifier:(id)identifier
{
  chargingCopy = charging;
  knownCopy = known;
  identifierCopy = identifier;
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate updateDeviceInfoWithDeviceType:type batteryLevel:knownCopy batteryLevelKnown:edge edge:orientation orientation:chargingCopy isCharging:identifierCopy identifier:level];
}

- (void)showPairingStarted
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showPairingStarted];
}

- (void)showEnableBluetoothPill
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showEnableBluetoothPill];
}

- (void)showPairingSuccess
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showPairingSuccess];
}

- (void)showPairingFailure
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showPairingFailure];
}

- (void)showSubsequentPairSuccess
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showSubsequentPairSuccess];
}

- (void)showChargingStatus
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showChargingStatus];
}

- (void)dismissChargingStatus
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate dismissChargingStatus];
}

- (void)showUnlockPrompt
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showUnlockPrompt];
}

- (void)showPairConsentPrompt
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate showPairConsentPrompt];
}

- (void)dismissUnlockPrompt
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate dismissUnlockPrompt];
}

- (void)dismissBTPrompt
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate dismissBTPrompt];
}

- (void)releaseHUDTransaction
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate releaseHUDTransaction];
}

- (void)acquireHUDTransaction
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate acquireHUDTransaction];
}

- (void)setShouldShowWhatsNew:(BOOL)new
{
  newCopy = new;
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate setShouldShowWhatsNew:newCopy];
}

- (void)setDeviceType:(unint64_t)type
{
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate setDeviceType:type];
}

- (void)dismissUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(SFB332SetupObserver *)self delegate];
  [delegate dismissUIAnimated:animatedCopy];
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