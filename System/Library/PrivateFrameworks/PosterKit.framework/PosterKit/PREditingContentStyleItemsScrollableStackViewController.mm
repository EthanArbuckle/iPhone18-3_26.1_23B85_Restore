@interface PREditingContentStyleItemsScrollableStackViewController
- (void)layoutWithItemViews:(id)a3;
- (void)scrollToSelectedItemAnimated:(BOOL)a3;
- (void)updateDataSource:(id)a3 configuration:(id)a4;
- (void)updateInteritemSpacingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PREditingContentStyleItemsScrollableStackViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditingContentStyleItemsScrollableStackViewController;
  [(PREditingContentStyleItemsScrollableStackViewController *)&v4 viewWillAppear:a3];
  [(PREditingContentStyleItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingContentStyleItemsScrollableStackViewController;
  [(PREditingContentStyleItemsViewController *)&v4 viewDidLayoutSubviews];
  [(PREditingContentStyleItemsScrollableStackViewController *)self updateInteritemSpacingIfNeeded];
  if ([(PREditingContentStyleItemsScrollableStackViewController *)self needsScrollToSelectedItem])
  {
    v3 = [(PREditingContentStyleItemsScrollableStackViewController *)self stackView];
    [v3 layoutIfNeeded];

    [(PREditingContentStyleItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingContentStyleItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)layoutWithItemViews:(id)a3
{
  v47[9] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  v5 = a3;
  v6 = [[v4 alloc] initWithArrangedSubviews:v5];

  [(UIStackView *)v6 setAxis:0];
  [(UIStackView *)v6 setAlignment:1];
  [(UIStackView *)v6 setSpacing:14.0];
  [(UIStackView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  [(UIStackView *)v6 _setBackground:v7];

  stackView = self->_stackView;
  self->_stackView = v6;
  v9 = v6;

  v10 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UIScrollView *)v11 setContentInset:0.0, 31.0, 0.0, 31.0];
  [(UIScrollView *)v11 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v11 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)v11 setClipsToBounds:0];
  [(UIScrollView *)v11 addSubview:v9];
  scrollView = self->_scrollView;
  self->_scrollView = v11;
  v13 = v11;

  v14 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  [v14 addSubview:v13];

  v46 = [(UIStackView *)v9 leadingAnchor];
  v45 = [(UIScrollView *)v13 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v47[0] = v44;
  v42 = [(UIStackView *)v9 trailingAnchor];
  v41 = [(UIScrollView *)v13 trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v47[1] = v40;
  v43 = v9;
  v39 = [(UIStackView *)v9 topAnchor];
  v38 = [(UIScrollView *)v13 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v47[2] = v37;
  v36 = [(UIStackView *)v9 bottomAnchor];
  v35 = [(UIScrollView *)v13 bottomAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v47[3] = v34;
  v33 = [(UIScrollView *)v13 heightAnchor];
  [(PREditingContentStyleItemsScrollableStackViewController *)self estimatedHeight];
  v32 = [v33 constraintEqualToConstant:?];
  v47[4] = v32;
  v30 = [(UIScrollView *)v13 leadingAnchor];
  v31 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  v29 = [v31 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v47[5] = v28;
  v25 = [(UIScrollView *)v13 trailingAnchor];
  v26 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  v24 = [v26 trailingAnchor];
  v15 = [v25 constraintEqualToAnchor:v24];
  v47[6] = v15;
  v16 = [(UIScrollView *)v13 bottomAnchor];
  v17 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v47[7] = v19;
  v20 = [(UIScrollView *)v13 topAnchor];
  v21 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v47[8] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:9];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
}

- (void)updateInteritemSpacingIfNeeded
{
  v3 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = (v5 + -326.0) / 5.0;
  [(UIStackView *)self->_stackView spacing];
  if (v6 != v7)
  {
    [(UIStackView *)self->_stackView setSpacing:v6];
    stackView = self->_stackView;

    [(UIStackView *)stackView setNeedsLayout];
  }
}

- (void)scrollToSelectedItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E695EFF8];
  v24 = [(PREditingContentStyleItemsViewController *)self selectedContentStyleItemView];
  v6 = [(PREditingContentStyleItemsScrollableStackViewController *)self scrollView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PREditingContentStyleItemsViewController *)self selectedContentStyleCoordinator];
  v16 = [(PREditingContentStyleItemsViewController *)self uiKitColorPickerStyleCoordinator];
  v17 = v16;
  if (v16 && v15 == v16)
  {
    v18 = [(PREditingContentStyleItemsViewController *)self colorWellView];

    v19 = v18;
  }

  else
  {
    v19 = v24;
  }

  v20 = *(v5 + 8);
  v25 = v19;
  if (v19)
  {
    v27.origin.x = v8;
    v27.origin.y = v10;
    v27.size.width = v12;
    v27.size.height = v14;
    Width = CGRectGetWidth(v27);
    [v25 bounds];
    v22 = Width - CGRectGetWidth(v28);
    [v25 frame];
    v23 = CGRectGetMinX(v29) + v22 * -0.5;
    if (v23 < -31.0)
    {
      v23 = -31.0;
    }
  }

  else
  {
    v23 = -31.0;
  }

  [v6 setContentOffset:v3 animated:{v23, v20}];
}

- (void)updateDataSource:(id)a3 configuration:(id)a4
{
  scrollView = self->_scrollView;
  v7 = a4;
  v8 = a3;
  [(UIScrollView *)scrollView removeFromSuperview];
  v9.receiver = self;
  v9.super_class = PREditingContentStyleItemsScrollableStackViewController;
  [(PREditingContentStyleItemsViewController *)&v9 updateDataSource:v8 configuration:v7];

  [(PREditingContentStyleItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
}

@end