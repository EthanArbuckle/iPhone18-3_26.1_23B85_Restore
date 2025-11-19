@interface SKINotebookInvocation
+ (id)announceRemindersRequestFromAnnounceDirectInvocationPayload:(id)a3;
@end

@implementation SKINotebookInvocation

+ (id)announceRemindersRequestFromAnnounceDirectInvocationPayload:(id)a3
{
  v3 = a3;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.notebook.announceReminder"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v7 = [v3 notificationIdentifier];
  if ([v7 length])
  {
    [v6 setValue:v7 forKey:@"notificationIdentifer"];
  }

  v8 = [v3 appBundleId];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v3 appBundleId];
    [v6 setValue:v10 forKey:@"appBundleId"];
  }

  v11 = [v3 appBundleIdOfLastAnnouncement];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v3 appBundleIdOfLastAnnouncement];
    [v6 setValue:v13 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "synchronousBurstIndex")}];
  [v6 setValue:v14 forKey:@"burstIndex"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v15 forKey:@"isSameTypeAsLastAnnouncement"];

  v16 = MEMORY[0x277CCABB0];
  [v3 timeSinceLastAnnouncement];
  v17 = [v16 numberWithDouble:?];
  [v6 setValue:v17 forKey:@"timeSinceLastAnnouncement"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "announcementPlatform")}];
  [v6 setValue:v18 forKey:@"announcePlatform"];

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v19 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v20 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v19];

  return v20;
}

@end