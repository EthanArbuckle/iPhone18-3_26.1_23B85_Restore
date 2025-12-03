@interface WFStateMachineTransitionEvent
- (WFStateMachineTransitionEvent)initWithState:(id)state reason:(id)reason valid:(BOOL)valid;
- (id)description;
@end

@implementation WFStateMachineTransitionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(WFStateMachineTransitionEvent *)self isValid])
  {
    v4 = &stru_1F28FBBB8;
  }

  else
  {
    v4 = @"<INVALID TRANSITION>";
  }

  state = [(WFStateMachineTransitionEvent *)self state];
  v6 = [state description];
  reason = [(WFStateMachineTransitionEvent *)self reason];
  v8 = [v3 stringWithFormat:@"%@[%@, reason: %@]", v4, v6, reason];

  return v8;
}

- (WFStateMachineTransitionEvent)initWithState:(id)state reason:(id)reason valid:(BOOL)valid
{
  stateCopy = state;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = WFStateMachineTransitionEvent;
  v11 = [(WFStateMachineTransitionEvent *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_state, state);
    v13 = [reasonCopy copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v12->_valid = valid;
    v15 = v12;
  }

  return v12;
}

@end