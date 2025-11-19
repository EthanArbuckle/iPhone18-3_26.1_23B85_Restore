@interface SRSTCallClient
- (SRSTCallClient)init;
- (SRSTCallClientDelegate)delegate;
- (SRSTCallState)currentState;
- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4;
- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4;
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
  v4 = [(_SRSTCallClient *)self->_underlyingObject currentState];
  v5 = [(SRSTCallState *)v3 initWithUnderlyingObject:v4];

  return v5;
}

- (void)stateMachineWithClient:(id)a3 didReceiveEvent:(int64_t)a4
{
  v6 = [(SRSTCallClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SRSTCallClient *)self delegate];
    [v8 stateMachineWithClient:self didReceiveEvent:a4];
  }
}

- (void)stateMachineWithClient:(id)a3 didTransitionToState:(id)a4
{
  v5 = a4;
  v7 = [(SRSTCallClient *)self delegate];
  v6 = [[SRSTCallState alloc] initWithUnderlyingObject:v5];

  [v7 stateMachineWithClient:self didTransitionToState:v6];
}

- (SRSTCallClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end