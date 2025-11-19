@interface _UIViewServiceFencingBatchController
- (_UIViewServiceFencingBatchController)init;
@end

@implementation _UIViewServiceFencingBatchController

- (_UIViewServiceFencingBatchController)init
{
  v8.receiver = self;
  v8.super_class = _UIViewServiceFencingBatchController;
  v2 = [(_UIViewServiceFencingBatchController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    suspendedProxies = v2->_suspendedProxies;
    v2->_suspendedProxies = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    pendingProxies = v2->_pendingProxies;
    v2->_pendingProxies = v5;
  }

  return v2;
}

@end