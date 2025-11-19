@interface SearchUITitleCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUITitleCardSectionView

- (id)setupContentView
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E69D9138] boldBodyFont];
  [v3 setFont:v4];

  [v3 setNumberOfLines:2];
  [(SearchUITitleCardSectionView *)self setLabel:v3];
  v5 = objc_alloc(MEMORY[0x1E698B718]);
  v20[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v7 = [v5 initWithArrangedSubviews:v6];
  [(SearchUITitleCardSectionView *)self setContainerView:v7];

  v8 = [(SearchUITitleCardSectionView *)self containerView];
  [v8 setLayoutMarginsRelativeArrangement:1];

  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SearchUITitleCardSectionView *)self containerView];
  [v17 setLayoutMargins:{v10, v12, v14, v16}];

  v18 = [(SearchUITitleCardSectionView *)self containerView];

  return v18;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  v14.receiver = self;
  v14.super_class = SearchUITitleCardSectionView;
  [(SearchUICardSectionView *)&v14 updateWithRowModel:v4];

  v6 = [v5 isCentered];
  v7 = [(SearchUITitleCardSectionView *)self label];
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  [v7 setTextAlignment:v9];

  v11 = [(SearchUITitleCardSectionView *)self containerView];
  [v11 setHorizontalAlignment:v10];

  v12 = [v5 title];
  v13 = [(SearchUITitleCardSectionView *)self label];
  [v13 setText:v12];
}

@end