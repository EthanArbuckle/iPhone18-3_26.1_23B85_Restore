@interface PREditingContentStyleItemsScrollableStackViewController
- (void)layoutWithItemViews:(id)views;
- (void)scrollToSelectedItemAnimated:(BOOL)animated;
- (void)updateDataSource:(id)source configuration:(id)configuration;
- (void)updateInteritemSpacingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PREditingContentStyleItemsScrollableStackViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditingContentStyleItemsScrollableStackViewController;
  [(PREditingContentStyleItemsScrollableStackViewController *)&v4 viewWillAppear:appear];
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
    stackView = [(PREditingContentStyleItemsScrollableStackViewController *)self stackView];
    [stackView layoutIfNeeded];

    [(PREditingContentStyleItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
    [(PREditingContentStyleItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)layoutWithItemViews:(id)views
{
  v47[9] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  viewsCopy = views;
  v6 = [[v4 alloc] initWithArrangedSubviews:viewsCopy];

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

  view = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  [view addSubview:v13];

  leadingAnchor = [(UIStackView *)v9 leadingAnchor];
  leadingAnchor2 = [(UIScrollView *)v13 leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v44;
  trailingAnchor = [(UIStackView *)v9 trailingAnchor];
  trailingAnchor2 = [(UIScrollView *)v13 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[1] = v40;
  v43 = v9;
  topAnchor = [(UIStackView *)v9 topAnchor];
  topAnchor2 = [(UIScrollView *)v13 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[2] = v37;
  bottomAnchor = [(UIStackView *)v9 bottomAnchor];
  bottomAnchor2 = [(UIScrollView *)v13 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v34;
  heightAnchor = [(UIScrollView *)v13 heightAnchor];
  [(PREditingContentStyleItemsScrollableStackViewController *)self estimatedHeight];
  v32 = [heightAnchor constraintEqualToConstant:?];
  v47[4] = v32;
  leadingAnchor3 = [(UIScrollView *)v13 leadingAnchor];
  view2 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  leadingAnchor4 = [view2 leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v47[5] = v28;
  trailingAnchor3 = [(UIScrollView *)v13 trailingAnchor];
  view3 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  trailingAnchor4 = [view3 trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v47[6] = v15;
  bottomAnchor3 = [(UIScrollView *)v13 bottomAnchor];
  view4 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  bottomAnchor4 = [view4 bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v47[7] = v19;
  topAnchor3 = [(UIScrollView *)v13 topAnchor];
  view5 = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  topAnchor4 = [view5 topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v47[8] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:9];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
}

- (void)updateInteritemSpacingIfNeeded
{
  view = [(PREditingContentStyleItemsScrollableStackViewController *)self view];
  [view bounds];
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

- (void)scrollToSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = MEMORY[0x1E695EFF8];
  selectedContentStyleItemView = [(PREditingContentStyleItemsViewController *)self selectedContentStyleItemView];
  scrollView = [(PREditingContentStyleItemsScrollableStackViewController *)self scrollView];
  [scrollView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  selectedContentStyleCoordinator = [(PREditingContentStyleItemsViewController *)self selectedContentStyleCoordinator];
  uiKitColorPickerStyleCoordinator = [(PREditingContentStyleItemsViewController *)self uiKitColorPickerStyleCoordinator];
  v17 = uiKitColorPickerStyleCoordinator;
  if (uiKitColorPickerStyleCoordinator && selectedContentStyleCoordinator == uiKitColorPickerStyleCoordinator)
  {
    colorWellView = [(PREditingContentStyleItemsViewController *)self colorWellView];

    v19 = colorWellView;
  }

  else
  {
    v19 = selectedContentStyleItemView;
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

  [scrollView setContentOffset:animatedCopy animated:{v23, v20}];
}

- (void)updateDataSource:(id)source configuration:(id)configuration
{
  scrollView = self->_scrollView;
  configurationCopy = configuration;
  sourceCopy = source;
  [(UIScrollView *)scrollView removeFromSuperview];
  v9.receiver = self;
  v9.super_class = PREditingContentStyleItemsScrollableStackViewController;
  [(PREditingContentStyleItemsViewController *)&v9 updateDataSource:sourceCopy configuration:configurationCopy];

  [(PREditingContentStyleItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
}

@end