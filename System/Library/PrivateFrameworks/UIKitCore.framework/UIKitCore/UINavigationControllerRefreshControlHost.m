@interface UINavigationControllerRefreshControlHost
@end

@implementation UINavigationControllerRefreshControlHost

void __59___UINavigationControllerRefreshControlHost_stopAnimations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained endRefreshing];
}

uint64_t __87___UINavigationControllerRefreshControlHost_refreshControl_didChangeToState_fromState___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87___UINavigationControllerRefreshControlHost_refreshControl_didChangeToState_fromState___block_invoke_2;
  v3[3] = &unk_1E70F3590;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performWhileAnimatingAutomaticContentOffsetAdjustments:v3];
}

void __87___UINavigationControllerRefreshControlHost_refreshControl_didChangeToState_fromState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 view];
  [v1 layoutBelowIfNeeded];
}

@end