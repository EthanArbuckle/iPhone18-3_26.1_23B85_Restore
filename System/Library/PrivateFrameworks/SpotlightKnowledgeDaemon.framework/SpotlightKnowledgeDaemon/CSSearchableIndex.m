@interface CSSearchableIndex
@end

@implementation CSSearchableIndex

void __83__CSSearchableIndex_Timeout__indexSearchableItems_timeout_timeoutError_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  os_unfair_lock_lock(&lock);
  dispatch_group_leave(*(a1 + 32));
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    os_unfair_lock_unlock(&lock);
  }

  else
  {
    *(v3 + 24) = 1;
    os_unfair_lock_unlock(&lock);
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }
  }
}

@end