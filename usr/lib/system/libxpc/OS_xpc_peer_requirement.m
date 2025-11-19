@interface OS_xpc_peer_requirement
- (void)dealloc;
@end

@implementation OS_xpc_peer_requirement

- (void)dealloc
{
  _xpc_peer_requirement_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_xpc_peer_requirement;
  [(OS_xpc_peer_requirement *)&v3 dealloc];
}

@end