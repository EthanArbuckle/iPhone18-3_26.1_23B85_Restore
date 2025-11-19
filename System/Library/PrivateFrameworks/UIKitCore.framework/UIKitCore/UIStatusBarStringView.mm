@interface UIStatusBarStringView
@end

@implementation UIStatusBarStringView

void __51___UIStatusBarStringView__updateAlternateTextTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained showsAlternateText];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setShowsAlternateText:v2 ^ 1u];
}

@end