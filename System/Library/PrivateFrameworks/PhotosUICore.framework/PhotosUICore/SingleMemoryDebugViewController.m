@interface SingleMemoryDebugViewController
@end

@implementation SingleMemoryDebugViewController

void __58___SingleMemoryDebugViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSpecSet:v3];
  [v4 setVariant:*(a1 + 40)];
  [v4 setLayoutMargins:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void __47___SingleMemoryDebugViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localizedDateText];
  [v4 setLocalizedDateText:v5];

  v6 = [*(a1 + 32) localizedTitle];
  [v4 setLocalizedTitle:v6];

  v8 = [*(a1 + 32) keyAssetFetchResult];
  v7 = [v8 firstObject];
  [v4 setKeyAsset:v7];
}

@end