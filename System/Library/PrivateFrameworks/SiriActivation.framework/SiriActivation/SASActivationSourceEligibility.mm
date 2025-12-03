@interface SASActivationSourceEligibility
- (BOOL)shouldSystemOfferActivationForSource:(int64_t)source systemAssistantExperienceEnabled:(BOOL)enabled;
- (SASActivationSourceEligibility)initWithDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)eligibilityDidChange;
@end

@implementation SASActivationSourceEligibility

- (SASActivationSourceEligibility)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = SASActivationSourceEligibility;
  v8 = [(SASActivationSourceEligibility *)&v16 init];
  if (v8)
  {
    v9 = [[SASLockStateMonitor alloc] initWithLoggingAllowed:0];
    lockStateMonitor = v8->_lockStateMonitor;
    v8->_lockStateMonitor = v9;

    [(SASLockStateMonitor *)v8->_lockStateMonitor setDelegate:v8];
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_queue, queue);
    v11 = +[SASSystemState sharedSystemState];
    [v11 addStateChangeListener:v8];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _SASActivationSourceEligibilityPreferencesDidChange, *MEMORY[0x1E698D290], 0, 0);
    v13 = AFRestrictionsChangedNotificationName();
    if (v13)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__restrictionsChanged_ name:v13 object:0];
    }
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E698D290], 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SASActivationSourceEligibility;
  [(SASActivationSourceEligibility *)&v5 dealloc];
}

- (BOOL)shouldSystemOfferActivationForSource:(int64_t)source systemAssistantExperienceEnabled:(BOOL)enabled
{
  v26 = *MEMORY[0x1E69E9840];
  if (source != 57 && source != 54)
  {
    if (source != 48)
    {
      LOBYTE(mEMORY[0x1E698D1C0]2) = 1;
      goto LABEL_21;
    }

    if (enabled)
    {
      mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
      if ([mEMORY[0x1E698D1C0] quickTypeGestureEnabled])
      {
        v6 = +[SASSystemState sharedSystemState];
        if ([v6 isConnectedToCarPlay])
        {
          LOBYTE(mEMORY[0x1E698D1C0]2) = 0;
        }

        else
        {
          v13 = +[SASSystemState sharedSystemState];
          LODWORD(mEMORY[0x1E698D1C0]2) = [v13 isInAAAGame] ^ 1;
        }
      }

      else
      {
        LOBYTE(mEMORY[0x1E698D1C0]2) = 0;
      }

      goto LABEL_21;
    }

LABEL_12:
    LOBYTE(mEMORY[0x1E698D1C0]2) = 0;
    goto LABEL_21;
  }

  v8 = AFDeviceSupportsVisualIntelligence();
  if (source == 57)
  {
    v12 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[SASActivationSourceEligibility shouldSystemOfferActivationForSource:systemAssistantExperienceEnabled:]";
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation isVisualIntelligenceWidgetControlEnabled: %d", &v16, 0x12u);
    }

    LOBYTE(mEMORY[0x1E698D1C0]2) = v8;
  }

  else
  {
    if (source != 54)
    {
      goto LABEL_12;
    }

    v9 = AFIsAppleIntelligenceEnabled();
    mEMORY[0x1E698D1C0]2 = [MEMORY[0x1E698D1C0] sharedPreferences];
    visualIntelligenceCameraControlEnabled = [mEMORY[0x1E698D1C0]2 visualIntelligenceCameraControlEnabled];

    LOBYTE(mEMORY[0x1E698D1C0]2) = visualIntelligenceCameraControlEnabled & v8 & v9;
    v11 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = "[SASActivationSourceEligibility shouldSystemOfferActivationForSource:systemAssistantExperienceEnabled:]";
      v18 = 1024;
      v19 = visualIntelligenceCameraControlEnabled & v8 & v9;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = visualIntelligenceCameraControlEnabled;
      v24 = 1024;
      v25 = v9 & 1;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation isVisualIntelligenceCameraControlLaunchEnabled: %d, isVisualIntelligenceSupported: %d, isCameraControlEnabled: %d, isAppleIntelligenceEnabled: %d", &v16, 0x24u);
    }
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return mEMORY[0x1E698D1C0]2;
}

- (void)eligibilityDidChange
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SASActivationSourceEligibility_eligibilityDidChange__block_invoke;
  v4[3] = &unk_1E82F36D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__SASActivationSourceEligibility_eligibilityDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 activationEligibilityDidChange];

    WeakRetained = v3;
  }
}

@end