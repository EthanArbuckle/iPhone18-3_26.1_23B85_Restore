@interface STAppLimitWarningUserNotificationContext
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)setLimitDisplayName:(id)name timeLeft:(double)left;
@end

@implementation STAppLimitWarningUserNotificationContext

- (void)setLimitDisplayName:(id)name timeLeft:(double)left
{
  v11[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy length])
  {
    v7 = objc_opt_new();
    [v7 setAllowedUnits:64];
    [v7 setUnitsStyle:3];
    v8 = [v7 stringFromTimeInterval:left];
    v11[0] = v8;
    v11[1] = nameCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v9];
  }

  else
  {
    [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:MEMORY[0x1E695E0F0]];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__STAppLimitWarningUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STAppLimitWarningUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __93__STAppLimitWarningUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"AppLimitWarningUserNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) localizedUserNotificationBodyArguments];
  v5 = [v3 localizedUserNotificationStringForKey:@"AppLimitWarningUserNotificationBody" arguments:v4];
  [*(a1 + 32) setBody:v5];

  [*(a1 + 32) setInterruptionLevel:2];
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

@end