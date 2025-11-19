void __SBLogScreenLongevityController_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ScreenLongevityController");
  v1 = SBLogScreenLongevityController___logObj;
  SBLogScreenLongevityController___logObj = v0;
}

void __SBLogAppLibrary_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D0AB40], "sb.default");
  v1 = SBLogAppLibrary___logObj;
  SBLogAppLibrary___logObj = v0;
}

id SBLogAppPlaceholder()
{
  if (SBLogAppPlaceholder_onceToken != -1)
  {
    SBLogAppPlaceholder_cold_1();
  }

  v1 = SBLogAppPlaceholder___logObj;

  return v1;
}

void __SBLogAppPlaceholder_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D0AB40], "sb.placeholder");
  v1 = SBLogAppPlaceholder___logObj;
  SBLogAppPlaceholder___logObj = v0;
}

void __SBLogIconStyle_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "IconStyle");
  v1 = SBLogIconStyle___logObj;
  SBLogIconStyle___logObj = v0;
}

id SBLogShellScene()
{
  if (SBLogShellScene_onceToken != -1)
  {
    SBLogShellScene_cold_1();
  }

  v1 = SBLogShellScene___logObj;

  return v1;
}

void __SBLogShellScene_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ShellScene");
  v1 = SBLogShellScene___logObj;
  SBLogShellScene___logObj = v0;
}

id SBLogSystemGesture()
{
  if (SBLogSystemGesture_onceToken != -1)
  {
    SBLogSystemGesture_cold_1();
  }

  v1 = SBLogSystemGesture___logObj;

  return v1;
}

void __SBLogSystemGesture_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGesture");
  v1 = SBLogSystemGesture___logObj;
  SBLogSystemGesture___logObj = v0;
}

void __SBLogSystemGestureDetail_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureDetail");
  v1 = SBLogSystemGestureDetail___logObj;
  SBLogSystemGestureDetail___logObj = v0;
}

id SBLogSystemGestureControlCenter()
{
  if (SBLogSystemGestureControlCenter_onceToken != -1)
  {
    SBLogSystemGestureControlCenter_cold_1();
  }

  v1 = SBLogSystemGestureControlCenter___logObj;

  return v1;
}

void __SBLogSystemGestureControlCenter_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureControlCenter");
  v1 = SBLogSystemGestureControlCenter___logObj;
  SBLogSystemGestureControlCenter___logObj = v0;
}

void __SBLogSystemGestureCoverSheet_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureCoverSheet");
  v1 = SBLogSystemGestureCoverSheet___logObj;
  SBLogSystemGestureCoverSheet___logObj = v0;
}

id SBLogSystemGestureBannerDismiss()
{
  if (SBLogSystemGestureBannerDismiss_onceToken != -1)
  {
    SBLogSystemGestureBannerDismiss_cold_1();
  }

  v1 = SBLogSystemGestureBannerDismiss___logObj;

  return v1;
}

void __SBLogSystemGestureBannerDismiss_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureBannerDismiss");
  v1 = SBLogSystemGestureBannerDismiss___logObj;
  SBLogSystemGestureBannerDismiss___logObj = v0;
}

id SBLogSystemGestureScrunch()
{
  if (SBLogSystemGestureScrunch_onceToken != -1)
  {
    SBLogSystemGestureScrunch_cold_1();
  }

  v1 = SBLogSystemGestureScrunch___logObj;

  return v1;
}

void __SBLogSystemGestureScrunch_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureScrunch");
  v1 = SBLogSystemGestureScrunch___logObj;
  SBLogSystemGestureScrunch___logObj = v0;
}

void __SBLogSystemGestureAppSwitcher_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureAppSwitcher");
  v1 = SBLogSystemGestureAppSwitcher___logObj;
  SBLogSystemGestureAppSwitcher___logObj = v0;
}

id SBLogSystemGestureSwitchApp()
{
  if (SBLogSystemGestureSwitchApp_onceToken != -1)
  {
    SBLogSystemGestureSwitchApp_cold_1();
  }

  v1 = SBLogSystemGestureSwitchApp___logObj;

  return v1;
}

void __SBLogSystemGestureSwitchApp_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureSwitchApp");
  v1 = SBLogSystemGestureSwitchApp___logObj;
  SBLogSystemGestureSwitchApp___logObj = v0;
}

id SBLogSystemGestureHome()
{
  if (SBLogSystemGestureHome_onceToken != -1)
  {
    SBLogSystemGestureHome_cold_1();
  }

  v1 = SBLogSystemGestureHome___logObj;

  return v1;
}

void __SBLogSystemGestureHome_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGestureHome");
  v1 = SBLogSystemGestureHome___logObj;
  SBLogSystemGestureHome___logObj = v0;
}

id SBLogSystemGesturePencilSqueeze()
{
  if (SBLogSystemGesturePencilSqueeze_onceToken != -1)
  {
    SBLogSystemGesturePencilSqueeze_cold_1();
  }

  v1 = SBLogSystemGesturePencilSqueeze___logObj;

  return v1;
}

void __SBLogSystemGesturePencilSqueeze_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemGesturePencilSqueeze");
  v1 = SBLogSystemGesturePencilSqueeze___logObj;
  SBLogSystemGesturePencilSqueeze___logObj = v0;
}

id SBLogAppSwitcherDrag()
{
  if (SBLogAppSwitcherDrag_onceToken != -1)
  {
    SBLogAppSwitcherDrag_cold_1();
  }

  v1 = SBLogAppSwitcherDrag___logObj;

  return v1;
}

void __SBLogAppSwitcherDrag_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AppSwitcherDrag");
  v1 = SBLogAppSwitcherDrag___logObj;
  SBLogAppSwitcherDrag___logObj = v0;
}

id SBLogWidgetDiscoverability()
{
  if (SBLogWidgetDiscoverability_onceToken != -1)
  {
    SBLogWidgetDiscoverability_cold_1();
  }

  v1 = SBLogWidgetDiscoverability___logObj;

  return v1;
}

void __SBLogWidgetDiscoverability_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "WidgetDiscoverability");
  v1 = SBLogWidgetDiscoverability___logObj;
  SBLogWidgetDiscoverability___logObj = v0;
}

void __SBLogWidgetIntent_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "WidgetIntent");
  v1 = SBLogWidgetIntent___logObj;
  SBLogWidgetIntent___logObj = v0;
}

id SBLogSystemActionCoaching()
{
  if (SBLogSystemActionCoaching_onceToken != -1)
  {
    SBLogSystemActionCoaching_cold_1();
  }

  v1 = SBLogSystemActionCoaching___logObj;

  return v1;
}

void __SBLogSystemActionCoaching_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionCoaching");
  v1 = SBLogSystemActionCoaching___logObj;
  SBLogSystemActionCoaching___logObj = v0;
}

id SBLogSystemActionControl()
{
  if (SBLogSystemActionControl_onceToken != -1)
  {
    SBLogSystemActionControl_cold_1();
  }

  v1 = SBLogSystemActionControl___logObj;

  return v1;
}

void __SBLogSystemActionControl_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionControl");
  v1 = SBLogSystemActionControl___logObj;
  SBLogSystemActionControl___logObj = v0;
}

id SBLogSystemActionDataSource()
{
  if (SBLogSystemActionDataSource_onceToken != -1)
  {
    SBLogSystemActionDataSource_cold_1();
  }

  v1 = SBLogSystemActionDataSource___logObj;

  return v1;
}

void __SBLogSystemActionDataSource_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionDataSource");
  v1 = SBLogSystemActionDataSource___logObj;
  SBLogSystemActionDataSource___logObj = v0;
}

id SBLogSystemActionExecution()
{
  if (SBLogSystemActionExecution_onceToken != -1)
  {
    SBLogSystemActionExecution_cold_1();
  }

  v1 = SBLogSystemActionExecution___logObj;

  return v1;
}

void __SBLogSystemActionExecution_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionExecution");
  v1 = SBLogSystemActionExecution___logObj;
  SBLogSystemActionExecution___logObj = v0;
}

id SBLogSystemActionPreviewing()
{
  if (SBLogSystemActionPreviewing_onceToken != -1)
  {
    SBLogSystemActionPreviewing_cold_1();
  }

  v1 = SBLogSystemActionPreviewing___logObj;

  return v1;
}

void __SBLogSystemActionPreviewing_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionPreviewing");
  v1 = SBLogSystemActionPreviewing___logObj;
  SBLogSystemActionPreviewing___logObj = v0;
}

id SBLogSystemActionSuppression()
{
  if (SBLogSystemActionSuppression_onceToken != -1)
  {
    SBLogSystemActionSuppression_cold_1();
  }

  v1 = SBLogSystemActionSuppression___logObj;

  return v1;
}

void __SBLogSystemActionSuppression_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemActionSuppression");
  v1 = SBLogSystemActionSuppression___logObj;
  SBLogSystemActionSuppression___logObj = v0;
}

void __SBLogSystemApertureController_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureController");
  v1 = SBLogSystemApertureController___logObj;
  SBLogSystemApertureController___logObj = v0;
}

void __SBLogSystemApertureContainer_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureContainer");
  v1 = SBLogSystemApertureContainer___logObj;
  SBLogSystemApertureContainer___logObj = v0;
}

id SBLogSystemApertureDebuggingUtility()
{
  if (SBLogSystemApertureDebuggingUtility_onceToken != -1)
  {
    SBLogSystemApertureDebuggingUtility_cold_1();
  }

  v1 = SBLogSystemApertureDebuggingUtility___logObj;

  return v1;
}

void __SBLogSystemApertureDebuggingUtility_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureDebuggingUtility");
  v1 = SBLogSystemApertureDebuggingUtility___logObj;
  SBLogSystemApertureDebuggingUtility___logObj = v0;
}

void __SBLogSystemApertureNotice_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureNotice");
  v1 = SBLogSystemApertureNotice___logObj;
  SBLogSystemApertureNotice___logObj = v0;
}

id SBLogSystemAperturePills()
{
  if (SBLogSystemAperturePills_onceToken != -1)
  {
    SBLogSystemAperturePills_cold_1();
  }

  v1 = SBLogSystemAperturePills___logObj;

  return v1;
}

void __SBLogSystemAperturePills_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePills");
  v1 = SBLogSystemAperturePills___logObj;
  SBLogSystemAperturePills___logObj = v0;
}

id SBLogSystemApertureLocalElement()
{
  if (SBLogSystemApertureLocalElement_onceToken != -1)
  {
    SBLogSystemApertureLocalElement_cold_1();
  }

  v1 = SBLogSystemApertureLocalElement___logObj;

  return v1;
}

void __SBLogSystemApertureLocalElement_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureLocalElement");
  v1 = SBLogSystemApertureLocalElement___logObj;
  SBLogSystemApertureLocalElement___logObj = v0;
}

void __SBLogSystemApertureLockElement_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureLockElement");
  v1 = SBLogSystemApertureLockElement___logObj;
  SBLogSystemApertureLockElement___logObj = v0;
}

void __SBLogSystemApertureMediation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureMediation");
  v1 = SBLogSystemApertureMediation___logObj;
  SBLogSystemApertureMediation___logObj = v0;
}

id SBLogSystemApertureOrientation()
{
  if (SBLogSystemApertureOrientation_onceToken != -1)
  {
    SBLogSystemApertureOrientation_cold_1();
  }

  v1 = SBLogSystemApertureOrientation___logObj;

  return v1;
}

void __SBLogSystemApertureOrientation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureOrientation");
  v1 = SBLogSystemApertureOrientation___logObj;
  SBLogSystemApertureOrientation___logObj = v0;
}

id SBLogSystemApertureAccessibility()
{
  if (SBLogSystemApertureAccessibility_onceToken != -1)
  {
    SBLogSystemApertureAccessibility_cold_1();
  }

  v1 = SBLogSystemApertureAccessibility___logObj;

  return v1;
}

void __SBLogSystemApertureAccessibility_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureAccessibility");
  v1 = SBLogSystemApertureAccessibility___logObj;
  SBLogSystemApertureAccessibility___logObj = v0;
}

id SBLogSystemApertureSecureFlipBookElements()
{
  if (SBLogSystemApertureSecureFlipBookElements_onceToken != -1)
  {
    SBLogSystemApertureSecureFlipBookElements_cold_1();
  }

  v1 = SBLogSystemApertureSecureFlipBookElements___logObj;

  return v1;
}

void __SBLogSystemApertureSecureFlipBookElements_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemApertureSecureFlipBookElements");
  v1 = SBLogSystemApertureSecureFlipBookElements___logObj;
  SBLogSystemApertureSecureFlipBookElements___logObj = v0;
}

void __SBLogSystemAperturePreferencesStack_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStack");
  v1 = SBLogSystemAperturePreferencesStack___logObj;
  SBLogSystemAperturePreferencesStack___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackMutation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackMutation");
  v1 = SBLogSystemAperturePreferencesStackMutation___logObj;
  SBLogSystemAperturePreferencesStackMutation___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackSettling_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackSettling");
  v1 = SBLogSystemAperturePreferencesStackSettling___logObj;
  SBLogSystemAperturePreferencesStackSettling___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackElements_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackElements");
  v1 = SBLogSystemAperturePreferencesStackElements___logObj;
  SBLogSystemAperturePreferencesStackElements___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackRenderingCloning_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackRenderingCloning");
  v1 = SBLogSystemAperturePreferencesStackRenderingCloning___logObj;
  SBLogSystemAperturePreferencesStackRenderingCloning___logObj = v0;
}

id SBLogSystemAperturePreferencesStackMitosis()
{
  if (SBLogSystemAperturePreferencesStackMitosis_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackMitosis_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackMitosis___logObj;

  return v1;
}

void __SBLogSystemAperturePreferencesStackMitosis_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackMitosis");
  v1 = SBLogSystemAperturePreferencesStackMitosis___logObj;
  SBLogSystemAperturePreferencesStackMitosis___logObj = v0;
}

id SBLogSystemAperturePreferencesStackSequencedBehaviors()
{
  if (SBLogSystemAperturePreferencesStackSequencedBehaviors_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackSequencedBehaviors_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackSequencedBehaviors___logObj;

  return v1;
}

void __SBLogSystemAperturePreferencesStackSequencedBehaviors_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackSequencedBehaviors");
  v1 = SBLogSystemAperturePreferencesStackSequencedBehaviors___logObj;
  SBLogSystemAperturePreferencesStackSequencedBehaviors___logObj = v0;
}

id SBLogSystemAperturePreferencesStackGestures()
{
  if (SBLogSystemAperturePreferencesStackGestures_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackGestures_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackGestures___logObj;

  return v1;
}

void __SBLogSystemAperturePreferencesStackGestures_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackGestures");
  v1 = SBLogSystemAperturePreferencesStackGestures___logObj;
  SBLogSystemAperturePreferencesStackGestures___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackPruning_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackPruning");
  v1 = SBLogSystemAperturePreferencesStackPruning___logObj;
  SBLogSystemAperturePreferencesStackPruning___logObj = v0;
}

id SBLogSystemAperturePreferencesStackDynamicsAnimations()
{
  if (SBLogSystemAperturePreferencesStackDynamicsAnimations_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackDynamicsAnimations_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackDynamicsAnimations___logObj;

  return v1;
}

void __SBLogSystemAperturePreferencesStackDynamicsAnimations_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackDynamicsAnimations");
  v1 = SBLogSystemAperturePreferencesStackDynamicsAnimations___logObj;
  SBLogSystemAperturePreferencesStackDynamicsAnimations___logObj = v0;
}

void __SBLogSystemAperturePreferencesStackIndicator_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackIndicator");
  v1 = SBLogSystemAperturePreferencesStackIndicator___logObj;
  SBLogSystemAperturePreferencesStackIndicator___logObj = v0;
}

id SBLogSystemAperturePreferencesStackSecureFlipBookElements()
{
  if (SBLogSystemAperturePreferencesStackSecureFlipBookElements_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackSecureFlipBookElements_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackSecureFlipBookElements___logObj;

  return v1;
}

void __SBLogSystemAperturePreferencesStackSecureFlipBookElements_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SystemAperturePreferencesStackSecureFlipBookElements");
  v1 = SBLogSystemAperturePreferencesStackSecureFlipBookElements___logObj;
  SBLogSystemAperturePreferencesStackSecureFlipBookElements___logObj = v0;
}

id SBLogCoverGesture()
{
  if (SBLogCoverGesture_onceToken != -1)
  {
    SBLogCoverGesture_cold_1();
  }

  v1 = SBLogCoverGesture___logObj;

  return v1;
}

void __SBLogCoverGesture_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CoverGesture");
  v1 = SBLogCoverGesture___logObj;
  SBLogCoverGesture___logObj = v0;
}

void __SBLogButtonsHome_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Home");
  v1 = SBLogButtonsHome___logObj;
  SBLogButtonsHome___logObj = v0;
}

id SBLogButtonsLock()
{
  if (SBLogButtonsLock_onceToken != -1)
  {
    SBLogButtonsLock_cold_1();
  }

  v1 = SBLogButtonsLock___logObj;

  return v1;
}

void __SBLogButtonsLock_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Lock");
  v1 = SBLogButtonsLock___logObj;
  SBLogButtonsLock___logObj = v0;
}

void __SBLogButtonsVolume_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Volume");
  v1 = SBLogButtonsVolume___logObj;
  SBLogButtonsVolume___logObj = v0;
}

void __SBLogButtonsAction_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Action");
  v1 = SBLogButtonsAction___logObj;
  SBLogButtonsAction___logObj = v0;
}

id SBLogButtonsCombo()
{
  if (SBLogButtonsCombo_onceToken != -1)
  {
    SBLogButtonsCombo_cold_1();
  }

  v1 = SBLogButtonsCombo___logObj;

  return v1;
}

void __SBLogButtonsCombo_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Combo");
  v1 = SBLogButtonsCombo___logObj;
  SBLogButtonsCombo___logObj = v0;
}

void __SBLogButtonsInteraction_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Interaction");
  v1 = SBLogButtonsInteraction___logObj;
  SBLogButtonsInteraction___logObj = v0;
}

void __SBLogButtonsCamera_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Camera");
  v1 = SBLogButtonsCamera___logObj;
  SBLogButtonsCamera___logObj = v0;
}

void __SBLogButtonsCapture_block_invoke()
{
  v0 = os_log_create(SBButtonLoggingSubsystem, "Capture");
  v1 = SBLogButtonsCapture___logObj;
  SBLogButtonsCapture___logObj = v0;
}

id SBLogStationaryMotionDetector()
{
  if (SBLogStationaryMotionDetector_onceToken != -1)
  {
    SBLogStationaryMotionDetector_cold_1();
  }

  v1 = SBLogStationaryMotionDetector___logObj;

  return v1;
}

void __SBLogStationaryMotionDetector_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "StationaryMotionDetector");
  v1 = SBLogStationaryMotionDetector___logObj;
  SBLogStationaryMotionDetector___logObj = v0;
}

id SBLogButtonHintingUI()
{
  if (SBLogButtonHintingUI_onceToken != -1)
  {
    SBLogButtonHintingUI_cold_1();
  }

  v1 = SBLogButtonHintingUI___logObj;

  return v1;
}

void __SBLogButtonHintingUI_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ButtonHintingUI");
  v1 = SBLogButtonHintingUI___logObj;
  SBLogButtonHintingUI___logObj = v0;
}

id SBLogCameraCaptureLaunch()
{
  if (SBLogCameraCaptureLaunch_onceToken != -1)
  {
    SBLogCameraCaptureLaunch_cold_1();
  }

  v1 = SBLogCameraCaptureLaunch___logObj;

  return v1;
}

void __SBLogCameraCaptureLaunch_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureLaunch");
  v1 = SBLogCameraCaptureLaunch___logObj;
  SBLogCameraCaptureLaunch___logObj = v0;
}

id SBLogCameraCaptureSuppression()
{
  if (SBLogCameraCaptureSuppression_onceToken != -1)
  {
    SBLogCameraCaptureSuppression_cold_1();
  }

  v1 = SBLogCameraCaptureSuppression___logObj;

  return v1;
}

void __SBLogCameraCaptureSuppression_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureSuppression");
  v1 = SBLogCameraCaptureSuppression___logObj;
  SBLogCameraCaptureSuppression___logObj = v0;
}

id SBLogCameraCaptureButtonScanMode()
{
  if (SBLogCameraCaptureButtonScanMode_onceToken != -1)
  {
    SBLogCameraCaptureButtonScanMode_cold_1();
  }

  v1 = SBLogCameraCaptureButtonScanMode___logObj;

  return v1;
}

void __SBLogCameraCaptureButtonScanMode_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureButtonScanMode");
  v1 = SBLogCameraCaptureButtonScanMode___logObj;
  SBLogCameraCaptureButtonScanMode___logObj = v0;
}

id SBLogCameraCaptureOverlay()
{
  if (SBLogCameraCaptureOverlay_onceToken != -1)
  {
    SBLogCameraCaptureOverlay_cold_1();
  }

  v1 = SBLogCameraCaptureOverlay___logObj;

  return v1;
}

void __SBLogCameraCaptureOverlay_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureOverlay");
  v1 = SBLogCameraCaptureOverlay___logObj;
  SBLogCameraCaptureOverlay___logObj = v0;
}

id SBLogCameraCaptureLaunchAnimation()
{
  if (SBLogCameraCaptureLaunchAnimation_onceToken != -1)
  {
    SBLogCameraCaptureLaunchAnimation_cold_1();
  }

  v1 = SBLogCameraCaptureLaunchAnimation___logObj;

  return v1;
}

void __SBLogCameraCaptureLaunchAnimation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureLaunchAnimation");
  v1 = SBLogCameraCaptureLaunchAnimation___logObj;
  SBLogCameraCaptureLaunchAnimation___logObj = v0;
}

id SBLogCameraCaptureRestriction()
{
  if (SBLogCameraCaptureRestriction_onceToken != -1)
  {
    SBLogCameraCaptureRestriction_cold_1();
  }

  v1 = SBLogCameraCaptureRestriction___logObj;

  return v1;
}

void __SBLogCameraCaptureRestriction_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureRestriction");
  v1 = SBLogCameraCaptureRestriction___logObj;
  SBLogCameraCaptureRestriction___logObj = v0;
}

id SBLogCameraCaptureStudyLogs()
{
  if (SBLogCameraCaptureStudyLogs_onceToken != -1)
  {
    SBLogCameraCaptureStudyLogs_cold_1();
  }

  v1 = SBLogCameraCaptureStudyLogs___logObj;

  return v1;
}

void __SBLogCameraCaptureStudyLogs_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureStudyLogs");
  v1 = SBLogCameraCaptureStudyLogs___logObj;
  SBLogCameraCaptureStudyLogs___logObj = v0;
}

id SBLogCameraCaptureSessionLogs()
{
  if (SBLogCameraCaptureSessionLogs_onceToken != -1)
  {
    SBLogCameraCaptureSessionLogs_cold_1();
  }

  v1 = SBLogCameraCaptureSessionLogs___logObj;

  return v1;
}

void __SBLogCameraCaptureSessionLogs_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CameraCaptureSessionLogs");
  v1 = SBLogCameraCaptureSessionLogs___logObj;
  SBLogCameraCaptureSessionLogs___logObj = v0;
}

void __SBLogAmbientPresentation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AmbientPresentation");
  v1 = SBLogAmbientPresentation___logObj;
  SBLogAmbientPresentation___logObj = v0;
}

id SBLogAmbientChargerConnection()
{
  if (SBLogAmbientChargerConnection_onceToken != -1)
  {
    SBLogAmbientChargerConnection_cold_1();
  }

  v1 = SBLogAmbientChargerConnection___logObj;

  return v1;
}

void __SBLogAmbientChargerConnection_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AmbientChargerConnection");
  v1 = SBLogAmbientChargerConnection___logObj;
  SBLogAmbientChargerConnection___logObj = v0;
}

id SBLogAmbientIdleTimer()
{
  if (SBLogAmbientIdleTimer_onceToken != -1)
  {
    SBLogAmbientIdleTimer_cold_1();
  }

  v1 = SBLogAmbientIdleTimer___logObj;

  return v1;
}

void __SBLogAmbientIdleTimer_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AmbientIdleTimer");
  v1 = SBLogAmbientIdleTimer___logObj;
  SBLogAmbientIdleTimer___logObj = v0;
}

id SBLogAmbientAuthentication()
{
  if (SBLogAmbientAuthentication_onceToken != -1)
  {
    SBLogAmbientAuthentication_cold_1();
  }

  v1 = SBLogAmbientAuthentication___logObj;

  return v1;
}

void __SBLogAmbientAuthentication_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AmbientAuthentication");
  v1 = SBLogAmbientAuthentication___logObj;
  SBLogAmbientAuthentication___logObj = v0;
}

id SBLogAmbientDeviceState()
{
  if (SBLogAmbientDeviceState_onceToken != -1)
  {
    SBLogAmbientDeviceState_cold_1();
  }

  v1 = SBLogAmbientDeviceState___logObj;

  return v1;
}

void __SBLogAmbientDeviceState_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AmbientDeviceState");
  v1 = SBLogAmbientDeviceState___logObj;
  SBLogAmbientDeviceState___logObj = v0;
}

id SBLogBiome()
{
  if (SBLogBiome_onceToken != -1)
  {
    SBLogBiome_cold_1();
  }

  v1 = SBLogBiome___logObj;

  return v1;
}

void __SBLogBiome_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "Biome");
  v1 = SBLogBiome___logObj;
  SBLogBiome___logObj = v0;
}

id SBLogContinuityDisplay()
{
  if (SBLogContinuityDisplay_onceToken != -1)
  {
    SBLogContinuityDisplay_cold_1();
  }

  v1 = SBLogContinuityDisplay___logObj;

  return v1;
}

void __SBLogContinuityDisplay_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ContinuityDisplay");
  v1 = SBLogContinuityDisplay___logObj;
  SBLogContinuityDisplay___logObj = v0;
}

void __SBLogContinuitySession_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "ContinuitySession");
  v1 = SBLogContinuitySession___logObj;
  SBLogContinuitySession___logObj = v0;
}

void __SBLogAppProtection_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AppProtection");
  v1 = SBLogAppProtection___logObj;
  SBLogAppProtection___logObj = v0;
}

id SBLogCaptureApplication()
{
  if (SBLogCaptureApplication_onceToken != -1)
  {
    SBLogCaptureApplication_cold_1();
  }

  v1 = SBLogCaptureApplication___logObj;

  return v1;
}

void __SBLogCaptureApplication_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CaptureApplication");
  v1 = SBLogCaptureApplication___logObj;
  SBLogCaptureApplication___logObj = v0;
}

void __SBLogCaptureViewfinderMonitor_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "CaptureViewfinderMonitor");
  v1 = SBLogCaptureViewfinderMonitor___logObj;
  SBLogCaptureViewfinderMonitor___logObj = v0;
}

id SBLogPrototyping()
{
  if (SBLogPrototyping_onceToken != -1)
  {
    SBLogPrototyping_cold_1();
  }

  v1 = SBLogPrototyping___logObj;

  return v1;
}

void __SBLogPrototyping_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "Prototyping");
  v1 = SBLogPrototyping___logObj;
  SBLogPrototyping___logObj = v0;
}

id SBLogSceneRelevancy()
{
  if (SBLogSceneRelevancy_onceToken != -1)
  {
    SBLogSceneRelevancy_cold_1();
  }

  v1 = SBLogSceneRelevancy___logObj;

  return v1;
}

void __SBLogSceneRelevancy_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "SceneRelevancy");
  v1 = SBLogSceneRelevancy___logObj;
  SBLogSceneRelevancy___logObj = v0;
}

double SBMGGetCGRectAnswer(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MGCopyAnswer();
  v5 = v4;
  if (!v4)
  {
    v15 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = a1;
      v16 = "No data found for MG query %{public}@";
      goto LABEL_8;
    }

LABEL_9:

    v8 = a2;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCAE60] valueWithBytes:objc_msgSend(v4 objCType:{"bytes"), "{CGRect={CGPoint=dd}{CGSize=dd}}"}];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (CGRectEqualToRect(v21, *MEMORY[0x277CBF3A0]) || (v22.origin.x = v8, v22.origin.y = v10, v22.size.width = v12, v22.size.height = v14, CGRectIsNull(v22)))
  {
    v15 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = a1;
      v16 = "Invalid data found for MG query %{public}@";
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, v16, &v18, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

uint64_t SBMainScreenDPI()
{
  v0 = MGCopyAnswer();
  v1 = [v0 unsignedIntValue];

  return v1;
}

double SBMainScreenPointsPerMillimeter()
{
  if (SBMainScreenPointsPerMillimeter_onceToken != -1)
  {
    SBMainScreenPointsPerMillimeter_cold_1();
  }

  return *&SBMainScreenPointsPerMillimeter_pointsPerMM;
}

double __SBMainScreenPointsPerMillimeter_block_invoke()
{
  v0 = SBMainScreenDPI() / 25.4;
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 nativeScale];
  v3 = v2;

  result = v0 / v3;
  *&SBMainScreenPointsPerMillimeter_pointsPerMM = v0 / v3;
  return result;
}

uint64_t SBBaselineScreenDPIForIdiom()
{
  if (!__sb__runningInSpringBoard())
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v0 = 163.0;
    return (SBScreenScale() * v0);
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v0 = 132.0;
  return (SBScreenScale() * v0);
}

uint64_t SBBaselineScreenDPIForCurrentIdiom()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  [v0 userInterfaceIdiom];
  v1 = SBBaselineScreenDPIForIdiom();

  return v1;
}

__CFString *SBStringForBlurItemContainerQuality(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2783BF8D8[a1];
  }
}

void _SBIndirectGestureLog(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SBLogSystemGesture();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _SBIndirectGestureLog_cold_1();
  }
}

void sub_21F50304C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F5036DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

double _SBOrientedPointerLocation(void *a1, void *a2)
{
  v3 = a1;
  [a2 locationInView:0];
  v4 = [v3 view];

  [v4 size];
  _UIWindowConvertPointFromOrientationToOrientation();
  v6 = v5;

  return v6;
}

uint64_t SBDeviceHasRoundedScreenCorners()
{
  v0 = +[SBPlatformController sharedInstance];
  v1 = [v0 isRoundCornerPad];

  return v1;
}

__CFString *SBStringFromSBCaptureButtonCoachingHUDViewControllerState(uint64_t a1)
{
  v1 = @"Possible";
  if (a1 == 1)
  {
    v1 = @"CoachingCompact";
  }

  if (a1 == 2)
  {
    return @"CoachingExpanded";
  }

  else
  {
    return v1;
  }
}

void sub_21F50F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F50FBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F517D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F518CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5212E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NSStringFromSBSystemActionCompoundPreviewState()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = NSStringFromBOOL();
  v2 = NSStringFromBOOL();
  v3 = NSStringFromBOOL();
  v4 = NSStringFromBOOL();
  v5 = [v0 stringWithFormat:@"(isPreviewing=%@, isExpanding=%@, isProminent=%@, isUrgent=%@)", v1, v2, v3, v4];

  return v5;
}

__CFString *NSStringFromSBSystemActionCompoundPreviewEvent(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Cancel";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"Pop";
  }

  return v2;
}

void sub_21F523DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5243A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F524F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F525FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F526850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBSceneRelevancyHintDescription(uint64_t a1)
{
  v1 = @"unoccluded";
  if (a1 == 1)
  {
    v1 = @"partially occluded";
  }

  if (a1 == 2)
  {
    return @"fully occluded";
  }

  else
  {
    return v1;
  }
}

id _SBFindFirstView(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D75D18];
  v3 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___SBFindFirstView_block_invoke;
  v7[3] = &unk_2783B5428;
  v8 = v1;
  v4 = v1;
  v5 = [v2 sb_firstDescendantOfViews:v3 passingTest:v7];

  return v5;
}

__CFString *NSStringFromSBThermalLevel(uint64_t a1)
{
  if ((a1 + 2) >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", a1];
  }

  else
  {
    v2 = off_2783BFD58[a1 + 2];
  }

  return v2;
}

void sub_21F531710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F538058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5385C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_SBStatusBarPartsDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2783BFF80[a1];
  }
}

void sub_21F53A548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F53B134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F53B4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F53B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F53BA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F53CB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F53D054(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21F53FC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F53FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F54009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F540394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBCALayerCornerCurveForRadius(double a1)
{
  v2 = MEMORY[0x277CDA148];
  v3 = SBFEffectiveArtworkSubtype();
  v4 = MEMORY[0x277CDA140];
  if (v3 == 2868)
  {
    v4 = v2;
  }

  if (v3 == 2736)
  {
    v4 = v2;
  }

  if (v3 == 2622)
  {
    v4 = v2;
  }

  v5 = *v4;
  if (a1 >= 20.0)
  {
    v6 = *MEMORY[0x277CDA138];

    v5 = v6;
  }

  return v5;
}

__CFString *SBDisplayPowerLogWindowingModeDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_2783C02C0[a1 - 1];
  }
}

__CFString *SBDisplayPowerLogZoomLevelDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_2783C02E8[a1 - 1];
  }
}

unint64_t SBDisplayPowerLogZoomLevelFromScale(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *SBStringFromGesturePhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Possible";
  }

  else
  {
    return off_2783C0390[a1 - 1];
  }
}

void sub_21F54ED84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F54F094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5508F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F551440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F551B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5521E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F553EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 96), 8);
  _Unwind_Resume(a1);
}

Class __getLNAppConnectionListenerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppIntentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783C04B0;
    v5 = 0;
    AppIntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppIntentsLibraryCore_frameworkLibrary)
  {
    __getLNAppConnectionListenerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LNAppConnectionListener");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLNAppConnectionListenerClass_block_invoke_cold_1();
  }

  getLNAppConnectionListenerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppIntentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppIntentsLibraryCore_frameworkLibrary = result;
  return result;
}

id SBSAStringFromDictionaryDescription(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"<"];
  v20 = [v1 count];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v19 = *v22;
    do
    {
      v7 = 0;
      v18 = v6;
      v8 = v6 + 1;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * v7);
        v10 = [v3 objectForKey:v9];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 dictionaryDescription];
          v12 = SBSAStringFromDictionaryDescription();
        }

        else
        {
          v13 = objc_opt_class();
          v11 = v10;
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v11;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v12 = v14;
        }

        v15 = v12;

        if (v15)
        {
          [v2 appendFormat:@"%@: %@", v9, v15];
        }

        if (v8 >= v20)
        {
          v16 = @">";
        }

        else
        {
          v16 = @"; ";
        }

        [v2 appendString:v16];

        ++v7;
        ++v8;
      }

      while (v5 != v7);
      v6 = v18 + v5;
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v2;
}

void _SBSALogDictionaryDescribable(void *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = [a1 dictionaryDescription];
    v22 = [v7 count];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v23)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v21 = *v27;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
        for (i = a3; i; --i)
        {
          [v11 appendString:@"    "];
        }

        if (!v8)
        {
          [v11 appendString:@"<"];
        }

        ++v8;
        [v11 appendFormat:@"%@:", v10];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = ___SBSALogDictionaryDescribable_block_invoke;
        v25[3] = &__block_descriptor_48_e25_v16__0__NSMutableString_8l;
        v25[4] = v8;
        v25[5] = v22;
        v13 = MEMORY[0x223D6F7F0](v25);
        v14 = [obj objectForKey:v10];
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v18)
        {
          [v11 appendFormat:@" %@", v18];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_25;
          }

          (v6)[2](v6, v11);
          _SBSALogDictionaryDescribable(v16, v6, a3 + 1);
          v19 = objc_alloc_init(MEMORY[0x277CCAB68]);

          if (a3)
          {
            v20 = a3;
            do
            {
              [v19 appendString:@"    "];
              --v20;
            }

            while (v20);
          }

          v11 = v19;
        }

        (v13)[2](v13, v11);
        (v6)[2](v6, v11);
LABEL_25:

        ++v9;
      }

      while (v9 != v23);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v23)
      {
LABEL_27:

        break;
      }
    }
  }
}

void __SBSALogDictionaryDescribableDebug_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __SBSALogDictionaryDescribableDebug_block_invoke_cold_1(a1, v4, v3);
  }
}

void sub_21F5577C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21F558AC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F559B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F55B248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F55CB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F55CE60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_21F5618EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F561AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F561D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F564328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F564D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5651B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F565724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _offsetOfDropletView(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 layer];
  v7 = [v6 presentationLayer];

  v8 = 0.0;
  if (v7)
  {
    v9 = [v5 layer];
    [v7 bounds];
    [v9 convertRect:v7 fromLayer:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if (a3 == 8)
    {
      v22.origin.x = v11;
      v22.origin.y = v13;
      v22.size.width = v15;
      v22.size.height = v17;
      MinX = CGRectGetMinX(v22);
      v19 = [v5 layer];
      [v19 bounds];
      v8 = MinX - CGRectGetMaxX(v23);

      if (v8 > 0.0)
      {
        v8 = 0.0;
      }
    }

    else if (a3 == 2)
    {
      v21.origin.x = v11;
      v21.origin.y = v13;
      v21.size.width = v15;
      v21.size.height = v17;
      v8 = fmax(CGRectGetMaxX(v21), 0.0);
    }
  }

  return v8;
}

void sub_21F56B554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F56C8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBKeyboardFocusCoalitionAffinity(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_2783C08A0[a1];
  }

  return v2;
}

void sub_21F56D1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F56D7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5737C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F573928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F573A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F573BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F573D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F573E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5750DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_NSStringFromHapticType(uint64_t a1)
{
  v1 = @"FlyIn";
  if (a1 == 2)
  {
    v1 = @"ReduceMotion";
  }

  if (a1 == 1)
  {
    return @"EmptySwitcher";
  }

  else
  {
    return v1;
  }
}

__CFString *_NSStringFromPhase(uint64_t a1)
{
  v1 = @"Warmup";
  if (a1 == 1)
  {
    v1 = @"Actuate";
  }

  if (a1 == 2)
  {
    return @"Cooldown";
  }

  else
  {
    return v1;
  }
}

BOOL SBDismissSpotlight()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = +[SBLockScreenManager sharedInstance];
  v1 = [v0 isUILocked];

  IsVisible = SBSpotlightIsVisible();
  if (v1)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    v4 = [v3 coverSheetViewController];

    v5 = [MEMORY[0x277D02B80] actionWithType:1];
    [v4 handleAction:v5 fromSender:v4];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [SBApp windowSceneManager];
    v7 = [v6 connectedWindowScenes];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 homeScreenController];
          if (v13 && SBWorkspaceLauncherIsActive(v12, 0))
          {
            v14 = [v13 iconManager];
            [v14 presentHomeScreenIconsAnimated:1];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return IsVisible;
}

uint64_t SBTodayViewIsVisible()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = +[SBLockScreenManager sharedInstance];
  v1 = [v0 isUILocked];

  if (v1)
  {
    v2 = +[SBLockScreenManager sharedInstance];
    v3 = [v2 coverSheetViewController];

    v4 = [v3 isShowingTodayView];
    return v4;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [SBApp windowSceneManager];
    v7 = [v6 connectedWindowScenes];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) homeScreenController];
          v12 = [v11 iconManager];
          v13 = [v12 isOverlayTodayViewVisible];

          if (v13)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    return v8;
  }
}

uint64_t SBLibraryIsVisible()
{
  v0 = +[SBLockScreenManager sharedInstance];
  v1 = [v0 isUILocked];

  if (v1)
  {
    return 0;
  }

  v3 = [SBApp windowSceneManager];
  v4 = [v3 connectedWindowScenes];
  v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_369];

  return v5;
}

uint64_t __SBLibraryIsVisible_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 homeScreenController];
  if ([v3 isModalAppLibrarySupported])
  {
    v4 = [v2 modalLibraryController];
    v5 = [v4 isPresentingLibrary];
  }

  else
  {
    v4 = [v3 iconManager];
    v5 = [v4 isMainDisplayLibraryViewVisible];
  }

  v6 = v5;

  return v6;
}

void __SBLayoutSupportsManyForegroundWindows_block_invoke()
{
  if (SBFIsFlexibleWindowingUIAvailable())
  {
    v1 = +[SBDefaults localDefaults];
    v0 = [v1 appSwitcherDefaults];
    SBLayoutSupportsManyForegroundWindows_sSBLayoutSupportsManyForegroundWindows = [v0 wantsManyForegroundWindows];
  }

  else
  {
    SBLayoutSupportsManyForegroundWindows_sSBLayoutSupportsManyForegroundWindows = 0;
  }
}

void sub_21F575E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBLayoutRoleMax_block_invoke()
{
  if (SBLayoutSupportsManyForegroundWindows())
  {
    if (SBLayoutRoleAdditionalSideRangeMax_onceToken != -1)
    {
      __SBLayoutRoleMax_block_invoke_cold_1();
    }

    v0 = SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax;
  }

  else
  {
    v0 = 10;
  }

  SBLayoutRoleMax_layoutRoleMax = v0;
}

uint64_t SBLayoutRoleAdditionalSideRangeMax()
{
  if (SBLayoutRoleAdditionalSideRangeMax_onceToken != -1)
  {
    __SBLayoutRoleMax_block_invoke_cold_1();
  }

  return SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax;
}

uint64_t __SBLayoutRoleAdditionalSideRangeMax_block_invoke()
{
  result = SBLayoutSupportsManyForegroundWindows();
  v1 = 25;
  if (result)
  {
    v1 = 95;
  }

  SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax = v1;
  return result;
}

void SBLayoutRoleEnumerateValidRoles(void *a1)
{
  if (a1)
  {
    v1 = a1;
    SBLayoutRoleEnumerateAppLayoutRoles(v1);
    (*(v1 + 2))(v1, 3);
  }
}

void SBLayoutRoleEnumerateAppLayoutRoles(void *a1)
{
  v3 = a1;
  if (v3)
  {
    if (_MergedGlobals_0 != -1)
    {
      SBLayoutRoleMax_cold_1();
    }

    v1 = SBLayoutRoleMax_layoutRoleMax;
    if (SBLayoutRoleMax_layoutRoleMax)
    {
      v2 = 1;
      do
      {
        if (v2 != 3)
        {
          v3[2](v3, v2);
        }

        ++v2;
        --v1;
      }

      while (v1);
    }
  }
}

uint64_t SBLayoutRoleSetForRole2(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    goto LABEL_8;
  }

  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  if (SBLayoutRoleMax_layoutRoleMax < a1)
  {
LABEL_8:
    SBLayoutRoleSetForRole2_cold_4(a1);
  }

  if (a2 < 1 || SBLayoutRoleMax_layoutRoleMax < a2)
  {
    SBLayoutRoleSetForRole2_cold_3(a2);
  }

  SBLayoutRoleSetForRole2_cold_2(a2, a1, &v5);
  return v5;
}

uint64_t SBLayoutRoleSetForRole3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  if (SBLayoutRoleMax_layoutRoleMax < a1)
  {
LABEL_10:
    SBLayoutRoleSetForRole3_cold_5(a1);
  }

  if (a2 < 1 || SBLayoutRoleMax_layoutRoleMax < a2)
  {
    SBLayoutRoleSetForRole3_cold_4(a2);
  }

  if (a3 < 1 || SBLayoutRoleMax_layoutRoleMax < a3)
  {
    SBLayoutRoleSetForRole3_cold_3(a3);
  }

  SBLayoutRoleSetForRole3_cold_2(a1, a2, a3, &v7);
  return v7;
}

uint64_t __SBLayoutRoleSetBuilder_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    goto LABEL_8;
  }

  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  if (SBLayoutRoleMax_layoutRoleMax < a2)
  {
LABEL_8:
    __SBLayoutRoleSetBuilder_block_invoke_cold_2(a2);
  }

  v4 = *(a1 + 32);

  return [v4 addIndex:a2];
}

__CFString *SBStringForSwitcherHomeScreenBackdropBlurType(uint64_t a1)
{
  v1 = @"Live";
  if (a1 == 2)
  {
    v1 = @"Static";
  }

  if (a1 == 1)
  {
    return @"None";
  }

  else
  {
    return v1;
  }
}

__CFString *SBStringForSwitcherWallpaperStyle(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Black";
  }

  else
  {
    return off_2783C0AD8[a1 - 1];
  }
}

__CFString *SBStringForSwitcherSnapshotPreferredInterfaceOrientation(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Active";
  }

  else
  {
    return @"Switcher";
  }
}

__CFString *SBStringFromSwitcherScrollAxis(uint64_t a1)
{
  if (a1)
  {
    return @"Horizontal";
  }

  else
  {
    return @"Vertical";
  }
}

__CFString *SBStringFromSwitcherMutationReason(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_2783C0AF0[a1 - 1];
  }
}

__CFString *SBStringFromSwitcherPlusButtonStyle(uint64_t a1)
{
  if (a1)
  {
    return @"muted";
  }

  else
  {
    return @"vibrant";
  }
}

__CFString *SBStringForBlurTargetPreference(uint64_t a1)
{
  if (a1)
  {
    return @"itemContainer";
  }

  else
  {
    return @"liveContentOverlay";
  }
}

uint64_t SBSwitcherShortcutActionTypeFromKeyboardShortcutType(uint64_t a1, int a2)
{
  result = 40;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 15:
    case 16:
    case 32:
      result = 0;
      break;
    case 8:
      result = 41;
      break;
    case 11:
      result = 37;
      break;
    case 12:
      result = 21;
      break;
    case 13:
      v4 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
      v5 = 38;
      goto LABEL_29;
    case 14:
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        result = 38;
      }

      else
      {
        result = 39;
      }

      break;
    case 17:
      result = 31;
      break;
    case 18:
      result = 3;
      break;
    case 19:
      result = 4;
      break;
    case 20:
      result = 34;
      break;
    case 21:
      result = 35;
      break;
    case 22:
      v4 = a2 == 0;
      v5 = 18;
LABEL_29:
      if (v4)
      {
        result = v5 + 1;
      }

      else
      {
        result = v5;
      }

      break;
    case 23:
      result = 5;
      break;
    case 24:
      result = 6;
      break;
    case 25:
      result = 9;
      break;
    case 26:
      result = 10;
      break;
    case 27:
      result = 11;
      break;
    case 28:
      result = 12;
      break;
    case 29:
      result = 7;
      break;
    case 30:
      result = 8;
      break;
    case 31:
      result = 17;
      break;
    case 33:
      result = 20;
      break;
    case 34:
      result = 33;
      break;
    case 35:
      result = 28;
      break;
    case 36:
      result = 29;
      break;
    case 37:
      result = 30;
      break;
    default:
      return result;
  }

  return result;
}

void sub_21F581738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBPocketStateType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"OutOfPocket";
  }

  else
  {
    return off_2783C0C68[a1 - 1];
  }
}

void sub_21F586728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL SBIsHomeGestureEnabledByDefault()
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    return 1;
  }

  v1 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return (v2 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

void sub_21F58AC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58AEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58C8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBTemplateItemViewFromProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v5 = [v3 templateItemImageProvider];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 image];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];

      if (v9)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = [v3 templateItemButtonConfiguration];
  if (v10)
  {
    v11 = v10;
    if (v4)
    {
      v12 = v4[2](v4);
    }

    else
    {
      v12 = 0;
    }

    v9 = [MEMORY[0x277D75220] buttonWithConfiguration:v11 primaryAction:v12];

    if (v9)
    {
LABEL_12:
      v13 = [v3 accessibilityIdentifier];
      [v9 setAccessibilityIdentifier:v13];

      v14 = MEMORY[0x277D75D18];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __SBTemplateItemViewFromProvider_block_invoke;
      v16[3] = &unk_2783A8C18;
      v9 = v9;
      v17 = v9;
      [v14 performWithoutAnimation:v16];
      if ([v3 isHidden])
      {
        [v9 setHidden:1];
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_16:

  return v9;
}

uint64_t __SBTemplateItemViewFromProvider_block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeToFit];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_21F58CFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F58D2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F58E7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F58EB4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_21F58F028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F595980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *____loadBrowserSupportKitIfNecessary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BrowserSupportKit.framework/BrowserSupportKit", 1);
  __loadBrowserSupportKitIfNecessary_browserSupportKit = result;
  return result;
}

void *____loadBrowserKitIfNecessary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BrowserKit.framework/BrowserKit", 1);
  __loadBrowserKitIfNecessary_browserKit = result;
  return result;
}

void sub_21F5964BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F599074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F59C7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F59D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F59DBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F59DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5A26C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F5A2930(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F5A2BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F5A4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak(&a44);
  objc_destroyWeak((v44 - 160));
  _Unwind_Resume(a1);
}

void sub_21F5ADD58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F5AF64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5AFC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5B1BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5B6D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromSBPIPContentType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"-invalid-";
  }

  else
  {
    return off_2783C1220[a1];
  }
}

void sub_21F5BC9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5BD8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5C2EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBSAStringFromBounceStyle(uint64_t a1)
{
  v1 = @"up";
  if (a1 == 1)
  {
    v1 = @"left";
  }

  if (a1 == 2)
  {
    return @"right";
  }

  else
  {
    return v1;
  }
}

void sub_21F5C9E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_sync_exit(v48);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5CA2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_sync_exit(v52);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5CBA98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F5CE42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v30);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21F5D0FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D46B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D4944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D4B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D6724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D7CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5D7F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5D887C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21F5DB3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose((v15 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21F5DC0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringForChainableModifierState(uint64_t a1)
{
  if (a1)
  {
    return @"Complete";
  }

  else
  {
    return @"Active";
  }
}

void sub_21F5DE254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_21F5DE604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5DE700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5DEBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_21F5DEFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5DFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5DFEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NextEventMethodCacheForMethodCache(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 72);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_21F5E3E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  os_activity_scope_leave((v18 - 64));
  _Unwind_Resume(a1);
}

void sub_21F5E7C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5E8254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v37 - 168));
  _Unwind_Resume(a1);
}

void sub_21F5E87C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *SBStringFromPGPlaybackStateContentType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2783C1A18[a1 - 1];
  }
}

void sub_21F5EB924(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  objc_destroyWeak((v1 - 128));
  _Unwind_Resume(a1);
}

void sub_21F5EBD1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_21F5ECB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5EFE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5F3CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F5F3EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SBStaticInitializer()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    if ((SecTaskGetCodeSignStatus(v0) & 0xC000001) != 0x4000001 && (os_variant_has_internal_content() & 1) == 0)
    {
      SBStaticInitializer_cold_1();
    }

    CFRelease(v1);
  }
}

void sub_21F5F8920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5F9630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21F5F9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21F5F9CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5FBE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F5FC7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringForShelfDisplayMode(uint64_t a1)
{
  if (a1)
  {
    return @"scenes";
  }

  else
  {
    return @"spaces";
  }
}

void sub_21F5FFD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F601CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6029C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F603CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F60DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F60E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F60FB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6125BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBAlwaysOnTelemetryBacklightState(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2783C2000[a1];
  }
}

id NSNumberDoubleMin(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 doubleValue];
  [v4 doubleValue];
  if (v3)
  {
    if (!v4)
    {
LABEL_5:
      v4 = v3;
      goto LABEL_7;
    }

    [v3 doubleValue];
    v6 = v5;
    [v4 doubleValue];
    if (v6 < v7)
    {
      v3 = v3;

      goto LABEL_5;
    }
  }

LABEL_7:

  return v4;
}

id NSNumberDoubleMax(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 doubleValue];
  [v4 doubleValue];
  if (v3)
  {
    if (!v4)
    {
LABEL_5:
      v4 = v3;
      goto LABEL_7;
    }

    [v3 doubleValue];
    v6 = v5;
    [v4 doubleValue];
    if (v6 > v7)
    {
      v3 = v3;

      goto LABEL_5;
    }
  }

LABEL_7:

  return v4;
}

void sub_21F615DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v35 - 160));
  objc_destroyWeak((v35 - 152));
  _Unwind_Resume(a1);
}

void sub_21F61CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21F620EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F624CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL SBDodgingAxisMaskContainsAxis(uint64_t a1, uint64_t a2)
{
  v2 = -3;
  if (!a2)
  {
    v2 = -2;
  }

  return (v2 | a1) == -1;
}

uint64_t SBDodgingAxisMaskForAxis(uint64_t a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_21F627E18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_21F628224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F62933C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 136));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_21F62EA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F62FA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F636C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_21F637B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F63AFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_21F641BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBFloatingDockWindowLevelPriorityDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"app switcher";
  }

  else
  {
    return off_2783C2708[a1 - 1];
  }
}

uint64_t SBWindowControlsElementsFromTopAffordanceOptionsMask(unint64_t a1)
{
  v2 = a1 >> 3;
  if ((a1 & 6) != 0)
  {
    v3 = (a1 >> 3) & 2 | (a1 >> 20) & 1 | (4 * ((a1 >> 1) & 1)) & 0xFFFFFFFFFFFFBFFFLL | (((a1 >> 2) & 1) << 14) | (a1 >> 2) & 0x78 | 0x80;
  }

  else
  {
    v3 = (a1 >> 3) & 2 | (a1 >> 20) & 1 | (4 * ((a1 >> 1) & 1)) & 0xFFFFFFFFFFFFBFFFLL | (((a1 >> 2) & 1) << 14) | (a1 >> 2) & 0x78;
  }

  v4 = (a1 >> 3) & 0x400 | (a1 >> 6) & 0x200 | (a1 >> 1) & 0x2100;
  v5 = SBFIsSlideOverAvailable();
  v6 = (a1 >> 10) & 0x30000;
  if (!v5)
  {
    v6 = 0;
  }

  return (a1 >> 7) & 0x800 | (a1 >> 4) & 0x8000 | ((v2 & 1) << 12) | v4 | v6 | v3;
}

__n128 SBWindowControlsLayoutUndefined@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = *MEMORY[0x277CBF348];
  *(a1 + 16) = *MEMORY[0x277CBF348];
  return result;
}

double SBWindowControlsLayoutHidden@<D0>(_OWORD *a1@<X8>)
{
  *&result = 4;
  v2 = *MEMORY[0x277CBF348];
  *a1 = xmmword_21F8A8740;
  a1[1] = v2;
  return result;
}

BOOL SBWindowControlsLayoutEqual(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return 0;
}

void sub_21F6478EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_21F648950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_21F64AF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F64B128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F64C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F64F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F64F344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F650A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SALayoutModeForClientLayoutMode(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_21F8A87E8[a1 + 1];
  }
}

void sub_21F653BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

void sub_21F6546B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F654A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6567E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_21F658CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F658F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F65997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F659FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F65ABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F65BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBSystemApertureSceneUpdateReasonsDescription_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 <= 31)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        v2 = @"sceneSize";
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v2 = @"containerViewFrame";
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v2 = @"trailingViewFrame";
          break;
        case 8:
          v2 = @"leadingViewframe";
          break;
        case 16:
          v2 = @"minimalViewFrame";
          break;
        default:
          return result;
      }
    }
  }

  else if (a2 > 255)
  {
    switch(a2)
    {
      case 256:
        v2 = @"minimalViewLayoutAxisChanged";
        break;
      case 512:
        v2 = @"detachedMinimalViewFrame";
        break;
      case 1024:
        v2 = @"sceneLayoutTransition";
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 32:
        v2 = @"obstructedAreaFrame";
        break;
      case 64:
        v2 = @"layoutMode";
        break;
      case 128:
        v2 = @"foreground";
        break;
      default:
        return result;
    }
  }

  return [*(result + 32) addObject:v2];
}

void sub_21F65E1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F65F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBCallDescriptionBlock(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

id _SBCallDescriptionBlockForEachVisibleAppLayout(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 visibleAppLayouts];
  v7 = [v3 appLayouts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___SBCallDescriptionBlockForEachVisibleAppLayout_block_invoke;
  v13[3] = &unk_2783C2D18;
  v15 = v5;
  v16 = v4;
  v14 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v13];
  v11 = [v8 sb_switcherModifierDebugTimelineDescription];

  return v11;
}

id _SBCallDescriptionBlockForEachVisibleAppLayoutByIndex(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 visibleAppLayouts];
  v7 = [v3 appLayouts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___SBCallDescriptionBlockForEachVisibleAppLayoutByIndex_block_invoke;
  v13[3] = &unk_2783C2D18;
  v15 = v5;
  v16 = v4;
  v14 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v13];
  v11 = [v8 sb_switcherModifierDebugTimelineDescription];

  return v11;
}

id _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v5 visibleAppLayouts];
  v9 = [v5 appLayouts];
  v10 = [v5 methodSignatureForSelector:a2];
  if (v10)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayout_block_invoke;
    v16[3] = &unk_2783C2D40;
    v17 = v8;
    v18 = v10;
    v19 = v5;
    v22 = a2;
    v21 = v6;
    v11 = v7;
    v20 = v11;
    [v9 enumerateObjectsUsingBlock:v16];
    v12 = [v11 sb_switcherModifierDebugTimelineDescription];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = NSStringFromSelector(a2);
    v12 = [v13 stringWithFormat:@"No context method for %@", v14];
  }

  return v12;
}

id _SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = NSStringFromSelector(a2);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v5 visibleAppLayouts];
  v10 = [v5 appLayouts];
  v11 = [v5 methodSignatureForSelector:a2];
  if (v11)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBCallDescriptionBlockForEachLayoutRoleInEachVisibleAppLayoutAtIndex_block_invoke;
    v15[3] = &unk_2783C2D40;
    v16 = v9;
    v17 = v11;
    v18 = v5;
    v21 = a2;
    v20 = v6;
    v12 = v8;
    v19 = v12;
    [v10 enumerateObjectsUsingBlock:v15];
    v13 = [v12 sb_switcherModifierDebugTimelineDescription];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"No context method for %@", v7];
  }

  return v13;
}

id _SBCallDescriptionBlockForEachShelf(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 visibleShelves];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___SBCallDescriptionBlockForEachShelf_block_invoke;
  v11[3] = &unk_2783C2D90;
  v12 = v5;
  v13 = v4;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v11];
  v9 = [v7 sb_switcherModifierDebugTimelineDescription];

  return v9;
}

void sub_21F66A804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F66AEF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id _SBSRemoteAlertHandleContextFromRemoteTransientOverlaySession(void *a1)
{
  v1 = MEMORY[0x277D66BF8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 sessionID];
  v5 = [v3 initWithHandleID:v4];

  v6 = [v2 isActivated];
  [v5 setActive:v6];

  return v5;
}

void sub_21F66CCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F66CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6722D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_21F6762CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6767A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6768F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F676CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromAnalyticsLayoutLocation(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"switcher";
  }

  else
  {
    return off_2783C3030[a1];
  }
}

unint64_t SBAnalyticsLayoutLocationFromString(void *a1)
{
  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = NSStringFromAnalyticsLayoutLocation(v2);
    v4 = [v3 isEqual:v1];

    if (v4)
    {
      break;
    }

    if (++v2 == 10)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
      break;
    }
  }

  return v2;
}

uint64_t SBReachabilityGestureShouldActivate(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v18 = *(a1 + 24);
  v20 = *(a1 + 16);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 81);
  if (SBReachabilityGestureShouldActivate_onceToken != -1)
  {
    SBReachabilityGestureShouldActivate_cold_1();
  }

  result = [SBReachabilityGestureShouldActivate_reachabilityExclusionTrapezoid shouldBeginGestureAtStartingPoint:v2 velocity:v1 bounds:{v4, v3, v5, v6, v8, v7, v18, v20}];
  if (result)
  {
    v12 = fabs(v21);
    v13 = fabs(v19) >= v12 || v12 < 10.0;
    v14 = +[SBAssistantController sharedInstance];
    v15 = [v14 isHomeAffordanceDoubleTapGestureEnabled];

    if (v15)
    {
      v16 = (v10 & ~v9 & (v3 > 0.0) | v9 & (v10 ^ 1)) & v13;
    }

    else
    {
      v16 = (v10 ^ 1) & v13;
      if (v3 > 900.0)
      {
        v16 = 1;
      }
    }

    v17 = v16 & (v1 > v7 + -24.0);
    if (v1 + v3 * 0.15 > v7 + -2.0)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __SBReachabilityGestureShouldActivate_block_invoke()
{
  v0 = +[SBHomeGestureDomain rootSettings];
  v10 = [v0 exclusionTrapezoidSettings];

  [v10 portraitTrapezoidBaseHeight];
  v2 = v1;
  [v10 portraitTrapezoidHeight];
  v4 = v3;
  [v10 portraitTrapezoidAdjacentXDistanceFromEdge];
  v6 = v5;
  [v10 portraitTrapezoidOpposingXDistanceFromEdge];
  v8 = [SBFluidSwitcherGestureExclusionTrapezoid exclusionTrapezoidWithBaseHeight:0 trapezoidHeight:v2 adjacentBaseXDistanceFromEdge:v4 opposingBaseXDistanceFromEdge:v6 allowHorizontalSwipesOutsideTrapezoid:v7];
  v9 = SBReachabilityGestureShouldActivate_reachabilityExclusionTrapezoid;
  SBReachabilityGestureShouldActivate_reachabilityExclusionTrapezoid = v8;
}

id NSStringFromSBReachabilityActivationContext(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromCGPoint(*a1);
  v4 = NSStringFromCGPoint(*(a1 + 16));
  v5 = NSStringFromCGPoint(*(a1 + 32));
  v6 = NSStringFromCGRect(*(a1 + 48));
  v7 = NSStringFromBOOL();
  v8 = [v2 stringWithFormat:@"location: %@\ttranslation: %@\tvelocity: %@\tviewBounds:%@\teverTranslatedUpwards: %@", v3, v4, v5, v6, v7];

  return v8;
}

void sub_21F678C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F67A8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F67AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F67CE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F67D6D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21F67D988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F67E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F67EA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F67FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6800A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F680B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, id a38)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a38);
  _Unwind_Resume(a1);
}

void sub_21F68176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSAIndicatorAppearancePhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Disappeared";
  }

  else
  {
    return off_2783C3438[a1 - 1];
  }
}

__CFString *NSStringFromSBSAIndicatorEjectionPhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Accepted";
  }

  else
  {
    return off_2783C3420[a1 - 1];
  }
}

void SBEnumerateAndCullDeviceApplicationSceneStatusBarStateObservers(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 observer];
          v12 = [v10 flags];
          if (v11)
          {
            v2 = v2 & 0xFFFFFFFF00000000 | v12;
            v5[2](v5, v11, v2);
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

void _SBAppendDescrptionForStatusBarDescribingToBuilder(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _SBStringFromStatusBarStyle([v3 statusBarStyle]);
  [v4 appendString:v5 withName:@"statusBarStyle"];

  v6 = [v4 activeMultilinePrefix];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___SBAppendDescrptionForStatusBarDescribingToBuilder_block_invoke;
  v19 = &unk_2783A92D8;
  v20 = v3;
  v21 = v4;
  v7 = v4;
  v8 = v3;
  [v7 appendBodySectionWithName:@"statusBarPartStyles" multilinePrefix:v6 block:&v16];

  [v8 statusBarAlpha];
  v9 = [v7 appendFloat:@"statusBarAlpha" withName:2 decimalPrecision:?];
  v10 = [v7 appendBool:objc_msgSend(v8 withName:{"statusBarHidden"), @"statusBarHidden"}];
  [v8 statusBarOrientation];
  v11 = BSInterfaceOrientationDescription();
  [v7 appendString:v11 withName:@"statusBarOrientation"];

  [v8 statusBarAvoidanceFrame];
  v12 = NSStringFromCGRect(v22);
  [v7 appendString:v12 withName:@"statusBarAvoidanceFrame"];

  v13 = [v8 statusBarSceneIdentifier];
  [v7 appendString:v13 withName:@"statusBarSceneIdentifier"];

  v14 = [v8 _allObservers];
  v15 = [v7 appendObject:v14 withName:@"observers"];
}

void sub_21F68877C(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x380]);
  objc_destroyWeak(&STACK[0x3D8]);
  objc_destroyWeak(&STACK[0x508]);
  objc_destroyWeak((v1 - 192));
  objc_destroyWeak((v1 - 184));
  _Unwind_Resume(a1);
}

__CFString *SBStatusBarDataNetworkDebugName(uint64_t a1)
{
  if (a1 >= 0x11)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_2783C3990[a1];
  }

  return v2;
}

__CFString *SBStatusBarBatteryStateDebugName(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_2783C3A18[a1];
  }

  return v2;
}

void sub_21F68D338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F68DA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromHoverSwitcherModifierEventPhase(uint64_t a1)
{
  v1 = @"Hovering";
  if (a1 == 1)
  {
    v1 = @"EndHovering";
  }

  if (a1 == 2)
  {
    return @"CancelHovering";
  }

  else
  {
    return v1;
  }
}

__CFString *SBFloatingDockBehaviorLevelDescription(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"invalid";
  }

  else
  {
    return off_2783C3AB0[a1];
  }
}

void sub_21F69B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F69CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F69D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6A1610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6A2D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x228]);
  _Block_object_dispose(&STACK[0x370], 8);
  _Unwind_Resume(a1);
}

uint64_t SBPointerHIDSubEventFromEvent()
{
  v12 = *MEMORY[0x277D85DE8];
  IOHIDEventGetChildren();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = v10 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v8 != v3)
      {
        objc_enumerationMutation(v0);
      }

      v5 = *(*(&v7 + 1) + 8 * v4);
      if (IOHIDEventGetType() == 17)
      {
        break;
      }

      if (v2 == ++v4)
      {
        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

  return v5;
}

void *SBPointerEventRepresentsTrackpadTouchUp(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 source];
    v3 = [v1 fingerDownCount];
    v4 = [v1 options];

    if (v2 == 12 && v3 == 0)
    {
      return ((v4 >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *SBPointerEventIsTrackpadEvent(void *result)
{
  if (result)
  {
    return ([result source] == 12);
  }

  return result;
}

BOOL SBPointerEventHasMovementOnAxis(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 acceleratedRelativePositionX];
  v5 = v4;
  v6 = v4 != 0.0;
  [v3 acceleratedRelativePositionY];
  v8 = v7;

  v9 = v8 != 0.0;
  v10 = v5 != 0.0;
  if (v8 != 0.0)
  {
    v10 = 1;
  }

  if (a2 != 2)
  {
    v9 = 1;
  }

  if (a2 == 3)
  {
    v9 = v10;
  }

  if (a2 == 1)
  {
    return v6;
  }

  else
  {
    return v9;
  }
}

double SBPointerEventAcceleratedRelativePositionForOrientation(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SBApp;
  v7 = a1;
  v8 = [v6 interfaceOrientationForCurrentDeviceOrientation:0];
  [v7 acceleratedRelativePositionX];
  v10 = v9;
  [v7 acceleratedRelativePositionY];
  v12 = v11;

  if (v8 != a2 && a2 != 0 && v8 != 0)
  {
    [v5 _referenceBounds];
    _UIWindowConvertPointFromOrientationToOrientation();
    v16 = v15;
    v18 = v17;
    [v5 _referenceBounds];
    _UIWindowConvertPointFromOrientationToOrientation();
    v20 = v19;
    v22 = v21;
    [v5 _referenceBounds];
    _UIWindowConvertPointFromOrientationToOrientation();
    v24 = v20 - v16;
    v26 = v25 - v18;
    v27 = v20 - v16 == 0.0;
    if (v26 == 0.0)
    {
      v27 = 1;
    }

    v28 = v23 - v16;
    if (v27)
    {
      v24 = v22 - v18;
    }

    else
    {
      v28 = v26;
    }

    v29 = v12 * v28;
    if (v27)
    {
      v10 = v29;
    }

    else
    {
      v10 = v10 * v24;
    }
  }

  return v10;
}

void sub_21F6A92C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6ABD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AC120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AC2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AC668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AC7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AC9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6AEA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

__CFString *SBDisplayCloneMirroringModeDescription(uint64_t a1)
{
  v1 = @"<.Invalid>";
  if (a1 == 1)
  {
    v1 = @".Default";
  }

  if (a1 == 2)
  {
    return @".Disabled";
  }

  else
  {
    return v1;
  }
}

__CFString *SBDisplayStateDescription(uint64_t a1)
{
  if (a1)
  {
    return @".Unblanked";
  }

  else
  {
    return @".Blanked";
  }
}

__CFString *SBDisplayContentMirroringStateDescription(uint64_t a1)
{
  if (a1)
  {
    return @".Mirrored";
  }

  else
  {
    return @".Custom";
  }
}

__CFString *SBDisplayPowerAssertionReasonDescription(uint64_t a1)
{
  v1 = @".Unblank";
  if (a1 == 1)
  {
    v1 = @".Audio";
  }

  if (a1 == 2)
  {
    return @".SecureIndicator";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromDisplayItemSizingPolicy(uint64_t a1)
{
  v1 = @"snap-to-grid";
  if (a1 == 1)
  {
    v1 = @"zoomed-to-fill";
  }

  if (a1 == 2)
  {
    return @"maximized";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromDisplayItemSizingPolicyMask(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"(other)";
  }

  else
  {
    return off_2783C3E08[a1 - 1];
  }
}

uint64_t SBDisplayItemSizingPolicyAllowingSmallestSize(unint64_t a1)
{
  v1 = 1;
  if ((a1 & 2) == 0)
  {
    v1 = (a1 >> 1) & 2;
  }

  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t SBDisplayItemSizingPolicyAllowingLargestSize(unint64_t a1)
{
  if ((a1 & 4) != 0)
  {
    return 2;
  }

  else
  {
    return (a1 >> 1) & 1;
  }
}

uint64_t SBPreferredDisplayItemSizingPolicy(uint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = 2;
  if (a3 != a7 || a4 != a8)
  {
    v8 = 0;
  }

  if (a1)
  {
    v8 = a1;
  }

  if (a1 != 2 || a3 == a7 && a4 == a8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 >> 2) & 1;
  if (v9 != 2)
  {
    LODWORD(v10) = 1;
  }

  if (v10)
  {
    return v9;
  }

  else
  {
    return (a2 >> 1) & 1;
  }
}

__CFString *NSStringFromSBBlurViewCoordinatorState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"idle";
  }

  else
  {
    return off_2783C3E30[a1 - 1];
  }
}

__CFString *SBBacklightStateDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2783C3E78[a1 - 1];
  }
}

uint64_t SBBacklightStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"active on"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"active dimmed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"inactive"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"off"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21F6BB418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6BC968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6BCB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6BCDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6BCF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6BD064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBSystemActionInstanceIdentityEqualToIdentity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [v3 hostIdentifier];
    v6 = [v4 hostIdentifier];
    v7 = BSEqualStrings();

    if (v7)
    {
      v8 = [v3 configurationIdentifier];
      v9 = [v4 configurationIdentifier];
      v10 = BSEqualStrings();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void sub_21F6BD80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6BE3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6C0598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6C2ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6C3240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_21F6C391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21F6C4958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSystemUISceneControllerErrorCode(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v1 = @"None";
      goto LABEL_14;
    }

    if (a1 == 2)
    {
      v1 = @"The controller policy doesn't allow to handle this request";
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v1 = @"Tried to re-activate an unknown scene session";
    goto LABEL_14;
  }

  if (a1 == 4)
  {
    v1 = @"Unknown persistent identifiers";
    goto LABEL_14;
  }

  if (a1 != 5)
  {
LABEL_12:
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown error code: %ld", a1];
    goto LABEL_13;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"Reached maximum allowed number of scenes per display (%d)", 5];
  v1 = LABEL_13:;
LABEL_14:

  return v1;
}

void sub_21F6C7D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6C8514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_21F6CF104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F6D3444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6D7B68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21F6D863C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6D8B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_21F6D8C68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_21F6D8DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_21F6D9F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_21F6DAE3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 200));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_21F6DE31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_21F6E2478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6E2524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void _SBVoiceControlDispatchMain(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_21F6E2BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6E2C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_21F6E37D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6E3A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_21F6E4008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F6E70D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location)
{
  objc_destroyWeak((v60 + 32));
  objc_destroyWeak((v61 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6E9DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_21F6EA5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6EC820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6F508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F6F5A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6FA534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F6FAD70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F6FBE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBPPTPerformAfterCommitWithDelay(void *a1, double a2)
{
  v3 = a1;
  IsZero = BSFloatIsZero();
  v5 = MEMORY[0x277CD9FF0];
  if (IsZero)
  {
    [MEMORY[0x277CD9FF0] bs_performAfterCommit:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __SBPPTPerformAfterCommitWithDelay_block_invoke;
    v6[3] = &unk_2783B2E30;
    v8 = a2;
    v7 = v3;
    [v5 bs_performAfterCommit:v6];
  }
}

void sub_21F703A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBPPTPerformAfterCommitWithDelay_block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v4, v3);
}

void sub_21F704CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LostModeStateChanged(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v4 = [v3 lostModeIsActive];

  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Lost mode is active after receiving lost mode change notification", buf, 2u);
    }

    return [a2 activateLostModeForRemoteLock:1];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Lost mode is not active after receiving lost mode change notification", v8, 2u);
    }

    return [a2 exitLostModeIfNecessaryFromRemoteRequest:1];
  }
}

void sub_21F7065FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F706878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F706A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F706B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F707EA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F70BBE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_21F70C480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21F70FD08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_21F711D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBWidgetExtensionDebugError(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setObject:v3 forKey:*MEMORY[0x277CCA450]];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBAvocadoDebuggingControllerErrorDomain" code:a1 userInfo:v4];

  return v5;
}

double SBWindowLevelUnionRange(double a1, double a2, double a3, double a4)
{
  if (a2 < a1)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a1;
  }

  if (a2 < a1 || a4 < a3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

BOOL SBWindowLevelInExclusiveRange(double a1, double a2, double a3)
{
  v3 = a2 < a1;
  if (a3 <= a1)
  {
    v3 = 0;
  }

  return a3 >= a2 && v3;
}

void sub_21F715DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F716E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F717818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F717F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F7188A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F71CDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F71DA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F71DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F71F5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F720250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_21F720680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

id SBStashedModelPath()
{
  v0 = SBHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"StashedModel"];
  v2 = [v1 stringByAppendingPathExtension:@"plist"];

  return v2;
}

void sub_21F721A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBRecentAppLayoutsPersistenceURL_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v5 = SBHomeDirectory();
  v1 = [v5 stringByAppendingPathComponent:@"RecentAppLayouts"];
  v2 = [v1 stringByAppendingPathExtension:@"pb.lzfse"];
  v3 = [v0 fileURLWithPath:v2];
  v4 = SBRecentAppLayoutsPersistenceURL___persistenceURL;
  SBRecentAppLayoutsPersistenceURL___persistenceURL = v3;
}

void sub_21F722AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F722EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F723BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPBServerConnectionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PasteboardLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PasteboardLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783C5088;
    v5 = 0;
    PasteboardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PasteboardLibraryCore_frameworkLibrary)
  {
    __getPBServerConnectionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PBServerConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPBServerConnectionClass_block_invoke_cold_1();
  }

  getPBServerConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PasteboardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PasteboardLibraryCore_frameworkLibrary = result;
  return result;
}

void SBCornerFingerGestureUpdateFailureRequirements(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 edges];
  if ((v4 & 4) != 0)
  {
    [v3 gestureRecognizerOfType:39 shouldRequireFailureOfGestureRecognizer:v7];
    [v3 gestureRecognizerOfType:26 shouldBeRequiredToFailByGestureRecognizer:v7];
    [v3 gestureRecognizerOfType:104 shouldRequireFailureOfGestureRecognizer:v7];
    [v3 gestureRecognizerOfType:3 shouldBeRequiredToFailByGestureRecognizer:v7];
    [v3 gestureRecognizerOfType:1 shouldBeRequiredToFailByGestureRecognizer:v7];
  }

  if ((v4 & 2) != 0)
  {
    v6 = 20;
  }

  else
  {
    v5 = v7;
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    v6 = 19;
  }

  [v3 gestureRecognizerOfType:v6 shouldRequireFailureOfGestureRecognizer:v7];
  v5 = v7;
LABEL_8:
  [v3 gestureRecognizerOfType:23 shouldRequireFailureOfGestureRecognizer:v5];
  [v3 gestureRecognizerOfType:120 shouldBeRequiredToFailByGestureRecognizer:v7];
  [v3 gestureRecognizerOfType:121 shouldBeRequiredToFailByGestureRecognizer:v7];
}

void sub_21F728D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F7292DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBWindowSceneStatusBarLayoutLayerDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid";
  }

  else
  {
    return off_2783C5118[a1];
  }
}

uint64_t SBEqualSwitcherGenieGlassHighlightDirections()
{
  if (!BSFloatEqualToFloat() || !BSFloatEqualToFloat())
  {
    return 0;
  }

  return BSFloatEqualToFloat();
}

uint64_t SBSwitcherGenieGlassHighlightMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

double SBSwitcherGenieGlassHighlightNone@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double SBSwitcherGenieGlassHighlightWidgets@<D0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t SBEqualSwitcherGenieGlassHighlights(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == 1 && v2 == 1)
  {
    return 1;
  }

  if (*a1 != v2)
  {
    return 0;
  }

  result = SBEqualSwitcherGenieGlassHighlightDirections();
  if (result)
  {

    return BSFloatEqualToFloat();
  }

  return result;
}

void sub_21F72B844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F72BA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F72C00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

void sub_21F72D0D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void SBActivityAlertErrorDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *SBActivityAlertErrorDescription(SBActivityAlertErrorCode)"];
    [v2 handleFailureInFunction:v3 file:@"SBActivityAlertError.m" lineNumber:22 description:{@"Unsupported error: %d", a1}];
  }
}

id SBActivityAlertError(unint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v3 = SBActivityAlertErrorDescription(a1);
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"SBActivityAlertErrorDomain" code:a1 userInfo:v4];

  return v5;
}

void sub_21F7322D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromStartupTransitionDestination(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Application";
  }

  else
  {
    return off_2783C52E8[a1];
  }
}

void sub_21F733A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F7343FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F7345FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F734884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F7350D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F7354A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F735BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21F73BD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F73D944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBSystemApertureApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (SBFEffectiveArtworkSubtype() == 2736)
  {
    v5 = [v4 screen];
    SBReverseScaleTransformForScreen(v5, &v13);
    [v3 setTransform:&v13];
  }

  else
  {
    v6 = [v4 screen];
    [v6 nativeScale];
    v8 = v7;

    v9 = [v4 screen];
    [v9 scale];
    v11 = v10;

    if (v8 == 0.0 || vabdd_f64(v11, v8) <= 0.00000011920929)
    {
      v12 = *(MEMORY[0x277CBF2C0] + 16);
      *&v13.a = *MEMORY[0x277CBF2C0];
      *&v13.c = v12;
      *&v13.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v13, v11 / v8, v11 / v8);
    }

    [v3 setTransform:&v13];
  }
}

void sub_21F73FAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBSystemAppMain_cold_1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&dword_21ED4E000, a1, OS_LOG_TYPE_ERROR, "Error setting low space io policy: %d (%s)", v5, 0x12u);
}

void SBSystemAppMain_cold_6(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void performSpringBoardMigrationIfNeeded(void)"];
  [v4 handleFailureInFunction:v5 file:@"SBSystemApp.m" lineNumber:359 description:{@"failed to generate a valid restoreIdentifier : %@ (last=%@)", a1, a2}];
}

void ___languageMayHaveChanged_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __getWFSpringBoardWebClipMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFSpringBoardWebClipMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIController.m" lineNumber:211 description:{@"Unable to find class %s", "WFSpringBoardWebClipMetadata"}];

  __break(1u);
}

void VoiceShortcutClientLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceShortcutClientLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBUIController.m" lineNumber:209 description:{@"%s", *a1}];

  __break(1u);
}

void __getWFSpringBoardWorkflowRunnerClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFSpringBoardWorkflowRunnerClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBUIController.m" lineNumber:210 description:{@"Unable to find class %s", "WFSpringBoardWorkflowRunnerClient"}];

  __break(1u);
}

void _SBWorkspaceCanLaunchApplication_cold_8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = 0;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Cannot launch nil SBApplication (workspace app:%{public}@ url:%@)", &v2, 0x16u);
}

void _SBEmergencyCallBackModeChangeHandler_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[SBTelephonyManager] _SBEmergencyCallBackModeChangeHandler: could not understand payload for %@ -> %@", &v3, 0x16u);
}

void _DataPlanActivateFailed_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _DataPlanActivateFailed(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)"}];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void _DataPlanStatusHandler_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _DataPlanStatusHandler(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)"}];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void __getRTTSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTTSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBTelephonyManager.m" lineNumber:99 description:{@"Unable to find class %s", "RTTSettings"}];

  __break(1u);
}

void __getRTTSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *RTTUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBTelephonyManager.m" lineNumber:98 description:{@"%s", *a1}];

  __break(1u);
}

void ___updateLocale_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 8);
  v3 = *(v2 + 32);
  LODWORD(v2) = *(v2 + 36);
  v4[0] = 67109634;
  v4[1] = v3;
  v5 = 1024;
  v6 = v2;
  v7 = 2080;
  v8 = "void _updateLocale(SBTelephonyManager *__strong, CTError (^__strong)(CTServerConnectionRef, CFStringRef *), void (^__strong)(CFStringRef), void (^__strong)(void))_block_invoke_2";
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "background CTServerConnection returned error: (%i, %i) in %s", v4, 0x18u);
}

void SBSAAdjunctFrameForElementInCollection_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect SBSAAdjunctFrameForElementInCollection(NSUInteger, NSArray<SBSAElementContext *> *__strong _Nonnull, CGRect, SBSAContext *__strong _Nonnull)"}];
  [v1 handleFailureInFunction:v0 file:@"SBSAElementGeometry.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"(indexOfElement == 0) || ([elementContexts count] > indexOfElement)"}];
}

void SBSAAdjunctFrameForElementInCollection_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect SBSAAdjunctFrameForElementInCollection(NSUInteger, NSArray<SBSAElementContext *> *__strong _Nonnull, CGRect, SBSAContext *__strong _Nonnull)"}];
  [v1 handleFailureInFunction:v0 file:@"SBSAElementGeometry.m" lineNumber:272 description:@"It shouldn't be possible to have a 'rankFactor' of '0'"];
}

void SBSAFrameForElementInCollection_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect SBSAFrameForElementInCollection(NSUInteger, NSArray<SBSAElementContext *> *__strong _Nonnull, SBSAContext *__strong _Nonnull)"}];
  [v1 handleFailureInFunction:v0 file:@"SBSAElementGeometry.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"(indexOfElement == 0) || ([elementContexts count] > indexOfElement)"}];
}

void _SBPreventIdleSleepReason_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull _SBPreventIdleSleepReason(FBSDisplayIdentity *__strong _Nonnull, __unsafe_unretained Class _Nonnull)"}];
}

void SBCADifferenceMaskCalculate_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:CADisplayModeClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBCADisplayDifferenceMask SBCADifferenceMaskCalculate(CADisplay *__strong _Nonnull, CADisplayMode *__strong _Nonnull, NSString *__strong _Nullable, CGSize, NSUInteger)"}];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"SBDisplayControlling.m";
    v6 = 1024;
    v7 = 61;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _SBXXDisplayIdentifierForPID_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXDisplayIdentifiersForPID_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void serializePropertyListObject_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _SBXXAppSwitcherServiceRegister_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXApplicationDisplayIdentifiers_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXFrontmostApplicationDisplayIdentifier_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXBundlePathForDisplayIdentifier_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXLocalizedApplicationNameForDisplayIdentifier_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSuspendFrontmostApp_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXInterruptKeybagRefetch_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetWantsLockButtonEvents_cold_1()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _SBXXPresentPowerDownUI_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXReboot_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXShutDown_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetApplicationBadgeNumber_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetApplicationBadgeString_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetApplicationShowsProgress_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetAllApplicationsShowProgress_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetAllApplicationsShowSyncIndicator_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetShowsOverridesForRecording_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXEnableLockScreenBundle_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXLockDeviceAndFeatures_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXDimScreen_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXDimScreen_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _SBXXGetBatteryAwakeTime_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetRecentSleepsWakes_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetScheduledPowerEvents_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetBatteryUsageTimesInSeconds_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXAddWebClipToHomeScreen_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXAddWebClipToHomeScreen_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _SBXXRemoveWebClipFromHomeScreen_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetNowPlayingAppBundleIdentifier_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetTopButtonFrames_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetDisplayIdentifiers_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetDisplayIdentifiersForExternalAccessoryProtocols_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetVoiceControlEnabled_cold_1(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v7 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void _SBXXGetMediaVolume_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetMediaVolume_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetIconState_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetPendingIconState_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetFlattenedIconState_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetIconState_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetIconPNGData_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetVoiceRecognitionAudioInputPaths_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetVoiceRecognitionAudioInputPaths_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _SBXXSetAssistantRecognitionStrings_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetAssistantRecognitionStrings_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _SBXXSetAlertSuppressionContexts_cold_1()
{
  BSPIDForAuditToken();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _SBXXSetAlertSuppressionContextsBySectionIdentifier_cold_1()
{
  BSPIDForAuditToken();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _SBXXSetAppIsConnectedToEA_cold_1()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _SBXXGetWallpaperPreviewSurface_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "_SBXXGetWallpaperPreviewSurface";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
}

void _SBXXGetWallpaperPreview_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetWallpaperOptionsForLocations_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXActivateAssistantWithContext_cold_1()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _SBXXSetProceduralWallpaper_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetWallpaperImageForLocations_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetWallpaperImageSurfaceForLocations_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "_SBXXSetWallpaperImageSurfaceForLocations";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
}

void _SBXXClearWallpaperAsset_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetWallpaperOptions_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetWallpaperVariant_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXGetWallpaperLegibilitySettings_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXAddWallpaperAnimationSuspensionAssertion_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXAddAlertItemsSuppressionAssertion_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXAddBiometricAssertion_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetReachabilityEnabled_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXOverrideDisplayedDate_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void _SBXXSetIdleText_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAAUIProfilePictureStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBDashBoardSetupViewController.m" lineNumber:69 description:{@"Unable to find class %s", "AAUIProfilePictureStore"}];

  __break(1u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBDashBoardSetupViewController.m" lineNumber:68 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t SBPBAppLayoutListReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(SBPBAppLayout);
  [(SBPBAppLayoutList *)a1 addApplayouts:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && SBPBAppLayoutReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void _SBUnhideProtectedAppAlertControllerFor_cold_1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Could not find bundle record to fetch localized name for: %@", v4, v5, v6, v7, v8);
}

void __getDMFApplicationPolicyMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getDMFApplicationPolicyMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBActivityManager.m" lineNumber:45 description:{@"Unable to find class %s", "DMFApplicationPolicyMonitor"}];

  __break(1u);
}

void __getDMFApplicationPolicyMonitorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DeviceManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBActivityManager.m" lineNumber:44 description:{@"%s", *a1}];

  __break(1u);
}

void _UIPhysicalButtonStateFromSBPhysicalButtonResult_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_UIPhysicalButtonState _UIPhysicalButtonStateFromSBPhysicalButtonResult(SBPhysicalButtonResult)"];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"SBPhysicalButtonCompletionHandling.m";
  v7 = 1024;
  v8 = 24;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

uint64_t __SBDisplayItemDescendingZOrderComparator_block_invoke()
{
  OUTLINED_FUNCTION_1_2();
  v3 = *(v2 + 32);
  v5 = v4;
  v6 = [v3 objectForKey:v0];
  v7 = [*(v1 + 32) objectForKey:v5];

  if (v6)
  {
    v8 = *(v6 + 32);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:
    v9 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  v9 = *(v7 + 32);
  if (v6)
  {
LABEL_4:
    v10 = *(v6 + 136);
    v17 = *(v6 + 120);
    v18 = v10;
    v19 = *(v6 + 152);
    goto LABEL_5;
  }

LABEL_18:
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
LABEL_5:
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(&v17);
  if (v7)
  {
    v12 = *(v7 + 136);
    v17 = *(v7 + 120);
    v18 = v12;
    v19 = *(v7 + 152);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v13 = SBDisplayItemSlideOverConfigurationIsValid(&v17);
  if (!IsValid || v13)
  {
    v15 = -1;
    if (v8 <= v9)
    {
      v15 = v8 < v9;
    }

    if (IsValid & 1 | ((v13 & 1) == 0))
    {
      v14 = v15;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

uint64_t __SBDisplayItemDescendingInteractionTimeComparator_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  if (v7)
  {
    v8 = v7[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) objectForKey:v6];

  if (v9)
  {
    v10 = v9[4];
  }

  else
  {
    v10 = 0;
  }

  if (v8 > v10)
  {
    return -1;
  }

  else
  {
    return v8 < v10;
  }
}

void _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(CGFloat, CGFloat, _UIInterfaceOrientationRotationDirection)"}];
  [v1 handleFailureInFunction:v0 file:@"SBFluidSwitcherItemContainer.m" lineNumber:1930 description:@"fromAngle should be constrained within ±2π"];
}

void _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(CGFloat, CGFloat, _UIInterfaceOrientationRotationDirection)"}];
  [v1 handleFailureInFunction:v0 file:@"SBFluidSwitcherItemContainer.m" lineNumber:1931 description:@"toAngle should be constrained within ±2π"];
}

void __SBPPTLockInterfaceOrientation_block_invoke_cold_1(void *a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void SBPPTLockInterfaceOrientation(UIInterfaceOrientation, __strong dispatch_block_t)_block_invoke"}];
  [v3 handleFailureInFunction:v2 file:@"SBPPTSupport.m" lineNumber:33 description:{@"Failed to force orientation %ld", *a1}];
}

void SBPPTBeginFiveFingerScrunch_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void SBPPTBeginFiveFingerScrunch(__strong id<RCPEventStreamComposer>, CGFloat, __strong SBPPTGestureContinuationHandler)"}];
  [v1 handleFailureInFunction:v0 file:@"SBPPTSupport.m" lineNumber:382 description:@"Couldn't find five-finger touch template."];
}

void SBCreateSnapshotBelowWindowWithOptions_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage *SBCreateSnapshotBelowWindowWithOptions(UIWindow *__strong, BOOL, UIImageOrientation, NSArray *__strong, CGFloat, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"SBImageUtilities.m" lineNumber:251 description:@"_UIRenderingBuffer is not IOSurface-backed anymore"];
}

void SBCreateResourceImageWithoutCaching_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "UIImage *SBCreateResourceImageWithoutCaching(NSString *__strong)";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%s ERROR: Could not open image %{public}@ in the SpringBoard bundle.", &v2, 0x16u);
}

void _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSSet<SBUISystemApertureElementIdentifier> *_SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier(__strong SBUISystemApertureElementIdentifier, BOOL *)"}];
  [v1 handleFailureInFunction:v0 file:@"SBSystemApertureElementAuthority.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[_SBSystemApertureWellKnownActivityElementIdentifiersForComparison() containsObject:elementIdentifier]"}];
}

void _SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSSet<SBUISystemApertureElementIdentifier> *_SBSystemApertureActivityElementIdentifiersRelatedToElementIdentifier(__strong SBUISystemApertureElementIdentifier, BOOL *)"}];
  [v1 handleFailureInFunction:v0 file:@"SBSystemApertureElementAuthority.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"isSuperiorSet != nil"}];
}

uint64_t SBPBAppLayoutReadFrom_cold_1()
{
  OUTLINED_FUNCTION_3_20();
  v2 = objc_alloc_init(SBPBDisplayItemLayoutAttributesEntry);
  v3 = OUTLINED_FUNCTION_5_8();
  [(SBPBAppLayout *)v3 addLayoutAttributesEntries:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_6_5();
  if (PBReaderPlaceMark() && (v5 = OUTLINED_FUNCTION_14_1(), SBPBDisplayItemLayoutAttributesEntryReadFrom(v5, v6)))
  {
    OUTLINED_FUNCTION_6_5();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_18_0();
  }
}

uint64_t SBPBAppLayoutReadFrom_cold_2()
{
  OUTLINED_FUNCTION_3_20();
  v2 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
  v3 = OUTLINED_FUNCTION_5_8();
  [(SBPBAppLayout *)v3 addDisplayItemLayoutAttributesForNonPreferredDisplay:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_6_5();
  if (PBReaderPlaceMark() && (v5 = OUTLINED_FUNCTION_14_1(), SBPBDisplayItemLayoutAttributesReadFrom(v5, v6)))
  {
    OUTLINED_FUNCTION_6_5();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_18_0();
  }
}

uint64_t SBPBAppLayoutReadFrom_cold_3()
{
  OUTLINED_FUNCTION_3_20();
  v2 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
  v3 = OUTLINED_FUNCTION_5_8();
  [(SBPBAppLayout *)v3 addDisplayItemLayoutAttributes:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_6_5();
  if (PBReaderPlaceMark() && (v5 = OUTLINED_FUNCTION_14_1(), SBPBDisplayItemLayoutAttributesReadFrom(v5, v6)))
  {
    OUTLINED_FUNCTION_6_5();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_18_0();
  }
}

uint64_t SBPBAppLayoutReadFrom_cold_4()
{
  OUTLINED_FUNCTION_3_20();
  v2 = objc_alloc_init(SBPBDisplayItem);
  v3 = OUTLINED_FUNCTION_5_8();
  [(SBPBAppLayout *)v3 addDisplayItems:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_6_5();
  if (PBReaderPlaceMark() && (v5 = OUTLINED_FUNCTION_14_1(), SBPBDisplayItemReadFrom(v5, v6)))
  {
    OUTLINED_FUNCTION_6_5();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_18_0();
  }
}

void SBChainableModifierMethodCacheQueryTrampolineForMethod_cold_1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IMP  _Nonnull SBChainableModifierMethodCacheQueryTrampolineForMethod(struct objc_method_description, NSUInteger)"}];
  v6 = NSStringFromSelector(a1);
  [v4 handleFailureInFunction:v5 file:@"SBChainableModifierMethodCache.m" lineNumber:408 description:{@"unsupported method signature! Please add an entry for %s to SUPPORTED_METHOD_SIGNATURES for %@", a2, v6}];

  __break(1u);
}

void SBChainableModifierMethodCacheEventTrampolineForMethod_cold_1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IMP  _Nonnull SBChainableModifierMethodCacheEventTrampolineForMethod(struct objc_method_description, NSUInteger)"}];
  v6 = NSStringFromSelector(a1);
  [v4 handleFailureInFunction:v5 file:@"SBChainableModifierMethodCache.m" lineNumber:421 description:{@"unsupported method signature! Please add an entry for %s to SUPPORTED_METHOD_SIGNATURES for %@", a2, v6}];

  __break(1u);
}

void SBChainableModifierMethodCacheContextTrampolineForMethod_cold_1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IMP  _Nonnull SBChainableModifierMethodCacheContextTrampolineForMethod(struct objc_method_description, NSUInteger)"}];
  v6 = NSStringFromSelector(a1);
  [v4 handleFailureInFunction:v5 file:@"SBChainableModifierMethodCache.m" lineNumber:434 description:{@"unsupported method signature! Please add an entry for %s to SUPPORTED_METHOD_SIGNATURES for %@", a2, v6}];

  __break(1u);
}

void MethodCacheDispatchDataForSelectorIndex_cold_1(void *a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBModifierCacheDispatchData MethodCacheDispatchDataForSelectorIndex(SBChainableModifierMethodCache *__unsafe_unretained, NSInteger)"}];
  v5 = NSStringFromSelector(*(*a1 + 8 * a2));
  [v6 handleFailureInFunction:v4 file:@"SBChainableModifierMethodCache.m" lineNumber:190 description:{@"couldn't find implementor for %@", v5}];
}

void __getPRIconUserInterfaceSizeLargeSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIMutableStylePickerHomeScreenConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:30 description:{@"Unable to find class %s", "PUIMutableStylePickerHomeScreenConfiguration"}];

  __break(1u);
}

void __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBWallpaperIconStyleCoordinator.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void SBSetMainWindowScene_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SBSetMainWindowScene(UIWindowScene *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"SBCommon.m" lineNumber:36 description:@"called when _SBMainWindowScene() is already set"];
}

void SBCommonInitialize_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SpringBoard failed to Clear the Board™: %@", &v2, 0xCu);
}

double SBScaledPoint_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGPoint SBScaledPoint(CGPoint)"];
  [v2 handleFailureInFunction:v3 file:@"SBCommon.m" lineNumber:138 description:@"Reading screen scale static before it has been initialized"];

  result = *&__screenScale;
  *a1 = __screenScale;
  return result;
}

double SBScaledSize_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGSize SBScaledSize(CGSize)"];
  [v2 handleFailureInFunction:v3 file:@"SBCommon.m" lineNumber:143 description:@"Reading screen scale static before it has been initialized"];

  result = *&__screenScale;
  *a1 = __screenScale;
  return result;
}

double SBSetShouldRasterizeLayer_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void SBSetShouldRasterizeLayer(CALayer *__strong, BOOL)"}];
  [v2 handleFailureInFunction:v3 file:@"SBCommon.m" lineNumber:222 description:@"Reading screen scale static before it has been initialized"];

  result = *&__screenScale;
  *a1 = __screenScale;
  return result;
}

void SBWTErrorCreate_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSError *SBWTErrorCreate(BSTransaction *__strong, SBWTErrorCode, NSString *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"SBWorkspaceTransaction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
}

void SBWTErrorCreateForTransaction_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSError *SBWTErrorCreateForTransaction(BSTransaction *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"SBWorkspaceTransaction.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
}

void HangTracerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HangTracerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBHungApplicationInteractionObserver.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void _SBIndirectGestureLog_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x277D85DE8];
  v4 = [v3 name];
  v5 = [v2 sb_stringForState];
  OUTLINED_FUNCTION_1_32();
  v9 = v6;
  v10 = v7;
  v11 = v1;
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "SBIndirectPanGestureRecognizer (%@, %@) – %@", v8, 0x20u);
}

void __getLNAppConnectionListenerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLNAppConnectionListenerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBMainDisplaySceneManager.m" lineNumber:123 description:{@"Unable to find class %s", "LNAppConnectionListener"}];

  __break(1u);
}

void __getLNAppConnectionListenerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppIntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBMainDisplaySceneManager.m" lineNumber:122 description:{@"%s", *a1}];

  __break(1u);
}

void __SBSALogDictionaryDescribableDebug_block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = 134349314;
  v7 = [v4 queryIteration];
  v8 = 2112;
  v9 = a3;
  _os_log_debug_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEBUG, "[%{public}lu] %@", &v6, 0x16u);
}

void sub_21F7CDF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBLayoutRoleSetPrimary_block_invoke()
{
  v0 = [SBLayoutRoleSet alloc];
  [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_35();
  v2 = [(SBLayoutRoleSet *)v0 _initWithRoles:v1];
  v3 = SBLayoutRoleSetPrimary___primaryRoles;
  SBLayoutRoleSetPrimary___primaryRoles = v2;
}

void __SBLayoutRoleSetNone_block_invoke()
{
  v0 = [SBLayoutRoleSet alloc];
  [MEMORY[0x277CCAA78] indexSet];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_35();
  v2 = [(SBLayoutRoleSet *)v0 _initWithRoles:v1];
  v3 = SBLayoutRoleSetNone___noRoles;
  SBLayoutRoleSetNone___noRoles = v2;
}

void SBLayoutRoleSetForRole_cold_2(uint64_t a1, void *a2)
{
  v4 = [SBLayoutRoleSet alloc];
  [MEMORY[0x277CCAA78] indexSetWithIndex:a1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_35();
  *a2 = [(SBLayoutRoleSet *)v4 _initWithRoles:v5];
}

void SBLayoutRoleSetForRole_cold_3(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole(SBLayoutRole)"];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void *SBLayoutRoleSetForRole2_cold_2(unint64_t a1, unint64_t a2, void *a3)
{
  if (a1 > a2 && a2 + 1 == a1)
  {
    v9 = MEMORY[0x277CCAA78];
    v10 = a2;
  }

  else
  {
    if (a2 <= a1 || a1 + 1 != a2)
    {
      v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:a2];
      [v7 addIndex:a1];
      v8 = [v7 copy];

      goto LABEL_13;
    }

    v9 = MEMORY[0x277CCAA78];
    v10 = a1;
  }

  v8 = [v9 indexSetWithIndexesInRange:{v10, 2}];
LABEL_13:
  v11 = [[SBLayoutRoleSet alloc] _initWithRoles:v8];
  *a3 = v11;

  return v11;
}

void SBLayoutRoleSetForRole2_cold_3(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role2 %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole2(SBLayoutRole, SBLayoutRole)"}];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void SBLayoutRoleSetForRole2_cold_4(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role1 %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole2(SBLayoutRole, SBLayoutRole)"}];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void *SBLayoutRoleSetForRole3_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:a1];
  [v7 addIndex:a2];
  [v7 addIndex:a3];
  v8 = [SBLayoutRoleSet alloc];
  v9 = [v7 copy];
  v10 = [(SBLayoutRoleSet *)v8 _initWithRoles:v9];
  *a4 = v10;

  return v10;
}

void SBLayoutRoleSetForRole3_cold_3(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role3 %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole3(SBLayoutRole, SBLayoutRole, SBLayoutRole)"}];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void SBLayoutRoleSetForRole3_cold_4(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role2 %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole3(SBLayoutRole, SBLayoutRole, SBLayoutRole)"}];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void SBLayoutRoleSetForRole3_cold_5(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role1 %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetForRole3(SBLayoutRole, SBLayoutRole, SBLayoutRole)"}];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __SBLayoutRoleSetBuilder_block_invoke_cold_2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid role %lu"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBLayoutRoleSet * _Nonnull SBLayoutRoleSetBuilder(void (^__strong _Nonnull)(__attribute__((noescape)) void (^__strong)(SBLayoutRole)))_block_invoke"];
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_0_51(&dword_21ED4E000, MEMORY[0x277D86220], v3, "failure in %{public}@ (%{public}@:%i) : %{public}@", v4, v5, v6, v7, a1, v9, v10);
  }

  [v1 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_21F7D16B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21F7D2308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getPBServerConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPBServerConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBProductivityGestureController.m" lineNumber:35 description:{@"Unable to find class %s", "PBServerConnection"}];

  __break(1u);
}

void __getPBServerConnectionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PasteboardLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBProductivityGestureController.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}