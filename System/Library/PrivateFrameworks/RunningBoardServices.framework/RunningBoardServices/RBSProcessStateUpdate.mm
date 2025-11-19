@interface RBSProcessStateUpdate
+ (id)updateWithState:(id)a3 previousState:(id)a4 exitEvent:(id)a5;
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

+ (id)updateWithState:(id)a3 previousState:(id)a4 exitEvent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9 && !v10 && !v11)
  {
    [RBSProcessStateUpdate updateWithState:a2 previousState:a1 exitEvent:?];
  }

  v13 = objc_alloc_init(RBSProcessStateUpdate);
  v14 = [(RBSProcessState *)v9 process];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    process = v13->_process;
    v13->_process = v16;
  }

  else
  {
    v18 = [(RBSProcessState *)v10 process];
    process = v18;
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = [(RBSProcessExitEvent *)v12 process];
    }

    v20 = v13->_process;
    v13->_process = v19;
  }

  state = v13->_state;
  v13->_state = v9;
  v22 = v9;

  previousState = v13->_previousState;
  v13->_previousState = v10;
  v24 = v10;

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