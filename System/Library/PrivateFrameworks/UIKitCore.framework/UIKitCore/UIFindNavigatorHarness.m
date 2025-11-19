@interface UIFindNavigatorHarness
@end

@implementation UIFindNavigatorHarness

uint64_t __54___UIFindNavigatorHarness_beginHoistingFindNavigator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findNavigatorView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _adjustHostViewScrollOffsetToTopIfSupported];
  }

  return [*(a1 + 32) _sendPlacementUpdate];
}

void __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findNavigatorView];
  v3 = [v2 superview];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));

  if (v3 == WeakRetained)
  {
    v5 = [*(a1 + 32) _findNavigatorView];
    [v5 removeFromSuperview];
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 32));
  [v6 _setSystemInsetAdjustment:@"findadj" forAdjustmentTypeIdentifier:0.0];
}

uint64_t __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _findNavigatorView];
  [v2 frame];
  v4 = v3;

  CGAffineTransformMakeTranslation(&v15, 0.0, -v4);
  v5 = [*(a1 + 32) _findNavigatorView];
  v14 = v15;
  [v5 setTransform:&v14];

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained contentOffset];
    v8 = v7;
    v9 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v9 contentOffset];
    v11 = v4 + v10;
    v12 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v12 setContentOffset:{v8, v11}];
  }

  return [*(a1 + 32) _sendPlacementUpdate];
}

uint64_t __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _findNavigatorView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  return (*(*(a1 + 40) + 16))();
}

@end