@interface NSUserActivity
@end

@implementation NSUserActivity

void __97__NSUserActivity_PhotosUICore__px_requestActivityWithActivityType_titleProvider_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__NSUserActivity_PhotosUICore__px_requestActivityWithActivityType_titleProvider_completionBlock___block_invoke_3;
  block[3] = &unk_1E774A0E0;
  v5 = *(a1 + 32);
  v6 = v2;
  v7 = *(a1 + 48);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__NSUserActivity_PhotosUICore__px_requestActivityWithActivityType_titleProvider_completionBlock___block_invoke_3(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:a1[4]];
  [v2 setTitle:a1[5]];
  (*(a1[6] + 16))();
}

void __97__NSUserActivity_PhotosUICore__px_requestActivityWithActivityType_titleProvider_completionBlock___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.photosuicore.user-activity-title", v2);
  v1 = px_requestActivityWithActivityType_titleProvider_completionBlock__queue;
  px_requestActivityWithActivityType_titleProvider_completionBlock__queue = v0;
}

@end