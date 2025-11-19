@interface UIViewServiceReplyAwaitingTrampoline
@end

@implementation UIViewServiceReplyAwaitingTrampoline

void __59___UIViewServiceReplyAwaitingTrampoline_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 retainArguments];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end