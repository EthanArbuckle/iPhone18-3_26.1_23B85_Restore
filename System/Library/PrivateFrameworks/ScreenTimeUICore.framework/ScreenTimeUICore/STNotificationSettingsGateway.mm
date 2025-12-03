@interface STNotificationSettingsGateway
- (BOOL)hasNotificationSettings:(id)settings;
- (STNotificationSettingsGateway)init;
- (STNotificationSettingsGateway)initWithBundleIdentifiers:(id)identifiers;
- (id)notificationSettingsForBundleIdentifier:(id)identifier;
@end

@implementation STNotificationSettingsGateway

- (STNotificationSettingsGateway)initWithBundleIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [(STNotificationSettingsGateway *)self init];
  v6 = [(BBSettingsGateway *)v5->_notificationSettingsGateway sectionInfoForSectionIDs:identifiersCopy];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 suppressFromSettings] & 1) == 0)
        {
          sectionID = [v13 sectionID];
          [v7 setObject:v13 forKeyedSubscript:sectionID];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  sectionInfoByBundleIdentifier = v5->_sectionInfoByBundleIdentifier;
  v5->_sectionInfoByBundleIdentifier = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (STNotificationSettingsGateway)init
{
  v8.receiver = self;
  v8.super_class = STNotificationSettingsGateway;
  v2 = [(STNotificationSettingsGateway *)&v8 init];
  v3 = dispatch_queue_create("com.apple.ScreenTimeUICore.notification-settings-gateway", 0);
  notificationSettingsGatewayQueue = v2->_notificationSettingsGatewayQueue;
  v2->_notificationSettingsGatewayQueue = v3;

  v5 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v2->_notificationSettingsGatewayQueue];
  notificationSettingsGateway = v2->_notificationSettingsGateway;
  v2->_notificationSettingsGateway = v5;

  return v2;
}

- (BOOL)hasNotificationSettings:(id)settings
{
  settingsCopy = settings;
  sectionInfoByBundleIdentifier = [(STNotificationSettingsGateway *)self sectionInfoByBundleIdentifier];
  v6 = [sectionInfoByBundleIdentifier objectForKeyedSubscript:settingsCopy];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    notificationSettingsGateway = [(STNotificationSettingsGateway *)self notificationSettingsGateway];
    v7 = [notificationSettingsGateway sectionInfoForSectionID:settingsCopy];

    if (!v7)
    {
      LOBYTE(v9) = 0;
      goto LABEL_5;
    }
  }

  v9 = [v7 suppressFromSettings] ^ 1;

LABEL_5:
  return v9;
}

- (id)notificationSettingsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionInfoByBundleIdentifier = [(STNotificationSettingsGateway *)self sectionInfoByBundleIdentifier];
  v6 = [sectionInfoByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    notificationSettingsGateway = [(STNotificationSettingsGateway *)self notificationSettingsGateway];
    v7 = [notificationSettingsGateway sectionInfoForSectionID:identifierCopy];

    if (!v7)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  if ([v7 suppressFromSettings])
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

LABEL_7:
  v10 = v9;

  return v9;
}

@end