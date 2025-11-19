@interface SBHLibraryAdditionalItemsIndicatorIconImageView
+ (BOOL)hasCustomJitter;
- (SBHLibraryAdditionalItemsIndicatorIconImageView)initWithFrame:(CGRect)a3;
- (void)_addCustomJitter;
- (void)_addCustomJitterToIconViews:(id)a3;
- (void)_removeCustomJitter;
- (void)_removeCustomJitterFromIconViews:(id)a3;
- (void)setJittering:(BOOL)a3;
@end

@implementation SBHLibraryAdditionalItemsIndicatorIconImageView

- (SBHLibraryAdditionalItemsIndicatorIconImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBHLibraryAdditionalItemsIndicatorIconImageView;
  v3 = [(SBFolderIconImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBFolderIconImageView *)v3 setPageGridClipsToBounds:0];
  }

  return v4;
}

- (void)setJittering:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageView *)self isJittering];
  v6.receiver = self;
  v6.super_class = SBHLibraryAdditionalItemsIndicatorIconImageView;
  [(SBIconImageView *)&v6 setJittering:v3];
  if (v5 || !v3)
  {
    if (v5 && !v3)
    {
      [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _removeCustomJitter];
    }
  }

  else
  {
    [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _addCustomJitter];
  }
}

+ (BOOL)hasCustomJitter
{
  if ([a1 allowsLayersForMiniIcons])
  {
    return 1;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SBHLibraryAdditionalItemsIndicatorIconImageView;
  return objc_msgSendSuper2(&v4, sel_hasCustomJitter);
}

- (void)_addCustomJitter
{
  v3 = [(SBFolderIconImageView *)self currentPageIconCellViews];
  [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _addCustomJitterToIconViews:v3];
}

- (void)_addCustomJitterToIconViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) layer];
        v9 = [SBIconView _jitterXTranslationAnimationWithAmount:0.25];
        [v8 addAnimation:v9 forKey:@"SBFolderIconImageViewJitterXTranslationAnimationKey"];

        v10 = [SBIconView _jitterXTranslationAnimationWithAmount:0.25];
        [v8 addAnimation:v10 forKey:@"SBFolderIconImageViewJitterYTranslationAnimationKey"];

        BSDegreesToRadians();
        v11 = [SBIconView _jitterRotationAnimationWithAmount:?];
        [v8 addAnimation:v11 forKey:@"SBFolderIconImageViewJitterRotationAnimationKey"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_removeCustomJitter
{
  v3 = [(SBFolderIconImageView *)self currentPageIconCellViews];
  [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _removeCustomJitterFromIconViews:v3];
}

- (void)_removeCustomJitterFromIconViews:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) layer];
        [v8 removeAnimationForKey:@"SBFolderIconImageViewJitterXTranslationAnimationKey"];
        [v8 removeAnimationForKey:@"SBFolderIconImageViewJitterYTranslationAnimationKey"];
        [v8 removeAnimationForKey:@"SBFolderIconImageViewJitterRotationAnimationKey"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end