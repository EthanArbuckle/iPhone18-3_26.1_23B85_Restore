@interface SearchUIWatchListCardSectionView
- (id)setupContentView;
- (void)didUpdateRowModel:(id)a3 animate:(BOOL)a4;
- (void)updateTitle:(id)a3 subtitle:(id)a4 image:(id)a5;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIWatchListCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUIWatchListCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v5 updateWithRowModel:v4];
  [v4 setDelegate:{self, v5.receiver, v5.super_class}];
  [(SearchUIWatchListCardSectionView *)self didUpdateRowModel:v4 animate:0];
}

- (void)didUpdateRowModel:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SearchUICardSectionView *)self rowModel];

  if (v7 == v6)
  {
    if ([v6 hasError])
    {
      [(SearchUICardSectionView *)self requestRemovalFromEnclosingView];
    }

    else if ([v6 hasLoaded])
    {
      v8 = [v6 title];
      v9 = [v6 subtitle];
      v10 = [v6 image];
      [(SearchUIWatchListCardSectionView *)self updateTitle:v8 subtitle:v9 image:v10];

      v11 = [(SearchUIWatchListCardSectionView *)self layer];
      [v11 setAllowsGroupOpacity:0];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__SearchUIWatchListCardSectionView_didUpdateRowModel_animate___block_invoke;
      v13[3] = &unk_1E85B24C8;
      v13[4] = self;
      [SearchUIUtilities performAnimatableChanges:v13 animated:v4];
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

- (void)updateTitle:(id)a3 subtitle:(id)a4 image:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SearchUICardSectionView *)self contentView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SearchUIWatchListCardSectionView_updateTitle_subtitle_image___block_invoke;
  v15[3] = &unk_1E85B2568;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBatchUpdates:v15];
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