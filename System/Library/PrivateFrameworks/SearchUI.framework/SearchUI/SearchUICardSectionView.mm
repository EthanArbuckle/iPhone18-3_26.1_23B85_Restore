@interface SearchUICardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3;
+ (UIEdgeInsets)separatorInsetsForStyle:(int)a3 cellView:(id)a4 leadingView:(id)a5 leadingTextView:(id)a6;
- (BOOL)configureUserReportButton:(id)a3;
- (NSString)description;
- (SFCardSection)section;
- (SearchUICardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (double)highlightFrameCornerRadius;
- (double)trailingMarginForAccessory:(id)a3;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)didInvalidateSizeAnimate:(BOOL)a3;
- (void)openPunchout:(id)a3 triggerEvent:(unint64_t)a4;
- (void)requestRemovalFromEnclosingView;
- (void)setFeedbackDelegate:(id)a3;
- (void)setRowModel:(id)a3;
- (void)setShouldShowTabIndicator:(BOOL)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICardSectionView

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3
{
  v3 = [a3 backgroundColor];
  v4 = v3 != 0;

  return v4;
}

+ (UIEdgeInsets)separatorInsetsForStyle:(int)a3 cellView:(id)a4 leadingView:(id)a5 leadingTextView:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  if (a3 == 5)
  {
    MinX = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
    MinX = v16;
    if (a3 == 4)
    {
      v14 = v16;
    }

    if (a3 != 3 && a3 != 4 || (v17 = v11) == 0)
    {
      v17 = v10;
    }

    v18 = v17;
    [v18 bounds];
    [v18 convertRect:v9 toView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [MEMORY[0x1E69D91A8] isLTR];
    if (v18)
    {
      if (v27)
      {
        v33.origin.x = v20;
        v33.origin.y = v22;
        v33.size.width = v24;
        v33.size.height = v26;
        MinX = CGRectGetMinX(v33);
      }

      else
      {
        [v9 bounds];
        MaxX = CGRectGetMaxX(v34);
        v35.origin.x = v20;
        v35.origin.y = v22;
        v35.size.width = v24;
        v35.size.height = v26;
        MinX = MaxX - CGRectGetMaxX(v35);
      }
    }
  }

  v29 = v12;
  v30 = MinX;
  v31 = v13;
  v32 = v14;
  result.right = v32;
  result.bottom = v31;
  result.left = v30;
  result.top = v29;
  return result;
}

- (SearchUICardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SearchUICardSectionView;
  v8 = [(NUIContainerStackView *)&v14 initWithArrangedSubviews:0];
  v9 = v8;
  if (v8)
  {
    [(SearchUICardSectionView *)v8 setRowModel:v6];
    [(SearchUICardSectionView *)v9 setFeedbackDelegate:v7];
    [(NUIContainerStackView *)v9 setAlignment:3];
    [(NUIContainerStackView *)v9 setDistribution:0];
    [(SearchUICardSectionView *)v9 setLayoutMarginsRelativeArrangement:1];
    v10 = [(SearchUICardSectionView *)v9 setupContentView];
    [(SearchUICardSectionView *)v9 setContentView:v10];

    v11 = [(SearchUICardSectionView *)v9 contentView];

    if (v11)
    {
      v12 = [(SearchUICardSectionView *)v9 contentView];
      [(SearchUICardSectionView *)v9 addArrangedSubview:v12];
    }

    [(SearchUICardSectionView *)v9 updateWithRowModel:v6];
    [(SearchUICardSectionView *)v9 updateChevronVisible:0 leaveSpaceForChevron:0];
    [(SearchUICardSectionView *)v9 setDelegate:v9];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v9];
  }

  return v9;
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  if (a3 == self)
  {
    v7 = [MEMORY[0x1E69D91A8] widthIsCompact:{a4.width, a4.height}];

    [(SearchUICardSectionView *)self setIsCompactWidth:v7];
  }
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  v11 = [(SearchUICardSectionView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [(SearchUICardSectionView *)self contentView];
  v14 = v13;
  if (isKindOfClass)
  {
    [v13 layoutMargins];
  }

  else
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    v20 = v10;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

    v14 = [(SearchUICardSectionView *)self contentView];
    [v14 effectiveLayoutMargins];
  }

  v23 = v15;
  v22 = v16;
  v21 = v17;
  v20 = v18;

LABEL_6:
  [(NUIContainerStackView *)self setSpacing:10.0 - v20];
  v24 = !v5 && !v4;
  v25 = [(SearchUICardSectionView *)self chevronView];
  [v25 setHidden:v24];

  v26 = 0.0;
  if (!v24)
  {
    v27 = [(SearchUICardSectionView *)self chevronView];

    if (!v27)
    {
      v28 = +[SearchUISymbolImage chevronImage];
      v29 = [SearchUIImageView imageViewWithImage:v28];

      [v29 setProminence:2];
      [(SearchUICardSectionView *)self setChevronView:v29];
      [SearchUIAutoLayout requireIntrinsicSizeForView:v29];
      [(SearchUICardSectionView *)self addArrangedSubview:v29];
    }

    v30 = v5;
    v31 = [(SearchUICardSectionView *)self chevronView];
    [v31 setAlpha:v30];

    v32 = [(SearchUICardSectionView *)self chevronView];
    [(SearchUICardSectionView *)self trailingMarginForAccessory:v32];
    v26 = v33;
  }

  v34 = [MEMORY[0x1E69D91A8] isLTR];
  if (_UISolariumEnabled())
  {
    v35 = [(SearchUICardSectionView *)self rowModel];
    v36 = [v35 adjustMarginsForConcentricity];

    if (v36)
    {
      v9 = v22 - v21;
      v7 = v22 - v23;
    }
  }

  if (v34)
  {
    v37 = v8;
  }

  else
  {
    v37 = v26;
  }

  if (v34)
  {
    v38 = v26;
  }

  else
  {
    v38 = v10;
  }

  [(SearchUICardSectionView *)self setLayoutMargins:v7, v37, v9, v38];
}

- (double)trailingMarginForAccessory:(id)a3
{
  [a3 intrinsicContentSize];
  v5 = v4;
  +[SearchUIUtilities imageAccessoryAdditionalCompactHorizontalMargin];
  v7 = v6;
  v8 = [(SearchUICardSectionView *)self rowModel];
  v9 = [(SearchUICardSectionView *)self rowModel];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    [MEMORY[0x1E69D9248] defaultLayoutMargins];
    v12 = v13;
    goto LABEL_7;
  }

  v10 = [v8 useCompactVersionOfUI];

  if (!v10 || ([MEMORY[0x1E69D9240] isMacOS] & 1) != 0)
  {
    goto LABEL_6;
  }

  +[SearchUIUtilities standardCompactHorizontalMargin];
  v12 = v7 + v5 * -0.5 + v11;
LABEL_7:

  return v12;
}

- (SFCardSection)section
{
  v2 = [(SearchUICardSectionView *)self rowModel];
  v3 = [v2 cardSection];

  return v3;
}

- (void)updateWithRowModel:(id)a3
{
  [(SearchUICardSectionView *)self setRowModel:a3];

  [(SearchUICardSectionView *)self setUserReportMenu:0];
}

- (void)openPunchout:(id)a3 triggerEvent:(unint64_t)a4
{
  v6 = a3;
  v12 = objc_opt_new();
  [v12 setPunchout:v6];

  v7 = objc_opt_new();
  [v7 setCommand:v12];
  v8 = [(SearchUICardSectionView *)self rowModel];
  v9 = [(SearchUICardSectionView *)self feedbackDelegate];
  v10 = [SearchUIUtilities environmentForDelegate:v9];
  v11 = [SearchUICommandHandler handlerForButton:v7 rowModel:v8 environment:v10];
  [v11 executeWithTriggerEvent:a4];
}

- (void)didInvalidateSizeAnimate:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUICardSectionView *)self feedbackDelegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(SearchUICardSectionView *)self feedbackDelegate];
  v9 = v7;
  if (v6)
  {
    [v7 cardSectionViewDidInvalidateSize:self animate:v3];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    v9 = [(SearchUICardSectionView *)self feedbackDelegate];
    [v9 cardSectionViewDidInvalidateSize:self];
  }
}

- (void)requestRemovalFromEnclosingView
{
  v3 = [(SearchUICardSectionView *)self feedbackDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SearchUICardSectionView *)self feedbackDelegate];
    v6 = [(SearchUICardSectionView *)self rowModel];
    [v5 removeRowModel:v6 completion:0];
  }

  [(SearchUICardSectionView *)self didInvalidateSizeAnimate:1];
}

- (BOOL)configureUserReportButton:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardSectionView *)self userReportMenu];

  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    [v6 setCommand:v7];

    v8 = [(SearchUICardSectionView *)self feedbackDelegate];
    v9 = [SearchUIUtilities environmentForDelegate:v8];

    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = self;
    }

    [v9 setSourceView:v10];
    v11 = [(SearchUICardSectionView *)self rowModel];
    v12 = [SearchUICommandHandler handlerForButton:v6 rowModel:v11 environment:v9];

    if ([v12 prefersContextMenu])
    {
      v13 = [v12 contextMenu];
      [(SearchUICardSectionView *)self setUserReportMenu:v13];
    }
  }

  v14 = [(SearchUICardSectionView *)self userReportMenu];
  v15 = [v14 children];
  v16 = [v15 count];

  if (v16)
  {
    [(SearchUICardSectionView *)v4 setMenu:v14];
  }

  return v16 != 0;
}

- (double)highlightFrameCornerRadius
{
  v3 = [(SearchUICardSectionView *)self highlightReferenceView];

  if (!v3)
  {
    return -1.0;
  }

  v4 = [(SearchUICardSectionView *)self highlightReferenceView];
  v5 = [v4 layer];
  [v5 cornerRadius];
  v7 = v6;

  return v7;
}

- (void)setShouldShowTabIndicator:(BOOL)a3
{
  if (self->_shouldShowTabIndicator != a3)
  {
    v4 = a3;
    self->_shouldShowTabIndicator = a3;
    if (a3)
    {
      v6 = [(SearchUICardSectionView *)self secondaryCommandView];

      if (!v6)
      {
        v7 = objc_opt_new();
        [(SearchUICardSectionView *)self setSecondaryCommandView:v7];

        v8 = [(SearchUICardSectionView *)self feedbackDelegate];
        v9 = [(SearchUICardSectionView *)self secondaryCommandView];
        [v9 setFeedbackDelegate:v8];

        v10 = [(SearchUICardSectionView *)self rowModel];
        v11 = [(SearchUICardSectionView *)self secondaryCommandView];
        [v11 setRowModel:v10];

        v12 = [(SearchUICardSectionView *)self secondaryCommandView];
        [SearchUIAutoLayout requireIntrinsicSizeForView:v12];

        +[SearchUIUtilities standardTableCellContentInset];
        v14 = -v13;
        v15 = [(SearchUICardSectionView *)self secondaryCommandView];
        [v15 setCustomAlignmentRectInsets:{0.0, 0.0, 0.0, v14}];

        v16 = [(SearchUICardSectionView *)self secondaryCommandView];
        [(SearchUICardSectionView *)self addArrangedSubview:v16];
      }
    }

    v17 = [(SearchUICardSectionView *)self secondaryCommandView];
    [v17 setHidden:!v4];
  }
}

- (void)setFeedbackDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_feedbackDelegate, v4);
  v5 = [(SearchUICardSectionView *)self secondaryCommandView];
  [v5 setFeedbackDelegate:v4];
}

- (void)setRowModel:(id)a3
{
  objc_storeStrong(&self->_rowModel, a3);
  v5 = [(SearchUICardSectionView *)self rowModel];
  v4 = [(SearchUICardSectionView *)self secondaryCommandView];
  [v4 setRowModel:v5];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = SearchUICardSectionView;
  v4 = [(SearchUICardSectionView *)&v8 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(SearchUICardSectionView *)self section];
  [v5 appendFormat:@"\t %@", v6];

  return v5;
}

@end