@interface SKIVoiceShortcutsInvocation
+ (id)cleanseTriggerIdIfNeeded:(id)a3;
+ (id)startVoiceShortcutInCarPlayUsingTriggerId:(id)a3 withTriggerName:(id)a4 fromApp:(id)a5;
@end

@implementation SKIVoiceShortcutsInvocation

+ (id)startVoiceShortcutInCarPlayUsingTriggerId:(id)a3 withTriggerName:(id)a4 fromApp:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.RunVoiceShortcut"];
  v18[0] = @"triggerId";
  v11 = [SKIVoiceShortcutsInvocation cleanseTriggerIdIfNeeded:v9];

  v19[0] = v11;
  v19[1] = v8;
  v18[1] = @"triggerName";
  v18[2] = @"appBundleId";
  v19[2] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(SKIDirectInvocationPayload *)v10 setUserData:v12];

  v13 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v14 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v10];
  v15 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)cleanseTriggerIdIfNeeded:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"prompt:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"prompt:", "length")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

@end