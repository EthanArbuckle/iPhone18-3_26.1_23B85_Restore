@interface UIImageLoader
@end

@implementation UIImageLoader

void __56___UIImageLoader__loadImageWithCompletionQueue_handler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  atomic_store(1u, (*(a1 + 32) + 9));
  dispatch_async(*(a1 + 40), *(a1 + 48));
  _drainTrampolines(*(a1 + 32));
  v2 = (*(a1 + 32) + 32);

  os_unfair_lock_unlock(v2);
}

@end