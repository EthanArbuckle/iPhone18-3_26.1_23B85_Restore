@interface SearchUIInfoCardSectionView
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)layoutMargins;
- (id)setupContentView;
- (void)configureShowMoreViewIfNecessary;
- (void)didInvalidateSizeAnimate:(BOOL)animate;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)expanded;
- (void)showMoreButtonPressed;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIInfoCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [(SearchUIInfoCardSectionView *)self setRowStackViews:v3];

  v4 = objc_opt_new();
  [v4 setAxis:1];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v6 = 8.0;
  if ((isMacOS & 1) == 0)
  {
    [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:11.0];
  }

  [v4 setSpacing:v6];
  [v4 setAlignment:0];
  [(SearchUIInfoCardSectionView *)self setBaseView:v4];
  v7 = objc_opt_new();
  [v7 setAxis:1];
  [v4 spacing];
  [v7 setSpacing:?];
  [v7 setAlignment:0];
  [(SearchUIInfoCardSectionView *)self setExpandedView:v7];
  [(SearchUIInfoCardSectionView *)self setNeverCacheEffectiveLayoutSize:1];
  v8 = objc_opt_new();
  [v8 addSubview:v4];
  [v8 addSubview:v7];

  return v8;
}

- (void)updateWithRowModel:(id)model
{
  v67[1] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = SearchUIInfoCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v66 updateWithRowModel:?];
  section = [(SearchUICardSectionView *)self section];
  initiallyVisibleTuples = [section initiallyVisibleTuples];

  section2 = [(SearchUICardSectionView *)self section];
  infoTuples = [section2 infoTuples];

  if (([infoTuples count] - initiallyVisibleTuples) <= 1)
  {
    initiallyVisibleTuples = [infoTuples count];
  }

  rowStackViews = [(SearchUIInfoCardSectionView *)self rowStackViews];
  v9 = [rowStackViews count];
  v65 = infoTuples;
  v10 = [infoTuples count];

  v64 = initiallyVisibleTuples;
  if (v9 < v10)
  {
    v11 = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DDCF8];
    do
    {
      v13 = +[(TLKLabel *)SearchUILabel];
      v14 = MEMORY[0x1E69D9138];
      if ([MEMORY[0x1E69D9240] isMacOS])
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      v16 = [v14 cachedFontForTextStyle:v15];
      [v13 setFont:v16];

      LODWORD(v17) = 1148846080;
      [v13 setContentCompressionResistancePriority:0 forAxis:v17];
      LODWORD(v18) = 1148846080;
      [v13 setContentHuggingPriority:0 forAxis:v18];
      [v13 setNumberOfLines:0];
      labelFont = [(SearchUIInfoCardSectionView *)self labelFont];

      if (!labelFont)
      {
        font = [v13 font];
        [(SearchUIInfoCardSectionView *)self setLabelFont:font];
      }

      v21 = objc_opt_new();
      [v21 setSizingDelegate:self];
      feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
      [v21 setFeedbackDelegate:feedbackDelegate];

      v23 = objc_alloc(MEMORY[0x1E69D9200]);
      v67[0] = v21;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
      v25 = [v23 initWithArrangedSubviews:v24];

      [v25 setAxis:0];
      [v25 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
      [v25 setSpacing:8.0];
      [v25 setAlignment:1];
      [v25 setDistribution:0];
      rowStackViews2 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      [rowStackViews2 addObject:v25];

      if (!initiallyVisibleTuples || (-[SearchUIInfoCardSectionView rowStackViews](self, "rowStackViews"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 count], v27, v29 = v64 >= v28, initiallyVisibleTuples = v64, v29))
      {
        baseView = [(SearchUIInfoCardSectionView *)self baseView];
      }

      else
      {
        baseView = [(SearchUIInfoCardSectionView *)self expandedView];
      }

      v31 = baseView;
      [baseView addArrangedSubview:v25];

      rowStackViews3 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v33 = [rowStackViews3 count];
      v34 = [v65 count];
    }

    while (v33 < v34);
  }

  rowStackViews4 = [(SearchUIInfoCardSectionView *)self rowStackViews];
  v36 = [rowStackViews4 count];

  v37 = v65;
  if (v36)
  {
    v38 = 0;
    do
    {
      rowStackViews5 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v40 = [rowStackViews5 objectAtIndexedSubscript:v38];

      arrangedSubviews = [v40 arrangedSubviews];
      v42 = [arrangedSubviews objectAtIndexedSubscript:0];

      v43 = [v37 count];
      rowStackViews6 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v45 = [rowStackViews6 objectAtIndexedSubscript:v38];
      [v45 setHidden:v38 >= v43];

      if (v38 < v43)
      {
        v46 = [v37 objectAtIndexedSubscript:v38];
        v47 = [v46 copy];

        v48 = [v47 key];
        if (v48)
        {
          v49 = [v47 key];
        }

        else
        {
          v49 = &stru_1F55BC4E8;
        }

        [v42 setRowModel:modelCopy];
        values = [v47 values];
        v51 = [values mutableCopy];

        v52 = objc_opt_new();
        v53 = MEMORY[0x1E696AEC0];
        v54 = [SearchUIUtilities localizedStringForKey:@"LIST_TITLE_COLON"];
        v55 = [v53 stringWithValidatedFormat:v54 validFormatSpecifiers:@"%@" error:0, v49];
        [v52 setTitle:v55];

        [v51 insertObject:v52 atIndex:0];
        if ([v47 initiallyVisibleValues])
        {
          [v47 setInitiallyVisibleValues:{objc_msgSend(v47, "initiallyVisibleValues") + 1}];
        }

        [v47 setValues:v51];
        [v42 setTuple:v47];

        v37 = v65;
      }

      ++v38;
      rowStackViews7 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v57 = [rowStackViews7 count];
    }

    while (v38 < v57);
  }

  [(SearchUIInfoCardSectionView *)self configureShowMoreViewIfNecessary];
  if (v64)
  {
    v58 = v64 >= [v37 count];
  }

  else
  {
    v58 = 1;
  }

  showMoreStackView = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [showMoreStackView setHidden:v58];

  section3 = [(SearchUICardSectionView *)self section];
  cardSection = [modelCopy cardSection];
  v62 = section3 == cardSection && [(SearchUIInfoCardSectionView *)self isExpanded];
  [(SearchUIInfoCardSectionView *)self setIsExpanded:v62];

  [(SearchUIInfoCardSectionView *)self invalidateIntrinsicContentSize];
}

- (void)setIsExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  expandedView = [(SearchUIInfoCardSectionView *)self expandedView];
  v6 = expandedView;
  v7 = 0.0;
  if (expandedCopy)
  {
    v7 = 1.0;
    v8 = @"SEARCH_RESULTS_SHOW_LESS_BUTTON_TITLE";
  }

  else
  {
    v8 = @"SEARCH_RESULTS_SHOW_MORE_BUTTON_TITLE";
  }

  [expandedView setAlpha:v7];

  v11 = [SearchUIUtilities localizedStringForKey:v8];
  v9 = [MEMORY[0x1E69D91D0] textWithString:v11];
  showMoreButton = [(SearchUIInfoCardSectionView *)self showMoreButton];
  [showMoreButton setRichTitle:v9];

  self->_isExpanded = expandedCopy;
}

- (void)configureShowMoreViewIfNecessary
{
  v16[1] = *MEMORY[0x1E69E9840];
  section = [(SearchUICardSectionView *)self section];
  initiallyVisibleTuples = [section initiallyVisibleTuples];

  if (initiallyVisibleTuples)
  {
    showMoreButton = [(SearchUIInfoCardSectionView *)self showMoreButton];

    if (!showMoreButton)
    {
      v6 = objc_opt_new();
      [v6 setProminence:2];
      [v6 addTarget:self action:sel_showMoreButtonPressed];
      [(SearchUIInfoCardSectionView *)self setShowMoreButton:v6];
    }

    labelFont = [(SearchUIInfoCardSectionView *)self labelFont];
    font = labelFont;
    if (!labelFont)
    {
      initiallyVisibleTuples = [(SearchUIInfoCardSectionView *)self showMoreButton];
      font = [initiallyVisibleTuples font];
    }

    showMoreButton2 = [(SearchUIInfoCardSectionView *)self showMoreButton];
    [showMoreButton2 setFont:font];

    if (!labelFont)
    {
    }

    showMoreStackView = [(SearchUIInfoCardSectionView *)self showMoreStackView];

    if (!showMoreStackView)
    {
      v11 = MEMORY[0x1E698B730];
      showMoreButton3 = [(SearchUIInfoCardSectionView *)self showMoreButton];
      v16[0] = showMoreButton3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v14 = [v11 horizontalContainerStackViewWithArrangedSubviews:v13];

      [v14 setAlignment:3];
      [v14 setDistribution:6];
      [v14 setSpacing:2.0];
      contentView = [(SearchUICardSectionView *)self contentView];
      [contentView addSubview:v14];

      [(SearchUIInfoCardSectionView *)self setShowMoreStackView:v14];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  baseView = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  if ([(SearchUIInfoCardSectionView *)self isExpanded])
  {
    expandedView = [(SearchUIInfoCardSectionView *)self expandedView];
    [expandedView sizeThatFits:{width, height}];
    v13 = v12;

    baseView2 = [(SearchUIInfoCardSectionView *)self baseView];
    [baseView2 spacing];
    v10 = v10 + v13 + v15;
  }

  showMoreStackView = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  isHidden = [showMoreStackView isHidden];

  if ((isHidden & 1) == 0)
  {
    showMoreStackView2 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
    [showMoreStackView2 sizeThatFits:{width, height}];
    v20 = v19;

    v10 = v10 + v20;
  }

  v21 = v8;
  v22 = v10;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = SearchUIInfoCardSectionView;
  [(SearchUIInfoCardSectionView *)&v36 layoutSubviews];
  contentView = [(SearchUICardSectionView *)self contentView];
  [(SearchUIInfoCardSectionView *)self bounds];
  [contentView sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  baseView = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView sizeThatFits:{v7, v9}];
  v12 = v11;

  expandedView = [(SearchUIInfoCardSectionView *)self expandedView];
  [expandedView sizeThatFits:{v7, v9}];
  v15 = v14;

  showMoreStackView = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [showMoreStackView sizeThatFits:{v7, v9}];
  v18 = v17;

  baseView2 = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView2 setFrame:{0.0, 0.0, v7, v12}];

  baseView3 = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView3 frame];
  v22 = v21;
  baseView4 = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView4 frame];
  MaxY = CGRectGetMaxY(v37);
  baseView5 = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView5 spacing];
  v27 = MaxY + v26;
  expandedView2 = [(SearchUIInfoCardSectionView *)self expandedView];
  [expandedView2 setFrame:{v22, v27, v7, v15}];

  if ([(SearchUIInfoCardSectionView *)self isExpanded])
  {
    [(SearchUIInfoCardSectionView *)self expandedView];
  }

  else
  {
    [(SearchUIInfoCardSectionView *)self baseView];
  }
  v29 = ;
  [v29 frame];
  v30 = CGRectGetMaxY(v38);

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 5.0;
  }

  baseView6 = [(SearchUIInfoCardSectionView *)self baseView];
  [baseView6 frame];
  v34 = v33;
  showMoreStackView2 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [showMoreStackView2 setFrame:{v34, v30 + v31, v7, v18}];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  contentView = [(SearchUICardSectionView *)self contentView];

  if (contentView == subviewCopy)
  {
    [(SearchUIInfoCardSectionView *)self sizeThatFits:width, height];
  }

  else
  {
    v10 = *MEMORY[0x1E698B708];
    v11 = *(MEMORY[0x1E698B708] + 8);
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)didInvalidateSizeAnimate:(BOOL)animate
{
  animateCopy = animate;
  [(SearchUIInfoCardSectionView *)self invalidateIntrinsicContentSize];
  v5.receiver = self;
  v5.super_class = SearchUIInfoCardSectionView;
  [(SearchUICardSectionView *)&v5 didInvalidateSizeAnimate:animateCopy];
}

- (void)showMoreButtonPressed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__SearchUIInfoCardSectionView_showMoreButtonPressed__block_invoke;
  v3[3] = &unk_1E85B24C8;
  v3[4] = self;
  [SearchUIUtilities performAnimatableChanges:v3 animated:1];
  [(SearchUIInfoCardSectionView *)self didInvalidateSizeAnimate:1];
}

uint64_t __52__SearchUIInfoCardSectionView_showMoreButtonPressed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isExpanded] ^ 1;
  v3 = *(a1 + 32);

  return [v3 setIsExpanded:v2];
}

- (UIEdgeInsets)layoutMargins
{
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end