@interface WFStateMachineTransitionEvent
- (WFStateMachineTransitionEvent)initWithState:(id)a3 reason:(id)a4 valid:(BOOL)a5;
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

  v5 = [(WFStateMachineTransitionEvent *)self state];
  v6 = [v5 description];
  v7 = [(WFStateMachineTransitionEvent *)self reason];
  v8 = [v3 stringWithFormat:@"%@[%@, reason: %@]", v4, v6, v7];

  return v8;
}

- (WFStateMachineTransitionEvent)initWithState:(id)a3 reason:(id)a4 valid:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = WFStateMachineTransitionEvent;
  v11 = [(WFStateMachineTransitionEvent *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_state, a3);
    v13 = [v10 copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v12->_valid = a5;
    v15 = v12;
  }

  return v12;
}

@end