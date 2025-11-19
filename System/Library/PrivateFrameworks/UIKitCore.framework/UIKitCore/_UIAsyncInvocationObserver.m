@interface _UIAsyncInvocationObserver
+ (void)whenInvocationsCompleteForObservers:(id)a3 do:(id)a4;
- (_UIAsyncInvocationObserver)init;
- (void)_didCompleteInvocation;
- (void)whenCompleteDo:(id)a3;
@end

@implementation _UIAsyncInvocationObserver

- (_UIAsyncInvocationObserver)init
{
  v8.receiver = self;
  v8.super_class = _UIAsyncInvocationObserver;
  v2 = [(_UIAsyncInvocationObserver *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_suspendedPostCompletionQueue = 0;
    v4 = dispatch_queue_create("Async Observer Queue Management", 0);
    completionQueueManagementQueue = v3->_completionQueueManagementQueue;
    v3->_completionQueueManagementQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)_didCompleteInvocation
{
  completionQueueManagementQueue = self->_completionQueueManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___UIAsyncInvocationObserver__didCompleteInvocation__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(completionQueueManagementQueue, block);
}

- (void)whenCompleteDo:(id)a3
{
  v4 = a3;
  completionQueueManagementQueue = self->_completionQueueManagementQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___UIAsyncInvocationObserver_whenCompleteDo___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(completionQueueManagementQueue, v7);
}

+ (void)whenInvocationsCompleteForObservers:(id)a3 do:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __69___UIAsyncInvocationObserver_whenInvocationsCompleteForObservers_do___block_invoke;
        v22[3] = &unk_1E70F3590;
        v23 = v7;
        [v13 whenCompleteDo:v22];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v14 = dispatch_get_global_queue(0, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69___UIAsyncInvocationObserver_whenInvocationsCompleteForObservers_do___block_invoke_2;
  v18[3] = &unk_1E70FCE28;
  v19 = v8;
  v20 = v7;
  v21 = v6;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  dispatch_async(v14, v18);
}

@end