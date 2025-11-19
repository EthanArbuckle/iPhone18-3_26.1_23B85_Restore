@interface UIInterfaceActionRepresentationViewContext
@end

@implementation UIInterfaceActionRepresentationViewContext

uint64_t __79___UIInterfaceActionRepresentationViewContext_AppleTV__applyHighlightTransform__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 17) & 1) != 0 || *(v2 + 16) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    [WeakRetained bounds];
    v5 = v4;
    v7 = v6;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 _enlargedTransformForSize:v8[17] pressed:{v5, v7}];
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v10 = objc_loadWeakRetained((v9 + 24));
    v11 = [v10 layer];
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    [v11 setTransform:v24];

    v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v13 = [v12 layer];
    [v13 setZPosition:1000.0];

    v14 = *(a1 + 32);
    if (v14[17] != 1)
    {
      return [v14 _insertMotionEffects];
    }
  }

  else
  {
    v16 = objc_loadWeakRetained((v2 + 24));
    v17 = [v16 layer];
    v18 = *(MEMORY[0x1E69792E8] + 80);
    v37 = *(MEMORY[0x1E69792E8] + 64);
    v38 = v18;
    v19 = *(MEMORY[0x1E69792E8] + 112);
    v39 = *(MEMORY[0x1E69792E8] + 96);
    v40 = v19;
    v20 = *(MEMORY[0x1E69792E8] + 16);
    v33 = *MEMORY[0x1E69792E8];
    v34 = v20;
    v21 = *(MEMORY[0x1E69792E8] + 48);
    v35 = *(MEMORY[0x1E69792E8] + 32);
    v36 = v21;
    [v17 setTransform:&v33];

    v22 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v23 = [v22 layer];
    [v23 setZPosition:0.0];

    v14 = *(a1 + 32);
  }

  return [v14 _removeMotionEffects];
}

void __75___UIInterfaceActionRepresentationViewContext_AppleTV__insertMotionEffects__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 24));
  [WeakRetained addMotionEffect:v3];
}

void __75___UIInterfaceActionRepresentationViewContext_AppleTV__removeMotionEffects__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 24));
  [WeakRetained removeMotionEffect:v3];
}

void __84___UIInterfaceActionRepresentationViewContext_GlassAppleTV__applyHighlightTransform__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _targetBackgroundView];
  v3 = [*(a1 + 32) _targetContentView];
  if (([*(a1 + 32) pressed] & 1) != 0 || objc_msgSend(*(a1 + 32), "highlighted"))
  {
    v4 = [*(a1 + 32) highlightTransformTargetView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v9 = [*(a1 + 32) pressed];
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = *(v10 + 48) * 0.5;
    }

    else
    {
      v11 = *(v10 + 48);
    }

    v12 = [*(a1 + 32) pressed];
    v13 = *(*(a1 + 32) + 56);
    if (v12)
    {
      v13 = v13 * 0.5;
    }

    v14 = (v6 + v11) / v6;
    CATransform3DMakeScale(&v35, v14, (v8 + v13) / v8, 1.0);
    v15 = [v2 layer];
    v34 = v35;
    [v15 setTransform:&v34];

    CATransform3DMakeScale(&v33, v14, v14, 1.0);
    v16 = [v3 layer];
    v34 = v33;
    [v16 setTransform:&v34];

    v17 = [*(a1 + 32) highlightTransformTargetView];
    v18 = [v17 layer];
    [v18 setZPosition:1000.0];

    v19 = [*(a1 + 32) pressed];
    v20 = *(a1 + 32);
    if (v19)
    {
      [v20 _removeMotionEffects];
    }

    else
    {
      [v20 _insertMotionEffects];
    }
  }

  else
  {
    v21 = [v2 layer];
    v31 = *(MEMORY[0x1E69792E8] + 80);
    v32 = *(MEMORY[0x1E69792E8] + 64);
    *&v34.m31 = v32;
    *&v34.m33 = v31;
    v29 = *(MEMORY[0x1E69792E8] + 112);
    v30 = *(MEMORY[0x1E69792E8] + 96);
    *&v34.m41 = v30;
    *&v34.m43 = v29;
    v27 = *(MEMORY[0x1E69792E8] + 16);
    v28 = *MEMORY[0x1E69792E8];
    *&v34.m11 = *MEMORY[0x1E69792E8];
    *&v34.m13 = v27;
    v25 = *(MEMORY[0x1E69792E8] + 48);
    v26 = *(MEMORY[0x1E69792E8] + 32);
    *&v34.m21 = v26;
    *&v34.m23 = v25;
    [v21 setTransform:&v34];

    if (v3)
    {
      v22 = [v3 layer];
      *&v34.m31 = v32;
      *&v34.m33 = v31;
      *&v34.m41 = v30;
      *&v34.m43 = v29;
      *&v34.m11 = v28;
      *&v34.m13 = v27;
      *&v34.m21 = v26;
      *&v34.m23 = v25;
      [v22 setTransform:&v34];
    }

    v23 = [*(a1 + 32) highlightTransformTargetView];
    v24 = [v23 layer];
    [v24 setZPosition:0.0];

    [*(a1 + 32) _removeMotionEffects];
  }
}

@end