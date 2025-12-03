@interface SRSTCallClient
- (SRSTCallClient)init;
- (SRSTCallClientDelegate)delegate;
- (SRSTCallState)currentState;
- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event;
- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state;
@end

@implementation SRSTCallClient

- (SRSTCallClient)init
{
  v6.receiver = self;
  v6.super_class = SRSTCallClient;
  v2 = [(SRSTCallClient *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  [(_SRSTCallClient *)v2->_underlyingObject setDelegate:v2];
  return v2;
}

- (SRSTCallState)currentState
{
  v3 = [SRSTCallState alloc];
  currentState = [(_SRSTCallClient *)self->_underlyingObject currentState];
  v5 = [(SRSTCallState *)v3 initWithUnderlyingObject:currentState];

  return v5;
}

- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event
{
  delegate = [(SRSTCallClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SRSTCallClient *)self delegate];
    [delegate2 stateMachineWithClient:self didReceiveEvent:event];
  }
}

- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state
{
  stateCopy = state;
  delegate = [(SRSTCallClient *)self delegate];
  v6 = [[SRSTCallState alloc] initWithUnderlyingObject:stateCopy];

  [delegate stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTCallClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end