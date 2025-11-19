@interface NCNotificationSectionSettings(Bulletin)
+ (id)notificationSectionSettingsForBBSectionInfo:()Bulletin;
- (id)_notificationSectionSettingsForSubSectionWithIdentifier:()Bulletin;
- (uint64_t)_contentPreviewSettingFromBBContentPreviewSetting:()Bulletin;
- (uint64_t)_groupingSettingFromBBGroupingSetting:()Bulletin;
- (uint64_t)contentPreviewSetting;
- (uint64_t)contentPreviewSettingForRequestWithSubSectionIdentifiers:()Bulletin;
- (uint64_t)criticalAlertsEnabled;
- (uint64_t)groupingSetting;
- (uint64_t)hasUserConfiguredDirectMessagesSetting;
- (uint64_t)hasUserConfiguredTimeSensitiveSetting;
- (uint64_t)isDirectMessagesEnabled;
- (uint64_t)isPrioritizationEnabled;
- (uint64_t)isScheduledDeliveryEnabled;
- (uint64_t)isSummarizationEnabled;
- (uint64_t)isTimeSensitiveEnabled;
- (uint64_t)notificationsEnabled;
- (uint64_t)showsInLockScreen;
- (uint64_t)showsInNotificationCenter;
- (uint64_t)subSectionPriority;
@end

@implementation NCNotificationSectionSettings(Bulletin)

- (uint64_t)notificationsEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"NotificationsEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)showsInNotificationCenter
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"ShowsInNotificationCenter"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)isSummarizationEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"SummarizationEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)notificationSectionSettingsForBBSectionInfo:()Bulletin
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D77E20]);
  v5 = [v3 sectionID];
  [v4 setSectionIdentifier:v5];

  v6 = [v3 subsectionID];
  [v4 setSubSectionIdentifier:v6];

  v7 = [v3 displayName];
  if (v7)
  {
    [v4 setDisplayName:v7];
  }

  else
  {
    v8 = [v3 appName];
    [v4 setDisplayName:v8];
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "allowsNotifications")}];
  [v9 setObject:v10 forKey:@"NotificationsEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "criticalAlertSetting") == 2}];
  [v9 setObject:v11 forKey:@"CriticalAlertsEnabled"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "notificationCenterSetting") == 2}];
  [v9 setObject:v12 forKey:@"ShowsInNotificationCenter"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "lockScreenSetting") == 2}];
  [v9 setObject:v13 forKey:@"ShowsInLockScreen"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "contentPreviewSetting")}];
  [v9 setObject:v14 forKey:@"ContentPreviewSetting"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "subsectionPriority")}];
  [v9 setObject:v15 forKey:@"SubSectionPriorty"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "bulletinGroupingSetting")}];
  [v9 setObject:v16 forKey:@"GroupingSetting"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "timeSensitiveSetting") == 2}];
  [v9 setObject:v17 forKey:@"TimeSensitiveEnabled"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasUserConfiguredTimeSensitiveSetting")}];
  [v9 setObject:v18 forKey:@"UserConfiguredTimeSensitiveSetting"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "scheduledDeliverySetting") == 2}];
  [v9 setObject:v19 forKey:@"ScheduledDeliveryEnabled"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "directMessagesSetting") == 2}];
  [v9 setObject:v20 forKey:@"DirectMessagesEnabled"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasUserConfiguredDirectMessagesSetting")}];
  [v9 setObject:v21 forKey:@"UserConfiguredDirectMessagesSetting"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "summarizationSetting") == 2}];
  [v9 setObject:v22 forKey:@"SummarizationEnabled"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "prioritizationSetting") == 2}];
  [v9 setObject:v23 forKey:@"PrioritizationEnabled"];

  [v4 setSettings:v9];
  v24 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = [v3 subsections];
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [MEMORY[0x277D77E58] notificationSectionSettingsForBBSectionInfo:*(*(&v41 + 1) + 8 * i)];
        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v27);
  }

  [v4 setSubSectionSettings:v24];
  if ([v3 suppressFromSettings])
  {
    v31 = 0;
  }

  else
  {
    v31 = [v3 isModificationAllowed] ^ 1;
  }

  [v4 setUserConfigurable:v31];
  v32 = [v3 icon];
  if (v32)
  {
    v33 = [MEMORY[0x277D759A0] mainScreen];
    [v33 scale];
    v34 = [v32 nc_imageForFormat:17 scale:0 userInterfaceStyle:0 usedUserInterfaceStyle:?];

    if (v34)
    {
      [v4 setSettingsIcon:v34];
    }
  }

  [v4 setShowsCustomSettingsLink:{objc_msgSend(v3, "showsCustomSettingsLink")}];
  [v4 setHasProvisionalAuthorization:{objc_msgSend(v3, "authorizationStatus") == 3}];
  [v4 setIsDeliveredQuietly:{objc_msgSend(v3, "isDeliveredQuietly")}];
  [v4 setIsAppClip:{objc_msgSend(v3, "isAppClip")}];
  v35 = [v3 muteAssertion];

  if (v35)
  {
    v36 = [v3 muteAssertion];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [MEMORY[0x277D77E50] sectionMuteAssertion];
    }

    else
    {
      v38 = MEMORY[0x277D77E70];
      v39 = [v36 threadIDs];
      v37 = [v38 threadsMuteAssertionWithMutedThreadIDs:v39];
    }

    [v4 setMuteAssertion:v37];
  }

  return v4;
}

- (uint64_t)criticalAlertsEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"CriticalAlertsEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)showsInLockScreen
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"ShowsInLockScreen"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)subSectionPriority
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"SubSectionPriorty"];
  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)contentPreviewSetting
{
  v2 = [a1 settings];
  v3 = [v2 objectForKey:@"ContentPreviewSetting"];
  v4 = [v3 integerValue];

  return [a1 _contentPreviewSettingFromBBContentPreviewSetting:v4];
}

- (uint64_t)groupingSetting
{
  v2 = [a1 settings];
  v3 = [v2 objectForKey:@"GroupingSetting"];
  v4 = [v3 integerValue];

  return [a1 _groupingSettingFromBBGroupingSetting:v4];
}

- (id)_notificationSectionSettingsForSubSectionWithIdentifier:()Bulletin
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v5 = [a1 subSectionSettings];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__NCNotificationSectionSettings_Bulletin___notificationSectionSettingsForSubSectionWithIdentifier___block_invoke;
  v9[3] = &unk_278370DE0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (uint64_t)contentPreviewSettingForRequestWithSubSectionIdentifiers:()Bulletin
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [a1 _notificationSectionSettingsForSubSectionWithIdentifier:{*(*(&v18 + 1) + 8 * i), v18}];
          v13 = v12;
          if (v12)
          {
            if (!v9 || (v14 = [v12 subSectionPriority], v14 > objc_msgSend(v9, "subSectionPriority")))
            {
              v15 = v13;

              v9 = v15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v16 = [v9 contentPreviewSetting];
  }

  else
  {
    v16 = [a1 contentPreviewSetting];
  }

  return v16;
}

- (uint64_t)isTimeSensitiveEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"TimeSensitiveEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)hasUserConfiguredTimeSensitiveSetting
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"UserConfiguredTimeSensitiveSetting"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)isScheduledDeliveryEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"ScheduledDeliveryEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)isDirectMessagesEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"DirectMessagesEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)hasUserConfiguredDirectMessagesSetting
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"UserConfiguredDirectMessagesSetting"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)isPrioritizationEnabled
{
  v1 = [a1 settings];
  v2 = [v1 objectForKey:@"PrioritizationEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)_contentPreviewSettingFromBBContentPreviewSetting:()Bulletin
{
  result = a3 - 1;
  if ((a3 - 1) >= 3)
  {
    v6 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationSectionSettings(Bulletin) *)v6 _contentPreviewSettingFromBBContentPreviewSetting:a1, a3];
    }

    return 0;
  }

  return result;
}

- (uint64_t)_groupingSettingFromBBGroupingSetting:()Bulletin
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

- (void)_contentPreviewSettingFromBBContentPreviewSetting:()Bulletin .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 sectionIdentifier];
  v7 = 134218242;
  v8 = a3;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Invalid content preview setting (%li) set on Notification Section Setting for section %@", &v7, 0x16u);
}

@end