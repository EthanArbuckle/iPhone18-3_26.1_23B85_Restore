@interface SBSOSLockGestureObserver
- (SBSOSLockGestureObserver)initWithConfiguration:(int64_t)a3;
- (SBSOSLockGestureObserverDelegate)delegate;
- (int64_t)triggerMechanism;
- (void)_configure;
- (void)_configureSettings;
- (void)_noteTriggerActionRecievedResponse;
- (void)_noteTriggerDidBecomeActive;
- (void)_noteTriggerDidBecomeInactive;
- (void)_setRecognizer:(id)a3;
- (void)pressSequenceRecognizer:(id)a3 didBeginPressDownAtIndex:(unint64_t)a4;
- (void)pressSequenceRecognizerDidCompleteSequence:(id)a3;
- (void)registerPressDownWithTimestamp:(double)a3;
- (void)registerPressUpWithTimestamp:(double)a3;
- (void)resetWithNewConfiguration:(int64_t)a3;
- (void)setSOSEnabled:(BOOL)a3;
@end

@implementation SBSOSLockGestureObserver

- (SBSOSLockGestureObserver)initWithConfiguration:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = SBSOSLockGestureObserver;
  v4 = [(SBSOSLockGestureObserver *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_configuration = a3;
    [(SBSOSLockGestureObserver *)v4 _configure];
    v6 = [[SBPressSequenceObserver alloc] initWithPressName:@"Lock"];
    sosLockPressSequenceObserver = v5->_sosLockPressSequenceObserver;
    v5->_sosLockPressSequenceObserver = v6;
  }

  return v5;
}

- (void)setSOSEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  self->_sosEnabled = a3;
  v4 = SBLogButtonsCombo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Set SOS Lock Gesture Enabled: %{BOOL}u", &v8, 0x12u);
  }

  if (v3)
  {
    v7 = +[SBSOSEventHandler sharedInstance];
    [v7 run];
  }
}

- (int64_t)triggerMechanism
{
  if (self->_configuration == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)registerPressDownWithTimestamp:(double)a3
{
  if ([(SBSOSLockGestureObserver *)self isSOSEnabled])
  {
    [(SBPressSequenceRecognizer *)self->_recognizer registerPressDownWithTimestamp:a3];
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBSOSLockGestureObserver registerPressDownWithTimestamp:];
    }
  }

  if ([(SBSOSLockGestureObserver *)self isGestureLoggingEnabled])
  {
    v6 = [(SBPressSequenceObserver *)self->_sosLockPressSequenceObserver pressCollector];
    [v6 registerPressDownWithTimeStamp:a3];
  }
}

- (void)registerPressUpWithTimestamp:(double)a3
{
  if ([(SBSOSLockGestureObserver *)self isSOSEnabled])
  {
    [(SBPressSequenceRecognizer *)self->_recognizer registerPressUpWithTimestamp:a3];
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBSOSLockGestureObserver registerPressUpWithTimestamp:];
    }
  }

  if ([(SBSOSLockGestureObserver *)self isGestureLoggingEnabled])
  {
    v6 = [(SBPressSequenceObserver *)self->_sosLockPressSequenceObserver pressCollector];
    [v6 registerPressUpWithTimeStamp:a3];
  }
}

- (void)resetWithNewConfiguration:(int64_t)a3
{
  self->_configuration = a3;
  [(SBSOSLockGestureObserver *)self _configure];
  recognizer = self->_recognizer;
  validator = self->_validator;
  v6 = [(SBPressSequenceSettings *)self->_settings numberOfPresses];

  [(SBPressSequenceRecognizer *)recognizer resetWithNewValidator:validator numberOfPresses:v6];
}

- (void)pressSequenceRecognizerDidCompleteSequence:(id)a3
{
  v4 = a3;
  if (!self->_triggerAction)
  {
    v5 = objc_alloc(MEMORY[0x277CF0B58]);
    [(SBSOSLockGestureObserver *)self _watchdogInterval];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__SBSOSLockGestureObserver_pressSequenceRecognizerDidCompleteSequence___block_invoke;
    v12[3] = &unk_2783BBF98;
    v12[4] = self;
    v6 = [v5 initWithInfo:0 timeout:MEMORY[0x277D85CD0] forResponseOnQueue:v12 withHandler:?];
    triggerAction = self->_triggerAction;
    self->_triggerAction = v6;

    objc_initWeak(&location, self->_triggerAction);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SBSOSLockGestureObserver_pressSequenceRecognizerDidCompleteSequence___block_invoke_2;
    v9[3] = &unk_2783AC358;
    objc_copyWeak(&v10, &location);
    [WeakRetained sosLockDidTriggerSOS:self completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __71__SBSOSLockGestureObserver_pressSequenceRecognizerDidCompleteSequence___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CF0B68] response];
  [WeakRetained sendResponse:v1];
}

- (void)pressSequenceRecognizer:(id)a3 didBeginPressDownAtIndex:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    self->_lastKnownActiveState = 1;
    v7 = v6;
    [(SBSOSLockGestureObserver *)self _noteTriggerDidBecomeActive];
LABEL_3:
    v6 = v7;
    goto LABEL_7;
  }

  if (a4 <= 1 && self->_lastKnownActiveState)
  {
    self->_lastKnownActiveState = 0;
    v7 = v6;
    [(SBSOSLockGestureObserver *)self _noteTriggerDidBecomeInactive];
    goto LABEL_3;
  }

LABEL_7:
}

- (void)_noteTriggerActionRecievedResponse
{
  triggerAction = self->_triggerAction;
  self->_triggerAction = 0;

  [(SBSOSLockGestureObserver *)self _noteTriggerDidBecomeInactive];
}

- (void)_noteTriggerDidBecomeActive
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sosLockTriggerDidBecomeActive:self];
}

- (void)_noteTriggerDidBecomeInactive
{
  if (!self->_triggerAction)
  {
    self->_lastKnownActiveState = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sosLockTriggerDidBecomeInactive:self];
  }
}

- (void)_configure
{
  v3 = objc_alloc_init(SBPressSequenceSettings);
  settings = self->_settings;
  self->_settings = v3;

  [(SBSOSLockGestureObserver *)self _configureSettings];
  v5 = [[SBPressSequenceValidator alloc] initWithSettings:self->_settings];
  validator = self->_validator;
  self->_validator = v5;

  v7 = [[SBPressSequenceRecognizer alloc] initWithValidator:self->_validator numberOfPresses:[(SBPressSequenceSettings *)self->_settings numberOfPresses]];
  recognizer = self->_recognizer;
  self->_recognizer = v7;

  v9 = self->_recognizer;

  [(SBPressSequenceRecognizer *)v9 setDelegate:self];
}

- (void)_configureSettings
{
  _AXSLockClickDownPressDurationScaleFactor();
  v4 = v3;
  _AXSLockClickVarianceScaleFactor();
  v6 = v5;
  configuration = self->_configuration;
  if (configuration == 2)
  {
    settings = self->_settings;
    p_settings = &self->_settings;
    [(SBPressSequenceSettings *)settings setNumberOfPresses:3];
    v11 = v4 * 0.35;
    [(SBPressSequenceSettings *)*p_settings setMaxDefaultPressDownDuration:v11];
    [(SBPressSequenceSettings *)*p_settings setMaxDefaultPressUpDuration:v11];
    v12 = 0;
  }

  else
  {
    if (configuration != 1)
    {
      return;
    }

    v9 = self->_settings;
    p_settings = &self->_settings;
    [(SBPressSequenceSettings *)v9 setNumberOfPresses:5];
    v10 = v4;
    [(SBPressSequenceSettings *)*p_settings setMaxDefaultPressDownDuration:v10 * 0.5];
    [(SBPressSequenceSettings *)*p_settings setMaxDefaultPressUpDuration:v10 * 0.35];
    v11 = -1.0;
    v12 = 1;
  }

  [(SBPressSequenceSettings *)*p_settings setMaxDownToDownDuration:v11];
  [(SBPressSequenceSettings *)*p_settings setIndexOfPressDownToUseForVarianceAndGrowth:1];
  [(SBPressSequenceSettings *)*p_settings setNumberOfPressDownGrowthTerms:1];
  [(SBPressSequenceSettings *)*p_settings setIndexOfPressUpToUseForVarianceAndGrowth:0];
  [(SBPressSequenceSettings *)*p_settings setNumberOfPressUpGrowthTerms:v12];
  v14 = v6 * 0.1;
  [(SBPressSequenceSettings *)*p_settings setPressDownVariance:v14];
  v15 = *p_settings;

  [(SBPressSequenceSettings *)v15 setPressUpVariance:v14];
}

- (void)_setRecognizer:(id)a3
{
  objc_storeStrong(&self->_recognizer, a3);
  v5 = a3;
  [(SBPressSequenceRecognizer *)self->_recognizer setDelegate:self];
}

- (SBSOSLockGestureObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)registerPressDownWithTimestamp:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "%{public}@ - Registered SOS Lock Press Down.", v4, v5, v6, v7, 2u);
}

- (void)registerPressUpWithTimestamp:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "%{public}@ - Registered SOS Lock Press Up.", v4, v5, v6, v7, 2u);
}

@end