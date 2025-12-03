@interface SRUIFStateMachine
- (SRUIFStateMachine)initWithInitialState:(int64_t)state;
- (SRUIFStateMachineDelegate)delegate;
- (id)_descriptionForEvent:(int64_t)event;
- (id)_endStateNumberFromDictionary:(id)dictionary forEvent:(int64_t)event;
- (void)_setState:(int64_t)state forEvent:(int64_t)event eventTimeStamp:(double)stamp;
- (void)addTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event;
- (void)performTransitionForEvent:(int64_t)event;
- (void)performTransitionForEvent:(int64_t)event eventTimeStamp:(double)stamp;
@end

@implementation SRUIFStateMachine

- (SRUIFStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SRUIFStateMachine)initWithInitialState:(int64_t)state
{
  v9.receiver = self;
  v9.super_class = SRUIFStateMachine;
  v4 = [(SRUIFStateMachine *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_state = state;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    endStatesByEventByStartState = v5->_endStatesByEventByStartState;
    v5->_endStatesByEventByStartState = dictionary;
  }

  return v5;
}

- (void)_setState:(int64_t)state forEvent:(int64_t)event eventTimeStamp:(double)stamp
{
  state = [(SRUIFStateMachine *)self state];
  [(SRUIFStateMachine *)self _setState:state];
  delegate = [(SRUIFStateMachine *)self delegate];
  v11 = objc_opt_respondsToSelector();

  delegate2 = [(SRUIFStateMachine *)self delegate];
  v13 = delegate2;
  if (v11)
  {
    [delegate2 stateMachine:self didTransitionFromState:state forEvent:event eventTimeStamp:stamp];
  }

  else
  {
    [delegate2 stateMachine:self didTransitionFromState:state forEvent:event];
  }
}

- (id)_descriptionForEvent:(int64_t)event
{
  delegate = [(SRUIFStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SRUIFStateMachine *)self delegate];
    event = [delegate2 stateMachine:self descriptionForEvent:event];
  }

  else
  {
    event = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", event];
  }

  return event;
}

- (void)addTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event
{
  _endStatesByEventByStartState = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  dictionary = [_endStatesByEventByStartState objectForKey:v10];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _endStatesByEventByStartState2 = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [_endStatesByEventByStartState2 setObject:dictionary forKey:v12];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:toState];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [dictionary setObject:v13 forKey:v14];
}

- (id)_endStateNumberFromDictionary:(id)dictionary forEvent:(int64_t)event
{
  v6 = MEMORY[0x277CCABB0];
  dictionaryCopy = dictionary;
  v8 = [v6 numberWithInteger:event];
  v9 = [dictionaryCopy objectForKey:v8];

  if (!v9)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFStateMachine *)v10 _endStateNumberFromDictionary:event forEvent:?];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SRUIFStateMachine state](self, "state")}];
  }

  return v9;
}

- (void)performTransitionForEvent:(int64_t)event
{
  v5 = mach_absolute_time();

  [(SRUIFStateMachine *)self performTransitionForEvent:event eventTimeStamp:v5];
}

- (void)performTransitionForEvent:(int64_t)event eventTimeStamp:(double)stamp
{
  _endStatesByEventByStartState = [(SRUIFStateMachine *)self _endStatesByEventByStartState];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SRUIFStateMachine state](self, "state")}];
  v10 = [_endStatesByEventByStartState objectForKey:v8];

  v9 = [(SRUIFStateMachine *)self _endStateNumberFromDictionary:v10 forEvent:event];
  -[SRUIFStateMachine _setState:forEvent:eventTimeStamp:](self, "_setState:forEvent:eventTimeStamp:", [v9 integerValue], event, stamp);
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