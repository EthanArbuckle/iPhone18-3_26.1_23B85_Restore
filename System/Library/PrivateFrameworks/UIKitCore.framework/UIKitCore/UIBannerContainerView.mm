@interface UIBannerContainerView
@end

@implementation UIBannerContainerView

void __52___UIBannerContainerView__presentBanner_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = WeakRetained;
    (*(v5 + 16))(v5, a2);
    WeakRetained = v6;
  }
}

void __72___UIBannerContainerView__dismissBanner_alongsideAnimations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  v8 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [WeakRetained[51] removeObject:*(a1 + 32)];
    }

    v6 = [*(a1 + 32) view];
    [v6 removeFromSuperview];

    v5 = v8;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
    v5 = v8;
  }
}

void __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v15 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56) == 1)
  {
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v7;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v14, 0.8, 0.8);
  }

  v8 = *(a1 + 40);
  v13 = v14;
  [v8 setTransform:&v13];
  v9 = [*(a1 + 48) _bannerAnimationToVisible:*(a1 + 56) hiddenValue:&unk_1EFE2EAC8 visibleValue:&unk_1EFE2EAD8 withKeyPath:@"opacity"];
  v10 = [*(a1 + 40) layer];
  [v10 addAnimation:v9 forKey:@"alpha"];

  v11 = [*(a1 + 48) _bannerAnimationToVisible:*(a1 + 56) hiddenValue:&unk_1EFE2EAE8 visibleValue:&unk_1EFE2EAC8 withKeyPath:@"filters.gaussianBlur.inputRadius"];
  v12 = [*(a1 + 40) layer];
  [v12 addAnimation:v11 forKey:@"blur"];

  [*(a1 + 48) layoutIfNeeded];
}

uint64_t __76___UIBannerContainerView__setBanner_visible_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) layoutIfNeeded];
}

@end