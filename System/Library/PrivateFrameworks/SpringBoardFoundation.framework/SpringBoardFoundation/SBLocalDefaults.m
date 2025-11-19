@interface SBLocalDefaults
- (SBAccessibilityDefaults)accessibilityDefaults;
- (SBAlwaysOnDefaults)alwaysOnDefaults;
- (SBAmbientDefaults)ambientDefaults;
- (SBAppSwitcherDefaults)appSwitcherDefaults;
- (SBApplicationDefaults)applicationDefaults;
- (SBBiometricAuthenticationDefaults)biometricAuthenticationDefaults;
- (SBBootDefaults)bootDefaults;
- (SBCameraHardwareButtonDefaults)cameraHardwareButtonDefaults;
- (SBCaptureApplicationDefaults)captureApplicationDefaults;
- (SBCaptureButtonDefaults)captureButtonDefaults;
- (SBControlCenterDefaults)controlCenterDefaults;
- (SBCornerGestureDefaults)cornerGestureDefaults;
- (SBDemoDefaults)demoDefaults;
- (SBExternalDisplayDefaults)externalDisplayDefaults;
- (SBFloatingDockDefaults)floatingDockDefaults;
- (SBGestureDefaults)gestureDefaults;
- (SBHardwareDefaults)hardwareDefaults;
- (SBHomeScreenDefaults)homeScreenDefaults;
- (SBIconDefaults)iconDefaults;
- (SBIdleTimerDefaults)idleTimerDefaults;
- (SBInCallPresentationDefaults)inCallPresentationDefaults;
- (SBLockScreenDefaults)lockScreenDefaults;
- (SBMiscellaneousDefaults)miscellaneousDefaults;
- (SBMultiUserDefaults)multiUserDefaults;
- (SBNotificationCenterDefaults)notificationCenterDefaults;
- (SBNotificationDefaults)notificationDefaults;
- (SBPIPDefaults)pipDefaults;
- (SBPencilDefaults)pencilDefaults;
- (SBPowerDefaults)powerDefaults;
- (SBRecentDisplayItemsDefaults)recentDisplayItemsDefaults;
- (SBRotationDefaults)rotationDefaults;
- (SBSOSDefaults)sosDefaults;
- (SBScreenLongevityDefaults)screenLongevityDefaults;
- (SBSecurityDefaults)securityDefaults;
- (SBSetupDefaults)setupDefaults;
- (SBSoftwareUpdateDefaults)softwareUpdateDefaults;
- (SBSoundDefaults)soundDefaults;
- (SBStateDumpDefaults)stateDumpDefaults;
- (SBStatusBarDefaults)statusBarDefaults;
- (SBSystemActionDefaults)systemActionDefaults;
- (SBSystemApertureDefaults)systemApertureDefaults;
- (SBTestingDefaults)testingDefaults;
- (SBThermalDefaults)thermalDefaults;
- (SBUsageDefaults)usageDefaults;
- (SBVoiceControlDefaults)voiceControlDefaults;
- (SBWorkspaceDefaults)workspaceDefaults;
- (void)migrateAndRemoveOldDefaults;
@end

@implementation SBLocalDefaults

- (SBAppSwitcherDefaults)appSwitcherDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SBLocalDefaults_appSwitcherDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (appSwitcherDefaults___once != -1)
  {
    dispatch_once(&appSwitcherDefaults___once, block);
  }

  return self->_lazy_appSwitcherDefaults;
}

- (SBWorkspaceDefaults)workspaceDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBLocalDefaults_workspaceDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (workspaceDefaults___once != -1)
  {
    dispatch_once(&workspaceDefaults___once, block);
  }

  return self->_lazy_workspaceDefaults;
}

- (SBPIPDefaults)pipDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SBLocalDefaults_pipDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (pipDefaults___once != -1)
  {
    dispatch_once(&pipDefaults___once, block);
  }

  return self->_lazy_pipDefaults;
}

- (SBHomeScreenDefaults)homeScreenDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SBLocalDefaults_homeScreenDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (homeScreenDefaults___once != -1)
  {
    dispatch_once(&homeScreenDefaults___once, block);
  }

  return self->_lazy_homeScreenDefaults;
}

- (SBMiscellaneousDefaults)miscellaneousDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SBLocalDefaults_miscellaneousDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (miscellaneousDefaults___once != -1)
  {
    dispatch_once(&miscellaneousDefaults___once, block);
  }

  return self->_lazy_miscellaneousDefaults;
}

- (SBPowerDefaults)powerDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SBLocalDefaults_powerDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (powerDefaults___once != -1)
  {
    dispatch_once(&powerDefaults___once, block);
  }

  return self->_lazy_powerDefaults;
}

- (SBHardwareDefaults)hardwareDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SBLocalDefaults_hardwareDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (hardwareDefaults___once != -1)
  {
    dispatch_once(&hardwareDefaults___once, block);
  }

  return self->_lazy_hardwareDefaults;
}

- (SBDemoDefaults)demoDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SBLocalDefaults_demoDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (demoDefaults___once != -1)
  {
    dispatch_once(&demoDefaults___once, block);
  }

  return self->_lazy_demoDefaults;
}

- (SBLockScreenDefaults)lockScreenDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SBLocalDefaults_lockScreenDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (lockScreenDefaults___once != -1)
  {
    dispatch_once(&lockScreenDefaults___once, block);
  }

  return self->_lazy_lockScreenDefaults;
}

- (SBSystemApertureDefaults)systemApertureDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SBLocalDefaults_systemApertureDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (systemApertureDefaults___once != -1)
  {
    dispatch_once(&systemApertureDefaults___once, block);
  }

  return self->_lazy_systemApertureDefaults;
}

- (SBAccessibilityDefaults)accessibilityDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SBLocalDefaults_accessibilityDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (accessibilityDefaults___once != -1)
  {
    dispatch_once(&accessibilityDefaults___once, block);
  }

  return self->_lazy_accessibilityDefaults;
}

uint64_t __40__SBLocalDefaults_accessibilityDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBAccessibilityDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBAlwaysOnDefaults)alwaysOnDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SBLocalDefaults_alwaysOnDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (alwaysOnDefaults___once != -1)
  {
    dispatch_once(&alwaysOnDefaults___once, block);
  }

  return self->_lazy_alwaysOnDefaults;
}

uint64_t __35__SBLocalDefaults_alwaysOnDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBAlwaysOnDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBAmbientDefaults)ambientDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SBLocalDefaults_ambientDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (ambientDefaults___once != -1)
  {
    dispatch_once(&ambientDefaults___once, block);
  }

  return self->_lazy_ambientDefaults;
}

uint64_t __34__SBLocalDefaults_ambientDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBAmbientDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __38__SBLocalDefaults_appSwitcherDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = objc_alloc_init(SBAppSwitcherDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBApplicationDefaults)applicationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SBLocalDefaults_applicationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (applicationDefaults___once != -1)
  {
    dispatch_once(&applicationDefaults___once, block);
  }

  return self->_lazy_applicationDefaults;
}

uint64_t __38__SBLocalDefaults_applicationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBApplicationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBBiometricAuthenticationDefaults)biometricAuthenticationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SBLocalDefaults_biometricAuthenticationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (biometricAuthenticationDefaults___once != -1)
  {
    dispatch_once(&biometricAuthenticationDefaults___once, block);
  }

  return self->_lazy_biometricAuthenticationDefaults;
}

uint64_t __50__SBLocalDefaults_biometricAuthenticationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBBiometricAuthenticationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBBootDefaults)bootDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SBLocalDefaults_bootDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (bootDefaults___once != -1)
  {
    dispatch_once(&bootDefaults___once, block);
  }

  return self->_lazy_bootDefaults;
}

uint64_t __31__SBLocalDefaults_bootDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBBootDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBCameraHardwareButtonDefaults)cameraHardwareButtonDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SBLocalDefaults_cameraHardwareButtonDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (cameraHardwareButtonDefaults___once != -1)
  {
    dispatch_once(&cameraHardwareButtonDefaults___once, block);
  }

  return self->_lazy_cameraHardwareButtonDefaults;
}

uint64_t __47__SBLocalDefaults_cameraHardwareButtonDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBCameraHardwareButtonDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBCaptureButtonDefaults)captureButtonDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SBLocalDefaults_captureButtonDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (captureButtonDefaults___once != -1)
  {
    dispatch_once(&captureButtonDefaults___once, block);
  }

  return self->_lazy_captureButtonDefaults;
}

uint64_t __40__SBLocalDefaults_captureButtonDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBCaptureButtonDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBControlCenterDefaults)controlCenterDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SBLocalDefaults_controlCenterDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (controlCenterDefaults___once != -1)
  {
    dispatch_once(&controlCenterDefaults___once, block);
  }

  return self->_lazy_controlCenterDefaults;
}

uint64_t __40__SBLocalDefaults_controlCenterDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBControlCenterDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBCornerGestureDefaults)cornerGestureDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SBLocalDefaults_cornerGestureDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (cornerGestureDefaults___once != -1)
  {
    dispatch_once(&cornerGestureDefaults___once, block);
  }

  return self->_lazy_cornerGestureDefaults;
}

uint64_t __40__SBLocalDefaults_cornerGestureDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBCornerGestureDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __31__SBLocalDefaults_demoDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = objc_alloc_init(SBDemoDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBExternalDisplayDefaults)externalDisplayDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SBLocalDefaults_externalDisplayDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (externalDisplayDefaults___once != -1)
  {
    dispatch_once(&externalDisplayDefaults___once, block);
  }

  return self->_lazy_externalDisplayDefaults;
}

uint64_t __42__SBLocalDefaults_externalDisplayDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBExternalDisplayDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBFloatingDockDefaults)floatingDockDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SBLocalDefaults_floatingDockDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (floatingDockDefaults___once != -1)
  {
    dispatch_once(&floatingDockDefaults___once, block);
  }

  return self->_lazy_floatingDockDefaults;
}

uint64_t __39__SBLocalDefaults_floatingDockDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBFloatingDockDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBGestureDefaults)gestureDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SBLocalDefaults_gestureDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (gestureDefaults___once != -1)
  {
    dispatch_once(&gestureDefaults___once, block);
  }

  return self->_lazy_gestureDefaults;
}

uint64_t __34__SBLocalDefaults_gestureDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBGestureDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __35__SBLocalDefaults_hardwareDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 128) = objc_alloc_init(SBHardwareDefaults);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__SBLocalDefaults_homeScreenDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = objc_alloc_init(SBHomeScreenDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBIconDefaults)iconDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SBLocalDefaults_iconDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (iconDefaults___once != -1)
  {
    dispatch_once(&iconDefaults___once, block);
  }

  return self->_lazy_iconDefaults;
}

uint64_t __31__SBLocalDefaults_iconDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBIconDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBIdleTimerDefaults)idleTimerDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBLocalDefaults_idleTimerDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (idleTimerDefaults___once != -1)
  {
    dispatch_once(&idleTimerDefaults___once, block);
  }

  return self->_lazy_idleTimerDefaults;
}

uint64_t __36__SBLocalDefaults_idleTimerDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBIdleTimerDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBInCallPresentationDefaults)inCallPresentationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBLocalDefaults_inCallPresentationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (inCallPresentationDefaults___once != -1)
  {
    dispatch_once(&inCallPresentationDefaults___once, block);
  }

  return self->_lazy_inCallPresentationDefaults;
}

uint64_t __45__SBLocalDefaults_inCallPresentationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBInCallPresentationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __37__SBLocalDefaults_lockScreenDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = objc_alloc_init(SBLockScreenDefaults);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __40__SBLocalDefaults_miscellaneousDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 176) = objc_alloc_init(SBMiscellaneousDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBMultiUserDefaults)multiUserDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBLocalDefaults_multiUserDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (multiUserDefaults___once != -1)
  {
    dispatch_once(&multiUserDefaults___once, block);
  }

  return self->_lazy_multiUserDefaults;
}

uint64_t __36__SBLocalDefaults_multiUserDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBMultiUserDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBNotificationCenterDefaults)notificationCenterDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBLocalDefaults_notificationCenterDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (notificationCenterDefaults___once != -1)
  {
    dispatch_once(&notificationCenterDefaults___once, block);
  }

  return self->_lazy_notificationCenterDefaults;
}

uint64_t __45__SBLocalDefaults_notificationCenterDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBNotificationCenterDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBNotificationDefaults)notificationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SBLocalDefaults_notificationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (notificationDefaults___once != -1)
  {
    dispatch_once(&notificationDefaults___once, block);
  }

  return self->_lazy_notificationDefaults;
}

uint64_t __39__SBLocalDefaults_notificationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBNotificationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBPencilDefaults)pencilDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SBLocalDefaults_pencilDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (pencilDefaults___once != -1)
  {
    dispatch_once(&pencilDefaults___once, block);
  }

  return self->_lazy_pencilDefaults;
}

uint64_t __33__SBLocalDefaults_pencilDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBPencilDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __30__SBLocalDefaults_pipDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 216) = objc_alloc_init(SBPIPDefaults);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __32__SBLocalDefaults_powerDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 224) = objc_alloc_init(SBPowerDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBRecentDisplayItemsDefaults)recentDisplayItemsDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBLocalDefaults_recentDisplayItemsDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (recentDisplayItemsDefaults___once != -1)
  {
    dispatch_once(&recentDisplayItemsDefaults___once, block);
  }

  return self->_lazy_recentDisplayItemsDefaults;
}

uint64_t __45__SBLocalDefaults_recentDisplayItemsDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBRecentDisplayItemsDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBRotationDefaults)rotationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SBLocalDefaults_rotationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (rotationDefaults___once != -1)
  {
    dispatch_once(&rotationDefaults___once, block);
  }

  return self->_lazy_rotationDefaults;
}

uint64_t __35__SBLocalDefaults_rotationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBRotationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBScreenLongevityDefaults)screenLongevityDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SBLocalDefaults_screenLongevityDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (screenLongevityDefaults___once != -1)
  {
    dispatch_once(&screenLongevityDefaults___once, block);
  }

  return self->_lazy_screenLongevityDefaults;
}

uint64_t __42__SBLocalDefaults_screenLongevityDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBScreenLongevityDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSOSDefaults)sosDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SBLocalDefaults_sosDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (sosDefaults___once != -1)
  {
    dispatch_once(&sosDefaults___once, block);
  }

  return self->_lazy_sosDefaults;
}

uint64_t __30__SBLocalDefaults_sosDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSOSDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSecurityDefaults)securityDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SBLocalDefaults_securityDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (securityDefaults___once != -1)
  {
    dispatch_once(&securityDefaults___once, block);
  }

  return self->_lazy_securityDefaults;
}

uint64_t __35__SBLocalDefaults_securityDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSecurityDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 264);
  *(v3 + 264) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSetupDefaults)setupDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SBLocalDefaults_setupDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (setupDefaults___once != -1)
  {
    dispatch_once(&setupDefaults___once, block);
  }

  return self->_lazy_setupDefaults;
}

uint64_t __32__SBLocalDefaults_setupDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSetupDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSoftwareUpdateDefaults)softwareUpdateDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SBLocalDefaults_softwareUpdateDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (softwareUpdateDefaults___once != -1)
  {
    dispatch_once(&softwareUpdateDefaults___once, block);
  }

  return self->_lazy_softwareUpdateDefaults;
}

uint64_t __41__SBLocalDefaults_softwareUpdateDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSoftwareUpdateDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSoundDefaults)soundDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SBLocalDefaults_soundDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (soundDefaults___once != -1)
  {
    dispatch_once(&soundDefaults___once, block);
  }

  return self->_lazy_soundDefaults;
}

uint64_t __32__SBLocalDefaults_soundDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSoundDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 288);
  *(v3 + 288) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBStateDumpDefaults)stateDumpDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBLocalDefaults_stateDumpDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (stateDumpDefaults___once != -1)
  {
    dispatch_once(&stateDumpDefaults___once, block);
  }

  return self->_lazy_stateDumpDefaults;
}

uint64_t __36__SBLocalDefaults_stateDumpDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBStateDumpDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  *(v3 + 296) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBStatusBarDefaults)statusBarDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SBLocalDefaults_statusBarDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (statusBarDefaults___once != -1)
  {
    dispatch_once(&statusBarDefaults___once, block);
  }

  return self->_lazy_statusBarDefaults;
}

uint64_t __36__SBLocalDefaults_statusBarDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBStatusBarDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 304);
  *(v3 + 304) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBSystemActionDefaults)systemActionDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SBLocalDefaults_systemActionDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (systemActionDefaults___once != -1)
  {
    dispatch_once(&systemActionDefaults___once, block);
  }

  return self->_lazy_systemActionDefaults;
}

uint64_t __39__SBLocalDefaults_systemActionDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBSystemActionDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 312);
  *(v3 + 312) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __41__SBLocalDefaults_systemApertureDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 320) = objc_alloc_init(SBSystemApertureDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBTestingDefaults)testingDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SBLocalDefaults_testingDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (testingDefaults___once != -1)
  {
    dispatch_once(&testingDefaults___once, block);
  }

  return self->_lazy_testingDefaults;
}

uint64_t __34__SBLocalDefaults_testingDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBTestingDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBThermalDefaults)thermalDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SBLocalDefaults_thermalDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (thermalDefaults___once != -1)
  {
    dispatch_once(&thermalDefaults___once, block);
  }

  return self->_lazy_thermalDefaults;
}

uint64_t __34__SBLocalDefaults_thermalDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBThermalDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 336);
  *(v3 + 336) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBVoiceControlDefaults)voiceControlDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SBLocalDefaults_voiceControlDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (voiceControlDefaults___once != -1)
  {
    dispatch_once(&voiceControlDefaults___once, block);
  }

  return self->_lazy_voiceControlDefaults;
}

uint64_t __39__SBLocalDefaults_voiceControlDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBVoiceControlDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 352);
  *(v3 + 352) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (SBUsageDefaults)usageDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SBLocalDefaults_usageDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (usageDefaults___once != -1)
  {
    dispatch_once(&usageDefaults___once, block);
  }

  return self->_lazy_usageDefaults;
}

uint64_t __32__SBLocalDefaults_usageDefaults__block_invoke(uint64_t a1)
{
  v2 = [(BSAbstractDefaultDomain *)[SBUsageDefaults alloc] _initWithDomain:@"com.apple.springboard.usage"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 344);
  *(v3 + 344) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __36__SBLocalDefaults_workspaceDefaults__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 360) = objc_alloc_init(SBWorkspaceDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (SBCaptureApplicationDefaults)captureApplicationDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBLocalDefaults_captureApplicationDefaults__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  if (captureApplicationDefaults___once != -1)
  {
    dispatch_once(&captureApplicationDefaults___once, block);
  }

  return self->_lazy_captureApplicationDefaults;
}

uint64_t __45__SBLocalDefaults_captureApplicationDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBCaptureApplicationDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  *(v3 + 368) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)migrateAndRemoveOldDefaults
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"SBShowVictoria"];
  [v2 removeObjectForKey:@"SBHasAttemptedToSynchronizeCloudCriticalData"];
  [v2 removePersistentDomainForName:@"com.apple.springboard.bkgndids"];
  [v2 removeObjectForKey:@"SBCarrierDebuggingAlertVersion"];
  [v2 removeObjectForKey:@"SBStackshotUIFeedback"];
  [v2 removeObjectForKey:@"SBMostRecentFloatingApplicationState"];
  [v2 removeObjectForKey:@"SBShouldShowAppLibraryOnBoardingAlert"];
  [v2 removeObjectForKey:@"SBShouldShowAvocadoWidgetsOnBoardingAlert"];
  [v2 removeObjectForKey:@"SBShouldShowPageHidingOnBoardingAlert"];
  [v2 removeObjectForKey:@"SBHomeScreenPageHidingUIHasEverBeenShown"];
  v3 = [v2 objectForKey:@"SBShowInternalWidgets"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.chronod"];
    [v4 setObject:v3 forKey:@"showInternalWidgets"];
    [v2 removeObjectForKey:@"SBShowInternalWidgets"];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v2 dictionaryRepresentation];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 containsString:@"SBOrientationActuation"])
        {
          [v2 removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end