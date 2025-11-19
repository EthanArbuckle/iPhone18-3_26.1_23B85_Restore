@interface SRUIFStateMachine
- (SRUIFStateMachine)initWithInitialState:(int64_t)a3;
- (SRUIFStateMachineDelegate)delegate;
- (id)_descriptionForEvent:(int64_t)a3;
- (id)_endStateNumberFromDictionary:(id)a3 forEvent:(int64_t)a4;
- (void)_setState:(int64_t)a3 forEvent:(int64_t)a4 eventTimeStamp:(double)a5;
- (void)addTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5;
- (void)performTransitionForEvent:(int64_t)a3;
- (void)performTransitionForEvent:(int64_t)a3 eventTimeStamp:(double)a4;
@end

@implementation SRUIFStateMachine

- (SRUIFStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SRUIFStateMachine)initWithInitialState:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = SRUIFStateMachine;
  v4 = [(SRUIFStateMachine *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_state = a3;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    endStatesByEventByStartState = v5->_endStatesByEventByStartState;
    v5->_endStatesByEventByStartState = v6;
  }

  return v5;
}

- (void)_setState:(int64_t)a3 forEvent:(int64_t)a4 eventTimeStamp:(double)a5
{
  v9 = [(SRUIFStateMachine *)self state];
  [(SRUIFStateMachine *)self _setState:a3];
  v10 = [(SRUIFStateMachine *)self delegate];
  v11 = objc_opt_respondsToSelector();

  v12 = [(SRUIFStateMachine *)self delegate];
  v13 = v12;
  if (v11)
  {
    [v12 stateMachine:self didTransitionFromState:v9 forEvent:a4 eventTimeStamp:a5];
  }

  else
  {
    [v12 stateMachine:self didTransitionFromState:v9 forEvent:a4];
  }
}

- (id)_descriptionForEvent:(int64_t)a3
{
  v5 = [(SRUIFStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRUIFStateMachine *)self delegate];
    v8 = [v7 stateMachine:self descriptionForEvent:a3];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  }

  return v8;
}

- (void)addTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5
{
  v9 = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15 = [v9 objectForKey:v10];

  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v11 setObject:v15 forKey:v12];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v15 setObject:v13 forKey:v14];
}

- (id)_endStateNumberFromDictionary:(id)a3 forEvent:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFStateMachine *)v10 _endStateNumberFromDictionary:a4 forEvent:?];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SRUIFStateMachine state](self, "state")}];
  }

  return v9;
}

- (void)performTransitionForEvent:(int64_t)a3
{
  v5 = mach_absolute_time();

  [(SRUIFStateMachine *)self performTransitionForEvent:a3 eventTimeStamp:v5];
}

- (void)performTransitionForEvent:(int64_t)a3 eventTimeStamp:(double)a4
{
  v7 = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SRUIFStateMachine state](self, "state")}];
  v10 = [v7 objectForKey:v8];

  v9 = [(SRUIFStateMachine *)self _endStateNumberFromDictionary:v10 forEvent:a3];
  -[SRUIFStateMachine _setState:forEvent:eventTimeStamp:](self, "_setState:forEvent:eventTimeStamp:", [v9 integerValue], a3, a4);
}

- (void)_endStateNumberFromDictionary:(uint64_t)a3 forEvent:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 state];
  v7 = [a2 _descriptionForEvent:a3];
  v9 = 136315650;
  v10 = "[SRUIFStateMachine _endStateNumberFromDictionary:forEvent:]";
  v11 = 2050;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  _os_log_error_impl(&dword_26951F000, v5, OS_LOG_TYPE_ERROR, "%s No transition is defined from state %{public}ld for event %{public}@. Let's not change state, then.", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end