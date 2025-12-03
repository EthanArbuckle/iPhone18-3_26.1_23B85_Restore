@interface SBHLibraryAdditionalItemsIndicatorIconImageView
+ (BOOL)hasCustomJitter;
- (SBHLibraryAdditionalItemsIndicatorIconImageView)initWithFrame:(CGRect)frame;
- (void)_addCustomJitter;
- (void)_addCustomJitterToIconViews:(id)views;
- (void)_removeCustomJitter;
- (void)_removeCustomJitterFromIconViews:(id)views;
- (void)setJittering:(BOOL)jittering;
@end

@implementation SBHLibraryAdditionalItemsIndicatorIconImageView

- (SBHLibraryAdditionalItemsIndicatorIconImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBHLibraryAdditionalItemsIndicatorIconImageView;
  v3 = [(SBFolderIconImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBFolderIconImageView *)v3 setPageGridClipsToBounds:0];
  }

  return v4;
}

- (void)setJittering:(BOOL)jittering
{
  jitteringCopy = jittering;
  isJittering = [(SBIconImageView *)self isJittering];
  v6.receiver = self;
  v6.super_class = SBHLibraryAdditionalItemsIndicatorIconImageView;
  [(SBIconImageView *)&v6 setJittering:jitteringCopy];
  if (isJittering || !jitteringCopy)
  {
    if (isJittering && !jitteringCopy)
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
  if ([self allowsLayersForMiniIcons])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SBHLibraryAdditionalItemsIndicatorIconImageView;
  return objc_msgSendSuper2(&v4, sel_hasCustomJitter);
}

- (void)_addCustomJitter
{
  currentPageIconCellViews = [(SBFolderIconImageView *)self currentPageIconCellViews];
  [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _addCustomJitterToIconViews:currentPageIconCellViews];
}

- (void)_addCustomJitterToIconViews:(id)views
{
  v17 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        layer = [*(*(&v12 + 1) + 8 * v7) layer];
        v9 = [SBIconView _jitterXTranslationAnimationWithAmount:0.25];
        [layer addAnimation:v9 forKey:@"SBFolderIconImageViewJitterXTranslationAnimationKey"];

        v10 = [SBIconView _jitterXTranslationAnimationWithAmount:0.25];
        [layer addAnimation:v10 forKey:@"SBFolderIconImageViewJitterYTranslationAnimationKey"];

        BSDegreesToRadians();
        v11 = [SBIconView _jitterRotationAnimationWithAmount:?];
        [layer addAnimation:v11 forKey:@"SBFolderIconImageViewJitterRotationAnimationKey"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [viewsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_removeCustomJitter
{
  currentPageIconCellViews = [(SBFolderIconImageView *)self currentPageIconCellViews];
  [(SBHLibraryAdditionalItemsIndicatorIconImageView *)self _removeCustomJitterFromIconViews:currentPageIconCellViews];
}

- (void)_removeCustomJitterFromIconViews:(id)views
{
  v14 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        layer = [*(*(&v9 + 1) + 8 * v7) layer];
        [layer removeAnimationForKey:@"SBFolderIconImageViewJitterXTranslationAnimationKey"];
        [layer removeAnimationForKey:@"SBFolderIconImageViewJitterYTranslationAnimationKey"];
        [layer removeAnimationForKey:@"SBFolderIconImageViewJitterRotationAnimationKey"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end