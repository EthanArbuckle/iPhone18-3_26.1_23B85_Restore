@interface SBSystemServiceServer
+ (SBSystemServiceServer)sharedInstance;
- (SBSystemServiceServerAppSwitcherDelegate)appSwitcherDelegate;
- (SBSystemServiceServerBiometricsDelegate)biometricsDelegate;
- (SBSystemServiceServerHardwareButtonDelegate)hardwareButtonDelegate;
- (SBSystemServiceServerMenuBarDelegate)menuBarDelegate;
- (SBSystemServiceServerSoftwareUpdateDelegate)softwareUpdateDelegate;
- (SBSystemServiceServerStateDumpDelegate)stateDumpDelegate;
- (SBSystemServiceServerSystemApertureStateDumpDelegate)systemApertureStateDumpDelegate;
- (SBSystemServiceServerTestAutomationDelegate)testAutomationDelegate;
- (id)_init;
- (void)_handleBiometricsFetchUnlockCredentialSetMessage:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonAcquireAssertionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonGetHapticType:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonGetHintViewsSupported:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonGetToggleButtonState:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonRegisterAssociatedHintView:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonRequestSystemGlowEffect:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonSetHapticType:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonSetPressEventMask:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonSetRequestsHIDEvents:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonUpdateHintContentVisibility:(id)a3 fromClient:(id)a4;
- (void)_handleHardwareButtonUpdateSystemGlowStyle:(id)a3 fromClient:(id)a4;
- (void)_handleLoadStashedSwitcherModelFromPath:(id)a3 fromClient:(id)a4;
- (void)_handleMenuBarServiceClientMessageTypeQuerySupported:(id)a3 fromClient:(id)a4;
- (void)_handleMenuBarServiceClientMessageTypeToggleVisibility:(id)a3 fromClient:(id)a4;
- (void)_handleRequestAppSwitcherAppearanceForHiddenApp:(id)a3 fromClient:(id)a4;
- (void)_handleRequestAppSwitcherResetLayoutAttributes:(id)a3 fromClient:(id)a4;
- (void)_handleRequestAppSwitcherUpdateWindowingMode:(id)a3 fromClient:(id)a4;
- (void)_handleSoftwareUpdateGetPasscodePolicy:(id)a3 fromClient:(id)a4;
- (void)_handleSoftwareUpdateSetPasscodePolicy:(id)a3 fromClient:(id)a4;
- (void)_handleStashSwitcherModelToPath:(id)a3 fromClient:(id)a4;
- (void)_handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleStateDumpServiceClientMessageTypeStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleStateDumpServiceClientMessageTypeStateDumpToFile:(id)a3 fromClient:(id)a4;
- (void)_handleSystemApertureRequestStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleSystemApertureRequestToWriteStateDumpToFile:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationAddSpecificWidgetStackToPageWithSize:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationAddSpecificWidgetToPageWithSize:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationAddWidgetsToEachPage:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationBlockApplicationForScreenTime:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationClearAllUserNotifications:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationEnterLostMode:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationExitLostMode:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetAvailableSecureFlipBookRecordableElements:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetChamoisPrefersDockHidden:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetChamoisPrefersStripHidden:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetChamoisWindowingUIEnabled:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetDeviceSupportsSystemAperture:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetScencesForBundleIdentifier:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetSpringBoardFrameRecording:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetSystemApertureModelStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetSystemApertureStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationGetWidgetControllerStateDump:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationInitiateSecureFlipBookRecording:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationRequestHUDHiddenAssertion:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationRequestReachabilityEnabledAssertion:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationResetToHomeScreen:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetAccessoryAttachedState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetAlertState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetAmbientPresentationState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetChamoisPrefersDockHidden:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetChamoisPrefersStripHidden:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetChamoisWindowingUIEnabled:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetHiddenFeatureState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetIdleTimerState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetMallocStackLoggingState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetOrientationLockState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetReachabilityActiveState:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetSpringBoardAnimationFrameRecording:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetSystemApertureUnderAutomationTesting:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSetUserPresenceDetectedSinceWake:(id)a3 fromClient:(id)a4;
- (void)_handleTestAutomationSuspendAllDisplays:(id)a3 fromClient:(id)a4;
- (void)dealloc;
- (void)noteClientDidDisconnect:(id)a3;
- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5;
@end

@implementation SBSystemServiceServer

- (SBSystemServiceServerHardwareButtonDelegate)hardwareButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hardwareButtonDelegate);

  return WeakRetained;
}

+ (SBSystemServiceServer)sharedInstance
{
  if (sharedInstance_onceToken_41 != -1)
  {
    +[SBSystemServiceServer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_20;

  return v3;
}

void __39__SBSystemServiceServer_sharedInstance__block_invoke()
{
  v0 = [[SBSystemServiceServer alloc] _init];
  v1 = sharedInstance___sharedInstance_20;
  sharedInstance___sharedInstance_20 = v0;
}

- (id)_init
{
  v3 = MEMORY[0x277D0AE00];
  Serial = BSDispatchQueueCreateSerial();
  v5 = [v3 queueWithDispatchQueue:Serial];

  v6 = *MEMORY[0x277D67190];
  v9.receiver = self;
  v9.super_class = SBSystemServiceServer;
  v7 = [(FBSServiceFacility *)&v9 initWithIdentifier:v6 queue:v5];

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSystemServiceServer.m" lineNumber:50 description:@"you can't deallocate the server"];

  v5.receiver = self;
  v5.super_class = SBSystemServiceServer;
  [(FBSServiceFacility *)&v5 dealloc];
}

- (void)noteClientDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBSystemServiceServer *)v4 noteClientDidDisconnect:v5];
  }

  v6 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
  v7 = v6;
  if (v6)
  {
    [v6 systemServiceServer:self clientDidDisconnect:v4];
  }
}

- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  switch(a4)
  {
    case 0:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherAppearanceForHiddenApp:v8 fromClient:v9];
      break;
    case 1:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherResetLayoutAttributes:v8 fromClient:v9];
      break;
    case 2:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherUpdateWindowingMode:v8 fromClient:v9];
      break;
    case 3:
      [(SBSystemServiceServer *)self _handleBiometricsFetchUnlockCredentialSetMessage:v8 fromClient:v9];
      break;
    case 4:
      [(SBSystemServiceServer *)self _handleHardwareButtonAcquireAssertionMessage:v8 fromClient:v9];
      break;
    case 5:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetPressEventMask:v8 fromClient:v9];
      break;
    case 6:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetRequestsHIDEvents:v8 fromClient:v9];
      break;
    case 7:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetToggleButtonState:v8 fromClient:v9];
      break;
    case 8:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetHapticType:v8 fromClient:v9];
      break;
    case 9:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetHapticType:v8 fromClient:v9];
      break;
    case 10:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetHintViewsSupported:v8 fromClient:v9];
      break;
    case 11:
      [(SBSystemServiceServer *)self _handleHardwareButtonRegisterAssociatedHintView:v8 fromClient:v9];
      break;
    case 12:
      [(SBSystemServiceServer *)self _handleHardwareButtonUpdateHintContentVisibility:v8 fromClient:v9];
      break;
    case 13:
      [(SBSystemServiceServer *)self _handleHardwareButtonRequestSystemGlowEffect:v8 fromClient:v9];
      break;
    case 14:
      [(SBSystemServiceServer *)self _handleHardwareButtonUpdateSystemGlowStyle:v8 fromClient:v9];
      break;
    case 15:
      [(SBSystemServiceServer *)self _handleSoftwareUpdateSetPasscodePolicy:v8 fromClient:v9];
      break;
    case 16:
      [(SBSystemServiceServer *)self _handleSoftwareUpdateGetPasscodePolicy:v8 fromClient:v9];
      break;
    case 17:
      [(SBSystemServiceServer *)self _handleTestAutomationSuspendAllDisplays:v8 fromClient:v9];
      break;
    case 18:
      [(SBSystemServiceServer *)self _handleTestAutomationClearAllUserNotifications:v8 fromClient:v9];
      break;
    case 19:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAlertState:v8 fromClient:v9];
      break;
    case 20:
      [(SBSystemServiceServer *)self _handleTestAutomationSetHiddenFeatureState:v8 fromClient:v9];
      break;
    case 21:
      [(SBSystemServiceServer *)self _handleTestAutomationSetIdleTimerState:v8 fromClient:v9];
      break;
    case 22:
      [(SBSystemServiceServer *)self _handleTestAutomationSetOrientationLockState:v8 fromClient:v9];
      break;
    case 23:
      [(SBSystemServiceServer *)self _handleTestAutomationSetMallocStackLoggingState:v8 fromClient:v9];
      break;
    case 24:
      [(SBSystemServiceServer *)self _handleTestAutomationSetReachabilityActiveState:v8 fromClient:v9];
      break;
    case 25:
      [(SBSystemServiceServer *)self _handleTestAutomationRequestReachabilityEnabledAssertion:v8 fromClient:v9];
      break;
    case 26:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAmbientPresentationState:v8 fromClient:v9];
      break;
    case 27:
      [(SBSystemServiceServer *)self _handleTestAutomationResetToHomeScreen:v8 fromClient:v9];
      break;
    case 28:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAccessoryAttachedState:v8 fromClient:v9];
      break;
    case 29:
      [(SBSystemServiceServer *)self _handleTestAutomationRequestHUDHiddenAssertion:v8 fromClient:v9];
      break;
    case 30:
      [(SBSystemServiceServer *)self _handleTestAutomationBlockApplicationForScreenTime:v8 fromClient:v9];
      break;
    case 31:
      [(SBSystemServiceServer *)self _handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:v8 fromClient:v9];
      break;
    case 33:
      [(SBSystemServiceServer *)self _handleStashSwitcherModelToPath:v8 fromClient:v9];
      break;
    case 34:
      [(SBSystemServiceServer *)self _handleLoadStashedSwitcherModelFromPath:v8 fromClient:v9];
      break;
    case 35:
      [(SBSystemServiceServer *)self _handleTestAutomationAddWidgetsToEachPage:v8 fromClient:v9];
      break;
    case 36:
      [(SBSystemServiceServer *)self _handleTestAutomationAddSpecificWidgetToPageWithSize:v8 fromClient:v9];
      break;
    case 37:
      [(SBSystemServiceServer *)self _handleTestAutomationAddSpecificWidgetStackToPageWithSize:v8 fromClient:v9];
      break;
    case 38:
      [(SBSystemServiceServer *)self _handleTestAutomationEnterLostMode:v8 fromClient:v9];
      break;
    case 39:
      [(SBSystemServiceServer *)self _handleTestAutomationExitLostMode:v8 fromClient:v9];
      break;
    case 40:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisWindowingUIEnabled:v8 fromClient:v9];
      break;
    case 41:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisWindowingUIEnabled:v8 fromClient:v9];
      break;
    case 42:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisPrefersDockHidden:v8 fromClient:v9];
      break;
    case 43:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisPrefersDockHidden:v8 fromClient:v9];
      break;
    case 44:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisPrefersStripHidden:v8 fromClient:v9];
      break;
    case 45:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisPrefersStripHidden:v8 fromClient:v9];
      break;
    case 46:
      [(SBSystemServiceServer *)self _handleTestAutomationSetUserPresenceDetectedSinceWake:v8 fromClient:v9];
      break;
    case 47:
      [(SBSystemServiceServer *)self _handleTestAutomationGetDeviceSupportsSystemAperture:v8 fromClient:v9];
      break;
    case 48:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSystemApertureStateDump:v8 fromClient:v9];
      break;
    case 49:
      [(SBSystemServiceServer *)self _handleTestAutomationGetWidgetControllerStateDump:v8 fromClient:v9];
      break;
    case 50:
      [(SBSystemServiceServer *)self _handleTestAutomationSetSpringBoardAnimationFrameRecording:v8 fromClient:v9];
      break;
    case 51:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSpringBoardFrameRecording:v8 fromClient:v9];
      break;
    case 52:
      [(SBSystemServiceServer *)self _handleTestAutomationSetSystemApertureUnderAutomationTesting:v8 fromClient:v9];
      break;
    case 53:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSystemApertureModelStateDump:v8 fromClient:v9];
      break;
    case 54:
      [(SBSystemServiceServer *)self _handleTestAutomationInitiateSecureFlipBookRecording:v8 fromClient:v9];
      break;
    case 55:
      [(SBSystemServiceServer *)self _handleTestAutomationGetAvailableSecureFlipBookRecordableElements:v8 fromClient:v9];
      break;
    case 56:
      [(SBSystemServiceServer *)self _handleSystemApertureRequestToWriteStateDumpToFile:v8 fromClient:v9];
      break;
    case 57:
      [(SBSystemServiceServer *)self _handleSystemApertureRequestStateDump:v8 fromClient:v9];
      break;
    case 58:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeStateDump:v8 fromClient:v9];
      break;
    case 59:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeStateDumpToFile:v8 fromClient:v9];
      break;
    case 60:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:v8 fromClient:v9];
      break;
    case 61:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:v8 fromClient:v9];
      break;
    case 62:
      [(SBSystemServiceServer *)self _handleMenuBarServiceClientMessageTypeQuerySupported:v8 fromClient:v9];
      break;
    case 63:
      [(SBSystemServiceServer *)self _handleMenuBarServiceClientMessageTypeToggleVisibility:v8 fromClient:v9];
      break;
    default:
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v9 processHandle];
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client process [%@] sent a message with an unknown format. Ignoring request.", &v14, 0x16u);
      }

      break;
  }
}

- (void)_handleRequestAppSwitcherAppearanceForHiddenApp:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  v10 = [v6 payload];
  v11 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();

  if (_handleRequestAppSwitcherAppearanceForHiddenApp_fromClient__onceToken != -1)
  {
    [SBSystemServiceServer _handleRequestAppSwitcherAppearanceForHiddenApp:fromClient:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SBSystemServiceServer__handleRequestAppSwitcherAppearanceForHiddenApp_fromClient___block_invoke_2;
  v14[3] = &unk_2783A9398;
  v15 = v6;
  v13 = v6;
  [WeakRetained systemServiceServer:self requestAppearanceForHiddenAppWithBundleIdentifier:v9 assertionPort:v11 forClient:v7 withCompletion:v14];
}

void __84__SBSystemServiceServer__handleRequestAppSwitcherAppearanceForHiddenApp_fromClient___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CF0C58]);
  v1 = _handleRequestAppSwitcherAppearanceForHiddenApp_fromClient__serverPort;
  _handleRequestAppSwitcherAppearanceForHiddenApp_fromClient__serverPort = v0;
}

uint64_t __84__SBSystemServiceServer__handleRequestAppSwitcherAppearanceForHiddenApp_fromClient___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__SBSystemServiceServer__handleRequestAppSwitcherAppearanceForHiddenApp_fromClient___block_invoke_3;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __84__SBSystemServiceServer__handleRequestAppSwitcherAppearanceForHiddenApp_fromClient___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D66E58], *(a1 + 32));
  if (*(a1 + 32) == 1 && [_handleRequestAppSwitcherAppearanceForHiddenApp_fromClient__serverPort isUsable])
  {
    v3 = objc_alloc(MEMORY[0x277CF0C60]);
    v4 = [v3 initFromReceiveRight:_handleRequestAppSwitcherAppearanceForHiddenApp_fromClient__serverPort];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

- (void)_handleRequestAppSwitcherResetLayoutAttributes:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBSystemServiceServer__handleRequestAppSwitcherResetLayoutAttributes_fromClient___block_invoke;
  v10[3] = &unk_2783A8C18;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self resetLayoutAttributesForClient:v7 completion:v10];
}

- (void)_handleRequestAppSwitcherUpdateWindowingMode:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  int64 = xpc_dictionary_get_int64(v8, *MEMORY[0x277D676A0]);

  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SBSystemServiceServer__handleRequestAppSwitcherUpdateWindowingMode_fromClient___block_invoke;
  v12[3] = &unk_2783A8C18;
  v13 = v6;
  v11 = v6;
  [WeakRetained systemServiceServer:self requestUpdateWindowingMode:int64 forClient:v7 completion:v12];
}

- (void)_handleBiometricsFetchUnlockCredentialSetMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SBSystemServiceServer__handleBiometricsFetchUnlockCredentialSetMessage_fromClient___block_invoke;
  v12[3] = &unk_2783BDA28;
  v13 = v6;
  v8 = v6;
  v9 = MEMORY[0x223D6F7F0](v12);
  v10 = [(SBSystemServiceServer *)self biometricsDelegate];
  v11 = v10;
  if (v10)
  {
    [v10 systemServiceServer:self client:v7 fetchUnlockCredentialSet:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __85__SBSystemServiceServer__handleBiometricsFetchUnlockCredentialSetMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SBSystemServiceServer__handleBiometricsFetchUnlockCredentialSetMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

- (void)_handleHardwareButtonAcquireAssertionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SBSystemServiceServer__handleHardwareButtonAcquireAssertionMessage_fromClient___block_invoke;
  v15[3] = &unk_2783BDA50;
  v8 = v6;
  v16 = v8;
  v9 = MEMORY[0x223D6F7F0](v15);
  v10 = [v8 payload];
  v11 = v10;
  if (v10 && object_getClass(v10) == MEMORY[0x277D86468])
  {
    v12 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v12)
    {
      uint64 = xpc_dictionary_get_uint64(v11, *MEMORY[0x277D677E0]);
      v14 = BSDeserializeStringFromXPCDictionaryWithKey();
      [v12 systemServiceServer:self client:v7 acquireAssertionOfType:uint64 forReason:v14 withCompletion:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __81__SBSystemServiceServer__handleHardwareButtonAcquireAssertionMessage_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__SBSystemServiceServer__handleHardwareButtonAcquireAssertionMessage_fromClient___block_invoke_2;
  v6[3] = &unk_2783B07B8;
  v7 = v3;
  v5 = v3;
  [v4 sendReplyMessageWithPacker:v6];
}

- (void)_handleHardwareButtonSetPressEventMask:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v8)
    {
      uint64 = xpc_dictionary_get_uint64(v7, *MEMORY[0x277D67700]);
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67738]);
      [v8 systemServiceServer:self client:v11 setEventMask:uint64 buttonKind:xpc_dictionary_get_int64(v7 priority:{*MEMORY[0x277D676F0]), int64}];
    }
  }
}

- (void)_handleHardwareButtonGetToggleButtonState:(id)a3 fromClient:(id)a4
{
  v7 = a3;
  v4 = [v7 payload];
  v5 = v4;
  if (v4 && object_getClass(v4) == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_int64(v5, *MEMORY[0x277D676F0]) == 6)
    {
      v6 = &__block_literal_global_25_2;
    }

    else
    {
      v6 = &__block_literal_global_27_0;
    }

    [v7 sendReplyMessageWithPacker:v6];
  }
}

void __78__SBSystemServiceServer__handleHardwareButtonGetToggleButtonState_fromClient___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (SBUIHasHIDRingerSwitch())
  {
    v2 = [SBApp ringerSwitchState] != 0;
  }

  else
  {
    v2 = -1;
  }

  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D67768], v2);
}

- (void)_handleHardwareButtonSetRequestsHIDEvents:(id)a3 fromClient:(id)a4
{
  v12 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v8)
    {
      v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67710]);
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0]);
      objc_opt_class();
      v11 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
      [v8 systemServiceServer:self client:v12 requestsHIDEvents:v9 token:v11 forButtonKind:int64];
    }
  }
}

- (void)_handleHardwareButtonSetHapticType:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v8)
    {
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67718]);
      [v8 systemServiceServer:self client:v10 setHapticType:int64 buttonKind:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0])}];
    }
  }
}

- (void)_handleHardwareButtonGetHapticType:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke;
  v15[3] = &unk_2783ACA48;
  v9 = v6;
  v16 = v9;
  v10 = MEMORY[0x223D6F7F0](v15);
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v11 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v11)
    {
      int64 = xpc_dictionary_get_int64(v8, *MEMORY[0x277D676F0]);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke_3;
      v13[3] = &unk_2783B8B50;
      v14 = v10;
      [v11 systemServiceServer:self client:v7 fetchHapticTypeForButtonKind:int64 completion:v13];
    }

    else
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v10[2](v10, 0);
  }
}

uint64_t __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleHardwareButtonGetHintViewsSupported:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v10 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 systemServiceServer:self getHintViewsSupportedForClient:v7];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__SBSystemServiceServer__handleHardwareButtonGetHintViewsSupported_fromClient___block_invoke;
      v13[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v14 = v12;
      [v6 sendReplyMessageWithPacker:v13];
    }
  }
}

- (void)_handleHardwareButtonRegisterAssociatedHintView:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v10 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v10)
    {
      uint64 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D67740]);
      v12 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D67748]);
      BSDeserializeCGSizeFromXPCDictionaryWithKey();
      v14 = v13;
      v16 = v15;
      int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D676F0]);
      v18 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      v19 = [v10 systemServiceServer:self client:v7 registerAssociatedHintViewContextId:uint64 renderId:v12 size:int64 buttonKind:v18 clientPort:{v14, v16}];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __84__SBSystemServiceServer__handleHardwareButtonRegisterAssociatedHintView_fromClient___block_invoke;
      v20[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v21 = v19;
      [v6 sendReplyMessageWithPacker:v20];
    }
  }
}

- (void)_handleHardwareButtonUpdateHintContentVisibility:(id)a3 fromClient:(id)a4
{
  v12 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v8)
    {
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67728]);
      v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0]);
      v11 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      [v8 systemServiceServer:self client:v12 updateHintContentVisibility:int64 forButton:v10 animationSettings:v11];
    }
  }
}

- (void)_handleHardwareButtonRequestSystemGlowEffect:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v10 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v10)
    {
      int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D67760]);
      v12 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      v13 = [v10 systemServiceServer:self client:v7 requestSystemGlowEffectWithInitialStyle:int64 clientPort:v12];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__SBSystemServiceServer__handleHardwareButtonRequestSystemGlowEffect_fromClient___block_invoke;
      v14[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v15 = v13;
      [v6 sendReplyMessageWithPacker:v14];
    }
  }
}

- (void)_handleHardwareButtonUpdateSystemGlowStyle:(id)a3 fromClient:(id)a4
{
  v9 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (v8)
    {
      [v8 systemServiceServer:self client:v9 updateSystemGlowStyle:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D67760])}];
    }
  }
}

- (void)_handleSoftwareUpdateSetPasscodePolicy:(id)a3 fromClient:(id)a4
{
  v9 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = [(SBSystemServiceServer *)self softwareUpdateDelegate];
    if (v8)
    {
      [v8 systemServiceServer:self client:v9 setPasscodePolicy:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D67788])}];
    }
  }
}

- (void)_handleSoftwareUpdateGetPasscodePolicy:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke;
  v13[3] = &unk_2783ACA48;
  v8 = v6;
  v14 = v8;
  v9 = MEMORY[0x223D6F7F0](v13);
  v10 = [(SBSystemServiceServer *)self softwareUpdateDelegate];
  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke_3;
    v11[3] = &unk_2783B8B50;
    v12 = v9;
    [v10 systemServiceServer:self client:v7 passcodePolicy:v11];
  }

  else
  {
    v9[2](v9, 0);
  }
}

uint64_t __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTestAutomationGetSystemApertureModelStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getSystemApertureModelStateDumpForClient:v7];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__SBSystemServiceServer__handleTestAutomationGetSystemApertureModelStateDump_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [v6 sendReplyMessageWithPacker:v10];
  }
}

void __89__SBSystemServiceServer__handleTestAutomationGetSystemApertureModelStateDump_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dataWithJSONObject:v3 options:1 error:0];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (void)_handleTestAutomationSetSpringBoardAnimationFrameRecording:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v7, *MEMORY[0x277D67830]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setSpringBoardAnimationFrameRecordingForUpdateTypes:uint64];
  }
}

- (void)_handleTestAutomationGetSpringBoardFrameRecording:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getAnimationFrameRecordingsForClient:v7];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetSpringBoardFrameRecording_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [v6 sendReplyMessageWithPacker:v10];
  }
}

void __86__SBSystemServiceServer__handleTestAutomationGetSpringBoardFrameRecording_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (void)_handleTestAutomationSetSystemApertureUnderAutomationTesting:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setSystemApertureUnderAutomationTesting:v8];
  }
}

- (void)_handleSystemApertureRequestStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    WeakRetained = objc_loadWeakRetained(&self->_systemApertureStateDumpDelegate);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__SBSystemServiceServer__handleSystemApertureRequestStateDump_fromClient___block_invoke;
    v11[3] = &unk_2783BDAA0;
    v12 = v6;
    [WeakRetained systemServiceServer:self client:v7 requestSystemApertureStateDumpWithCompletion:v11];
  }
}

void __74__SBSystemServiceServer__handleSystemApertureRequestStateDump_fromClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SBSystemServiceServer__handleSystemApertureRequestStateDump_fromClient___block_invoke_2;
  v10[3] = &unk_2783BDA78;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 sendReplyMessageWithPacker:v10];
}

void __74__SBSystemServiceServer__handleSystemApertureRequestStateDump_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277D677C8];
  v5 = *(a1 + 32);
  xdict = v3;
  if (v5)
  {
    v6 = [v5 UTF8String];
    v3 = xdict;
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  xpc_dictionary_set_string(v3, v4, v7);
  v8 = *(a1 + 40);
  if (v8)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x277D677C0], [v8 UTF8String]);
  }
}

- (void)_handleSystemApertureRequestToWriteStateDumpToFile:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SBSystemServiceServer__handleSystemApertureRequestToWriteStateDumpToFile_fromClient___block_invoke;
    v10[3] = &unk_2783BDA78;
    v10[4] = self;
    v11 = v7;
    [v6 sendReplyMessageWithPacker:v10];
  }
}

void __87__SBSystemServiceServer__handleSystemApertureRequestToWriteStateDumpToFile_fromClient___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D677A0]);
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v5 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained systemServiceServer:*(a1 + 32) client:*(a1 + 40) requestToWriteSystemApertureStateDumpToFile:v5];
}

- (void)_handleTestAutomationSuspendAllDisplays:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self suspendAllDisplaysForClient:v5];
}

- (void)_handleTestAutomationClearAllUserNotifications:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self clearAllUserNotificationsForClient:v5];
}

- (void)_handleTestAutomationSetUserPresenceDetectedSinceWake:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self setUserPresenceDetectedSinceWakeForClient:v5];
}

- (void)_handleTestAutomationSetAlertState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setAlertsEnabled:v8];
  }
}

- (void)_handleTestAutomationSetHiddenFeatureState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setHiddenFeaturesEnabled:v8];
  }
}

- (void)_handleTestAutomationSetIdleTimerState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setIdleTimerEnabled:v8];
  }
}

- (void)_handleTestAutomationSetOrientationLockState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setOrientationLockEnabled:v8];
  }
}

- (void)_handleTestAutomationSetMallocStackLoggingState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setMallocStackLoggingEnabled:v8];
  }
}

- (void)_handleTestAutomationSetReachabilityActiveState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setReachabilityActive:v8];
  }
}

- (void)_handleTestAutomationRequestReachabilityEnabledAssertion:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    v9 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v11 port:v9 acquireAssertionForReachabilityEnabled:v8];
  }
}

- (void)_handleTestAutomationSetAmbientPresentationState:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D677F8]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setAmbientPresentationState:int64];
  }
}

- (void)_handleTestAutomationResetToHomeScreen:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67800]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 resetToHomeScreenAnimated:v8];
  }
}

- (void)_handleTestAutomationSetAccessoryAttachedState:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D677F0]);
    v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v11 setAccessoryType:int64 attached:v9];
  }
}

- (void)_handleTestAutomationBlockApplicationForScreenTime:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67808]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v11 setApplicationBundleIdentifier:v8 blockedForScreenTime:v9];
  }
}

- (void)_handleTestAutomationRequestHUDHiddenAssertion:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    v9 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v11 port:v9 acquireHUDHiddenAssertionForIdentifier:v8];
  }
}

- (void)_handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setTestRunnerRecoveryApplicationBundleIdentifier:v8];
  }
}

- (void)_handleTestAutomationGetScencesForBundleIdentifier:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    v10 = BSDeserializeStringFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__SBSystemServiceServer__handleTestAutomationGetScencesForBundleIdentifier_fromClient___block_invoke;
    v12[3] = &unk_2783A95E8;
    v13 = v6;
    [WeakRetained systemServiceServer:self client:v7 countScenesForBundleIdentifier:v10 withCompletion:v12];
  }
}

uint64_t __87__SBSystemServiceServer__handleTestAutomationGetScencesForBundleIdentifier_fromClient___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__SBSystemServiceServer__handleTestAutomationGetScencesForBundleIdentifier_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleStashSwitcherModelToPath:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = [a3 payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self client:v6 stashSwitcherModelToPath:v9];
}

- (void)_handleLoadStashedSwitcherModelFromPath:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = [a3 payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self client:v6 loadStashedSwitcherModelFromPath:v9];
}

- (void)_handleTestAutomationAddWidgetsToEachPage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self addWidgetsToEachPageForClient:v5];
}

- (void)_handleTestAutomationAddSpecificWidgetToPageWithSize:(id)a3 fromClient:(id)a4
{
  v12 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67848]);
    v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67878]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v12 addWidgetWithIdentifier:v8 toPage:int64 withSizing:v10];
  }
}

- (void)_handleTestAutomationAddSpecificWidgetStackToPageWithSize:(id)a3 fromClient:(id)a4
{
  v12 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = BSCreateDeserializedArrayFromXPCDictionaryWithKey();
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67848]);
    v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67878]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v12 addWidgetStackWithIdentifiers:v8 toPage:int64 withSizing:v10];
  }
}

id __94__SBSystemServiceServer__handleTestAutomationAddSpecificWidgetStackToPageWithSize_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && object_getClass(v2) == MEMORY[0x277D864C0])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTestAutomationEnterLostMode:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self enterLostModeForClient:v5];
}

- (void)_handleTestAutomationExitLostMode:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self exitLostModeForClient:v5];
}

- (void)_handleTestAutomationInitiateSecureFlipBookRecording:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v9, *MEMORY[0x277D67860]);
    if (string)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__SBSystemServiceServer__handleTestAutomationInitiateSecureFlipBookRecording_fromClient___block_invoke;
      v13[3] = &unk_2783BDAA0;
      v14 = v6;
      [WeakRetained systemServiceServer:self client:v7 initiateSecureFlipBookRecordingForElement:v11 withCompletion:v13];
    }

    else
    {
      [v6 sendReplyMessageWithPacker:&__block_literal_global_42_2];
    }
  }
}

void __89__SBSystemServiceServer__handleTestAutomationInitiateSecureFlipBookRecording_fromClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__SBSystemServiceServer__handleTestAutomationInitiateSecureFlipBookRecording_fromClient___block_invoke_2;
  v10[3] = &unk_2783BDA78;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 sendReplyMessageWithPacker:v10];
}

void __89__SBSystemServiceServer__handleTestAutomationInitiateSecureFlipBookRecording_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x277D67868], [v3 UTF8String]);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x277D67870], [v4 UTF8String]);
  }
}

void __89__SBSystemServiceServer__handleTestAutomationInitiateSecureFlipBookRecording_fromClient___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D67868];
  xdict = a2;
  xpc_dictionary_set_string(xdict, v2, [@"Element identifier is null" UTF8String]);
}

- (void)_handleTestAutomationGetAvailableSecureFlipBookRecordableElements:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getAvailableRecordableFlipBookElementIdentifiers:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__SBSystemServiceServer__handleTestAutomationGetAvailableSecureFlipBookRecordableElements_fromClient___block_invoke;
  v11[3] = &unk_2783B07B8;
  v12 = v9;
  v10 = v9;
  [v7 sendReplyMessageWithPacker:v11];
}

void __102__SBSystemServiceServer__handleTestAutomationGetAvailableSecureFlipBookRecordableElements_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dataWithJSONObject:v3 options:1 error:0];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (void)_handleTestAutomationGetChamoisWindowingUIEnabled:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisWindowingUIEnabled_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self client:v7 getIsChamoisWindowingUIEnabledWithCompletion:v10];
}

uint64_t __86__SBSystemServiceServer__handleTestAutomationGetChamoisWindowingUIEnabled_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisWindowingUIEnabled_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTestAutomationSetChamoisWindowingUIEnabled:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setChamoisWindowingUIEnabled:v8];
  }
}

- (void)_handleTestAutomationGetChamoisPrefersDockHidden:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersDockHidden_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self client:v7 getChamoisPrefersDockHiddenWithCompletion:v10];
}

uint64_t __85__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersDockHidden_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersDockHidden_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTestAutomationSetChamoisPrefersDockHidden:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setChamoisPrefersDockHidden:v8];
  }
}

- (void)_handleTestAutomationGetChamoisPrefersStripHidden:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersStripHidden_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self client:v7 getChamoisPrefersStripHiddenWithCompletion:v10];
}

uint64_t __86__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersStripHidden_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersStripHidden_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTestAutomationSetChamoisPrefersStripHidden:(id)a3 fromClient:(id)a4
{
  v10 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:v10 setChamoisPrefersStripHidden:v8];
  }
}

- (void)_handleTestAutomationGetDeviceSupportsSystemAperture:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke;
  v14[3] = &unk_2783A9398;
  v15 = v6;
  v7 = v6;
  v8 = a4;
  v9 = MEMORY[0x223D6F7F0](v14);
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke_3;
  v12[3] = &unk_2783A9C70;
  v13 = v9;
  v11 = v9;
  [WeakRetained systemServiceServer:self client:v8 getDeviceSupportsSystemAperture:v12];
}

uint64_t __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleTestAutomationGetSystemApertureStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getSystemApertureStateDumpForClient:v7];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SBSystemServiceServer__handleTestAutomationGetSystemApertureStateDump_fromClient___block_invoke;
    v12[3] = &unk_2783BDA78;
    v13 = v9;
    v14 = v10;
    v11 = v10;
    [v6 sendReplyMessageWithPacker:v12];
  }
}

void __84__SBSystemServiceServer__handleTestAutomationGetSystemApertureStateDump_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = xpc_dictionary_create(0, 0, 0);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              v15 = [v9 valueForKey:v14];
              [v14 UTF8String];
              BSSerializeStringToXPCDictionaryWithKey();
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        [*(v18 + 40) addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  BSSerializeArrayToXPCDictionaryWithKey();
}

- (void)_handleTestAutomationGetWidgetControllerStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getWidgetControllerStateDump:v7];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetWidgetControllerStateDump_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [v6 sendReplyMessageWithPacker:v10];
  }
}

void __86__SBSystemServiceServer__handleTestAutomationGetWidgetControllerStateDump_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dataWithJSONObject:v3 options:1 error:0];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (void)_handleStateDumpServiceClientMessageTypeStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D677A8]);
    WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeStateDump_fromClient___block_invoke;
    v12[3] = &unk_2783AC778;
    v13 = v6;
    [WeakRetained systemServiceServer:self client:v7 requestStateDump:uint64 withCompletion:v12];
  }
}

void __86__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeStateDump_fromClient___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeStateDump_fromClient___block_invoke_2;
  v12[3] = &unk_2783BDB28;
  v15 = a2;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 sendReplyMessageWithPacker:v12];
}

void __86__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeStateDump_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D677B0];
  v4 = *(a1 + 48);
  xdict = a2;
  xpc_dictionary_set_BOOL(xdict, v3, v4);
  v5 = *MEMORY[0x277D67798];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 UTF8String];
  }

  else
  {
    v7 = "";
  }

  xpc_dictionary_set_string(xdict, v5, v7);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D677B8], [*(a1 + 40) UTF8String]);
}

- (void)_handleStateDumpServiceClientMessageTypeStateDumpToFile:(id)a3 fromClient:(id)a4
{
  v12 = a4;
  v6 = [a3 payload];
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v7, *MEMORY[0x277D677A8]);
    string = xpc_dictionary_get_string(v7, *MEMORY[0x277D677A0]);
    if (string)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    }

    else
    {
      v10 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
    [WeakRetained systemServiceServer:self client:v12 requestStateDump:uint64 toTextFileAtPath:v10];
  }
}

- (void)_handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 payload];
  v9 = v8;
  if (v8 && object_getClass(v8) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D67790]);
    WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeEnableRemoteStateDump_fromClient___block_invoke;
    v12[3] = &unk_2783BDB78;
    v13 = v6;
    [WeakRetained systemServiceServer:self client:v7 enableRemoteStateDumpWithTimeout:int64 completion:v12];
  }
}

void __98__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeEnableRemoteStateDump_fromClient___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeEnableRemoteStateDump_fromClient___block_invoke_2;
  v8[3] = &unk_2783BDB50;
  v10 = a2;
  v9 = v5;
  v7 = v5;
  [v6 sendReplyMessageWithPacker:v8];
}

void __98__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeEnableRemoteStateDump_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D677B0];
  v4 = *(a1 + 40);
  xdict = a2;
  xpc_dictionary_set_BOOL(xdict, v3, v4);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D677B8], [*(a1 + 32) UTF8String]);
}

- (void)_handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeDisableRemoteStateDump_fromClient___block_invoke;
  v10[3] = &unk_2783BDB78;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self client:v7 disableRemoteStateDumpWithCompletion:v10];
}

void __99__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeDisableRemoteStateDump_fromClient___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeDisableRemoteStateDump_fromClient___block_invoke_2;
  v8[3] = &unk_2783BDB50;
  v10 = a2;
  v9 = v5;
  v7 = v5;
  [v6 sendReplyMessageWithPacker:v8];
}

void __99__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeDisableRemoteStateDump_fromClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D677B0];
  v4 = *(a1 + 40);
  xdict = a2;
  xpc_dictionary_set_BOOL(xdict, v3, v4);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D677B8], [*(a1 + 32) UTF8String]);
}

- (void)_handleMenuBarServiceClientMessageTypeQuerySupported:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__SBSystemServiceServer__handleMenuBarServiceClientMessageTypeQuerySupported_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = v6;
  v9 = v6;
  [WeakRetained systemServiceServer:self queryMenuBarSupportedForClient:v7 withCompletion:v10];
}

uint64_t __89__SBSystemServiceServer__handleMenuBarServiceClientMessageTypeQuerySupported_fromClient___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__SBSystemServiceServer__handleMenuBarServiceClientMessageTypeQuerySupported_fromClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleMenuBarServiceClientMessageTypeToggleVisibility:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarDelegate);
  [WeakRetained systemServiceServer:self toggleMenuBarVisibilityForClient:v5];
}

- (SBSystemServiceServerAppSwitcherDelegate)appSwitcherDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerBiometricsDelegate)biometricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricsDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerSoftwareUpdateDelegate)softwareUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_softwareUpdateDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerTestAutomationDelegate)testAutomationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerStateDumpDelegate)stateDumpDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerSystemApertureStateDumpDelegate)systemApertureStateDumpDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureStateDumpDelegate);

  return WeakRetained;
}

- (SBSystemServiceServerMenuBarDelegate)menuBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_menuBarDelegate);

  return WeakRetained;
}

- (void)noteClientDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "client did disconnect:%{public}@", &v2, 0xCu);
}

@end