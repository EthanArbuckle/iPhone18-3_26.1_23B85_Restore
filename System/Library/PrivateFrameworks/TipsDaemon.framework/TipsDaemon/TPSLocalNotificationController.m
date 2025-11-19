@interface TPSLocalNotificationController
- (TPSLocalNotificationController)initWithBundleIdentifier:(id)a3;
- (id)personalizedStringForText:(id)a3;
- (void)notificationCompletedForIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 error:(id)a6;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 title:(id)a6 text:(id)a7 attachmentURL:(id)a8 extensionPayload:(id)a9;
- (void)showNotificationForNotificationCache:(id)a3 attachmentURL:(id)a4;
@end

@implementation TPSLocalNotificationController

- (TPSLocalNotificationController)initWithBundleIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSLocalNotificationController;
  return [(TPSLocalNotificationController *)&v4 init];
}

- (id)personalizedStringForText:(id)a3
{
  v3 = MEMORY[0x277D716E8];
  v4 = a3;
  v5 = [v3 deviceMarketingName];
  v6 = [v4 stringByReplacingOccurrencesOfString:@"{{device_name}}" withString:v5];

  return v6;
}

- (void)showNotificationForNotificationCache:(id)a3 attachmentURL:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277D71740] suppressNotifications] & 1) == 0)
  {
    v8 = [v6 document];
    v9 = [v8 notification];
    v10 = [v9 title];
    v11 = [(TPSLocalNotificationController *)self personalizedStringForText:v10];

    v12 = [v9 text];
    v13 = [(TPSLocalNotificationController *)self personalizedStringForText:v12];

    v14 = [v8 identifier];
    v15 = [v6 collectionIdentifier];
    v16 = [v8 correlationID];
    if (([v11 length] || objc_msgSend(v13, "length")) && v14 | v15)
    {
      [v6 extensionPayload];
      v23 = v9;
      v17 = v7;
      v18 = v13;
      v20 = v19 = v16;
      [(TPSLocalNotificationController *)self sendNotificationWithIdentifier:v14 collectionID:v15 correlationID:v19 title:v11 text:v18 attachmentURL:v17 extensionPayload:v20];

      v16 = v19;
      v13 = v18;
      v7 = v17;
      v9 = v23;
    }

    else
    {
      v21 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v25 = v11;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_232D6F000, v21, OS_LOG_TYPE_DEFAULT, "Notification document missing information Title: %@ text: %@ identifier: %@ collectionID: %@.", buf, 0x2Au);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 title:(id)a6 text:(id)a7 attachmentURL:(id)a8 extensionPayload:(id)a9
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_232D6F000, v14, OS_LOG_TYPE_DEFAULT, "Send notification with identifier %@, collectionID %@, correlationID %@", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllNotifications
{
  v2 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_232D6F000, v2, OS_LOG_TYPE_DEFAULT, "Remove all notifications.", v3, 2u);
  }
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_232D6F000, v4, OS_LOG_TYPE_DEFAULT, "Remove notification for identifier: %@.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notificationCompletedForIdentifier:(id)a3 collectionID:(id)a4 correlationID:(id)a5 error:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v9 = v10;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{+[TPSNotificationController remainingCountOfNotificationsUntilOptOut](TPSNotificationController, "remainingCountOfNotificationsUntilOptOut")}];
  v14 = MEMORY[0x277D71640];
  if (v12)
  {
    v15 = [v12 localizedDescription];
    v16 = [v14 eventWithContentID:v9 collectionID:v10 correlationID:v11 remainingNotificationsCount:v13 errorCode:v15];
    [v16 log];

    v17 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v12;
      v18 = "Notification error %@";
LABEL_8:
      _os_log_impl(&dword_232D6F000, v17, OS_LOG_TYPE_DEFAULT, v18, &v21, 0xCu);
    }
  }

  else
  {
    v19 = [MEMORY[0x277D71640] eventWithContentID:v9 collectionID:v10 correlationID:v11 remainingNotificationsCount:v13 errorCode:0];
    [v19 log];

    v17 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v9;
      v18 = "Notification sent for identifier %@";
      goto LABEL_8;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end