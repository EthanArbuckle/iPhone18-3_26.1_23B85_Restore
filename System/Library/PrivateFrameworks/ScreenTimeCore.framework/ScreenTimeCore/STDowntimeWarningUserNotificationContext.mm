@interface STDowntimeWarningUserNotificationContext
- (STDowntimeWarningUserNotificationContext)init;
- (STDowntimeWarningUserNotificationContext)initWithCoder:(id)coder;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)setTimeLeft:(double)left;
@end

@implementation STDowntimeWarningUserNotificationContext

- (STDowntimeWarningUserNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = STDowntimeWarningUserNotificationContext;
  return [(STUserNotificationContext *)&v3 initWithIdentifier:@"device_downtime_warning"];
}

- (STDowntimeWarningUserNotificationContext)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = STDowntimeWarningUserNotificationContext;
  return [(STUserNotificationContext *)&v4 initWithCoder:coder];
}

- (void)setTimeLeft:(double)left
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  [v5 setAllowedUnits:64];
  [v5 setUnitsStyle:3];
  v6 = [v5 stringFromTimeInterval:ceil(left / 60.0) * 60.0];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__STDowntimeWarningUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STDowntimeWarningUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __93__STDowntimeWarningUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"DowntimeWarningUserNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) localizedUserNotificationBodyArguments];
  v5 = [v3 localizedUserNotificationStringForKey:@"DowntimeWarningUserNotificationBody" arguments:v4];
  [*(a1 + 32) setBody:v5];

  [*(a1 + 32) setInterruptionLevel:2];
  [*(a1 + 32) setShouldSuppressScreenLightUp:1];
  BKSDisplayBrightnessGetCurrent();
  if (v6 == 0.0)
  {
    [*(a1 + 32) setSound:0];
  }

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

@end