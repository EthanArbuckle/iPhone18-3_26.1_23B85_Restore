@interface PASQueueLock
@end

@implementation PASQueueLock

void *__57___PASQueueLock_runWithLockAcquired_shouldContinueBlock___block_invoke(void *result)
{
  if ((atomic_exchange((*(result[5] + 8) + 32), 1u) & 1) == 0)
  {
    return (*(*(*(result[6] + 8) + 40) + 16))(*(*(result[6] + 8) + 40), *(result[4] + 16));
  }

  return result;
}

@end