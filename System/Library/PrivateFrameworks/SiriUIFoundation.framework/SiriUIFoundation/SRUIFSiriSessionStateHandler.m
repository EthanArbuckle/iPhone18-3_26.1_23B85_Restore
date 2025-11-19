@interface SRUIFSiriSessionStateHandler
- (SRUIFSiriSessionStateHandler)initWithDelegate:(id)a3;
- (SRUIFSiriSessionStateHandlerDelegate)delegate;
- (id)_stateMachine;
- (int64_t)state;
- (void)_reportTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5 machAbsoluteTime:(double)a6;
- (void)performTransitionForEvent:(int64_t)a3;
- (void)performTransitionForEvent:(int64_t)a3 eventTimeStamp:(double)a4;
- (void)stateMachine:(id)a3 didTransitionFromState:(int64_t)a4 forEvent:(int64_t)a5;
- (void)stateMachine:(id)a3 didTransitionFromState:(int64_t)a4 forEvent:(int64_t)a5 eventTimeStamp:(double)a6;
@end

@implementation SRUIFSiriSessionStateHandler

- (int64_t)state
{
  v2 = [(SRUIFSiriSessionStateHandler *)self _stateMachine];
  v3 = [v2 state];

  return v3;
}

- (id)_stateMachine
{
  stateMachine = self->_stateMachine;
  if (!stateMachine)
  {
    v4 = [[SRUIFStateMachine alloc] initWithInitialState:0];
    v5 = self->_stateMachine;
    self->_stateMachine = v4;

    [(SRUIFStateMachine *)self->_stateMachine setDelegate:self];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:1 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:1 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:1 forEvent:14];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:7];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:10];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:0 forEvent:7];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:3 forEvent:6];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:3 forEvent:6];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:3 forEvent:10];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:3];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:0 forEvent:3];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:4];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:0 forEvent:4];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:5];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:0 forEvent:5];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:2 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:2 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:2];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:0 forEvent:2];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:2 forEvent:8];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:2 forEvent:16];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:2 forEvent:8];
    v6 = [MEMORY[0x277CEF2A8] isStateFeedbackEnabled];
    v7 = self->_stateMachine;
    if (v6)
    {
      v8 = 15;
    }

    else
    {
      v8 = 2;
    }

    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:2 forEvent:v8];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:2 forEvent:8];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:2 forEvent:16];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:0 forEvent:3];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:0 forEvent:4];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:0 forEvent:5];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:3 forEvent:6];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:0 forEvent:7];
    if ([MEMORY[0x277CEF2A8] isStateFeedbackEnabled])
    {
      [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:0 forEvent:6];
    }

    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:1 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:0 forEvent:5];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:3 forEvent:6];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:0 forEvent:7];
    v9 = [MEMORY[0x277CEF2A8] isStateFeedbackEnabled];
    v10 = self->_stateMachine;
    if (v9)
    {
      v11 = 15;
    }

    else
    {
      v11 = 2;
    }

    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:2 forEvent:v11];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:2 forEvent:4];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:2 forEvent:8];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:1 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:1 forEvent:12];
    stateMachine = self->_stateMachine;
  }

  return stateMachine;
}

- (SRUIFSiriSessionStateHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SRUIFSiriSessionStateHandler;
  v5 = [(SRUIFSiriSessionStateHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_287A18CD8];
    siriSessionPassthroughEvents = v6->_siriSessionPassthroughEvents;
    v6->_siriSessionPassthroughEvents = v7;

    v9 = objc_alloc_init(SRUIFSiriSessionStateSignpostLogger);
    signpostLogger = v6->_signpostLogger;
    v6->_signpostLogger = v9;
  }

  return v6;
}

- (void)performTransitionForEvent:(int64_t)a3
{
  v5 = mach_absolute_time();

  [(SRUIFSiriSessionStateHandler *)self performTransitionForEvent:a3 eventTimeStamp:v5];
}

- (void)performTransitionForEvent:(int64_t)a3 eventTimeStamp:(double)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFSiriSessionStateGetDescription([(SRUIFSiriSessionStateHandler *)self state]);
    v10 = SRUIFSiriSessionEventGetDescription(a3);
    v15 = 136315650;
    v16 = "[SRUIFSiriSessionStateHandler performTransitionForEvent:eventTimeStamp:]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s Current state %@; event %@", &v15, 0x20u);
  }

  siriSessionPassthroughEvents = self->_siriSessionPassthroughEvents;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  LODWORD(siriSessionPassthroughEvents) = [(NSSet *)siriSessionPassthroughEvents containsObject:v12];

  if (siriSessionPassthroughEvents)
  {
    [(SRUIFSiriSessionStateHandler *)self _reportTransitionFromState:[(SRUIFSiriSessionStateHandler *)self state] toState:[(SRUIFSiriSessionStateHandler *)self state] forEvent:a3 machAbsoluteTime:a4];
  }

  else
  {
    v13 = [(SRUIFSiriSessionStateHandler *)self _stateMachine];
    [v13 performTransitionForEvent:a3 eventTimeStamp:a4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(id)a3 didTransitionFromState:(int64_t)a4 forEvent:(int64_t)a5
{
  v8 = a3;
  [(SRUIFSiriSessionStateHandler *)self stateMachine:v8 didTransitionFromState:a4 forEvent:a5 eventTimeStamp:mach_absolute_time()];
}

- (void)stateMachine:(id)a3 didTransitionFromState:(int64_t)a4 forEvent:(int64_t)a5 eventTimeStamp:(double)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = [(SRUIFSiriSessionStateHandler *)self state];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = SRUIFSiriSessionStateGetDescription(a4);
    v14 = SRUIFSiriSessionStateGetDescription(v10);
    v15 = SRUIFSiriSessionEventGetDescription(a5);
    v17 = 136315906;
    v18 = "[SRUIFSiriSessionStateHandler stateMachine:didTransitionFromState:forEvent:eventTimeStamp:]";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, "%s From %@; To %@; Event %@", &v17, 0x2Au);
  }

  [(SRUIFSiriSessionStateHandler *)self _reportTransitionFromState:a4 toState:v10 forEvent:a5 machAbsoluteTime:a6];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5 machAbsoluteTime:(double)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sessionStateHandler:self didTransitionFromState:a3 toState:a4 forEvent:a5 machAbsoluteTime:a6];

  signpostLogger = self->_signpostLogger;

  [(SRUIFSiriSessionStateSignpostLogger *)signpostLogger sessionStateHandler:self didTransitionFromState:a3 toState:a4 forEvent:a5 machAbsoluteTime:a6];
}

- (SRUIFSiriSessionStateHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end