@interface DispatchGroupWrapper
- (DispatchGroupWrapper)init;
- (void)executeWithDispatchGroup:(id)a3;
@end

@implementation DispatchGroupWrapper

- (DispatchGroupWrapper)init
{
  v6.receiver = self;
  v6.super_class = DispatchGroupWrapper;
  v2 = [(DispatchGroupWrapper *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    dispatchGroup = v2->_dispatchGroup;
    v2->_dispatchGroup = v3;
  }

  return v2;
}

- (void)executeWithDispatchGroup:(id)a3
{
  dispatchGroup = self->_dispatchGroup;
  v5 = a3;
  dispatch_group_enter(dispatchGroup);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__DispatchGroupWrapper_executeWithDispatchGroup___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5[2](v5, v6);
}

@end