@interface UITextSearchingFindSessionAggregator
@end

@implementation UITextSearchingFindSessionAggregator

void __63___UITextSearchingFindSessionAggregator__performOnMainIfValid___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

@end