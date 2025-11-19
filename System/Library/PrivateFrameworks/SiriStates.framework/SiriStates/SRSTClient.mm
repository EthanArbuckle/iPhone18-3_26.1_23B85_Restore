@interface SRSTClient
- (SRSTClient)init;
- (SRSTClientDelegate)delegate;
- (SRSTState)currentState;
- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4;
- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4;
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
  v4 = [(_SRSTClient *)self->_underlyingObject currentState];
  v5 = [(SRSTState *)v3 initWithUnderlyingObject:v4];

  return v5;
}

- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4
{
  v6 = [(SRSTClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSTClient *)self delegate];
    [v8 stateMachineWithClient:self didReceiveEvent:a4];
  }
}

- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4
{
  v5 = a4;
  v7 = [(SRSTClient *)self delegate];
  v6 = [[SRSTState alloc] initWithUnderlyingObject:v5];

  [v7 stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end