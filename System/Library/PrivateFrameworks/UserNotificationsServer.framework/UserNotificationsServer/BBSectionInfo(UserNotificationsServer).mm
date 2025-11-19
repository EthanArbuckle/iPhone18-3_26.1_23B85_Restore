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
  v2 = [a1 alertType];
  v3 = [a1 pushSettings];
  v4 = [a1 authorizationStatus];
  if ((v4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [a1 sectionInfoSettings];
  v7 = [v6 isAuthorizedTemporarily];

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v3 << 61;
  v10 = 2 * (v2 == 2);
  if (v2 == 1)
  {
    v10 = 1;
  }

  v33 = v10 & (v9 >> 63);
  v34 = v8;
  v31 = UNShowPreviewsSettingFromBBContentPreviewSetting([a1 contentPreviewSetting]);
  v26 = UNNotificationGroupingSettingFromBBBulletinGroupingSetting([a1 bulletinGroupingSetting]);
  if ((v3 & 0x10) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v32 = v11 & (v3 << 62 >> 63);
  if ((v3 & 8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v28 = v12;
  v29 = v3 << 63 >> 63;
  if (v2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v30 = v13 & (v9 >> 63);
  v27 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "notificationCenterSetting")}];
  v25 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "lockScreenSetting")}];
  v14 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "carPlaySetting")}];
  v15 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "remoteNotificationsSetting")}];
  v16 = [a1 uns_notificationSettingForBBSectionAnnounceSetting:{objc_msgSend(a1, "announceSetting")}];
  v17 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "criticalAlertSetting")}];
  v18 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "timeSensitiveSetting")}];
  v19 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "scheduledDeliverySetting")}];
  v20 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "directMessagesSetting")}];
  v21 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "summarizationSetting")}];
  v22 = [a1 uns_notificationSettingForBBSectionInfoSetting:{objc_msgSend(a1, "prioritizationSetting")}];
  LOBYTE(v24) = [a1 showsCustomSettingsLink];
  return [MEMORY[0x277CE1FD0] settingsWithAuthorizationStatus:v34 soundSetting:v32 badgeSetting:v29 & v28 alertSetting:v30 notificationCenterSetting:v27 lockScreenSetting:v25 carPlaySetting:v14 remoteNotificationsSetting:v15 announcementSetting:v16 criticalAlertSetting:v17 timeSensitiveSetting:v18 scheduledDeliverySetting:v19 directMessagesSetting:v20 summarizationSetting:v21 prioritizationSetting:v22 alertStyle:v33 showPreviewsSetting:v31 groupingSetting:v26 providesAppNotificationSettings:v24];
}

- (id)uns_notificationSource
{
  v2 = [a1 uns_notificationSettings];
  v3 = [a1 uns_topicSettings];
  v4 = objc_alloc(MEMORY[0x277D77F80]);
  v5 = [a1 _uns_muteAssertion];
  v6 = [v4 initWithNotificationSettings:v2 topicSettings:v3 muteAssertion:v5 isRestricted:*&a1[*MEMORY[0x277CF35B8]] != 0];

  v7 = [a1 uns_settingsIcon];
  v8 = [a1 displayName];
  if ([v8 length])
  {
    [a1 displayName];
  }

  else
  {
    [a1 appName];
  }
  v9 = ;

  v10 = objc_alloc(MEMORY[0x277D77F70]);
  v11 = [a1 sectionID];
  v12 = [a1 suppressFromSettings];
  v13 = [a1 uns_bundlePath];
  v14 = [v10 initWithIdentifier:v11 isHidden:v12 displayName:v9 icon:v7 settings:v6 bundlePath:v13];

  return v14;
}

- (id)uns_bundlePath
{
  v2 = MEMORY[0x277CC1E70];
  v3 = [a1 sectionID];
  v4 = [v2 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v3];

  if (v4)
  {
    v5 = [v4 URL];
    v6 = [v5 path];
  }

  else
  {
    v5 = [a1 icon];
    v7 = [v5 _bestVariantForFormat:1];
    v6 = [v7 bundlePath];
  }

  return v6;
}

- (id)uns_settingsIcon
{
  v2 = MEMORY[0x277CC1E70];
  v3 = [a1 sectionID];
  v4 = [v2 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v3];

  if (v4)
  {
    v5 = MEMORY[0x277CE1FB0];
    v6 = [a1 sectionID];
    v7 = [v5 iconForApplicationIdentifier:v6];
    goto LABEL_7;
  }

  v6 = [a1 icon];
  v8 = [v6 _bestVariantForFormat:1];
  v9 = [v8 imageData];

  if (v9)
  {
    v10 = MEMORY[0x277CE1FB0];
    v11 = [a1 iconData];
    v12 = [v10 iconWithData:v11];
  }

  else
  {
    v14 = [v8 bundlePath];
    if (v14 && (v15 = v14, [v8 imageName], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = MEMORY[0x277CE1FB0];
      v11 = [v8 imageName];
      v12 = [v17 iconNamed:v11];
    }

    else
    {
      v7 = [v8 imagePath];

      if (!v7)
      {
        goto LABEL_6;
      }

      v18 = MEMORY[0x277CE1FB0];
      v11 = [v8 imagePath];
      v12 = [v18 iconAtPath:v11];
    }
  }

  v7 = v12;

LABEL_6:
LABEL_7:

  return v7;
}

- (id)_uns_muteAssertion
{
  v1 = [a1 muteAssertion];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = MEMORY[0x277D77F78];
      v3 = [v1 expirationDate];
      v4 = [v2 sourceMuteAssertionUntilDate:v3];
LABEL_6:
      v6 = v4;

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D77F90];
      v3 = [v1 expirationDateByThreadID];
      v4 = [v5 threadsMuteAssertionWithExpirationDateByThreadID:v3];
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
  obj = *(a1 + *MEMORY[0x277CF35C0]);
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
        v9 = [v7 subsectionID];
        v10 = [v7 displayName];
        v11 = [v8 topicWithIdentifier:v9 displayName:v10 priority:objc_msgSend(v7 sortIdentifier:{"subsectionPriority"), &stru_288095958}];

        v12 = [v7 uns_notificationSettings];
        v13 = [v7 _uns_muteAssertion];
        v14 = [objc_alloc(MEMORY[0x277D77F98]) initWithTopic:v11 settings:v12 muteAssertion:v13];
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
  v7 = [a1 pushSettings];
  v8 = [a1 authorizationStatus];
  v9 = [a1 carPlaySetting];
  v10 = v9;
  if ((a3 & 8) != 0 && !v9)
  {
    if ([a1 authorizationStatus] == 3)
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

  v12 = [a1 remoteNotificationsSetting];
  if (!v12)
  {
    if ([a1 authorizationStatus] == 3)
    {
      v13 = a4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  v14 = [a1 criticalAlertSetting];
  v15 = [a1 timeSensitiveSetting];
  v16 = [a1 announceSetting];
  if (!v16)
  {
    if (v15 >= 2)
    {
      if ([a1 authorizationStatus] == 3)
      {
        v17 = a4;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  v18 = v7 | a3;
  if (v8 == 3)
  {
    v19 = a4;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = (v7 | (8 * (v18 ^ v7))) & 0x38;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFFF8 | v18 & 7;
  v22 = [a1 showsCustomSettingsLink];
  v23 = (a3 >> 5) & 1;
  if (((v14 == 0) & (a3 >> 4)) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = v14;
  }

  [a1 setPushSettings:v21];
  [a1 setCarPlaySetting:v10];
  [a1 setRemoteNotificationsSetting:v12];
  [a1 setAnnounceSetting:v16];
  [a1 setCriticalAlertSetting:v24];
  [a1 setTimeSensitiveSetting:v15];

  return [a1 setShowsCustomSettingsLink:v23 | v22];
}

- (void)uns_setPropertiesFromNotificationSettings:()UserNotificationsServer systemSettings:
{
  v23 = a3;
  v6 = a4;
  v7 = [v23 authorizationStatus];
  if ((v7 - 1) >= 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [a1 setAuthorizationStatus:v8];
  v9 = [v23 soundSetting];
  v10 = 2;
  if (v9 == 2)
  {
    v10 = 18;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v23 alertSetting];
  v13 = 4;
  if (v12 == 2)
  {
    v13 = 36;
  }

  if (!v12)
  {
    v13 = 0;
  }

  v14 = v13 | v11;
  v15 = [v23 badgeSetting];
  v16 = 9;
  if (v15 != 2)
  {
    v16 = 1;
  }

  if (!v15)
  {
    v16 = 0;
  }

  [a1 setPushSettings:v14 | v16];
  v17 = [v23 alertStyle];
  v18 = 1;
  if (v17 == 2)
  {
    v18 = 2;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [a1 setAlertType:v19];
  v20 = BBContentPreviewSettingFromUNShowPreviewsSetting([v23 showPreviewsSetting]);
  v21 = [v6 showPreviewsSetting];

  if (v20 == BBContentPreviewSettingFromUNShowPreviewsSetting(v21))
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  [a1 setContentPreviewSetting:v22];
  [a1 setBulletinGroupingSetting:{BBBulletinGroupingSettingFromUNNotificationGroupingSetting(objc_msgSend(v23, "groupingSetting"))}];
  [a1 setNotificationCenterSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "notificationCenterSetting"))}];
  [a1 setLockScreenSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "lockScreenSetting"))}];
  [a1 setCarPlaySetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "carPlaySetting"))}];
  [a1 setRemoteNotificationsSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "remoteNotificationsSetting"))}];
  [a1 setCriticalAlertSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "criticalAlertSetting"))}];
  [a1 setShowsCustomSettingsLink:{objc_msgSend(v23, "providesAppNotificationSettings")}];
  if ([v23 announcementSetting])
  {
    [a1 setAnnounceSetting:{objc_msgSend(a1, "uns_BBSectionAnnounceSettingForUNNotificationSetting:", objc_msgSend(v23, "announcementSetting"))}];
  }

  if ([v23 scheduledDeliverySetting])
  {
    [a1 setScheduledDeliverySetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "scheduledDeliverySetting"))}];
  }

  if ([v23 summarizationSetting])
  {
    [a1 setSummarizationSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "summarizationSetting"))}];
  }

  if ([v23 prioritizationSetting])
  {
    [a1 setPrioritizationSetting:{objc_msgSend(a1, "uns_BBSectionInfoSettingForUNNotificationSetting:", objc_msgSend(v23, "prioritizationSetting"))}];
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

  if ([a1 timeSensitiveSetting] == 2)
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

  v10 = [v18 supportsTimeSensitive];
  v11 = [v18 supportsSpoken];
  v12 = v10 == 0;
  if (v10)
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

  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v18 alwaysShowPreviews];
  v17 = [v18 providesAppNotificationSettings];
  [a1 setPushSettings:v6];
  [a1 setLockScreenSetting:v7];
  [a1 setNotificationCenterSetting:v8];
  [a1 setCarPlaySetting:v9];
  [a1 setRemoteNotificationsSetting:2];
  [a1 setAnnounceSetting:v15];
  [a1 setAlertType:v4];
  [a1 setContentPreviewSetting:v16];
  [a1 setShowsCustomSettingsLink:v17];
  [a1 setTimeSensitiveSetting:v13];
}

- (void)uns_setPropertiesFromTopicRecord:()UserNotificationsServer
{
  v14 = a3;
  [a1 setAllowsNotifications:{objc_msgSend(v14, "enablesAlerts")}];
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
    v6 = [v14 enablesBadges];
    v7 = 9;
    if (!v6)
    {
      v7 = 1;
    }

    v5 |= v7;
  }

  if ([v14 supportsSounds])
  {
    v8 = [v14 enablesSounds];
    v9 = 2;
    if (v8)
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

  [a1 setPushSettings:v5];
  [a1 setLockScreenSetting:v10];
  [a1 setNotificationCenterSetting:v11];
  [a1 setCarPlaySetting:v12];
  [a1 setRemoteNotificationsSetting:2];
  [a1 setAnnounceSetting:v13];
  [a1 setAlertType:v4];
  [a1 setSubsectionPriority:{objc_msgSend(v14, "priority")}];
}

@end