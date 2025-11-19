@interface SBSATimerAndDescriptionRecord
@end

@implementation SBSATimerAndDescriptionRecord

void __43___SBSATimerAndDescriptionRecord_schedule___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [SBSAElapsedTimerDescription alloc];
    v3 = [WeakRetained timerDescription];
    v4 = [(SBSAElapsedTimerDescription *)v2 initElapsedTimerDescriptionWithDescription:v3];
    [WeakRetained setTimerDescription:v4];

    [WeakRetained[1] invalidate];
  }

  (*(*(a1 + 32) + 16))();
}

@end