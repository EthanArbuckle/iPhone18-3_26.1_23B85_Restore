@interface SearchUISectionHeaderCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUISectionHeaderCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v10.receiver = self;
  v10.super_class = SearchUISectionHeaderCardSectionView;
  [(SearchUICardSectionView *)&v10 updateWithRowModel:modelCopy];

  contentView = [(SearchUICardSectionView *)self contentView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__SearchUISectionHeaderCardSectionView_updateWithRowModel___block_invoke;
  v8[3] = &unk_1E85B2540;
  v8[4] = self;
  v9 = cardSection;
  v7 = cardSection;
  [contentView performBatchUpdates:v8];
}

void __59__SearchUISectionHeaderCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) text];
  v2 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v4];
  v3 = [*(a1 + 32) contentView];
  [v3 setHeaderText:v2];
}

@end