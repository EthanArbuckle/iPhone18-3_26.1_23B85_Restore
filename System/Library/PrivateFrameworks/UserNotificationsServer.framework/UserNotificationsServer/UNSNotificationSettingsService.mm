@interface UNSNotificationSettingsService
- (UNSNotificationSettingsService)initWithSettingsGateway:(id)gateway;
- (id)_modifySection:(id)section withKeyValues:(id)values;
- (id)notificationSettingsForBundleIdentifier:(id)identifier calculatedSettings:(BOOL)settings;
- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)identifier;
- (id)notificationSourceForBundleIdentifier:(id)identifier;
- (id)notificationSourcesForBundleIdentifiers:(id)identifiers;
- (id)notificationSourcesWithFilter:(id)filter;
- (id)notificationSystemSettings;
- (id)setSourceSettings:(id)settings;
- (void)addObserver:(id)observer;
- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier;
- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier;
- (void)resetScheduledDeliverySetting;
- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)setNotificationSystemSettings:(id)settings;
- (void)settingsGateway:(id)gateway didUpdateGlobalSettings:(id)settings;
- (void)settingsGateway:(id)gateway didUpdateSectionInfoForSectionIDs:(id)ds;
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
  globalScheduledDeliveryTimes = [(UNSSettingsGateway *)self->_settingsGateway globalScheduledDeliveryTimes];
  v11 = UNNotificationSettingFromBBSystemSetting([(UNSSettingsGateway *)self->_settingsGateway globalScheduledDeliveryShowNextSummarySetting]);
  v12 = UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting([(UNSSettingsGateway *)self->_settingsGateway globalNotificationListDisplayStyleSetting]);
  v13 = UNNotificationSettingFromBBSystemSetting([(UNSSettingsGateway *)self->_settingsGateway globalSummarizationSetting]);
  v14 = [objc_alloc(MEMORY[0x277D77F88]) initWithShowPreviewsSetting:v21 announcementSetting:v6 announcementHeadphonesSetting:v7 announcementCarPlaySetting:v8 scheduledDeliverySetting:v9 scheduledDeliveryTimes:globalScheduledDeliveryTimes scheduledDeliveryShowNextSummarySetting:v11 notificationListDisplayStyleSetting:v12 summarizationSetting:v13 prioritizationSetting:{UNNotificationSettingFromBBSystemSetting(-[UNSSettingsGateway globalPrioritizationSetting](self->_settingsGateway, "globalPrioritizationSetting"))}];
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

- (UNSNotificationSettingsService)initWithSettingsGateway:(id)gateway
{
  gatewayCopy = gateway;
  v17.receiver = self;
  v17.super_class = UNSNotificationSettingsService;
  v6 = [(UNSNotificationSettingsService *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_settingsGateway, gateway);
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__UNSNotificationSettingsService_addObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSNotificationSettingsService_removeObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (id)notificationSettingsForBundleIdentifier:(id)identifier calculatedSettings:(BOOL)settings
{
  settingsCopy = settings;
  identifierCopy = identifier;
  settingsGateway = self->_settingsGateway;
  if (settingsCopy)
  {
    [(UNSSettingsGateway *)settingsGateway effectiveSectionInfoForSectionID:identifierCopy];
  }

  else
  {
    [(UNSSettingsGateway *)settingsGateway sectionInfoForSectionID:identifierCopy];
  }
  v8 = ;
  uns_notificationSettings = [v8 uns_notificationSettings];

  if (!uns_notificationSettings)
  {
    uns_notificationSettings = [MEMORY[0x277CE1FD0] emptySettings];
  }

  return uns_notificationSettings;
}

- (id)notificationSettingsForTopicsWithBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:identifierCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subsections = [v6 subsections];
  v8 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subsections);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        subsectionID = [v12 subsectionID];
        uns_notificationSettings = [v12 uns_notificationSettings];
        [v5 setObject:uns_notificationSettings forKey:subsectionID];
      }

      v9 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)notificationSourceForBundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Source For BundleIdentifier", &v12, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:identifierCopy];
  uns_notificationSource = [v7 uns_notificationSource];
  v9 = *v5;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = identifierCopy;
    v14 = 2114;
    v15 = uns_notificationSource;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning Notification Source For BundleIdentifier %{public}@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return uns_notificationSource;
}

- (id)notificationSourcesForBundleIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifiersCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Sources For BundleIdentifiers", buf, 0xCu);
  }

  v7 = [(UNSSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionIDs:identifiersCopy];
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

        uns_notificationSource = [*(*(&v18 + 1) + 8 * i) uns_notificationSource];
        [v8 addObject:uns_notificationSource];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = identifiersCopy;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning Notification Sources For BundleIdentifiers %{public}@", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)notificationSourcesWithFilter:(id)filter
{
  v52 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543618;
    v46 = objc_opt_class();
    v47 = 2114;
    v48 = filterCopy;
    v7 = v46;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Getting Notification Sources For Filter '%{public}@'", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  allEffectiveSectionInfo = [(UNSSettingsGateway *)self->_settingsGateway allEffectiveSectionInfo];
  v10 = [v8 initWithArray:allEffectiveSectionInfo];

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
        if (([(__CFString *)filterCopy isEqualToString:v14]& 1) != 0)
        {
LABEL_9:
          uns_notificationSource = [v16 uns_notificationSource];
          [v39 addObject:uns_notificationSource];

          goto LABEL_25;
        }

        if (([(__CFString *)filterCopy isEqualToString:v37]& 1) != 0 || [(__CFString *)filterCopy isEqualToString:v40])
        {
          if ([v16 isRestricted])
          {
            v18 = 1;
          }

          else
          {
            sectionID = [v16 sectionID];
            if ([sectionID isEqualToString:@"com.apple.gamecenter"])
            {
              mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
              v18 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:@"allowGameCenter"];
            }

            else
            {
              v18 = 0;
            }
          }

          v21 = MEMORY[0x277CEBE80];
          sectionID2 = [v16 sectionID];
          v23 = [v21 applicationWithBundleIdentifier:sectionID2];
          isHidden = [v23 isHidden];

          sectionID3 = [v16 sectionID];
          if ([sectionID3 isEqualToString:@"com.apple.mobilephone"])
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
            [(__CFString *)filterCopy isEqualToString:v40];
          }

          else
          {
            v27 = v26 & (isHidden ^ 1);
            if (([(__CFString *)filterCopy isEqualToString:v40]& 1) != 0)
            {
              if (v27)
              {
                sectionInfoSettings = [v16 sectionInfoSettings];
                allowsNotifications = [sectionInfoSettings allowsNotifications];

                if (allowsNotifications)
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
    v33 = [(__CFString *)filterCopy isEqualToString:*MEMORY[0x277D77FC0]];
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
    v50 = filterCopy;
    _os_log_impl(&dword_270AA8000, v31, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Returning %{public}@ Notification Sources For Filter '%{public}@'", buf, 0x20u);
    if ((v33 & 1) == 0)
    {
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)authorizationWithOptions:(unint64_t)options forNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = MEMORY[0x277CE20B0];
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Authorizing Notification Settings", &v17, 0xCu);
  }

  v12 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
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

  if ((options & 0x10) != 0 && ([v13 allowCriticalAlerts] & 1) == 0)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [UNSNotificationSettingsService authorizationWithOptions:forNotificationSourceIdentifier:withCompletionHandler:];
    }

LABEL_15:
    v14 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v14);
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
  [v14 setSectionID:identifierCopy];
  [v14 uns_setPropertiesFromAuthorizationOptions:options supportsProvisionalAlerts:{objc_msgSend(v13, "supportsProvisionalAlerts")}];
  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v14 forSectionID:identifierCopy];
  handlerCopy[2](handlerCopy, 1, 0);
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)revokeAuthorizationForNotificationSourceIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = MEMORY[0x277CE20B0];
  v9 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Revoking Authorization", &v17, 0xCu);
  }

  v10 = [MEMORY[0x277D77CB8] sourceDescriptionWithBundleIdentifier:identifierCopy];
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
    handlerCopy[2](handlerCopy, 0, v15);
    goto LABEL_16;
  }

  v12 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:identifierCopy];
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

  [v15 setSectionID:identifierCopy];
  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v15 forSectionID:identifierCopy];
  handlerCopy[2](handlerCopy, 1, 0);

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)replaceNotificationSettings:(id)settings forNotificationSourceIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  v8 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v10 = *&v14[4];
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Replacing Notification Settings", v14, 0xCu);
  }

  v11 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:identifierCopy, *v14];
  notificationSystemSettings = [(UNSNotificationSettingsService *)self notificationSystemSettings];
  [v11 uns_setPropertiesFromNotificationSettings:settingsCopy systemSettings:notificationSystemSettings];

  [(UNSSettingsGateway *)self->_settingsGateway setSectionInfo:v11 forSectionID:identifierCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)replaceNotificationTopicSettings:(id)settings forNotificationSourceIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  topicIdentifierCopy = topicIdentifier;
  v10 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138543362;
    v36 = objc_opt_class();
    v12 = v36;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Replacing Notification Topic Settings", buf, 0xCu);
  }

  [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:identifierCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v33 = 0u;
  subsections = [v27 subsections];
  v14 = [subsections countByEnumeratingWithState:&v30 objects:v34 count:16];
  v28 = identifierCopy;
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
          objc_enumerationMutation(subsections);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        subsectionID = [v19 subsectionID];
        v21 = [subsectionID isEqualToString:topicIdentifierCopy];

        if (v21)
        {
          v22 = v19;

          v16 = v22;
        }
      }

      v15 = [subsections countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  notificationSystemSettings = [(UNSNotificationSettingsService *)self notificationSystemSettings];
  [v16 uns_setPropertiesFromNotificationSettings:settingsCopy systemSettings:notificationSystemSettings];

  settingsGateway = self->_settingsGateway;
  sectionID = [v16 sectionID];
  [(UNSSettingsGateway *)settingsGateway setSectionInfo:v16 forSectionID:sectionID];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)setSourceSettings:(id)settings
{
  v29 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [settingsCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v28 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = [settingsCopy objectForKey:v11];
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

    v7 = [allKeys countByEnumeratingWithState:&v22 objects:v28 count:16];
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

    allKeys = v8;
LABEL_15:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_modifySection:(id)section withKeyValues:(id)values
{
  v29 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  valuesCopy = values;
  v8 = [(UNSSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:sectionCopy];
  if (!v8)
  {
    sectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Source does not exist", sectionCopy];
    goto LABEL_20;
  }

  selfCopy = self;
  v23 = sectionCopy;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [valuesCopy allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v14 = *(*(&v24 + 1) + 8 * i);
      v15 = [valuesCopy objectForKey:v14];
      if ([v14 isEqualToString:@"showPreviewsSetting"])
      {
        unsignedIntegerValue = [v15 unsignedIntegerValue];
        if (unsignedIntegerValue <= 2)
        {
          [v8 setContentPreviewSetting:unsignedIntegerValue + 1];
          goto LABEL_13;
        }

        v19 = @"[%@]: Raw value of '%lu' cannot be mapped to UNShowPreviewsSetting for '%@'";
LABEL_19:
        sectionCopy = v23;
        sectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:v19, v23, objc_msgSend(v15, "unsignedIntegerValue"), v14];

        goto LABEL_20;
      }

      if ([v14 isEqualToString:@"summarizationSetting"])
      {
        unsignedIntegerValue2 = [v15 unsignedIntegerValue];
        if (unsignedIntegerValue2 > 2)
        {
          v19 = @"[%@]: Raw value of '%lu' cannot be mapped to UNNotificationSetting for '%@'";
          goto LABEL_19;
        }

        [v8 setSummarizationSetting:unsignedIntegerValue2];
      }

LABEL_13:
    }

    v11 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_15:

  sectionCopy = v23;
  [(UNSSettingsGateway *)selfCopy->_settingsGateway setSectionInfo:v8 forSectionID:v23];
  sectionCopy = 0;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return sectionCopy;
}

- (void)setNotificationSystemSettings:(id)settings
{
  v56 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
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
    modifiedSettings = [settingsCopy modifiedSettings];
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "UNSNotificationSettingsService [%{public}@] Setting Notification System Settings with modifiedSettings = %lu", &v52, 0x16u);
  }

  if ([settingsCopy modifiedSettings])
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

    -[UNSSettingsGateway setGlobalContentPreviewSetting:](self->_settingsGateway, "setGlobalContentPreviewSetting:", BBContentPreviewSettingFromUNShowPreviewsSetting([settingsCopy showPreviewsSetting]));
  }

  if (([settingsCopy modifiedSettings] & 2) != 0)
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

    -[UNSSettingsGateway setGlobalAnnounceSetting:](self->_settingsGateway, "setGlobalAnnounceSetting:", BBAnnounceSettingFromUNNotificationSetting([settingsCopy announcementSetting]));
  }

  if (([settingsCopy modifiedSettings] & 4) != 0)
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

    -[UNSSettingsGateway setGlobalAnnounceHeadphonesSetting:](self->_settingsGateway, "setGlobalAnnounceHeadphonesSetting:", BBAnnounceSettingFromUNNotificationSetting([settingsCopy announcementHeadphonesSetting]));
  }

  if (([settingsCopy modifiedSettings] & 8) != 0)
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

    -[UNSSettingsGateway setGlobalAnnounceCarPlaySetting:](self->_settingsGateway, "setGlobalAnnounceCarPlaySetting:", BBAnnounceCarPlaySettingFromUNNotificationAnnouncementCarPlaySetting([settingsCopy announcementCarPlaySetting]));
  }

  if (([settingsCopy modifiedSettings] & 0x10) != 0)
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

    -[UNSSettingsGateway setGlobalScheduledDeliverySetting:](self->_settingsGateway, "setGlobalScheduledDeliverySetting:", BBScheduledDeliverySettingFromUNNotificationSetting([settingsCopy scheduledDeliverySetting]));
  }

  if (([settingsCopy modifiedSettings] & 0x20) != 0)
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

    scheduledDeliveryTimes = [settingsCopy scheduledDeliveryTimes];
    [(UNSSettingsGateway *)self->_settingsGateway setGlobalScheduledDeliveryTimes:scheduledDeliveryTimes];
  }

  if (([settingsCopy modifiedSettings] & 0x40) != 0)
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

    -[UNSSettingsGateway setGlobalScheduledDeliveryShowNextSummarySetting:](self->_settingsGateway, "setGlobalScheduledDeliveryShowNextSummarySetting:", BBSystemSettingFromUNNotificationSetting([settingsCopy scheduledDeliveryShowNextSummarySetting]));
  }

  if (([settingsCopy modifiedSettings] & 0x80) != 0)
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

    -[UNSSettingsGateway setGlobalNotificationListDisplayStyleSetting:](self->_settingsGateway, "setGlobalNotificationListDisplayStyleSetting:", BBNotificationListDisplayStyleSettingFromUNNotificationListDisplayStyleSetting([settingsCopy notificationListDisplayStyleSetting]));
  }

  if (([settingsCopy modifiedSettings] & 0x200) != 0)
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

    -[UNSSettingsGateway setGlobalSummarizationSetting:](self->_settingsGateway, "setGlobalSummarizationSetting:", BBSystemSettingFromUNNotificationSetting([settingsCopy summarizationSetting]));
  }

  if (([settingsCopy modifiedSettings] & 0x400) != 0)
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

    -[UNSSettingsGateway setGlobalPrioritizationSetting:](self->_settingsGateway, "setGlobalPrioritizationSetting:", BBSystemSettingFromUNNotificationSetting([settingsCopy prioritizationSetting]));
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

- (void)settingsGateway:(id)gateway didUpdateSectionInfoForSectionIDs:(id)ds
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
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

        [*(*(&v12 + 1) + 8 * v10++) settingsService:self didUpdateNotificationSourcesForBundleIdentifiers:{dsCopy, v12}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)settingsGateway:(id)gateway didUpdateGlobalSettings:(id)settings
{
  v27 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v21 = UNShowPreviewsSettingFromBBContentPreviewSetting([settingsCopy globalContentPreviewSetting]);
  v20 = UNNotificationSettingFromBBAnnounceSetting([settingsCopy globalAnnounceSetting]);
  v6 = UNNotificationSettingFromBBAnnounceSetting([settingsCopy globalAnnounceHeadphonesSetting]);
  v7 = UNNotificationAnnouncementCarPlaySettingFromBBAnnounceCarPlaySetting([settingsCopy globalAnnounceCarPlaySetting]);
  v8 = UNNotificationSettingFromBBScheduledDeliverySetting([settingsCopy globalScheduledDeliverySetting]);
  globalScheduledDeliveryTimes = [settingsCopy globalScheduledDeliveryTimes];
  v10 = UNNotificationSettingFromBBSystemSetting([settingsCopy globalScheduledDeliveryShowNextSummarySetting]);
  v11 = UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting([settingsCopy globalNotificationListDisplayStyleSetting]);
  v12 = UNNotificationSettingFromBBSystemSetting([settingsCopy globalSummarizationSetting]);
  v13 = [objc_alloc(MEMORY[0x277D77F88]) initWithShowPreviewsSetting:v21 announcementSetting:v20 announcementHeadphonesSetting:v6 announcementCarPlaySetting:v7 scheduledDeliverySetting:v8 scheduledDeliveryTimes:globalScheduledDeliveryTimes scheduledDeliveryShowNextSummarySetting:v10 notificationListDisplayStyleSetting:v11 summarizationSetting:v12 prioritizationSetting:{UNNotificationSettingFromBBSystemSetting(objc_msgSend(settingsCopy, "globalHighlightsSetting"))}];
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