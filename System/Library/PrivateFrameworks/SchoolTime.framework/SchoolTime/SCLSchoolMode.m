@interface SCLSchoolMode
- (SCLSchoolMode)initWithConfiguration:(id)a3;
- (SCLSchoolMode)initWithIdentifier:(id)a3 delegate:(id)a4;
- (SCLSchoolMode)initWithIdentifier:(id)a3 pairingID:(id)a4 delegate:(id)a5;
- (void)_assertQueueIfReady;
- (void)applyScheduleSettings:(id)a3 completion:(id)a4;
- (void)client:(id)a3 didLoadScheduleSettings:(id)a4;
- (void)client:(id)a3 didUpdateScheduleSettings:(id)a4;
- (void)client:(id)a3 didUpdateToState:(id)a4 fromState:(id)a5;
- (void)clientDidChangeUnlockHistory:(id)a3;
- (void)dealloc;
- (void)noteSignificantUserInteraction;
- (void)resume;
@end

@implementation SCLSchoolMode

- (SCLSchoolMode)initWithIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SCLAutoUpdatingPairingID();
  v9 = [(SCLSchoolMode *)self initWithIdentifier:v7 pairingID:v8 delegate:v6];

  return v9;
}

- (SCLSchoolMode)initWithIdentifier:(id)a3 pairingID:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(SCLSchoolModeConfiguration);
  [(SCLSchoolModeConfiguration *)v11 setIdentifier:v10];

  [(SCLSchoolModeConfiguration *)v11 setPairingID:v9];
  [(SCLSchoolModeConfiguration *)v11 setDelegate:v8];

  v12 = [(SCLSchoolMode *)self initWithConfiguration:v11];
  [(SCLSchoolMode *)v12 resume];

  return v12;
}

- (SCLSchoolMode)initWithConfiguration:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SCLSchoolMode;
  v5 = [(SCLSchoolMode *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [(SCLSchoolModeConfiguration *)v5->_configuration targetQueue];

    if (!v8)
    {
      v9 = v5->_configuration;
      v10 = [v4 identifier];
      v11 = dispatch_queue_create([v10 cStringUsingEncoding:4], 0);
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

- (void)applyScheduleSettings:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_264829000, "ApplyScheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  v9 = scl_framework_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Apply schedule settings: %{public}@", buf, 0xCu);
  }

  [(SCLSchoolModeXPCClient *)self->_xpcClient applyScheduleSettings:v6 completion:v7];
  os_activity_scope_leave(&v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_assertQueueIfReady
{
  v3 = [(SCLSchoolMode *)self resumeState];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (!v3)
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

  v4 = [(SCLSchoolModeConfiguration *)self->_configuration targetQueue];
  dispatch_assert_queue_V2(v4);
}

- (void)client:(id)a3 didUpdateToState:(id)a4 fromState:(id)a5
{
  v11 = a4;
  v7 = a5;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  v8 = [(SCLSchoolMode *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SCLSchoolMode *)self delegate];
    [v10 schoolMode:self didUpdateState:v11 fromState:v7];
  }
}

- (void)client:(id)a3 didUpdateScheduleSettings:(id)a4
{
  v8 = a4;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  v5 = [(SCLSchoolMode *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SCLSchoolMode *)self delegate];
    [v7 schoolMode:self didUpdateScheduleSettings:v8];
  }
}

- (void)clientDidChangeUnlockHistory:(id)a3
{
  [(SCLSchoolMode *)self _assertQueueIfReady];
  v4 = [(SCLSchoolMode *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SCLSchoolMode *)self delegate];
    [v6 schoolModeDidUpdateUnlockHistory:self];
  }
}

- (void)client:(id)a3 didLoadScheduleSettings:(id)a4
{
  v11 = a4;
  [(SCLSchoolMode *)self _assertQueueIfReady];
  v5 = [(SCLSchoolMode *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SCLSchoolMode *)self delegate];
    [v7 schoolMode:self didLoadScheduleSettings:v11];
  }

  v8 = [(SCLSchoolMode *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SCLSchoolMode *)self delegate];
    [v10 schoolModeDidLoad:self];
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
    v8 = self;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "NoteSignificantUserInteraction for %@", buf, 0xCu);
  }

  [(SCLSchoolModeXPCClient *)self->_xpcClient noteSignificantUserInteraction];
  os_activity_scope_leave(&v6);

  v5 = *MEMORY[0x277D85DE8];
}

@end