@interface SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider
- (id)defaultDeviceOrientationDrivenRoles;
- (id)defaultIsolationDrivenRoles;
- (id)defaultOtherParticipantDrivenRoles;
- (id)orientationStageRoles;
@end

@implementation SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider

- (id)defaultDeviceOrientationDrivenRoles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider_defaultDeviceOrientationDrivenRoles__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (defaultDeviceOrientationDrivenRoles_onceToken_0 != -1)
  {
    dispatch_once(&defaultDeviceOrientationDrivenRoles_onceToken_0, block);
  }

  return defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles_0;
}

void __93__SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider_defaultDeviceOrientationDrivenRoles__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = [*(a1 + 32) orientationStageRoles];
  v4 = [v3 allObjects];
  v10 = [v2 arrayWithArray:v4];

  v5 = [*(a1 + 32) defaultIsolationDrivenRoles];
  [v10 removeObjectsInArray:v5];

  v6 = [*(a1 + 32) defaultOtherParticipantDrivenRoles];
  v7 = [v6 allKeys];
  [v10 removeObjectsInArray:v7];

  v8 = [v10 copy];
  v9 = defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles_0;
  defaultDeviceOrientationDrivenRoles__defaultDeviceOrientationDrivenRoles_0 = v8;
}

- (id)defaultOtherParticipantDrivenRoles
{
  if (defaultOtherParticipantDrivenRoles_onceToken_0 != -1)
  {
    [SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider defaultOtherParticipantDrivenRoles];
  }

  return 0;
}

void __92__SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider_defaultOtherParticipantDrivenRoles__block_invoke()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB38]);
  v5[0] = @"SBTraitsParticipantRoleWallpaperExternal";
  v5[1] = @"SBTraitsParticipantRoleHomeScreenDimming";
  v6[0] = @"SBTraitsParticipantRoleHomeScreen";
  v6[1] = @"SBTraitsParticipantRoleHomeScreen";
  v5[2] = @"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay";
  v5[3] = @"SBTraitsParticipantRoleCoverSheetPosterSwitcher";
  v6[2] = @"SBTraitsParticipantRoleCoverSheet";
  v6[3] = @"SBTraitsParticipantRoleCoverSheet";
  v5[4] = @"SBTraitsParticipantRoleSwitcherPublisher";
  v5[5] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v6[4] = @"SBTraitsParticipantRoleSwitcherRaw";
  v6[5] = @"SBTraitsParticipantRoleOverlayUI";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v2 = [v0 initWithDictionary:v1];

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
  {
    [v2 setObject:@"SBTraitsParticipantRoleHomeScreen" forKey:@"SBTraitsParticipantRoleWallpaper"];
  }
}

- (id)defaultIsolationDrivenRoles
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"SBTraitsParticipantRoleAssistantAccessory";
  v4[1] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)orientationStageRoles
{
  if (orientationStageRoles_onceToken_0 != -1)
  {
    [SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider orientationStageRoles];
  }

  v3 = orientationStageRoles_orientationStageRoles_0;

  return v3;
}

void __79__SBTraitsExternalDisplayRolesAndDefaultPoliciesProvider_orientationStageRoles__block_invoke()
{
  v7[70] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v7[0] = @"SBTraitsParticipantRoleAlert";
  v7[1] = @"SBTraitsParticipantRoleAmbient";
  v7[2] = @"SBTraitsParticipantRoleAssistant";
  v7[3] = @"SBTraitsParticipantRoleAssistantAccessory";
  v7[4] = @"SBTraitsParticipantRoleAudioHUD";
  v7[5] = @"SBTraitsParticipantRoleAXAssistiveTouchUI";
  v7[6] = @"SBTraitsParticipantRoleAXFullKeyboardUI";
  v7[7] = @"SBTraitsParticipantRoleAXUIServer";
  v7[8] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v7[9] = @"SBTraitsParticipantRoleBanner";
  v7[10] = @"SBTraitsParticipantRoleBiometricMonitorUI";
  v7[11] = @"SBTraitsParticipantRoleCommandTab";
  v7[12] = @"SBTraitsParticipantRoleControlCenter";
  v7[13] = @"SBTraitsParticipantRoleCoverSheet";
  v7[14] = @"SBTraitsParticipantRoleCoverSheetCamera";
  v7[15] = @"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay";
  v7[16] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v7[17] = @"SBTraitsParticipantRoleDruid";
  v7[18] = @"SBTraitsParticipantRoleEnsembleUI";
  v7[19] = @"SBTraitsParticipantRoleEyedropperUI";
  v7[20] = @"SBTraitsParticipantRoleFloatingDock";
  v7[21] = @"SBTraitsParticipantRoleFloatingKeyboard";
  v7[22] = @"SBTraitsParticipantRoleHomeScreen";
  v7[23] = @"SBTraitsParticipantRoleHomeScreenDimming";
  v7[24] = @"SBTraitsParticipantRoleHUD";
  v7[25] = @"SBTraitsParticipantRoleInputUI";
  v7[26] = @"SBTraitsParticipantRoleInteractiveScreenshotGesture";
  v7[27] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v7[28] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v7[29] = @"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation";
  v7[30] = @"SBTraitsParticipantRoleLogWindowRecipe";
  v7[31] = @"SBTraitsParticipantRoleMedusaDrag";
  v7[32] = @"SBTraitsParticipantRoleMenuBar";
  v7[33] = @"SBTraitsParticipantRoleModifierTimeline";
  v7[34] = @"SBTraitsParticipantRoleMomentsUI";
  v7[35] = @"SBTraitsParticipantRoleOverlayUI";
  v7[36] = @"SBTraitsParticipantRolePerfPowerHUD";
  v7[37] = @"SBTraitsParticipantRolePictureInPicture";
  v7[38] = @"SBTraitsParticipantRolePipelineManager";
  v7[39] = @"SBTraitsParticipantRolePrototypeTools";
  v7[40] = @"SBTraitsParticipantRoleReachability";
  v7[41] = @"SBTraitsParticipantRoleRecordingIndicator";
  v7[42] = @"SBTraitsParticipantRoleRenderOverlayRecipe";
  v7[43] = @"SBTraitsParticipantRoleScreenFlash";
  v7[44] = @"SBTraitsParticipantRoleSecureApp";
  v7[45] = @"SBTraitsParticipantRoleStartupFadeAnimation";
  v7[46] = @"SBTraitsParticipantRoleStatusBar";
  v7[47] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v7[48] = @"SBTraitsParticipantRoleSwitcherLiveOverlay";
  v7[49] = @"SBTraitsParticipantRoleSwitcherPublisher";
  v7[50] = @"SBTraitsParticipantRoleSwitcherRaw";
  v7[51] = @"SBTraitsParticipantRoleSystemAperture";
  v7[52] = @"SBTraitsParticipantRoleSystemUIScene";
  v7[53] = @"SBTraitsParticipantRoleTransientOverlay";
  v7[54] = @"SBTraitsParticipantRoleTransientOverlayBackground";
  v7[55] = @"SBTraitsParticipantRoleWallpaper";
  v7[56] = @"SBTraitsParticipantRoleWallpaperExternal";
  v7[57] = @"SBTraitsParticipantRoleWindowedAccessory";
  v1 = *MEMORY[0x277D77658];
  v7[58] = *MEMORY[0x277D77650];
  v7[59] = v1;
  v2 = *MEMORY[0x277D77668];
  v7[60] = *MEMORY[0x277D77660];
  v7[61] = v2;
  v3 = *MEMORY[0x277D77678];
  v7[62] = *MEMORY[0x277D77670];
  v7[63] = v3;
  v7[64] = *MEMORY[0x277D77680];
  v7[65] = *MEMORY[0x277D77688];
  v7[66] = *MEMORY[0x277D77690];
  v7[67] = *MEMORY[0x277D77698];
  v7[68] = *MEMORY[0x277D776A0];
  v7[69] = *MEMORY[0x277D776A8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:70];
  v5 = [v0 setWithArray:v4];
  v6 = orientationStageRoles_orientationStageRoles_0;
  orientationStageRoles_orientationStageRoles_0 = v5;
}

@end