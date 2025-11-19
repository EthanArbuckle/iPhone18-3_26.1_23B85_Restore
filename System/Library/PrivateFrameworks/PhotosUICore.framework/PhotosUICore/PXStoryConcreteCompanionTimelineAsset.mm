@interface PXStoryConcreteCompanionTimelineAsset
@end

@implementation PXStoryConcreteCompanionTimelineAsset

void __66___PXStoryConcreteCompanionTimelineAsset_colorNormalizationEffect__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ((a3 - 1) <= 1)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 32));
    v6 = v7;
  }
}

@end