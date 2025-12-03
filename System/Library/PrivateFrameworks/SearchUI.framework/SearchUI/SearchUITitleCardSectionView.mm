@interface SearchUITitleCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUITitleCardSectionView

- (id)setupContentView
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  boldBodyFont = [MEMORY[0x1E69D9138] boldBodyFont];
  [v3 setFont:boldBodyFont];

  [v3 setNumberOfLines:2];
  [(SearchUITitleCardSectionView *)self setLabel:v3];
  v5 = objc_alloc(MEMORY[0x1E698B718]);
  v20[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v7 = [v5 initWithArrangedSubviews:v6];
  [(SearchUITitleCardSectionView *)self setContainerView:v7];

  containerView = [(SearchUITitleCardSectionView *)self containerView];
  [containerView setLayoutMarginsRelativeArrangement:1];

  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  containerView2 = [(SearchUITitleCardSectionView *)self containerView];
  [containerView2 setLayoutMargins:{v10, v12, v14, v16}];

  containerView3 = [(SearchUITitleCardSectionView *)self containerView];

  return containerView3;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v14.receiver = self;
  v14.super_class = SearchUITitleCardSectionView;
  [(SearchUICardSectionView *)&v14 updateWithRowModel:modelCopy];

  isCentered = [cardSection isCentered];
  label = [(SearchUITitleCardSectionView *)self label];
  v8 = label;
  if (isCentered)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  if (isCentered)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  [label setTextAlignment:v9];

  containerView = [(SearchUITitleCardSectionView *)self containerView];
  [containerView setHorizontalAlignment:v10];

  title = [cardSection title];
  label2 = [(SearchUITitleCardSectionView *)self label];
  [label2 setText:title];
}

@end