@interface SearchUIAuxiliaryTextViewController
+ (BOOL)supportsRowModel:(id)model;
- (id)setupView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIAuxiliaryTextViewController

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  trailingTopText = [modelCopy trailingTopText];
  v5 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:trailingTopText];
  if ([v5 hasContent])
  {
    hasContent = 1;
  }

  else
  {
    trailingMiddleText = [modelCopy trailingMiddleText];
    v8 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:trailingMiddleText];
    if ([v8 hasContent])
    {
      hasContent = 1;
    }

    else
    {
      trailingBottomText = [modelCopy trailingBottomText];
      v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:trailingBottomText];
      hasContent = [v10 hasContent];
    }
  }

  return hasContent;
}

- (id)setupView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = SearchUIAuxiliaryTextViewController;
  [(SearchUIAccessoryViewController *)&v9 updateWithRowModel:modelCopy];
  view = [(SearchUIAccessoryViewController *)self view];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SearchUIAuxiliaryTextViewController_updateWithRowModel___block_invoke;
  v7[3] = &unk_1E85B2540;
  v7[4] = self;
  v8 = modelCopy;
  v6 = modelCopy;
  [view performBatchUpdates:v7];
}

void __58__SearchUIAuxiliaryTextViewController_updateWithRowModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) useCompactVersionOfUI];
  v3 = [*(a1 + 32) view];
  [v3 setUseCompactMode:v2];

  v4 = [*(a1 + 40) trailingTopText];
  v5 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v4];
  v6 = [*(a1 + 32) view];
  [v6 setTopText:v5];

  v7 = [*(a1 + 40) trailingMiddleText];
  v8 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v7];
  v9 = [*(a1 + 32) view];
  [v9 setMiddleText:v8];

  v12 = [*(a1 + 40) trailingBottomText];
  v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v12];
  v11 = [*(a1 + 32) view];
  [v11 setBottomText:v10];
}

@end