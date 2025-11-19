@interface _PPTState
- (_PPTState)init;
- (void)enterDispatchGroup;
- (void)leaveDispatchGroup;
@end

@implementation _PPTState

- (void)leaveDispatchGroup
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31___PPTState_leaveDispatchGroup__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)enterDispatchGroup
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31___PPTState_enterDispatchGroup__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (_PPTState)init
{
  v8.receiver = self;
  v8.super_class = _PPTState;
  v2 = [(_PPTState *)&v8 init];
  v3 = dispatch_queue_create("_PPTState", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = dispatch_group_create();
  group = v2->_group;
  v2->_group = v5;

  return v2;
}

@end