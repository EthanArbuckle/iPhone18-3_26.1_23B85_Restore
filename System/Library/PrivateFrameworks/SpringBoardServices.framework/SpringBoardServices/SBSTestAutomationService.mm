@interface SBSTestAutomationService
- (BOOL)chamoisPrefersDockHidden;
- (BOOL)chamoisPrefersStripHidden;
- (BOOL)deviceSupportsSystemAperture;
- (BOOL)isChamoisWindowingUIEnabled;
- (NSArray)systemApertureStateDump;
- (NSDictionary)widgetControllerStateDump;
- (NSMutableArray)systemApertureModelStateDump;
- (NSMutableDictionary)animationFrameRecording;
- (id)acquireAssertionForReachabilityEnabled:(BOOL)enabled;
- (id)acquireHUDHiddenAssertionForIdentifier:(id)identifier;
- (id)availableRecordableFlipBookElementIdentifiers;
- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int)page withSizing:(int)sizing;
- (void)addWidgetWithIdentifier:(id)identifier toPage:(int)page withSizing:(int)sizing;
- (void)addWidgetsToEachPage;
- (void)clearAllUserNotifications;
- (void)countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion;
- (void)enterLostMode;
- (void)exitLostMode;
- (void)initiateSecureFlipBookRecordingsForElement:(id)element withCompletion:(id)completion;
- (void)loadStashedSwitcherModelFromPath:(id)path;
- (void)resetToHomeScreenAnimated:(BOOL)animated;
- (void)setAccessoryType:(int64_t)type attached:(BOOL)attached;
- (void)setAlertsEnabled:(BOOL)enabled;
- (void)setAmbientPresentationState:(int64_t)state;
- (void)setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time;
- (void)setChamoisPrefersDockHidden:(BOOL)hidden;
- (void)setChamoisPrefersStripHidden:(BOOL)hidden;
- (void)setChamoisWindowingUIEnabled:(BOOL)enabled;
- (void)setHiddenFeaturesEnabled:(BOOL)enabled;
- (void)setIdleTimerEnabled:(BOOL)enabled;
- (void)setMallocStackLoggingEnabled:(BOOL)enabled;
- (void)setOrientationLockEnabled:(BOOL)enabled;
- (void)setReachabilityActive:(BOOL)active;
- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)types;
- (void)setSystemApertureUnderAutomationTesting:(BOOL)testing;
- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier;
- (void)setUserPresenceDetectedSinceWake;
- (void)stashSwitcherModelToPath:(id)path;
- (void)suspendAllDisplays;
@end

@implementation SBSTestAutomationService

- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractSystemService *)self client];
  [client setTestRunnerRecoveryApplicationBundleIdentifier:identifierCopy];
}

- (void)suspendAllDisplays
{
  client = [(SBSAbstractSystemService *)self client];
  [client suspendAllDisplays];
}

- (void)clearAllUserNotifications
{
  client = [(SBSAbstractSystemService *)self client];
  [client clearAllUserNotifications];
}

- (void)setUserPresenceDetectedSinceWake
{
  client = [(SBSAbstractSystemService *)self client];
  [client setUserPresenceDetectedSinceWake];
}

- (void)setAlertsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setAlertsEnabled:enabledCopy];
}

- (void)setHiddenFeaturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setHiddenFeaturesEnabled:enabledCopy];
}

- (void)setIdleTimerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setIdleTimerEnabled:enabledCopy];
}

- (void)setOrientationLockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setOrientationLockEnabled:enabledCopy];
}

- (void)setMallocStackLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setMallocStackLoggingEnabled:enabledCopy];
}

- (void)setReachabilityActive:(BOOL)active
{
  activeCopy = active;
  client = [(SBSAbstractSystemService *)self client];
  [client setReachabilityActive:activeCopy];
}

- (void)setAmbientPresentationState:(int64_t)state
{
  client = [(SBSAbstractSystemService *)self client];
  [client setAmbientPresentationState:state];
}

- (id)acquireAssertionForReachabilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  v5 = [client acquireAssertionForReachabilityEnabled:enabledCopy];

  return v5;
}

- (void)resetToHomeScreenAnimated:(BOOL)animated
{
  animatedCopy = animated;
  client = [(SBSAbstractSystemService *)self client];
  [client resetToHomeScreenAnimated:animatedCopy];
}

- (void)setAccessoryType:(int64_t)type attached:(BOOL)attached
{
  attachedCopy = attached;
  client = [(SBSAbstractSystemService *)self client];
  [client setAccessoryType:type attached:attachedCopy];
}

- (id)acquireHUDHiddenAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractSystemService *)self client];
  v6 = [client acquireHUDHiddenAssertionForIdentifier:identifierCopy];

  return v6;
}

- (void)setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time
{
  timeCopy = time;
  identifierCopy = identifier;
  client = [(SBSAbstractSystemService *)self client];
  [client setApplicationBundleIdentifier:identifierCopy blockedForScreenTime:timeCopy];
}

- (void)countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  client = [(SBSAbstractSystemService *)self client];
  [client countScenesForBundleIdentifier:identifierCopy withCompletion:completionCopy];
}

- (void)stashSwitcherModelToPath:(id)path
{
  pathCopy = path;
  client = [(SBSAbstractSystemService *)self client];
  [client stashSwitcherModelToPath:pathCopy];
}

- (void)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  client = [(SBSAbstractSystemService *)self client];
  [client loadStashedSwitcherModelFromPath:pathCopy];
}

- (void)addWidgetsToEachPage
{
  client = [(SBSAbstractSystemService *)self client];
  [client addWidgetsToEachPage];
}

- (void)addWidgetWithIdentifier:(id)identifier toPage:(int)page withSizing:(int)sizing
{
  v5 = *&sizing;
  v6 = *&page;
  identifierCopy = identifier;
  client = [(SBSAbstractSystemService *)self client];
  [client addWidgetWithIdentifier:identifierCopy toPage:v6 withSizing:v5];
}

- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int)page withSizing:(int)sizing
{
  v5 = *&sizing;
  v6 = *&page;
  identifiersCopy = identifiers;
  client = [(SBSAbstractSystemService *)self client];
  [client addWidgetStackWithIdentifiers:identifiersCopy toPage:v6 withSizing:v5];
}

- (void)enterLostMode
{
  client = [(SBSAbstractSystemService *)self client];
  [client enterLostMode];
}

- (void)exitLostMode
{
  client = [(SBSAbstractSystemService *)self client];
  [client exitLostMode];
}

- (BOOL)isChamoisWindowingUIEnabled
{
  client = [(SBSAbstractSystemService *)self client];
  isChamoisWindowingUIEnabled = [client isChamoisWindowingUIEnabled];

  return isChamoisWindowingUIEnabled;
}

- (void)setChamoisWindowingUIEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  client = [(SBSAbstractSystemService *)self client];
  [client setChamoisWindowingUIEnabled:enabledCopy];
}

- (BOOL)chamoisPrefersDockHidden
{
  client = [(SBSAbstractSystemService *)self client];
  chamoisPrefersDockHidden = [client chamoisPrefersDockHidden];

  return chamoisPrefersDockHidden;
}

- (void)setChamoisPrefersDockHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  client = [(SBSAbstractSystemService *)self client];
  [client setChamoisPrefersDockHidden:hiddenCopy];
}

- (BOOL)chamoisPrefersStripHidden
{
  client = [(SBSAbstractSystemService *)self client];
  chamoisPrefersStripHidden = [client chamoisPrefersStripHidden];

  return chamoisPrefersStripHidden;
}

- (void)setChamoisPrefersStripHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  client = [(SBSAbstractSystemService *)self client];
  [client setChamoisPrefersStripHidden:hiddenCopy];
}

- (void)setSystemApertureUnderAutomationTesting:(BOOL)testing
{
  testingCopy = testing;
  client = [(SBSAbstractSystemService *)self client];
  [client setSystemApertureUnderAutomationTesting:testingCopy];
}

- (BOOL)deviceSupportsSystemAperture
{
  client = [(SBSAbstractSystemService *)self client];
  deviceSupportsSystemAperture = [client deviceSupportsSystemAperture];

  return deviceSupportsSystemAperture;
}

- (NSMutableArray)systemApertureModelStateDump
{
  client = [(SBSAbstractSystemService *)self client];
  systemApertureModelStateDump = [client systemApertureModelStateDump];

  return systemApertureModelStateDump;
}

- (NSArray)systemApertureStateDump
{
  client = [(SBSAbstractSystemService *)self client];
  systemApertureStateDump = [client systemApertureStateDump];

  return systemApertureStateDump;
}

- (NSDictionary)widgetControllerStateDump
{
  client = [(SBSAbstractSystemService *)self client];
  widgetControllerStateDump = [client widgetControllerStateDump];

  return widgetControllerStateDump;
}

- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)types
{
  client = [(SBSAbstractSystemService *)self client];
  [client setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:types];
}

- (NSMutableDictionary)animationFrameRecording
{
  client = [(SBSAbstractSystemService *)self client];
  animationFrameRecordings = [client animationFrameRecordings];

  return animationFrameRecordings;
}

- (void)initiateSecureFlipBookRecordingsForElement:(id)element withCompletion:(id)completion
{
  completionCopy = completion;
  elementCopy = element;
  client = [(SBSAbstractSystemService *)self client];
  [client initiateSecureFlipBookRecordingsForElement:elementCopy withCompletion:completionCopy];
}

- (id)availableRecordableFlipBookElementIdentifiers
{
  client = [(SBSAbstractSystemService *)self client];
  availableRecordableFlipBookElementIdentifiers = [client availableRecordableFlipBookElementIdentifiers];

  return availableRecordableFlipBookElementIdentifiers;
}

@end