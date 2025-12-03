@interface SRSTServer
- (SRSTServer)init;
- (SRSTState)currentState;
@end

@implementation SRSTServer

- (SRSTServer)init
{
  v6.receiver = self;
  v6.super_class = SRSTServer;
  v2 = [(SRSTServer *)&v6 init];
  v3 = objc_alloc_init(_SRSTServer);
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (SRSTState)currentState
{
  v3 = [SRSTState alloc];
  currentState = [(_SRSTServer *)self->_underlyingObject currentState];
  v5 = [(SRSTState *)v3 initWithUnderlyingObject:currentState];

  return v5;
}

@end