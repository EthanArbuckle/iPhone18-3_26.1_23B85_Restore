@interface SBVoiceDisabledBundles
+ (BOOL)voiceControlDisabledByCurrentlyRunningApp;
+ (void)setAppDisabledVoiceControl:(BOOL)control bundleIdentifier:(id)identifier;
@end

@implementation SBVoiceDisabledBundles

+ (void)setAppDisabledVoiceControl:(BOOL)control bundleIdentifier:(id)identifier
{
  controlCopy = control;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = __disabledVoiceControlBundleIds;
    if (controlCopy)
    {
      v6 = identifierCopy;
      if (!__disabledVoiceControlBundleIds)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
        v8 = __disabledVoiceControlBundleIds;
        __disabledVoiceControlBundleIds = v7;

        v6 = identifierCopy;
        v5 = __disabledVoiceControlBundleIds;
      }

      [v5 addObject:v6];
    }

    else
    {
      [__disabledVoiceControlBundleIds removeObject:identifierCopy];
      if (![__disabledVoiceControlBundleIds count])
      {
        v9 = __disabledVoiceControlBundleIds;
        __disabledVoiceControlBundleIds = 0;
      }
    }
  }
}

+ (BOOL)voiceControlDisabledByCurrentlyRunningApp
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [__disabledVoiceControlBundleIds copy];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = +[SBApplicationController sharedInstanceIfExists];
        v10 = [v9 applicationWithBundleIdentifier:v8];

        processState = [v10 processState];
        isRunning = [processState isRunning];

        if (isRunning)
        {
          v5 = 1;
        }

        else
        {
          [self setAppDisabledVoiceControl:0 bundleIdentifier:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end