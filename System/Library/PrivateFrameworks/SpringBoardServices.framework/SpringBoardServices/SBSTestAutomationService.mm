@interface SBSTestAutomationService
- (BOOL)chamoisPrefersDockHidden;
- (BOOL)chamoisPrefersStripHidden;
- (BOOL)deviceSupportsSystemAperture;
- (BOOL)isChamoisWindowingUIEnabled;
- (NSArray)systemApertureStateDump;
- (NSDictionary)widgetControllerStateDump;
- (NSMutableArray)systemApertureModelStateDump;
- (NSMutableDictionary)animationFrameRecording;
- (id)acquireAssertionForReachabilityEnabled:(BOOL)a3;
- (id)acquireHUDHiddenAssertionForIdentifier:(id)a3;
- (id)availableRecordableFlipBookElementIdentifiers;
- (void)addWidgetStackWithIdentifiers:(id)a3 toPage:(int)a4 withSizing:(int)a5;
- (void)addWidgetWithIdentifier:(id)a3 toPage:(int)a4 withSizing:(int)a5;
- (void)addWidgetsToEachPage;
- (void)clearAllUserNotifications;
- (void)countScenesForBundleIdentifier:(id)a3 withCompletion:(id)a4;
- (void)enterLostMode;
- (void)exitLostMode;
- (void)initiateSecureFlipBookRecordingsForElement:(id)a3 withCompletion:(id)a4;
- (void)loadStashedSwitcherModelFromPath:(id)a3;
- (void)resetToHomeScreenAnimated:(BOOL)a3;
- (void)setAccessoryType:(int64_t)a3 attached:(BOOL)a4;
- (void)setAlertsEnabled:(BOOL)a3;
- (void)setAmbientPresentationState:(int64_t)a3;
- (void)setApplicationBundleIdentifier:(id)a3 blockedForScreenTime:(BOOL)a4;
- (void)setChamoisPrefersDockHidden:(BOOL)a3;
- (void)setChamoisPrefersStripHidden:(BOOL)a3;
- (void)setChamoisWindowingUIEnabled:(BOOL)a3;
- (void)setHiddenFeaturesEnabled:(BOOL)a3;
- (void)setIdleTimerEnabled:(BOOL)a3;
- (void)setMallocStackLoggingEnabled:(BOOL)a3;
- (void)setOrientationLockEnabled:(BOOL)a3;
- (void)setReachabilityActive:(BOOL)a3;
- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)a3;
- (void)setSystemApertureUnderAutomationTesting:(BOOL)a3;
- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)a3;
- (void)setUserPresenceDetectedSinceWake;
- (void)stashSwitcherModelToPath:(id)a3;
- (void)suspendAllDisplays;
@end

@implementation SBSTestAutomationService

- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  [v5 setTestRunnerRecoveryApplicationBundleIdentifier:v4];
}

- (void)suspendAllDisplays
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 suspendAllDisplays];
}

- (void)clearAllUserNotifications
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 clearAllUserNotifications];
}

- (void)setUserPresenceDetectedSinceWake
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 setUserPresenceDetectedSinceWake];
}

- (void)setAlertsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setAlertsEnabled:v3];
}

- (void)setHiddenFeaturesEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setHiddenFeaturesEnabled:v3];
}

- (void)setIdleTimerEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setIdleTimerEnabled:v3];
}

- (void)setOrientationLockEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setOrientationLockEnabled:v3];
}

- (void)setMallocStackLoggingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setMallocStackLoggingEnabled:v3];
}

- (void)setReachabilityActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setReachabilityActive:v3];
}

- (void)setAmbientPresentationState:(int64_t)a3
{
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setAmbientPresentationState:a3];
}

- (id)acquireAssertionForReachabilityEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  v5 = [v4 acquireAssertionForReachabilityEnabled:v3];

  return v5;
}

- (void)resetToHomeScreenAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 resetToHomeScreenAnimated:v3];
}

- (void)setAccessoryType:(int64_t)a3 attached:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBSAbstractSystemService *)self client];
  [v6 setAccessoryType:a3 attached:v4];
}

- (id)acquireHUDHiddenAssertionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  v6 = [v5 acquireHUDHiddenAssertionForIdentifier:v4];

  return v6;
}

- (void)setApplicationBundleIdentifier:(id)a3 blockedForScreenTime:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBSAbstractSystemService *)self client];
  [v7 setApplicationBundleIdentifier:v6 blockedForScreenTime:v4];
}

- (void)countScenesForBundleIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSAbstractSystemService *)self client];
  [v8 countScenesForBundleIdentifier:v7 withCompletion:v6];
}

- (void)stashSwitcherModelToPath:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  [v5 stashSwitcherModelToPath:v4];
}

- (void)loadStashedSwitcherModelFromPath:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  [v5 loadStashedSwitcherModelFromPath:v4];
}

- (void)addWidgetsToEachPage
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 addWidgetsToEachPage];
}

- (void)addWidgetWithIdentifier:(id)a3 toPage:(int)a4 withSizing:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [(SBSAbstractSystemService *)self client];
  [v9 addWidgetWithIdentifier:v8 toPage:v6 withSizing:v5];
}

- (void)addWidgetStackWithIdentifiers:(id)a3 toPage:(int)a4 withSizing:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [(SBSAbstractSystemService *)self client];
  [v9 addWidgetStackWithIdentifiers:v8 toPage:v6 withSizing:v5];
}

- (void)enterLostMode
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 enterLostMode];
}

- (void)exitLostMode
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 exitLostMode];
}

- (BOOL)isChamoisWindowingUIEnabled
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 isChamoisWindowingUIEnabled];

  return v3;
}

- (void)setChamoisWindowingUIEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setChamoisWindowingUIEnabled:v3];
}

- (BOOL)chamoisPrefersDockHidden
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 chamoisPrefersDockHidden];

  return v3;
}

- (void)setChamoisPrefersDockHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setChamoisPrefersDockHidden:v3];
}

- (BOOL)chamoisPrefersStripHidden
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 chamoisPrefersStripHidden];

  return v3;
}

- (void)setChamoisPrefersStripHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setChamoisPrefersStripHidden:v3];
}

- (void)setSystemApertureUnderAutomationTesting:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setSystemApertureUnderAutomationTesting:v3];
}

- (BOOL)deviceSupportsSystemAperture
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 deviceSupportsSystemAperture];

  return v3;
}

- (NSMutableArray)systemApertureModelStateDump
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 systemApertureModelStateDump];

  return v3;
}

- (NSArray)systemApertureStateDump
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 systemApertureStateDump];

  return v3;
}

- (NSDictionary)widgetControllerStateDump
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 widgetControllerStateDump];

  return v3;
}

- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)a3
{
  v4 = [(SBSAbstractSystemService *)self client];
  [v4 setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:a3];
}

- (NSMutableDictionary)animationFrameRecording
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 animationFrameRecordings];

  return v3;
}

- (void)initiateSecureFlipBookRecordingsForElement:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSAbstractSystemService *)self client];
  [v8 initiateSecureFlipBookRecordingsForElement:v7 withCompletion:v6];
}

- (id)availableRecordableFlipBookElementIdentifiers
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 availableRecordableFlipBookElementIdentifiers];

  return v3;
}

@end