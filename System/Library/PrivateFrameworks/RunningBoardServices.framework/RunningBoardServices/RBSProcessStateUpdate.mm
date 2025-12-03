@interface RBSProcessStateUpdate
+ (id)updateWithState:(id)state previousState:(id)previousState exitEvent:(id)event;
- (id)description;
@end

@implementation RBSProcessStateUpdate

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  process = self->_process;
  state = self->_state;
  v7 = [v3 initWithFormat:@"<%@| process:%@ oldState:%@ newState:%@ exitEvent:%@>", v4, process, self->_previousState, state, self->_exitEvent];

  return v7;
}

+ (id)updateWithState:(id)state previousState:(id)previousState exitEvent:(id)event
{
  stateCopy = state;
  previousStateCopy = previousState;
  eventCopy = event;
  v12 = eventCopy;
  if (!stateCopy && !previousStateCopy && !eventCopy)
  {
    [RBSProcessStateUpdate updateWithState:a2 previousState:self exitEvent:?];
  }

  v13 = objc_alloc_init(RBSProcessStateUpdate);
  process = [(RBSProcessState *)stateCopy process];
  v15 = process;
  if (process)
  {
    v16 = process;
    process = v13->_process;
    v13->_process = v16;
  }

  else
  {
    process2 = [(RBSProcessState *)previousStateCopy process];
    process = process2;
    if (process2)
    {
      process3 = process2;
    }

    else
    {
      process3 = [(RBSProcessExitEvent *)v12 process];
    }

    v20 = v13->_process;
    v13->_process = process3;
  }

  state = v13->_state;
  v13->_state = stateCopy;
  v22 = stateCopy;

  previousState = v13->_previousState;
  v13->_previousState = previousStateCopy;
  v24 = previousStateCopy;

  exitEvent = v13->_exitEvent;
  v13->_exitEvent = v12;

  return v13;
}

+ (void)updateWithState:(uint64_t)a1 previousState:(uint64_t)a2 exitEvent:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessStateUpdate.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"state || prevState || exitEvent"}];
}

@end