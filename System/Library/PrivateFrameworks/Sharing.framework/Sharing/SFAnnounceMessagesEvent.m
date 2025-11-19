@interface SFAnnounceMessagesEvent
+ (id)stringForExitView:(int64_t)a3;
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFAnnounceMessagesEvent

+ (id)stringForExitView:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788CEB8[a3 - 1];
  }
}

- (NSDictionary)eventPayload
{
  v14[7] = *MEMORY[0x1E69E9840];
  v13[0] = @"allowsSiriWhenLocked";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent allowsSiriWhenLocked](self, "allowsSiriWhenLocked")}];
  v14[0] = v3;
  v13[1] = @"announceMessagesAlreadyEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent announceMessagesAlreadyEnabled](self, "announceMessagesAlreadyEnabled")}];
  v14[1] = v4;
  v13[2] = @"pairingExitView";
  v5 = [objc_opt_class() stringForExitView:{-[SFAnnounceMessagesEvent pairingExitView](self, "pairingExitView")}];
  v14[2] = v5;
  v13[3] = @"skippedTutorialCards";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent skippedTutorialCards](self, "skippedTutorialCards")}];
  v14[3] = v6;
  v13[4] = @"userAutomaticallyEnrolled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userAutomaticallyEnrolled](self, "userAutomaticallyEnrolled")}];
  v14[4] = v7;
  v13[5] = @"userExplicitlyOptedIn";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userExplicitlyOptedIn](self, "userExplicitlyOptedIn")}];
  v14[5] = v8;
  v13[6] = @"userExplicitlyOptedOut";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userExplicitlyOptedOut](self, "userExplicitlyOptedOut")}];
  v14[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)submitEvent
{
  v4 = +[SFAnnounceMessagesEvent eventName];
  v3 = [(SFAnnounceMessagesEvent *)self eventPayload];
  SFMetricsLog(v4, v3);
}

@end