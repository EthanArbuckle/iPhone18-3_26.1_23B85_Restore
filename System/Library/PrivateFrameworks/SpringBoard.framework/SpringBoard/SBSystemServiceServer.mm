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
- (void)_handleBiometricsFetchUnlockCredentialSetMessage:(id)message fromClient:(id)client;
- (void)_handleHardwareButtonAcquireAssertionMessage:(id)message fromClient:(id)client;
- (void)_handleHardwareButtonGetHapticType:(id)type fromClient:(id)client;
- (void)_handleHardwareButtonGetHintViewsSupported:(id)supported fromClient:(id)client;
- (void)_handleHardwareButtonGetToggleButtonState:(id)state fromClient:(id)client;
- (void)_handleHardwareButtonRegisterAssociatedHintView:(id)view fromClient:(id)client;
- (void)_handleHardwareButtonRequestSystemGlowEffect:(id)effect fromClient:(id)client;
- (void)_handleHardwareButtonSetHapticType:(id)type fromClient:(id)client;
- (void)_handleHardwareButtonSetPressEventMask:(id)mask fromClient:(id)client;
- (void)_handleHardwareButtonSetRequestsHIDEvents:(id)events fromClient:(id)client;
- (void)_handleHardwareButtonUpdateHintContentVisibility:(id)visibility fromClient:(id)client;
- (void)_handleHardwareButtonUpdateSystemGlowStyle:(id)style fromClient:(id)client;
- (void)_handleLoadStashedSwitcherModelFromPath:(id)path fromClient:(id)client;
- (void)_handleMenuBarServiceClientMessageTypeQuerySupported:(id)supported fromClient:(id)client;
- (void)_handleMenuBarServiceClientMessageTypeToggleVisibility:(id)visibility fromClient:(id)client;
- (void)_handleRequestAppSwitcherAppearanceForHiddenApp:(id)app fromClient:(id)client;
- (void)_handleRequestAppSwitcherResetLayoutAttributes:(id)attributes fromClient:(id)client;
- (void)_handleRequestAppSwitcherUpdateWindowingMode:(id)mode fromClient:(id)client;
- (void)_handleSoftwareUpdateGetPasscodePolicy:(id)policy fromClient:(id)client;
- (void)_handleSoftwareUpdateSetPasscodePolicy:(id)policy fromClient:(id)client;
- (void)_handleStashSwitcherModelToPath:(id)path fromClient:(id)client;
- (void)_handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:(id)dump fromClient:(id)client;
- (void)_handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:(id)dump fromClient:(id)client;
- (void)_handleStateDumpServiceClientMessageTypeStateDump:(id)dump fromClient:(id)client;
- (void)_handleStateDumpServiceClientMessageTypeStateDumpToFile:(id)file fromClient:(id)client;
- (void)_handleSystemApertureRequestStateDump:(id)dump fromClient:(id)client;
- (void)_handleSystemApertureRequestToWriteStateDumpToFile:(id)file fromClient:(id)client;
- (void)_handleTestAutomationAddSpecificWidgetStackToPageWithSize:(id)size fromClient:(id)client;
- (void)_handleTestAutomationAddSpecificWidgetToPageWithSize:(id)size fromClient:(id)client;
- (void)_handleTestAutomationAddWidgetsToEachPage:(id)page fromClient:(id)client;
- (void)_handleTestAutomationBlockApplicationForScreenTime:(id)time fromClient:(id)client;
- (void)_handleTestAutomationClearAllUserNotifications:(id)notifications fromClient:(id)client;
- (void)_handleTestAutomationEnterLostMode:(id)mode fromClient:(id)client;
- (void)_handleTestAutomationExitLostMode:(id)mode fromClient:(id)client;
- (void)_handleTestAutomationGetAvailableSecureFlipBookRecordableElements:(id)elements fromClient:(id)client;
- (void)_handleTestAutomationGetChamoisPrefersDockHidden:(id)hidden fromClient:(id)client;
- (void)_handleTestAutomationGetChamoisPrefersStripHidden:(id)hidden fromClient:(id)client;
- (void)_handleTestAutomationGetChamoisWindowingUIEnabled:(id)enabled fromClient:(id)client;
- (void)_handleTestAutomationGetDeviceSupportsSystemAperture:(id)aperture fromClient:(id)client;
- (void)_handleTestAutomationGetScencesForBundleIdentifier:(id)identifier fromClient:(id)client;
- (void)_handleTestAutomationGetSpringBoardFrameRecording:(id)recording fromClient:(id)client;
- (void)_handleTestAutomationGetSystemApertureModelStateDump:(id)dump fromClient:(id)client;
- (void)_handleTestAutomationGetSystemApertureStateDump:(id)dump fromClient:(id)client;
- (void)_handleTestAutomationGetWidgetControllerStateDump:(id)dump fromClient:(id)client;
- (void)_handleTestAutomationInitiateSecureFlipBookRecording:(id)recording fromClient:(id)client;
- (void)_handleTestAutomationRequestHUDHiddenAssertion:(id)assertion fromClient:(id)client;
- (void)_handleTestAutomationRequestReachabilityEnabledAssertion:(id)assertion fromClient:(id)client;
- (void)_handleTestAutomationResetToHomeScreen:(id)screen fromClient:(id)client;
- (void)_handleTestAutomationSetAccessoryAttachedState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetAlertState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetAmbientPresentationState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetChamoisPrefersDockHidden:(id)hidden fromClient:(id)client;
- (void)_handleTestAutomationSetChamoisPrefersStripHidden:(id)hidden fromClient:(id)client;
- (void)_handleTestAutomationSetChamoisWindowingUIEnabled:(id)enabled fromClient:(id)client;
- (void)_handleTestAutomationSetHiddenFeatureState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetIdleTimerState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetMallocStackLoggingState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetOrientationLockState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetReachabilityActiveState:(id)state fromClient:(id)client;
- (void)_handleTestAutomationSetSpringBoardAnimationFrameRecording:(id)recording fromClient:(id)client;
- (void)_handleTestAutomationSetSystemApertureUnderAutomationTesting:(id)testing fromClient:(id)client;
- (void)_handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier fromClient:(id)client;
- (void)_handleTestAutomationSetUserPresenceDetectedSinceWake:(id)wake fromClient:(id)client;
- (void)_handleTestAutomationSuspendAllDisplays:(id)displays fromClient:(id)client;
- (void)dealloc;
- (void)noteClientDidDisconnect:(id)disconnect;
- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemServiceServer.m" lineNumber:50 description:@"you can't deallocate the server"];

  v5.receiver = self;
  v5.super_class = SBSystemServiceServer;
  [(FBSServiceFacility *)&v5 dealloc];
}

- (void)noteClientDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBSystemServiceServer *)disconnectCopy noteClientDidDisconnect:v5];
  }

  hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
  v7 = hardwareButtonDelegate;
  if (hardwareButtonDelegate)
  {
    [hardwareButtonDelegate systemServiceServer:self clientDidDisconnect:disconnectCopy];
  }
}

- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  clientCopy = client;
  switch(type)
  {
    case 0:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherAppearanceForHiddenApp:messageCopy fromClient:clientCopy];
      break;
    case 1:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherResetLayoutAttributes:messageCopy fromClient:clientCopy];
      break;
    case 2:
      [(SBSystemServiceServer *)self _handleRequestAppSwitcherUpdateWindowingMode:messageCopy fromClient:clientCopy];
      break;
    case 3:
      [(SBSystemServiceServer *)self _handleBiometricsFetchUnlockCredentialSetMessage:messageCopy fromClient:clientCopy];
      break;
    case 4:
      [(SBSystemServiceServer *)self _handleHardwareButtonAcquireAssertionMessage:messageCopy fromClient:clientCopy];
      break;
    case 5:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetPressEventMask:messageCopy fromClient:clientCopy];
      break;
    case 6:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetRequestsHIDEvents:messageCopy fromClient:clientCopy];
      break;
    case 7:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetToggleButtonState:messageCopy fromClient:clientCopy];
      break;
    case 8:
      [(SBSystemServiceServer *)self _handleHardwareButtonSetHapticType:messageCopy fromClient:clientCopy];
      break;
    case 9:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetHapticType:messageCopy fromClient:clientCopy];
      break;
    case 10:
      [(SBSystemServiceServer *)self _handleHardwareButtonGetHintViewsSupported:messageCopy fromClient:clientCopy];
      break;
    case 11:
      [(SBSystemServiceServer *)self _handleHardwareButtonRegisterAssociatedHintView:messageCopy fromClient:clientCopy];
      break;
    case 12:
      [(SBSystemServiceServer *)self _handleHardwareButtonUpdateHintContentVisibility:messageCopy fromClient:clientCopy];
      break;
    case 13:
      [(SBSystemServiceServer *)self _handleHardwareButtonRequestSystemGlowEffect:messageCopy fromClient:clientCopy];
      break;
    case 14:
      [(SBSystemServiceServer *)self _handleHardwareButtonUpdateSystemGlowStyle:messageCopy fromClient:clientCopy];
      break;
    case 15:
      [(SBSystemServiceServer *)self _handleSoftwareUpdateSetPasscodePolicy:messageCopy fromClient:clientCopy];
      break;
    case 16:
      [(SBSystemServiceServer *)self _handleSoftwareUpdateGetPasscodePolicy:messageCopy fromClient:clientCopy];
      break;
    case 17:
      [(SBSystemServiceServer *)self _handleTestAutomationSuspendAllDisplays:messageCopy fromClient:clientCopy];
      break;
    case 18:
      [(SBSystemServiceServer *)self _handleTestAutomationClearAllUserNotifications:messageCopy fromClient:clientCopy];
      break;
    case 19:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAlertState:messageCopy fromClient:clientCopy];
      break;
    case 20:
      [(SBSystemServiceServer *)self _handleTestAutomationSetHiddenFeatureState:messageCopy fromClient:clientCopy];
      break;
    case 21:
      [(SBSystemServiceServer *)self _handleTestAutomationSetIdleTimerState:messageCopy fromClient:clientCopy];
      break;
    case 22:
      [(SBSystemServiceServer *)self _handleTestAutomationSetOrientationLockState:messageCopy fromClient:clientCopy];
      break;
    case 23:
      [(SBSystemServiceServer *)self _handleTestAutomationSetMallocStackLoggingState:messageCopy fromClient:clientCopy];
      break;
    case 24:
      [(SBSystemServiceServer *)self _handleTestAutomationSetReachabilityActiveState:messageCopy fromClient:clientCopy];
      break;
    case 25:
      [(SBSystemServiceServer *)self _handleTestAutomationRequestReachabilityEnabledAssertion:messageCopy fromClient:clientCopy];
      break;
    case 26:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAmbientPresentationState:messageCopy fromClient:clientCopy];
      break;
    case 27:
      [(SBSystemServiceServer *)self _handleTestAutomationResetToHomeScreen:messageCopy fromClient:clientCopy];
      break;
    case 28:
      [(SBSystemServiceServer *)self _handleTestAutomationSetAccessoryAttachedState:messageCopy fromClient:clientCopy];
      break;
    case 29:
      [(SBSystemServiceServer *)self _handleTestAutomationRequestHUDHiddenAssertion:messageCopy fromClient:clientCopy];
      break;
    case 30:
      [(SBSystemServiceServer *)self _handleTestAutomationBlockApplicationForScreenTime:messageCopy fromClient:clientCopy];
      break;
    case 31:
      [(SBSystemServiceServer *)self _handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:messageCopy fromClient:clientCopy];
      break;
    case 33:
      [(SBSystemServiceServer *)self _handleStashSwitcherModelToPath:messageCopy fromClient:clientCopy];
      break;
    case 34:
      [(SBSystemServiceServer *)self _handleLoadStashedSwitcherModelFromPath:messageCopy fromClient:clientCopy];
      break;
    case 35:
      [(SBSystemServiceServer *)self _handleTestAutomationAddWidgetsToEachPage:messageCopy fromClient:clientCopy];
      break;
    case 36:
      [(SBSystemServiceServer *)self _handleTestAutomationAddSpecificWidgetToPageWithSize:messageCopy fromClient:clientCopy];
      break;
    case 37:
      [(SBSystemServiceServer *)self _handleTestAutomationAddSpecificWidgetStackToPageWithSize:messageCopy fromClient:clientCopy];
      break;
    case 38:
      [(SBSystemServiceServer *)self _handleTestAutomationEnterLostMode:messageCopy fromClient:clientCopy];
      break;
    case 39:
      [(SBSystemServiceServer *)self _handleTestAutomationExitLostMode:messageCopy fromClient:clientCopy];
      break;
    case 40:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisWindowingUIEnabled:messageCopy fromClient:clientCopy];
      break;
    case 41:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisWindowingUIEnabled:messageCopy fromClient:clientCopy];
      break;
    case 42:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisPrefersDockHidden:messageCopy fromClient:clientCopy];
      break;
    case 43:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisPrefersDockHidden:messageCopy fromClient:clientCopy];
      break;
    case 44:
      [(SBSystemServiceServer *)self _handleTestAutomationGetChamoisPrefersStripHidden:messageCopy fromClient:clientCopy];
      break;
    case 45:
      [(SBSystemServiceServer *)self _handleTestAutomationSetChamoisPrefersStripHidden:messageCopy fromClient:clientCopy];
      break;
    case 46:
      [(SBSystemServiceServer *)self _handleTestAutomationSetUserPresenceDetectedSinceWake:messageCopy fromClient:clientCopy];
      break;
    case 47:
      [(SBSystemServiceServer *)self _handleTestAutomationGetDeviceSupportsSystemAperture:messageCopy fromClient:clientCopy];
      break;
    case 48:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSystemApertureStateDump:messageCopy fromClient:clientCopy];
      break;
    case 49:
      [(SBSystemServiceServer *)self _handleTestAutomationGetWidgetControllerStateDump:messageCopy fromClient:clientCopy];
      break;
    case 50:
      [(SBSystemServiceServer *)self _handleTestAutomationSetSpringBoardAnimationFrameRecording:messageCopy fromClient:clientCopy];
      break;
    case 51:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSpringBoardFrameRecording:messageCopy fromClient:clientCopy];
      break;
    case 52:
      [(SBSystemServiceServer *)self _handleTestAutomationSetSystemApertureUnderAutomationTesting:messageCopy fromClient:clientCopy];
      break;
    case 53:
      [(SBSystemServiceServer *)self _handleTestAutomationGetSystemApertureModelStateDump:messageCopy fromClient:clientCopy];
      break;
    case 54:
      [(SBSystemServiceServer *)self _handleTestAutomationInitiateSecureFlipBookRecording:messageCopy fromClient:clientCopy];
      break;
    case 55:
      [(SBSystemServiceServer *)self _handleTestAutomationGetAvailableSecureFlipBookRecordableElements:messageCopy fromClient:clientCopy];
      break;
    case 56:
      [(SBSystemServiceServer *)self _handleSystemApertureRequestToWriteStateDumpToFile:messageCopy fromClient:clientCopy];
      break;
    case 57:
      [(SBSystemServiceServer *)self _handleSystemApertureRequestStateDump:messageCopy fromClient:clientCopy];
      break;
    case 58:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeStateDump:messageCopy fromClient:clientCopy];
      break;
    case 59:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeStateDumpToFile:messageCopy fromClient:clientCopy];
      break;
    case 60:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:messageCopy fromClient:clientCopy];
      break;
    case 61:
      [(SBSystemServiceServer *)self _handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:messageCopy fromClient:clientCopy];
      break;
    case 62:
      [(SBSystemServiceServer *)self _handleMenuBarServiceClientMessageTypeQuerySupported:messageCopy fromClient:clientCopy];
      break;
    case 63:
      [(SBSystemServiceServer *)self _handleMenuBarServiceClientMessageTypeToggleVisibility:messageCopy fromClient:clientCopy];
      break;
    default:
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        processHandle = [clientCopy processHandle];
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = processHandle;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client process [%@] sent a message with an unknown format. Ignoring request.", &v14, 0x16u);
      }

      break;
  }
}

- (void)_handleRequestAppSwitcherAppearanceForHiddenApp:(id)app fromClient:(id)client
{
  appCopy = app;
  clientCopy = client;
  payload = [appCopy payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  payload2 = [appCopy payload];
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
  v15 = appCopy;
  v13 = appCopy;
  [WeakRetained systemServiceServer:self requestAppearanceForHiddenAppWithBundleIdentifier:v9 assertionPort:v11 forClient:clientCopy withCompletion:v14];
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

- (void)_handleRequestAppSwitcherResetLayoutAttributes:(id)attributes fromClient:(id)client
{
  attributesCopy = attributes;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBSystemServiceServer__handleRequestAppSwitcherResetLayoutAttributes_fromClient___block_invoke;
  v10[3] = &unk_2783A8C18;
  v11 = attributesCopy;
  v9 = attributesCopy;
  [WeakRetained systemServiceServer:self resetLayoutAttributesForClient:clientCopy completion:v10];
}

- (void)_handleRequestAppSwitcherUpdateWindowingMode:(id)mode fromClient:(id)client
{
  modeCopy = mode;
  clientCopy = client;
  payload = [modeCopy payload];
  int64 = xpc_dictionary_get_int64(payload, *MEMORY[0x277D676A0]);

  WeakRetained = objc_loadWeakRetained(&self->_appSwitcherDelegate);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SBSystemServiceServer__handleRequestAppSwitcherUpdateWindowingMode_fromClient___block_invoke;
  v12[3] = &unk_2783A8C18;
  v13 = modeCopy;
  v11 = modeCopy;
  [WeakRetained systemServiceServer:self requestUpdateWindowingMode:int64 forClient:clientCopy completion:v12];
}

- (void)_handleBiometricsFetchUnlockCredentialSetMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SBSystemServiceServer__handleBiometricsFetchUnlockCredentialSetMessage_fromClient___block_invoke;
  v12[3] = &unk_2783BDA28;
  v13 = messageCopy;
  v8 = messageCopy;
  v9 = MEMORY[0x223D6F7F0](v12);
  biometricsDelegate = [(SBSystemServiceServer *)self biometricsDelegate];
  v11 = biometricsDelegate;
  if (biometricsDelegate)
  {
    [biometricsDelegate systemServiceServer:self client:clientCopy fetchUnlockCredentialSet:v9];
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

- (void)_handleHardwareButtonAcquireAssertionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SBSystemServiceServer__handleHardwareButtonAcquireAssertionMessage_fromClient___block_invoke;
  v15[3] = &unk_2783BDA50;
  v8 = messageCopy;
  v16 = v8;
  v9 = MEMORY[0x223D6F7F0](v15);
  payload = [v8 payload];
  v11 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      uint64 = xpc_dictionary_get_uint64(v11, *MEMORY[0x277D677E0]);
      v14 = BSDeserializeStringFromXPCDictionaryWithKey();
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy acquireAssertionOfType:uint64 forReason:v14 withCompletion:v9];
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

- (void)_handleHardwareButtonSetPressEventMask:(id)mask fromClient:(id)client
{
  clientCopy = client;
  payload = [mask payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      uint64 = xpc_dictionary_get_uint64(v7, *MEMORY[0x277D67700]);
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67738]);
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy setEventMask:uint64 buttonKind:xpc_dictionary_get_int64(v7 priority:{*MEMORY[0x277D676F0]), int64}];
    }
  }
}

- (void)_handleHardwareButtonGetToggleButtonState:(id)state fromClient:(id)client
{
  stateCopy = state;
  payload = [stateCopy payload];
  v5 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_int64(v5, *MEMORY[0x277D676F0]) == 6)
    {
      v6 = &__block_literal_global_25_2;
    }

    else
    {
      v6 = &__block_literal_global_27_0;
    }

    [stateCopy sendReplyMessageWithPacker:v6];
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

- (void)_handleHardwareButtonSetRequestsHIDEvents:(id)events fromClient:(id)client
{
  clientCopy = client;
  payload = [events payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67710]);
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0]);
      objc_opt_class();
      v11 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy requestsHIDEvents:v9 token:v11 forButtonKind:int64];
    }
  }
}

- (void)_handleHardwareButtonSetHapticType:(id)type fromClient:(id)client
{
  clientCopy = client;
  payload = [type payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67718]);
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy setHapticType:int64 buttonKind:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0])}];
    }
  }
}

- (void)_handleHardwareButtonGetHapticType:(id)type fromClient:(id)client
{
  typeCopy = type;
  clientCopy = client;
  payload = [typeCopy payload];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke;
  v15[3] = &unk_2783ACA48;
  v9 = typeCopy;
  v16 = v9;
  v10 = MEMORY[0x223D6F7F0](v15);
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      int64 = xpc_dictionary_get_int64(payload, *MEMORY[0x277D676F0]);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__SBSystemServiceServer__handleHardwareButtonGetHapticType_fromClient___block_invoke_3;
      v13[3] = &unk_2783B8B50;
      v14 = v10;
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy fetchHapticTypeForButtonKind:int64 completion:v13];
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

- (void)_handleHardwareButtonGetHintViewsSupported:(id)supported fromClient:(id)client
{
  supportedCopy = supported;
  clientCopy = client;
  payload = [supportedCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    v11 = hardwareButtonDelegate;
    if (hardwareButtonDelegate)
    {
      v12 = [hardwareButtonDelegate systemServiceServer:self getHintViewsSupportedForClient:clientCopy];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__SBSystemServiceServer__handleHardwareButtonGetHintViewsSupported_fromClient___block_invoke;
      v13[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v14 = v12;
      [supportedCopy sendReplyMessageWithPacker:v13];
    }
  }
}

- (void)_handleHardwareButtonRegisterAssociatedHintView:(id)view fromClient:(id)client
{
  viewCopy = view;
  clientCopy = client;
  payload = [viewCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      uint64 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D67740]);
      v12 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D67748]);
      BSDeserializeCGSizeFromXPCDictionaryWithKey();
      v14 = v13;
      v16 = v15;
      int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D676F0]);
      v18 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      v19 = [hardwareButtonDelegate systemServiceServer:self client:clientCopy registerAssociatedHintViewContextId:uint64 renderId:v12 size:int64 buttonKind:v18 clientPort:{v14, v16}];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __84__SBSystemServiceServer__handleHardwareButtonRegisterAssociatedHintView_fromClient___block_invoke;
      v20[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v21 = v19;
      [viewCopy sendReplyMessageWithPacker:v20];
    }
  }
}

- (void)_handleHardwareButtonUpdateHintContentVisibility:(id)visibility fromClient:(id)client
{
  clientCopy = client;
  payload = [visibility payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67728]);
      v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D676F0]);
      v11 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy updateHintContentVisibility:int64 forButton:v10 animationSettings:v11];
    }
  }
}

- (void)_handleHardwareButtonRequestSystemGlowEffect:(id)effect fromClient:(id)client
{
  effectCopy = effect;
  clientCopy = client;
  payload = [effectCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D67760]);
      v12 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      v13 = [hardwareButtonDelegate systemServiceServer:self client:clientCopy requestSystemGlowEffectWithInitialStyle:int64 clientPort:v12];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__SBSystemServiceServer__handleHardwareButtonRequestSystemGlowEffect_fromClient___block_invoke;
      v14[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
      v15 = v13;
      [effectCopy sendReplyMessageWithPacker:v14];
    }
  }
}

- (void)_handleHardwareButtonUpdateSystemGlowStyle:(id)style fromClient:(id)client
{
  clientCopy = client;
  payload = [style payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    hardwareButtonDelegate = [(SBSystemServiceServer *)self hardwareButtonDelegate];
    if (hardwareButtonDelegate)
    {
      [hardwareButtonDelegate systemServiceServer:self client:clientCopy updateSystemGlowStyle:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D67760])}];
    }
  }
}

- (void)_handleSoftwareUpdateSetPasscodePolicy:(id)policy fromClient:(id)client
{
  clientCopy = client;
  payload = [policy payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    softwareUpdateDelegate = [(SBSystemServiceServer *)self softwareUpdateDelegate];
    if (softwareUpdateDelegate)
    {
      [softwareUpdateDelegate systemServiceServer:self client:clientCopy setPasscodePolicy:{xpc_dictionary_get_int64(v7, *MEMORY[0x277D67788])}];
    }
  }
}

- (void)_handleSoftwareUpdateGetPasscodePolicy:(id)policy fromClient:(id)client
{
  policyCopy = policy;
  clientCopy = client;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke;
  v13[3] = &unk_2783ACA48;
  v8 = policyCopy;
  v14 = v8;
  v9 = MEMORY[0x223D6F7F0](v13);
  softwareUpdateDelegate = [(SBSystemServiceServer *)self softwareUpdateDelegate];
  if (softwareUpdateDelegate)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__SBSystemServiceServer__handleSoftwareUpdateGetPasscodePolicy_fromClient___block_invoke_3;
    v11[3] = &unk_2783B8B50;
    v12 = v9;
    [softwareUpdateDelegate systemServiceServer:self client:clientCopy passcodePolicy:v11];
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

- (void)_handleTestAutomationGetSystemApertureModelStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getSystemApertureModelStateDumpForClient:clientCopy];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__SBSystemServiceServer__handleTestAutomationGetSystemApertureModelStateDump_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [dumpCopy sendReplyMessageWithPacker:v10];
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

- (void)_handleTestAutomationSetSpringBoardAnimationFrameRecording:(id)recording fromClient:(id)client
{
  clientCopy = client;
  payload = [recording payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v7, *MEMORY[0x277D67830]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setSpringBoardAnimationFrameRecordingForUpdateTypes:uint64];
  }
}

- (void)_handleTestAutomationGetSpringBoardFrameRecording:(id)recording fromClient:(id)client
{
  recordingCopy = recording;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getAnimationFrameRecordingsForClient:clientCopy];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetSpringBoardFrameRecording_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [recordingCopy sendReplyMessageWithPacker:v10];
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

- (void)_handleTestAutomationSetSystemApertureUnderAutomationTesting:(id)testing fromClient:(id)client
{
  clientCopy = client;
  payload = [testing payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setSystemApertureUnderAutomationTesting:v8];
  }
}

- (void)_handleSystemApertureRequestStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  payload = [dumpCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    WeakRetained = objc_loadWeakRetained(&self->_systemApertureStateDumpDelegate);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__SBSystemServiceServer__handleSystemApertureRequestStateDump_fromClient___block_invoke;
    v11[3] = &unk_2783BDAA0;
    v12 = dumpCopy;
    [WeakRetained systemServiceServer:self client:clientCopy requestSystemApertureStateDumpWithCompletion:v11];
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

- (void)_handleSystemApertureRequestToWriteStateDumpToFile:(id)file fromClient:(id)client
{
  fileCopy = file;
  clientCopy = client;
  payload = [fileCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SBSystemServiceServer__handleSystemApertureRequestToWriteStateDumpToFile_fromClient___block_invoke;
    v10[3] = &unk_2783BDA78;
    v10[4] = self;
    v11 = clientCopy;
    [fileCopy sendReplyMessageWithPacker:v10];
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

- (void)_handleTestAutomationSuspendAllDisplays:(id)displays fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self suspendAllDisplaysForClient:clientCopy];
}

- (void)_handleTestAutomationClearAllUserNotifications:(id)notifications fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self clearAllUserNotificationsForClient:clientCopy];
}

- (void)_handleTestAutomationSetUserPresenceDetectedSinceWake:(id)wake fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self setUserPresenceDetectedSinceWakeForClient:clientCopy];
}

- (void)_handleTestAutomationSetAlertState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setAlertsEnabled:v8];
  }
}

- (void)_handleTestAutomationSetHiddenFeatureState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setHiddenFeaturesEnabled:v8];
  }
}

- (void)_handleTestAutomationSetIdleTimerState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setIdleTimerEnabled:v8];
  }
}

- (void)_handleTestAutomationSetOrientationLockState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setOrientationLockEnabled:v8];
  }
}

- (void)_handleTestAutomationSetMallocStackLoggingState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setMallocStackLoggingEnabled:v8];
  }
}

- (void)_handleTestAutomationSetReachabilityActiveState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setReachabilityActive:v8];
  }
}

- (void)_handleTestAutomationRequestReachabilityEnabledAssertion:(id)assertion fromClient:(id)client
{
  clientCopy = client;
  payload = [assertion payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    v9 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy port:v9 acquireAssertionForReachabilityEnabled:v8];
  }
}

- (void)_handleTestAutomationSetAmbientPresentationState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D677F8]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setAmbientPresentationState:int64];
  }
}

- (void)_handleTestAutomationResetToHomeScreen:(id)screen fromClient:(id)client
{
  clientCopy = client;
  payload = [screen payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67800]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy resetToHomeScreenAnimated:v8];
  }
}

- (void)_handleTestAutomationSetAccessoryAttachedState:(id)state fromClient:(id)client
{
  clientCopy = client;
  payload = [state payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D677F0]);
    v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setAccessoryType:int64 attached:v9];
  }
}

- (void)_handleTestAutomationBlockApplicationForScreenTime:(id)time fromClient:(id)client
{
  clientCopy = client;
  payload = [time payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    v9 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67808]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setApplicationBundleIdentifier:v8 blockedForScreenTime:v9];
  }
}

- (void)_handleTestAutomationRequestHUDHiddenAssertion:(id)assertion fromClient:(id)client
{
  clientCopy = client;
  payload = [assertion payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    v9 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy port:v9 acquireHUDHiddenAssertionForIdentifier:v8];
  }
}

- (void)_handleTestAutomationSetTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier fromClient:(id)client
{
  clientCopy = client;
  payload = [identifier payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setTestRunnerRecoveryApplicationBundleIdentifier:v8];
  }
}

- (void)_handleTestAutomationGetScencesForBundleIdentifier:(id)identifier fromClient:(id)client
{
  identifierCopy = identifier;
  clientCopy = client;
  payload = [identifierCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v10 = BSDeserializeStringFromXPCDictionaryWithKey();
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__SBSystemServiceServer__handleTestAutomationGetScencesForBundleIdentifier_fromClient___block_invoke;
    v12[3] = &unk_2783A95E8;
    v13 = identifierCopy;
    [WeakRetained systemServiceServer:self client:clientCopy countScenesForBundleIdentifier:v10 withCompletion:v12];
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

- (void)_handleStashSwitcherModelToPath:(id)path fromClient:(id)client
{
  clientCopy = client;
  payload = [path payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self client:clientCopy stashSwitcherModelToPath:v9];
}

- (void)_handleLoadStashedSwitcherModelFromPath:(id)path fromClient:(id)client
{
  clientCopy = client;
  payload = [path payload];
  v9 = BSDeserializeStringFromXPCDictionaryWithKey();

  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self client:clientCopy loadStashedSwitcherModelFromPath:v9];
}

- (void)_handleTestAutomationAddWidgetsToEachPage:(id)page fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self addWidgetsToEachPageForClient:clientCopy];
}

- (void)_handleTestAutomationAddSpecificWidgetToPageWithSize:(id)size fromClient:(id)client
{
  clientCopy = client;
  payload = [size payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = BSDeserializeStringFromXPCDictionaryWithKey();
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67848]);
    v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67878]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy addWidgetWithIdentifier:v8 toPage:int64 withSizing:v10];
  }
}

- (void)_handleTestAutomationAddSpecificWidgetStackToPageWithSize:(id)size fromClient:(id)client
{
  clientCopy = client;
  payload = [size payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = BSCreateDeserializedArrayFromXPCDictionaryWithKey();
    int64 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67848]);
    v10 = xpc_dictionary_get_int64(v7, *MEMORY[0x277D67878]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy addWidgetStackWithIdentifiers:v8 toPage:int64 withSizing:v10];
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

- (void)_handleTestAutomationEnterLostMode:(id)mode fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self enterLostModeForClient:clientCopy];
}

- (void)_handleTestAutomationExitLostMode:(id)mode fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  [WeakRetained systemServiceServer:self exitLostModeForClient:clientCopy];
}

- (void)_handleTestAutomationInitiateSecureFlipBookRecording:(id)recording fromClient:(id)client
{
  recordingCopy = recording;
  clientCopy = client;
  payload = [recordingCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
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
      v14 = recordingCopy;
      [WeakRetained systemServiceServer:self client:clientCopy initiateSecureFlipBookRecordingForElement:v11 withCompletion:v13];
    }

    else
    {
      [recordingCopy sendReplyMessageWithPacker:&__block_literal_global_42_2];
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

- (void)_handleTestAutomationGetAvailableSecureFlipBookRecordableElements:(id)elements fromClient:(id)client
{
  clientCopy = client;
  elementsCopy = elements;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getAvailableRecordableFlipBookElementIdentifiers:clientCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__SBSystemServiceServer__handleTestAutomationGetAvailableSecureFlipBookRecordableElements_fromClient___block_invoke;
  v11[3] = &unk_2783B07B8;
  v12 = v9;
  v10 = v9;
  [elementsCopy sendReplyMessageWithPacker:v11];
}

void __102__SBSystemServiceServer__handleTestAutomationGetAvailableSecureFlipBookRecordableElements_fromClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dataWithJSONObject:v3 options:1 error:0];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (void)_handleTestAutomationGetChamoisWindowingUIEnabled:(id)enabled fromClient:(id)client
{
  enabledCopy = enabled;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisWindowingUIEnabled_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = enabledCopy;
  v9 = enabledCopy;
  [WeakRetained systemServiceServer:self client:clientCopy getIsChamoisWindowingUIEnabledWithCompletion:v10];
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

- (void)_handleTestAutomationSetChamoisWindowingUIEnabled:(id)enabled fromClient:(id)client
{
  clientCopy = client;
  payload = [enabled payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setChamoisWindowingUIEnabled:v8];
  }
}

- (void)_handleTestAutomationGetChamoisPrefersDockHidden:(id)hidden fromClient:(id)client
{
  hiddenCopy = hidden;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersDockHidden_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = hiddenCopy;
  v9 = hiddenCopy;
  [WeakRetained systemServiceServer:self client:clientCopy getChamoisPrefersDockHiddenWithCompletion:v10];
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

- (void)_handleTestAutomationSetChamoisPrefersDockHidden:(id)hidden fromClient:(id)client
{
  clientCopy = client;
  payload = [hidden payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setChamoisPrefersDockHidden:v8];
  }
}

- (void)_handleTestAutomationGetChamoisPrefersStripHidden:(id)hidden fromClient:(id)client
{
  hiddenCopy = hidden;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetChamoisPrefersStripHidden_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = hiddenCopy;
  v9 = hiddenCopy;
  [WeakRetained systemServiceServer:self client:clientCopy getChamoisPrefersStripHiddenWithCompletion:v10];
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

- (void)_handleTestAutomationSetChamoisPrefersStripHidden:(id)hidden fromClient:(id)client
{
  clientCopy = client;
  payload = [hidden payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_BOOL(v7, *MEMORY[0x277D67828]);
    WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
    [WeakRetained systemServiceServer:self client:clientCopy setChamoisPrefersStripHidden:v8];
  }
}

- (void)_handleTestAutomationGetDeviceSupportsSystemAperture:(id)aperture fromClient:(id)client
{
  apertureCopy = aperture;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke;
  v14[3] = &unk_2783A9398;
  v15 = apertureCopy;
  v7 = apertureCopy;
  clientCopy = client;
  v9 = MEMORY[0x223D6F7F0](v14);
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__SBSystemServiceServer__handleTestAutomationGetDeviceSupportsSystemAperture_fromClient___block_invoke_3;
  v12[3] = &unk_2783A9C70;
  v13 = v9;
  v11 = v9;
  [WeakRetained systemServiceServer:self client:clientCopy getDeviceSupportsSystemAperture:v12];
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

- (void)_handleTestAutomationGetSystemApertureStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getSystemApertureStateDumpForClient:clientCopy];

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
    [dumpCopy sendReplyMessageWithPacker:v12];
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

- (void)_handleTestAutomationGetWidgetControllerStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_testAutomationDelegate);
  v9 = [WeakRetained systemServiceServer:self getWidgetControllerStateDump:clientCopy];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBSystemServiceServer__handleTestAutomationGetWidgetControllerStateDump_fromClient___block_invoke;
    v10[3] = &unk_2783B07B8;
    v11 = v9;
    [dumpCopy sendReplyMessageWithPacker:v10];
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

- (void)_handleStateDumpServiceClientMessageTypeStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  payload = [dumpCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(v9, *MEMORY[0x277D677A8]);
    WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeStateDump_fromClient___block_invoke;
    v12[3] = &unk_2783AC778;
    v13 = dumpCopy;
    [WeakRetained systemServiceServer:self client:clientCopy requestStateDump:uint64 withCompletion:v12];
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

- (void)_handleStateDumpServiceClientMessageTypeStateDumpToFile:(id)file fromClient:(id)client
{
  clientCopy = client;
  payload = [file payload];
  v7 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
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
    [WeakRetained systemServiceServer:self client:clientCopy requestStateDump:uint64 toTextFileAtPath:v10];
  }
}

- (void)_handleStateDumpServiceClientMessageTypeEnableRemoteStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  payload = [dumpCopy payload];
  v9 = payload;
  if (payload && object_getClass(payload) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D67790]);
    WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeEnableRemoteStateDump_fromClient___block_invoke;
    v12[3] = &unk_2783BDB78;
    v13 = dumpCopy;
    [WeakRetained systemServiceServer:self client:clientCopy enableRemoteStateDumpWithTimeout:int64 completion:v12];
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

- (void)_handleStateDumpServiceClientMessageTypeDisableRemoteStateDump:(id)dump fromClient:(id)client
{
  dumpCopy = dump;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_stateDumpDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__SBSystemServiceServer__handleStateDumpServiceClientMessageTypeDisableRemoteStateDump_fromClient___block_invoke;
  v10[3] = &unk_2783BDB78;
  v11 = dumpCopy;
  v9 = dumpCopy;
  [WeakRetained systemServiceServer:self client:clientCopy disableRemoteStateDumpWithCompletion:v10];
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

- (void)_handleMenuBarServiceClientMessageTypeQuerySupported:(id)supported fromClient:(id)client
{
  supportedCopy = supported;
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarDelegate);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__SBSystemServiceServer__handleMenuBarServiceClientMessageTypeQuerySupported_fromClient___block_invoke;
  v10[3] = &unk_2783A9398;
  v11 = supportedCopy;
  v9 = supportedCopy;
  [WeakRetained systemServiceServer:self queryMenuBarSupportedForClient:clientCopy withCompletion:v10];
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

- (void)_handleMenuBarServiceClientMessageTypeToggleVisibility:(id)visibility fromClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarDelegate);
  [WeakRetained systemServiceServer:self toggleMenuBarVisibilityForClient:clientCopy];
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