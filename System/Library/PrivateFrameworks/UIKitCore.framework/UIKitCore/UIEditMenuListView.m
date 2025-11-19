@interface UIEditMenuListView
@end

@implementation UIEditMenuListView

double __87___UIEditMenuListView__intrinsicHorizontalContentSizeForTraitCollection_containerSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v5 = v4 == a3;
    v6 = 1;
    if (!v5)
    {
      v6 = 2;
    }

    if (a3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

  [a2 width];
  v9 = *(*(a1 + 32) + 8);
  result = fmax(*(v9 + 24), v8 + v7 * *(a1 + 48));
  *(v9 + 24) = result;
  return result;
}

id __40___UIEditMenuListView__createDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:0x1EFB8A5D0 forIndexPath:v8];

  v12 = [WeakRetained axis];
  v13 = 0.0;
  if (!v12)
  {
    v13 = WeakRetained[52];
  }

  [v11 setMaximumContentWidth:v13];
  [v11 setItem:v7];

  return v11;
}

id __40___UIEditMenuListView__createDataSource__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v8 isEqualToString:0x1EFB8A5F0])
  {
    v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:0x1EFB8A5F0 forIndexPath:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __43___UIEditMenuListView__reloadMenuAnimated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:a1];
  [v3 setFromValue:a2];
  [v3 setDuration:0.25];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v3 setTimingFunction:v4];

  [v3 setRemovedOnCompletion:1];

  return v3;
}

void __41___UIEditMenuListView__handlePanGesture___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeRotation(&v6, -*(a1 + 40));
  v2 = [*(a1 + 32) leftButton];
  v5 = v6;
  [v2 setTransform:&v5];

  CGAffineTransformMakeRotation(&v4, *(a1 + 40));
  v3 = [*(a1 + 32) rightButton];
  v5 = v4;
  [v3 setTransform:&v5];
}

@end