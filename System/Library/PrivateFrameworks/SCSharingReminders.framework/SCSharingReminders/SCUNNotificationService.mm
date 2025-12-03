@interface SCUNNotificationService
- (SCUNNotificationService)initWithDelegate:(id)delegate;
- (id)actionURLWithSuffix:(id)suffix;
- (id)contentBodyForWifiSyncReminder:(id)reminder;
- (id)notificationCategories;
- (id)toUNNotificationRequest:(id)request;
- (void)removeNotifications;
@end

@implementation SCUNNotificationService

- (SCUNNotificationService)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SCUNNotificationService;
  v5 = [(SCUNNotificationService *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.safetycheckd.notifications"];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v6;

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setDelegate:delegateCopy];
    v8 = v5->_userNotificationCenter;
    notificationCategories = [(SCUNNotificationService *)v5 notificationCategories];
    [(UNUserNotificationCenter *)v8 setNotificationCategories:notificationCategories];

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

- (id)toUNNotificationRequest:(id)request
{
  v4 = MEMORY[0x277CE1F60];
  requestCopy = request;
  v6 = objc_alloc_init(v4);
  v7 = SCUILocStringForKey(@"TITLE");
  [v6 setTitle:v7];

  firstObject = [requestCopy firstObject];

  v9 = [(SCUNNotificationService *)self contentBodyForWifiSyncReminder:firstObject];
  [v6 setBody:v9];

  [v6 setCategoryIdentifier:@"scsharingreminders.wifisync"];
  v10 = [(SCUNNotificationService *)self actionURLWithSuffix:@"reminders/wifisync"];
  [v6 setDefaultActionURL:v10];

  v11 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.safetycheckd.scsharingreminders" content:v6 trigger:0 destinations:7];

  return v11;
}

- (id)actionURLWithSuffix:(id)suffix
{
  suffix = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", @"settings-navigation://com.apple.Settings.PrivacyAndSecurity/SAFETY_CHECK", suffix];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:suffix];

  return v4;
}

- (id)contentBodyForWifiSyncReminder:(id)reminder
{
  reminderCopy = reminder;
  displayName = [reminderCopy displayName];
  v5 = [displayName length];

  if (!v5)
  {
    v8 = @"BODY_FALLBACK";
    goto LABEL_5;
  }

  displayName2 = [reminderCopy displayName];
  v7 = [displayName2 isEqualToString:@"Windows PC"];

  if (v7)
  {
    v8 = @"BODY_WINDOWS_PC";
LABEL_5:
    v9 = SCUILocStringForKey(v8);
    goto LABEL_7;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = SCUILocStringForKey(@"BODY");
  displayName3 = [reminderCopy displayName];
  v9 = [v10 stringWithFormat:v11, displayName3];

LABEL_7:

  return v9;
}

@end