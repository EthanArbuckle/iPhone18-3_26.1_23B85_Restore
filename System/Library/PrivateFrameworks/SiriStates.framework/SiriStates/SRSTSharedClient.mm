@interface SRSTSharedClient
- (SRSTSharedClient)init;
- (SRSTSharedClientDelegate)delegate;
- (SRSTSharedState)currentState;
- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event;
- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state;
@end

@implementation SRSTSharedClient

- (SRSTSharedClient)init
{
  v6.receiver = self;
  v6.super_class = SRSTSharedClient;
  v2 = [(SRSTSharedClient *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  [(_SRSTSharedClient *)v2->_underlyingObject setDelegate:v2];
  return v2;
}

- (SRSTSharedState)currentState
{
  v3 = [SRSTSharedState alloc];
  currentState = [(_SRSTSharedClient *)self->_underlyingObject currentState];
  v5 = [(SRSTSharedState *)v3 initWithUnderlyingObject:currentState];

  return v5;
}

- (void)stateMachineWithClient:(id)client didReceiveEvent:(int64_t)event
{
  delegate = [(SRSTSharedClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SRSTSharedClient *)self delegate];
    [delegate2 stateMachineWithClient:self didReceiveEvent:event];
  }
}

- (void)stateMachineWithClient:(id)client didTransitionToState:(id)state
{
  stateCopy = state;
  delegate = [(SRSTSharedClient *)self delegate];
  v6 = [[SRSTSharedState alloc] initWithUnderlyingObject:stateCopy];

  [delegate stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTSharedClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end