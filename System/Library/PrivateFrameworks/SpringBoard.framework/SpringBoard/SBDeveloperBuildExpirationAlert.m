@interface SBDeveloperBuildExpirationAlert
- (SBDeveloperBuildExpirationAlert)init;
- (id)dismissButtonText;
@end

@implementation SBDeveloperBuildExpirationAlert

- (SBDeveloperBuildExpirationAlert)init
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 systemVersion];
  v5 = [v4 integerValue];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"DEVELOPER_BUILD_EXPIRATION" value:@"A new iOS update is now available. Please update from the current iOS beta." table:@"SpringBoard"];
  v9 = [v6 stringWithFormat:v8, v5];

  v10 = [(SBDismissOnlyAlertItem *)self initWithTitle:v9 body:0];
  return v10;
}

- (id)dismissButtonText
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"CLOSE" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end