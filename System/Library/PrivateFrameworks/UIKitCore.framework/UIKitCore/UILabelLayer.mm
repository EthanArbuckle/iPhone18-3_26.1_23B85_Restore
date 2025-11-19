@interface UILabelLayer
@end

@implementation UILabelLayer

void __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke_2;
  v3[3] = &__block_descriptor_64_e17_v16__0__CALayer_8l;
  v2 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  [(_UILabelLayer *)v1 _updateLayers:v3];
}

void __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 contentsScale];
  [v4 setContentsScale:?];
  [*(a1 + 32) rasterizationScale];
  [v4 setRasterizationScale:?];
}

id __26___UILabelLayer_setFrame___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UILabelLayer;
  return objc_msgSendSuper2(&v2, sel_setFrame_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

id __27___UILabelLayer_setBounds___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UILabelLayer;
  return objc_msgSendSuper2(&v2, sel_setBounds_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

uint64_t __33___UILabelLayer__updateSublayers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_UILabelContentLayer);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  if (dyld_program_sdk_at_least())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33___UILabelLayer__updateSublayers__block_invoke_2;
    v6[3] = &unk_1E70F3590;
    v6[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v6];
  }

  return [*(a1 + 32) insertSublayer:*(*(a1 + 32) + 48) atIndex:0];
}

uint64_t __33___UILabelLayer__updateSublayers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v2 = *(*(a1 + 32) + 48);

  return [v2 setFrame:?];
}

uint64_t __33___UILabelLayer__updateSublayers__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(_UILabelLightReactiveLayer);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = objc_alloc_init(_UILabelLightInertLayer);
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  if (dyld_program_sdk_at_least())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __33___UILabelLayer__updateSublayers__block_invoke_4;
    v13[3] = &unk_1E70F3590;
    v13[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v13];
  }

  v8 = *(*(a1 + 32) + 56);
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
  [v8 setCompositingFilter:v9];

  v10 = [*(a1 + 32) lightContainerView];
  v11 = [v10 layer];
  [v11 insertSublayer:*(*(a1 + 32) + 56) atIndex:1];

  return [*(a1 + 32) insertSublayer:*(*(a1 + 32) + 64) atIndex:0];
}

uint64_t __33___UILabelLayer__updateSublayers__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 56) setFrame:?];
  [*(a1 + 32) bounds];
  v2 = *(*(a1 + 32) + 64);

  return [v2 setFrame:?];
}

@end