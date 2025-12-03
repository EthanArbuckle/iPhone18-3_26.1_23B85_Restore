@interface SKINotebookInvocation
+ (id)announceRemindersRequestFromAnnounceDirectInvocationPayload:(id)payload;
@end

@implementation SKINotebookInvocation

+ (id)announceRemindersRequestFromAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.notebook.announceReminder"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  notificationIdentifier = [payloadCopy notificationIdentifier];
  if ([notificationIdentifier length])
  {
    [v6 setValue:notificationIdentifier forKey:@"notificationIdentifer"];
  }

  appBundleId = [payloadCopy appBundleId];
  v9 = [appBundleId length];

  if (v9)
  {
    appBundleId2 = [payloadCopy appBundleId];
    [v6 setValue:appBundleId2 forKey:@"appBundleId"];
  }

  appBundleIdOfLastAnnouncement = [payloadCopy appBundleIdOfLastAnnouncement];
  v12 = [appBundleIdOfLastAnnouncement length];

  if (v12)
  {
    appBundleIdOfLastAnnouncement2 = [payloadCopy appBundleIdOfLastAnnouncement];
    [v6 setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v6 setValue:v14 forKey:@"burstIndex"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v15 forKey:@"isSameTypeAsLastAnnouncement"];

  v16 = MEMORY[0x277CCABB0];
  [payloadCopy timeSinceLastAnnouncement];
  v17 = [v16 numberWithDouble:?];
  [v6 setValue:v17 forKey:@"timeSinceLastAnnouncement"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v6 setValue:v18 forKey:@"announcePlatform"];

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v19 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v20 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v19];

  return v20;
}

@end