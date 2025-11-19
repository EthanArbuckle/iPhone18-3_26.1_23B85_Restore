@interface UIDragSetDownAnimation
@end

@implementation UIDragSetDownAnimation

void __53___UIDragSetDownAnimation_updateVisibleDroppedItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [*(*(a1 + 40) + 32) _window];
  if (*(*(a1 + 40) + 56) != v7)
  {
    [v6 center];
    [v7 convertPoint:*(*(a1 + 40) + 56) fromWindow:?];
    [v6 setCenter:?];
    [v7 convertPoint:*(*(a1 + 40) + 56) fromWindow:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v9 = v8;
    v11 = v10;
    v23 = 0u;
    v24 = 0u;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (v6)
    {
      [v6 velocity3D];
      v13 = *(&v23 + 1);
      v14 = *&v23;
    }

    [v7 convertPoint:*(*(a1 + 40) + 56) fromWindow:{v14, v13}];
    v22 = 0uLL;
    *&v21 = v15 - v9;
    *(&v21 + 1) = v16 - v11;
    [v6 setVelocity3D:&v21];
    v21 = 0u;
    v22 = 0u;
    v17 = 0.0;
    if (v6)
    {
      [v6 targetVelocity3D];
      v12 = *(&v21 + 1);
      v17 = *&v21;
    }

    [v7 convertPoint:*(*(a1 + 40) + 56) fromWindow:{v17, v12}];
    v20[2] = 0.0;
    v20[3] = 0.0;
    v20[0] = v18 - v9;
    v20[1] = v19 - v11;
    [v6 setTargetVelocity3D:v20];
  }

  [v5 updateDroppedItem:v6];
}

void __32___UIDragSetDownAnimation_begin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _allItemAnimationsCompleted];
}

uint64_t __68___UIDragSetDownAnimation_defaultSingleItemAnimationForPlatterView___block_invoke(uint64_t a1)
{
  memset(&v16, 0, sizeof(v16));
  [*(a1 + 32) anchorPoint];
  if (v3 == 0.5 && v2 == 0.5)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      [v12 transform3D];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    CATransform3DMakeScale(&v14, 1.5, 1.5, 1.5);
    CATransform3DConcat(&v16, &a, &v14);
  }

  else
  {
    [*(a1 + 32) anchorPoint];
    v6 = v5 + -0.5;
    [*(a1 + 32) frame];
    v7 = v6 * CGRectGetWidth(v17);
    [*(a1 + 32) anchorPoint];
    v9 = v8 + -0.5;
    [*(a1 + 32) frame];
    v10 = v9 * CGRectGetHeight(v18);
    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 transform3D];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    CATransform3DTranslate(&v16, &a, -v7, -v10, 0.0);
    v14 = v16;
    CATransform3DScale(&a, &v14, 1.5, 1.5, 1.5);
    v16 = a;
    v14 = a;
    CATransform3DTranslate(&a, &v14, v7, v10, 0.0);
    v16 = a;
  }

  [*(a1 + 32) setAlpha:0.0];
  a = v16;
  return [*(a1 + 32) setTransform3D:&a];
}

uint64_t __67___UIDragSetDownAnimation_defaultMultiItemAnimationForPlatterView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = arc4random();
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 transform3D];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  CATransform3DMakeScale(&v12, v2 / 4294967300.0 + v2 / 4294967300.0 + (1.0 - v2 / 4294967300.0) * 1.5, v2 / 4294967300.0 + v2 / 4294967300.0 + (1.0 - v2 / 4294967300.0) * 1.5, v2 / 4294967300.0 + v2 / 4294967300.0 + (1.0 - v2 / 4294967300.0) * 1.5);
  CATransform3DConcat(&v14, &a, &v12);
  v4 = *(a1 + 32);
  a = v14;
  [v4 setTransform3D:&a];
  v5 = arc4random();
  v6 = v5 / 4294967300.0 * 30.0 - (1.0 - v5 / 4294967300.0) * 30.0;
  v7 = arc4random();
  v8 = v7 / 4294967300.0 * 30.0 - (1.0 - v7 / 4294967300.0) * 30.0;
  [*(a1 + 32) center];
  return [*(a1 + 32) setCenter:{v9 + v6, v10 + v8}];
}

uint64_t __62___UIDragSetDownAnimation_defaultDropAnimationForPlatterView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  CATransform3DMakeScale(&v5, 0.33, 0.33, 0.33);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform3D:&v4];
}

@end