@interface SKINotificationsInvocation
+ (id)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(id)a3;
+ (id)announcePayloadFromUserData:(id)a3;
@end

@implementation SKINotificationsInvocation

+ (id)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(id)a3
{
  v3 = a3;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.notifications.announceNotification"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v7 = [v3 appBundleId];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v3 appBundleId];
    [v6 setValue:v9 forKey:@"appBundleId"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "synchronousBurstIndex")}];
  [v6 setValue:v10 forKey:@"synchronousBurstIndex"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isMediaPlaying")}];
  [v6 setValue:v11 forKey:@"isMediaPlaying"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v12 forKey:@"isSameTypeAsLastAnnouncement"];

  v13 = [v3 notification];
  v14 = [v13 request];

  v15 = [v14 content];
  v16 = [v14 identifier];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v14 identifier];
    [v6 setValue:v18 forKey:@"notificationId"];
  }

  v19 = [v3 notification];
  v20 = [v19 date];

  if (v20)
  {
    v21 = [v3 notification];
    v22 = [v21 date];
    [v6 setValue:v22 forKey:@"notificationDate"];
  }

  v23 = [v15 title];

  if (v23)
  {
    v24 = [v15 title];
    [v6 setValue:v24 forKey:@"notificationTitle"];
  }

  v25 = [v15 subtitle];

  if (v25)
  {
    v26 = [v15 subtitle];
    [v6 setValue:v26 forKey:@"notificationSubtitle"];
  }

  v27 = [v15 body];

  if (v27)
  {
    v28 = [v15 body];
    [v6 setValue:v28 forKey:@"notificationBody"];
  }

  v29 = [v15 threadIdentifier];

  if (v29)
  {
    v30 = [v15 threadIdentifier];
    [v6 setValue:v30 forKey:@"notificationThreadId"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "interruptionLevel")}];
  [v6 setValue:v31 forKey:@"interruptionLevel"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "announcementPlatform")}];
  [v6 setValue:v32 forKey:@"announcePlatform"];

  v39 = 0;
  v33 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v39];
  v34 = v39;
  if (v33)
  {
    [v6 setValue:v33 forKey:@"announcePayload"];
  }

  else
  {
    v35 = SKIDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(SKINotificationsInvocation *)v34 announceNotificationsRequestFromAnnounceDirectInvocationPayload:v35];
    }
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v36 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v37 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v36];

  return v37;
}

+ (id)announcePayloadFromUserData:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"announcePayload"];
  v8 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = SKIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SKINotificationsInvocation *)v5 announceNotificationsRequestFromAnnounceDirectInvocationPayload:v6];
    }
  }

  return v4;
}

+ (void)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error unarchiving SKIAnnounceNotificationDirectInvocationPayload from userData for SKINotificationsInvocation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end