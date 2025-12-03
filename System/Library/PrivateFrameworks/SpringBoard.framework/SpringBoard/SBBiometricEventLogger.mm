@interface SBBiometricEventLogger
+ (id)sharedInstance;
+ (void)logClass:(unsigned __int8)class code:(unsigned int)code;
+ (void)logEvent:(unsigned int)event;
- (BOOL)_shouldSyslogTimestamps;
- (SBBiometricEventLogger)init;
- (unint64_t)_machTimeInMilliseconds;
- (void)_authRequestCompleted:(id)completed;
- (void)_backlightLevelChanged:(id)changed;
- (void)_clearEverything;
- (void)_coversheetSwipedForDismissal:(id)dismissal;
- (void)_fingerOn:(id)on;
- (void)_keybagBioUnlock:(id)unlock;
- (void)_passcodePromptCancelled:(id)cancelled;
- (void)_passcodeViewTransitionedToPasscode:(id)passcode;
- (void)_prearmMatch:(id)match;
- (void)_systemDidWakeFromSleep:(id)sleep;
- (void)_tryAgain:(id)again;
- (void)_unlockAnimationWillStart:(id)start;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)timestampEvent:(unint64_t)event;
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

+ (void)logEvent:(unsigned int)event
{
  v3 = *&event;
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

+ (void)logClass:(unsigned __int8)class code:(unsigned int)code
{
  v4 = *&code;
  classCopy = class;
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

    v6(classCopy, v4);
  }
}

- (SBBiometricEventLogger)init
{
  v9.receiver = self;
  v9.super_class = SBBiometricEventLogger;
  v2 = [(SBBiometricEventLogger *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__screenTurnedOn_ name:*MEMORY[0x277D67A08] object:0];
    [defaultCenter addObserver:v2 selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter addObserver:v2 selector:sel__fingerOn_ name:@"SBBiometricEventTimestampNotificationFingerOn" object:0];
    [defaultCenter addObserver:v2 selector:sel__tryAgain_ name:@"SBBiometricEventTimestampNotificationTryAgain" object:0];
    [defaultCenter addObserver:v2 selector:sel__keybagBioUnlock_ name:@"SBBiometricEventTimestampNotificationKeybagUnlock" object:0];
    [defaultCenter addObserver:v2 selector:sel__unlockAnimationWillStart_ name:@"SBCoverSheetWillAnimateDeactivation" object:0];
    [defaultCenter addObserver:v2 selector:sel__prearmMatch_ name:@"SBBiometricEventTimestampNotificationPrearmMatch" object:0];
    [defaultCenter addObserver:v2 selector:sel__authRequestCompleted_ name:*MEMORY[0x277D66060] object:0];
    [defaultCenter addObserver:v2 selector:sel__systemDidWakeFromSleep_ name:@"SBWorkspaceDidWakeFromSleepNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__passcodePromptCancelled_ name:@"SBBiometricEventTimestampNotificationPasscodeCancelled" object:0];
    [defaultCenter addObserver:v2 selector:sel__coversheetSwipedForDismissal_ name:@"SBBiometricEventTimestampNotificationCoversheetSwipedForDismissal" object:0];
    [defaultCenter addObserver:v2 selector:sel__passcodeViewTransitionedToPasscode_ name:*MEMORY[0x277D67F70] object:0];
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v2->_biometricResource;
    v2->_biometricResource = mEMORY[0x277D67C98];

    [(SBUIBiometricResource *)v2->_biometricResource addObserver:v2];
    if (__loadBiometricKitIfNecessary_onceToken != -1)
    {
      [SBBiometricEventLogger init];
    }

    if (__loadBiometricKitIfNecessary_biometricKit)
    {
      manager = [NSClassFromString(&cfstr_Biometrickit.isa) manager];
      biometricKit = v2->_biometricKit;
      v2->_biometricKit = manager;
    }
  }

  return v2;
}

- (void)_backlightLevelChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67A28]];
  [v5 floatValue];

  self->_isScreenOn = BSFloatGreaterThanFloat();

  [(SBBiometricEventLogger *)self _resetPasscodeStateMachine];
}

- (void)_fingerOn:(id)on
{
  [(SBBiometricEventLogger *)self setFingerOn:1];
  [(SBBiometricEventLogger *)self setFingerOnWithScreenOn:self->_isScreenOn];
  [(SBBiometricEventLogger *)self timestampEvent:1];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:0];
}

- (void)_tryAgain:(id)again
{
  [(SBBiometricEventLogger *)self timestampEvent:2];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:1];
}

- (void)_keybagBioUnlock:(id)unlock
{
  [(SBBiometricEventLogger *)self setKeybagUnlocked:1];
  [(SBBiometricEventLogger *)self timestampEvent:3];
  [(BiometricKit *)self->_biometricKit timestampEvent:2];

  [(SBBiometricEventLogger *)self _biometricAuthenticationSucceeded];
}

- (void)_unlockAnimationWillStart:(id)start
{
  if ([(SBBiometricEventLogger *)self fingerOn]&& [(SBBiometricEventLogger *)self keybagUnlocked])
  {
    [(SBBiometricEventLogger *)self timestampEvent:4];
    [(BiometricKit *)self->_biometricKit timestampEvent:3];
  }

  [(SBBiometricEventLogger *)self _clearEverything];
}

- (void)_prearmMatch:(id)match
{
  [(SBBiometricEventLogger *)self timestampEvent:5];
  biometricKit = self->_biometricKit;

  [(BiometricKit *)biometricKit timestampEvent:4];
}

- (void)_authRequestCompleted:(id)completed
{
  userInfo = [completed userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D66058]];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D66068]];
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

- (void)_systemDidWakeFromSleep:(id)sleep
{
  v3 = objc_opt_class();

  [v3 logEvent:0x10000];
}

- (void)_passcodePromptCancelled:(id)cancelled
{
  v3 = objc_opt_class();

  [v3 logEvent:458753];
}

- (void)_coversheetSwipedForDismissal:(id)dismissal
{
  v3 = objc_opt_class();

  [v3 logEvent:131077];
}

- (void)_passcodeViewTransitionedToPasscode:(id)passcode
{
  v3 = 393217;
  userInfo = [passcode userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D67F80]];
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

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  [objc_opt_class() logClass:7 code:event];
  if (event - 9 > 2)
  {
    if (event - 25 <= 1)
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

- (void)timestampEvent:(unint64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  if (event <= 6 && ((0x4Fu >> event) & 1) != 0)
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
      if (event - 1 > 5)
      {
        v8 = "ScreenWillTurnOn";
      }

      else
      {
        v8 = off_2783BE9F8[event - 1];
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