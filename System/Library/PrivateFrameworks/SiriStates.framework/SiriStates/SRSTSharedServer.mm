@interface SRSTSharedServer
- (SRSTSharedServer)init;
- (SRSTSharedState)currentState;
@end

@implementation SRSTSharedServer

- (SRSTSharedServer)init
{
  v6.receiver = self;
  v6.super_class = SRSTSharedServer;
  v2 = [(SRSTSharedServer *)&v6 init];
  v3 = objc_alloc_init(_SRSTSharedServer);
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (SRSTSharedState)currentState
{
  v3 = [SRSTSharedState alloc];
  v4 = [(_SRSTSharedServer *)self->_underlyingObject currentState];
  v5 = [(SRSTSharedState *)v3 initWithUnderlyingObject:v4];

  return v5;
}

@end