@interface _UIViewServiceReplyAwaitingTrampoline
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIViewServiceReplyAwaitingTrampoline

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__235;
  v18 = __Block_byref_object_dispose__235;
  v19 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59___UIViewServiceReplyAwaitingTrampoline_forwardInvocation___block_invoke;
  v11 = &unk_1E7129140;
  v13 = &v14;
  v6 = v5;
  v12 = v6;
  [(_UIViewServiceReplyControlTrampoline *)self _forwardInvocation:v4 withIncomingReplyDispatchBlock:&v8];
  v7 = dispatch_time(0, 2000000000);
  if (!dispatch_semaphore_wait(v6, v7))
  {
    [v15[5] invoke];
  }

  _Block_object_dispose(&v14, 8);
}

@end