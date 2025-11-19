@interface UITabModel
@end

@implementation UITabModel

void __39___UITabModel__inferCurrentEditability__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v6 _isCustomizable];
  v7 = [v6 _isUniquelySPI];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
  }

  *a4 = v8 & 1;
}

void __42___UITabModel_setTabItems_inferSelection___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([*(a1 + 32) isTabHidden:?] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __42___UITabModel_setTabItems_inferSelection___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [(UITabBarController *)WeakRetained _selectedElementDidChange:*(a1 + 40) previousElement:?];
  }
}

void __60___UITabModel__setSelectedItem_notifyDelegateOnReselection___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [(UITabBarController *)WeakRetained _selectedElementDidChange:*(a1 + 48) previousElement:?];
  }
}

@end