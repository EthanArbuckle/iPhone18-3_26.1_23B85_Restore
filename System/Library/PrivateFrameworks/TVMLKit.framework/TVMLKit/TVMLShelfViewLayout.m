@interface TVMLShelfViewLayout
@end

@implementation TVMLShelfViewLayout

void __74___TVMLShelfViewLayout__animationForReusableView_toLayoutAttributes_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCAE60];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 cellMetrics];
    v8 = *(&v24 + 1);
    v7 = *&v24;
    v10 = *(&v25 + 1);
    v9 = *&v25;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v23[8] = 0u;
  }

  v11 = [v4 valueWithUIEdgeInsets:{v7, v8, v9, v10}];
  [v6 setValue:v11 forTVViewStyle:@"padding"];

  v12 = *(a1 + 32);
  [*(a1 + 48) size];
  [_TVLockupFactory updateViewLayoutForCell:v12 forSize:?];
  v13 = *(a1 + 32);
  [*(a1 + 48) center];
  [v13 setCenter:?];
  [*(a1 + 32) bounds];
  v15 = v14;
  v17 = v16;
  [*(a1 + 48) size];
  [*(a1 + 32) setBounds:{v15, v17, v18, v19}];
  v20 = *(a1 + 32);
  [*(a1 + 48) alpha];
  [v20 setAlpha:?];
  v21 = [*(a1 + 32) layer];
  v22 = *(a1 + 48);
  if (v22)
  {
    [v22 transform3D];
  }

  else
  {
    memset(v23, 0, 128);
  }

  [v21 setTransform:v23];

  if (v3)
  {
    v3[2](v3, 1);
  }
}

@end