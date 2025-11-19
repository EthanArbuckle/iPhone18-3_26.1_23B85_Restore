@interface SKIHomeAutomationInvocation
+ (id)generateAsyncDialogResponse:(id)a3 reportingDomain:(id)a4;
@end

@implementation SKIHomeAutomationInvocation

+ (id)generateAsyncDialogResponse:(id)a3 reportingDomain:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeAutomation.async"];
  v14[0] = @"reportingIdentifier";
  v14[1] = @"reportingDomain";
  v15[0] = v6;
  v15[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v9 payload:v7];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end