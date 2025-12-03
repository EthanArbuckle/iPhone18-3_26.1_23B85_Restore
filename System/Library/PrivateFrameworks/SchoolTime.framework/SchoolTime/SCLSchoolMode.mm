@interface SCLSchoolMode
- (SCLSchoolMode)initWithConfiguration:(id)configuration;
- (SCLSchoolMode)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (SCLSchoolMode)initWithIdentifier:(id)identifier pairingID:(id)d delegate:(id)delegate;
- (void)_assertQueueIfReady;
- (void)applyScheduleSettings:(id)settings completion:(id)completion;
- (void)client:(id)client didLoadScheduleSettings:(id)settings;
- (void)client:(id)client didUpdateScheduleSettings:(id)settings;
- (void)client:(id)client didUpdateToState:(id)state fromState:(id)fromState;
- (void)clientDidChangeUnlockHistory:(id)history;
- (void)dealloc;
- (void)noteSignificantUserInteraction;
- (void)resume;
@end

@implementation SCLSchoolMode

- (SCLSchoolMode)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = SCLAutoUpdatingPairingID();
  v9 = [(SCLSchoolMode *)self initWithIdentifier:identifierCopy pairingID:v8 delegate:delegateCopy];

  return v9;
}

- (SCLSchoolMode)initWithIdentifier:(id)identifier pairingID:(id)d delegate:(id)delegate
{
  delegateCopy = delegate;
  dCopy = d;
  identifierCopy = identifier;
  v11 = objc_alloc_init(SCLSchoolModeConfiguration);
  [(SCLSchoolModeConfiguration *)v11 setIdentifier:identifierCopy];

  [(SCLSchoolModeConfiguration *)v11 setPairingID:dCopy];
  [(SCLSchoolModeConfiguration *)v11 setDelegate:delegateCopy];

  v12 = [(SCLSchoolMode *)self initWithConfiguration:v11];
  [(SCLSchoolMode *)v12 resume];

  return v12;
}

- (SCLSchoolMode)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SCLSchoolMode;
  v5 = [(SCLSchoolMode *)&v15 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    targetQueue = [(SCLSchoolModeConfiguration *)v5->_configuration targetQueue];

    if (!targetQueue)
    {
      v9 = v5->_configuration;
      identifier = [configurationCopy identifier];
      v11 = dispatch_queue_create([identifier cStringUsingEncoding:4], 0);
      [(SCLSchoolModeConfiguration *)v9 setTargetQueue:v11];
    }

    v5->_lock._os_unfair_lock_opaque = 0;
    v12 = [[SCLSchoolModeXPCClient alloc] initWithDelegate:v5 configuration:v5->_configuration];
    xpcClient = v5->_xpcClient;
    v5->_xpcClient = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(SCLSchoolModeXPCClient *)self->_xpcClient invalidate];
  v3.receiver = self;
  v3.super_class = SCLSchoolMode;
  [(SCLSchoolMode *)&v3 dealloc];
}

- (void)resume
{
  if ([(SCLSchoolMode *)self resumeState])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"SCLSchoolMode was resumed more than once %@", self}];
  }

  else
  {
    [(SCLSchoolMode *)self setResumeState:1];
    [(SCLSchoolModeXPCClient *)self->_xpcClient resume];

    [(SCLSchoolMode *)self setResumeState:2];
  }
}

- (void)applyScheduleSettings:(id)settings completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_264829000, "ApplyScheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  v9 = scl_framework_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = settingsCopy;
    _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Apply schedule settings: %{public}@", buf, 0xCu);
  }

  [(SCLSchoolModeXPCClient *)self->_xpcClient applyScheduleSettings:settingsCopy completion:completionCopy];
  os_activity_scope_leave(&v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_assertQueueIfReady
{
  resumeState = [(SCLSchoolMode *)self resumeState];
  if (resumeState != 2)
  {
    if (resumeState != 1)
    {
      if (!resumeState)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Got delegate callback but not resumed: %@", self}];
      }

      return;
    }

    if ([(SCLSchoolModeConfiguration *)self->_configuration loadsSynchronously])
    {
      return;
    }
  }

  targetQueue = [(SCLSchoolModeConfiguration *)self->_configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);
}

- (void)client:(id)client didUpdateToState:(id)state fromState:(id)fromState
{
  stateCopy = state;
  fromStateCopy = fromState;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  delegate = [(SCLSchoolMode *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SCLSchoolMode *)self delegate];
    [delegate2 schoolMode:self didUpdateState:stateCopy fromState:fromStateCopy];
  }
}

- (void)client:(id)client didUpdateScheduleSettings:(id)settings
{
  settingsCopy = settings;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  delegate = [(SCLSchoolMode *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SCLSchoolMode *)self delegate];
    [delegate2 schoolMode:self didUpdateScheduleSettings:settingsCopy];
  }
}

- (void)clientDidChangeUnlockHistory:(id)history
{
  [(SCLSchoolMode *)self _assertQueueIfReady];
  delegate = [(SCLSchoolMode *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SCLSchoolMode *)self delegate];
    [delegate2 schoolModeDidUpdateUnlockHistory:self];
  }
}

- (void)client:(id)client didLoadScheduleSettings:(id)settings
{
  settingsCopy = settings;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  delegate = [(SCLSchoolMode *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SCLSchoolMode *)self delegate];
    [delegate2 schoolMode:self didLoadScheduleSettings:settingsCopy];
  }

  delegate3 = [(SCLSchoolMode *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate4 = [(SCLSchoolMode *)self delegate];
    [delegate4 schoolModeDidLoad:self];
  }
}

- (void)noteSignificantUserInteraction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_264829000, "NoteSignificantUserInteraction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = scl_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "NoteSignificantUserInteraction for %@", buf, 0xCu);
  }

  [(SCLSchoolModeXPCClient *)self->_xpcClient noteSignificantUserInteraction];
  os_activity_scope_leave(&v6);

  v5 = *MEMORY[0x277D85DE8];
}

@end