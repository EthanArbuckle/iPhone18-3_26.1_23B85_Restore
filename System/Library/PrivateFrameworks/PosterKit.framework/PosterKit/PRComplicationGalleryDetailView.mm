@interface PRComplicationGalleryDetailView
- (PRComplicationGalleryDetailView)initWithFrame:(CGRect)frame;
- (PRComplicationGalleryDetailViewDelegate)delegate;
- (id)_instructionsLabelFont;
- (unint64_t)_pageIndexAtContentOffset:(CGPoint)offset;
- (void)_addFooterConstraints;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_createConstraints;
- (void)_createPageControlIfNecessary;
- (void)_createViews;
- (void)_scrollToPageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_updateContent;
- (void)_updatePageControlForContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)_updatePageViewControllerAppearanceForNormalScroll;
- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)block;
- (void)closeButtonTapped:(id)tapped;
- (void)dealloc;
- (void)pageControlChanged:(id)changed;
- (void)performInitialScrollIfNeeded;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setIconImage:(id)image;
- (void)setPages:(id)pages;
- (void)setShowsBackgroundView:(BOOL)view;
- (void)setShowsCloseButton:(BOOL)button;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRComplicationGalleryDetailView

- (PRComplicationGalleryDetailView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PRComplicationGalleryDetailView;
  v3 = [(PRComplicationGalleryDetailView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRComplicationGalleryDetailView *)v3 _createViews];
    [(PRComplicationGalleryDetailView *)v4 _createConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PRComplicationGalleryDetailView;
  [(PRComplicationGalleryDetailView *)&v4 dealloc];
}

- (void)_createViews
{
  v2 = MEMORY[0x1E69DD250];
  selfCopy = self;
  v4 = objc_alloc_init(v2);
  containerView = selfCopy->_containerView;
  selfCopy->_containerView = v4;

  [(UIView *)selfCopy->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  selfCopy->_showsBackgroundView = 1;
  v6 = objc_alloc(MEMORY[0x1E69DD298]);
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v8 = [v6 initWithEffect:v7];
  backgroundView = selfCopy->_backgroundView;
  selfCopy->_backgroundView = v8;

  v10 = selfCopy->_backgroundView;
  [(PRComplicationGalleryDetailView *)selfCopy bounds];
  [(UIView *)v10 setFrame:?];
  [(UIView *)selfCopy->_backgroundView setAutoresizingMask:18];
  [(PRComplicationGalleryDetailView *)selfCopy addSubview:selfCopy->_backgroundView];
  v11 = objc_alloc_init(MEMORY[0x1E698E808]);
  contentScrollView = selfCopy->_contentScrollView;
  selfCopy->_contentScrollView = v11;

  [(BSUIScrollView *)selfCopy->_contentScrollView setDelegate:selfCopy];
  [(BSUIScrollView *)selfCopy->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)selfCopy->_contentScrollView setShowsVerticalScrollIndicator:0];
  [(BSUIScrollView *)selfCopy->_contentScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)selfCopy->_contentScrollView setContentInsetAdjustmentBehavior:2];
  [(BSUIScrollView *)selfCopy->_contentScrollView addSubview:selfCopy->_containerView];
  [(PRComplicationGalleryDetailView *)selfCopy addSubview:selfCopy->_contentScrollView];
  v13 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  contentStackView = selfCopy->_contentStackView;
  selfCopy->_contentStackView = v13;

  [(UIStackView *)selfCopy->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy->_contentStackView setAxis:1];
  [(UIStackView *)selfCopy->_contentStackView setAlignment:0];
  [(UIView *)selfCopy->_containerView addSubview:selfCopy->_contentStackView];
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = selfCopy->_headerView;
  selfCopy->_headerView = v15;

  [(UIView *)selfCopy->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy->_contentStackView addArrangedSubview:selfCopy->_headerView];
  v17 = objc_alloc_init(PRComplicationGalleryApplicationTitleView);
  titleView = selfCopy->_titleView;
  selfCopy->_titleView = v17;

  [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView setImageSize:32.0, 32.0];
  [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView setContentInsets:25.0, 25.0, 25.0, 25.0];
  [(UIView *)selfCopy->_headerView addSubview:selfCopy->_titleView];
  selfCopy->_showsCloseButton = 1;
  v19 = [MEMORY[0x1E69DC738] buttonWithType:7];
  closeButton = selfCopy->_closeButton;
  selfCopy->_closeButton = v19;

  [(UIButton *)selfCopy->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)selfCopy->_closeButton addTarget:selfCopy action:sel_closeButtonTapped_ forControlEvents:64];
  [(PRComplicationGalleryDetailView *)selfCopy addSubview:selfCopy->_closeButton];
  v21 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  complicationGalleryStackView = selfCopy->_complicationGalleryStackView;
  selfCopy->_complicationGalleryStackView = v21;

  [(UIStackView *)selfCopy->_complicationGalleryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy->_complicationGalleryStackView setAxis:0];
  v23 = objc_alloc_init(MEMORY[0x1E698E808]);
  complicationGalleryScrollView = selfCopy->_complicationGalleryScrollView;
  selfCopy->_complicationGalleryScrollView = v23;

  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setDelegate:selfCopy];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setClipsToBounds:0];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView addSubview:selfCopy->_complicationGalleryStackView];
  [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView setAccessibilityIdentifier:@"complicationGalleryScrollView"];
  [(UIStackView *)selfCopy->_contentStackView addArrangedSubview:selfCopy->_complicationGalleryScrollView];
  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  instructionsLabel = selfCopy->_instructionsLabel;
  selfCopy->_instructionsLabel = v25;

  [(UILabel *)selfCopy->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = selfCopy->_instructionsLabel;
  _instructionsLabelFont = [(PRComplicationGalleryDetailView *)selfCopy _instructionsLabelFont];
  [(UILabel *)v27 setFont:_instructionsLabelFont];

  v29 = selfCopy->_instructionsLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v29 setTextColor:secondaryLabelColor];

  [(UILabel *)selfCopy->_instructionsLabel setTextAlignment:1];
  v31 = selfCopy->_instructionsLabel;
  v32 = PRBundle();
  v33 = [v32 localizedStringForKey:@"COMPLICATION_GALLERY_DETAIL_FOOTER_TEXT" value:&stru_1F1C13D90 table:@"PosterKit"];
  [(UILabel *)v31 setText:v33];

  [(UILabel *)selfCopy->_instructionsLabel setNumberOfLines:0];
  [(UIStackView *)selfCopy->_contentStackView addArrangedSubview:selfCopy->_instructionsLabel];
  v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
  footerStackSpacerView = selfCopy->_footerStackSpacerView;
  selfCopy->_footerStackSpacerView = v34;

  [(UIView *)selfCopy->_footerStackSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = selfCopy->_contentStackView;
  v37 = selfCopy->_footerStackSpacerView;

  [(UIStackView *)v36 addArrangedSubview:v37];
}

- (void)_createPageControlIfNecessary
{
  selfCopy = self;
  if ([(NSArray *)selfCopy->_pages count]>= 2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
    footerContainerView = selfCopy->_footerContainerView;
    selfCopy->_footerContainerView = v2;

    [(UIView *)selfCopy->_footerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRComplicationGalleryDetailView *)selfCopy addSubview:selfCopy->_footerContainerView];
    v4 = objc_alloc_init(MEMORY[0x1E69DCD10]);
    pageControl = selfCopy->_pageControl;
    selfCopy->_pageControl = v4;

    [(UIPageControl *)selfCopy->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPageControl *)selfCopy->_pageControl setNumberOfPages:[(NSArray *)selfCopy->_pages count]];
    [(UIPageControl *)selfCopy->_pageControl setCurrentPage:0];
    [(UIPageControl *)selfCopy->_pageControl setHidesForSinglePage:1];
    v6 = selfCopy->_pageControl;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIPageControl *)v6 setPageIndicatorTintColor:secondaryLabelColor];

    v8 = selfCopy->_pageControl;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v8 setCurrentPageIndicatorTintColor:labelColor];

    [(UIPageControl *)selfCopy->_pageControl addTarget:selfCopy action:sel_pageControlChanged_ forControlEvents:4096];
    [(UIView *)selfCopy->_footerContainerView addSubview:selfCopy->_pageControl];
  }

  [(PRComplicationGalleryDetailView *)selfCopy _addFooterConstraints];
}

- (void)_createConstraints
{
  v54[4] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  contentScrollView = selfCopy->_contentScrollView;
  safeAreaLayoutGuide = [(PRComplicationGalleryDetailView *)selfCopy safeAreaLayoutGuide];
  v5 = PRPinViewWithinLayoutGuide(contentScrollView, safeAreaLayoutGuide);

  v6 = PRPinViewWithinView(selfCopy->_containerView, selfCopy->_contentScrollView);
  v7 = PRPinViewWithinView(selfCopy->_contentStackView, selfCopy->_containerView);
  v8 = PRPinViewWithinView(selfCopy->_complicationGalleryScrollView, selfCopy->_complicationGalleryStackView);
  contentLayoutGuide = [(BSUIScrollView *)selfCopy->_contentScrollView contentLayoutGuide];
  frameLayoutGuide = [(BSUIScrollView *)selfCopy->_contentScrollView frameLayoutGuide];
  heightAnchor = [(UIStackView *)selfCopy->_complicationGalleryStackView heightAnchor];
  v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  widgetGalleryHeightConstraint = selfCopy->_widgetGalleryHeightConstraint;
  selfCopy->_widgetGalleryHeightConstraint = v12;

  v44 = MEMORY[0x1E696ACD8];
  heightAnchor2 = [contentLayoutGuide heightAnchor];
  heightAnchor3 = [frameLayoutGuide heightAnchor];
  v14 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
  v54[0] = v14;
  v51 = contentLayoutGuide;
  widthAnchor = [contentLayoutGuide widthAnchor];
  v50 = frameLayoutGuide;
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v54[1] = v17;
  heightAnchor4 = [(BSUIScrollView *)selfCopy->_complicationGalleryScrollView heightAnchor];
  heightAnchor5 = [(UIStackView *)selfCopy->_complicationGalleryStackView heightAnchor];
  v20 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v54[2] = v20;
  v54[3] = selfCopy->_widgetGalleryHeightConstraint;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  [v44 activateConstraints:v21];

  closeButton = selfCopy->_closeButton;
  if (closeButton)
  {
    v24 = MEMORY[0x1E696ACD8];
    trailingAnchor = [(UIButton *)closeButton trailingAnchor];
    trailingAnchor2 = [(PRComplicationGalleryDetailView *)selfCopy trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-21.0];
    v53[0] = v27;
    topAnchor = [(UIButton *)selfCopy->_closeButton topAnchor];
    topAnchor2 = [(PRComplicationGalleryDetailView *)selfCopy topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:21.0];
    v53[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    [v24 activateConstraints:v31];
  }

  titleView = selfCopy->_titleView;
  if (titleView)
  {
    LODWORD(v22) = 1148846080;
    [(PRComplicationGalleryApplicationTitleView *)titleView setContentHuggingPriority:1 forAxis:v22];
    v42 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView leadingAnchor];
    leadingAnchor2 = [(UIView *)selfCopy->_headerView leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v45;
    trailingAnchor3 = [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView trailingAnchor];
    trailingAnchor4 = [(UIView *)selfCopy->_headerView trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v52[1] = v34;
    topAnchor3 = [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView topAnchor];
    topAnchor4 = [(UIView *)selfCopy->_headerView topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v52[2] = v37;
    bottomAnchor = [(PRComplicationGalleryApplicationTitleView *)selfCopy->_titleView bottomAnchor];
    bottomAnchor2 = [(UIView *)selfCopy->_headerView bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v42 activateConstraints:v41];
  }
}

- (void)_addFooterConstraints
{
  v32[8] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  pageControl = selfCopy->_pageControl;
  if (pageControl)
  {
    v22 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIPageControl *)pageControl leadingAnchor];
    leadingAnchor2 = [(UIView *)selfCopy->_containerView leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
    v32[0] = v29;
    trailingAnchor = [(UIPageControl *)selfCopy->_pageControl trailingAnchor];
    trailingAnchor2 = [(UIView *)selfCopy->_containerView trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
    v32[1] = v26;
    topAnchor = [(UIPageControl *)selfCopy->_pageControl topAnchor];
    topAnchor2 = [(UIView *)selfCopy->_footerContainerView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = v23;
    bottomAnchor = [(UIPageControl *)selfCopy->_pageControl bottomAnchor];
    bottomAnchor2 = [(UIView *)selfCopy->_footerContainerView bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-50.0];
    v32[3] = v19;
    heightAnchor = [(UIView *)selfCopy->_footerStackSpacerView heightAnchor];
    heightAnchor2 = [(UIView *)selfCopy->_footerContainerView heightAnchor];
    v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:50.0];
    v32[4] = v16;
    leadingAnchor3 = [(UIView *)selfCopy->_footerContainerView leadingAnchor];
    leadingAnchor4 = [(PRComplicationGalleryDetailView *)selfCopy leadingAnchor];
    v5 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v32[5] = v5;
    trailingAnchor3 = [(UIView *)selfCopy->_footerContainerView trailingAnchor];
    trailingAnchor4 = [(PRComplicationGalleryDetailView *)selfCopy trailingAnchor];
    v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v32[6] = v8;
    bottomAnchor3 = [(UIView *)selfCopy->_footerContainerView bottomAnchor];
    bottomAnchor4 = [(PRComplicationGalleryDetailView *)selfCopy bottomAnchor];
    v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v32[7] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:8];
    [v22 activateConstraints:v12];
  }

  else
  {
    heightAnchor3 = [(UIView *)selfCopy->_footerStackSpacerView heightAnchor];
    v14 = [heightAnchor3 constraintEqualToConstant:50.0];
    [v14 setActive:1];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(PRComplicationGalleryDetailView *)self _updateContent];
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_iconImage, image);
    [(PRComplicationGalleryDetailView *)self _updateContent];
    imageCopy = v6;
  }
}

- (void)setPages:(id)pages
{
  pagesCopy = pages;
  if (self->_pages)
  {
    [(PRComplicationGalleryDetailView *)a2 setPages:&self->_pages, &v11];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (([v6 isEqualToArray:pagesCopy] & 1) == 0)
  {
    v7 = [pagesCopy copy];
    pages = self->_pages;
    self->_pages = v7;

    v9 = self->_pages;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PRComplicationGalleryDetailView_setPages___block_invoke;
    v10[3] = &unk_1E7843098;
    v10[4] = self;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v10];
    [(PRComplicationGalleryDetailView *)self _createPageControlIfNecessary];
    [(PRComplicationGalleryDetailView *)self _updatePageViewControllerAppearanceForNormalScroll];
  }
}

void __44__PRComplicationGalleryDetailView_setPages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 504);
  v6 = a2;
  [v5 insertArrangedSubview:v6 atIndex:a3];
  v9 = [v6 widthAnchor];

  v7 = [*(*(a1 + 32) + 440) widthAnchor];
  v8 = [v9 constraintEqualToAnchor:v7];
  [v8 setActive:1];
}

- (void)setShowsCloseButton:(BOOL)button
{
  if (self->_showsCloseButton != button)
  {
    self->_showsCloseButton = button;
    [(UIButton *)self->_closeButton setHidden:!button];
  }
}

- (void)setShowsBackgroundView:(BOOL)view
{
  if (self->_showsBackgroundView != view)
  {
    self->_showsBackgroundView = view;
    [(UIView *)self->_backgroundView setHidden:!view];
  }
}

- (void)performInitialScrollIfNeeded
{
  if (!self->_performedInitialSelection)
  {
    [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
    if (v3 > 0.0)
    {
      self->_performedInitialSelection = 1;

      [(PRComplicationGalleryDetailView *)self _scrollToPageIndex:0 animated:0];
    }
  }
}

- (void)_updateContent
{
  [(PRComplicationGalleryApplicationTitleView *)self->_titleView setTitle:self->_title];
  titleView = self->_titleView;
  iconImage = self->_iconImage;

  [(PRComplicationGalleryApplicationTitleView *)titleView setIconImage:iconImage];
}

- (void)closeButtonTapped:(id)tapped
{
  delegate = [(PRComplicationGalleryDetailView *)self delegate];
  [delegate complicationGalleryViewDidTapClose:self];
}

- (void)pageControlChanged:(id)changed
{
  currentPage = [changed currentPage];

  [(PRComplicationGalleryDetailView *)self _scrollToPageIndex:currentPage animated:1];
}

- (unint64_t)_pageIndexAtContentOffset:(CGPoint)offset
{
  v4 = [(UIStackView *)self->_complicationGalleryStackView hitTest:0 withEvent:offset.x, offset.y];
  if (v4)
  {
    do
    {
      superview = [v4 superview];
      complicationGalleryStackView = self->_complicationGalleryStackView;

      if (superview == complicationGalleryStackView)
      {
        break;
      }

      superview2 = [v4 superview];

      v4 = superview2;
    }

    while (superview2);
  }

  arrangedSubviews = [(UIStackView *)self->_complicationGalleryStackView arrangedSubviews];
  v9 = [arrangedSubviews indexOfObject:v4];

  return v9;
}

- (void)_updatePageViewControllerAppearanceForNormalScroll
{
  v3 = self->_complicationGalleryScrollView;
  [(BSUIScrollView *)v3 contentOffset];
  v5 = v4;
  v7 = v6;
  [(BSUIScrollView *)v3 bounds];
  v9 = v8;

  v10 = [(PRComplicationGalleryDetailView *)self _pageIndexAtContentOffset:v5 + v9 * 0.5, v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PRComplicationGalleryDetailView__updatePageViewControllerAppearanceForNormalScroll__block_invoke;
  v11[3] = &__block_descriptor_40_e8_B16__0Q8l;
  v11[4] = v10;
  [(PRComplicationGalleryDetailView *)self _updatePageViewControllerAppearanceWithAppearedBlock:v11];
}

BOOL __85__PRComplicationGalleryDetailView__updatePageViewControllerAppearanceForNormalScroll__block_invoke(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 32);
  if (v2 < 0)
  {
    v2 = *(a1 + 32) - a2;
  }

  return v2 < 3;
}

- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 complicationGalleryView:self didUpdateVisiblePagesWithAppearedBlock:blockCopy];
  }
}

- (void)_scrollToPageIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  arrangedSubviews = [(UIStackView *)self->_complicationGalleryStackView arrangedSubviews];
  v8 = [arrangedSubviews count];

  if (v8 <= index)
  {
    v11 = PRLogEditing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PRComplicationGalleryDetailView *)v8 _scrollToPageIndex:index animated:v11];
    }
  }

  else
  {
    [(PRComplicationGalleryDetailView *)self layoutIfNeeded];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      index = [(NSArray *)self->_pages count]+ ~index;
    }

    [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
    v10 = v9 * index;
    [(BSUIScrollView *)self->_complicationGalleryScrollView setContentOffset:animatedCopy animated:v10, 0.0];

    [(PRComplicationGalleryDetailView *)self _updatePageControlForContentOffset:animatedCopy animated:v10, 0.0];
  }
}

- (void)_updatePageControlForContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  y = offset.y;
  x = offset.x;
  [(PRComplicationGalleryDetailView *)self layoutIfNeeded];
  v7 = [(PRComplicationGalleryDetailView *)self _pageIndexAtContentOffset:x, y];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    pageControl = self->_pageControl;

    [(UIPageControl *)pageControl setCurrentPage:v8];
  }
}

- (id)_instructionsLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD00];
  traitCollection = [(PRComplicationGalleryDetailView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  instructionsLabel = [(PRComplicationGalleryDetailView *)self instructionsLabel];
  _instructionsLabelFont = [(PRComplicationGalleryDetailView *)self _instructionsLabelFont];
  [instructionsLabel setFont:_instructionsLabelFont];

  [(PRComplicationGalleryDetailView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PRComplicationGalleryDetailView;
  changeCopy = change;
  [(PRComplicationGalleryDetailView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PRComplicationGalleryDetailView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(PRComplicationGalleryDetailView *)self _contentSizeCategoryDidChange:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  delegate = [(PRComplicationGalleryDetailView *)self delegate];
  [delegate complicationGalleryViewShouldUpdateParallax:self];

  [(PRComplicationGalleryDetailView *)self _updatePageViewControllerAppearanceForNormalScroll];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
  v9 = v8;
  if (BSFloatIsZero())
  {
    [draggingCopy contentOffset];
    v11 = v10;
    [(BSUIScrollView *)self->_complicationGalleryScrollView frame];
    v13 = v11 + v12 * 0.5;
    [draggingCopy contentOffset];
    v14 = [(PRComplicationGalleryDetailView *)self _pageIndexAtContentOffset:v13];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v14 = [(NSArray *)self->_pages count]+ ~v14;
    }

    [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
    v16 = v15 * v14;
  }

  else
  {
    v17 = offset->x / v9;
    v18 = v9 * floor(v17);
    v16 = v9 * ceil(v17);
    if (x <= 0.0)
    {
      v16 = v18;
    }
  }

  offset->x = v16;
  [(PRComplicationGalleryDetailView *)self _updatePageControlForContentOffset:1 animated:?];
}

- (PRComplicationGalleryDetailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPages:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"PRComplicationGalleryDetailView.m" lineNumber:270 description:@"This class doesn't support changing the pages array after it has been set."];

  *a4 = *a3;
}

- (void)_scrollToPageIndex:(os_log_t)log animated:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1 - 1;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Trying to scroll to a page index (%lu) outside the bounds [0 - %lu]", &v3, 0x16u);
}

@end