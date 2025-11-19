@interface UNSNotificationSettingsService
- (UNSNotificationSettingsService)initWithSettingsGateway:(id)a3;
- (id)_modifySection:(id)a3 withKeyValues:(id)a4;
- (id)notificationSettingsForBundleIdentifier:(id)a3 calculatedSettings:(BOOL)a4;
- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3;
- (id)notificationSourceForBundleIdentifier:(id)a3;
- (id)notificationSourcesForBundleIdentifiers:(id)a3;
- (id)notificationSourcesWithFilter:(id)a3;
- (id)notificationSystemSettings;
- (id)setSourceSettings:(id)a3;
- (void)addObserver:(id)a3;
- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4;
- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)setNotificationSystemSettings:(id)a3;
- (void)settingsGateway:(id)a3 didUpdateGlobalSettings:(id)a4;
- (void)settingsGateway:(id)a3 didUpdateSectionInfoForSectionIDs:(id)a4;
@end

@implementation UNSNotificationSettingsService

- (id)notificationSystemSettings
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v23 = objc_opt_class();
    v5 = v23;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification System Settings", buf, 0xCu);
  }

  v21 = UNShowPreviewsSettingFromBBContentPreviewSetting([(UNSSettingsGateway *)self->_settingsGateway globalContentPreviewSetting]);
  v6 = UNNotificationSettingFromBBAnnounceSetting([(UNSSettingsGateway *)self->_settingsGateway globalAnnounceSetting]);
  v7 = UNNotificationSettingFromBBAnnounceSetting([(UNSSettingsGateway *)self->_settingsGateway globalAnnounceHeadphonesSetting]);
  v8 = UNNotificationAnnouncementCarPlaySettingFromBBAnnounceCarPlaySetting([(UNSSettingsGateway *)self->_settingsGateway globalAnnounceCarPlaySetting]);
  v9 = UNNotificationSettingFromBBScheduledDeliverySetting([(UNSSettingsGateway *)self->_settingsGateway globalScheduledDeliverySetting]);
  v10 = [(UNSSettingsGateway *)self->_settingsGateway globalScheduledDeliveryTimes];
  v11 = UNNotificationSettingFromBBSystemSetting([(UNSSettingsGateway *)self->_settingsGateway globalScheduledDeliveryShowNextSummarySetting]);
  v12 = UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting([(UNSSettingsGateway *)self->_settingsGateway globalNotificationListDisplayStyleSetting]);
  v13 = UNNotificationSettingFromBBSystemSetting([(UNSSettingsGateway *)self->_settingsGateway globalSummarizationSetting]);
  v14 = [objc_alloc(MEMORY[0x277D77F88]) initWithShowPreviewsSetting:v21 announcementSetting:v6 announcementHeadphonesSetting:v7 announcementCarPlaySetting:v8 scheduledDeliverySetting:v9 scheduledDeliveryTimes:v10 scheduledDeliveryShowNextSummarySetting:v11 notificationListDisplayStyleSetting:v12 summarizationSetting:v13 prioritizationSetting:{UNNotificationSettingFromBBSystemSetting(-[UNSSettingsGateway globalPrioritizationSetting](self->_settingsGateway, "globalPrioritizationSetting"))}];
  v15 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    *buf = 138543618;
    v23 = v17;
    v24 = 2114;
    v25 = v14;
    v18 = v17;
    _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning System Settings %{public}@", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (UNSNotificationSettingsService)initWithSettingsGateway:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = UNSNotificationSettingsService;
  v6 = [(UNSNotificationSettingsService *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_settingsGateway, a3);
    [(UNSSettingsGateway *)v6->_settingsGateway addObserver:v6];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.usernotificationsserver.SettingsService", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = [(UNSAuthorizationAlertController *)[UNSCriticalAlertAuthorizationAlertController alloc] initWithQueue:v6->_queue];
    criticalAlertAuthorizationAlertController = v6->_criticalAlertAuthorizationAlertController;
    v6->_criticalAlertAuthorizationAlertController = v12;

    v14 = [(UNSAuthorizationAlertController *)[UNSNotificationAuthorizationAlertController alloc] initWithQueue:v6->_queue];
    notificationAuthorizationAlertController = v6->_notificationAuthorizationAlertController;
    v6->_notificationAuthorizationAlertController = v14;
  }

  return v6;
}

- (void)dealloc
{
  [(UNSSettingsGateway *)self->_settingsGateway removeObserver:self];
  v3.receiver = self;
  v3.super_class = UNSNotificationSettingsService;
  [(UNSNotificationSettingsService *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__UNSNotificationSettingsService_addObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSNotificationSettingsService_removeObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)notificationSettingsForBundleIdentifier:(id)a3 calculatedSettings:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  settingsGateway = self->_settingsGateway;
  if (v4)
  {
    [(UNSSettingsGateway *)settingsGateway effectiveSectionInfoForSectionID:v6];
  }

  else
  {
    [(UNSSettingsGateway *)settingsGateway sectionInfoForSectionID:v6];
  }
  v8 = ;
  v9 = [v8 uns_notificationSettings];

  if (!v9)
  {
    v9 = [MEMORY[0x277CE1FD0] emptySettings];
  }

  return v9;
}

- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 subsections];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 subsectionID];
        v14 = [v12 uns_notificationSettings];
        [v5 setObject:v14 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)notificationSourceForBundleIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Source For BundleIdentifier", &v12, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:v4];
  v8 = [v7 uns_notificationSource];
  v9 = *v5;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning Notification Source For BundleIdentifier %{public}@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)notificationSourcesForBundleIdentifiers:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v4;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Sources For BundleIdentifiers", buf, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionIDs:v4];
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) uns_notificationSource];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v4;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning Notification Sources For BundleIdentifiers %{public}@", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)notificationSourcesWithFilter:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543618;
    v46 = objc_opt_class();
    v47 = 2114;
    v48 = v4;
    v7 = v46;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Sources For Filter '%{public}@'", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = [(UNSSettingsGateway *)self->_settingsGateway allEffectiveSectionInfo];
  v10 = [v8 initWithArray:v9];

  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = *MEMORY[0x277D77FC0];
    v37 = *MEMORY[0x277D77FA8];
    v40 = *MEMORY[0x277D77FB0];
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * v15);
        if (([(__CFString *)v4 isEqualToString:v14]& 1) != 0)
        {
LABEL_9:
          v17 = [v16 uns_notificationSource];
          [v39 addObject:v17];

          goto LABEL_25;
        }

        if (([(__CFString *)v4 isEqualToString:v37]& 1) != 0 || [(__CFString *)v4 isEqualToString:v40])
        {
          if ([v16 isRestricted])
          {
            v18 = 1;
          }

          else
          {
            v19 = [v16 sectionID];
            if ([v19 isEqualToString:@"com.apple.gamecenter"])
            {
              v20 = [MEMORY[0x277D262A0] sharedConnection];
              v18 = [v20 isBoolSettingLockedDownByRestrictions:@"allowGameCenter"];
            }

            else
            {
              v18 = 0;
            }
          }

          v21 = MEMORY[0x277CEBE80];
          v22 = [v16 sectionID];
          v23 = [v21 applicationWithBundleIdentifier:v22];
          v24 = [v23 isHidden];

          v25 = [v16 sectionID];
          if ([v25 isEqualToString:@"com.apple.mobilephone"])
          {
            if (_IsTelephonyDevice_once != -1)
            {
              [UNSNotificationSettingsService notificationSourcesWithFilter:];
            }

            v26 = _IsTelephonyDevice_telephonyDevice;
          }

          else
          {
            v26 = 1;
          }

          if (([v16 suppressFromSettings] | v18))
          {
            [(__CFString *)v4 isEqualToString:v40];
          }

          else
          {
            v27 = v26 & (v24 ^ 1);
            if (([(__CFString *)v4 isEqualToString:v40]& 1) != 0)
            {
              if (v27)
              {
                v28 = [v16 sectionInfoSettings];
                v29 = [v28 allowsNotifications];

                if (v29)
                {
                  goto LABEL_9;
                }
              }
            }

            else if (v27)
            {
              goto LABEL_9;
            }
          }
        }

LABEL_25:
        ++v15;
      }

      while (v12 != v15);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      v12 = v30;
    }

    while (v30);
  }

  v31 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    v33 = [(__CFString *)v4 isEqualToString:*MEMORY[0x277D77FC0]];
    if (v33)
    {
      v34 = @"All";
    }

    else
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu of %lu", objc_msgSend(v39, "count"), objc_msgSend(obj, "count")];
    }

    *buf = 138543874;
    v46 = v32;
    v47 = 2114;
    v48 = v34;
    v49 = 2114;
    v50 = v4;
    _os_log_impl(&dword_270AA8000, v31, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning %{public}@ Notification Sources For Filter '%{public}@'", buf, 0x20u);
    if ((v33 & 1) == 0)
    {
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)authorizationWithOptions:(unint64_t)a3 forNotificationSourceIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CE20B0];
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Authorizing Notification Settings", &v17, 0xCu);
  }

  v12 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:v8];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

    goto LABEL_15;
  }

  if (([v12 useDefaultDataProvider] & 1) == 0)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

    goto LABEL_15;
  }

  if ((a3 & 0x10) != 0 && ([v13 allowCriticalAlerts] & 1) == 0)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

LABEL_15:
    v14 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v9[2](v9, 0, v14);
    goto LABEL_16;
  }

  v14 = [MEMORY[0x277CF3568] defaultSectionInfoForType:0];
  if ([v13 allowTimeSensitive])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  [v14 setTimeSensitiveSetting:v15];
  [v14 setSectionID:v8];
  [v14 uns_setPropertiesFromAuthorizationOptions:a3 supportsProvisionalAlerts:{objc_msgSend(v13, "supportsProvisionalAlerts")}];
  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v14 forSectionID:v8];
  v9[2](v9, 1, 0);
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CE20B0];
  v9 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Revoking Authorization", &v17, 0xCu);
  }

  v10 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:v6];
  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

    goto LABEL_11;
  }

  if (([v10 useDefaultDataProvider] & 1) == 0)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

LABEL_11:
    v15 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    v7[2](v7, 0, v15);
    goto LABEL_16;
  }

  v12 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:v6];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CF3568] defaultSectionInfoForType:0];
  }

  v15 = v14;
  [v14 setAuthorizationStatus:1];
  if ([v15 criticalAlertSetting])
  {
    [v15 setCriticalAlertSetting:1];
  }

  [v15 setSectionID:v6];
  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v15 forSectionID:v6];
  v7[2](v7, 1, 0);

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)replaceNotificationSettings:(id)a3 forNotificationSourceIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v10 = *&v14[4];
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Replacing Notification Settings", v14, 0xCu);
  }

  v11 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:v7, *v14];
  v12 = [(UNSNotificationSettingsService *)self notificationSystemSettings];
  [v11 uns_setPropertiesFromNotificationSettings:v6 systemSettings:v12];

  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v11 forSectionID:v7];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)replaceNotificationTopicSettings:(id)a3 forNotificationSourceIdentifier:(id)a4 topicIdentifier:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138543362;
    v36 = objc_opt_class();
    v12 = v36;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Replacing Notification Topic Settings", buf, 0xCu);
  }

  [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:v8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v33 = 0u;
  v13 = [v27 subsections];
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v28 = v8;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = [v19 subsectionID];
        v21 = [v20 isEqualToString:v9];

        if (v21)
        {
          v22 = v19;

          v16 = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v23 = [(UNSNotificationSettingsService *)self notificationSystemSettings];
  [v16 uns_setPropertiesFromNotificationSettings:v29 systemSettings:v23];

  settingsGateway = self->_settingsGateway;
  v25 = [v16 sectionID];
  [(UNSSettingsGateway *)settingsGateway setSectionInfo:v16 forSectionID:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)setSourceSettings:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v23;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = [v4 objectForKey:v11];
      v13 = [(UNSNotificationSettingsService *)self _modifySection:v11 withKeyValues:v12];
      v14 = v13;
      if (v13)
      {
        if (v8)
        {
          v15 = [v8 stringByAppendingString:v13];

          v8 = v15;
        }

        else
        {
          v8 = v13;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v7);

  if (v8)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA5B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = v8;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v16 errorWithDomain:v17 code:1 userInfo:v18];

    v5 = v8;
LABEL_15:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_modifySection:(id)a3 withKeyValues:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:v6];
  if (!v8)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Source does not exist", v6];
    goto LABEL_20;
  }

  v22 = self;
  v23 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v25;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * i);
      v15 = [v7 objectForKey:v14];
      if ([v14 isEqualToString:@"showPreviewsSetting"])
      {
        v16 = [v15 unsignedIntegerValue];
        if (v16 <= 2)
        {
          [v8 setContentPreviewSetting:v16 + 1];
          goto LABEL_13;
        }

        v19 = @"[%@]: Raw value of '%lu' cannot be mapped to UNShowPreviewsSetting for '%@'";
LABEL_19:
        v6 = v23;
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v23, objc_msgSend(v15, "unsignedIntegerValue"), v14];

        goto LABEL_20;
      }

      if ([v14 isEqualToString:@"summarizationSetting"])
      {
        v17 = [v15 unsignedIntegerValue];
        if (v17 > 2)
        {
          v19 = @"[%@]: Raw value of '%lu' cannot be mapped to UNNotificationSetting for '%@'";
          goto LABEL_19;
        }

        [v8 setSummarizationSetting:v17];
      }

LABEL_13:
    }

    v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v6 = v23;
  [(UNSSettingsGateway *)v22->_settingsGateway setSectionInfo:v8 forSectionID:v23];
  v18 = 0;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setNotificationSystemSettings:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v52 = 138543618;
    v53 = v8;
    v54 = 2048;
    v55 = [v4 modifiedSettings];
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Settings with modifiedSettings = %lu", &v52, 0x16u);
  }

  if ([v4 modifiedSettings])
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v52 = 138543362;
      v53 = v12;
      v13 = v12;
      _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Content Preview", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalContentPreviewSetting:](self->_settingsGateway, "setGlobalContentPreviewSetting:", BBContentPreviewSettingFromUNShowPreviewsSetting([v4 showPreviewsSetting]));
  }

  if (([v4 modifiedSettings] & 2) != 0)
  {
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = objc_opt_class();
      v52 = 138543362;
      v53 = v16;
      v17 = v16;
      _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Announcement", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalAnnounceSetting:](self->_settingsGateway, "setGlobalAnnounceSetting:", BBAnnounceSettingFromUNNotificationSetting([v4 announcementSetting]));
  }

  if (([v4 modifiedSettings] & 4) != 0)
  {
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v52 = 138543362;
      v53 = v20;
      v21 = v20;
      _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Announcement in Headphones", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalAnnounceHeadphonesSetting:](self->_settingsGateway, "setGlobalAnnounceHeadphonesSetting:", BBAnnounceSettingFromUNNotificationSetting([v4 announcementHeadphonesSetting]));
  }

  if (([v4 modifiedSettings] & 8) != 0)
  {
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v52 = 138543362;
      v53 = v24;
      v25 = v24;
      _os_log_impl(&dword_270AA8000, v23, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Announcement in CarPlay", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalAnnounceCarPlaySetting:](self->_settingsGateway, "setGlobalAnnounceCarPlaySetting:", BBAnnounceCarPlaySettingFromUNNotificationAnnouncementCarPlaySetting([v4 announcementCarPlaySetting]));
  }

  if (([v4 modifiedSettings] & 0x10) != 0)
  {
    v26 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v52 = 138543362;
      v53 = v28;
      v29 = v28;
      _os_log_impl(&dword_270AA8000, v27, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Scheduled Delivery", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalScheduledDeliverySetting:](self->_settingsGateway, "setGlobalScheduledDeliverySetting:", BBScheduledDeliverySettingFromUNNotificationSetting([v4 scheduledDeliverySetting]));
  }

  if (([v4 modifiedSettings] & 0x20) != 0)
  {
    v30 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v52 = 138543362;
      v53 = v32;
      v33 = v32;
      _os_log_impl(&dword_270AA8000, v31, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Scheduled Delivery Times", &v52, 0xCu);
    }

    v34 = [v4 scheduledDeliveryTimes];
    [(UNSSettingsGateway *)self->_settingsGateway setGlobalScheduledDeliveryTimes:v34];
  }

  if (([v4 modifiedSettings] & 0x40) != 0)
  {
    v35 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v37 = objc_opt_class();
      v52 = 138543362;
      v53 = v37;
      v38 = v37;
      _os_log_impl(&dword_270AA8000, v36, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Scheduled Delivery Show Next Summary", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalScheduledDeliveryShowNextSummarySetting:](self->_settingsGateway, "setGlobalScheduledDeliveryShowNextSummarySetting:", BBSystemSettingFromUNNotificationSetting([v4 scheduledDeliveryShowNextSummarySetting]));
  }

  if (([v4 modifiedSettings] & 0x80) != 0)
  {
    v39 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
      v41 = objc_opt_class();
      v52 = 138543362;
      v53 = v41;
      v42 = v41;
      _os_log_impl(&dword_270AA8000, v40, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Notification List Display Style", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalNotificationListDisplayStyleSetting:](self->_settingsGateway, "setGlobalNotificationListDisplayStyleSetting:", BBNotificationListDisplayStyleSettingFromUNNotificationListDisplayStyleSetting([v4 notificationListDisplayStyleSetting]));
  }

  if (([v4 modifiedSettings] & 0x200) != 0)
  {
    v43 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = objc_opt_class();
      v52 = 138543362;
      v53 = v45;
      v46 = v45;
      _os_log_impl(&dword_270AA8000, v44, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Summarization", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalSummarizationSetting:](self->_settingsGateway, "setGlobalSummarizationSetting:", BBSystemSettingFromUNNotificationSetting([v4 summarizationSetting]));
  }

  if (([v4 modifiedSettings] & 0x400) != 0)
  {
    v47 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = objc_opt_class();
      v52 = 138543362;
      v53 = v49;
      v50 = v49;
      _os_log_impl(&dword_270AA8000, v48, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Setting for Prioritization", &v52, 0xCu);
    }

    -[UNSSettingsGateway setGlobalPrioritizationSetting:](self->_settingsGateway, "setGlobalPrioritizationSetting:", BBSystemSettingFromUNNotificationSetting([v4 prioritizationSetting]));
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)resetScheduledDeliverySetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Resetting Scheduled Delivery Setting", v7, 0xCu);
  }

  [(UNSSettingsGateway *)self->_settingsGateway setGlobalScheduledDeliverySetting:0, *v7];
  [(UNSSettingsGateway *)self->_settingsGateway setGlobalScheduledDeliveryTimes:MEMORY[0x277CBEBF8]];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)settingsGateway:(id)a3 didUpdateSectionInfoForSectionIDs:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) settingsService:self didUpdateNotificationSourcesForBundleIdentifiers:{v5, v12}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)settingsGateway:(id)a3 didUpdateGlobalSettings:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v21 = UNShowPreviewsSettingFromBBContentPreviewSetting([v5 globalContentPreviewSetting]);
  v20 = UNNotificationSettingFromBBAnnounceSetting([v5 globalAnnounceSetting]);
  v6 = UNNotificationSettingFromBBAnnounceSetting([v5 globalAnnounceHeadphonesSetting]);
  v7 = UNNotificationAnnouncementCarPlaySettingFromBBAnnounceCarPlaySetting([v5 globalAnnounceCarPlaySetting]);
  v8 = UNNotificationSettingFromBBScheduledDeliverySetting([v5 globalScheduledDeliverySetting]);
  v9 = [v5 globalScheduledDeliveryTimes];
  v10 = UNNotificationSettingFromBBSystemSetting([v5 globalScheduledDeliveryShowNextSummarySetting]);
  v11 = UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting([v5 globalNotificationListDisplayStyleSetting]);
  v12 = UNNotificationSettingFromBBSystemSetting([v5 globalSummarizationSetting]);
  v13 = [objc_alloc(MEMORY[0x277D77F88]) initWithShowPreviewsSetting:v21 announcementSetting:v20 announcementHeadphonesSetting:v6 announcementCarPlaySetting:v7 scheduledDeliverySetting:v8 scheduledDeliveryTimes:v9 scheduledDeliveryShowNextSummarySetting:v10 notificationListDisplayStyleSetting:v11 summarizationSetting:v12 prioritizationSetting:{UNNotificationSettingFromBBSystemSetting(objc_msgSend(v5, "globalHighlightsSetting"))}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_observers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v22 + 1) + 8 * v18++) settingsService:self didUpdateNotificationSystemSettings:v13];
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Notification source not configured for UserNotifications", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Notification source is not permitted to use critical alerts", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(&dword_270AA8000, v0, v1, "[%{public}@] Notification source not found", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end