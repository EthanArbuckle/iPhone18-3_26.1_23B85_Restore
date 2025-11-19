@interface PRComplicationGalleryDetailView
- (PRComplicationGalleryDetailView)initWithFrame:(CGRect)a3;
- (PRComplicationGalleryDetailViewDelegate)delegate;
- (id)_instructionsLabelFont;
- (unint64_t)_pageIndexAtContentOffset:(CGPoint)a3;
- (void)_addFooterConstraints;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_createConstraints;
- (void)_createPageControlIfNecessary;
- (void)_createViews;
- (void)_scrollToPageIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateContent;
- (void)_updatePageControlForContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)_updatePageViewControllerAppearanceForNormalScroll;
- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)dealloc;
- (void)pageControlChanged:(id)a3;
- (void)performInitialScrollIfNeeded;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setIconImage:(id)a3;
- (void)setPages:(id)a3;
- (void)setShowsBackgroundView:(BOOL)a3;
- (void)setShowsCloseButton:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRComplicationGalleryDetailView

- (PRComplicationGalleryDetailView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PRComplicationGalleryDetailView;
  v3 = [(PRComplicationGalleryDetailView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRComplicationGalleryDetailView *)v3 _createViews];
    [(PRComplicationGalleryDetailView *)v4 _createConstraints];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PRComplicationGalleryDetailView;
  [(PRComplicationGalleryDetailView *)&v4 dealloc];
}

- (void)_createViews
{
  v2 = MEMORY[0x1E69DD250];
  v3 = self;
  v4 = objc_alloc_init(v2);
  containerView = v3->_containerView;
  v3->_containerView = v4;

  [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3->_showsBackgroundView = 1;
  v6 = objc_alloc(MEMORY[0x1E69DD298]);
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v8 = [v6 initWithEffect:v7];
  backgroundView = v3->_backgroundView;
  v3->_backgroundView = v8;

  v10 = v3->_backgroundView;
  [(PRComplicationGalleryDetailView *)v3 bounds];
  [(UIView *)v10 setFrame:?];
  [(UIView *)v3->_backgroundView setAutoresizingMask:18];
  [(PRComplicationGalleryDetailView *)v3 addSubview:v3->_backgroundView];
  v11 = objc_alloc_init(MEMORY[0x1E698E808]);
  contentScrollView = v3->_contentScrollView;
  v3->_contentScrollView = v11;

  [(BSUIScrollView *)v3->_contentScrollView setDelegate:v3];
  [(BSUIScrollView *)v3->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)v3->_contentScrollView setShowsVerticalScrollIndicator:0];
  [(BSUIScrollView *)v3->_contentScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)v3->_contentScrollView setContentInsetAdjustmentBehavior:2];
  [(BSUIScrollView *)v3->_contentScrollView addSubview:v3->_containerView];
  [(PRComplicationGalleryDetailView *)v3 addSubview:v3->_contentScrollView];
  v13 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  contentStackView = v3->_contentStackView;
  v3->_contentStackView = v13;

  [(UIStackView *)v3->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v3->_contentStackView setAxis:1];
  [(UIStackView *)v3->_contentStackView setAlignment:0];
  [(UIView *)v3->_containerView addSubview:v3->_contentStackView];
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = v3->_headerView;
  v3->_headerView = v15;

  [(UIView *)v3->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v3->_contentStackView addArrangedSubview:v3->_headerView];
  v17 = objc_alloc_init(PRComplicationGalleryApplicationTitleView);
  titleView = v3->_titleView;
  v3->_titleView = v17;

  [(PRComplicationGalleryApplicationTitleView *)v3->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PRComplicationGalleryApplicationTitleView *)v3->_titleView setImageSize:32.0, 32.0];
  [(PRComplicationGalleryApplicationTitleView *)v3->_titleView setContentInsets:25.0, 25.0, 25.0, 25.0];
  [(UIView *)v3->_headerView addSubview:v3->_titleView];
  v3->_showsCloseButton = 1;
  v19 = [MEMORY[0x1E69DC738] buttonWithType:7];
  closeButton = v3->_closeButton;
  v3->_closeButton = v19;

  [(UIButton *)v3->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v3->_closeButton addTarget:v3 action:sel_closeButtonTapped_ forControlEvents:64];
  [(PRComplicationGalleryDetailView *)v3 addSubview:v3->_closeButton];
  v21 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  complicationGalleryStackView = v3->_complicationGalleryStackView;
  v3->_complicationGalleryStackView = v21;

  [(UIStackView *)v3->_complicationGalleryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v3->_complicationGalleryStackView setAxis:0];
  v23 = objc_alloc_init(MEMORY[0x1E698E808]);
  complicationGalleryScrollView = v3->_complicationGalleryScrollView;
  v3->_complicationGalleryScrollView = v23;

  [(BSUIScrollView *)v3->_complicationGalleryScrollView setDelegate:v3];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView setClipsToBounds:0];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView addSubview:v3->_complicationGalleryStackView];
  [(BSUIScrollView *)v3->_complicationGalleryScrollView setAccessibilityIdentifier:@"complicationGalleryScrollView"];
  [(UIStackView *)v3->_contentStackView addArrangedSubview:v3->_complicationGalleryScrollView];
  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  instructionsLabel = v3->_instructionsLabel;
  v3->_instructionsLabel = v25;

  [(UILabel *)v3->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = v3->_instructionsLabel;
  v28 = [(PRComplicationGalleryDetailView *)v3 _instructionsLabelFont];
  [(UILabel *)v27 setFont:v28];

  v29 = v3->_instructionsLabel;
  v30 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v29 setTextColor:v30];

  [(UILabel *)v3->_instructionsLabel setTextAlignment:1];
  v31 = v3->_instructionsLabel;
  v32 = PRBundle();
  v33 = [v32 localizedStringForKey:@"COMPLICATION_GALLERY_DETAIL_FOOTER_TEXT" value:&stru_1F1C13D90 table:@"PosterKit"];
  [(UILabel *)v31 setText:v33];

  [(UILabel *)v3->_instructionsLabel setNumberOfLines:0];
  [(UIStackView *)v3->_contentStackView addArrangedSubview:v3->_instructionsLabel];
  v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
  footerStackSpacerView = v3->_footerStackSpacerView;
  v3->_footerStackSpacerView = v34;

  [(UIView *)v3->_footerStackSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = v3->_contentStackView;
  v37 = v3->_footerStackSpacerView;

  [(UIStackView *)v36 addArrangedSubview:v37];
}

- (void)_createPageControlIfNecessary
{
  v10 = self;
  if ([(NSArray *)v10->_pages count]>= 2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
    footerContainerView = v10->_footerContainerView;
    v10->_footerContainerView = v2;

    [(UIView *)v10->_footerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRComplicationGalleryDetailView *)v10 addSubview:v10->_footerContainerView];
    v4 = objc_alloc_init(MEMORY[0x1E69DCD10]);
    pageControl = v10->_pageControl;
    v10->_pageControl = v4;

    [(UIPageControl *)v10->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPageControl *)v10->_pageControl setNumberOfPages:[(NSArray *)v10->_pages count]];
    [(UIPageControl *)v10->_pageControl setCurrentPage:0];
    [(UIPageControl *)v10->_pageControl setHidesForSinglePage:1];
    v6 = v10->_pageControl;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIPageControl *)v6 setPageIndicatorTintColor:v7];

    v8 = v10->_pageControl;
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v8 setCurrentPageIndicatorTintColor:v9];

    [(UIPageControl *)v10->_pageControl addTarget:v10 action:sel_pageControlChanged_ forControlEvents:4096];
    [(UIView *)v10->_footerContainerView addSubview:v10->_pageControl];
  }

  [(PRComplicationGalleryDetailView *)v10 _addFooterConstraints];
}

- (void)_createConstraints
{
  v54[4] = *MEMORY[0x1E69E9840];
  v2 = self;
  contentScrollView = v2->_contentScrollView;
  v4 = [(PRComplicationGalleryDetailView *)v2 safeAreaLayoutGuide];
  v5 = PRPinViewWithinLayoutGuide(contentScrollView, v4);

  v6 = PRPinViewWithinView(v2->_containerView, v2->_contentScrollView);
  v7 = PRPinViewWithinView(v2->_contentStackView, v2->_containerView);
  v8 = PRPinViewWithinView(v2->_complicationGalleryScrollView, v2->_complicationGalleryStackView);
  v9 = [(BSUIScrollView *)v2->_contentScrollView contentLayoutGuide];
  v10 = [(BSUIScrollView *)v2->_contentScrollView frameLayoutGuide];
  v11 = [(UIStackView *)v2->_complicationGalleryStackView heightAnchor];
  v12 = [v11 constraintGreaterThanOrEqualToConstant:0.0];
  widgetGalleryHeightConstraint = v2->_widgetGalleryHeightConstraint;
  v2->_widgetGalleryHeightConstraint = v12;

  v44 = MEMORY[0x1E696ACD8];
  v48 = [v9 heightAnchor];
  v46 = [v10 heightAnchor];
  v14 = [v48 constraintGreaterThanOrEqualToAnchor:v46];
  v54[0] = v14;
  v51 = v9;
  v15 = [v9 widthAnchor];
  v50 = v10;
  v16 = [v10 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v54[1] = v17;
  v18 = [(BSUIScrollView *)v2->_complicationGalleryScrollView heightAnchor];
  v19 = [(UIStackView *)v2->_complicationGalleryStackView heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v54[2] = v20;
  v54[3] = v2->_widgetGalleryHeightConstraint;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  [v44 activateConstraints:v21];

  closeButton = v2->_closeButton;
  if (closeButton)
  {
    v24 = MEMORY[0x1E696ACD8];
    v25 = [(UIButton *)closeButton trailingAnchor];
    v26 = [(PRComplicationGalleryDetailView *)v2 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-21.0];
    v53[0] = v27;
    v28 = [(UIButton *)v2->_closeButton topAnchor];
    v29 = [(PRComplicationGalleryDetailView *)v2 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:21.0];
    v53[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    [v24 activateConstraints:v31];
  }

  titleView = v2->_titleView;
  if (titleView)
  {
    LODWORD(v22) = 1148846080;
    [(PRComplicationGalleryApplicationTitleView *)titleView setContentHuggingPriority:1 forAxis:v22];
    v42 = MEMORY[0x1E696ACD8];
    v49 = [(PRComplicationGalleryApplicationTitleView *)v2->_titleView leadingAnchor];
    v47 = [(UIView *)v2->_headerView leadingAnchor];
    v45 = [v49 constraintEqualToAnchor:v47];
    v52[0] = v45;
    v43 = [(PRComplicationGalleryApplicationTitleView *)v2->_titleView trailingAnchor];
    v33 = [(UIView *)v2->_headerView trailingAnchor];
    v34 = [v43 constraintEqualToAnchor:v33];
    v52[1] = v34;
    v35 = [(PRComplicationGalleryApplicationTitleView *)v2->_titleView topAnchor];
    v36 = [(UIView *)v2->_headerView topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v52[2] = v37;
    v38 = [(PRComplicationGalleryApplicationTitleView *)v2->_titleView bottomAnchor];
    v39 = [(UIView *)v2->_headerView bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v52[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v42 activateConstraints:v41];
  }
}

- (void)_addFooterConstraints
{
  v32[8] = *MEMORY[0x1E69E9840];
  v2 = self;
  pageControl = v2->_pageControl;
  if (pageControl)
  {
    v22 = MEMORY[0x1E696ACD8];
    v31 = [(UIPageControl *)pageControl leadingAnchor];
    v30 = [(UIView *)v2->_containerView leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:24.0];
    v32[0] = v29;
    v28 = [(UIPageControl *)v2->_pageControl trailingAnchor];
    v27 = [(UIView *)v2->_containerView trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:-24.0];
    v32[1] = v26;
    v25 = [(UIPageControl *)v2->_pageControl topAnchor];
    v24 = [(UIView *)v2->_footerContainerView topAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v32[2] = v23;
    v21 = [(UIPageControl *)v2->_pageControl bottomAnchor];
    v20 = [(UIView *)v2->_footerContainerView bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20 constant:-50.0];
    v32[3] = v19;
    v18 = [(UIView *)v2->_footerStackSpacerView heightAnchor];
    v17 = [(UIView *)v2->_footerContainerView heightAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:50.0];
    v32[4] = v16;
    v15 = [(UIView *)v2->_footerContainerView leadingAnchor];
    v4 = [(PRComplicationGalleryDetailView *)v2 leadingAnchor];
    v5 = [v15 constraintEqualToAnchor:v4];
    v32[5] = v5;
    v6 = [(UIView *)v2->_footerContainerView trailingAnchor];
    v7 = [(PRComplicationGalleryDetailView *)v2 trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v32[6] = v8;
    v9 = [(UIView *)v2->_footerContainerView bottomAnchor];
    v10 = [(PRComplicationGalleryDetailView *)v2 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v32[7] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:8];
    [v22 activateConstraints:v12];
  }

  else
  {
    v13 = [(UIView *)v2->_footerStackSpacerView heightAnchor];
    v14 = [v13 constraintEqualToConstant:50.0];
    [v14 setActive:1];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v6 copy];
    title = self->_title;
    self->_title = v4;

    [(PRComplicationGalleryDetailView *)self _updateContent];
  }
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  if (self->_iconImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_iconImage, a3);
    [(PRComplicationGalleryDetailView *)self _updateContent];
    v5 = v6;
  }
}

- (void)setPages:(id)a3
{
  v5 = a3;
  if (self->_pages)
  {
    [(PRComplicationGalleryDetailView *)a2 setPages:&self->_pages, &v11];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (([v6 isEqualToArray:v5] & 1) == 0)
  {
    v7 = [v5 copy];
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

- (void)setShowsCloseButton:(BOOL)a3
{
  if (self->_showsCloseButton != a3)
  {
    self->_showsCloseButton = a3;
    [(UIButton *)self->_closeButton setHidden:!a3];
  }
}

- (void)setShowsBackgroundView:(BOOL)a3
{
  if (self->_showsBackgroundView != a3)
  {
    self->_showsBackgroundView = a3;
    [(UIView *)self->_backgroundView setHidden:!a3];
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

- (void)closeButtonTapped:(id)a3
{
  v4 = [(PRComplicationGalleryDetailView *)self delegate];
  [v4 complicationGalleryViewDidTapClose:self];
}

- (void)pageControlChanged:(id)a3
{
  v4 = [a3 currentPage];

  [(PRComplicationGalleryDetailView *)self _scrollToPageIndex:v4 animated:1];
}

- (unint64_t)_pageIndexAtContentOffset:(CGPoint)a3
{
  v4 = [(UIStackView *)self->_complicationGalleryStackView hitTest:0 withEvent:a3.x, a3.y];
  if (v4)
  {
    do
    {
      v5 = [v4 superview];
      complicationGalleryStackView = self->_complicationGalleryStackView;

      if (v5 == complicationGalleryStackView)
      {
        break;
      }

      v7 = [v4 superview];

      v4 = v7;
    }

    while (v7);
  }

  v8 = [(UIStackView *)self->_complicationGalleryStackView arrangedSubviews];
  v9 = [v8 indexOfObject:v4];

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

- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 complicationGalleryView:self didUpdateVisiblePagesWithAppearedBlock:v7];
  }
}

- (void)_scrollToPageIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIStackView *)self->_complicationGalleryStackView arrangedSubviews];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v11 = PRLogEditing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PRComplicationGalleryDetailView *)v8 _scrollToPageIndex:a3 animated:v11];
    }
  }

  else
  {
    [(PRComplicationGalleryDetailView *)self layoutIfNeeded];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      a3 = [(NSArray *)self->_pages count]+ ~a3;
    }

    [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
    v10 = v9 * a3;
    [(BSUIScrollView *)self->_complicationGalleryScrollView setContentOffset:v4 animated:v10, 0.0];

    [(PRComplicationGalleryDetailView *)self _updatePageControlForContentOffset:v4 animated:v10, 0.0];
  }
}

- (void)_updatePageControlForContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
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
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD00];
  v5 = [(PRComplicationGalleryDetailView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:v6];

  return v7;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v4 = [(PRComplicationGalleryDetailView *)self instructionsLabel];
  v5 = [(PRComplicationGalleryDetailView *)self _instructionsLabelFont];
  [v4 setFont:v5];

  [(PRComplicationGalleryDetailView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PRComplicationGalleryDetailView;
  v4 = a3;
  [(PRComplicationGalleryDetailView *)&v8 traitCollectionDidChange:v4];
  v5 = [(PRComplicationGalleryDetailView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(PRComplicationGalleryDetailView *)self _contentSizeCategoryDidChange:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(PRComplicationGalleryDetailView *)self delegate];
  [v4 complicationGalleryViewShouldUpdateParallax:self];

  [(PRComplicationGalleryDetailView *)self _updatePageViewControllerAppearanceForNormalScroll];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v19 = a3;
  [(BSUIScrollView *)self->_complicationGalleryScrollView bounds];
  v9 = v8;
  if (BSFloatIsZero())
  {
    [v19 contentOffset];
    v11 = v10;
    [(BSUIScrollView *)self->_complicationGalleryScrollView frame];
    v13 = v11 + v12 * 0.5;
    [v19 contentOffset];
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
    v17 = a5->x / v9;
    v18 = v9 * floor(v17);
    v16 = v9 * ceil(v17);
    if (x <= 0.0)
    {
      v16 = v18;
    }
  }

  a5->x = v16;
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