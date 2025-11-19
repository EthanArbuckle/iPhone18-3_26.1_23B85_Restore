@interface PREditingColorItemsScrollableStackViewController
- (void)layoutWithItemViews:(id)a3;
- (void)scrollToSelectedItemAnimated:(BOOL)a3;
- (void)updateInteritemSpacingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PREditingColorItemsScrollableStackViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditingColorItemsScrollableStackViewController;
  [(PREditingColorItemsScrollableStackViewController *)&v4 viewWillAppear:a3];
  [(PREditingColorItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditingColorItemsScrollableStackViewController;
  [(PREditingColorItemsViewController *)&v4 viewDidLayoutSubviews];
  [(PREditingColorItemsScrollableStackViewController *)self updateInteritemSpacingIfNeeded];
  if ([(PREditingColorItemsScrollableStackViewController *)self needsScrollToSelectedItem])
  {
    v3 = [(PREditingColorItemsScrollableStackViewController *)self stackView];
    [v3 layoutIfNeeded];

    [(PREditingColorItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingColorItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)layoutWithItemViews:(id)a3
{
  v46[9] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  v5 = a3;
  v6 = [[v4 alloc] initWithArrangedSubviews:v5];

  [(UIStackView *)v6 setAxis:0];
  [(UIStackView *)v6 setAlignment:1];
  [(UIStackView *)v6 setSpacing:14.0];
  [(UIStackView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v6;
  v8 = v6;

  v9 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UIScrollView *)v10 setContentInset:0.0, 31.0, 0.0, 31.0];
  [(UIScrollView *)v10 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v10 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)v10 setClipsToBounds:0];
  [(UIScrollView *)v10 addSubview:v8];
  scrollView = self->_scrollView;
  self->_scrollView = v10;
  v12 = v10;

  v13 = [(PREditingColorItemsScrollableStackViewController *)self view];
  [v13 addSubview:v12];

  v45 = [(UIStackView *)v8 leadingAnchor];
  v44 = [(UIScrollView *)v12 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v46[0] = v43;
  v41 = [(UIStackView *)v8 trailingAnchor];
  v40 = [(UIScrollView *)v12 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v46[1] = v39;
  v42 = v8;
  v38 = [(UIStackView *)v8 topAnchor];
  v37 = [(UIScrollView *)v12 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v46[2] = v36;
  v35 = [(UIStackView *)v8 bottomAnchor];
  v34 = [(UIScrollView *)v12 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v46[3] = v33;
  v32 = [(UIScrollView *)v12 heightAnchor];
  [(PREditingColorItemsScrollableStackViewController *)self estimatedHeight];
  v31 = [v32 constraintEqualToConstant:?];
  v46[4] = v31;
  v29 = [(UIScrollView *)v12 leadingAnchor];
  v30 = [(PREditingColorItemsScrollableStackViewController *)self view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v46[5] = v27;
  v24 = [(UIScrollView *)v12 trailingAnchor];
  v25 = [(PREditingColorItemsScrollableStackViewController *)self view];
  v23 = [v25 trailingAnchor];
  v14 = [v24 constraintEqualToAnchor:v23];
  v46[6] = v14;
  v15 = [(UIScrollView *)v12 bottomAnchor];
  v16 = [(PREditingColorItemsScrollableStackViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v46[7] = v18;
  v19 = [(UIScrollView *)v12 topAnchor];
  v20 = [(PREditingColorItemsScrollableStackViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v46[8] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:9];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
}

- (void)updateInteritemSpacingIfNeeded
{
  v3 = [(PREditingColorItemsScrollableStackViewController *)self view];
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
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v22 = [(PREditingColorItemsViewController *)self selectedColorItem];
  v7 = [(PREditingColorItemsViewController *)self selectedColorItemView];
  v8 = [(PREditingColorItemsScrollableStackViewController *)self scrollView];
  [v8 bounds];
  v10 = v9;
  if ([v22 isFromUIKitColorPicker])
  {
    v11 = [(PREditingColorItemsViewController *)self configuration];
    v12 = [v11 colorWellDisplayMode];

    if (v12 == 1)
    {
      v13 = [(PREditingColorItemsScrollableStackViewController *)self stackView];
      [v13 bounds];
      v15 = v14 - (v10 + -31.0);
LABEL_6:

      goto LABEL_8;
    }
  }

  if (v7)
  {
    [v7 frame];
    [v7 bounds];
    [v8 contentSize];
    [v7 frame];
    v17 = v16;
    v13 = [(PREditingColorItemsScrollableStackViewController *)self scrollView];
    [v13 bounds];
    v19 = v18;
    [v7 bounds];
    v15 = v17 + (v19 - v20) * -0.5;
    goto LABEL_6;
  }

  v15 = *v5;
LABEL_8:
  v21 = [(PREditingColorItemsScrollableStackViewController *)self scrollView];
  [v21 setContentOffset:v3 animated:{v15, v6}];
}

@end