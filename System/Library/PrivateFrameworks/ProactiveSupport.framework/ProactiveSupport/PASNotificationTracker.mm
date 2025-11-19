@interface PASNotificationTracker
@end

@implementation PASNotificationTracker

void __70___PASNotificationTracker_issueNotificationAsyncWithContext_callback___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_group_enter(*(a1 + 32));
  v5 = [v4 group];
  v6 = [v4 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___PASNotificationTracker_issueNotificationAsyncWithContext_callback___block_invoke_2;
  block[3] = &unk_1E77F1440;
  v9 = v4;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v7 = v4;
  dispatch_group_async(v5, v6, block);
}

void __70___PASNotificationTracker_issueNotificationAsyncWithContext_callback___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = atomic_load((*(a1 + 32) + 8));
  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) handler];
    v4[2](v4, *(a1 + 40));
  }

  dispatch_group_leave(*(a1 + 48));

  objc_autoreleasePoolPop(v2);
}

@end