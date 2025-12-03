@interface SearchUICardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model;
+ (UIEdgeInsets)separatorInsetsForStyle:(int)style cellView:(id)view leadingView:(id)leadingView leadingTextView:(id)textView;
- (BOOL)configureUserReportButton:(id)button;
- (NSString)description;
- (SFCardSection)section;
- (SearchUICardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (double)highlightFrameCornerRadius;
- (double)trailingMarginForAccessory:(id)accessory;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)didInvalidateSizeAnimate:(BOOL)animate;
- (void)openPunchout:(id)punchout triggerEvent:(unint64_t)event;
- (void)requestRemovalFromEnclosingView;
- (void)setFeedbackDelegate:(id)delegate;
- (void)setRowModel:(id)model;
- (void)setShouldShowTabIndicator:(BOOL)indicator;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICardSectionView

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model
{
  backgroundColor = [model backgroundColor];
  v4 = backgroundColor != 0;

  return v4;
}

+ (UIEdgeInsets)separatorInsetsForStyle:(int)style cellView:(id)view leadingView:(id)leadingView leadingTextView:(id)textView
{
  viewCopy = view;
  leadingViewCopy = leadingView;
  textViewCopy = textView;
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  if (style == 5)
  {
    MinX = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
    MinX = v16;
    if (style == 4)
    {
      v14 = v16;
    }

    if (style != 3 && style != 4 || (v17 = textViewCopy) == 0)
    {
      v17 = leadingViewCopy;
    }

    v18 = v17;
    [v18 bounds];
    [v18 convertRect:viewCopy toView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    isLTR = [MEMORY[0x1E69D91A8] isLTR];
    if (v18)
    {
      if (isLTR)
      {
        v33.origin.x = v20;
        v33.origin.y = v22;
        v33.size.width = v24;
        v33.size.height = v26;
        MinX = CGRectGetMinX(v33);
      }

      else
      {
        [viewCopy bounds];
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

- (SearchUICardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = SearchUICardSectionView;
  v8 = [(NUIContainerStackView *)&v14 initWithArrangedSubviews:0];
  v9 = v8;
  if (v8)
  {
    [(SearchUICardSectionView *)v8 setRowModel:modelCopy];
    [(SearchUICardSectionView *)v9 setFeedbackDelegate:delegateCopy];
    [(NUIContainerStackView *)v9 setAlignment:3];
    [(NUIContainerStackView *)v9 setDistribution:0];
    [(SearchUICardSectionView *)v9 setLayoutMarginsRelativeArrangement:1];
    setupContentView = [(SearchUICardSectionView *)v9 setupContentView];
    [(SearchUICardSectionView *)v9 setContentView:setupContentView];

    contentView = [(SearchUICardSectionView *)v9 contentView];

    if (contentView)
    {
      contentView2 = [(SearchUICardSectionView *)v9 contentView];
      [(SearchUICardSectionView *)v9 addArrangedSubview:contentView2];
    }

    [(SearchUICardSectionView *)v9 updateWithRowModel:modelCopy];
    [(SearchUICardSectionView *)v9 updateChevronVisible:0 leaveSpaceForChevron:0];
    [(SearchUICardSectionView *)v9 setDelegate:v9];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v9];
  }

  return v9;
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  if (view == self)
  {
    v7 = [MEMORY[0x1E69D91A8] widthIsCompact:{size.width, size.height}];

    [(SearchUICardSectionView *)self setIsCompactWidth:v7];
  }
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  contentView = [(SearchUICardSectionView *)self contentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contentView2 = [(SearchUICardSectionView *)self contentView];
  contentView3 = contentView2;
  if (isKindOfClass)
  {
    [contentView2 layoutMargins];
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

    contentView3 = [(SearchUICardSectionView *)self contentView];
    [contentView3 effectiveLayoutMargins];
  }

  v23 = v15;
  v22 = v16;
  v21 = v17;
  v20 = v18;

LABEL_6:
  [(NUIContainerStackView *)self setSpacing:10.0 - v20];
  v24 = !visibleCopy && !chevronCopy;
  chevronView = [(SearchUICardSectionView *)self chevronView];
  [chevronView setHidden:v24];

  v26 = 0.0;
  if (!v24)
  {
    chevronView2 = [(SearchUICardSectionView *)self chevronView];

    if (!chevronView2)
    {
      v28 = +[SearchUISymbolImage chevronImage];
      v29 = [SearchUIImageView imageViewWithImage:v28];

      [v29 setProminence:2];
      [(SearchUICardSectionView *)self setChevronView:v29];
      [SearchUIAutoLayout requireIntrinsicSizeForView:v29];
      [(SearchUICardSectionView *)self addArrangedSubview:v29];
    }

    v30 = visibleCopy;
    chevronView3 = [(SearchUICardSectionView *)self chevronView];
    [chevronView3 setAlpha:v30];

    chevronView4 = [(SearchUICardSectionView *)self chevronView];
    [(SearchUICardSectionView *)self trailingMarginForAccessory:chevronView4];
    v26 = v33;
  }

  isLTR = [MEMORY[0x1E69D91A8] isLTR];
  if (_UISolariumEnabled())
  {
    rowModel = [(SearchUICardSectionView *)self rowModel];
    adjustMarginsForConcentricity = [rowModel adjustMarginsForConcentricity];

    if (adjustMarginsForConcentricity)
    {
      v9 = v22 - v21;
      v7 = v22 - v23;
    }
  }

  if (isLTR)
  {
    v37 = v8;
  }

  else
  {
    v37 = v26;
  }

  if (isLTR)
  {
    v38 = v26;
  }

  else
  {
    v38 = v10;
  }

  [(SearchUICardSectionView *)self setLayoutMargins:v7, v37, v9, v38];
}

- (double)trailingMarginForAccessory:(id)accessory
{
  [accessory intrinsicContentSize];
  v5 = v4;
  +[SearchUIUtilities imageAccessoryAdditionalCompactHorizontalMargin];
  v7 = v6;
  rowModel = [(SearchUICardSectionView *)self rowModel];
  rowModel2 = [(SearchUICardSectionView *)self rowModel];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    [MEMORY[0x1E69D9248] defaultLayoutMargins];
    v12 = v13;
    goto LABEL_7;
  }

  useCompactVersionOfUI = [rowModel useCompactVersionOfUI];

  if (!useCompactVersionOfUI || ([MEMORY[0x1E69D9240] isMacOS] & 1) != 0)
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
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  return cardSection;
}

- (void)updateWithRowModel:(id)model
{
  [(SearchUICardSectionView *)self setRowModel:model];

  [(SearchUICardSectionView *)self setUserReportMenu:0];
}

- (void)openPunchout:(id)punchout triggerEvent:(unint64_t)event
{
  punchoutCopy = punchout;
  v12 = objc_opt_new();
  [v12 setPunchout:punchoutCopy];

  v7 = objc_opt_new();
  [v7 setCommand:v12];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v10 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
  v11 = [SearchUICommandHandler handlerForButton:v7 rowModel:rowModel environment:v10];
  [v11 executeWithTriggerEvent:event];
}

- (void)didInvalidateSizeAnimate:(BOOL)animate
{
  animateCopy = animate;
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v6 = objc_opt_respondsToSelector();

  feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
  feedbackDelegate3 = feedbackDelegate2;
  if (v6)
  {
    [feedbackDelegate2 cardSectionViewDidInvalidateSize:self animate:animateCopy];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return;
    }

    feedbackDelegate3 = [(SearchUICardSectionView *)self feedbackDelegate];
    [feedbackDelegate3 cardSectionViewDidInvalidateSize:self];
  }
}

- (void)requestRemovalFromEnclosingView
{
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
    rowModel = [(SearchUICardSectionView *)self rowModel];
    [feedbackDelegate2 removeRowModel:rowModel completion:0];
  }

  [(SearchUICardSectionView *)self didInvalidateSizeAnimate:1];
}

- (BOOL)configureUserReportButton:(id)button
{
  buttonCopy = button;
  userReportMenu = [(SearchUICardSectionView *)self userReportMenu];

  if (!userReportMenu)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    [v6 setCommand:v7];

    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    v9 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

    if (buttonCopy)
    {
      selfCopy = buttonCopy;
    }

    else
    {
      selfCopy = self;
    }

    [v9 setSourceView:selfCopy];
    rowModel = [(SearchUICardSectionView *)self rowModel];
    v12 = [SearchUICommandHandler handlerForButton:v6 rowModel:rowModel environment:v9];

    if ([v12 prefersContextMenu])
    {
      contextMenu = [v12 contextMenu];
      [(SearchUICardSectionView *)self setUserReportMenu:contextMenu];
    }
  }

  userReportMenu2 = [(SearchUICardSectionView *)self userReportMenu];
  children = [userReportMenu2 children];
  v16 = [children count];

  if (v16)
  {
    [(SearchUICardSectionView *)buttonCopy setMenu:userReportMenu2];
  }

  return v16 != 0;
}

- (double)highlightFrameCornerRadius
{
  highlightReferenceView = [(SearchUICardSectionView *)self highlightReferenceView];

  if (!highlightReferenceView)
  {
    return -1.0;
  }

  highlightReferenceView2 = [(SearchUICardSectionView *)self highlightReferenceView];
  layer = [highlightReferenceView2 layer];
  [layer cornerRadius];
  v7 = v6;

  return v7;
}

- (void)setShouldShowTabIndicator:(BOOL)indicator
{
  if (self->_shouldShowTabIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_shouldShowTabIndicator = indicator;
    if (indicator)
    {
      secondaryCommandView = [(SearchUICardSectionView *)self secondaryCommandView];

      if (!secondaryCommandView)
      {
        v7 = objc_opt_new();
        [(SearchUICardSectionView *)self setSecondaryCommandView:v7];

        feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
        secondaryCommandView2 = [(SearchUICardSectionView *)self secondaryCommandView];
        [secondaryCommandView2 setFeedbackDelegate:feedbackDelegate];

        rowModel = [(SearchUICardSectionView *)self rowModel];
        secondaryCommandView3 = [(SearchUICardSectionView *)self secondaryCommandView];
        [secondaryCommandView3 setRowModel:rowModel];

        secondaryCommandView4 = [(SearchUICardSectionView *)self secondaryCommandView];
        [SearchUIAutoLayout requireIntrinsicSizeForView:secondaryCommandView4];

        +[SearchUIUtilities standardTableCellContentInset];
        v14 = -v13;
        secondaryCommandView5 = [(SearchUICardSectionView *)self secondaryCommandView];
        [secondaryCommandView5 setCustomAlignmentRectInsets:{0.0, 0.0, 0.0, v14}];

        secondaryCommandView6 = [(SearchUICardSectionView *)self secondaryCommandView];
        [(SearchUICardSectionView *)self addArrangedSubview:secondaryCommandView6];
      }
    }

    secondaryCommandView7 = [(SearchUICardSectionView *)self secondaryCommandView];
    [secondaryCommandView7 setHidden:!indicatorCopy];
  }
}

- (void)setFeedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_feedbackDelegate, delegateCopy);
  secondaryCommandView = [(SearchUICardSectionView *)self secondaryCommandView];
  [secondaryCommandView setFeedbackDelegate:delegateCopy];
}

- (void)setRowModel:(id)model
{
  objc_storeStrong(&self->_rowModel, model);
  rowModel = [(SearchUICardSectionView *)self rowModel];
  secondaryCommandView = [(SearchUICardSectionView *)self secondaryCommandView];
  [secondaryCommandView setRowModel:rowModel];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = SearchUICardSectionView;
  v4 = [(SearchUICardSectionView *)&v8 description];
  v5 = [v3 stringWithString:v4];

  section = [(SearchUICardSectionView *)self section];
  [v5 appendFormat:@"\t %@", section];

  return v5;
}

@end