@interface SCUNNotificationService
- (SCUNNotificationService)initWithDelegate:(id)a3;
- (id)actionURLWithSuffix:(id)a3;
- (id)contentBodyForWifiSyncReminder:(id)a3;
- (id)notificationCategories;
- (id)toUNNotificationRequest:(id)a3;
- (void)removeNotifications;
@end

@implementation SCUNNotificationService

- (SCUNNotificationService)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCUNNotificationService;
  v5 = [(SCUNNotificationService *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.safetycheckd.notifications"];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v6;

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setDelegate:v4];
    v8 = v5->_userNotificationCenter;
    v9 = [(SCUNNotificationService *)v5 notificationCategories];
    [(UNUserNotificationCenter *)v8 setNotificationCategories:v9];

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setWantsNotificationResponsesDelivered];
  }

  return v5;
}

- (void)removeNotifications
{
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllDeliveredNotifications];
  userNotificationCenter = self->_userNotificationCenter;

  [(UNUserNotificationCenter *)userNotificationCenter removeAllPendingNotificationRequests];
}

- (id)notificationCategories
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = MEMORY[0x277CBEBF8];
  v4 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"scsharingreminders.general" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:1];
  [v2 addObject:v4];

  v5 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"scsharingreminders.wifisync" actions:v3 intentIdentifiers:v3 options:1];
  [v2 addObject:v5];

  return v2;
}

- (id)toUNNotificationRequest:(id)a3
{
  v4 = MEMORY[0x277CE1F60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = SCUILocStringForKey(@"TITLE");
  [v6 setTitle:v7];

  v8 = [v5 firstObject];

  v9 = [(SCUNNotificationService *)self contentBodyForWifiSyncReminder:v8];
  [v6 setBody:v9];

  [v6 setCategoryIdentifier:@"scsharingreminders.wifisync"];
  v10 = [(SCUNNotificationService *)self actionURLWithSuffix:@"reminders/wifisync"];
  [v6 setDefaultActionURL:v10];

  v11 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.safetycheckd.scsharingreminders" content:v6 trigger:0 destinations:7];

  return v11;
}

- (id)actionURLWithSuffix:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/SAFETY_CHECK", a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

- (id)contentBodyForWifiSyncReminder:(id)a3
{
  v3 = a3;
  v4 = [v3 displayName];
  v5 = [v4 length];

  if (!v5)
  {
    v8 = @"BODY_FALLBACK";
    goto LABEL_5;
  }

  v6 = [v3 displayName];
  v7 = [v6 isEqualToString:@"Windows PC"];

  if (v7)
  {
    v8 = @"BODY_WINDOWS_PC";
LABEL_5:
    v9 = SCUILocStringForKey(v8);
    goto LABEL_7;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = SCUILocStringForKey(@"BODY");
  v12 = [v3 displayName];
  v9 = [v10 stringWithFormat:v11, v12];

LABEL_7:

  return v9;
}

@end