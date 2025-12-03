@interface SOSUtilities
+ (BOOL)_hasAccessibilityConflict;
+ (BOOL)_isCarryDevice;
+ (BOOL)_potentialForAccessibilityConflict;
+ (BOOL)activeDeviceHasMandrake;
+ (BOOL)activeDeviceSupportsMandrake;
+ (BOOL)activeDeviceSupportsNewton;
+ (BOOL)activeDeviceSupportsNewtonWorkoutsOnly;
+ (BOOL)canTriggerSOSWithSideButton;
+ (BOOL)deviceHasDynamicIsland;
+ (BOOL)deviceHasHomeButton;
+ (BOOL)hasActiveSIMForClient:(id)client;
+ (BOOL)hasEmergencyContacts;
+ (BOOL)hasMultiPressResetLogicRun;
+ (BOOL)hasNewtonTriggersEmergencySOSWorkoutsSetting;
+ (BOOL)isActivePairedDeviceTinker;
+ (BOOL)isAllowedToMessageSOSContacts;
+ (BOOL)isAutomaticCallCountdownEnabled;
+ (BOOL)isCallWithSideButtonPressesEnabled;
+ (BOOL)isCallWithVolumeLockHoldEnabled;
+ (BOOL)isDeviceD2xOrNewer;
+ (BOOL)isIndiaSKU;
+ (BOOL)isKappaDetectionSupportedOnActiveWatch;
+ (BOOL)isKappaDetectionSupportedOnCurrentDevice;
+ (BOOL)isMessagesAppInstalled;
+ (BOOL)isMessagesHandlingSMS;
+ (BOOL)isMountStateTrackingEnabled;
+ (BOOL)isSOSMessagesUrgentAlertingEnabled;
+ (BOOL)isSmallScreen;
+ (BOOL)kappaTriggersEmergencySOS;
+ (BOOL)kappaTriggersEmergencySOSTinker;
+ (BOOL)longPressTriggersEmergencySOS;
+ (BOOL)longPressTriggersMandrake;
+ (BOOL)newtonTriggersEmergencySOS;
+ (BOOL)newtonTriggersEmergencySOSWorkouts;
+ (BOOL)shouldAllowSOSStatusReset;
+ (BOOL)shouldBlockNonEmergencyCalls;
+ (BOOL)shouldForceDisableAutoCallForClient:(id)client;
+ (BOOL)shouldPlayAudioDuringCountdown;
+ (BOOL)shouldSilenceSOSFlow;
+ (BOOL)shouldSkipNewtonCall;
+ (BOOL)sosMessagesUrgentAlertingBypassesMute;
+ (NSNumber)newtonTriggersEmergencySOSNumber;
+ (NSString)accidentalCallFeedbackAssistantLegalText;
+ (NSString)accidentalCallNotificationBody;
+ (NSString)accidentalCallNotificationTitle;
+ (NSString)autoCallFooterDescription;
+ (NSString)autoCallTitleDescription;
+ (NSString)automaticDialingSectionDescription;
+ (NSString)callWithHoldFooterDescription;
+ (NSString)callWithHoldTitleDescription;
+ (NSString)callWithPressesFooterDescription;
+ (NSString)callWithPressesTitleDescription;
+ (NSString)callWithSideButtonFooterDescription;
+ (NSString)callWithSideButtonTitleDescription;
+ (NSString)countdownSoundFooterDescription;
+ (NSString)countdownSoundTitleDescription;
+ (NSString)crashDetectionFooterLinkDescription;
+ (NSString)crashDetectionPhoneFooterDesription;
+ (NSString)crashDetectionPhoneWatchFooterDescription;
+ (NSString)crashDetectionSwitchDescription;
+ (NSString)crashDetectionThirdPartyAlertTitle;
+ (NSString)crashDetectionThirdPartyAppWithAccessDescription;
+ (NSString)crashDetectionThirdPartyCellTitle;
+ (NSString)crashDetectionThirdPartyDescription;
+ (NSString)crashDetectionThirdPartyFooterDescriptionPhone;
+ (NSString)crashDetectionThirdPartyFooterDescriptionWatch;
+ (NSString)crashDetectionThirdPartyNavigationTitle;
+ (NSString)crashDetectionThirdPartyShareDisableDescription;
+ (NSString)crashDetectionTitleDescription;
+ (NSString)crashDetectionWatchFooterDescription;
+ (NSString)emergencyContactsEditDescription;
+ (NSString)emergencyContactsFooterDescription;
+ (NSString)emergencyContactsFooterLinkTitle;
+ (NSString)emergencyContactsSectionDescription;
+ (NSString)fallDetectionAlwaysOnTitleDescription;
+ (NSString)fallDetectionFooterDescription;
+ (NSString)fallDetectionOnlyDuringWorkoutsTitleDescription;
+ (NSString)fallDetectionTitleDescription;
+ (NSString)fivePressesSelectionTitleDescription;
+ (NSString)getKappaThirdPartyDisplayNameForApp;
+ (NSString)holdSideButtonFooterDescription;
+ (NSString)holdSideButtonTitleDescription;
+ (NSString)phoneTriggerAnimationFooterDescription;
+ (NSString)pressSelectionGroupTitleDescription;
+ (NSString)settingsResetFollowUpBody;
+ (NSString)settingsResetFollowUpClearActionTitle;
+ (NSString)settingsResetFollowUpRedirectActionTitle;
+ (NSString)settingsResetFollowUpTitle;
+ (NSString)sosLocationSharingLiveActivityAlertBody;
+ (NSString)sosLocationSharingLiveActivityAlertTitle;
+ (NSString)sosLocationSharingLiveActivityDetail;
+ (NSString)stewieDemoButtonTitle;
+ (NSString)stewieDemoCellText;
+ (NSString)stewieFooterDescription;
+ (NSString)stewieFooterLinkTitle;
+ (NSString)stewieGroupTitle;
+ (NSString)threePressesSelectionTitleDescription;
+ (NSString)watchTriggerAnimationFooterDescription;
+ (SABundleManagerApp)getKappaThirdPartyApp;
+ (SOSStatus)mostRecentSOSStatus;
+ (UIImage)stewieGroupAsset;
+ (__CFBundle)getKappaThirdPartyActiveAppBundle;
+ (double)clawReleaseToCallSupport;
+ (double)getShortSOSNotificationDisplayTimestamp;
+ (double)mountProbabilityThreshold;
+ (id)_SOSDomainAccessor;
+ (id)_overrideForDefaultsKey:(id)key expectedClass:(Class)class defaultValue:(id)value;
+ (id)_sosPrefsValueForKey:(id)key;
+ (id)_userFriendsDomainAccessor;
+ (id)_userSOSDefaults;
+ (id)activeDevice;
+ (id)crashDetectionThirdPartyBundleId;
+ (id)crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:(id)name;
+ (id)crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:(id)name;
+ (id)fetchSOSStatusWithKey:(id)key;
+ (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value;
+ (id)phoneAssetName;
+ (id)sosLocationBundle;
+ (id)stringOverrideForDefaultsKey:(id)key defaultValue:(id)value;
+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target forApp:(id)app disableAction:(SEL)action;
+ (id)watchAssetNameWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right;
+ (int64_t)SOSFlowStateForString:(id)string;
+ (int64_t)SOSProgressionForString:(id)string;
+ (int64_t)SOSResolutionForString:(id)string;
+ (int64_t)SOSSelectableTriggerMechanismCapability;
+ (int64_t)SOSTriggerClickCount;
+ (int64_t)SOSTriggerMechanismForClickCount:(int64_t)count;
+ (int64_t)SOSTriggerMechanismForString:(id)string;
+ (int64_t)currentSOSTriggerMechanism;
+ (int64_t)defaultSOSTriggerMechanism;
+ (int64_t)getSettingsResetFollowUpState;
+ (int64_t)mostRecentlyUsedSOSTriggerMechanism;
+ (void)activeDeviceHasMandrake;
+ (void)getAssetViewForPhoneWithCompletion:(id)completion;
+ (void)openEmergencyContactsFooterLinkOnViewController:(id)controller;
+ (void)presentConfirmationOnViewController:(id)controller title:(id)title message:(id)message cancelTitle:(id)cancelTitle cancelHandler:(id)handler confirmTitle:(id)confirmTitle confirmHandler:(id)confirmHandler;
+ (void)presentStewieDemoUnavailableAlertOnViewController:(id)controller reason:(int64_t)reason;
+ (void)presentStewieLearnMoreLinkOnViewController:(id)controller;
+ (void)setCallWithSideButtonPresses:(BOOL)presses presentErrorAlertOnViewController:(id)controller completion:(id)completion;
+ (void)setCurrentSOSTriggerMechanism:(int64_t)mechanism;
+ (void)setKappaThirdPartyActive:(BOOL)active forApp:(id)app forPairedDevice:(BOOL)device presentConfirmationOnViewController:(id)controller completion:(id)completion;
+ (void)setKappaTriggersEmergencySOS:(BOOL)s confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setKappaTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled doesNewtonRequireConfirmation:(BOOL)confirmation presentConfirmationOnViewController:(id)controller completion:(id)completion;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setNewtonTriggersEmergencySOSNumber:(id)number;
+ (void)setNumberOfSideButtonPresses:(int64_t)presses;
+ (void)setSOSStatus:(id)status withKey:(id)key;
+ (void)setSettingsResetFollowUpState:(int64_t)state;
+ (void)setShortSOSNotificationDisplayTimestamp;
+ (void)thirdPartySettingsSpecifiersForRemoteDeviceWithTarget:(id)target forApp:(id)app disableAction:(SEL)action withCompletion:(id)completion;
@end

@implementation SOSUtilities

+ (BOOL)kappaTriggersEmergencySOS
{
  v2 = [self _sosPrefsValueForKey:@"SOSKappaTriggersEmergencySOSKey"];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC38];
  }

  if ([v2 BOOLValue])
  {
    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_userSOSDefaults
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.SOS"];

  if (v4)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SOS"];
  }

  return standardUserDefaults;
}

+ (NSString)getKappaThirdPartyDisplayNameForApp
{
  getKappaThirdPartyApp = [self getKappaThirdPartyApp];
  getLocalizedName = [getKappaThirdPartyApp getLocalizedName];

  return getLocalizedName;
}

+ (SABundleManagerApp)getKappaThirdPartyApp
{
  crashDetectionManager = [getSABundleManagerClass() crashDetectionManager];
  approvedApps = [crashDetectionManager approvedApps];
  firstObject = [approvedApps firstObject];

  return firstObject;
}

+ (BOOL)shouldBlockNonEmergencyCalls
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SOSUtilities mostRecentSOSStatus];
  v3 = v2;
  if (v2 && [v2 shouldBlockNonEmergencyCalls])
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSUtilities,should block non-emergency calls due to %@", &v8, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (SOSStatus)mostRecentSOSStatus
{
  v2 = +[SOSUtilities currentDeviceSOSStatus];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v2)
  {
    timeOfDetection = [v2 timeOfDetection];

    v4 = v3;
    if (timeOfDetection)
    {
      v4 = v2;
      if (v3)
      {
        timeOfDetection2 = [v3 timeOfDetection];

        v4 = v2;
        if (timeOfDetection2)
        {
          timeOfDetection3 = [v2 timeOfDetection];
          [timeOfDetection3 timeIntervalSince1970];
          v9 = v8;
          timeOfDetection4 = [v3 timeOfDetection];
          [timeOfDetection4 timeIntervalSince1970];
          v12 = v11;

          if (v9 >= v12)
          {
            v4 = v2;
          }

          else
          {
            v4 = v3;
          }
        }
      }
    }
  }

  v13 = v4;

  return v13;
}

+ (id)_SOSDomainAccessor
{
  v3 = objc_alloc(MEMORY[0x277D2BA58]);
  activeDevice = [self activeDevice];
  v5 = [v3 initWithDomain:@"com.apple.SOS" pdrDevice:activeDevice];

  return v5;
}

+ (id)_userFriendsDomainAccessor
{
  v3 = objc_alloc(MEMORY[0x277D2BA58]);
  activeDevice = [self activeDevice];
  v5 = [v3 initWithDomain:@"com.apple.mobilephone" pdrDevice:activeDevice];

  return v5;
}

+ (id)_sosPrefsValueForKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.SOS", @"mobile", *MEMORY[0x277CBF030]);

  return v3;
}

+ (NSString)automaticDialingSectionDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_AUTO_DIAL_HEADER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)holdSideButtonTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_LONG_PRESS_TRIGGERS_SOS_LABEL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)holdSideButtonFooterDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_PRESS_AND_HOLD_FOOTER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)longPressTriggersEmergencySOS
{
  _userFriendsDomainAccessor = [self _userFriendsDomainAccessor];
  v3 = [_userFriendsDomainAccessor objectForKey:@"SOSLongPressTriggersEmergencySOSKey"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

void __49__SOSUtilities_setLongPressTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v3 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSLongPressTriggersEmergencySOSKey"];
  [v3 synchronizeNanoDomain:@"com.apple.mobilephone" keys:v2];
}

+ (NSString)fallDetectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_FALL_DETECTION_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionAlwaysOnTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_MODE_ALWAYS_ON" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionOnlyDuringWorkoutsTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_MODE_WORKOUTS_ONLY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionFooterDescription
{
  if ([self activeDeviceSupportsNewtonWorkoutsOnly])
  {
    if (+[SOSUtilities newtonTriggersEmergencySOS])
    {
      if (+[SOSUtilities newtonTriggersEmergencySOSWorkouts])
      {
        v2 = @"SOS_NEWTON_FOOTER_ENABLED_WORKOUTS_ONLY";
      }

      else
      {
        v2 = @"SOS_NEWTON_FOOTER_ENABLED_ALWAYS";
      }
    }

    else
    {
      v2 = @"SOS_NEWTON_FOOTER_DISABLED";
    }
  }

  else
  {
    v2 = @"SOS_NEWTON_FOOTER";
  }

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2875C9CD8 table:0];

  return v4;
}

+ (NSNumber)newtonTriggersEmergencySOSNumber
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonTriggersEmergencySOSKey"];

  return v3;
}

+ (void)setNewtonTriggersEmergencySOSNumber:(id)number
{
  v14 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    bOOLValue = [numberCopy BOOLValue];
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "newton status change: %d", buf, 8u);
  }

  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v7 = [_SOSDomainAccessor objectForKey:@"SOSNewtonTriggersEmergencySOSKey"];
  if (([v7 isEqual:numberCopy] & 1) == 0)
  {
    +[SOSCoreAnalyticsReporter reportSOSAutomaticNewtonEnabled:](SOSCoreAnalyticsReporter, "reportSOSAutomaticNewtonEnabled:", [numberCopy BOOLValue]);
    [_SOSDomainAccessor setObject:numberCopy forKey:@"SOSNewtonTriggersEmergencySOSKey"];
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke;
    block[3] = &unk_279B532A0;
    v11 = _SOSDomainAccessor;
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSNewtonTriggersEmergencySOSKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_1);
}

void __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSNewtonStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)shouldSkipNewtonCall
{
  v2 = +[SOSUtilities _userSOSDefaults];
  v3 = [v2 BOOLForKey:@"SkipNewtonCall"];

  return v3;
}

+ (BOOL)shouldAllowSOSStatusReset
{
  v2 = [SOSUtilities _sosPrefsValueForKey:@"AllowSOSStatusReset"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)SOSTriggerMechanismForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSTriggerMechanismNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismThreeClicks"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismFiveClicks"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismVolumeLockHold"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismButtonTrigger"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismNewton"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismCinnamon"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismKappa"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismMandrake"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismUnknown"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSProgressionForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSProgressionUnknown"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionSOSTriggered"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionThirdParty"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionFlowStateUpdate"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSResolutionForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSResolutionNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionSystemCompleted"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserCompleted"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserDismissed"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserDisabled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSFlowStateForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSFlowStateNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateUserCheckIn"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallCountdown"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallUserInitiated"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallAutoInitiated"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateContactCountdown"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCancelled"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateDone"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateVoiceLoopTester"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateMedicalID"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateUnresponsiveResting"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateStewieResting"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateMotionCancelled"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateSliderView"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateTriggered"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)newtonTriggersEmergencySOSWorkouts
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)hasNewtonTriggersEmergencySOSWorkoutsSetting
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  v4 = v3 != 0;

  return v4;
}

void __54__SOSUtilities_setNewtonTriggersEmergencySOSWorkouts___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_583);
}

void __54__SOSUtilities_setNewtonTriggersEmergencySOSWorkouts___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSNewtonStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)newtonTriggersEmergencySOS
{
  newtonTriggersEmergencySOSNumber = [self newtonTriggersEmergencySOSNumber];
  v3 = newtonTriggersEmergencySOSNumber;
  v4 = MEMORY[0x277CBEC28];
  if (newtonTriggersEmergencySOSNumber)
  {
    v4 = newtonTriggersEmergencySOSNumber;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled doesNewtonRequireConfirmation:(BOOL)confirmation presentConfirmationOnViewController:(id)controller completion:(id)completion
{
  confirmationCopy = confirmation;
  sCopy = s;
  controllerCopy = controller;
  completionCopy = completion;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke;
  v40[3] = &unk_279B532F0;
  v44 = sCopy;
  enabledCopy = enabled;
  selfCopy = self;
  v14 = completionCopy;
  v42 = v14;
  v15 = controllerCopy;
  v41 = v15;
  v16 = MEMORY[0x266735F90](v40);
  v17 = v16;
  if (sCopy && confirmationCopy)
  {
    UIAlertControllerClass = getUIAlertControllerClass();
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_TITLE" value:&stru_2875C9CD8 table:0];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_DETAIL" value:&stru_2875C9CD8 table:0];
    v23 = [UIAlertControllerClass alertControllerWithTitle:v20 message:v22 preferredStyle:1];

    UIAlertActionClass = getUIAlertActionClass();
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_3;
    v37[3] = &unk_279B53318;
    selfCopy2 = self;
    v38 = v14;
    v27 = [UIAlertActionClass actionWithTitle:v26 style:1 handler:v37];
    [v23 addAction:v27];

    v28 = getUIAlertActionClass();
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_OK" value:&stru_2875C9CD8 table:0];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_4;
    v35 = &unk_279B53340;
    v36 = v17;
    v31 = [v28 actionWithTitle:v30 style:0 handler:&v32];
    [v23 addAction:{v31, v32, v33, v34, v35}];

    [v15 presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    (*(v16 + 16))(v16);
  }
}

void __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    UIAlertControllerClass = getUIAlertControllerClass();
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_TITLE" value:&stru_2875C9CD8 table:0];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_DETAIL" value:&stru_2875C9CD8 table:0];
    v10 = [UIAlertControllerClass alertControllerWithTitle:v6 message:v9 preferredStyle:1];

    UIAlertActionClass = getUIAlertActionClass();
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SOS_WRIST_DETECTION_OK" value:&stru_2875C9CD8 table:0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_2;
    v18[3] = &unk_279B532C8;
    v20 = *(a1 + 56);
    v17 = *(a1 + 40);
    v15 = v17;
    v19 = v17;
    v16 = [UIAlertActionClass actionWithTitle:v14 style:0 handler:v18];
    [v10 addAction:v16];

    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 48) setNewtonTriggersEmergencySOS:?];
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

uint64_t __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) setNewtonTriggersEmergencySOS:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) setNewtonTriggersEmergencySOS:0];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (void)presentConfirmationOnViewController:(id)controller title:(id)title message:(id)message cancelTitle:(id)cancelTitle cancelHandler:(id)handler confirmTitle:(id)confirmTitle confirmHandler:(id)confirmHandler
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  titleCopy = title;
  cancelTitleCopy = cancelTitle;
  handlerCopy = handler;
  confirmTitleCopy = confirmTitle;
  confirmHandlerCopy = confirmHandler;
  messageCopy = message;
  v21 = sos_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = titleCopy;
    _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "Presenting confirmation with title: %@", buf, 0xCu);
  }

  v22 = [getUIAlertControllerClass() alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];

  if ([cancelTitleCopy length])
  {
    UIAlertActionClass = getUIAlertActionClass();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke;
    v33[3] = &unk_279B53340;
    v34 = handlerCopy;
    v24 = [UIAlertActionClass actionWithTitle:cancelTitleCopy style:1 handler:v33];
    [v22 addAction:v24];
  }

  if ([confirmTitleCopy length])
  {
    v25 = getUIAlertActionClass();
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke_2;
    v31 = &unk_279B53340;
    v32 = confirmHandlerCopy;
    v26 = [v25 actionWithTitle:confirmTitleCopy style:0 handler:&v28];
    [v22 addAction:{v26, v28, v29, v30, v31}];
  }

  [controllerCopy presentViewController:v22 animated:1 completion:0];

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion
{
  enabledCopy = enabled;
  sCopy = s;
  v50 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v14 = sos_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v46 = sCopy;
    *&v46[4] = 1024;
    *&v46[6] = enabledCopy;
    *v47 = 2048;
    *&v47[2] = eligibility;
    v48 = 2112;
    v49 = delegateCopy;
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "setNewtonTriggersEmergencySOS:%d isWristDetectionEnabled:%d newtonEligibility:%zd confirmationDelegate:%@", buf, 0x22u);
  }

  newtonTriggersEmergencySOSWorkouts = [self newtonTriggersEmergencySOSWorkouts];
  v16 = sos_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v46 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
    *&v46[8] = 1024;
    *v47 = newtonTriggersEmergencySOSWorkouts;
    _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "%s - newtonTriggersEmergencySOSWorkoutsOnly:%d", buf, 0x12u);
  }

  if (([self hasNewtonTriggersEmergencySOSWorkoutsSetting] & 1) == 0 && objc_msgSend(self, "activeDeviceSupportsNewtonWorkoutsOnly"))
  {
    newtonTriggersEmergencySOSWorkouts = [self defaultToWorkoutsOnlyForEligibility:eligibility];
    v17 = sos_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v46 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      *&v46[8] = 1024;
      *v47 = newtonTriggersEmergencySOSWorkouts;
      _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "%s - !hasNewtonTriggersEmergencySOSWorkoutsSetting, set default newtonTriggersEmergencySOSWorkoutsOnly:%d", buf, 0x12u);
    }
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke;
  v38[3] = &unk_279B53390;
  v42 = sCopy;
  v43 = enabledCopy;
  v18 = delegateCopy;
  v39 = v18;
  selfCopy = self;
  v44 = newtonTriggersEmergencySOSWorkouts;
  v19 = completionCopy;
  v40 = v19;
  v20 = MEMORY[0x266735F90](v38);
  if (sCopy && (newtonTriggersEmergencySOSWorkouts & 1) == 0 && [self newtonAlwaysOnRequiresConfirmationForEligibility:eligibility])
  {
    v21 = sos_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v46 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "%s - presenting eligibility-related confirmation", buf, 0xCu);
    }

    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v31 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_TITLE" value:&stru_2875C9CD8 table:0];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_DETAIL" value:&stru_2875C9CD8 table:0];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_607;
    v34[3] = &unk_279B533B8;
    selfCopy2 = self;
    v37 = 0;
    v35 = v19;
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_OK" value:&stru_2875C9CD8 table:0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_608;
    v32[3] = &unk_279B533E0;
    v33 = v20;
    [v18 presentConfirmationWithTitle:v30 message:v23 cancelTitle:v25 cancelHandler:v34 confirmTitle:v27 confirmHandler:v32];
  }

  else
  {
    v28 = sos_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v46 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v28, OS_LOG_TYPE_DEFAULT, "%s - no eligibility confirmation needed", buf, 0xCu);
    }

    v20[2](v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - presenting wrist detection notification", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_TITLE" value:&stru_2875C9CD8 table:0];
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_DETAIL" value:&stru_2875C9CD8 table:0];
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SOS_WRIST_DETECTION_OK" value:&stru_2875C9CD8 table:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_606;
    v17[3] = &unk_279B53368;
    v19 = *(a1 + 56);
    v20 = *(a1 + 58);
    v16 = *(a1 + 40);
    v14 = v16;
    v18 = v16;
    [v4 presentConfirmationWithTitle:v7 message:v10 cancelTitle:0 cancelHandler:0 confirmTitle:v13 confirmHandler:v17];
  }

  else
  {
    v2 = sos_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
      _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - no wrist detection notification needed", buf, 0xCu);
    }

    [*(a1 + 48) setNewtonTriggersEmergencySOS:*(a1 + 56) newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 58)];
    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_606(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - ack'd", &v5, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOS:*(a1 + 48) newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 49)];
  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_607(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v5, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOS:0 newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 48)];
  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_608(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_609(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v5, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOSWorkouts:*(a1 + 48)];
  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isSmallScreen
{
  if (isSmallScreen_onceToken != -1)
  {
    +[SOSUtilities isSmallScreen];
  }

  return isSmallScreen_isSmallScreen;
}

void __29__SOSUtilities_isSmallScreen__block_invoke()
{
  v6 = [getUIScreenClass() mainScreen];
  [v6 nativeBounds];
  v1 = v0;
  [v6 scale];
  v3 = v2;
  v4 = [v6 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5 && v1 / v3 == 568.0)
  {
    isSmallScreen_isSmallScreen = 1;
  }
}

+ (id)phoneAssetName
{
  v3 = +[SOSUtilities canTriggerSOSWithVolumeLockHold];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    mainScreen = [getUIScreenClass() mainScreen];
    [mainScreen scale];
    v7 = [v4 stringWithFormat:@"home_hold@%dx", v6];

    if (+[SOSUtilities deviceHasHomeButton])
    {
      goto LABEL_12;
    }

    v8 = MEMORY[0x277CCACA8];
    if ([self deviceHasDynamicIsland])
    {
      v9 = @"slot_";
    }

    else
    {
      v9 = &stru_2875C9CD8;
    }

    mainScreen2 = [getUIScreenClass() mainScreen];
    [mainScreen2 scale];
    v12 = [v8 stringWithFormat:@"%@homeless_hold@%dx", v9, v11];

    v7 = v12;
  }

  else
  {
    if ([self isSmallScreen])
    {
      v13 = @"top_";
    }

    else
    {
      v13 = &stru_2875C9CD8;
    }

    sOSTriggerClickCount = [self SOSTriggerClickCount];
    mainScreen2 = [getUIScreenClass() mainScreen];
    [mainScreen2 scale];
    v7 = [v4 stringWithFormat:@"home_%@%ld@%dx", v13, sOSTriggerClickCount, v15];
  }

LABEL_12:

  return v7;
}

+ (void)getAssetViewForPhoneWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  phoneAssetName = [self phoneAssetName];
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = phoneAssetName;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Loading SOSTriggerAnimation asset %@", &buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:phoneAssetName withExtension:@"caar"];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v9 = get_UICAPackageViewClass_softClass;
  v21 = get_UICAPackageViewClass_softClass;
  if (!get_UICAPackageViewClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v23 = __get_UICAPackageViewClass_block_invoke;
    v24 = &unk_279B53140;
    v25 = &v18;
    __get_UICAPackageViewClass_block_invoke(&buf);
    v9 = v19[3];
  }

  v10 = v9;
  _Block_object_dispose(&v18, 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SOSUtilities_getAssetViewForPhoneWithCompletion___block_invoke;
  v14[3] = &unk_279B53408;
  v16 = completionCopy;
  selfCopy = self;
  v15 = phoneAssetName;
  v11 = completionCopy;
  v12 = phoneAssetName;
  [v9 loadPackageViewWithContentsOfURL:v8 publishedObjectViewClassMap:0 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __51__SOSUtilities_getAssetViewForPhoneWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    UIImageClass = getUIImageClass();
    v9 = a1[4];
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [UIImageClass imageNamed:v9 inBundle:v11 withConfiguration:0];
    v13 = [v12 imageWithRenderingMode:2];

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v14 = getUIImageViewClass_softClass;
    v25 = getUIImageViewClass_softClass;
    if (!getUIImageViewClass_softClass)
    {
      *&v20.a = MEMORY[0x277D85DD0];
      *&v20.b = 3221225472;
      *&v20.c = __getUIImageViewClass_block_invoke;
      *&v20.d = &unk_279B53140;
      *&v20.tx = &v22;
      __getUIImageViewClass_block_invoke(&v20);
      v14 = v23[3];
    }

    v15 = v14;
    _Block_object_dispose(&v22, 8);
    v7 = [[v14 alloc] initWithImage:v13];
  }

  v16 = [getUIScreenClass() mainScreen];
  [v16 scale];
  v18 = 1.0 / v17;

  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *&v20.a = *MEMORY[0x277CBF2C0];
  *&v20.c = v19;
  *&v20.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v21, &v20, v18, v18);
  v20 = v21;
  [v7 setTransform:&v20];
  (*(a1[5] + 16))();
}

+ (NSString)phoneTriggerAnimationFooterDescription
{
  if ([self canTriggerSOSWithVolumeLockHold])
  {
    autoCallRequiresSIM = [self autoCallRequiresSIM];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (autoCallRequiresSIM)
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_VOLUME_LOCK_HOLD_FOOTER_REQUIRE_SIM";
    }

    else
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_VOLUME_LOCK_HOLD_FOOTER";
    }
  }

  else
  {
    v6 = +[SOSUtilities SOSSelectableTriggerMechanismCapability];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v6 == 2)
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_INDIA_CLICKS_FOOTER";
    }

    else
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_FIVE_CLICKS_FOOTER";
    }
  }

  v7 = [v4 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (id)watchAssetNameWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right
{
  v4 = @"crownLeft";
  if (side)
  {
    v4 = @"crownRight";
  }

  v5 = @"RTL";
  if (right)
  {
    v5 = @"LTR";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"watch", v4, v5];
}

+ (NSString)watchTriggerAnimationFooterDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_TRIGGER_ANIMATION_FOOTER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (int64_t)mostRecentlyUsedSOSTriggerMechanism
{
  v2 = +[SOSUtilities mostRecentSOSStatus];
  v3 = v2;
  if (v2)
  {
    trigger = [v2 trigger];
  }

  else
  {
    trigger = 0;
  }

  return trigger;
}

+ (BOOL)isIndiaSKU
{
  v2 = MGCopyAnswer();
  v3 = [v2 isEqualToString:@"HN"];

  return v3;
}

+ (BOOL)canTriggerSOSWithSideButton
{
  currentSOSTriggerMechanism = [self currentSOSTriggerMechanism];
  if (currentSOSTriggerMechanism != 1)
  {
    LOBYTE(currentSOSTriggerMechanism) = [self currentSOSTriggerMechanism] == 2;
  }

  return currentSOSTriggerMechanism;
}

+ (int64_t)SOSTriggerClickCount
{
  currentSOSTriggerMechanism = [self currentSOSTriggerMechanism];
  v3 = 5;
  if (currentSOSTriggerMechanism != 2)
  {
    v3 = 0;
  }

  if (currentSOSTriggerMechanism == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (NSString)callWithSideButtonTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CALL_WITH_SIDE_BUTTON" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)callWithSideButtonFooterDescription
{
  if ([self SOSSelectableTriggerMechanismCapability] == 4)
  {
    v3 = @"ALSO_WORKS_THREE_CLICKS_FOOTER";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

    goto LABEL_7;
  }

  if ([self SOSSelectableTriggerMechanismCapability] == 3)
  {
    v3 = @"ALSO_WORKS_FIVE_CLICKS_FOOTER";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (BOOL)_potentialForAccessibilityConflict
{
  if ([self deviceHasHomeButton])
  {
    return 0;
  }

  return [self mustAllowThreeClickTrigger];
}

+ (BOOL)_hasAccessibilityConflict
{
  v2 = _AXSTripleClickCopyOptions();
  v3 = [v2 count] != 0;

  return v3;
}

+ (void)setCallWithSideButtonPresses:(BOOL)presses presentErrorAlertOnViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (!presses)
  {
    [self setCallWithSideButtonPressesEnabled:0];
    if ([self _potentialForAccessibilityConflict])
    {
      selfCopy2 = self;
      v26 = 3;
LABEL_9:
      [selfCopy2 setCurrentSOSTriggerMechanism:v26];
    }

LABEL_10:
    completionCopy[2](completionCopy, 1);
    goto LABEL_11;
  }

  if (![self _potentialForAccessibilityConflict] || !objc_msgSend(self, "_hasAccessibilityConflict"))
  {
    [self setCallWithSideButtonPressesEnabled:1];
    if ([self _potentialForAccessibilityConflict])
    {
      selfCopy2 = self;
      v26 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  UIAlertControllerClass = getUIAlertControllerClass();
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_TITLE" value:&stru_2875C9CD8 table:0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_MESSAGE" value:&stru_2875C9CD8 table:0];
  v15 = [UIAlertControllerClass alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  UIAlertActionClass = getUIAlertActionClass();
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_CANCEL" value:&stru_2875C9CD8 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke;
  v34[3] = &unk_279B53340;
  v19 = completionCopy;
  v35 = v19;
  v20 = [UIAlertActionClass actionWithTitle:v18 style:1 handler:v34];
  [v15 addAction:v20];

  v21 = getUIAlertActionClass();
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_CONTINUE" value:&stru_2875C9CD8 table:0];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke_2;
  v30 = &unk_279B532C8;
  selfCopy3 = self;
  pressesCopy = presses;
  v31 = v19;
  v24 = [v21 actionWithTitle:v23 style:0 handler:&v27];
  [v15 addAction:{v24, v27, v28, v29, v30}];

  [controllerCopy presentViewController:v15 animated:1 completion:0];
LABEL_11:
}

uint64_t __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke_2(uint64_t a1)
{
  _AXSSetTripleClickOptions();
  [*(a1 + 40) setCallWithSideButtonPressesEnabled:*(a1 + 48)];
  [*(a1 + 40) setCurrentSOSTriggerMechanism:1];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (void)setNumberOfSideButtonPresses:(int64_t)presses
{
  if ([self mustAllowThreeClickTrigger] && !objc_msgSend(self, "isDeviceD2xOrNewer"))
  {
    if ((presses - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {

      [self setCurrentSOSTriggerMechanism:presses];
    }

    else
    {
      v6 = sos_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities setNumberOfSideButtonPresses:];
      }
    }
  }

  else
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities setNumberOfSideButtonPresses:];
    }
  }
}

+ (int64_t)currentSOSTriggerMechanism
{
  v3 = [self _sosPrefsValueForKey:@"SOSTriggerMechanismKey"];
  integerValue = [v3 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      if (![self mustAllowThreeClickTrigger])
      {
        return 2;
      }

      isDeviceD2xOrNewer = [self isDeviceD2xOrNewer];
    }

    else
    {
      if (integerValue != 3)
      {
        return integerValue;
      }

      if (([self isDeviceD2xOrNewer] & 1) == 0)
      {
LABEL_11:
        if ([self mustAllowThreeClickTrigger])
        {
          keyExistsAndHasValidFormat = 0;
          AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SBNumberOfPressesToTriggerSOS", @"com.apple.springboard", &keyExistsAndHasValidFormat);
          if (keyExistsAndHasValidFormat)
          {
            defaultSOSTriggerMechanism = [self SOSTriggerMechanismForClickCount:AppIntegerValue];
            if ([self isDeviceD2xOrNewer])
            {
              v7 = [self _sosPrefsValueForKey:@"SOSTriggerMechanismD2xKey"];
              integerValue2 = [v7 integerValue];

              if (!integerValue2)
              {
                [self _setSOSPrefsValue:&unk_2875D2938 forKey:@"SOSTriggerMechanismD2xKey"];
                if ([self mustAllowThreeClickTrigger])
                {
                  if (defaultSOSTriggerMechanism == 2)
                  {
                    defaultSOSTriggerMechanism = 1;
                    goto LABEL_25;
                  }
                }
              }
            }

            if (defaultSOSTriggerMechanism)
            {
              goto LABEL_25;
            }
          }
        }

        defaultSOSTriggerMechanism = [self defaultSOSTriggerMechanism];
        goto LABEL_25;
      }

      if ([self _potentialForAccessibilityConflict])
      {
        return 3;
      }

      isDeviceD2xOrNewer = [self mustAllowThreeClickTrigger];
    }

    if (isDeviceD2xOrNewer)
    {
      defaultSOSTriggerMechanism = 1;
    }

    else
    {
      defaultSOSTriggerMechanism = 2;
    }

LABEL_25:
    if (integerValue == defaultSOSTriggerMechanism)
    {
      return integerValue;
    }

    goto LABEL_26;
  }

  if (!integerValue)
  {
    goto LABEL_11;
  }

  if (integerValue == 1)
  {
    if ([self mustAllowThreeClickTrigger])
    {
      return 1;
    }

    defaultSOSTriggerMechanism = 2;
LABEL_26:
    [self setCurrentSOSTriggerMechanism:defaultSOSTriggerMechanism];
    return defaultSOSTriggerMechanism;
  }

  return integerValue;
}

+ (void)setCurrentSOSTriggerMechanism:(int64_t)mechanism
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mechanism];
  [self _setSOSPrefsValue:v4 forKey:@"SOSTriggerMechanismKey"];

  +[SOSManager notifySOSTriggerMechanismChanged];
}

+ (int64_t)SOSTriggerMechanismForClickCount:(int64_t)count
{
  if (count == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (count == 5);
  }
}

+ (int64_t)defaultSOSTriggerMechanism
{
  if ([self mustAllowThreeClickTrigger])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (BOOL)deviceHasDynamicIsland
{
  if (deviceHasDynamicIsland_onceToken != -1)
  {
    +[SOSUtilities deviceHasDynamicIsland];
  }

  return deviceHasDynamicIsland___supportsDynamicIsland;
}

uint64_t __38__SOSUtilities_deviceHasDynamicIsland__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceHasDynamicIsland___supportsDynamicIsland = result;
  return result;
}

+ (BOOL)isDeviceD2xOrNewer
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 414393924;
  v15 = xmmword_2643605F0;
  v14 = -996295886;
  v13 = xmmword_264360604;
  v12 = 897736383;
  v11 = xmmword_264360618;
  v10 = -453987047;
  v9 = xmmword_26436062C;
  v8 = -121925081;
  v7 = xmmword_264360640;
  v6 = -1431778695;
  v5 = xmmword_264360654;
  if (MGIsDeviceOneOfType())
  {
    result = 1;
  }

  else
  {
    result = [self deviceHasHomeButton] ^ 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[SOSUtilities deviceHasHomeButton];
  }

  return deviceHasHomeButton_deviceHasHomeButton;
}

uint64_t __35__SOSUtilities_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_deviceHasHomeButton = result != 2;
  return result;
}

+ (int64_t)SOSSelectableTriggerMechanismCapability
{
  mustAllowThreeClickTrigger = [self mustAllowThreeClickTrigger];
  isDeviceD2xOrNewer = [self isDeviceD2xOrNewer];
  v5 = 1;
  if (mustAllowThreeClickTrigger)
  {
    v5 = 2;
  }

  v6 = 3;
  if (mustAllowThreeClickTrigger)
  {
    v6 = 4;
  }

  if (isDeviceD2xOrNewer)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

+ (BOOL)shouldForceDisableAutoCallForClient:(id)client
{
  clientCopy = client;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.InCallService"];
  v6 = [v5 BOOLForKey:@"shouldDisableSOSAutoCall"];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else if ([self autoCallRequiresSIM])
  {
    v7 = [self hasActiveSIMForClient:clientCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)hasActiveSIMForClient:(id)client
{
  v43 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v37 = 0;
  v4 = [clientCopy getSubscriptionInfoWithError:&v37];
  v5 = v37;
  subscriptions = v5;
  if (v4)
  {

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    subscriptions = [v4 subscriptions];
    v7 = [subscriptions countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (!v7)
    {
      v24 = 0;
      goto LABEL_38;
    }

    v8 = v7;
    v28 = v4;
    v9 = 0;
    v10 = *v34;
    v30 = *MEMORY[0x277CC3ED8];
    v29 = clientCopy;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(subscriptions);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v32 = v9;
        v13 = [clientCopy getSIMStatus:v12 error:&v32];
        v14 = v32;

        if (v14)
        {
          v15 = sos_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v12;
            _os_log_error_impl(&dword_264323000, v15, OS_LOG_TYPE_ERROR, "Error retrieving SIM status for context: %@", buf, 0xCu);
          }

          v9 = v14;
        }

        else if ([v30 isEqualToString:v13])
        {
          v15 = sos_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v12;
            _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "kCTSIMSupportSIMStatusNotInserted for context: %@", buf, 0xCu);
          }

          v9 = 0;
        }

        else
        {
          v31 = 0;
          v15 = [clientCopy getSimLabel:v12 error:&v31];
          v16 = v31;
          v9 = v16;
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v19 = subscriptions;
            unique_id = [v15 unique_id];
            v21 = [unique_id isEqualToString:@"00000000-0000-0000-0000-000000000000"];

            v18 = sos_default_log();
            v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if ((v21 & 1) == 0)
            {
              if (v22)
              {
                unique_id2 = [v15 unique_id];
                *buf = 138412546;
                v39 = unique_id2;
                v40 = 2112;
                v41 = v12;
                _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "Successfully retrieved SIM label %@ for context: %@", buf, 0x16u);
              }

              v24 = 1;
              v4 = v28;
              subscriptions = v19;
              clientCopy = v29;
              goto LABEL_36;
            }

            if (v22)
            {
              unique_id3 = [v15 unique_id];
              *buf = 138412546;
              v39 = unique_id3;
              v40 = 2112;
              v41 = v12;
              _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "retrieved SIM label %@ for context: %@", buf, 0x16u);
            }

            subscriptions = v19;
            clientCopy = v29;
          }

          else
          {
            v18 = sos_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v12;
              _os_log_error_impl(&dword_264323000, v18, OS_LOG_TYPE_ERROR, "Error retrieving SIM label for context: %@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [subscriptions countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v24 = 0;
    v13 = v9;
    v4 = v28;
  }

  else
  {
    if (!v5)
    {
      v24 = 0;
      goto LABEL_39;
    }

    v13 = sos_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities hasActiveSIMForClient:];
    }

    v24 = 0;
  }

LABEL_36:

LABEL_38:
LABEL_39:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (BOOL)hasEmergencyContacts
{
  v2 = objc_alloc_init(SOSContactsManager);
  sOSContactsExist = [(SOSContactsManager *)v2 SOSContactsExist];

  return sOSContactsExist;
}

+ (NSString)emergencyContactsSectionDescription
{
  if ([self hasEmergencyContacts])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"EMERGENCY_CONTACTS" value:&stru_2875C9CD8 table:0];
  }

  else
  {
    v3 = &stru_2875C9CD8;
  }

  return v3;
}

+ (NSString)emergencyContactsEditDescription
{
  hasEmergencyContacts = [self hasEmergencyContacts];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (hasEmergencyContacts)
  {
    v5 = @"OPEN_HEALTH_HAS_EMERGENCY_CONTACTS";
  }

  else
  {
    v5 = @"OPEN_HEALTH_NO_EMERGENCY_CONTACTS";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (NSString)emergencyContactsFooterDescription
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOS_PRIVACY_EMERGENCY_CONTACTS" value:&stru_2875C9CD8 table:0];

  v5 = MEMORY[0x277CCACA8];
  emergencyContactsFooterLinkTitle = [self emergencyContactsFooterLinkTitle];
  v7 = [v5 stringWithFormat:v4, emergencyContactsFooterLinkTitle];

  return v7;
}

+ (NSString)emergencyContactsFooterLinkTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_PRIVACY_LINK" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (void)openEmergencyContactsFooterLinkOnViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.emergencysos"];
  [v4 setPresentingViewController:controllerCopy];

  [v4 present];
}

+ (NSString)callWithHoldTitleDescription
{
  [self clawReleaseToCallSupport];
  v3 = v2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 <= 1.0)
  {
    v6 = @"CALL_WITH_HOLD";
  }

  else
  {
    v6 = @"CALL_WITH_HOLD_AND_RELEASE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (NSString)callWithHoldFooterDescription
{
  [self clawReleaseToCallSupport];
  v3 = v2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 <= 1.0)
  {
    v6 = @"CALL_WITH_HOLD_FOOTER";
  }

  else
  {
    v6 = @"CALL_WITH_HOLD_AND_RELESE_FOOTER";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (BOOL)isCallWithVolumeLockHoldEnabled
{
  v3 = [self _sosPrefsValueForKey:@"SOSCallWithVolumeLockHoldKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else if ([self isDeviceD2xOrNewer])
  {
    v6 = [self _sosPrefsValueForKey:@"SOSAutomaticCallCountdownEnabledKey"];
    if (v6)
    {
      v7 = [self _sosPrefsValueForKey:@"SOSAutoCallD2xKey"];
      integerValue = [v7 integerValue];

      if (integerValue || ([self _setSOSPrefsValue:&unk_2875D2938 forKey:@"SOSAutoCallD2xKey"], (objc_msgSend(self, "mustAllowThreeClickTrigger") & 1) != 0) || (objc_msgSend(v6, "BOOLValue") & 1) != 0)
      {
        bOOLValue = [v6 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
        [self setCallWithVolumeLockHoldEnabled:1];
      }
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)clawReleaseToCallSupport
{
  v2 = [self _sosPrefsValueForKey:@"SOSClawReleaseToCallSupportKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

+ (NSString)pressSelectionGroupTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NUMBER_OF_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)threePressesSelectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"THREE_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fivePressesSelectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FIVE_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)callWithPressesTitleDescription
{
  if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v3 = @"CALL_WITH_THREE_PRESSES";
  }

  else
  {
    v3 = @"CALL_WITH_FIVE_PRESSES";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

  return v5;
}

+ (NSString)callWithPressesFooterDescription
{
  if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v3 = @"CALL_WITH_THREE_PRESSES_FOOTER";
  }

  else
  {
    v3 = @"CALL_WITH_FIVE_PRESSES_FOOTER";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

  return v5;
}

+ (BOOL)isCallWithSideButtonPressesEnabled
{
  mustAllowThreeClickTrigger = [self mustAllowThreeClickTrigger];
  v4 = [self _sosPrefsValueForKey:@"SOSCallWithSideButtonPressesKey"];
  v5 = [self _sosPrefsValueForKey:@"SOSAutomaticCallCountdownEnabledKey"];
  if (![self _potentialForAccessibilityConflict] || !objc_msgSend(self, "_hasAccessibilityConflict"))
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = v5;
    }

    mustAllowThreeClickTrigger = [v6 BOOLValue];
    goto LABEL_9;
  }

  [self setCallWithSideButtonPressesEnabled:0];
  mustAllowThreeClickTrigger = 0;
LABEL_9:
  if ([self isDeviceD2xOrNewer] && (objc_msgSend(self, "mustAllowThreeClickTrigger") & 1) == 0 && (objc_msgSend(self, "hasMultiPressResetLogicRun") & 1) == 0)
  {
    [self setHasMultiPressResetLogicRun:1];
    if (mustAllowThreeClickTrigger)
    {
      [self setCallWithSideButtonPressesEnabled:0];
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    [self setSettingsResetFollowUpState:v7];
    LOBYTE(mustAllowThreeClickTrigger) = 0;
  }

  return mustAllowThreeClickTrigger;
}

+ (NSString)autoCallTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"AUTO_CALL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)autoCallFooterDescription
{
  autoCallRequiresSIM = [self autoCallRequiresSIM];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (autoCallRequiresSIM)
  {
    v5 = @"AUTO_CALL_FOOTER_REQUIRE_SIM";
  }

  else
  {
    v5 = @"AUTO_CALL_FOOTER";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (BOOL)isAutomaticCallCountdownEnabled
{
  if ([self isDeviceD2xOrNewer])
  {

    return [self isCallWithVolumeLockHoldEnabled];
  }

  else
  {

    return [self isCallWithSideButtonPressesEnabled];
  }
}

+ (NSString)countdownSoundTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ALARM_SOUND" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)countdownSoundFooterDescription
{
  [self clawReleaseToCallSupport];
  if (v3 == 0.0)
  {
    v4 = @"ALARM_SOUND_FOOTER";
  }

  else if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v4 = @"ALARM_SOUND_RELEASE_TO_CALL_THREE_PRESSES_FOOTER";
  }

  else
  {
    v4 = @"ALARM_SOUND_RELEASE_TO_CALL_FIVE_PRESSES_FOOTER";
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (BOOL)shouldPlayAudioDuringCountdown
{
  if ([self shouldSilenceSOSFlow])
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSUtilities,SOS flow is silenced so audio during countdown is off", v8, 2u);
    }

    return 0;
  }

  else
  {
    v5 = [self _sosPrefsValueForKey:@"SOSPlayAudioDuringCountdownKey"];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x277CBEC38];
    }

    bOOLValue = [v6 BOOLValue];

    return bOOLValue;
  }
}

+ (NSString)accidentalCallNotificationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCIDENTAL_SOS_NOTIF_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)accidentalCallNotificationBody
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:1];
  v5 = [v4 stringFromDate:date];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setLocalizedDateFormatFromTemplate:@"j"];
  v7 = [v6 stringFromDate:date];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v28 = v7;
  v10 = [v7 componentsSeparatedByCharactersInSet:invertedSet];
  v11 = [v10 componentsJoinedByString:&stru_2875C9CD8];

  v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v13 = [v12 numberFromString:v11];

  mostRecentlyUsedSOSTriggerMechanism = [self mostRecentlyUsedSOSTriggerMechanism];
  intValue = [v13 intValue];
  v29 = invertedSet;
  if (mostRecentlyUsedSOSTriggerMechanism == 1)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (intValue == 1)
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_THREE_PRESSES_WITH_TIME_%@_SINGULAR";
    }

    else
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_THREE_PRESSES_WITH_TIME_%@_PLURAL";
    }
  }

  else
  {
    if (mostRecentlyUsedSOSTriggerMechanism != 2)
    {
      +[SOSUtilities clawReleaseToCallSupport];
      v20 = v19;
      v27 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v21;
      if (intValue == 1)
      {
        v22 = v28;
        if (v20 == 0.0)
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_WITH_TIME_%@_SINGULAR";
        }

        else
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_RELEASE_WITH_TIME_%@_SINGULAR";
        }
      }

      else
      {
        v22 = v28;
        if (v20 == 0.0)
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_WITH_TIME_%@_PLURAL";
        }

        else
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_RELEASE_WITH_TIME_%@_PLURAL";
        }
      }

      v24 = [v21 localizedStringForKey:v23 value:&stru_2875C9CD8 table:0];
      v25 = [v27 stringWithFormat:v24, v5];
      goto LABEL_18;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (intValue == 1)
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_FIVE_PRESSES_WITH_TIME_%@_SINGULAR";
    }

    else
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_FIVE_PRESSES_WITH_TIME_%@_PLURAL";
    }
  }

  v24 = [v17 localizedStringForKey:v18 value:&stru_2875C9CD8 table:0];
  v25 = [v16 stringWithFormat:v24, v5];
  v22 = v28;
LABEL_18:

  return v25;
}

+ (void)setShortSOSNotificationDisplayTimestamp
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [self _setSOSPrefsValue:v3 forKey:@"SOSNotificationDisplayedTimestampKey"];
}

+ (double)getShortSOSNotificationDisplayTimestamp
{
  v2 = [self _sosPrefsValueForKey:@"SOSNotificationDisplayedTimestampKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (NSString)accidentalCallFeedbackAssistantLegalText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCIDENTAL_SOS_FEEDBACK_ASSISTANT_LEGAL_TEXT" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)hasMultiPressResetLogicRun
{
  v3 = [self _sosPrefsValueForKey:@"SOSMultiPressResetKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    [self setHasMultiPressResetLogicRun:0];
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)getSettingsResetFollowUpState
{
  v3 = [self _sosPrefsValueForKey:@"SOSSettingsResetFollowUpStateKey"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else if ([self hasMultiPressResetLogicRun])
  {
    intValue = 4;
    [self setSettingsResetFollowUpState:4];
  }

  else
  {
    [self setSettingsResetFollowUpState:0];
    intValue = 0;
  }

  return intValue;
}

+ (void)setSettingsResetFollowUpState:(int64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSUtilities,setting FollowUp state to %ld", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [self _setSOSPrefsValue:v6 forKey:@"SOSSettingsResetFollowUpStateKey"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSSettingsResetFollowUpStateChangedNotification", 0, 0, 1u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (NSString)settingsResetFollowUpTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_BODY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpRedirectActionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_REDIRECT_ACTION_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpClearActionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_CLEAR_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)isAllowedToMessageSOSContacts
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [self _sosPrefsValueForKey:@"SOSAllowedToMessageSOSContactsKey"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  if ([self isActivePairedDeviceTinker])
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "This is Tinker config, allowing to message SOS contacts", v11, 2u);
    }

    v4 = MEMORY[0x277CBEC38];
  }

  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v4 BOOLValue];
    v11[0] = 67109120;
    v11[1] = bOOLValue;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "isAllowedToMessageSOSContacts: %d", v11, 8u);
  }

  bOOLValue2 = [v4 BOOLValue];
  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue2;
}

+ (BOOL)shouldSilenceSOSFlow
{
  if (![objc_opt_class() _isInternalDevice])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSSilenceSOSFlowKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isActivePairedDeviceTinker
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice valueForProperty:*MEMORY[0x277D37BB0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)activeDeviceSupportsNewton
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:2528173432];

  return v3;
}

+ (BOOL)activeDeviceSupportsNewtonWorkoutsOnly
{
  activeDeviceSupportsNewton = [self activeDeviceSupportsNewton];
  if (activeDeviceSupportsNewton)
  {
    activeDevice = [self activeDevice];
    v5 = [activeDevice supportsCapability:2554371099];

    LOBYTE(activeDeviceSupportsNewton) = v5;
  }

  return activeDeviceSupportsNewton;
}

+ (id)activeDevice
{
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  getActivePairedDeviceIncludingAltAccount = [mEMORY[0x277D37B50] getActivePairedDeviceIncludingAltAccount];

  v4 = [getActivePairedDeviceIncludingAltAccount valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = getActivePairedDeviceIncludingAltAccount;
  }

  v6 = v5;

  return v5;
}

+ (NSString)stewieGroupTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_ANIMATION_GROUP" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (UIImage)stewieGroupAsset
{
  UIImageClass = getUIImageClass();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [UIImageClass imageNamed:@"stewie-diagram" inBundle:v3 withConfiguration:0];

  return v4;
}

+ (NSString)stewieDemoCellText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_DEMO_CELL_TEXT" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (NSString)stewieDemoButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_DEMO_BUTTON_TITLE" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (NSString)stewieFooterDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STEWIE_FOOTNOTE_DESCRIPTION_%@" value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  stewieFooterLinkTitle = [self stewieFooterLinkTitle];
  v7 = [v3 localizedStringWithFormat:v5, stewieFooterLinkTitle];

  return v7;
}

+ (NSString)stewieFooterLinkTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_FOOTNOTE_LINK" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (void)presentStewieDemoUnavailableAlertOnViewController:(id)controller reason:(int64_t)reason
{
  v5 = MEMORY[0x277CCA8D8];
  controllerCopy = controller;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v16 = [v7 localizedStringForKey:@"STEWIE_DEMO_ERROR_ALERT_TITLE" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  if (reason > 0xB)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(&off_279B536E8 + reason);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  }

  v11 = [getUIAlertControllerClass() alertControllerWithTitle:v16 message:v10 preferredStyle:1];
  UIAlertActionClass = getUIAlertActionClass();
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"STEWIE_DEMO_ERROR_ALERT_OK" value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  v15 = [UIAlertActionClass actionWithTitle:v14 style:1 handler:&__block_literal_global_880];
  [v11 addAction:v15];

  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

+ (void)presentStewieLearnMoreLinkOnViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.safetyFeatures"];
  [v4 setPresentingViewController:controllerCopy];

  [v4 present];
}

+ (BOOL)kappaTriggersEmergencySOSTinker
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSKappaTriggersEmergencySOSKeyTinker"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  if ([v4 BOOLValue])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __46__SOSUtilities__setKappaTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSKappaTriggersEmergencySOSKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_887);
}

void __46__SOSUtilities__setKappaTriggersEmergencySOS___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSKappaStateChangedNotification", 0, 0, 1u);
}

void __52__SOSUtilities__setKappaTriggersEmergencySOSTinker___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _SOSDomainAccessor];
  v2 = [v1 synchronize];

  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"SOSKappaTriggersEmergencySOSKeyTinker"];
  [v3 synchronizeNanoDomain:@"com.apple.SOS" keys:v4];

  v5 = MEMORY[0x277D85CD0];

  dispatch_async(v5, &__block_literal_global_889);
}

void __52__SOSUtilities__setKappaTriggersEmergencySOSTinker___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSKappaStateChangedNotification", 0, 0, 1u);
}

+ (void)setKappaTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled confirmationDelegate:(id)delegate completion:(id)completion
{
  enabledCopy = enabled;
  sCopy = s;
  v38 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v12 = sos_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v35 = sCopy;
    *&v35[4] = 1024;
    *&v35[6] = enabledCopy;
    v36 = 2112;
    v37 = delegateCopy;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "setKappaTriggersEmergencySOS:%d isWristDetectionEnabled:%d confirmationDelegate:%@", buf, 0x18u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke;
  v33[3] = &__block_descriptor_40_e8_v12__0B8l;
  v33[4] = self;
  v13 = MEMORY[0x266735F90](v33);
  v14 = sos_default_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (sCopy)
  {
    if (v15)
    {
      *buf = 136315138;
      *v35 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "%s - no confirmation needed", buf, 0xCu);
    }

    v13[2](v13, 1);
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v25 = completionCopy;
    if (v15)
    {
      *buf = 136315138;
      *v35 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "%s - presenting 'are you sure?' confirmation", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v16 localizedStringForKey:@"SOS_KAPPA_CONFIRM_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v17 localizedStringForKey:@"SOS_KAPPA_CONFIRM_DETAIL_WATCH" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SOS_KAPPA_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_904;
    v30[3] = &unk_279B53470;
    v31 = v13;
    v32 = completionCopy;
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SOS_KAPPA_CONFIRM_OK" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_908;
    v26[3] = &unk_279B53498;
    v27 = v31;
    v29 = 0;
    v28 = v32;
    [delegateCopy presentConfirmationWithTitle:v24 message:v23 cancelTitle:v19 cancelHandler:v30 confirmTitle:v21 confirmHandler:v26];

    completionCopy = v25;
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) isActivePairedDeviceTinker];
  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 _setKappaTriggersEmergencySOSTinker:a2];
  }

  else
  {

    return [v5 _setKappaTriggersEmergencySOS:a2];
  }
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_904(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_908(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v6, 0xCu);
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)setKappaTriggersEmergencySOS:(BOOL)s confirmationDelegate:(id)delegate completion:(id)completion
{
  sCopy = s;
  v30 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v10 = sos_default_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!sCopy)
  {
    if (v11)
    {
      *buf = 136315138;
      v29 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - presenting 'are you sure?' confirmation", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v12 localizedStringForKey:@"SOS_KAPPA_CONFIRM_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    if ([self isKappaDetectionSupportedOnPhone] && (objc_msgSend(self, "isKappaDetectionSupportedOnActiveWatch") & 1) != 0)
    {
      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_BOTH";
    }

    else if ([self isKappaDetectionSupportedOnPhone])
    {
      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_PHONE";
    }

    else
    {
      if (![self isKappaDetectionSupportedOnActiveWatch])
      {
        v15 = &stru_2875C9CD8;
        goto LABEL_15;
      }

      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_WATCH";
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v13 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

LABEL_15:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SOS_KAPPA_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke;
    v25[3] = &unk_279B534C0;
    selfCopy = self;
    v26 = completionCopy;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SOS_KAPPA_CONFIRM_OK" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke_915;
    v22[3] = &unk_279B534C0;
    selfCopy2 = self;
    v23 = v26;
    [delegateCopy presentConfirmationWithTitle:v21 message:v15 cancelTitle:v17 cancelHandler:v25 confirmTitle:v19 confirmHandler:v22];

    goto LABEL_16;
  }

  if (v11)
  {
    *buf = 136315138;
    v29 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]";
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - no confirmation needed", buf, 0xCu);
  }

  [self _setKappaTriggersEmergencySOS:1];
  (*(completionCopy + 2))(completionCopy, 1);
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v5, 0xCu);
  }

  [*(a1 + 40) _setKappaTriggersEmergencySOS:1];
  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke_915(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v5, 0xCu);
  }

  [*(a1 + 40) _setKappaTriggersEmergencySOS:0];
  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isKappaDetectionSupportedOnCurrentDevice
{
  if (isKappaDetectionSupportedOnCurrentDevice_onceToken != -1)
  {
    +[SOSUtilities isKappaDetectionSupportedOnCurrentDevice];
  }

  return isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable;
}

void __56__SOSUtilities_isKappaDetectionSupportedOnCurrentDevice__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  if ((MGGetBoolAnswer() & 1) != 0 || (v0 = _os_feature_enabled_impl()) != 0)
  {
    LOBYTE(v0) = +[SOSUtilities isKappaVisible];
    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable = v0;
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109632;
    v4[1] = v1;
    v5 = 1024;
    v6 = +[SOSUtilities isKappaVisible];
    v7 = 1024;
    v8 = isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "_kappaDetectionAvailableOnCurrentDevice: deviceSupportsKappa:%{BOOL}d / isKappaVisible:%{BOOL}d => kappaDetectionAvailable:%{BOOL}d", v4, 0x14u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isKappaDetectionSupportedOnActiveWatch
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:2300382856];

  return v3;
}

+ (NSString)crashDetectionPhoneFooterDesription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_PHONE";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_PHONE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionPhoneWatchFooterDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_BOTH";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_BOTH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionTitleDescription
{
  if ([self isKappaUnmasked])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SOS_KAPPA_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  }

  else
  {
    v3 = @"Kappa";
  }

  return v3;
}

+ (NSString)crashDetectionSwitchDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionWatchFooterDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_WATCH";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_WATCH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionFooterLinkDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_LINK";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_LINK_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyCellTitle
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyNavigationTitle
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_NAVIGATION_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_ALERT_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (NSString)crashDetectionThirdPartyFooterDescriptionPhone
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_PHONE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_PHONE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyFooterDescriptionWatch
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_WATCH";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_WATCH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyShareDisableDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_SHARE_DISABLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (NSString)crashDetectionThirdPartyAppWithAccessDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_APP_WITH_ACCESS" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (id)crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:(id)name
{
  nameCopy = name;
  isKappaUnmasked = [self isKappaUnmasked];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (isKappaUnmasked)
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_PHONE";
  }

  else
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_PHONE_MASKED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  nameCopy = [v6 stringWithFormat:v10, nameCopy];

  return nameCopy;
}

+ (id)crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:(id)name
{
  nameCopy = name;
  isKappaUnmasked = [self isKappaUnmasked];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (isKappaUnmasked)
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_WATCH";
  }

  else
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_WATCH_MASKED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  nameCopy = [v6 stringWithFormat:v10, nameCopy];

  return nameCopy;
}

+ (id)crashDetectionThirdPartyBundleId
{
  crashDetectionManager = [getSABundleManagerClass() crashDetectionManager];
  approvedApps = [crashDetectionManager approvedApps];
  firstObject = [approvedApps firstObject];
  bundleId = [firstObject bundleId];

  return bundleId;
}

+ (void)thirdPartySettingsSpecifiersForRemoteDeviceWithTarget:(id)target forApp:(id)app disableAction:(SEL)action withCompletion:(id)completion
{
  targetCopy = target;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__SOSUtilities_thirdPartySettingsSpecifiersForRemoteDeviceWithTarget_forApp_disableAction_withCompletion___block_invoke;
  v14[3] = &unk_279B534E8;
  v15 = targetCopy;
  v16 = completionCopy;
  selfCopy = self;
  actionCopy = action;
  v12 = targetCopy;
  v13 = completionCopy;
  [app getLocalizedNameForPairedDeviceWithCompletion:v14];
}

void __106__SOSUtilities_thirdPartySettingsSpecifiersForRemoteDeviceWithTarget_forApp_disableAction_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) thirdPartySettingsSpecifiersWithTarget:*(a1 + 32) displayName:a2 forPairedDevice:1 disableAction:*(a1 + 56)];
  (*(v2 + 16))(v2, v3);
}

+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target forApp:(id)app disableAction:(SEL)action
{
  targetCopy = target;
  getLocalizedName = [app getLocalizedName];
  v10 = [self thirdPartySettingsSpecifiersWithTarget:targetCopy displayName:getLocalizedName forPairedDevice:0 disableAction:action];

  return v10;
}

+ (__CFBundle)getKappaThirdPartyActiveAppBundle
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D6C140];
  v3 = TCCAccessCopyInformation();
  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v22;
      v9 = MEMORY[0x277D6C0C8];
      v10 = MEMORY[0x277D6C0D0];
      *&v6 = 138412546;
      v20 = v6;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:{*v9, v20, v21}];

        v14 = CFBundleGetIdentifier(v13);
        v15 = [v12 objectForKeyedSubscript:*v10];
        bOOLValue = [v15 BOOLValue];

        v17 = sos_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = v14;
          v27 = 1024;
          v28 = bOOLValue;
          _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,getKappaThirdPartyActiveAppBundle, bundleID:%@, grant status: %d", buf, 0x12u);
        }

        if (((v13 != 0) & bOOLValue) != 0)
        {
          break;
        }

        if (v7 == ++v11)
        {
          v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v13 = 0;
    }
  }

  else
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,getKappaThirdPartyActiveAppBundle, No element registered for the service. Return nil app name", buf, 2u);
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (void)setKappaThirdPartyActive:(BOOL)active forApp:(id)app forPairedDevice:(BOOL)device presentConfirmationOnViewController:(id)controller completion:(id)completion
{
  deviceCopy = device;
  activeCopy = active;
  appCopy = app;
  controllerCopy = controller;
  completionCopy = completion;
  if (activeCopy)
  {
    v15 = sos_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,the request is invalid", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke;
    v19[3] = &unk_279B53538;
    selfCopy = self;
    v24 = deviceCopy;
    v20 = controllerCopy;
    v22 = completionCopy;
    v16 = appCopy;
    v21 = v16;
    v17 = MEMORY[0x266735F90](v19);
    if (deviceCopy)
    {
      [v16 getLocalizedNameForPairedDeviceWithCompletion:v17];
    }

    else
    {
      getLocalizedName = [v16 getLocalizedName];
      (v17)[2](v17, getLocalizedName);
    }
  }
}

void __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = a2;
  if ([v3 isDeviceWatchUsePairedDevice:v4])
  {
    [SOSUtilities crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:v5];
  }

  else
  {
    [SOSUtilities crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:v5];
  }
  v6 = ;

  v7 = *(a1 + 32);
  v8 = +[SOSUtilities crashDetectionThirdPartyAlertTitle];
  v9 = *(a1 + 56);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"KAPPA_THIRD_PARTY_STOP_SHARING_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_2;
  v18[3] = &unk_279B533E0;
  v19 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"KAPPA_THIRD_PARTY_STOP_SHARING_CONTINUE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_1018;
  v15[3] = &unk_279B53510;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  [SOSUtilities presentConfirmationOnViewController:v7 title:v8 message:v6 cancelTitle:v11 cancelHandler:v18 confirmTitle:v14 confirmHandler:v15];
}

uint64_t __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,No Selected on confirmation alert", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_1018(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = NSSelectorFromString(&cfstr_SetaccessForbu.isa);
  getSAAuthorizationClass();
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x277CBEAE8];
    v4 = [getSAAuthorizationClass() methodSignatureForSelector:v2];
    v5 = [v3 invocationWithMethodSignature:v4];

    [v5 setSelector:v2];
    [v5 setTarget:getSAAuthorizationClass()];
    v11 = 0;
    *buf = [*(a1 + 32) bundleId];
    [v5 setArgument:&v11 atIndex:2];
    [v5 setArgument:buf atIndex:3];
    [v5 invoke];
    [v5 getReturnValue:&v12];
  }

  else
  {
    v6 = *MEMORY[0x277D6C140];
    v7 = [*(a1 + 32) bundleId];
    v12 = TCCAccessSetForBundleId() != 0;
  }

  v8 = sos_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,revoking the right to receive kappa data completed with status:%d", buf, 8u);
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)activeDeviceSupportsMandrake
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:1262879885];

  return v3;
}

+ (BOOL)activeDeviceHasMandrake
{
  v16 = *MEMORY[0x277D85DE8];
  if ([self activeDeviceSupportsMandrake])
  {
    buf[0] = 0;
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDeviceExcludingAltAccount = [mEMORY[0x277D2BCF8] getActivePairedDeviceExcludingAltAccount];

    sharedDeviceConnection = [getACXDeviceConnectionClass() sharedDeviceConnection];
    v13 = 0;
    v5 = [sharedDeviceConnection getApplicationIsInstalled:buf withBundleID:@"com.apple.Mandrake" onPairedDevice:getActivePairedDeviceExcludingAltAccount error:&v13];
    v6 = v13;

    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v9 = buf[0];
    }

    else
    {
      v8 = sos_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities activeDeviceHasMandrake];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = sos_mandrake_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v9 & 1;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "activeDeviceHasMandrake:%{BOOL}d", buf, 8u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

+ (BOOL)longPressTriggersMandrake
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSLongPressTriggersMandrakeKey"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

void __45__SOSUtilities_setLongPressTriggersMandrake___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSLongPressTriggersMandrakeKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_1027);
}

void __45__SOSUtilities_setLongPressTriggersMandrake___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMandrakeStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)isSOSMessagesUrgentAlertingEnabled
{
  if (![self isSOSMessagesUrgentAlertingAvailable])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSMessagesUrgentAlertingEnabledKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

void __52__SOSUtilities_setSOSMessagesUrgentAlertingEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSMessagesUrgentAlertingEnabledKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_1029);
}

void __52__SOSUtilities_setSOSMessagesUrgentAlertingEnabled___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMessagesUrgentAlertingStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)sosMessagesUrgentAlertingBypassesMute
{
  if (![self isSOSMessagesUrgentAlertingAvailable])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSMessagesUrgentAlertingBypassesMuteKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

void __57__SOSUtilities_setSOSMessagesUrgentAlertingBypassesMute___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSMessagesUrgentAlertingBypassesMuteKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_1031);
}

void __57__SOSUtilities_setSOSMessagesUrgentAlertingBypassesMute___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMessagesUrgentAlertingStateChangedNotification", 0, 0, 1u);
}

+ (NSString)sosLocationSharingLiveActivityAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_ALERT_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)sosLocationSharingLiveActivityAlertBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_ALERT_BODY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)sosLocationSharingLiveActivityDetail
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_DETAIL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (id)sosLocationBundle
{
  if (sosLocationBundle_onceToken != -1)
  {
    +[SOSUtilities sosLocationBundle];
  }

  v3 = sosLocationBundle___bundle;

  return v3;
}

void __33__SOSUtilities_sosLocationBundle__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:8];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v13 + 1) + 8 * v6) URLByAppendingPathComponent:{@"LocationBundles", v13}];
      v8 = [v7 URLByAppendingPathComponent:@"Emergency SOS.bundle"];
      v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
      v10 = sosLocationBundle___bundle;
      sosLocationBundle___bundle = v9;

      v11 = sosLocationBundle___bundle;
      if (v11)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)fetchSOSStatusWithKey:(id)key
{
  v19[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [self _sosPrefsValueForKey:keyCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v9 = [v7 initWithArray:v8];
    v18 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v18];
    v11 = v18;

    if (v10)
    {
      isValid = [v10 isValid];
      v13 = sos_default_log();
      v14 = v13;
      if ((isValid & 1) == 0)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[SOSUtilities fetchSOSStatusWithKey:];
        }

        [self _setSOSPrefsValue:0 forKey:keyCopy];
        v15 = 0;
        goto LABEL_15;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[SOSUtilities fetchSOSStatusWithKey:];
      }
    }

    else
    {
      v14 = sos_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities fetchSOSStatusWithKey:];
      }
    }

    v15 = v10;
LABEL_15:

    goto LABEL_16;
  }

  v11 = sos_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SOSUtilities fetchSOSStatusWithKey:v11];
  }

  v15 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)setSOSStatus:(id)status withKey:(id)key
{
  statusCopy = status;
  keyCopy = key;
  v14 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:statusCopy requiringSecureCoding:1 error:&v14];
  v9 = v14;
  v10 = sos_default_log();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[SOSUtilities setSOSStatus:withKey:];
    }

    [self _setSOSPrefsValue:v8 forKey:keyCopy];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities setSOSStatus:withKey:];
    }
  }

  v12 = dispatch_get_global_queue(2, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__SOSUtilities_setSOSStatus_withKey___block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = self;
  dispatch_async(v12, v13);
}

+ (BOOL)isMessagesAppInstalled
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  return v3;
}

+ (BOOL)isMessagesHandlingSMS
{
  v20 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v3 = defaultWorkspace;
    if (defaultWorkspace)
    {
      if (([defaultWorkspace canChangeDefaultAppForCategory:10]& 1) != 0)
      {
        v15 = 0;
        v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.MobileSMS" allowPlaceholder:0 error:&v15];
        v5 = v15;
        if (v4)
        {
          defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v14 = v5;
          v7 = [defaultWorkspace2 defaultApplicationForCategory:10 error:&v14];
          v8 = v14;

          v9 = [v7 isEqual:v4];
          v10 = sos_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v17 = "+[SOSUtilities isMessagesHandlingSMS]";
            v18 = 1024;
            LODWORD(v19) = v9;
            _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - %d", buf, 0x12u);
          }

          v5 = v8;
        }

        else
        {
          v7 = sos_default_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v17 = "+[SOSUtilities isMessagesHandlingSMS]";
            v18 = 2112;
            v19 = v5;
            _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "%s - Can't find application record for Messages, error %@", buf, 0x16u);
          }

          LOBYTE(v9) = 0;
        }

        goto LABEL_21;
      }

      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "+[SOSUtilities isMessagesHandlingSMS]";
        v11 = "%s - Can't change default app so behaving as if Messages is the default";
        goto LABEL_15;
      }
    }

    else
    {
      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "+[SOSUtilities isMessagesHandlingSMS]";
        v11 = "%s - assuming YES";
LABEL_15:
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    LOBYTE(v9) = 1;
LABEL_21:

    goto LABEL_22;
  }

  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "+[SOSUtilities isMessagesHandlingSMS]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - FF is off", buf, 0xCu);
  }

  LOBYTE(v9) = 1;
LABEL_22:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)_isCarryDevice
{
  v2 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v3 = [v2 isEqualToString:@"walkabout"];

  return v3;
}

+ (id)_overrideForDefaultsKey:(id)key expectedClass:(Class)class defaultValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (![self _isInternalDevice])
  {
    goto LABEL_9;
  }

  v9 = [SOSUtilities _sosPrefsValueForKey:keyCopy];
  v10 = sos_config_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543874;
    v15 = keyCopy;
    v16 = 2114;
    v17 = valueCopy;
    v18 = 2114;
    v19 = v9;
    _os_log_debug_impl(&dword_264323000, v10, OS_LOG_TYPE_DEBUG, "#debugOverride - _overrideForDefaultsKey:%{public}@ (default %{public}@, testing %{public}@)", &v14, 0x20u);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    v9 = valueCopy;
    goto LABEL_10;
  }

  v11 = sos_config_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = keyCopy;
    v16 = 2114;
    v17 = valueCopy;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "#debugOverride - _overrideForDefaultsKey:%{public}@ (%{public}@ => %{public}@)", &v14, 0x20u);
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [self _overrideForDefaultsKey:keyCopy expectedClass:objc_opt_class() defaultValue:valueCopy];

  return v8;
}

+ (id)stringOverrideForDefaultsKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [self _overrideForDefaultsKey:keyCopy expectedClass:objc_opt_class() defaultValue:valueCopy];

  return v8;
}

+ (BOOL)isMountStateTrackingEnabled
{
  v2 = [self _sosPrefsValueForKey:@"SOSMountStateTrackingKey"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)mountProbabilityThreshold
{
  v2 = [self _sosPrefsValueForKey:@"SOSMountProbabilityThresholdKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.75;
  }

  return v5;
}

+ (void)setNumberOfSideButtonPresses:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)hasActiveSIMForClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)shouldShowCrashDetectionThirdPartySettingsForPairedDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)thirdPartySettingsSpecifiersWithTarget:displayName:forPairedDevice:disableAction:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(SOSUtilities *)v0];
}

+ (void)activeDeviceHasMandrake
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchSOSStatusWithKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchSOSStatusWithKey:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_264323000, v0, OS_LOG_TYPE_DEBUG, "%s - loaded SOS status, sosStatus: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)fetchSOSStatusWithKey:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchSOSStatusWithKey:(os_log_t)log .cold.4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[SOSUtilities fetchSOSStatusWithKey:]";
  _os_log_debug_impl(&dword_264323000, log, OS_LOG_TYPE_DEBUG, "%s - no SOS status found", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)setSOSStatus:withKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_264323000, v0, OS_LOG_TYPE_DEBUG, "%s - saving SOS status, sosStatus: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)setSOSStatus:withKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end