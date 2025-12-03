@interface SearchUIWatchListCardSectionView
- (id)setupContentView;
- (void)didUpdateRowModel:(id)model animate:(BOOL)animate;
- (void)updateTitle:(id)title subtitle:(id)subtitle image:(id)image;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIWatchListCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  v5.receiver = self;
  v5.super_class = SearchUIWatchListCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v5 updateWithRowModel:modelCopy];
  [modelCopy setDelegate:{self, v5.receiver, v5.super_class}];
  [(SearchUIWatchListCardSectionView *)self didUpdateRowModel:modelCopy animate:0];
}

- (void)didUpdateRowModel:(id)model animate:(BOOL)animate
{
  animateCopy = animate;
  modelCopy = model;
  rowModel = [(SearchUICardSectionView *)self rowModel];

  if (rowModel == modelCopy)
  {
    if ([modelCopy hasError])
    {
      [(SearchUICardSectionView *)self requestRemovalFromEnclosingView];
    }

    else if ([modelCopy hasLoaded])
    {
      title = [modelCopy title];
      subtitle = [modelCopy subtitle];
      image = [modelCopy image];
      [(SearchUIWatchListCardSectionView *)self updateTitle:title subtitle:subtitle image:image];

      layer = [(SearchUIWatchListCardSectionView *)self layer];
      [layer setAllowsGroupOpacity:0];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__SearchUIWatchListCardSectionView_didUpdateRowModel_animate___block_invoke;
      v13[3] = &unk_1E85B24C8;
      v13[4] = self;
      [SearchUIUtilities performAnimatableChanges:v13 animated:animateCopy];
    }

    else
    {
      [(SearchUIWatchListCardSectionView *)self setAlpha:0.0];
      v12 = objc_opt_new();
      [SearchUIAppIconImage sizeForVariant:2];
      [v12 setSize:?];
      [(SearchUIWatchListCardSectionView *)self updateTitle:&stru_1F55BC4E8 subtitle:&stru_1F55BC4E8 image:v12];
    }
  }
}

- (void)updateTitle:(id)title subtitle:(id)subtitle image:(id)image
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  contentView = [(SearchUICardSectionView *)self contentView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SearchUIWatchListCardSectionView_updateTitle_subtitle_image___block_invoke;
  v15[3] = &unk_1E85B2568;
  v15[4] = self;
  v16 = titleCopy;
  v17 = subtitleCopy;
  v18 = imageCopy;
  v12 = imageCopy;
  v13 = subtitleCopy;
  v14 = titleCopy;
  [contentView performBatchUpdates:v15];
}

void __63__SearchUIWatchListCardSectionView_updateTitle_subtitle_image___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D91D0] textWithString:*(a1 + 40)];
  v3 = [*(a1 + 32) contentView];
  [v3 setLeadingTitle:v2];

  v4 = [MEMORY[0x1E69D91D0] textWithString:*(a1 + 48)];
  v5 = [*(a1 + 32) contentView];
  [v5 setLeadingSubtitle:v4];

  v6 = *(a1 + 56);
  if (v6)
  {
    v9 = [SearchUIImage imageWithSFImage:v6 variantForAppIcon:2];
    v7 = [SearchUITLKImageConverter imageForSFImage:v9];
    v8 = [*(a1 + 32) contentView];
    [v8 setLeadingImage:v7];
  }
}

@end