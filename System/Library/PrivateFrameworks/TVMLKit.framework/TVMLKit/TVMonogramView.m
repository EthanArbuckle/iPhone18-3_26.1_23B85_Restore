@interface TVMonogramView
@end

@implementation TVMonogramView

void __59___TVMonogramView__loadWithMonogramDescription_imageProxy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a4)
  {
    v8 = [*(a1 + 32) preferedMonogramType];
    if (a2 || !v8)
    {
      [WeakRetained[122] setHidden:1];
      [WeakRetained[133] setHidden:0];
      [WeakRetained _updateAppearanceForSelectionStateWithCoordinator:0];
      if (a2)
      {
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 postNotificationName:@"TVMonogramViewImageDidUpdateNotification" object:WeakRetained];
      }
    }

    else
    {
      if ((v8 - 3) >= 3)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = 2;
      }

      v10 = [*(a1 + 32) copyWithType:v9];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __59___TVMonogramView__loadWithMonogramDescription_imageProxy___block_invoke_2;
      v16 = &unk_279D6E770;
      objc_copyWeak(&v18, (a1 + 40));
      v17 = v10;
      v11 = v10;
      dispatch_async(MEMORY[0x277D85CD0], &v13);

      objc_destroyWeak(&v18);
      [WeakRetained _updateAppearanceForSelectionStateWithCoordinator:{0, v13, v14, v15, v16}];
    }
  }
}

void __59___TVMonogramView__loadWithMonogramDescription_imageProxy___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _loadWithMonogramDescription:*(a1 + 32) imageProxy:0];
    WeakRetained = v3;
  }
}

@end