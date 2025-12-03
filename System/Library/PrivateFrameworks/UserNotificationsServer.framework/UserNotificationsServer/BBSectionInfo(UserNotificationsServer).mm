@interface BBSectionInfo(UserNotificationsServer)
- (id)_uns_muteAssertion;
- (id)uns_bundlePath;
- (id)uns_notificationSource;
- (id)uns_settingsIcon;
- (id)uns_topicSettings;
- (uint64_t)uns_BBSectionAnnounceSettingForUNNotificationSetting:()UserNotificationsServer;
- (uint64_t)uns_BBSectionInfoSettingForUNNotificationSetting:()UserNotificationsServer;
- (uint64_t)uns_notificationSettingForBBSectionAnnounceSetting:()UserNotificationsServer;
- (uint64_t)uns_notificationSettingForBBSectionInfoSetting:()UserNotificationsServer;
- (uint64_t)uns_notificationSettings;
- (uint64_t)uns_setPropertiesFromAuthorizationOptions:()UserNotificationsServer supportsProvisionalAlerts:;
- (void)uns_setPropertiesFromNotificationSettings:()UserNotificationsServer systemSettings:;
- (void)uns_setPropertiesFromSourceSettingsDescription:()UserNotificationsServer;
- (void)uns_setPropertiesFromTopicRecord:()UserNotificationsServer;
@end

@implementation BBSectionInfo(UserNotificationsServer)

- (uint64_t)uns_notificationSettings
{
  alertType = [self alertType];
  pushSettings = [self pushSettings];
  authorizationStatus = [self authorizationStatus];
  if ((authorizationStatus - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = authorizationStatus;
  }

  sectionInfoSettings = [self sectionInfoSettings];
  isAuthorizedTemporarily = [sectionInfoSettings isAuthorizedTemporarily];

  if (isAuthorizedTemporarily)
  {
    v8 = 4;
  }

  else
  {
    v8 = v5;
  }

  v9 = pushSettings << 61;
  v10 = 2 * (alertType == 2);
  if (alertType == 1)
  {
    v10 = 1;
  }

  v33 = v10 & (v9 >> 63);
  v34 = v8;
  v31 = UNShowPreviewsSettingFromBBContentPreviewSetting([self contentPreviewSetting]);
  v26 = UNNotificationGroupingSettingFromBBBulletinGroupingSetting([self bulletinGroupingSetting]);
  if ((pushSettings & 0x10) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v32 = v11 & (pushSettings << 62 >> 63);
  if ((pushSettings & 8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v28 = v12;
  v29 = pushSettings << 63 >> 63;
  if (alertType)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v30 = v13 & (v9 >> 63);
  v27 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "notificationCenterSetting")}];
  v25 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "lockScreenSetting")}];
  v14 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "carPlaySetting")}];
  v15 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "remoteNotificationsSetting")}];
  v16 = [self uns_notificationSettingForBBSectionAnnounceSetting:{objc_msgSend(self, "announceSetting")}];
  v17 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "criticalAlertSetting")}];
  v18 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "timeSensitiveSetting")}];
  v19 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "scheduledDeliverySetting")}];
  v20 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "directMessagesSetting")}];
  v21 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "summarizationSetting")}];
  v22 = [self uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(self, "prioritizationSetting")}];
  LOBYTE(v24) = [self showsCustomSettingsLink];
  return [MEMORY[0x277CE1FD0] settingsWithAuthorizationStatus:v34 soundSetting:v32 badgeSetting:v29 & v28 alertSetting:v30 notificationCenterSetting:v27 lockScreenSetting:v25 carPlaySetting:v14 remoteNotificationsSetting:v15 announcementSetting:v16 criticalAlertSetting:v17 timeSensitiveSetting:v18 scheduledDeliverySetting:v19 directMessagesSetting:v20 summarizationSetting:v21 prioritizationSetting:v22 alertStyle:v33 showPreviewsSetting:v31 groupingSetting:v26 providesAppNotificationSettings:v24];
}

- (id)uns_notificationSource
{
  uns_notificationSettings = [self uns_notificationSettings];
  uns_topicSettings = [self uns_topicSettings];
  v4 = objc_alloc(MEMORY[0x277D77F80]);
  _uns_muteAssertion = [self _uns_muteAssertion];
  v6 = [v4 initWithNotificationSettings:uns_notificationSettings topicSettings:uns_topicSettings muteAssertion:_uns_muteAssertion isRestricted:*&self[*MEMORY[0x277CF35B8]] != 0];

  uns_settingsIcon = [self uns_settingsIcon];
  displayName = [self displayName];
  if ([displayName length])
  {
    [self displayName];
  }

  else
  {
    [self appName];
  }
  v9 = ;

  v10 = objc_alloc(MEMORY[0x277D77F70]);
  sectionID = [self sectionID];
  suppressFromSettings = [self suppressFromSettings];
  uns_bundlePath = [self uns_bundlePath];
  v14 = [v10 initWithIdentifier:sectionID isHidden:suppressFromSettings displayName:v9 icon:uns_settingsIcon settings:v6 bundlePath:uns_bundlePath];

  return v14;
}

- (id)uns_bundlePath
{
  v2 = MEMORY[0x277CC1E70];
  sectionID = [self sectionID];
  v4 = [v2 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:sectionID];

  if (v4)
  {
    icon = [v4 URL];
    path = [icon path];
  }

  else
  {
    icon = [self icon];
    v7 = [icon _bestVariantForFormat:1];
    path = [v7 bundlePath];
  }

  return path;
}

- (id)uns_settingsIcon
{
  v2 = MEMORY[0x277CC1E70];
  sectionID = [self sectionID];
  v4 = [v2 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:sectionID];

  if (v4)
  {
    v5 = MEMORY[0x277CE1FB0];
    sectionID2 = [self sectionID];
    imagePath = [v5 iconForApplicationIdentifier:sectionID2];
    goto LABEL_7;
  }

  sectionID2 = [self icon];
  v8 = [sectionID2 _bestVariantForFormat:1];
  imageData = [v8 imageData];

  if (imageData)
  {
    v10 = MEMORY[0x277CE1FB0];
    iconData = [self iconData];
    v12 = [v10 iconWithData:iconData];
  }

  else
  {
    bundlePath = [v8 bundlePath];
    if (bundlePath && (v15 = bundlePath, [v8 imageName], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = MEMORY[0x277CE1FB0];
      iconData = [v8 imageName];
      v12 = [v17 iconNamed:iconData];
    }

    else
    {
      imagePath = [v8 imagePath];

      if (!imagePath)
      {
        goto LABEL_6;
      }

      v18 = MEMORY[0x277CE1FB0];
      iconData = [v8 imagePath];
      v12 = [v18 iconAtPath:iconData];
    }
  }

  imagePath = v12;

LABEL_6:
LABEL_7:

  return imagePath;
}

- (id)_uns_muteAssertion
{
  muteAssertion = [self muteAssertion];
  if (muteAssertion)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = MEMORY[0x277D77F78];
      expirationDate = [muteAssertion expirationDate];
      v4 = [v2 sourceMuteAssertionUntilDate:expirationDate];
LABEL_6:
      v6 = v4;

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D77F90];
      expirationDate = [muteAssertion expirationDateByThreadID];
      v4 = [v5 threadsMuteAssertionWithExpirationDateByThreadID:expirationDate];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)uns_topicSettings
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(self + *MEMORY[0x277CF35C0]);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = MEMORY[0x277CE1FE8];
        subsectionID = [v7 subsectionID];
        displayName = [v7 displayName];
        v11 = [v8 topicWithIdentifier:subsectionID displayName:displayName priority:objc_msgSend(v7 sortIdentifier:{"subsectionPriority"), &stru_288095958}];

        uns_notificationSettings = [v7 uns_notificationSettings];
        _uns_muteAssertion = [v7 _uns_muteAssertion];
        v14 = [objc_alloc(MEMORY[0x277D77F98]) initWithTopic:v11 settings:uns_notificationSettings muteAssertion:_uns_muteAssertion];
        [v2 addObject:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)uns_setPropertiesFromAuthorizationOptions:()UserNotificationsServer supportsProvisionalAlerts:
{
  pushSettings = [self pushSettings];
  authorizationStatus = [self authorizationStatus];
  carPlaySetting = [self carPlaySetting];
  v10 = carPlaySetting;
  if ((a3 & 8) != 0 && !carPlaySetting)
  {
    if ([self authorizationStatus] == 3)
    {
      v11 = a4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  remoteNotificationsSetting = [self remoteNotificationsSetting];
  if (!remoteNotificationsSetting)
  {
    if ([self authorizationStatus] == 3)
    {
      v13 = a4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      remoteNotificationsSetting = 2;
    }

    else
    {
      remoteNotificationsSetting = 1;
    }
  }

  criticalAlertSetting = [self criticalAlertSetting];
  timeSensitiveSetting = [self timeSensitiveSetting];
  announceSetting = [self announceSetting];
  if (!announceSetting)
  {
    if (timeSensitiveSetting >= 2)
    {
      if ([self authorizationStatus] == 3)
      {
        v17 = a4;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        announceSetting = 2;
      }

      else
      {
        announceSetting = 1;
      }
    }

    else
    {
      announceSetting = 1;
    }
  }

  v18 = pushSettings | a3;
  if (authorizationStatus == 3)
  {
    v19 = a4;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = (pushSettings | (8 * (v18 ^ pushSettings))) & 0x38;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFFF8 | v18 & 7;
  showsCustomSettingsLink = [self showsCustomSettingsLink];
  v23 = (a3 >> 5) & 1;
  if (((criticalAlertSetting == 0) & (a3 >> 4)) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = criticalAlertSetting;
  }

  [self setPushSettings:v21];
  [self setCarPlaySetting:v10];
  [self setRemoteNotificationsSetting:remoteNotificationsSetting];
  [self setAnnounceSetting:announceSetting];
  [self setCriticalAlertSetting:v24];
  [self setTimeSensitiveSetting:timeSensitiveSetting];

  return [self setShowsCustomSettingsLink:v23 | showsCustomSettingsLink];
}

- (void)uns_setPropertiesFromNotificationSettings:()UserNotificationsServer systemSettings:
{
  v23 = a3;
  v6 = a4;
  authorizationStatus = [v23 authorizationStatus];
  if ((authorizationStatus - 1) >= 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = authorizationStatus;
  }

  [self setAuthorizationStatus:v8];
  soundSetting = [v23 soundSetting];
  v10 = 2;
  if (soundSetting == 2)
  {
    v10 = 18;
  }

  if (soundSetting)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  alertSetting = [v23 alertSetting];
  v13 = 4;
  if (alertSetting == 2)
  {
    v13 = 36;
  }

  if (!alertSetting)
  {
    v13 = 0;
  }

  v14 = v13 | v11;
  badgeSetting = [v23 badgeSetting];
  v16 = 9;
  if (badgeSetting != 2)
  {
    v16 = 1;
  }

  if (!badgeSetting)
  {
    v16 = 0;
  }

  [self setPushSettings:v14 | v16];
  alertStyle = [v23 alertStyle];
  v18 = 1;
  if (alertStyle == 2)
  {
    v18 = 2;
  }

  if (alertStyle)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [self setAlertType:v19];
  v20 = BBContentPreviewSettingFromUNShowPreviewsSetting([v23 showPreviewsSetting]);
  showPreviewsSetting = [v6 showPreviewsSetting];

  if (v20 == BBContentPreviewSettingFromUNShowPreviewsSetting(showPreviewsSetting))
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  [self setContentPreviewSetting:v22];
  [self setBulletinGroupingSetting:{BBBulletinGroupingSettingFromUNNotificationGroupingSetting(objc_msgSend(v23, "groupingSetting"))}];
  [self setNotificationCenterSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "notificationCenterSetting"))}];
  [self setLockScreenSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "lockScreenSetting"))}];
  [self setCarPlaySetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "carPlaySetting"))}];
  [self setRemoteNotificationsSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "remoteNotificationsSetting"))}];
  [self setCriticalAlertSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "criticalAlertSetting"))}];
  [self setShowsCustomSettingsLink:{objc_msgSend(v23, "providesAppNotificationSettings")}];
  if ([v23 announcementSetting])
  {
    [self setAnnounceSetting:{objc_msgSend(self, "uns_BBSectionAnnounceSettingForUNNotificationSetting:", objc_msgSend(v23, "announcementSetting"))}];
  }

  if ([v23 scheduledDeliverySetting])
  {
    [self setScheduledDeliverySetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "scheduledDeliverySetting"))}];
  }

  if ([v23 summarizationSetting])
  {
    [self setSummarizationSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "summarizationSetting"))}];
  }

  if ([v23 prioritizationSetting])
  {
    [self setPrioritizationSetting:{objc_msgSend(self, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "prioritizationSetting"))}];
  }
}

- (uint64_t)uns_notificationSettingForBBSectionInfoSetting:()UserNotificationsServer
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (uint64_t)uns_BBSectionInfoSettingForUNNotificationSetting:()UserNotificationsServer
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (uint64_t)uns_BBSectionAnnounceSettingForUNNotificationSetting:()UserNotificationsServer
{
  if (a3 != 2)
  {
    return a3 == 1;
  }

  if ([self timeSensitiveSetting] == 2)
  {
    return 2;
  }

  return 3;
}

- (uint64_t)uns_notificationSettingForBBSectionAnnounceSetting:()UserNotificationsServer
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6D68[a3 - 1];
  }
}

- (void)uns_setPropertiesFromSourceSettingsDescription:()UserNotificationsServer
{
  v18 = a3;
  if ([v18 supportsAlerts])
  {
    if ([v18 modalAlertStyle])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = 36;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if ([v18 supportsBadges])
  {
    v5 |= 9uLL;
  }

  if ([v18 supportsSounds])
  {
    v6 = v5 | 0x12;
  }

  else
  {
    v6 = v5;
  }

  if ([v18 supportsLockScreen])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([v18 supportsNotificationCenter])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if ([v18 supportsCarPlay])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  supportsTimeSensitive = [v18 supportsTimeSensitive];
  supportsSpoken = [v18 supportsSpoken];
  v12 = supportsTimeSensitive == 0;
  if (supportsTimeSensitive)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  if (!v12)
  {
    v14 = 2;
  }

  if (supportsSpoken)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  alwaysShowPreviews = [v18 alwaysShowPreviews];
  providesAppNotificationSettings = [v18 providesAppNotificationSettings];
  [self setPushSettings:v6];
  [self setLockScreenSetting:v7];
  [self setNotificationCenterSetting:v8];
  [self setCarPlaySetting:v9];
  [self setRemoteNotificationsSetting:2];
  [self setAnnounceSetting:v15];
  [self setAlertType:v4];
  [self setContentPreviewSetting:alwaysShowPreviews];
  [self setShowsCustomSettingsLink:providesAppNotificationSettings];
  [self setTimeSensitiveSetting:v13];
}

- (void)uns_setPropertiesFromTopicRecord:()UserNotificationsServer
{
  v14 = a3;
  [self setAllowsNotifications:{objc_msgSend(v14, "enablesAlerts")}];
  if ([v14 supportsAlerts])
  {
    if ([v14 enablesAlerts])
    {
      if ([v14 modalAlertStyle])
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      v5 = 36;
    }

    else
    {
      v4 = 0;
      v5 = 4;
    }
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if ([v14 supportsBadges])
  {
    enablesBadges = [v14 enablesBadges];
    v7 = 9;
    if (!enablesBadges)
    {
      v7 = 1;
    }

    v5 |= v7;
  }

  if ([v14 supportsSounds])
  {
    enablesSounds = [v14 enablesSounds];
    v9 = 2;
    if (enablesSounds)
    {
      v9 = 18;
    }

    v5 |= v9;
  }

  if ([v14 supportsLockScreen])
  {
    if ([v14 enablesLockScreen])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if ([v14 supportsNotificationCenter])
  {
    if ([v14 enablesNotificationCenter])
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  if ([v14 supportsCarPlay])
  {
    if ([v14 enablesCarPlay])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if ([v14 supportsTimeSensitive])
  {
    if ([v14 enablesTimeSensitive])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  if ([v14 supportsSpoken])
  {
    if (![v14 enablesSpoken])
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  [self setPushSettings:v5];
  [self setLockScreenSetting:v10];
  [self setNotificationCenterSetting:v11];
  [self setCarPlaySetting:v12];
  [self setRemoteNotificationsSetting:2];
  [self setAnnounceSetting:v13];
  [self setAlertType:v4];
  [self setSubsectionPriority:{objc_msgSend(v14, "priority")}];
}

@end