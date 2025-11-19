@interface UICollectionViewSetupExpandCollapseAnimations
@end

@implementation UICollectionViewSetupExpandCollapseAnimations

void ___UICollectionViewSetupExpandCollapseAnimations_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 section];
  if (v8 == [*(a1 + 32) section])
  {
    v9 = [v5 view];
    v10 = [v9 _layoutAttributes];
    v11 = [v10 copy];

    if (!v11)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)_block_invoke"}];
      [v22 handleFailureInFunction:v23 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:125 description:{@"Unable to get initial attributes for expanding item at index path %@", v7}];
    }

    v12 = [v5 finalLayoutAttributes];
    if (!v12)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)_block_invoke"}];
      [v24 handleFailureInFunction:v25 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:128 description:{@"Unable to get final attributes for expanding item at index path %@", v7}];
    }

    [v12 frame];
    v29.origin.x = v13;
    v29.origin.y = v14;
    v29.size.width = v15;
    v29.size.height = v16;
    if (CGRectIntersectsRect(*(a1 + 40), v29))
    {
      [v12 center];
      v18 = v17 - *(a1 + 72);
      [v12 center];
      [v11 setCenter:{v18, v19 - *(a1 + 80)}];
      [v11 setAlpha:1.0];
      if (v11)
      {
        v20 = *(a1 + 104);
        *(v11 + 240) = *(a1 + 88);
        *(v11 + 256) = v20;
        *(v11 + 288) &= ~0x400u;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_2;
      v26[3] = &unk_1E70F35B8;
      v27 = v5;
      v28 = v11;
      [UIView performWithoutAnimation:v26];
      [v12 setAlpha:1.0];
      if (v12)
      {
        v21 = *(a1 + 136);
        *(v12 + 240) = *(a1 + 120);
        *(v12 + 256) = v21;
        *(v12 + 288) |= 0x400u;
      }
    }
  }
}

void ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 _setLayoutAttributes:v1];
}

void ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 section];
  if (v8 == [*(a1 + 32) section])
  {
    v9 = v5;
    if (!v9)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)_block_invoke_3"}];
      [v24 handleFailureInFunction:v25 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:240 description:{@"Could not find an animation for collapsing item at index path %@", v7}];
    }

    v10 = [v9 view];
    v11 = [v10 _layoutAttributes];
    v12 = [v11 copy];

    if (!v12)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)_block_invoke_3"}];
      [v26 handleFailureInFunction:v27 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:243 description:{@"Unable to get current layout attributes from collapsing item at index path %@", v7}];
    }

    v13 = [v9 finalLayoutAttributes];
    if (!v13)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)_block_invoke_3"}];
      [v28 handleFailureInFunction:v29 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:245 description:{@"Unable to get current layout attributes from collapsing item at index path %@", v7}];
    }

    [v12 frame];
    v33.origin.x = v14;
    v33.origin.y = v15;
    v33.size.width = v16;
    v33.size.height = v17;
    if (CGRectIntersectsRect(*(a1 + 40), v33))
    {
      if (v12)
      {
        v18 = *(a1 + 88);
        *(v12 + 240) = *(a1 + 72);
        *(v12 + 256) = v18;
        *(v12 + 288) &= ~0x400u;
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_4;
      v30[3] = &unk_1E70F35B8;
      v31 = v9;
      v19 = v12;
      v32 = v19;
      [UIView performWithoutAnimation:v30];
      if (v13)
      {
        v20 = *(a1 + 120);
        *(v13 + 240) = *(a1 + 104);
        *(v13 + 256) = v20;
        *(v13 + 288) |= 0x400u;
      }

      [v19 center];
      v22 = v21 - *(a1 + 136);
      [v19 center];
      [v13 setCenter:{v22, v23 - *(a1 + 144)}];
      [v19 alpha];
      [v13 setAlpha:?];
    }
  }
}

void ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 _setLayoutAttributes:v1];
}

void ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a3;
  if (a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = [v34 view];
    v8 = [v7 _layoutAttributes];
    v9 = [v8 copy];

    v10 = [v34 finalLayoutAttributes];
    if (v9)
    {
      [v9 size];
      v12 = v11;
      v14 = v13;
      [v10 size];
      if (v12 == v16 && v14 == v15)
      {
        [v9 center];
        v18 = v17;
        v20 = v19;
        [v10 center];
        if (v18 == v22 && v20 == v21)
        {
          [v9 center];
          v24 = v23;
          v26 = v25;
          v28 = *(a1 + 48);
          v27 = *(a1 + 56);
          v29 = *(a1 + 64);
          [v9 center];
          v32 = *(*(a1 + 40) + 8);
          if (v29 == 2)
          {
            if (v31 <= *(v32 + 40))
            {
              v27 = -v27;
            }
          }

          else if (v30 <= *(v32 + 32))
          {
            v28 = -v28;
          }

          [v9 setCenter:{v24 + v28, v26 + v27}];
          v33 = [v34 view];
          [v33 _setLayoutAttributes:v9];
        }
      }
    }
  }
}

@end