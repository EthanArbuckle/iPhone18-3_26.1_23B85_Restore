@interface SearchUISelectableGridCardSectionView
- (id)convertSFTitleSubtitleData:(id)data;
- (id)setupContentView;
- (void)selectableGridView:(id)view didChangeSelectedIndex:(int64_t)index;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUISelectableGridCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];

  return v3;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v14.receiver = self;
  v14.super_class = SearchUISelectableGridCardSectionView;
  [(SearchUICardSectionView *)&v14 updateWithRowModel:modelCopy];

  entries = [cardSection entries];
  v7 = [(SearchUISelectableGridCardSectionView *)self convertSFTitleSubtitleData:entries];

  contentView = [(SearchUICardSectionView *)self contentView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__SearchUISelectableGridCardSectionView_updateWithRowModel___block_invoke;
  v11[3] = &unk_1E85B26A8;
  v11[4] = self;
  v12 = v7;
  v13 = cardSection;
  v9 = cardSection;
  v10 = v7;
  [contentView performBatchUpdates:v11];
}

void __60__SearchUISelectableGridCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) contentView];
  [v3 setTuples:v2];

  v6 = [*(a1 + 48) initialSelectedIndex];
  v4 = [v6 integerValue];
  v5 = [*(a1 + 32) contentView];
  [v5 setSelectedIndex:v4];
}

- (id)convertSFTitleSubtitleData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MEMORY[0x1E69D91E0];
        title = [v10 title];
        subtitle = [v10 subtitle];
        v14 = [v11 tupleWithTitle:title subtitle:subtitle];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)selectableGridView:(id)view didChangeSelectedIndex:(int64_t)index
{
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
    [feedbackDelegate2 cardSectionViewDidSelectPreferredPunchoutIndex:index];
  }
}

@end