@interface STShareMyLocationUnlockedUserNotificationContext
- (STShareMyLocationUnlockedUserNotificationContext)init;
- (STShareMyLocationUnlockedUserNotificationContext)initWithCoder:(id)coder;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
@end

@implementation STShareMyLocationUnlockedUserNotificationContext

- (STShareMyLocationUnlockedUserNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = STShareMyLocationUnlockedUserNotificationContext;
  return [(STUserNotificationContext *)&v3 initWithIdentifier:@"share_my_location_unlocked"];
}

- (STShareMyLocationUnlockedUserNotificationContext)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = STShareMyLocationUnlockedUserNotificationContext;
  return [(STUserNotificationContext *)&v4 initWithCoder:coder];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__STShareMyLocationUnlockedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6C98;
  v12 = contentCopy;
  v13 = blockCopy;
  v10.receiver = self;
  v10.super_class = STShareMyLocationUnlockedUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __101__STShareMyLocationUnlockedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"ShareMyLocationUnlockedUserNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"ShareMyLocationUnlockedUserNotificationBody" arguments:0];
  [*(a1 + 32) setBody:v3];

  [*(a1 + 32) setShouldIgnoreDoNotDisturb:1];
  [*(a1 + 32) setShouldSuppressScreenLightUp:1];
  [*(a1 + 32) setCategoryIdentifier:@"com.apple.screentime.enabled"];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end