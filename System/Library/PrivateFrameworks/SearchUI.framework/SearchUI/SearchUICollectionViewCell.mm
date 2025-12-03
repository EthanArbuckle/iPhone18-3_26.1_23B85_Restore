@interface SearchUICollectionViewCell
- (BOOL)_appliesLayoutAttributesMaskingToReusableView;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)highlightFrame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)visibleResults;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)minimumSeparatorInsets;
- (SearchUIBackgroundColorView)backgroundPlatterView;
- (SearchUICollectionViewCell)initWithFrame:(CGRect)frame;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIFeedbackDelegateInternal)delegate;
- (UIView)dummyBackgroundView;
- (id)focusEffect;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)addLinkLayer:(id)layer;
- (void)animateFocusScaleDownEffectIsHighlighted:(BOOL)highlighted isSelected:(BOOL)selected appearance:(id)appearance;
- (void)applyLayoutAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSearchui_focusStyle:(int64_t)style;
- (void)setSectionBackgroundStyle:(int64_t)style;
- (void)setSelected:(BOOL)selected;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCornerMasks;
- (void)updateCornerRadius:(double)radius;
- (void)updateFocusStyleWithAppearance:(id)appearance;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICollectionViewCell

- (BOOL)_appliesLayoutAttributesMaskingToReusableView
{
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  cardSection = [rowModel cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (UIView)dummyBackgroundView
{
  dummyBackgroundView = self->_dummyBackgroundView;
  if (!dummyBackgroundView)
  {
    v4 = objc_opt_new();
    v5 = self->_dummyBackgroundView;
    self->_dummyBackgroundView = v4;

    dummyBackgroundView = self->_dummyBackgroundView;
  }

  return dummyBackgroundView;
}

- (void)updateCornerMasks
{
  maskedCorners = [(SearchUICollectionViewCell *)self maskedCorners];
  layer = [(SearchUICollectionViewCell *)self layer];
  [layer setMaskedCorners:maskedCorners];

  maskedCorners2 = [(SearchUICollectionViewCell *)self maskedCorners];
  contentView = [(SearchUICollectionViewCell *)self contentView];
  layer2 = [contentView layer];
  [layer2 setMaskedCorners:maskedCorners2];

  maskedCorners3 = [(SearchUICollectionViewCell *)self maskedCorners];
  backgroundView = [(SearchUICollectionViewCell *)self backgroundView];
  layer3 = [backgroundView layer];
  [layer3 setMaskedCorners:maskedCorners3];

  maskedCorners4 = [(SearchUICollectionViewCell *)self maskedCorners];
  dummyBackgroundView = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  layer4 = [dummyBackgroundView layer];
  [layer4 setMaskedCorners:maskedCorners4];

  maskedCorners5 = [(SearchUICollectionViewCell *)self maskedCorners];
  selectedBackgroundView = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  layer5 = [selectedBackgroundView layer];
  [layer5 setMaskedCorners:maskedCorners5];

  maskedCorners6 = [(SearchUICollectionViewCell *)self maskedCorners];
  backgroundPlatterView = [(SearchUICollectionViewCell *)self backgroundPlatterView];
  [backgroundPlatterView setMaskedCorners:maskedCorners6];
}

- (SearchUIBackgroundColorView)backgroundPlatterView
{
  backgroundPlatterView = self->_backgroundPlatterView;
  if (!backgroundPlatterView)
  {
    v4 = objc_opt_new();
    [(SearchUIBackgroundColorView *)v4 setDelegate:self];
    v5 = self->_backgroundPlatterView;
    self->_backgroundPlatterView = v4;

    backgroundPlatterView = self->_backgroundPlatterView;
  }

  return backgroundPlatterView;
}

- (SearchUIFeedbackDelegateInternal)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v3 didMoveToWindow];
  [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v13 layoutSubviews];
  contentView = [(SearchUICollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sizingView = [(SearchUICollectionViewCell *)self sizingView];
  [sizingView setFrame:{v5, v7, v9, v11}];

  [(SearchUICollectionViewCell *)self bounds];
  [(CALayer *)self->_linkLayer setFrame:?];
  [(SearchUICollectionViewCell *)self preferredCornerRadius];
  [(SearchUICollectionViewCell *)self updateCornerRadius:?];
}

- (NSDirectionalEdgeInsets)minimumSeparatorInsets
{
  top = self->_minimumSeparatorInsets.top;
  leading = self->_minimumSeparatorInsets.leading;
  bottom = self->_minimumSeparatorInsets.bottom;
  trailing = self->_minimumSeparatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSArray)visibleResults
{
  v6[1] = *MEMORY[0x1E69E9840];
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  identifyingResult = [rowModel identifyingResult];

  if (identifyingResult)
  {
    v6[0] = identifyingResult;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SearchUICollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SearchUICollectionViewCell;
  v3 = [(SearchUICollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SearchUICollectionViewCell *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    v6 = objc_opt_new();
    [(SearchUICollectionViewCell *)v4 setSelectedBackgroundView:v6];

    [(SearchUICollectionViewCell *)v4 setMaskedCorners:SearchUIDefaultCornerMask];
    [(SearchUICollectionViewCell *)v4 setSearchui_focusStyle:0];
    [(SearchUICollectionViewCell *)v4 _continuousCornerRadius];
    [(SearchUICollectionViewCell *)v4 setPreferredCornerRadius:?];
  }

  return v4;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  dragSource = [(SearchUICollectionViewCell *)self dragSource];

  if (dragSource)
  {
    dragSource2 = [(SearchUICollectionViewCell *)self dragSource];
    [dragSource2 setDragObject:modelCopy];
  }

  else
  {
    dragSource2 = [(SearchUICollectionViewCell *)self delegate];
    v7 = [SearchUIDragSource dragSourceForView:self dragObject:modelCopy feedbackDelegate:dragSource2];
    [(SearchUICollectionViewCell *)self setDragSource:v7];
  }

  [(SearchUICollectionViewCell *)self setBackgroundConfiguration:0];
  [(SearchUICollectionViewCell *)self setRowModel:modelCopy];
  [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SearchUICollectionViewCell_updateWithRowModel___block_invoke;
  block[3] = &unk_1E85B24C8;
  block[4] = self;
  if (updateWithRowModel__onceToken != -1)
  {
    dispatch_once(&updateWithRowModel__onceToken, block);
  }

  if (updateWithRowModel__safeToUpdateMasking == 1)
  {
    _layoutAttributes = [(SearchUICollectionViewCell *)self _layoutAttributes];
    [(SearchUICollectionViewCell *)self _updateMaskingUsingAttributes:_layoutAttributes];
  }

  [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
}

uint64_t __49__SearchUICollectionViewCell_updateWithRowModel___block_invoke()
{
  if (objc_opt_respondsToSelector())
  {
    result = objc_opt_respondsToSelector();
  }

  else
  {
    result = 0;
  }

  updateWithRowModel__safeToUpdateMasking = result & 1;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  if ([(SearchUICollectionViewCell *)self useSystemSizing])
  {
    v20.receiver = self;
    v20.super_class = SearchUICollectionViewCell;
    *&v10 = priority;
    *&v11 = fittingPriority;
    [(SearchUICollectionViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    width = v13;
  }

  else
  {
    sizingView = [(SearchUICollectionViewCell *)self sizingView];
    v15 = sizingView;
    if (priority == 1000.0)
    {
      [sizingView effectiveLayoutSizeFittingSize:{width, 0.0}];
    }

    else
    {
      [sizingView effectiveLayoutSizeFittingSize:{1000.0, 1000.0}];
      width = v17;
    }

    v18 = v16;

    if (v18 == 0.0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v18;
    }
  }

  v19 = width;
  result.height = v12;
  result.width = v19;
  return result;
}

- (void)setSectionBackgroundStyle:(int64_t)style
{
  if (self->_sectionBackgroundStyle != style)
  {
    self->_sectionBackgroundStyle = style;
    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setSearchui_focusStyle:(int64_t)style
{
  resolvedFocusStyle = [(SearchUICollectionViewCell *)self resolvedFocusStyle];
  if (!style || resolvedFocusStyle != style)
  {
    if (!style)
    {
      style = [SearchUIFocusStyleUtilities bestFocusStyleForCell:self];
    }

    [(SearchUICollectionViewCell *)self setResolvedFocusStyle:style];

    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUICollectionViewCell *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUICollectionViewCell *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v57.receiver = self;
  v57.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v57 tlk_updateForAppearance:appearanceCopy];
  sectionBackgroundStyle = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  sectionType = [rowModel sectionType];

  rowModel2 = [(SearchUICollectionViewCell *)self rowModel];
  fillsBackgroundWithContent = [rowModel2 fillsBackgroundWithContent];

  if (sectionBackgroundStyle != 5)
  {
    rowModel3 = [(SearchUICollectionViewCell *)self rowModel];
    backgroundColor = [rowModel3 backgroundColor];
    sectionBackgroundStyle2 = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];
    v19 = sectionBackgroundStyle2;
    v23 = ((sectionBackgroundStyle - 1) < 2 || sectionBackgroundStyle2 == 3 || backgroundColor != 0) && sectionBackgroundStyle != 4;
    backgroundPlatterView = [(SearchUICollectionViewCell *)self backgroundPlatterView];
    v56 = backgroundColor;
    [backgroundPlatterView setColor:backgroundColor];

    backgroundImage = [rowModel3 backgroundImage];
    backgroundPlatterView2 = [(SearchUICollectionViewCell *)self backgroundPlatterView];
    [backgroundPlatterView2 setBackgroundImage:backgroundImage];

    if (v23)
    {
      [(SearchUICollectionViewCell *)self backgroundPlatterView];
    }

    else
    {
      [(SearchUICollectionViewCell *)self dummyBackgroundView];
    }
    v30 = ;
    [(SearchUICollectionViewCell *)self setBackgroundView:v30];

    if (sectionBackgroundStyle == 2)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 1.0;
    }

    backgroundView = [(SearchUICollectionViewCell *)self backgroundView];
    [backgroundView setAlpha:v31];

    cardSection = [rowModel3 cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = &SearchUIHeroCardSectionViewCornerRadiusForLeadingTrailingView;
      if (sectionType != 3)
      {
        v35 = &SearchUIHeroCardSectionViewCornerRadius;
      }

      v15 = *v35;
      goto LABEL_53;
    }

    identifyingResult = [rowModel3 identifyingResult];
    identifier = [identifyingResult identifier];
    v38 = [identifier isEqualToString:@"com.apple.other:show_more"];

    if (v38)
    {
      v15 = -1.0;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        if ([MEMORY[0x1E69D9240] isLargePhone])
        {
          v39 = 13.5;
        }

        else
        {
          v39 = 12.2778;
        }

        v40 = MEMORY[0x1E69D91A8];
        contentView = [(SearchUICollectionViewCell *)self contentView];
        [v40 deviceScaledRoundedValue:contentView forView:v39];
        v15 = v42;
      }

      goto LABEL_53;
    }

    if (v19 == 3)
    {
      +[SearchUIAutoLayout roundedItemCornerRadius];
LABEL_52:
      v15 = v43;
LABEL_53:

      goto LABEL_54;
    }

    if ((v23 | fillsBackgroundWithContent))
    {
LABEL_39:
      [(SearchUICollectionViewCell *)self highlightFrameCornerRadius];
      if (v44 == -1.0)
      {
        +[SearchUIAutoLayout sectionCornerRadius];
      }

      else
      {
        [(SearchUICollectionViewCell *)self highlightFrameCornerRadius];
      }

      goto LABEL_52;
    }

    rowModel4 = [(SearchUICollectionViewCell *)self rowModel];
    if ([rowModel4 hasCustomCornerRounding])
    {
      sectionBackgroundStyle3 = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];

      if (sectionBackgroundStyle3 == 4)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v15 = 0.0;
    if (!sectionType)
    {
      if ([MEMORY[0x1E69D9240] isIpad])
      {
        if (_UISolariumEnabled())
        {
          if (([MEMORY[0x1E69D9240] isSiri] & 1) == 0)
          {
            contentView2 = [(SearchUICollectionViewCell *)self contentView];
            [contentView2 bounds];
            v49 = v48;

            v15 = 22.0;
            if (v49 <= 52.0)
            {
              contentView3 = [(SearchUICollectionViewCell *)self contentView];
              [contentView3 bounds];
              v15 = v51 * 0.5;
            }
          }
        }
      }
    }

    goto LABEL_53;
  }

  dummyBackgroundView = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  [(SearchUICollectionViewCell *)self setBackgroundView:dummyBackgroundView];

  rowModel5 = [(SearchUICollectionViewCell *)self rowModel];
  cardSection2 = [rowModel5 cardSection];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if ((v13 & 1) != 0 && sectionType == 3)
  {
    +[SearchUIAutoLayout sectionCornerRadius];
    v15 = v14;
  }

  else
  {
    rowModel6 = [(SearchUICollectionViewCell *)self rowModel];
    cardSection3 = [rowModel6 cardSection];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & (sectionType == 1)) != 0)
    {
      v15 = 20.0;
    }

    else
    {
      v15 = 4.0;
    }
  }

LABEL_54:
  [(SearchUICollectionViewCell *)self setPreferredCornerRadius:v15];
  [(SearchUICollectionViewCell *)self updateCornerRadius:v15];
  rowModel7 = [(SearchUICollectionViewCell *)self rowModel];
  if ([rowModel7 hasCustomCornerRounding])
  {
    rowModel8 = [(SearchUICollectionViewCell *)self rowModel];
    -[SearchUICollectionViewCell setMaskedCorners:](self, "setMaskedCorners:", [rowModel8 cornerMask]);
  }

  else
  {
    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
  }

  traitCollection = [(SearchUICollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
  }

  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:appearanceCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 setHighlighted:highlighted];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 setSelected:selected];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)updateFocusStyleWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  backgroundView = [(SearchUICollectionViewCell *)self backgroundView];
  [backgroundView frame];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  selectedBackgroundView = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  layer = [selectedBackgroundView layer];
  [layer setShadowOpacity:0.0];

  resolvedFocusStyle = [(SearchUICollectionViewCell *)self resolvedFocusStyle];
  v16 = 0;
  if (resolvedFocusStyle <= 3)
  {
    if (resolvedFocusStyle >= 2)
    {
      v17 = 0;
      if (resolvedFocusStyle == 3)
      {
        +[SearchUIFocusStyleUtilities secondaryHaloProminence];
        +[SearchUIAutoLayout selectionBorderWidth];
        v22 = v21;
        highlightReferenceView = [(SearchUICollectionViewCell *)self highlightReferenceView];
        v24 = highlightReferenceView;
        if (highlightReferenceView)
        {
          selfCopy = highlightReferenceView;
        }

        else
        {
          selfCopy = self;
        }

        v26 = selfCopy;

        if ([(SearchUICollectionViewCell *)self highlightFrameMatchesHighlightView])
        {
          [(SearchUICollectionViewCell *)v26 bounds];
          [(SearchUICollectionViewCell *)v26 convertRect:self toView:?];
        }

        else
        {
          [(SearchUICollectionViewCell *)self highlightFrame];
        }

        v54 = v27;
        v55 = v28;
        v56 = v29;
        v57 = v30;
        if (CGRectEqualToRect(*&v27, *MEMORY[0x1E695F058]))
        {
          [(SearchUICollectionViewCell *)self bounds];
          v54 = v58;
          v55 = v59;
          v56 = v60;
          v57 = v61;
        }

        v90.origin.x = v54;
        v90.origin.y = v55;
        v90.size.width = v56;
        v90.size.height = v57;
        v91 = CGRectInset(v90, -v22, -v22);
        x = v91.origin.x;
        y = v91.origin.y;
        width = v91.size.width;
        height = v91.size.height;
        [(SearchUICollectionViewCell *)self highlightFrameCornerRadius];
        if (v62 == -1.0)
        {
          layer2 = [(SearchUICollectionViewCell *)v26 layer];
          [layer2 cornerRadius];
          v65 = v64;
        }

        else
        {
          [(SearchUICollectionViewCell *)self highlightFrameCornerRadius];
          v65 = v66;
        }

        selectedBackgroundView2 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        layer3 = [selectedBackgroundView2 layer];
        [layer3 setCornerRadius:v22 + v65];

        layer4 = [(SearchUICollectionViewCell *)v26 layer];
        cornerCurve = [layer4 cornerCurve];
        selectedBackgroundView3 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        layer5 = [selectedBackgroundView3 layer];
        [layer5 setCornerCurve:cornerCurve];

        layer6 = [(SearchUICollectionViewCell *)v26 layer];
        maskedCorners = [layer6 maskedCorners];
        selectedBackgroundView4 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        layer7 = [selectedBackgroundView4 layer];
        [layer7 setMaskedCorners:maskedCorners];

        v16 = 0;
        v17 = 1;
      }

      goto LABEL_44;
    }

    if (![MEMORY[0x1E69D9240] isIpad] || (objc_msgSend(MEMORY[0x1E69D9240], "isSiri") & 1) != 0 || !_UISolariumEnabled())
    {
      goto LABEL_15;
    }

    rowModel = [(SearchUICollectionViewCell *)self rowModel];
    if (![rowModel sectionType])
    {
      rowModel2 = [(SearchUICollectionViewCell *)self rowModel];
      fillsBackgroundWithContent = [rowModel2 fillsBackgroundWithContent];

      if (fillsBackgroundWithContent)
      {
LABEL_15:
        v16 = 0;
LABEL_35:
        v17 = 0;
        goto LABEL_44;
      }

      rowModel = [(SearchUICollectionViewCell *)self backgroundView];
      [rowModel frame];
      v87 = CGRectInset(v86, 8.0, 0.0);
      x = v87.origin.x;
      y = v87.origin.y;
      width = v87.size.width;
      height = v87.size.height;
    }

    goto LABEL_15;
  }

  if ((resolvedFocusStyle - 5) < 2)
  {
LABEL_6:
    v17 = 0;
    v16 = 1;
    goto LABEL_44;
  }

  if (resolvedFocusStyle == 4)
  {
    rowModel3 = [(SearchUICollectionViewCell *)self rowModel];
    isTappable = [rowModel3 isTappable];

    if (height * 0.5 <= 36.0)
    {
      v33 = height * 0.5;
    }

    else
    {
      v33 = 36.0;
    }

    selectedBackgroundView5 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [selectedBackgroundView5 _setContinuousCornerRadius:v33];

    if (_UISolariumEnabled())
    {
      if (height * 0.5 <= 46.0)
      {
        v35 = height * 0.5;
      }

      else
      {
        v35 = 46.0;
      }

      selectedBackgroundView6 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      [selectedBackgroundView6 _setContinuousCornerRadius:v35];

      [(SearchUICollectionViewCell *)self _setFocusStyle:0];
      [(SearchUICollectionViewCell *)self bounds];
      v89 = CGRectInset(v88, 14.0, 14.0);
      x = v89.origin.x;
      y = v89.origin.y;
      width = v89.size.width;
      height = v89.size.height;
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];
      selectedBackgroundView7 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      layer8 = [selectedBackgroundView7 layer];
      [layer8 setShadowColor:cGColor];

      selectedBackgroundView8 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      layer9 = [selectedBackgroundView8 layer];
      [layer9 setShadowOffset:{0.0, 12.0}];

      selectedBackgroundView9 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      layer10 = [selectedBackgroundView9 layer];
      [layer10 setShadowRadius:18.0];

      selectedBackgroundView10 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      layer11 = [selectedBackgroundView10 layer];
      LODWORD(v47) = 1050253722;
      [layer11 setShadowOpacity:v47];
    }

    v16 = isTappable ^ 1u;
    v48 = [MEMORY[0x1E69DC888] colorWithWhite:0.921568627 alpha:1.0];
    selectedBackgroundView11 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [selectedBackgroundView11 setBackgroundColor:v48];

    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
    if (-[SearchUICollectionViewCell isSelected](self, "isSelected") && (-[SearchUICollectionViewCell rowModel](self, "rowModel"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 isTappable], v50, v51))
    {
      v52 = [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:objc_msgSend(appearanceCopy isDark:{"isVibrant"), 0}];
      [v52 overrideAppearanceForView:self];
    }

    else
    {
      [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:self];
    }

    selectedBackgroundView12 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [selectedBackgroundView12 _continuousCornerRadius];
    [(SearchUICollectionViewCell *)self setPreferredCornerRadius:?];

    goto LABEL_35;
  }

  if (resolvedFocusStyle == 7)
  {
    [(SearchUICollectionViewCell *)self animateFocusScaleDownEffectIsHighlighted:[(SearchUICollectionViewCell *)self isHighlighted] isSelected:[(SearchUICollectionViewCell *)self isSelected] appearance:appearanceCopy];
    goto LABEL_6;
  }

  v17 = 0;
LABEL_44:
  selectedBackgroundView13 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView13 setFrame:{x, y, width, height}];

  selectedBackgroundView14 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView14 setHidden:v16];

  v79 = +[SearchUIFocusStyleUtilities secondaryHaloProminence];
  selectedBackgroundView15 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView15 setProminence:v79];

  v81 = 0.0;
  if (v17)
  {
    +[SearchUIAutoLayout selectionBorderWidth];
    v81 = v82;
  }

  selectedBackgroundView16 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView16 setBorderWidth:v81];
}

- (void)animateFocusScaleDownEffectIsHighlighted:(BOOL)highlighted isSelected:(BOOL)selected appearance:(id)appearance
{
  selectedCopy = selected;
  highlightedCopy = highlighted;
  appearanceCopy = appearance;
  highlightReferenceView = [(SearchUICollectionViewCell *)self highlightReferenceView];
  v10 = highlightReferenceView;
  if (highlightReferenceView)
  {
    selfCopy = highlightReferenceView;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  v13 = highlightedCopy || selectedCopy;
  if (highlightedCopy || selectedCopy)
  {
    selectedOverlayView = [(SearchUICollectionViewCell *)self selectedOverlayView];

    if (!selectedOverlayView)
    {
      v15 = objc_opt_new();
      [(SearchUICollectionViewCell *)self setSelectedOverlayView:v15];

      selectedOverlayView2 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [selectedOverlayView2 setHidden:1];
    }
  }

  if (v12)
  {
    [(SearchUICollectionViewCell *)v12 transform];
  }

  else
  {
    memset(&v74, 0, sizeof(v74));
  }

  v17 = CGAffineTransformIsIdentity(&v74) ^ highlightedCopy;
  selectedOverlayView3 = [(SearchUICollectionViewCell *)self selectedOverlayView];
  if (selectedOverlayView3)
  {
    selectedOverlayView4 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v20 = v13 ^ [selectedOverlayView4 isHidden];
  }

  else
  {
    v20 = v13 ^ 1;
  }

  if ((v17 & v20 & 1) == 0)
  {
    v66 = appearanceCopy;
    selectedOverlayView5 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    superview = [selectedOverlayView5 superview];

    if (superview != v12)
    {
      selectedOverlayView6 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [selectedOverlayView6 removeFromSuperview];

      selectedOverlayView7 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [(SearchUICollectionViewCell *)v12 addSubview:selectedOverlayView7];
    }

    [(SearchUICollectionViewCell *)v12 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    selectedOverlayView8 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    [selectedOverlayView8 setFrame:{v26, v28, v30, v32}];

    layer = [(SearchUICollectionViewCell *)v12 layer];
    [layer cornerRadius];
    v36 = v35;
    selectedOverlayView9 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    layer2 = [selectedOverlayView9 layer];
    [layer2 setCornerRadius:v36];

    layer3 = [(SearchUICollectionViewCell *)v12 layer];
    cornerCurve = [layer3 cornerCurve];
    selectedOverlayView10 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    layer4 = [selectedOverlayView10 layer];
    [layer4 setCornerCurve:cornerCurve];

    layer5 = [(SearchUICollectionViewCell *)v12 layer];
    maskedCorners = [layer5 maskedCorners];
    selectedOverlayView11 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    layer6 = [selectedOverlayView11 layer];
    [layer6 setMaskedCorners:maskedCorners];

    v47 = [v66 colorForProminence:3];
    rowModel = [(SearchUICollectionViewCell *)self rowModel];
    cardSection = [rowModel cardSection];
    objc_opt_class();
    LOBYTE(layer6) = objc_opt_isKindOfClass();

    if (layer6)
    {
      rowModel2 = [(SearchUICollectionViewCell *)self rowModel];
      cardSection2 = [rowModel2 cardSection];

      if ([cardSection2 useAppIconMetrics])
      {
        thumbnail = [cardSection2 thumbnail];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          blackColor = [MEMORY[0x1E69DC888] blackColor];
          v55 = [blackColor colorWithAlphaComponent:0.25];

          v47 = v55;
        }
      }
    }

    selectedOverlayView12 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    [selectedOverlayView12 setBackgroundColor:v47];

    if (v13)
    {
      selectedOverlayView13 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      isHidden = [selectedOverlayView13 isHidden];

      if (isHidden)
      {
        selectedOverlayView14 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [selectedOverlayView14 setHidden:0];

        selectedOverlayView15 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [selectedOverlayView15 setAlpha:0.0];

        selectedOverlayView16 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [(SearchUICollectionViewCell *)self bringSubviewToFront:selectedOverlayView16];
      }
    }

    v62 = 0.25;
    v63 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDuration:0.25 bounce:0.35];
    if ((!highlightedCopy & (v20 | v17 ^ 1)) == 0)
    {
      v62 = 0.0;
    }

    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke;
    v72[3] = &unk_1E85B25B8;
    v72[4] = self;
    v73 = v13;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke_2;
    v70[3] = &unk_1E85B25E0;
    v70[4] = self;
    v71 = v13;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v72 options:v70 animations:0.2 completion:v62];
    appearanceCopy = v66;
    if ((v17 & 1) == 0)
    {
      memset(&v74, 0, sizeof(v74));
      if (highlightedCopy)
      {
        CGAffineTransformMakeScale(&v74, 0.9, 0.9);
      }

      else
      {
        v64 = *(MEMORY[0x1E695EFD0] + 16);
        *&v74.a = *MEMORY[0x1E695EFD0];
        *&v74.c = v64;
        *&v74.tx = *(MEMORY[0x1E695EFD0] + 32);
      }

      v65 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v63 timingParameters:0.0];
      [(SearchUICollectionViewCell *)self setSelectionAnimator:v65];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke_3;
      v67[3] = &unk_1E85B2608;
      v68 = v12;
      v69 = v74;
      [v65 addAnimations:v67];
      [v65 startAnimationAfterDelay:v62];
    }
  }
}

void __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) selectedOverlayView];
  [v2 setAlpha:v1];
}

void __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) selectedOverlayView];
  [v2 setHidden:(v1 & 1) == 0];
}

uint64_t __93__SearchUICollectionViewCell_animateFocusScaleDownEffectIsHighlighted_isSelected_appearance___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (id)focusEffect
{
  if ([(SearchUICollectionViewCell *)self resolvedFocusStyle]== 2)
  {
    effect = [MEMORY[0x1E69DCA28] effect];
    [effect setContainerView:self];
  }

  else
  {
    effect = 0;
  }

  return effect;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  [(SearchUICollectionViewCell *)self minimumSeparatorInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (-[SearchUICollectionViewCell useSystemSizing](self, "useSystemSizing") && (-[SearchUICollectionViewCell rowModel](self, "rowModel"), v16 = objc_claimAutoreleasedReturnValue(), [v16 cardSection], v17 = objc_claimAutoreleasedReturnValue(), v18 = +[SnippetUIUtilities supportsConfigurationForCardSection:](SnippetUIUtilities, "supportsConfigurationForCardSection:", v17), v17, v16, !v18))
  {
    v52.receiver = self;
    v52.super_class = SearchUICollectionViewCell;
    [(SearchUICollectionViewCell *)&v52 _preferredSeparatorInsetsForProposedInsets:top, leading, bottom, trailing];
    top = v42;
    leading = v43;
    bottom = v44;
    trailing = v45;
  }

  else
  {
    sfSeparatorStyle = [(SearchUICollectionViewCell *)self sfSeparatorStyle];
    if (sfSeparatorStyle != 1)
    {
      v20 = sfSeparatorStyle;
      contentView = [(SearchUICollectionViewCell *)self contentView];
      [contentView bounds];
      v23 = v22;
      v25 = v24;
      v50 = top;
      v51 = bottom;
      v26 = v11;
      v27 = v15;
      v29 = v28;
      v30 = v9;
      v31 = v13;
      v33 = v32;
      sizingView = [(SearchUICollectionViewCell *)self sizingView];
      v35 = v29;
      v15 = v27;
      v11 = v26;
      v36 = v33;
      v13 = v31;
      v9 = v30;
      top = v50;
      bottom = v51;
      [sizingView setFrame:{v23, v25, v35, v36}];

      sizingView2 = [(SearchUICollectionViewCell *)self sizingView];
      [sizingView2 layoutIfNeeded];

      leadingView = [(SearchUICollectionViewCell *)self leadingView];
      leadingTextView = [(SearchUICollectionViewCell *)self leadingTextView];
      [SearchUICardSectionView separatorInsetsForStyle:v20 cellView:self leadingView:leadingView leadingTextView:leadingTextView];
      leading = v40;
      trailing = v41;

      [(SearchUICollectionViewCell *)self setNeedsLayout];
    }
  }

  if (top >= v9)
  {
    v46 = top;
  }

  else
  {
    v46 = v9;
  }

  if (leading >= v11)
  {
    v47 = leading;
  }

  else
  {
    v47 = v11;
  }

  if (bottom >= v13)
  {
    v48 = bottom;
  }

  else
  {
    v48 = v13;
  }

  if (trailing >= v15)
  {
    v49 = trailing;
  }

  else
  {
    v49 = v15;
  }

  result.trailing = v49;
  result.bottom = v48;
  result.leading = v47;
  result.top = v46;
  return result;
}

- (void)updateCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (radius == -1.0)
  {
    [(SearchUICollectionViewCell *)self bounds];
    radiusCopy = v5 * 0.5;
  }

  [(SearchUICollectionViewCell *)self bounds];
  if (radiusCopy >= v6 * 0.5)
  {
    radiusCopy = v6 * 0.5;
  }

  [(SearchUICollectionViewCell *)self _setContinuousCornerRadius:radiusCopy];
  contentView = [(SearchUICollectionViewCell *)self contentView];
  [contentView _setContinuousCornerRadius:radiusCopy];

  backgroundPlatterView = [(SearchUICollectionViewCell *)self backgroundPlatterView];
  [backgroundPlatterView _setContinuousCornerRadius:radiusCopy];

  dummyBackgroundView = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  [dummyBackgroundView _setContinuousCornerRadius:radiusCopy];

  selectedBackgroundView = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView borderWidth];
  v12 = radiusCopy + v11;
  selectedBackgroundView2 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView2 _setContinuousCornerRadius:v12];

  [(SearchUICollectionViewCell *)self updateCornerMasks];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v21 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  focusEffect = [(SearchUICollectionViewCell *)self focusEffect];

  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  cardSection = [rowModel cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!focusEffect)
  {
    nextFocusedView = [contextCopy nextFocusedView];

    if (nextFocusedView == self)
    {
      if ((isKindOfClass & 1) == 0)
      {
        [(SearchUICollectionViewCell *)self setSelected:1];
      }

      [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
      delegate = [(SearchUICollectionViewCell *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(SearchUICollectionViewCell *)self delegate];
        rowModel2 = [(SearchUICollectionViewCell *)self rowModel];
        identifyingResult = [rowModel2 identifyingResult];
        rowModel3 = [(SearchUICollectionViewCell *)self rowModel];
        cardSection2 = [rowModel3 cardSection];
        [delegate2 didUpdateKeyboardFocusToResult:identifyingResult cardSection:cardSection2];
      }
    }

    else
    {
      [(SearchUICollectionViewCell *)self setSelected:0];
    }
  }

  if (isKindOfClass)
  {
    [(SearchUICollectionViewCell *)self setHighlighted:0];
    nextFocusedView2 = [contextCopy nextFocusedView];
    viewForForcedFocus = [(SearchUICollectionViewCell *)self viewForForcedFocus];

    if (nextFocusedView2 == viewForForcedFocus)
    {
      [(SearchUICollectionViewCell *)self setupManualFocus];
    }

    else
    {
      [(SearchUICollectionViewCell *)self removeManualFocus];
    }
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  isForcingHeight = [attributesCopy isForcingHeight];
  [attributesCopy frame];
  v8.receiver = self;
  v8.super_class = SearchUICollectionViewCell;
  v6 = [(SearchUICollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];

  if (isForcingHeight)
  {
    [v6 frame];
    [v6 setFrame:?];
  }

  return v6;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 applyLayoutAttributes:attributes];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)addLinkLayer:(id)layer
{
  layerCopy = layer;
  linkLayer = [(SearchUICollectionViewCell *)self linkLayer];

  layer = [(SearchUICollectionViewCell *)self layer];
  v6 = layer;
  if (linkLayer)
  {
    linkLayer2 = [(SearchUICollectionViewCell *)self linkLayer];
    [v6 replaceSublayer:linkLayer2 with:layerCopy];
  }

  else
  {
    [layer addSublayer:layerCopy];
  }

  [(SearchUICollectionViewCell *)self setLinkLayer:layerCopy];
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (nextFocusedItem == previouslyFocusedItem)
  {
    delegate = [(SearchUICollectionViewCell *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(SearchUICollectionViewCell *)self delegate];
      [delegate2 didUpdateKeyboardFocusToResult:0 cardSection:0];
    }

    v7 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SearchUICollectionViewCell;
    v7 = [(SearchUICollectionViewCell *)&v12 shouldUpdateFocusInContext:contextCopy];
  }

  return v7;
}

- (CGRect)highlightFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v13 prepareForReuse];
  selectionAnimator = [(SearchUICollectionViewCell *)self selectionAnimator];

  if (selectionAnimator)
  {
    selectionAnimator2 = [(SearchUICollectionViewCell *)self selectionAnimator];
    [selectionAnimator2 stopAnimation:1];

    selectionAnimator3 = [(SearchUICollectionViewCell *)self selectionAnimator];
    [selectionAnimator3 finishAnimationAtPosition:2];

    [(SearchUICollectionViewCell *)self setSelectionAnimator:0];
  }

  [(SearchUICollectionViewCell *)self _removeAllAnimations:1];
  highlightReferenceView = [(SearchUICollectionViewCell *)self highlightReferenceView];
  v7 = highlightReferenceView;
  if (highlightReferenceView)
  {
    selfCopy = highlightReferenceView;
  }

  else
  {
    selfCopy = self;
  }

  v9 = selfCopy;

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v10;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(SearchUICollectionViewCell *)v9 setTransform:v12];
  selectedOverlayView = [(SearchUICollectionViewCell *)self selectedOverlayView];
  [selectedOverlayView setHidden:1];

  [SearchUIAppEntityAnnotator resetAnnotationForView:self];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [MEMORY[0x1E69D91A8] tappableControlViewForPoint:self inView:eventCopy withEvent:{x, y}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUICollectionViewCell;
    v10 = [(SearchUICollectionViewCell *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (SearchUICustomViewProvider)customViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_customViewProvider);

  return WeakRetained;
}

@end