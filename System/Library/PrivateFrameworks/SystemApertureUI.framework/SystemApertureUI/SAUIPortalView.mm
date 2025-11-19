@interface SAUIPortalView
@end

@implementation SAUIPortalView

void __47___SAUIPortalView__configurePortalViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained sourceView];
  v4 = [v3 layer];

  if (v4 == v2)
  {
    v5 = [WeakRetained portalLayer];
    [v5 setSourceLayer:v2];
  }
}

@end