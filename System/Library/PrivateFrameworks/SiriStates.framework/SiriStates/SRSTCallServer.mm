@interface SRSTCallServer
- (SRSTCallServer)init;
- (SRSTCallState)currentState;
@end

@implementation SRSTCallServer

- (SRSTCallServer)init
{
  v6.receiver = self;
  v6.super_class = SRSTCallServer;
  v2 = [(SRSTCallServer *)&v6 init];
  v3 = objc_alloc_init(_SRSTCallServer);
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (SRSTCallState)currentState
{
  v3 = [SRSTCallState alloc];
  currentState = [(_SRSTCallServer *)self->_underlyingObject currentState];
  v5 = [(SRSTCallState *)v3 initWithUnderlyingObject:currentState];

  return v5;
}

@end