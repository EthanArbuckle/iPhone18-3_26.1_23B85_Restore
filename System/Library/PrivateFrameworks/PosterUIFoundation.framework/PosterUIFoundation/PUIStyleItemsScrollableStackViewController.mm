@interface PUIStyleItemsScrollableStackViewController
- (void)layoutWithItemViews:(id)views;
- (void)scrollToSelectedItemAnimated:(BOOL)animated;
- (void)updateInteritemSpacingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUIStyleItemsScrollableStackViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIStyleItemsScrollableStackViewController;
  [(PUIStyleItemsScrollableStackViewController *)&v4 viewWillAppear:appear];
  [(PUIStyleItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:1];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUIStyleItemsScrollableStackViewController;
  [(PUIStyleItemsViewController *)&v4 viewDidLayoutSubviews];
  [(PUIStyleItemsScrollableStackViewController *)self updateInteritemSpacingIfNeeded];
  if ([(PUIStyleItemsScrollableStackViewController *)self needsScrollToSelectedItem])
  {
    stackView = [(PUIStyleItemsScrollableStackViewController *)self stackView];
    [stackView layoutIfNeeded];

    [(PUIStyleItemsScrollableStackViewController *)self scrollToSelectedItemAnimated:0];
    [(PUIStyleItemsScrollableStackViewController *)self setNeedsScrollToSelectedItem:0];
  }
}

- (void)layoutWithItemViews:(id)views
{
  v46[9] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCF90];
  viewsCopy = views;
  v6 = [[v4 alloc] initWithArrangedSubviews:viewsCopy];

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

  view = [(PUIStyleItemsScrollableStackViewController *)self view];
  [view addSubview:v12];

  leadingAnchor = [(UIStackView *)v8 leadingAnchor];
  leadingAnchor2 = [(UIScrollView *)v12 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v43;
  trailingAnchor = [(UIStackView *)v8 trailingAnchor];
  trailingAnchor2 = [(UIScrollView *)v12 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[1] = v39;
  v42 = v8;
  topAnchor = [(UIStackView *)v8 topAnchor];
  topAnchor2 = [(UIScrollView *)v12 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[2] = v36;
  bottomAnchor = [(UIStackView *)v8 bottomAnchor];
  bottomAnchor2 = [(UIScrollView *)v12 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[3] = v33;
  heightAnchor = [(UIScrollView *)v12 heightAnchor];
  [(PUIStyleItemsScrollableStackViewController *)self estimatedHeight];
  v31 = [heightAnchor constraintEqualToConstant:?];
  v46[4] = v31;
  leadingAnchor3 = [(UIScrollView *)v12 leadingAnchor];
  view2 = [(PUIStyleItemsScrollableStackViewController *)self view];
  leadingAnchor4 = [view2 leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[5] = v27;
  trailingAnchor3 = [(UIScrollView *)v12 trailingAnchor];
  view3 = [(PUIStyleItemsScrollableStackViewController *)self view];
  trailingAnchor4 = [view3 trailingAnchor];
  v14 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[6] = v14;
  bottomAnchor3 = [(UIScrollView *)v12 bottomAnchor];
  view4 = [(PUIStyleItemsScrollableStackViewController *)self view];
  bottomAnchor4 = [view4 bottomAnchor];
  v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v46[7] = v18;
  topAnchor3 = [(UIScrollView *)v12 topAnchor];
  view5 = [(PUIStyleItemsScrollableStackViewController *)self view];
  topAnchor4 = [view5 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v46[8] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:9];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
}

- (void)updateInteritemSpacingIfNeeded
{
  view = [(PUIStyleItemsScrollableStackViewController *)self view];
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
  selectedStyleItemView = [(PUIStyleItemsViewController *)self selectedStyleItemView];
  scrollView = [(PUIStyleItemsScrollableStackViewController *)self scrollView];
  [scrollView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  selectedStyleCoordinator = [(PUIStyleItemsViewController *)self selectedStyleCoordinator];
  uiKitColorPickerStyleCoordinator = [(PUIStyleItemsViewController *)self uiKitColorPickerStyleCoordinator];
  v17 = uiKitColorPickerStyleCoordinator;
  if (uiKitColorPickerStyleCoordinator && selectedStyleCoordinator == uiKitColorPickerStyleCoordinator)
  {
    colorWellView = [(PUIStyleItemsViewController *)self colorWellView];

    v19 = colorWellView;
  }

  else
  {
    v19 = selectedStyleItemView;
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
  }

  else
  {
    v23 = -31.0;
  }

  [scrollView setContentOffset:animatedCopy animated:{v23, v20}];
}

@end