@interface SKIPhoneInvocation
+ (id)announceDropInCallForType:(int64_t)a3;
+ (id)announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:(id)a3;
+ (id)announceHomeAnnouncementRequestFromApp:(id)a3 withAnnouncementIdentifier:(id)a4 withUserNotificationType:(int64_t)a5 synchronousBurstIndex:(id)a6;
+ (id)announceIncomingCallNotificationRequest:(id)a3;
+ (id)announcePayloadFromUserData:(id)a3;
+ (id)announceVoicemailRequestForAnnounceDirectInvocationPayload:(id)a3;
+ (id)readHomeAnnouncementRequestFromApp:(id)a3;
+ (id)startPhoneCallRequestFromApp:(id)a3;
@end

@implementation SKIPhoneInvocation

+ (id)announceHomeAnnouncementRequestFromApp:(id)a3 withAnnouncementIdentifier:(id)a4 withUserNotificationType:(int64_t)a5 synchronousBurstIndex:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeCommunication.announce.notification"];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if ([v9 length])
  {
    [v13 setObject:v9 forKeyedSubscript:@"appBundleId"];
  }

  if ([v10 length])
  {
    [v13 setObject:v10 forKeyedSubscript:@"announcementId"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v13 setObject:v14 forKeyedSubscript:@"notificationType"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v13 setObject:v11 forKeyedSubscript:@"synchronousBurstIndex"];
  }

  [(SKIDirectInvocationPayload *)v12 setUserData:v13];
  v15 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v16 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v15 payload:v12];
  v17 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v16];

  return v17;
}

+ (id)readHomeAnnouncementRequestFromApp:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeCommunication.read"];
  if ([v3 length])
  {
    v11 = @"appBundleId";
    v12[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  }

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:v4];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)announceIncomingCallNotificationRequest:(id)a3
{
  v3 = a3;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceIncomingCallNotification"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v7 = [v3 notification];

  if (v7)
  {
    v8 = MEMORY[0x277CCAAB0];
    v9 = [v3 notification];
    v31 = 0;
    v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v31];
    v11 = v31;

    if (v11)
    {
      v12 = SKIDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[SKIPhoneInvocation announceIncomingCallNotificationRequest:];
      }
    }

    [v6 setValue:v10 forKey:@"notification"];
  }

  v13 = [v3 appBundleId];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v3 appBundleId];
    [v6 setValue:v15 forKey:@"appBundleId"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "synchronousBurstIndex")}];
  [v6 setValue:v16 forKey:@"synchronousBurstIndex"];

  v17 = [v3 appBundleIdOfLastAnnouncement];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v3 appBundleIdOfLastAnnouncement];
    [v6 setValue:v19 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v20 forKey:@"isSameTypeAsLastAnnouncement"];

  v21 = MEMORY[0x277CCABB0];
  [v3 timeSinceLastAnnouncement];
  v22 = [v21 numberWithDouble:?];
  [v6 setValue:v22 forKey:@"timeSinceLastAnnouncement"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "announcementPlatform")}];
  [v6 setValue:v23 forKey:@"announcePlatform"];

  v30 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v30];
  v25 = v30;
  if (v24)
  {
    [v6 setValue:v24 forKey:@"announcePayload"];
  }

  else
  {
    v26 = SKIDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[SKIPhoneInvocation announceIncomingCallNotificationRequest:];
    }
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v27 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v28 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v27];

  return v28;
}

+ (id)startPhoneCallRequestFromApp:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.startPhoneCall"];
  if ([v3 length])
  {
    v11 = @"appBundleId";
    v12[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  }

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:v4];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)announceVoicemailRequestForAnnounceDirectInvocationPayload:(id)a3
{
  v3 = a3;
  v30 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceVoicemail"];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
  v6 = [v3 notification];
  v7 = [v6 request];
  v8 = [v7 content];

  v29 = v8;
  v9 = [v8 userInfo];
  v10 = [v9 valueForKey:@"VMVoicemailIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v5 setValue:v10 forKey:@"VMVoicemailIdentifier"];
  }

  v11 = [v9 valueForKey:@"MessageIdentifier"];
  if ([v11 length])
  {
    [v5 setValue:v11 forKey:@"MessageIdentifier"];
  }

  v27 = v11;
  v28 = v10;
  v12 = [v9 valueForKey:@"contactInfo"];
  if ([v12 length])
  {
    [v5 setValue:v12 forKey:@"contactInfo"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "synchronousBurstIndex")}];
  [v5 setValue:v13 forKey:@"synchronousBurstIndex"];

  v14 = [v3 appBundleIdOfLastAnnouncement];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [v3 appBundleIdOfLastAnnouncement];
    [v5 setValue:v16 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSameTypeAsLastAnnouncement")}];
  [v5 setValue:v17 forKey:@"isSameTypeAsLastAnnouncement"];

  v18 = MEMORY[0x277CCABB0];
  [v3 timeSinceLastAnnouncement];
  v19 = [v18 numberWithDouble:?];
  [v5 setValue:v19 forKey:@"timeSinceLastAnnouncement"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "announcementPlatform")}];
  [v5 setValue:v20 forKey:@"announcePlatform"];

  v31 = 0;
  v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v31];
  v22 = v31;
  if (v21)
  {
    [v5 setValue:v21 forKey:@"announcePayload"];
  }

  else
  {
    v23 = SKIDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[SKIPhoneInvocation announceIncomingCallNotificationRequest:];
    }
  }

  [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  v24 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v30 payload:v4];
  v25 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v24];

  return v25;
}

+ (id)announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:(id)a3
{
  v3 = a3;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceGroupFaceTimeInvite"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
  v7 = [v3 notification];
  v8 = [v7 request];

  v9 = [v8 content];
  v10 = [v9 userInfo];
  v11 = [v10 valueForKey:@"remoteParticipantHandles"];
  if ([v11 count])
  {
    [v6 setValue:v11 forKey:@"remoteParticipantHandles"];
  }

  v37 = v10;
  v12 = [v10 valueForKey:@"activeParticipantHandles"];
  if ([v12 count])
  {
    [v6 setValue:v12 forKey:@"activeParticipantHandles"];
  }

  v36 = v12;
  v13 = [v9 defaultActionURL];
  v14 = [v13 absoluteString];

  if ([v14 length])
  {
    [v6 setValue:v14 forKey:@"defaultActionURL"];
  }

  v15 = [v9 subtitle];
  if ([v15 length])
  {
    [v6 setValue:v15 forKey:@"subtitle"];
  }

  v35 = v14;
  v38 = v9;
  v39 = v8;
  v16 = [v8 identifier];
  if ([v16 length])
  {
    [v6 setValue:v16 forKey:@"identifier"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "synchronousBurstIndex")}];
  [v6 setValue:v17 forKey:@"synchronousBurstIndex"];

  v18 = [v3 appBundleIdOfLastAnnouncement];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [v3 appBundleIdOfLastAnnouncement];
    [v6 setValue:v20 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v34 = v16;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v21 forKey:@"isSameTypeAsLastAnnouncement"];

  v22 = MEMORY[0x277CCABB0];
  [v3 timeSinceLastAnnouncement];
  v23 = [v22 numberWithDouble:?];
  [v6 setValue:v23 forKey:@"timeSinceLastAnnouncement"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "announcementPlatform")}];
  [v6 setValue:v24 forKey:@"announcePlatform"];

  v40 = 0;
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v40];
  v26 = v40;
  v27 = v15;
  if (v25)
  {
    v28 = v11;
    [v6 setValue:v25 forKey:@"announcePayload"];
  }

  else
  {
    v29 = SKIDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[SKIPhoneInvocation announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:];
    }

    v28 = v11;
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v31 = v30 = v4;
  v32 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v31];

  return v32;
}

+ (id)announceDropInCallForType:(int64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceCallBell"];
  if (a3)
  {
    v12 = @"announcementType";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(SKIDirectInvocationPayload *)v4 setUserData:v6];
  }

  v7 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v8 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v9 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
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
      +[SKIPhoneInvocation announcePayloadFromUserData:];
    }
  }

  return v4;
}

+ (void)announceIncomingCallNotificationRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_267542000, v0, v1, "Error archiving UNNotification %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)announceIncomingCallNotificationRequest:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_267542000, v0, v1, "error archiving SKIAnnounceNotificationDirectInvocationPayload for SKIPhoneInvocation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_267542000, v0, v1, "error archving SKIAnnounceNotificationDirectInvocationPayload for SKIPhoneInvocation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)announcePayloadFromUserData:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_267542000, v0, v1, "error unarchiving SKIAnnounceNotificationDirectInvocationPayload from userData for SKIPhoneInvocation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end