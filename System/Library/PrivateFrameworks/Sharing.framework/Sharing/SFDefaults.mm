@interface SFDefaults
+ (void)setHasSeenAnnounceNotifications:(BOOL)notifications;
+ (void)setSiriNotificationsPrompted:(unint64_t)prompted;
@end

@implementation SFDefaults

+ (void)setSiriNotificationsPrompted:(unint64_t)prompted
{
  CFPrefs_SetInt64();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

+ (void)setHasSeenAnnounceNotifications:(BOOL)notifications
{
  v3 = MEMORY[0x1E695E4D0];
  if (!notifications)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  CFPrefs_SetValue();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

@end