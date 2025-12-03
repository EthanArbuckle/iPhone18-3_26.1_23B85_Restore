@interface SFAnnounceNotificationsEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFAnnounceNotificationsEvent

- (NSDictionary)eventPayload
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"tappedInitialEnable";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedInitialEnable](self, "tappedInitialEnable")}];
  v12[0] = v3;
  v11[1] = @"tappedCustomize";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedCustomize](self, "tappedCustomize")}];
  v12[1] = v4;
  v11[2] = @"tappedNotNow";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedNotNow](self, "tappedNotNow")}];
  v12[2] = v5;
  v11[3] = @"tappedDismissButton";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedDismissButton](self, "tappedDismissButton")}];
  v12[3] = v6;
  v11[4] = @"customizedApps";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent customizedApps](self, "customizedApps")}];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)submitEvent
{
  v4 = +[SFAnnounceNotificationsEvent eventName];
  eventPayload = [(SFAnnounceNotificationsEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end