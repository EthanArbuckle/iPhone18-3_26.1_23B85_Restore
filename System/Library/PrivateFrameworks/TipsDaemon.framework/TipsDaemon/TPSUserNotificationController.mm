@interface TPSUserNotificationController
- (BOOL)isNotificationSettingValid;
- (TPSUserNotificationController)initWithBundleIdentifier:(id)identifier;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD content:(id)content;
- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD title:(id)title text:(id)text attachmentURL:(id)l extensionPayload:(id)payload;
@end

@implementation TPSUserNotificationController

- (TPSUserNotificationController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TPSUserNotificationController;
  v5 = [(TPSLocalNotificationController *)&v11 initWithBundleIdentifier:identifierCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"tip-notification-extension" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:4];
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
    v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:identifierCopy];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v8;

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setNotificationCategories:v7];
  }

  return v5;
}

- (BOOL)isNotificationSettingValid
{
  userNotificationCenter = [(TPSUserNotificationController *)self userNotificationCenter];
  notificationSettings = [userNotificationCenter notificationSettings];

  v4 = [notificationSettings alertStyle] || objc_msgSend(notificationSettings, "notificationCenterSetting") == 2 || objc_msgSend(notificationSettings, "lockScreenSetting") == 2;
  return v4;
}

- (void)removeAllNotifications
{
  v4.receiver = self;
  v4.super_class = TPSUserNotificationController;
  [(TPSLocalNotificationController *)&v4 removeAllNotifications];
  userNotificationCenter = [(TPSUserNotificationController *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TPSUserNotificationController;
  identifierCopy = identifier;
  [(TPSLocalNotificationController *)&v8 removeNotificationWithIdentifier:identifierCopy];
  v5 = [(TPSUserNotificationController *)self userNotificationCenter:v8.receiver];
  v9[0] = identifierCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [v5 removeDeliveredNotificationsWithIdentifiers:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD title:(id)title text:(id)text attachmentURL:(id)l extensionPayload:(id)payload
{
  v38[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  lCopy = l;
  v17 = MEMORY[0x277CBEB38];
  textCopy = text;
  titleCopy = title;
  iDCopy = iD;
  v21 = [v17 dictionaryWithDictionary:payload];
  v34 = lCopy;
  if ([dCopy length])
  {
    if (lCopy)
    {
      v32 = iDCopy;
      if (payload)
      {
        v22 = 0;
      }

      else
      {
        v37 = *MEMORY[0x277CE20C8];
        v38[0] = MEMORY[0x277CBEC38];
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      }

      v31 = v22;
      v23 = MEMORY[0x277CE1F90];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v35 = 0;
      v26 = [v23 attachmentWithIdentifier:uUIDString URL:v34 options:v22 error:&v35];
      v27 = v35;

      lCopy = 0;
      if (!v27)
      {
        v36 = v26;
        lCopy = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      }

      iDCopy = v32;
    }

    [v21 setObject:dCopy forKeyedSubscript:@"collectionId"];
  }

  else
  {
    lCopy = 0;
  }

  v28 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v28 setTitle:titleCopy];

  [v28 setBody:textCopy];
  v29 = [MEMORY[0x277D71748] URLWithTipIdentifier:identifierCopy collectionIdentifier:dCopy referrer:*MEMORY[0x277D71808]];
  [v28 setDefaultActionURL:v29];

  [v28 setUserInfo:v21];
  if (lCopy)
  {
    [v28 setAttachments:lCopy];
  }

  if (payload)
  {
    [v28 setCategoryIdentifier:@"tip-notification-extension"];
  }

  [v28 setInterruptionLevel:0];
  [(TPSUserNotificationController *)self sendNotificationWithIdentifier:identifierCopy collectionID:dCopy correlationID:iDCopy content:v28];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD content:(id)content
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  contentCopy = content;
  if (identifierCopy)
  {
    v14 = identifierCopy;
  }

  else
  {
    v14 = dCopy;
  }

  v15 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v14 content:contentCopy trigger:0];
  objc_initWeak(&location, self);
  userNotificationCenter = [(TPSUserNotificationController *)self userNotificationCenter];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__TPSUserNotificationController_sendNotificationWithIdentifier_collectionID_correlationID_content___block_invoke;
  v20[3] = &unk_2789B11C0;
  objc_copyWeak(&v24, &location);
  v17 = identifierCopy;
  v21 = v17;
  v18 = dCopy;
  v22 = v18;
  v19 = iDCopy;
  v23 = v19;
  [userNotificationCenter addNotificationRequest:v15 withCompletionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __99__TPSUserNotificationController_sendNotificationWithIdentifier_collectionID_correlationID_content___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained notificationCompletedForIdentifier:*(a1 + 32) collectionID:*(a1 + 40) correlationID:*(a1 + 48) error:v3];
}

@end