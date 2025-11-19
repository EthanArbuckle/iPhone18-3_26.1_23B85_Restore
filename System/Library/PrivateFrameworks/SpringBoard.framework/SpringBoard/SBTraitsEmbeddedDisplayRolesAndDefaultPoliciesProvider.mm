@interface SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider
- (id)defaultActiveOrientationBelowDrivenRoles;
- (id)defaultDeviceOrientationDrivenRoles;
- (id)defaultIsolationDrivenRoles;
- (id)defaultKeyboardFocusDrivenRoles;
- (id)defaultOtherParticipantDrivenRoles;
- (id)orientationStageRoles;
@end

@implementation SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider

- (id)defaultKeyboardFocusDrivenRoles
{
  if (defaultKeyboardFocusDrivenRoles_onceToken != -1)
  {
    [SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider defaultKeyboardFocusDrivenRoles];
  }

  v3 = defaultKeyboardFocusDrivenRoles___defaultKeyboardDrivenRoles;

  return v3;
}

- (id)defaultActiveOrientationBelowDrivenRoles
{
  if (defaultActiveOrientationBelowDrivenRoles_onceToken != -1)
  {
    [SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider defaultActiveOrientationBelowDrivenRoles];
  }

  v3 = defaultActiveOrientationBelowDrivenRoles__defaultActiveOrientationBelowRoles;

  return v3;
}

- (id)defaultOtherParticipantDrivenRoles
{
  if (defaultOtherParticipantDrivenRoles_onceToken != -1)
  {
    [SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider defaultOtherParticipantDrivenRoles];
  }

  v3 = defaultOtherParticipantDrivenRoles__defaultOtherParticipantDrivenRoles;

  return v3;
}

- (id)defaultDeviceOrientationDrivenRoles
{
  if (defaultDeviceOrientationDrivenRoles_onceToken != -1)
  {
    [SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider defaultDeviceOrientationDrivenRoles];
  }

  v3 = defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles;

  return v3;
}

void __98__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_defaultActiveOrientationBelowDrivenRoles__block_invoke()
{
  v8[56] = *MEMORY[0x277D85DE8];
  v8[0] = @"SBTraitsParticipantRoleAlert";
  v8[1] = @"SBTraitsParticipantRoleAmbient";
  v8[2] = @"SBTraitsParticipantRoleAssistant";
  v8[3] = @"SBTraitsParticipantRoleAudioHUD";
  v8[4] = @"SBTraitsParticipantRoleAXAssistiveTouchUI";
  v8[5] = @"SBTraitsParticipantRoleAXFullKeyboardUI";
  v8[6] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v8[7] = @"SBTraitsParticipantRoleAXUIServer";
  v8[8] = @"SBTraitsParticipantRoleBanner";
  v8[9] = @"SBTraitsParticipantRoleBiometricMonitorUI";
  v8[10] = @"SBTraitsParticipantRoleCommandTab";
  v8[11] = @"SBTraitsParticipantRoleControlCenter";
  v8[12] = @"SBTraitsParticipantRoleCoverSheet";
  v8[13] = @"SBTraitsParticipantRoleEnsembleUI";
  v8[14] = @"SBTraitsParticipantRoleEyedropperUI";
  v8[15] = @"SBTraitsParticipantRoleFloatingDock";
  v8[16] = @"SBTraitsParticipantRoleHUD";
  v8[17] = @"SBTraitsParticipantRoleInteractiveScreenshotGesture";
  v8[18] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v8[19] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v8[20] = @"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation";
  v8[21] = @"SBTraitsParticipantRoleLogWindowRecipe";
  v8[22] = @"SBTraitsParticipantRoleMedusaDrag";
  v8[23] = @"SBTraitsParticipantRoleModifierTimeline";
  v8[24] = @"SBTraitsParticipantRoleMomentsUI";
  v8[25] = @"SBTraitsParticipantRoleOverlayUI";
  v8[26] = @"SBTraitsParticipantRolePerfPowerHUD";
  v8[27] = @"SBTraitsParticipantRolePictureInPicture";
  v8[28] = @"SBTraitsParticipantRolePipelineManager";
  v8[29] = @"SBTraitsParticipantRolePrototypeTools";
  v8[30] = @"SBTraitsParticipantRoleReachability";
  v8[31] = @"SBTraitsParticipantRoleRecordingIndicator";
  v8[32] = @"SBTraitsParticipantRoleRenderOverlayRecipe";
  v8[33] = @"SBTraitsParticipantRoleScreenFlash";
  v8[34] = @"SBTraitsParticipantRoleStartupFadeAnimation";
  v8[35] = @"SBTraitsParticipantRoleStatusBar";
  v8[36] = @"SBTraitsParticipantRoleSwitcherRaw";
  v8[37] = @"SBTraitsParticipantRoleSystemUIScene";
  v8[38] = @"SBTraitsParticipantRoleTransientOverlay";
  v8[39] = @"SBTraitsParticipantRoleTransientOverlayBackground";
  v8[40] = @"SBTraitsParticipantRoleWindowedAccessory";
  v8[41] = @"SBTraitsParticipantRoleSystemAperture";
  v8[42] = @"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinator";
  v8[43] = @"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinatorHinting";
  v0 = *MEMORY[0x277D77658];
  v8[44] = *MEMORY[0x277D77650];
  v8[45] = v0;
  v1 = *MEMORY[0x277D77668];
  v8[46] = *MEMORY[0x277D77660];
  v8[47] = v1;
  v2 = *MEMORY[0x277D77678];
  v8[48] = *MEMORY[0x277D77670];
  v8[49] = v2;
  v3 = *MEMORY[0x277D77688];
  v8[50] = *MEMORY[0x277D77680];
  v8[51] = v3;
  v4 = *MEMORY[0x277D77698];
  v8[52] = *MEMORY[0x277D77690];
  v8[53] = v4;
  v5 = *MEMORY[0x277D776A8];
  v8[54] = *MEMORY[0x277D776A0];
  v8[55] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:56];
  v7 = defaultActiveOrientationBelowDrivenRoles__defaultActiveOrientationBelowRoles;
  defaultActiveOrientationBelowDrivenRoles__defaultActiveOrientationBelowRoles = v6;
}

void __93__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_defaultDeviceOrientationDrivenRoles__block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB18]);
  v5[0] = @"SBTraitsParticipantRoleHomeScreen";
  v5[1] = @"SBTraitsParticipantRoleSwitcherLiveOverlay";
  v5[2] = @"SBTraitsParticipantRoleCoverSheetCamera";
  v5[3] = @"SBTraitsParticipantRoleSecureApp";
  v5[4] = @"SBTraitsParticipantRoleMenuBar";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 initWithArray:v1];

  v3 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
  v4 = defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles;
  defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles = v3;
}

void __92__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_defaultOtherParticipantDrivenRoles__block_invoke()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB38]);
  v7[0] = @"SBTraitsParticipantRoleWallpaperExternal";
  v7[1] = @"SBTraitsParticipantRoleHomeScreenDimming";
  v8[0] = @"SBTraitsParticipantRoleHomeScreen";
  v8[1] = @"SBTraitsParticipantRoleHomeScreen";
  v7[2] = @"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay";
  v7[3] = @"SBTraitsParticipantRoleCoverSheetPosterSwitcher";
  v8[2] = @"SBTraitsParticipantRoleCoverSheet";
  v8[3] = @"SBTraitsParticipantRoleCoverSheet";
  v7[4] = @"SBTraitsParticipantRoleSwitcherPublisher";
  v7[5] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v8[4] = @"SBTraitsParticipantRoleSwitcherRaw";
  v8[5] = @"SBTraitsParticipantRoleOverlayUI";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v2 = [v0 initWithDictionary:v1];

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
  {
    [v2 setObject:@"SBTraitsParticipantRoleHomeScreen" forKey:@"SBTraitsParticipantRoleWallpaper"];
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];
  v6 = defaultOtherParticipantDrivenRoles__defaultOtherParticipantDrivenRoles;
  defaultOtherParticipantDrivenRoles__defaultOtherParticipantDrivenRoles = v5;
}

void __89__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_defaultKeyboardFocusDrivenRoles__block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"SBTraitsParticipantRoleFloatingKeyboard";
  v2[1] = @"SBTraitsParticipantRoleInputUI";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = defaultKeyboardFocusDrivenRoles___defaultKeyboardDrivenRoles;
  defaultKeyboardFocusDrivenRoles___defaultKeyboardDrivenRoles = v0;
}

- (id)defaultIsolationDrivenRoles
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"SBTraitsParticipantRoleAssistantAccessory";
  v4[1] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v4[2] = @"SBTraitsParticipantRoleDruid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)orientationStageRoles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_orientationStageRoles__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (orientationStageRoles_onceToken != -1)
  {
    dispatch_once(&orientationStageRoles_onceToken, block);
  }

  return orientationStageRoles_orientationStageRoles;
}

void __79__SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider_orientationStageRoles__block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) defaultDeviceOrientationDrivenRoles];
  v2 = [*(a1 + 32) defaultActiveOrientationBelowDrivenRoles];
  v3 = [*(a1 + 32) defaultKeyboardFocusDrivenRoles];
  v4 = [*(a1 + 32) defaultIsolationDrivenRoles];
  v5 = [*(a1 + 32) defaultOtherParticipantDrivenRoles];
  v6 = [v5 allKeys];

  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count") + objc_msgSend(v10, "count") + objc_msgSend(v3, "count") + objc_msgSend(v4, "count") + objc_msgSend(v6, "count")}];
  [v7 addObjectsFromArray:v10];
  [v7 addObjectsFromArray:v2];
  [v7 addObjectsFromArray:v3];
  [v7 addObjectsFromArray:v4];
  [v7 addObjectsFromArray:v6];
  v8 = [MEMORY[0x277CBEB98] setWithSet:v7];
  v9 = orientationStageRoles_orientationStageRoles;
  orientationStageRoles_orientationStageRoles = v8;
}

@end