@interface SKIPhoneInvocation
+ (id)announceDropInCallForType:(int64_t)type;
+ (id)announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:(id)payload;
+ (id)announceHomeAnnouncementRequestFromApp:(id)app withAnnouncementIdentifier:(id)identifier withUserNotificationType:(int64_t)type synchronousBurstIndex:(id)index;
+ (id)announceIncomingCallNotificationRequest:(id)request;
+ (id)announcePayloadFromUserData:(id)data;
+ (id)announceVoicemailRequestForAnnounceDirectInvocationPayload:(id)payload;
+ (id)readHomeAnnouncementRequestFromApp:(id)app;
+ (id)startPhoneCallRequestFromApp:(id)app;
@end

@implementation SKIPhoneInvocation

+ (id)announceHomeAnnouncementRequestFromApp:(id)app withAnnouncementIdentifier:(id)identifier withUserNotificationType:(int64_t)type synchronousBurstIndex:(id)index
{
  appCopy = app;
  identifierCopy = identifier;
  indexCopy = index;
  v12 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeCommunication.announce.notification"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([appCopy length])
  {
    [dictionary setObject:appCopy forKeyedSubscript:@"appBundleId"];
  }

  if ([identifierCopy length])
  {
    [dictionary setObject:identifierCopy forKeyedSubscript:@"announcementId"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [dictionary setObject:v14 forKeyedSubscript:@"notificationType"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [dictionary setObject:indexCopy forKeyedSubscript:@"synchronousBurstIndex"];
  }

  [(SKIDirectInvocationPayload *)v12 setUserData:dictionary];
  v15 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v16 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v15 payload:v12];
  v17 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v16];

  return v17;
}

+ (id)readHomeAnnouncementRequestFromApp:(id)app
{
  v12[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeCommunication.read"];
  if ([appCopy length])
  {
    v11 = @"appBundleId";
    v12[0] = appCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  }

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:v4];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)announceIncomingCallNotificationRequest:(id)request
{
  requestCopy = request;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceIncomingCallNotification"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  notification = [requestCopy notification];

  if (notification)
  {
    v8 = MEMORY[0x277CCAAB0];
    notification2 = [requestCopy notification];
    v31 = 0;
    v10 = [v8 archivedDataWithRootObject:notification2 requiringSecureCoding:1 error:&v31];
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

  appBundleId = [requestCopy appBundleId];
  v14 = [appBundleId length];

  if (v14)
  {
    appBundleId2 = [requestCopy appBundleId];
    [v6 setValue:appBundleId2 forKey:@"appBundleId"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "synchronousBurstIndex")}];
  [v6 setValue:v16 forKey:@"synchronousBurstIndex"];

  appBundleIdOfLastAnnouncement = [requestCopy appBundleIdOfLastAnnouncement];
  v18 = [appBundleIdOfLastAnnouncement length];

  if (v18)
  {
    appBundleIdOfLastAnnouncement2 = [requestCopy appBundleIdOfLastAnnouncement];
    [v6 setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(requestCopy, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v20 forKey:@"isSameTypeAsLastAnnouncement"];

  v21 = MEMORY[0x277CCABB0];
  [requestCopy timeSinceLastAnnouncement];
  v22 = [v21 numberWithDouble:?];
  [v6 setValue:v22 forKey:@"timeSinceLastAnnouncement"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "announcementPlatform")}];
  [v6 setValue:v23 forKey:@"announcePlatform"];

  v30 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v30];
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

+ (id)startPhoneCallRequestFromApp:(id)app
{
  v12[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.startPhoneCall"];
  if ([appCopy length])
  {
    v11 = @"appBundleId";
    v12[0] = appCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [(SKIDirectInvocationPayload *)v4 setUserData:v5];
  }

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:v4];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)announceVoicemailRequestForAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v30 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceVoicemail"];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
  notification = [payloadCopy notification];
  request = [notification request];
  content = [request content];

  v29 = content;
  userInfo = [content userInfo];
  v10 = [userInfo valueForKey:@"VMVoicemailIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v5 setValue:v10 forKey:@"VMVoicemailIdentifier"];
  }

  v11 = [userInfo valueForKey:@"MessageIdentifier"];
  if ([v11 length])
  {
    [v5 setValue:v11 forKey:@"MessageIdentifier"];
  }

  v27 = v11;
  v28 = v10;
  v12 = [userInfo valueForKey:@"contactInfo"];
  if ([v12 length])
  {
    [v5 setValue:v12 forKey:@"contactInfo"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v5 setValue:v13 forKey:@"synchronousBurstIndex"];

  appBundleIdOfLastAnnouncement = [payloadCopy appBundleIdOfLastAnnouncement];
  v15 = [appBundleIdOfLastAnnouncement length];

  if (v15)
  {
    appBundleIdOfLastAnnouncement2 = [payloadCopy appBundleIdOfLastAnnouncement];
    [v5 setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [v5 setValue:v17 forKey:@"isSameTypeAsLastAnnouncement"];

  v18 = MEMORY[0x277CCABB0];
  [payloadCopy timeSinceLastAnnouncement];
  v19 = [v18 numberWithDouble:?];
  [v5 setValue:v19 forKey:@"timeSinceLastAnnouncement"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v5 setValue:v20 forKey:@"announcePlatform"];

  v31 = 0;
  v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v31];
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

+ (id)announceGroupFaceTimeRequestForAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceGroupFaceTimeInvite"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
  notification = [payloadCopy notification];
  request = [notification request];

  content = [request content];
  userInfo = [content userInfo];
  v11 = [userInfo valueForKey:@"remoteParticipantHandles"];
  if ([v11 count])
  {
    [v6 setValue:v11 forKey:@"remoteParticipantHandles"];
  }

  v37 = userInfo;
  v12 = [userInfo valueForKey:@"activeParticipantHandles"];
  if ([v12 count])
  {
    [v6 setValue:v12 forKey:@"activeParticipantHandles"];
  }

  v36 = v12;
  defaultActionURL = [content defaultActionURL];
  absoluteString = [defaultActionURL absoluteString];

  if ([absoluteString length])
  {
    [v6 setValue:absoluteString forKey:@"defaultActionURL"];
  }

  subtitle = [content subtitle];
  if ([subtitle length])
  {
    [v6 setValue:subtitle forKey:@"subtitle"];
  }

  v35 = absoluteString;
  v38 = content;
  v39 = request;
  identifier = [request identifier];
  if ([identifier length])
  {
    [v6 setValue:identifier forKey:@"identifier"];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v6 setValue:v17 forKey:@"synchronousBurstIndex"];

  appBundleIdOfLastAnnouncement = [payloadCopy appBundleIdOfLastAnnouncement];
  v19 = [appBundleIdOfLastAnnouncement length];

  if (v19)
  {
    appBundleIdOfLastAnnouncement2 = [payloadCopy appBundleIdOfLastAnnouncement];
    [v6 setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v34 = identifier;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v21 forKey:@"isSameTypeAsLastAnnouncement"];

  v22 = MEMORY[0x277CCABB0];
  [payloadCopy timeSinceLastAnnouncement];
  v23 = [v22 numberWithDouble:?];
  [v6 setValue:v23 forKey:@"timeSinceLastAnnouncement"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v6 setValue:v24 forKey:@"announcePlatform"];

  v40 = 0;
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v40];
  v26 = v40;
  v27 = subtitle;
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

+ (id)announceDropInCallForType:(int64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.phone.announceCallBell"];
  if (type)
  {
    v12 = @"announcementType";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
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

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
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