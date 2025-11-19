@interface SRSTSharedClient
- (SRSTSharedClient)init;
- (SRSTSharedClientDelegate)delegate;
- (SRSTSharedState)currentState;
- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4;
- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4;
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
  v4 = [(_SRSTSharedClient *)self->_underlyingObject currentState];
  v5 = [(SRSTSharedState *)v3 initWithUnderlyingObject:v4];

  return v5;
}

- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4
{
  v6 = [(SRSTSharedClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSTSharedClient *)self delegate];
    [v8 stateMachineWithClient:self didReceiveEvent:a4];
  }
}

- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4
{
  v5 = a4;
  v7 = [(SRSTSharedClient *)self delegate];
  v6 = [[SRSTSharedState alloc] initWithUnderlyingObject:v5];

  [v7 stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTSharedClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end