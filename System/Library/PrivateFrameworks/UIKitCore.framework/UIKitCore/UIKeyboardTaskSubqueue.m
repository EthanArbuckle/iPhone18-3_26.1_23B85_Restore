@interface UIKeyboardTaskSubqueue
+ (UIKeyboardTaskSubqueue)subqueueWithExecutionContext:(id)a3;
- (UIKeyboardTaskSubqueue)initWithExecutionContext:(id)a3;
- (void)dispatchAsync:(id)a3;
- (void)dispatchAsync:(id)a3 breadcrumb:(id)a4;
- (void)returnExecutionToParentQueue;
@end

@implementation UIKeyboardTaskSubqueue

+ (UIKeyboardTaskSubqueue)subqueueWithExecutionContext:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithExecutionContext:v3];

  return v4;
}

- (UIKeyboardTaskSubqueue)initWithExecutionContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UIKeyboardTaskSubqueue;
  v6 = [(UIKeyboardTaskSubqueue *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.UIKit.UIKeyboardTaskSubqueue.Internal", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    objc_storeStrong(&v6->_context, a3);
  }

  return v6;
}

- (void)dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskSubqueue *)self dispatchAsync:v4 breadcrumb:v5];
}

- (void)dispatchAsync:(id)a3 breadcrumb:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__UIKeyboardTaskSubqueue_dispatchAsync_breadcrumb___block_invoke;
    block[3] = &unk_1E70FE2C0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(internalQueue, block);
  }
}

void __51__UIKeyboardTaskSubqueue_dispatchAsync_breadcrumb___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v1 + 8);
    v5 = v2;
    dispatch_suspend(v4);
    v6 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__UIKeyboardTaskSubqueue_dispatchAsync_breadcrumb___block_invoke_2;
    v8[3] = &unk_1E70FD768;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v6 transferExecutionToMainThreadWithTask:v8 breadcrumb:*(a1 + 48)];
  }
}

void __51__UIKeyboardTaskSubqueue_dispatchAsync_breadcrumb___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

- (void)returnExecutionToParentQueue
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIKeyboardTaskSubqueue_returnExecutionToParentQueue__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __54__UIKeyboardTaskSubqueue_returnExecutionToParentQueue__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  if (v2)
  {
    dispatch_suspend(*(*(a1 + 32) + 8));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__UIKeyboardTaskSubqueue_returnExecutionToParentQueue__block_invoke_2;
    v5[3] = &unk_1E70FD058;
    v5[4] = *(a1 + 32);
    [v2 transferExecutionToMainThreadWithTask:v5];
  }
}

void __54__UIKeyboardTaskSubqueue_returnExecutionToParentQueue__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [v3 returnExecutionToParent];

  v4 = *(*(a1 + 32) + 8);

  dispatch_resume(v4);
}

@end