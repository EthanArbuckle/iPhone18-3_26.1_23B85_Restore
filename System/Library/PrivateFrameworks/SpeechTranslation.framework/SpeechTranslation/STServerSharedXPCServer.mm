@interface STServerSharedXPCServer
@end

@implementation STServerSharedXPCServer

void ___STServerSharedXPCServer_block_invoke()
{
  v4 = 0;
  v0 = [[_STXPCServer alloc] initWithError:&v4];
  v1 = v4;
  v2 = _STServerSharedXPCServer_xpcServer;
  _STServerSharedXPCServer_xpcServer = v0;

  v3 = _STServerSharedXPCServer_staticError;
  _STServerSharedXPCServer_staticError = v1;
}

@end