@interface SKIMusicInvocation
+ (id)searchMusicRequestInApp:(id)a3;
@end

@implementation SKIMusicInvocation

+ (id)searchMusicRequestInApp:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.music.search"];
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

@end