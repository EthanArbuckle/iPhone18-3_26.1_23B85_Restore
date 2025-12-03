@interface SRSTClient
- (SRSTClient)init;
- (SRSTClientDelegate)delegate;
- (SRSTState)currentState;
- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event;
- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state;
@end

@implementation SRSTClient

- (SRSTClient)init
{
  v6.receiver = self;
  v6.super_class = SRSTClient;
  v2 = [(SRSTClient *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  [(_SRSTClient *)v2->_underlyingObject setDelegate:v2];
  return v2;
}

- (SRSTState)currentState
{
  v3 = [SRSTState alloc];
  currentState = [(_SRSTClient *)self->_underlyingObject currentState];
  v5 = [(SRSTState *)v3 initWithUnderlyingObject:currentState];

  return v5;
}

- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event
{
  delegate = [(SRSTClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SRSTClient *)self delegate];
    [delegate2 stateMachineWithClient:self didReceiveEvent:event];
  }
}

- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state
{
  stateCopy = state;
  delegate = [(SRSTClient *)self delegate];
  v6 = [[SRSTState alloc] initWithUnderlyingObject:stateCopy];

  [delegate stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end