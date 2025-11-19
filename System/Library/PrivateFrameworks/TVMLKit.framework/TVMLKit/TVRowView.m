@interface TVRowView
@end

@implementation TVRowView

void __28___TVRowView_setComponents___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 480));

  if (WeakRetained == v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

@end