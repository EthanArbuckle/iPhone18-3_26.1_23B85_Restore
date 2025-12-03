@interface SKIMapsInvocation
+ (id)searchLocationRequestInApp:(id)app;
+ (id)shareETARequestInApp:(id)app;
@end

@implementation SKIMapsInvocation

+ (id)shareETARequestInApp:(id)app
{
  v12[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.geo.shareETA"];
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

+ (id)searchLocationRequestInApp:(id)app
{
  v12[1] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.geo.search"];
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

@end