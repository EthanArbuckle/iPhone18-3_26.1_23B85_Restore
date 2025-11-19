@interface WGCAPackageView
@end

@implementation WGCAPackageView

void __92___WGCAPackageView_loadPackageViewWithContentsOfURL_publishedObjectViewClassMap_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v9 = v7;
  if (!v6)
  {
    [v7 setArchiveURL:*(a1 + 32)];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v6);
  }
}

BOOL __65___WGCAPackageView__supportsPushingBottomCornerRadiusToSubviews___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  if (([v5 isHidden] & 1) == 0)
  {
    [v5 alpha];
    v6 = v7 == 0.0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 1;
  if (a3)
  {
LABEL_5:
    *a3 = !v6;
  }

LABEL_6:
  if (v6)
  {
    v9 = *(a1 + 32);
    v8 = a1 + 32;
    *(*(v9 + 8) + 24) = 1;
  }

  else
  {
    v10 = [v5 layer];
    v11 = [v10 contents];
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v13 = [v5 wg_supportsBottomCornerRadiusGivenRootView:WeakRetained withCornerRadius:0 supportedCorners:*(a1 + 48)];
      v14 = *(a1 + 32);
      v8 = a1 + 32;
      *(*(v14 + 8) + 24) = v13;
    }

    else
    {
      v15 = *(a1 + 32);
      v8 = a1 + 32;
      *(*(v15 + 8) + 24) = 1;
    }
  }

  v16 = *(*(*v8 + 8) + 24);

  return (v16 & 1) == 0;
}

uint64_t __47___WGCAPackageView__setContinuousCornerRadius___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  if ([v5 isHidden])
  {
    v6 = 1;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v5 alpha];
  v6 = v7 == 0.0;
  if (a3)
  {
LABEL_5:
    *a3 = !v6;
  }

LABEL_6:
  if (!v6)
  {
    v8 = [v5 layer];
    v9 = [v8 contents];

    if (v9)
    {
      v13 = 0;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [v5 wg_supportsBottomCornerRadiusGivenRootView:WeakRetained withCornerRadius:&v13 supportedCorners:*(a1 + 40)];

      if (v13)
      {
        [v5 _setContinuousCornerRadius:*(a1 + 40)];
        v11 = [v5 layer];
        [v11 setMaskedCorners:v13];
      }
    }
  }

  return 0;
}

@end