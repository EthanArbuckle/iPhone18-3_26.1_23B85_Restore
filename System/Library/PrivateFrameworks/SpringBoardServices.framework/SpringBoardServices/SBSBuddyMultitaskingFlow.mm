@interface SBSBuddyMultitaskingFlow
+ (id)sharedInstance;
- (BOOL)needsToShow;
- (SBSBuddyMultitaskingFlow)init;
- (int64_t)_initialMultitaskingOptionSelectedInViewController;
- (int64_t)_telemetryMultitaskingModeForOption:(int64_t)option;
- (int64_t)currentMultitaskingOption;
- (void)_emitBuddyWindowingPersonalizationTelemetry;
- (void)dealloc;
- (void)setCurrentMultitaskingOption:(int64_t)option;
@end

@implementation SBSBuddyMultitaskingFlow

+ (id)sharedInstance
{
  v2 = objc_alloc_init(SBSBuddyMultitaskingFlow);

  return v2;
}

- (SBSBuddyMultitaskingFlow)init
{
  selfCopy = self;
  if (__sharedInstance)
  {
    v3 = __sharedInstance;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBSBuddyMultitaskingFlow;
    v4 = [(SBSBuddyMultitaskingFlow *)&v11 init];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
      sbDefaults = v4->_sbDefaults;
      v4->_sbDefaults = v5;

      v4->_hasShownMultitaskingBuddyPane = 0;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v8 = getBYSetupAssistantFinishedDarwinNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _SBSetupAssistantFinished, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    objc_storeStrong(&__sharedInstance, v4);
    v3 = v4;
    selfCopy = v3;
  }

  v9 = v3;

  return v9;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = getBYSetupAssistantFinishedDarwinNotification();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5.receiver = self;
  v5.super_class = SBSBuddyMultitaskingFlow;
  [(SBSBuddyMultitaskingFlow *)&v5 dealloc];
}

- (int64_t)currentMultitaskingOption
{
  v3 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBChamoisWindowingEnabled"];
  v4 = [(NSUserDefaults *)self->_sbDefaults objectForKey:@"SBMedusaMultitaskingEnabled"];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBMedusaMultitaskingEnabled"];

    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v3)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (void)setCurrentMultitaskingOption:(int64_t)option
{
  [(NSUserDefaults *)self->_sbDefaults setBool:0 forKey:@"SBChamoisWindowingEnabled"];
  sbDefaults = self->_sbDefaults;

  [(NSUserDefaults *)sbDefaults setBool:option == 1 forKey:@"SBMedusaMultitaskingEnabled"];
}

- (BOOL)needsToShow
{
  if (!_os_feature_enabled_impl() || ([MEMORY[0x1E698E730] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "deviceClass"), v3, v4 != 2))
  {
    v8 = SBLogBuddy();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Should not show multitasking buddy pane due to flexible windowing feature is disabled or current device is not an iPad.";
      v11 = buf;
      goto LABEL_10;
    }

LABEL_11:
    v12 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  if ([(SBSBuddyMultitaskingFlow *)self currentMultitaskingOption]== -1)
  {
    v8 = SBLogBuddy();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v17 = 0;
    v10 = "Should not show multitasking buddy pane due to upgrading from Stage Manager.";
    v11 = &v17;
    goto LABEL_10;
  }

  v5 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  [(SBSBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  v7 = v6;
  v8 = SBLogBuddy();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 <= 3.0 && !v5)
  {
    if (v9)
    {
      v16 = 0;
      v10 = "Should not show multitasking buddy pane due to current device has memory size <= 3GB and user has never used multiple app configuration before.";
      v11 = &v16;
LABEL_10:
      _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    *v15 = 0;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "Should show multitasking buddy pane", v15, 2u);
  }

  v12 = 1;
  v13 = 1;
LABEL_12:

  self->_hasShownMultitaskingBuddyPane = v12;
  return v13;
}

- (int64_t)_initialMultitaskingOptionSelectedInViewController
{
  v3 = [(NSUserDefaults *)self->_sbDefaults BOOLForKey:@"SBHasEverUsedMultiAppConfiguration"];
  [(SBSBuddyMultitaskingFlow *)self _currentDeviceMemorySizeInGigabytes];
  if (v4 >= 8.0 && v3)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_emitBuddyWindowingPersonalizationTelemetry
{
  if (self->_hasShownMultitaskingBuddyPane)
  {
    v3 = [(SBSBuddyMultitaskingFlow *)self _telemetryMultitaskingModeForOption:[(SBSBuddyMultitaskingFlow *)self _initialMultitaskingOptionSelectedInViewController]];
    if (self->_hasShownMultitaskingBuddyPane)
    {
      v4 = [(SBSBuddyMultitaskingFlow *)self _telemetryMultitaskingModeForOption:[(SBSBuddyMultitaskingFlow *)self currentMultitaskingOption]];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_6:
  v5 = [[SBSBuddyWindowingTelemetryPersonalizationMetrics alloc] initWithPreviousMultitaskingMode:v3 currentMultitaskingMode:v4 hasShownMultitaskingBuddyPane:self->_hasShownMultitaskingBuddyPane];
  [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)v5 emit];
}

- (int64_t)_telemetryMultitaskingModeForOption:(int64_t)option
{
  if (option == 1)
  {
    return 2;
  }

  else
  {
    return option == 0;
  }
}

@end