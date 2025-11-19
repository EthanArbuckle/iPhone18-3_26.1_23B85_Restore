@interface UISceneHostingSheetPresentationHostComponent
@end

@implementation UISceneHostingSheetPresentationHostComponent

void __86___UISceneHostingSheetPresentationHostComponent_sheetDisconnectionAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_17);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Sheet disconnect assertion relinquished: %@", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    --WeakRetained[6];
    [WeakRetained evaluateSheetConnectionStateForNewAssertion:0];
  }
}

void __79___UISceneHostingSheetPresentationHostComponent_scene_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRemoteClientConfiguration:*(a1 + 40)];
  v3 = [*(a1 + 32) containerView];
  v2 = [v3 window];
  [v2 layoutIfNeeded];
}

void __72___UISceneHostingSheetPresentationHostComponent__setSheetConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  [a2 setSheetConfiguration:*(a1 + 32)];
  if (+[UIView areAnimationsEnabled])
  {
    v5 = +[UIView _currentAnimationSettings];
    [v10 setAnimationSettings:v5];
  }

  else
  {
    [v10 setAnimationSettings:0];
  }

  v6 = [*(a1 + 40) hostScene];
  v7 = [v6 settings];
  v8 = [v7 sheetConfiguration];

  if ([v8 _shouldFenceChangeToConfiguration:*(a1 + 32)])
  {
    v9 = +[UIScene _synchronizedDrawingFence];
    [v10 setAnimationFence:v9];
  }
}

@end