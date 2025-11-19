@interface STLocationServicesUnlockedUserNotificationContext
- (STLocationServicesUnlockedUserNotificationContext)init;
- (STLocationServicesUnlockedUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation STLocationServicesUnlockedUserNotificationContext

- (STLocationServicesUnlockedUserNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = STLocationServicesUnlockedUserNotificationContext;
  return [(STUserNotificationContext *)&v3 initWithIdentifier:@"location_services_unlocked"];
}

- (STLocationServicesUnlockedUserNotificationContext)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = STLocationServicesUnlockedUserNotificationContext;
  return [(STUserNotificationContext *)&v4 initWithCoder:a3];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__STLocationServicesUnlockedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6C98;
  v12 = v6;
  v13 = v7;
  v10.receiver = self;
  v10.super_class = STLocationServicesUnlockedUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __102__STLocationServicesUnlockedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"LocationServicesUnlockedUserNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"LocationServicesUnlockedUserNotificationBody" arguments:0];
  [*(a1 + 32) setBody:v3];

  [*(a1 + 32) setShouldIgnoreDoNotDisturb:1];
  [*(a1 + 32) setShouldSuppressScreenLightUp:1];
  [*(a1 + 32) setCategoryIdentifier:@"com.apple.screentime.enabled"];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end