@interface SearchUIInfoCardSectionView
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)layoutMargins;
- (id)setupContentView;
- (void)configureShowMoreViewIfNecessary;
- (void)didInvalidateSizeAnimate:(BOOL)a3;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)a3;
- (void)showMoreButtonPressed;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIInfoCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [(SearchUIInfoCardSectionView *)self setRowStackViews:v3];

  v4 = objc_opt_new();
  [v4 setAxis:1];
  v5 = [MEMORY[0x1E69D9240] isMacOS];
  v6 = 8.0;
  if ((v5 & 1) == 0)
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

- (void)updateWithRowModel:(id)a3
{
  v67[1] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = SearchUIInfoCardSectionView;
  v63 = a3;
  [(SearchUICardSectionView *)&v66 updateWithRowModel:?];
  v4 = [(SearchUICardSectionView *)self section];
  v5 = [v4 initiallyVisibleTuples];

  v6 = [(SearchUICardSectionView *)self section];
  v7 = [v6 infoTuples];

  if (([v7 count] - v5) <= 1)
  {
    v5 = [v7 count];
  }

  v8 = [(SearchUIInfoCardSectionView *)self rowStackViews];
  v9 = [v8 count];
  v65 = v7;
  v10 = [v7 count];

  v64 = v5;
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
      v19 = [(SearchUIInfoCardSectionView *)self labelFont];

      if (!v19)
      {
        v20 = [v13 font];
        [(SearchUIInfoCardSectionView *)self setLabelFont:v20];
      }

      v21 = objc_opt_new();
      [v21 setSizingDelegate:self];
      v22 = [(SearchUICardSectionView *)self feedbackDelegate];
      [v21 setFeedbackDelegate:v22];

      v23 = objc_alloc(MEMORY[0x1E69D9200]);
      v67[0] = v21;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
      v25 = [v23 initWithArrangedSubviews:v24];

      [v25 setAxis:0];
      [v25 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
      [v25 setSpacing:8.0];
      [v25 setAlignment:1];
      [v25 setDistribution:0];
      v26 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      [v26 addObject:v25];

      if (!v5 || (-[SearchUIInfoCardSectionView rowStackViews](self, "rowStackViews"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 count], v27, v29 = v64 >= v28, v5 = v64, v29))
      {
        v30 = [(SearchUIInfoCardSectionView *)self baseView];
      }

      else
      {
        v30 = [(SearchUIInfoCardSectionView *)self expandedView];
      }

      v31 = v30;
      [v30 addArrangedSubview:v25];

      v32 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v33 = [v32 count];
      v34 = [v65 count];
    }

    while (v33 < v34);
  }

  v35 = [(SearchUIInfoCardSectionView *)self rowStackViews];
  v36 = [v35 count];

  v37 = v65;
  if (v36)
  {
    v38 = 0;
    do
    {
      v39 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v40 = [v39 objectAtIndexedSubscript:v38];

      v41 = [v40 arrangedSubviews];
      v42 = [v41 objectAtIndexedSubscript:0];

      v43 = [v37 count];
      v44 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v45 = [v44 objectAtIndexedSubscript:v38];
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

        [v42 setRowModel:v63];
        v50 = [v47 values];
        v51 = [v50 mutableCopy];

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
      v56 = [(SearchUIInfoCardSectionView *)self rowStackViews];
      v57 = [v56 count];
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

  v59 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [v59 setHidden:v58];

  v60 = [(SearchUICardSectionView *)self section];
  v61 = [v63 cardSection];
  v62 = v60 == v61 && [(SearchUIInfoCardSectionView *)self isExpanded];
  [(SearchUIInfoCardSectionView *)self setIsExpanded:v62];

  [(SearchUIInfoCardSectionView *)self invalidateIntrinsicContentSize];
}

- (void)setIsExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIInfoCardSectionView *)self expandedView];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    v7 = 1.0;
    v8 = @"SEARCH_RESULTS_SHOW_LESS_BUTTON_TITLE";
  }

  else
  {
    v8 = @"SEARCH_RESULTS_SHOW_MORE_BUTTON_TITLE";
  }

  [v5 setAlpha:v7];

  v11 = [SearchUIUtilities localizedStringForKey:v8];
  v9 = [MEMORY[0x1E69D91D0] textWithString:v11];
  v10 = [(SearchUIInfoCardSectionView *)self showMoreButton];
  [v10 setRichTitle:v9];

  self->_isExpanded = v3;
}

- (void)configureShowMoreViewIfNecessary
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUICardSectionView *)self section];
  v4 = [v3 initiallyVisibleTuples];

  if (v4)
  {
    v5 = [(SearchUIInfoCardSectionView *)self showMoreButton];

    if (!v5)
    {
      v6 = objc_opt_new();
      [v6 setProminence:2];
      [v6 addTarget:self action:sel_showMoreButtonPressed];
      [(SearchUIInfoCardSectionView *)self setShowMoreButton:v6];
    }

    v7 = [(SearchUIInfoCardSectionView *)self labelFont];
    v8 = v7;
    if (!v7)
    {
      v4 = [(SearchUIInfoCardSectionView *)self showMoreButton];
      v8 = [v4 font];
    }

    v9 = [(SearchUIInfoCardSectionView *)self showMoreButton];
    [v9 setFont:v8];

    if (!v7)
    {
    }

    v10 = [(SearchUIInfoCardSectionView *)self showMoreStackView];

    if (!v10)
    {
      v11 = MEMORY[0x1E698B730];
      v12 = [(SearchUIInfoCardSectionView *)self showMoreButton];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v14 = [v11 horizontalContainerStackViewWithArrangedSubviews:v13];

      [v14 setAlignment:3];
      [v14 setDistribution:6];
      [v14 setSpacing:2.0];
      v15 = [(SearchUICardSectionView *)self contentView];
      [v15 addSubview:v14];

      [(SearchUIInfoCardSectionView *)self setShowMoreStackView:v14];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SearchUIInfoCardSectionView *)self baseView];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  if ([(SearchUIInfoCardSectionView *)self isExpanded])
  {
    v11 = [(SearchUIInfoCardSectionView *)self expandedView];
    [v11 sizeThatFits:{width, height}];
    v13 = v12;

    v14 = [(SearchUIInfoCardSectionView *)self baseView];
    [v14 spacing];
    v10 = v10 + v13 + v15;
  }

  v16 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  v17 = [v16 isHidden];

  if ((v17 & 1) == 0)
  {
    v18 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
    [v18 sizeThatFits:{width, height}];
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
  v3 = [(SearchUICardSectionView *)self contentView];
  [(SearchUIInfoCardSectionView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = [(SearchUIInfoCardSectionView *)self baseView];
  [v10 sizeThatFits:{v7, v9}];
  v12 = v11;

  v13 = [(SearchUIInfoCardSectionView *)self expandedView];
  [v13 sizeThatFits:{v7, v9}];
  v15 = v14;

  v16 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [v16 sizeThatFits:{v7, v9}];
  v18 = v17;

  v19 = [(SearchUIInfoCardSectionView *)self baseView];
  [v19 setFrame:{0.0, 0.0, v7, v12}];

  v20 = [(SearchUIInfoCardSectionView *)self baseView];
  [v20 frame];
  v22 = v21;
  v23 = [(SearchUIInfoCardSectionView *)self baseView];
  [v23 frame];
  MaxY = CGRectGetMaxY(v37);
  v25 = [(SearchUIInfoCardSectionView *)self baseView];
  [v25 spacing];
  v27 = MaxY + v26;
  v28 = [(SearchUIInfoCardSectionView *)self expandedView];
  [v28 setFrame:{v22, v27, v7, v15}];

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

  v32 = [(SearchUIInfoCardSectionView *)self baseView];
  [v32 frame];
  v34 = v33;
  v35 = [(SearchUIInfoCardSectionView *)self showMoreStackView];
  [v35 setFrame:{v34, v30 + v31, v7, v18}];
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [(SearchUICardSectionView *)self contentView];

  if (v9 == v8)
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

- (void)didInvalidateSizeAnimate:(BOOL)a3
{
  v3 = a3;
  [(SearchUIInfoCardSectionView *)self invalidateIntrinsicContentSize];
  v5.receiver = self;
  v5.super_class = SearchUIInfoCardSectionView;
  [(SearchUICardSectionView *)&v5 didInvalidateSizeAnimate:v3];
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