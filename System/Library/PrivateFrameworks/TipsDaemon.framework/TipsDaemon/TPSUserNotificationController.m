@interface TPSUserNotificationController
- (BOOL)isNotificationSettingValid;
- (TPSUserNotificationController)initWithBundleIdentifier:(id)a3;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 content:(id)a6;
- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 title:(id)a6 text:(id)a7 attachmentURL:(id)a8 extensionPayload:(id)a9;
@end

@implementation TPSUserNotificationController

- (TPSUserNotificationController)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSUserNotificationController;
  v5 = [(TPSLocalNotificationController *)&v11 initWithBundleIdentifier:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"tip-notification-extension" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:4];
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
    v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v4];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v8;

    [(UNUserNotificationCenter *)v5->_userNotificationCenter setNotificationCategories:v7];
  }

  return v5;
}

- (BOOL)isNotificationSettingValid
{
  v2 = [(TPSUserNotificationController *)self userNotificationCenter];
  v3 = [v2 notificationSettings];

  v4 = [v3 alertStyle] || objc_msgSend(v3, "notificationCenterSetting") == 2 || objc_msgSend(v3, "lockScreenSetting") == 2;
  return v4;
}

- (void)removeAllNotifications
{
  v4.receiver = self;
  v4.super_class = TPSUserNotificationController;
  [(TPSLocalNotificationController *)&v4 removeAllNotifications];
  v3 = [(TPSUserNotificationController *)self userNotificationCenter];
  [v3 removeAllDeliveredNotifications];
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TPSUserNotificationController;
  v4 = a3;
  [(TPSLocalNotificationController *)&v8 removeNotificationWithIdentifier:v4];
  v5 = [(TPSUserNotificationController *)self userNotificationCenter:v8.receiver];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [v5 removeDeliveredNotificationsWithIdentifiers:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 title:(id)a6 text:(id)a7 attachmentURL:(id)a8 extensionPayload:(id)a9
{
  v38[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = MEMORY[0x277CBEB38];
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = [v17 dictionaryWithDictionary:a9];
  v34 = v16;
  if ([v15 length])
  {
    if (v16)
    {
      v32 = v20;
      if (a9)
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
      v24 = [MEMORY[0x277CCAD78] UUID];
      v25 = [v24 UUIDString];
      v35 = 0;
      v26 = [v23 attachmentWithIdentifier:v25 URL:v34 options:v22 error:&v35];
      v27 = v35;

      v16 = 0;
      if (!v27)
      {
        v36 = v26;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      }

      v20 = v32;
    }

    [v21 setObject:v15 forKeyedSubscript:@"collectionId"];
  }

  else
  {
    v16 = 0;
  }

  v28 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v28 setTitle:v19];

  [v28 setBody:v18];
  v29 = [MEMORY[0x277D71748] URLWithTipIdentifier:v14 collectionIdentifier:v15 referrer:*MEMORY[0x277D71808]];
  [v28 setDefaultActionURL:v29];

  [v28 setUserInfo:v21];
  if (v16)
  {
    [v28 setAttachments:v16];
  }

  if (a9)
  {
    [v28 setCategoryIdentifier:@"tip-notification-extension"];
  }

  [v28 setInterruptionLevel:0];
  [(TPSUserNotificationController *)self sendNotificationWithIdentifier:v14 collectionID:v15 correlationID:v20 content:v28];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 content:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  v15 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v14 content:v13 trigger:0];
  objc_initWeak(&location, self);
  v16 = [(TPSUserNotificationController *)self userNotificationCenter];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__TPSUserNotificationController_sendNotificationWithIdentifier_collectionID_correlationID_content___block_invoke;
  v20[3] = &unk_2789B11C0;
  objc_copyWeak(&v24, &location);
  v17 = v10;
  v21 = v17;
  v18 = v11;
  v22 = v18;
  v19 = v12;
  v23 = v19;
  [v16 addNotificationRequest:v15 withCompletionHandler:v20];

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