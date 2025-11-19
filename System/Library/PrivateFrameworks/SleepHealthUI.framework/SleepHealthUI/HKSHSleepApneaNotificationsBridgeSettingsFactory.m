@interface HKSHSleepApneaNotificationsBridgeSettingsFactory
- (BOOL)_areNotificationsOnboarded;
- (BOOL)_isFeatureOnboardedAndAvailableWithIsOnboarded:(BOOL)a3 requirementsEvaluation:(id)a4;
- (HKSHSleepApneaNotificationsBridgeSettingsFactory)initWithFeatureStatus:(id)a3;
- (id)_genericBridgeSettingFooter;
- (id)_regionGatedBridgeSettingFooter;
- (id)_remoteDisabledBridgeSettingFooter;
- (id)_requirementsEvaluationForIsOnboarded:(BOOL)a3;
- (id)_seedExpiredBridgeSettingFooter;
- (id)_sleepTrackingDisabledBridgeSettingFooter;
- (id)_wristDetectionDisabledBridgeSettingFooter;
- (id)bridgeSettings;
@end

@implementation HKSHSleepApneaNotificationsBridgeSettingsFactory

- (HKSHSleepApneaNotificationsBridgeSettingsFactory)initWithFeatureStatus:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKSHSleepApneaNotificationsBridgeSettingsFactory;
  v5 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)v5 setFeatureStatus:v4];
  }

  return v6;
}

- (id)bridgeSettings
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _areNotificationsOnboarded];
  v4 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _requirementsEvaluationForIsOnboarded:v3];
  if ([(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _isFeatureOnboardedAndAvailableWithIsOnboarded:v3 requirementsEvaluation:v4])
  {
    v5 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v6 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _genericBridgeSettingFooter];
    v7 = [(HKSHSleepApneaNotificationsBridgeSettings *)v5 initWithSettingVisible:1 settingEnabled:1 showOnboarding:0 footer:v6];

    goto LABEL_31;
  }

  v8 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]];
  v9 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]];
  v10 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF0]];
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || (v10 & 1) == 0)
  {
    v7 = +[HKSHSleepApneaNotificationsBridgeSettings hiddenSettings];
    goto LABEL_31;
  }

  v12 = MEMORY[0x277CCBF08];
  if (!v3)
  {
    v12 = MEMORY[0x277CCBF20];
  }

  v13 = *v12;
  if (v3)
  {
    v14 = MEMORY[0x277CCBF00];
  }

  else
  {
    v14 = MEMORY[0x277CCBF18];
  }

  v15 = v13;
  v16 = *v14;
  v17 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF10]];
  v38 = v15;
  v18 = [v4 isRequirementSatisfiedWithIdentifier:v15];
  v19 = [v4 isRequirementSatisfiedWithIdentifier:v16];
  v20 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]];
  v21 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];
  v22 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  v23 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFC0]];
  if (!v18 || (v19 & 1) == 0)
  {
    v25 = v3 | v17;
    v26 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v27 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _regionGatedBridgeSettingFooter];
    v28 = v25;
    v29 = v3 ^ 1;
    v30 = v26;
LABEL_29:
    v7 = [(HKSHSleepApneaNotificationsBridgeSettings *)v30 initWithSettingVisible:v28 settingEnabled:0 showOnboarding:v29 footer:v27];

    goto LABEL_30;
  }

  if ((v20 & 1) == 0)
  {
    v31 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v32 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _remoteDisabledBridgeSettingFooter];
LABEL_28:
    v27 = v32;
    v29 = v3 ^ 1;
    v30 = v31;
    v28 = 1;
    goto LABEL_29;
  }

  if ((v21 & 1) == 0)
  {
    v31 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v32 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _seedExpiredBridgeSettingFooter];
    goto LABEL_28;
  }

  if ((v23 & 1) == 0)
  {
    v31 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v32 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _sleepTrackingDisabledBridgeSettingFooter];
    goto LABEL_28;
  }

  if ((v22 & 1) == 0)
  {
    v31 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
    v32 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _wristDetectionDisabledBridgeSettingFooter];
    goto LABEL_28;
  }

  if (v3)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (![v4 areAllRequirementsSatisfied])
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_INFO))
    {
LABEL_37:
      v36 = v24;
      *buf = 138412290;
      v40 = objc_opt_class();
      v37 = v40;
      _os_log_impl(&dword_269C18000, v36, OS_LOG_TYPE_INFO, "[%@]: Requested bridge settings for unknown feature state", buf, 0xCu);
    }

LABEL_38:
    v7 = +[HKSHSleepApneaNotificationsBridgeSettings hiddenSettings];
    goto LABEL_30;
  }

  v34 = [HKSHSleepApneaNotificationsBridgeSettings alloc];
  v35 = [(HKSHSleepApneaNotificationsBridgeSettingsFactory *)self _genericBridgeSettingFooter];
  v7 = [(HKSHSleepApneaNotificationsBridgeSettings *)v34 initWithSettingVisible:1 settingEnabled:1 showOnboarding:1 footer:v35];

LABEL_30:
LABEL_31:

  return v7;
}

- (BOOL)_areNotificationsOnboarded
{
  if (![(HKFeatureStatus *)self->_featureStatus isOnboardingRecordPresent])
  {
    return 0;
  }

  v3 = [(HKFeatureStatus *)self->_featureStatus onboardingRecord];
  v4 = [v3 onboardingState] != 1;

  return v4;
}

- (id)_requirementsEvaluationForIsOnboarded:(BOOL)a3
{
  v3 = a3;
  v4 = [(HKFeatureStatus *)self->_featureStatus requirementsEvaluationByContext];
  v5 = v4;
  v6 = MEMORY[0x277CCBEA0];
  if (!v3)
  {
    v6 = MEMORY[0x277CCBE38];
  }

  v7 = [v4 objectForKeyedSubscript:*v6];

  return v7;
}

- (BOOL)_isFeatureOnboardedAndAvailableWithIsOnboarded:(BOOL)a3 requirementsEvaluation:(id)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v4 = [a4 unsatisfiedRequirementIdentifiers];
  if ([v4 count])
  {
    v8[0] = *MEMORY[0x277CCBF38];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v6 = [v4 isEqualToArray:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_genericBridgeSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SLEEP_APNEA_ENABLED_FOOTER_LINK_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SLEEP_APNEA_FOOTER_FORMAT_STRING" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_ENABLED_FOOTER_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v9 = [v4 stringWithFormat:v6, v8, v3];

  v10 = [HKSHSleepApneaNotificationsFooter alloc];
  v11 = HKSPSleepURL();
  v12 = [v11 absoluteString];
  v13 = [(HKSHSleepApneaNotificationsFooter *)v10 initWithText:v9 link:v3 url:v12];

  return v13;
}

- (id)_regionGatedBridgeSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SLEEP_APNEA_DISABLED_FOOTER_LINK_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SLEEP_APNEA_FOOTER_FORMAT_STRING" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_FEATURE_REGION_GATED_FOOTER_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v9 = [v4 stringWithFormat:v6, v8, v3];

  v10 = [HKSHSleepApneaNotificationsFooter alloc];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SLEEP_APNEA_NOTIFICATIONS_REGION_GATED_URL" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v13 = [(HKSHSleepApneaNotificationsFooter *)v10 initWithText:v9 link:v3 url:v12];

  return v13;
}

- (id)_remoteDisabledBridgeSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SLEEP_APNEA_DISABLED_FOOTER_LINK_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SLEEP_APNEA_FOOTER_FORMAT_STRING" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_FEATURE_REMOTE_DISABLED_FOOTER_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v9 = [v4 stringWithFormat:v6, v8, v3];

  v10 = [HKSHSleepApneaNotificationsFooter alloc];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SLEEP_APNEA_NOTIFICATIONS_REGION_GATED_URL" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v13 = [(HKSHSleepApneaNotificationsFooter *)v10 initWithText:v9 link:v3 url:v12];

  return v13;
}

- (id)_seedExpiredBridgeSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SLEEP_APNEA_DISABLED_FOOTER_LINK_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SLEEP_APNEA_FOOTER_FORMAT_STRING" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_SEED_EXPIRED_FOOTER_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v9 = [v4 stringWithFormat:v6, v8, v3];

  v10 = [HKSHSleepApneaNotificationsFooter alloc];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SLEEP_APNEA_NOTIFICATIONS_SEED_EXPIRED_URL" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v13 = [(HKSHSleepApneaNotificationsFooter *)v10 initWithText:v9 link:v3 url:v12];

  return v13;
}

- (id)_sleepTrackingDisabledBridgeSettingFooter
{
  v2 = [HKSHSleepApneaNotificationsFooter alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SLEEP_APNEA_SLEEP_TRACKING_DISABLED_FOOTER_TEXT" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v5 = [(HKSHSleepApneaNotificationsFooter *)v2 initWithText:v4 link:0 url:0];

  return v5;
}

- (id)_wristDetectionDisabledBridgeSettingFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PASSCODE_SETTINGS" value:&stru_287AAA530 table:@"Localizable-Nebula"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SLEEP_APNEA_WRIST_DETECTION_DISABLED_DESCRIPTION_FOOTER_TEXT_%@" value:&stru_287AAA530 table:@"Localizable-Nebula"];
  v7 = [v4 stringWithFormat:v6, v3];

  v8 = [[HKSHSleepApneaNotificationsFooter alloc] initWithText:v7 link:v3 url:@"bridge:root=PASSCODE_ID"];

  return v8;
}

@end