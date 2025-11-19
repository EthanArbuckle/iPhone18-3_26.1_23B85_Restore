@interface TVCollectionViewLockupCell
@end

@implementation TVCollectionViewLockupCell

void __80___TVCollectionViewLockupCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained isFocused])
  {
    v3 = [v2 _selectingView];
    [v2 _focusableContentMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [v2 frame];
    v11 = v10;
    if (v3)
    {
      [v3 cellMetrics];
      v12 = *(&v13 + 1);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0.0;
      v13 = 0u;
    }

    [v2 _setFocusableContentMargins:{v5, v7, v11 - v12, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  }
}

@end