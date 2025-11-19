@interface SBBiometricEventLogger
+ (id)sharedInstance;
+ (void)logClass:(unsigned __int8)a3 code:(unsigned int)a4;
+ (void)logEvent:(unsigned int)a3;
- (BOOL)_shouldSyslogTimestamps;
- (SBBiometricEventLogger)init;
- (unint64_t)_machTimeInMilliseconds;
- (void)_authRequestCompleted:(id)a3;
- (void)_backlightLevelChanged:(id)a3;
- (void)_clearEverything;
- (void)_coversheetSwipedForDismissal:(id)a3;
- (void)_fingerOn:(id)a3;
- (void)_keybagBioUnlock:(id)a3;
- (void)_passcodePromptCancelled:(id)a3;
- (void)_passcodeViewTransitionedToPasscode:(id)a3;
- (void)_prearmMatch:(id)a3;
- (void)_systemDidWakeFromSleep:(id)a3;
- (void)_tryAgain:(id)a3;
- (void)_unlockAnimationWillStart:(id)a3;
- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4;
- (void)timestampEvent:(unint64_t)a3;
@end

@implementation SBBiometricEventLogger

- (void)_clearEverything
{
  [(SBBiometricEventLogger *)self setFingerOn:0];
  [(SBBiometricEventLogger *)self setKeybagUnlocked:0];

  [(SBBiometricEventLogger *)self setFingerOnWithScreenOn:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_45 != -1)
  {
    +[SBBiometricEventLogger sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_23;

  return v3;
}

void __40__SBBiometricEventLogger_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBBiometricEventLogger);
  v1 = sharedInstance___sharedInstance_23;
  sharedInstance___sharedInstance_23 = v0;
}

+ (void)logEvent:(unsigned int)a3
{
  v3 = *&a3;
  if (__loadBiometricKitIfNecessary_onceToken != -1)
  {
    +[SBBiometricEventLogger logEvent:];
  }

  v4 = BKLogEventFn;
  if (__loadBiometricKitIfNecessary_biometricKit)
  {
    v5 = BKLogEventFn == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {

    v4(v3);
  }
}

+ (void)logClass:(unsigned __int8)a3 code:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  if (__loadBiometricKitIfNecessary_onceToken != -1)
  {
    +[SBBiometricEventLogger logEvent:];
  }

  v6 = BKLogCodeFn;
  if (__loadBiometricKitIfNecessary_biometricKit)
  {
    v7 = BKLogCodeFn == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v6(v5, v4);
  }
}

- (SBBiometricEventLogger)init
{
  v9.receiver = self;
  v9.super_class = SBBiometricEventLogger;
  v2 = [(SBBiometricEventLogger *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__screenTurnedOn_ name:*MEMORY[0x277D67A08] object:0];
    [v3 addObserver:v2 selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [v3 addObserver:v2 selector:sel__fingerOn_ name:@"SBBiometricEventTimestampNotificationFingerOn" object:0];
    [v3 addObserver:v2 selector:sel__tryAgain_ name:@"SBBiometricEventTimestampNotificationTryAgain" object:0];
    [v3 addObserver:v2 selector:sel__keybagBioUnlock_ name:@"SBBiometricEventTimestampNotificationKeybagUnlock" object:0];
    [v3 addObserver:v2 selector:sel__unlockAnimationWillStart_ name:@"SBCoverSheetWillAnimateDeactivation" object:0];
    [v3 addObserver:v2 selector:sel__prearmMatch_ name:@"SBBiometricEventTimestampNotificationPrearmMatch" object:0];
    [v3 addObserver:v2 selector:sel__authRequestCompleted_ name:*MEMORY[0x277D66060] object:0];
    [v3 addObserver:v2 selector:sel__systemDidWakeFromSleep_ name:@"SBWorkspaceDidWakeFromSleepNotification" object:0];
    [v3 addObserver:v2 selector:sel__passcodePromptCancelled_ name:@"SBBiometricEventTimestampNotificationPasscodeCancelled" object:0];
    [v3 addObserver:v2 selector:sel__coversheetSwipedForDismissal_ name:@"SBBiometricEventTimestampNotificationCoversheetSwipedForDismissal" object:0];
    [v3 addObserver:v2 selector:sel__passcodeViewTransitionedToPasscode_ name:*MEMORY[0x277D67F70] object:0];
    v4 = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v2->_biometricResource;
    v2->_biometricResource = v4;

    [(SBUIBiometricResource *)v2->_biometricResource addObserver:v2];
    if (__loadBiometricKitIfNecessary_onceToken != -1)
    {
      [SBBiometricEventLogger init];
    }

    if (__loadBiometricKitIfNecessary_biometricKit)
    {
      v6 = [NSClassFromString(&cfstr_Biometrickit.isa) manager];
      biometricKit = v2->_biometricKit;
      v2->_biometricKit = v6;
    }
  }

  return v2;
}

- (void)_backlightLevelChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67A28]];
  [v5 floatValue];

  self->_isScreenOn = BSFloatGreaterThanFloat();

  [(SBBiometricEventLogger *)self _resetPasscodeStateMachine];
}

- (void)_fingerOn:(id)a3
{
  [(SBBiometricEventLogger *)self setFingerOn:1];
  [(SBBiometricEventLogger *)self setFingerOnWithScreenOn:self->_isScreenOn];
  [(SBBiometricEventLogger *)self timestampEvent:1];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:0];
}

- (void)_tryAgain:(id)a3
{
  [(SBBiometricEventLogger *)self timestampEvent:2];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:1];
}

- (void)_keybagBioUnlock:(id)a3
{
  [(SBBiometricEventLogger *)self setKeybagUnlocked:1];
  [(SBBiometricEventLogger *)self timestampEvent:3];
  [(BiometricKit *)self->_biometricKit timestampEvent:2];

  [(SBBiometricEventLogger *)self _biometricAuthenticationSucceeded];
}

- (void)_unlockAnimationWillStart:(id)a3
{
  if ([(SBBiometricEventLogger *)self fingerOn]&& [(SBBiometricEventLogger *)self keybagUnlocked])
  {
    [(SBBiometricEventLogger *)self timestampEvent:4];
    [(BiometricKit *)self->_biometricKit timestampEvent:3];
  }

  [(SBBiometricEventLogger *)self _clearEverything];
}

- (void)_prearmMatch:(id)a3
{
  [(SBBiometricEventLogger *)self timestampEvent:5];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:4];
}

- (void)_authRequestCompleted:(id)a3
{
  v11 = [a3 userInfo];
  v4 = [v11 objectForKeyedSubscript:*MEMORY[0x277D66058]];
  v5 = [v11 objectForKeyedSubscript:*MEMORY[0x277D66068]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && [v4 integerValue] == 1)
  {
    v8 = [v6 isEqualToString:*MEMORY[0x277D66070]];
    v9 = objc_opt_class();
    v10 = v8 ? 458752 : 458754;
    [v9 logEvent:v10];
    if (v8)
    {
      [(SBBiometricEventLogger *)self _passcodeAuthenticationSucceeded];
    }
  }
}

- (void)_systemDidWakeFromSleep:(id)a3
{
  v3 = objc_opt_class();

  [v3 logEvent:0x10000];
}

- (void)_passcodePromptCancelled:(id)a3
{
  v3 = objc_opt_class();

  [v3 logEvent:458753];
}

- (void)_coversheetSwipedForDismissal:(id)a3
{
  v3 = objc_opt_class();

  [v3 logEvent:131077];
}

- (void)_passcodeViewTransitionedToPasscode:(id)a3
{
  v3 = 393217;
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:*MEMORY[0x277D67F80]];
  if ([v4 isEqualToString:*MEMORY[0x277D67F90]])
  {
    v3 = 393219;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D67F98]])
  {
    v3 = 393221;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D67F88]])
  {
    v3 = 393220;
  }

  else if (![v4 isEqualToString:*MEMORY[0x277D67F78]])
  {
    goto LABEL_9;
  }

  [objc_opt_class() logEvent:v3];
LABEL_9:
}

- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4
{
  [objc_opt_class() logClass:7 code:a4];
  if (a4 - 9 > 2)
  {
    if (a4 - 25 <= 1)
    {
      v6 = objc_opt_class();

      [v6 logEvent:393218];
    }
  }

  else
  {

    [(SBBiometricEventLogger *)self _biometricAuthenticationFailed];
  }
}

- (BOOL)_shouldSyslogTimestamps
{
  if (_shouldSyslogTimestamps_onceToken != -1)
  {
    [SBBiometricEventLogger _shouldSyslogTimestamps];
  }

  return _shouldSyslogTimestamps_shouldLogTimestamps;
}

void __49__SBBiometricEventLogger__shouldSyslogTimestamps__block_invoke()
{
  v1 = +[SBDefaults localDefaults];
  v0 = [v1 biometricAuthenticationDefaults];
  _shouldSyslogTimestamps_shouldLogTimestamps = [v0 isLogTimestampsEnabled];
}

- (void)timestampEvent:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 <= 6 && ((0x4Fu >> a3) & 1) != 0)
  {
    kdebug_trace();
  }

  if ([(SBBiometricEventLogger *)self _shouldSyslogTimestamps])
  {
    mach_absolute_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = SBLogBiometricResource();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (a3 - 1 > 5)
      {
        v8 = "ScreenWillTurnOn";
      }

      else
      {
        v8 = off_2783BE9F8[a3 - 1];
      }

      BSAbsoluteTimeFromMachTime();
      v10 = 134218498;
      v11 = v6;
      v12 = 2080;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "%f MesaPerf %s (mach: %f)", &v10, 0x20u);
    }
  }
}

- (unint64_t)_machTimeInMilliseconds
{
  if (_machTimeInMilliseconds_onceToken != -1)
  {
    [SBBiometricEventLogger _machTimeInMilliseconds];
  }

  v2 = mach_absolute_time();
  LODWORD(v3) = _machTimeInMilliseconds_timebaseInfo;
  LODWORD(v4) = unk_27CF15F90;
  return (v2 * v3 / v4 * 0.000001);
}

@end