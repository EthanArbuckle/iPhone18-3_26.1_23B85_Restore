@interface SFAccountManager
+ (void)appleAccountSignedIn;
+ (void)appleAccountSignedOut;
@end

@implementation SFAccountManager

+ (void)appleAccountSignedIn
{
  v2 = +[SFCompanionXPCManager sharedManager];
  [v2 appleAccountSignedIn];
}

+ (void)appleAccountSignedOut
{
  v2 = +[SFCompanionXPCManager sharedManager];
  [v2 appleAccountSignedOut];
}

@end