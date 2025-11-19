@interface UITableMetricsAdapter
- (_BYTE)tableBackgroundColor;
- (__n128)_updateSharedSectionMetricsForListGeometry:(uint64_t)a1;
- (char)initWithTableStyle:(void *)a3 scrollView:;
- (double)_listGeometry;
- (double)defaultTableContentInsets;
- (double)defaultTableLayoutMargins;
- (double)paddingAboveFirstSectionHeader;
- (double)paddingAboveFirstSectionWithoutHeader;
- (double)paddingAboveSectionHeaders;
- (double)rowSpacing;
- (id)tableSeparatorColor;
- (id)tableSeparatorVisualEffect;
- (void)_updateSharedListBehaviors;
- (void)_updateSharedSeparatorMetrics;
@end

@implementation UITableMetricsAdapter

- (_BYTE)tableBackgroundColor
{
  if (a1)
  {
    v2 = a1;
    if ((a1[152] & 1) == 0)
    {
      [(UITableMetricsAdapter *)a1 _listGeometry];
      [(UITableMetricsAdapter *)v2 _updateSharedSectionMetricsForListGeometry:v4];
    }

    a1 = *(v2 + 208);
    v1 = vars8;
  }

  return a1;
}

- (void)_updateSharedSeparatorMetrics
{
  if (a1)
  {
    *obj = 0u;
    v13 = 0u;
    v2 = +[_UIListMetrics sharedMetrics];
    v3 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v5 = [WeakRetained traitCollection];
    if (v2)
    {
      [v2 metricsForSeparatorWithListStyle:v3 traitCollection:v5];
    }

    else
    {
      *obj = 0u;
      v13 = 0u;
    }

    objc_storeStrong((a1 + 224), obj[1]);
    v6 = *(&v13 + 1);
    if (*(&v13 + 1) >= 2uLL)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewCellSeparatorStyle _UITableViewCellSeparatorStyleFromListSeparatorStyle(_UIListSeparatorStyle)"];
      [v7 handleFailureInFunction:v8 file:@"UITableViewCell_Internal.h" lineNumber:60 description:{@"UIKit internal inconsistency: unknown separator style (%ld)", *(&v13 + 1)}];

      v6 = 1;
    }

    *(a1 + 232) = v6;
    if (obj[0] != 0x8000000000000000)
    {
      v9 = [UIBlurEffect effectWithStyle:?];
      v10 = [UIVibrancyEffect effectForBlurEffect:v9 style:7];
      v11 = *(a1 + 216);
      *(a1 + 216) = v10;
    }

    *(a1 + 152) |= 2u;
  }
}

- (id)tableSeparatorColor
{
  if (a1)
  {
    v2 = a1;
    if ((a1[19] & 2) == 0)
    {
      [(UITableMetricsAdapter *)a1 _updateSharedSeparatorMetrics];
    }

    a1 = v2[28];
    v1 = vars8;
  }

  return a1;
}

- (id)tableSeparatorVisualEffect
{
  if (a1)
  {
    v2 = a1;
    if ((a1[19] & 2) == 0)
    {
      [(UITableMetricsAdapter *)a1 _updateSharedSeparatorMetrics];
    }

    a1 = v2[27];
    v1 = vars8;
  }

  return a1;
}

- (double)defaultTableContentInsets
{
  if (!a1)
  {
    return 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UITableMetricsAdapter *)a1 _listGeometry];
  v2 = *(a1 + 88);
  v3 = *(a1 + 120);
  v14 = *(a1 + 104);
  v15 = v3;
  v16 = *(a1 + 136);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 72);
  v13 = v2;
  v8 = *(a1 + 8);
  v9 = v4;
  v7[6] = v23;
  v7[7] = v24;
  v7[8] = v25;
  v7[2] = v19;
  v7[3] = v20;
  v7[4] = v21;
  v7[5] = v22;
  v7[0] = v17;
  v7[1] = v18;
  if ((_UIListGeometryEqualToListGeometry(&v8, v7) & 1) == 0)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v8 = v17;
    v9 = v18;
    [(UITableMetricsAdapter *)a1 _updateSharedSectionMetricsForListGeometry:?];
  }

  return *(a1 + 256);
}

- (double)_listGeometry
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    [WeakRetained directionalLayoutMargins];
    v31 = v5;
    v32 = v6;
    v8 = v7;
    v10 = v9;

    v11 = objc_loadWeakRetained((a1 + 248));
    [v11 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = objc_loadWeakRetained((a1 + 248));
    [v20 bounds];
    v22 = v21;
    v24 = v23;

    v25 = objc_loadWeakRetained((a1 + 248));
    v33 = [v25 traitCollection];

    v26 = [v33 layoutDirection];
    [UIViewController _horizontalContentMarginForViewWidth:v33 safeAreaInsets:v22 traitCollection:v13, v15, v17, v19];
    *a2 = 0;
    *(a2 + 8) = v27;
    *(a2 + 16) = 0;
    *(a2 + 24) = v27;
    *(a2 + 32) = v31;
    *(a2 + 40) = v8;
    *(a2 + 48) = v10;
    *(a2 + 56) = v32;
    if (v26 == 1)
    {
      v28 = v19;
    }

    else
    {
      v28 = v15;
    }

    if (v26 == 1)
    {
      v29 = v15;
    }

    else
    {
      v29 = v19;
    }

    *(a2 + 64) = v13;
    *(a2 + 72) = v28;
    *(a2 + 80) = v17;
    *(a2 + 88) = v29;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = v22;
    *(a2 + 136) = v24;
  }

  else
  {
    result = 0.0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

- (void)_updateSharedListBehaviors
{
  if (a1)
  {
    v2 = +[_UIListMetrics sharedMetrics];
    v3 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v5 = [WeakRetained traitCollection];
    v6 = [v2 behaviorsForListWithStyle:v3 traitCollection:v5];
    v8 = v7;

    *(a1 + 184) = v8;
    *(a1 + 192) = (v6 >> 1) & 1;
    *(a1 + 152) |= 4u;
  }
}

- (double)rowSpacing
{
  if (!a1)
  {
    return 0.0;
  }

  if ((*(a1 + 152) & 1) == 0)
  {
    [(UITableMetricsAdapter *)a1 _listGeometry];
    [(UITableMetricsAdapter *)a1 _updateSharedSectionMetricsForListGeometry:v3];
  }

  return *(a1 + 200);
}

- (double)defaultTableLayoutMargins
{
  if (!a1)
  {
    return 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UITableMetricsAdapter *)a1 _listGeometry];
  v2 = *(a1 + 88);
  v3 = *(a1 + 120);
  v14 = *(a1 + 104);
  v15 = v3;
  v16 = *(a1 + 136);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 72);
  v13 = v2;
  v8 = *(a1 + 8);
  v9 = v4;
  v7[6] = v23;
  v7[7] = v24;
  v7[8] = v25;
  v7[2] = v19;
  v7[3] = v20;
  v7[4] = v21;
  v7[5] = v22;
  v7[0] = v17;
  v7[1] = v18;
  if ((_UIListGeometryEqualToListGeometry(&v8, v7) & 1) == 0)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v8 = v17;
    v9 = v18;
    [(UITableMetricsAdapter *)a1 _updateSharedSectionMetricsForListGeometry:?];
  }

  return *(a1 + 288);
}

- (double)paddingAboveFirstSectionWithoutHeader
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 168);
  if (result == 2.22507386e-308)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v3 = +[_UIListMetrics sharedMetrics];
    v4 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v6 = [WeakRetained traitCollection];
    v7 = v6;
    if (v3)
    {
      memset(v8, 0, sizeof(v8));
      [v3 metricsForSectionWithPosition:2 hasHeader:0 hasFooter:0 listGeometry:v8 listStyle:v4 spacingStyle:0 traitCollection:v6];
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    result = *&v10;
    *(a1 + 168) = v10;
  }

  return result;
}

- (double)paddingAboveSectionHeaders
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 176);
  if (result == 2.22507386e-308)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v3 = +[_UIListMetrics sharedMetrics];
    v4 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v6 = [WeakRetained traitCollection];
    v7 = v6;
    if (v3)
    {
      memset(v8, 0, sizeof(v8));
      [v3 metricsForSectionWithPosition:0 hasHeader:1 hasFooter:0 listGeometry:v8 listStyle:v4 spacingStyle:0 traitCollection:v6];
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    result = *&v10;
    *(a1 + 176) = v10;
  }

  return result;
}

- (double)paddingAboveFirstSectionHeader
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 160);
  if (result == 2.22507386e-308)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v3 = +[_UIListMetrics sharedMetrics];
    v4 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v6 = [WeakRetained traitCollection];
    v7 = v6;
    if (v3)
    {
      memset(v8, 0, sizeof(v8));
      [v3 metricsForSectionWithPosition:2 hasHeader:1 hasFooter:0 listGeometry:v8 listStyle:v4 spacingStyle:0 traitCollection:v6];
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    result = *&v10;
    *(a1 + 160) = v10;
  }

  return result;
}

- (char)initWithTableStyle:(void *)a3 scrollView:
{
  v3 = a1;
  if (a1)
  {
    if (!a3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_initWithTableStyle_scrollView_ object:v3 file:@"UITableMetricsAdapter.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"scrollView != nil"}];
    }

    v10.receiver = v3;
    v10.super_class = UITableMetricsAdapter;
    v3 = objc_msgSendSuper2(&v10, sel_init);
    if (v3)
    {
      if (a2 >= 3)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListStyle _UIListStyleForTableViewStyle(UITableViewStyle)"];
        [v6 handleFailureInFunction:v7 file:@"UITableView_Internal.h" lineNumber:101 description:{@"UIKit internal inconsistency: unknown table view style (%ld)", a2}];

        a2 = 0;
      }

      *(v3 + 30) = a2;
      objc_storeWeak(v3 + 31, a3);
      *(v3 + 8) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 88) = 0u;
      *(v3 + 104) = 0u;
      *(v3 + 120) = 0u;
      *(v3 + 136) = 0u;
      *(v3 + 10) = vdupq_n_s64(0x10000000000000uLL);
      *(v3 + 22) = 0x10000000000000;
    }
  }

  return v3;
}

- (__n128)_updateSharedSectionMetricsForListGeometry:(uint64_t)a1
{
  if (a1)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *obj = 0u;
    v4 = +[_UIListMetrics sharedMetrics];
    v5 = *(a1 + 240);
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    v7 = [WeakRetained traitCollection];
    v8 = v7;
    if (v4)
    {
      v9 = a2[7];
      v23[6] = a2[6];
      v23[7] = v9;
      v23[8] = a2[8];
      v10 = a2[3];
      v23[2] = a2[2];
      v23[3] = v10;
      v11 = a2[5];
      v23[4] = a2[4];
      v23[5] = v11;
      v12 = a2[1];
      v23[0] = *a2;
      v23[1] = v12;
      [v4 metricsForSectionWithPosition:0 hasHeader:0 hasFooter:0 listGeometry:v23 listStyle:v5 spacingStyle:0 traitCollection:v7];
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *obj = 0u;
    }

    v13 = *(&v25 + 1);
    v15 = *(&v26 + 1);
    v14 = v27;
    *(a1 + 256) = 0;
    *(a1 + 264) = v13;
    *(a1 + 272) = 0;
    *(a1 + 280) = v15;
    *(a1 + 296) = v28;
    v16 = v29;
    *(a1 + 288) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = v16;
    *(a1 + 200) = v14;
    objc_storeStrong((a1 + 208), obj[0]);
    *(a1 + 8) = *a2;
    v17 = a2[1];
    v18 = a2[2];
    v19 = a2[3];
    *(a1 + 72) = a2[4];
    *(a1 + 56) = v19;
    *(a1 + 40) = v18;
    *(a1 + 24) = v17;
    result = a2[5];
    v21 = a2[6];
    v22 = a2[7];
    *(a1 + 136) = a2[8];
    *(a1 + 120) = v22;
    *(a1 + 104) = v21;
    *(a1 + 88) = result;
    *(a1 + 152) |= 1u;
  }

  return result;
}

@end