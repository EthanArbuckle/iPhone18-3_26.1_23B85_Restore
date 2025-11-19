@interface HKSPOrderPreservingScheduler
@end

@implementation HKSPOrderPreservingScheduler

void __60___HKSPOrderPreservingScheduler__scheduleNextTaskIfPossible__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 8) & 1) == 0)
  {
    v3 = [*(v1 + 16) firstObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *(*(a1 + 32) + 8) = 1;
    }
  }
}

@end