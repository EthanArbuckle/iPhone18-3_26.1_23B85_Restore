@interface SFDefaults
+ (void)setHasSeenAnnounceNotifications:(BOOL)a3;
+ (void)setSiriNotificationsPrompted:(unint64_t)a3;
@end

@implementation SFDefaults

+ (void)setSiriNotificationsPrompted:(unint64_t)a3
{
  CFPrefs_SetInt64();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

+ (void)setHasSeenAnnounceNotifications:(BOOL)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  CFPrefs_SetValue();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

@end