@interface SBDeveloperBuildExpirationAlert
- (SBDeveloperBuildExpirationAlert)init;
- (id)dismissButtonText;
@end

@implementation SBDeveloperBuildExpirationAlert

- (SBDeveloperBuildExpirationAlert)init
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice systemVersion];
  integerValue = [systemVersion integerValue];

  v6 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"DEVELOPER_BUILD_EXPIRATION" value:@"A new iOS update is now available. Please update from the current iOS beta." table:@"SpringBoard"];
  v9 = [v6 stringWithFormat:v8, integerValue];

  v10 = [(SBDismissOnlyAlertItem *)self initWithTitle:v9 body:0];
  return v10;
}

- (id)dismissButtonText
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"CLOSE" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end