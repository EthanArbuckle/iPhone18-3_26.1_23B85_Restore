@interface SKIVoiceShortcutsInvocation
+ (id)cleanseTriggerIdIfNeeded:(id)needed;
+ (id)startVoiceShortcutInCarPlayUsingTriggerId:(id)id withTriggerName:(id)name fromApp:(id)app;
@end

@implementation SKIVoiceShortcutsInvocation

+ (id)startVoiceShortcutInCarPlayUsingTriggerId:(id)id withTriggerName:(id)name fromApp:(id)app
{
  v19[3] = *MEMORY[0x277D85DE8];
  appCopy = app;
  nameCopy = name;
  idCopy = id;
  v10 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.RunVoiceShortcut"];
  v18[0] = @"triggerId";
  v11 = [SKIVoiceShortcutsInvocation cleanseTriggerIdIfNeeded:idCopy];

  v19[0] = v11;
  v19[1] = nameCopy;
  v18[1] = @"triggerName";
  v18[2] = @"appBundleId";
  v19[2] = appCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(SKIDirectInvocationPayload *)v10 setUserData:v12];

  v13 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v14 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v10];
  v15 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)cleanseTriggerIdIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy hasPrefix:@"prompt:"])
  {
    v4 = [neededCopy substringFromIndex:{objc_msgSend(@"prompt:", "length")}];
  }

  else
  {
    v4 = neededCopy;
  }

  v5 = v4;

  return v5;
}

@end