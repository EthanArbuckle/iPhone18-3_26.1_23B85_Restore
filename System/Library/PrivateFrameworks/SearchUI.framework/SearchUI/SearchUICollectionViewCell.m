@interface SearchUICollectionViewCell
- (BOOL)_appliesLayoutAttributesMaskingToReusableView;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)highlightFrame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)visibleResults;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3;
- (NSDirectionalEdgeInsets)minimumSeparatorInsets;
- (SearchUIBackgroundColorView)backgroundPlatterView;
- (SearchUICollectionViewCell)initWithFrame:(CGRect)a3;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIFeedbackDelegateInternal)delegate;
- (UIView)dummyBackgroundView;
- (id)focusEffect;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)addLinkLayer:(id)a3;
- (void)animateFocusScaleDownEffectIsHighlighted:(BOOL)a3 isSelected:(BOOL)a4 appearance:(id)a5;
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSearchui_focusStyle:(int64_t)a3;
- (void)setSectionBackgroundStyle:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCornerMasks;
- (void)updateCornerRadius:(double)a3;
- (void)updateFocusStyleWithAppearance:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICollectionViewCell

- (BOOL)_appliesLayoutAttributesMaskingToReusableView
{
  v2 = [(SearchUICollectionViewCell *)self rowModel];
  v3 = [v2 cardSection];
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
  v3 = [(SearchUICollectionViewCell *)self maskedCorners];
  v4 = [(SearchUICollectionViewCell *)self layer];
  [v4 setMaskedCorners:v3];

  v5 = [(SearchUICollectionViewCell *)self maskedCorners];
  v6 = [(SearchUICollectionViewCell *)self contentView];
  v7 = [v6 layer];
  [v7 setMaskedCorners:v5];

  v8 = [(SearchUICollectionViewCell *)self maskedCorners];
  v9 = [(SearchUICollectionViewCell *)self backgroundView];
  v10 = [v9 layer];
  [v10 setMaskedCorners:v8];

  v11 = [(SearchUICollectionViewCell *)self maskedCorners];
  v12 = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  v13 = [v12 layer];
  [v13 setMaskedCorners:v11];

  v14 = [(SearchUICollectionViewCell *)self maskedCorners];
  v15 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  v16 = [v15 layer];
  [v16 setMaskedCorners:v14];

  v17 = [(SearchUICollectionViewCell *)self maskedCorners];
  v18 = [(SearchUICollectionViewCell *)self backgroundPlatterView];
  [v18 setMaskedCorners:v17];
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
  v3 = [(SearchUICollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUICollectionViewCell *)self sizingView];
  [v12 setFrame:{v5, v7, v9, v11}];

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
  v2 = [(SearchUICollectionViewCell *)self rowModel];
  v3 = [v2 identifyingResult];

  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SearchUICollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SearchUICollectionViewCell;
  v3 = [(SearchUICollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SearchUICollectionViewCell *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = objc_opt_new();
    [(SearchUICollectionViewCell *)v4 setSelectedBackgroundView:v6];

    [(SearchUICollectionViewCell *)v4 setMaskedCorners:SearchUIDefaultCornerMask];
    [(SearchUICollectionViewCell *)v4 setSearchui_focusStyle:0];
    [(SearchUICollectionViewCell *)v4 _continuousCornerRadius];
    [(SearchUICollectionViewCell *)v4 setPreferredCornerRadius:?];
  }

  return v4;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewCell *)self dragSource];

  if (v5)
  {
    v6 = [(SearchUICollectionViewCell *)self dragSource];
    [v6 setDragObject:v4];
  }

  else
  {
    v6 = [(SearchUICollectionViewCell *)self delegate];
    v7 = [SearchUIDragSource dragSourceForView:self dragObject:v4 feedbackDelegate:v6];
    [(SearchUICollectionViewCell *)self setDragSource:v7];
  }

  [(SearchUICollectionViewCell *)self setBackgroundConfiguration:0];
  [(SearchUICollectionViewCell *)self setRowModel:v4];
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
    v8 = [(SearchUICollectionViewCell *)self _layoutAttributes];
    [(SearchUICollectionViewCell *)self _updateMaskingUsingAttributes:v8];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  if ([(SearchUICollectionViewCell *)self useSystemSizing])
  {
    v20.receiver = self;
    v20.super_class = SearchUICollectionViewCell;
    *&v10 = a4;
    *&v11 = a5;
    [(SearchUICollectionViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    width = v13;
  }

  else
  {
    v14 = [(SearchUICollectionViewCell *)self sizingView];
    v15 = v14;
    if (a4 == 1000.0)
    {
      [v14 effectiveLayoutSizeFittingSize:{width, 0.0}];
    }

    else
    {
      [v14 effectiveLayoutSizeFittingSize:{1000.0, 1000.0}];
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

- (void)setSectionBackgroundStyle:(int64_t)a3
{
  if (self->_sectionBackgroundStyle != a3)
  {
    self->_sectionBackgroundStyle = a3;
    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setSearchui_focusStyle:(int64_t)a3
{
  v5 = [(SearchUICollectionViewCell *)self resolvedFocusStyle];
  if (!a3 || v5 != a3)
  {
    if (!a3)
    {
      a3 = [SearchUIFocusStyleUtilities bestFocusStyleForCell:self];
    }

    [(SearchUICollectionViewCell *)self setResolvedFocusStyle:a3];

    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUICollectionViewCell *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUICollectionViewCell *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v57 tlk_updateForAppearance:v4];
  v5 = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];
  v6 = [(SearchUICollectionViewCell *)self rowModel];
  v7 = [v6 sectionType];

  v8 = [(SearchUICollectionViewCell *)self rowModel];
  v9 = [v8 fillsBackgroundWithContent];

  if (v5 != 5)
  {
    v16 = [(SearchUICollectionViewCell *)self rowModel];
    v17 = [v16 backgroundColor];
    v18 = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];
    v19 = v18;
    v23 = ((v5 - 1) < 2 || v18 == 3 || v17 != 0) && v5 != 4;
    v24 = [(SearchUICollectionViewCell *)self backgroundPlatterView];
    v56 = v17;
    [v24 setColor:v17];

    v25 = [v16 backgroundImage];
    v26 = [(SearchUICollectionViewCell *)self backgroundPlatterView];
    [v26 setBackgroundImage:v25];

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

    if (v5 == 2)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 1.0;
    }

    v32 = [(SearchUICollectionViewCell *)self backgroundView];
    [v32 setAlpha:v31];

    v33 = [v16 cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = &SearchUIHeroCardSectionViewCornerRadiusForLeadingTrailingView;
      if (v7 != 3)
      {
        v35 = &SearchUIHeroCardSectionViewCornerRadius;
      }

      v15 = *v35;
      goto LABEL_53;
    }

    v36 = [v16 identifyingResult];
    v37 = [v36 identifier];
    v38 = [v37 isEqualToString:@"com.apple.other:show_more"];

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
        v41 = [(SearchUICollectionViewCell *)self contentView];
        [v40 deviceScaledRoundedValue:v41 forView:v39];
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

    if ((v23 | v9))
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

    v45 = [(SearchUICollectionViewCell *)self rowModel];
    if ([v45 hasCustomCornerRounding])
    {
      v46 = [(SearchUICollectionViewCell *)self sectionBackgroundStyle];

      if (v46 == 4)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v15 = 0.0;
    if (!v7)
    {
      if ([MEMORY[0x1E69D9240] isIpad])
      {
        if (_UISolariumEnabled())
        {
          if (([MEMORY[0x1E69D9240] isSiri] & 1) == 0)
          {
            v47 = [(SearchUICollectionViewCell *)self contentView];
            [v47 bounds];
            v49 = v48;

            v15 = 22.0;
            if (v49 <= 52.0)
            {
              v50 = [(SearchUICollectionViewCell *)self contentView];
              [v50 bounds];
              v15 = v51 * 0.5;
            }
          }
        }
      }
    }

    goto LABEL_53;
  }

  v10 = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  [(SearchUICollectionViewCell *)self setBackgroundView:v10];

  v11 = [(SearchUICollectionViewCell *)self rowModel];
  v12 = [v11 cardSection];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if ((v13 & 1) != 0 && v7 == 3)
  {
    +[SearchUIAutoLayout sectionCornerRadius];
    v15 = v14;
  }

  else
  {
    v27 = [(SearchUICollectionViewCell *)self rowModel];
    v28 = [v27 cardSection];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & (v7 == 1)) != 0)
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
  v52 = [(SearchUICollectionViewCell *)self rowModel];
  if ([v52 hasCustomCornerRounding])
  {
    v53 = [(SearchUICollectionViewCell *)self rowModel];
    -[SearchUICollectionViewCell setMaskedCorners:](self, "setMaskedCorners:", [v53 cornerMask]);
  }

  else
  {
    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
  }

  v54 = [(SearchUICollectionViewCell *)self traitCollection];
  v55 = [v54 userInterfaceIdiom];

  if (v55 == 3)
  {
    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
  }

  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 setHighlighted:a3];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 setSelected:a3];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)updateFocusStyleWithAppearance:(id)a3
{
  v84 = a3;
  v4 = [(SearchUICollectionViewCell *)self backgroundView];
  [v4 frame];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  v13 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  v14 = [v13 layer];
  [v14 setShadowOpacity:0.0];

  v15 = [(SearchUICollectionViewCell *)self resolvedFocusStyle];
  v16 = 0;
  if (v15 <= 3)
  {
    if (v15 >= 2)
    {
      v17 = 0;
      if (v15 == 3)
      {
        +[SearchUIFocusStyleUtilities secondaryHaloProminence];
        +[SearchUIAutoLayout selectionBorderWidth];
        v22 = v21;
        v23 = [(SearchUICollectionViewCell *)self highlightReferenceView];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = self;
        }

        v26 = v25;

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
          v63 = [(SearchUICollectionViewCell *)v26 layer];
          [v63 cornerRadius];
          v65 = v64;
        }

        else
        {
          [(SearchUICollectionViewCell *)self highlightFrameCornerRadius];
          v65 = v66;
        }

        v67 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        v68 = [v67 layer];
        [v68 setCornerRadius:v22 + v65];

        v69 = [(SearchUICollectionViewCell *)v26 layer];
        v70 = [v69 cornerCurve];
        v71 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        v72 = [v71 layer];
        [v72 setCornerCurve:v70];

        v73 = [(SearchUICollectionViewCell *)v26 layer];
        v74 = [v73 maskedCorners];
        v75 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
        v76 = [v75 layer];
        [v76 setMaskedCorners:v74];

        v16 = 0;
        v17 = 1;
      }

      goto LABEL_44;
    }

    if (![MEMORY[0x1E69D9240] isIpad] || (objc_msgSend(MEMORY[0x1E69D9240], "isSiri") & 1) != 0 || !_UISolariumEnabled())
    {
      goto LABEL_15;
    }

    v18 = [(SearchUICollectionViewCell *)self rowModel];
    if (![v18 sectionType])
    {
      v19 = [(SearchUICollectionViewCell *)self rowModel];
      v20 = [v19 fillsBackgroundWithContent];

      if (v20)
      {
LABEL_15:
        v16 = 0;
LABEL_35:
        v17 = 0;
        goto LABEL_44;
      }

      v18 = [(SearchUICollectionViewCell *)self backgroundView];
      [v18 frame];
      v87 = CGRectInset(v86, 8.0, 0.0);
      x = v87.origin.x;
      y = v87.origin.y;
      width = v87.size.width;
      height = v87.size.height;
    }

    goto LABEL_15;
  }

  if ((v15 - 5) < 2)
  {
LABEL_6:
    v17 = 0;
    v16 = 1;
    goto LABEL_44;
  }

  if (v15 == 4)
  {
    v31 = [(SearchUICollectionViewCell *)self rowModel];
    v32 = [v31 isTappable];

    if (height * 0.5 <= 36.0)
    {
      v33 = height * 0.5;
    }

    else
    {
      v33 = 36.0;
    }

    v34 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [v34 _setContinuousCornerRadius:v33];

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

      v36 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      [v36 _setContinuousCornerRadius:v35];

      [(SearchUICollectionViewCell *)self _setFocusStyle:0];
      [(SearchUICollectionViewCell *)self bounds];
      v89 = CGRectInset(v88, 14.0, 14.0);
      x = v89.origin.x;
      y = v89.origin.y;
      width = v89.size.width;
      height = v89.size.height;
      v37 = [MEMORY[0x1E69DC888] blackColor];
      v38 = [v37 CGColor];
      v39 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      v40 = [v39 layer];
      [v40 setShadowColor:v38];

      v41 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      v42 = [v41 layer];
      [v42 setShadowOffset:{0.0, 12.0}];

      v43 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      v44 = [v43 layer];
      [v44 setShadowRadius:18.0];

      v45 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
      v46 = [v45 layer];
      LODWORD(v47) = 1050253722;
      [v46 setShadowOpacity:v47];
    }

    v16 = v32 ^ 1u;
    v48 = [MEMORY[0x1E69DC888] colorWithWhite:0.921568627 alpha:1.0];
    v49 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [v49 setBackgroundColor:v48];

    [(SearchUICollectionViewCell *)self setMaskedCorners:SearchUIDefaultCornerMask];
    if (-[SearchUICollectionViewCell isSelected](self, "isSelected") && (-[SearchUICollectionViewCell rowModel](self, "rowModel"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 isTappable], v50, v51))
    {
      v52 = [MEMORY[0x1E69D9108] appearanceWithVibrancyEnabled:objc_msgSend(v84 isDark:{"isVibrant"), 0}];
      [v52 overrideAppearanceForView:self];
    }

    else
    {
      [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:self];
    }

    v53 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
    [v53 _continuousCornerRadius];
    [(SearchUICollectionViewCell *)self setPreferredCornerRadius:?];

    goto LABEL_35;
  }

  if (v15 == 7)
  {
    [(SearchUICollectionViewCell *)self animateFocusScaleDownEffectIsHighlighted:[(SearchUICollectionViewCell *)self isHighlighted] isSelected:[(SearchUICollectionViewCell *)self isSelected] appearance:v84];
    goto LABEL_6;
  }

  v17 = 0;
LABEL_44:
  v77 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v77 setFrame:{x, y, width, height}];

  v78 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v78 setHidden:v16];

  v79 = +[SearchUIFocusStyleUtilities secondaryHaloProminence];
  v80 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v80 setProminence:v79];

  v81 = 0.0;
  if (v17)
  {
    +[SearchUIAutoLayout selectionBorderWidth];
    v81 = v82;
  }

  v83 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v83 setBorderWidth:v81];
}

- (void)animateFocusScaleDownEffectIsHighlighted:(BOOL)a3 isSelected:(BOOL)a4 appearance:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(SearchUICollectionViewCell *)self highlightReferenceView];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  v13 = v6 || v5;
  if (v6 || v5)
  {
    v14 = [(SearchUICollectionViewCell *)self selectedOverlayView];

    if (!v14)
    {
      v15 = objc_opt_new();
      [(SearchUICollectionViewCell *)self setSelectedOverlayView:v15];

      v16 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [v16 setHidden:1];
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

  v17 = CGAffineTransformIsIdentity(&v74) ^ v6;
  v18 = [(SearchUICollectionViewCell *)self selectedOverlayView];
  if (v18)
  {
    v19 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v20 = v13 ^ [v19 isHidden];
  }

  else
  {
    v20 = v13 ^ 1;
  }

  if ((v17 & v20 & 1) == 0)
  {
    v66 = v8;
    v21 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v22 = [v21 superview];

    if (v22 != v12)
    {
      v23 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [v23 removeFromSuperview];

      v24 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      [(SearchUICollectionViewCell *)v12 addSubview:v24];
    }

    [(SearchUICollectionViewCell *)v12 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    [v33 setFrame:{v26, v28, v30, v32}];

    v34 = [(SearchUICollectionViewCell *)v12 layer];
    [v34 cornerRadius];
    v36 = v35;
    v37 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v38 = [v37 layer];
    [v38 setCornerRadius:v36];

    v39 = [(SearchUICollectionViewCell *)v12 layer];
    v40 = [v39 cornerCurve];
    v41 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v42 = [v41 layer];
    [v42 setCornerCurve:v40];

    v43 = [(SearchUICollectionViewCell *)v12 layer];
    v44 = [v43 maskedCorners];
    v45 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    v46 = [v45 layer];
    [v46 setMaskedCorners:v44];

    v47 = [v66 colorForProminence:3];
    v48 = [(SearchUICollectionViewCell *)self rowModel];
    v49 = [v48 cardSection];
    objc_opt_class();
    LOBYTE(v46) = objc_opt_isKindOfClass();

    if (v46)
    {
      v50 = [(SearchUICollectionViewCell *)self rowModel];
      v51 = [v50 cardSection];

      if ([v51 useAppIconMetrics])
      {
        v52 = [v51 thumbnail];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v54 = [MEMORY[0x1E69DC888] blackColor];
          v55 = [v54 colorWithAlphaComponent:0.25];

          v47 = v55;
        }
      }
    }

    v56 = [(SearchUICollectionViewCell *)self selectedOverlayView];
    [v56 setBackgroundColor:v47];

    if (v13)
    {
      v57 = [(SearchUICollectionViewCell *)self selectedOverlayView];
      v58 = [v57 isHidden];

      if (v58)
      {
        v59 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [v59 setHidden:0];

        v60 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [v60 setAlpha:0.0];

        v61 = [(SearchUICollectionViewCell *)self selectedOverlayView];
        [(SearchUICollectionViewCell *)self bringSubviewToFront:v61];
      }
    }

    v62 = 0.25;
    v63 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDuration:0.25 bounce:0.35];
    if ((!v6 & (v20 | v17 ^ 1)) == 0)
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
    v8 = v66;
    if ((v17 & 1) == 0)
    {
      memset(&v74, 0, sizeof(v74));
      if (v6)
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
    v3 = [MEMORY[0x1E69DCA28] effect];
    [v3 setContainerView:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
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
    v19 = [(SearchUICollectionViewCell *)self sfSeparatorStyle];
    if (v19 != 1)
    {
      v20 = v19;
      v21 = [(SearchUICollectionViewCell *)self contentView];
      [v21 bounds];
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
      v34 = [(SearchUICollectionViewCell *)self sizingView];
      v35 = v29;
      v15 = v27;
      v11 = v26;
      v36 = v33;
      v13 = v31;
      v9 = v30;
      top = v50;
      bottom = v51;
      [v34 setFrame:{v23, v25, v35, v36}];

      v37 = [(SearchUICollectionViewCell *)self sizingView];
      [v37 layoutIfNeeded];

      v38 = [(SearchUICollectionViewCell *)self leadingView];
      v39 = [(SearchUICollectionViewCell *)self leadingTextView];
      [SearchUICardSectionView separatorInsetsForStyle:v20 cellView:self leadingView:v38 leadingTextView:v39];
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

- (void)updateCornerRadius:(double)a3
{
  v3 = a3;
  if (a3 == -1.0)
  {
    [(SearchUICollectionViewCell *)self bounds];
    v3 = v5 * 0.5;
  }

  [(SearchUICollectionViewCell *)self bounds];
  if (v3 >= v6 * 0.5)
  {
    v3 = v6 * 0.5;
  }

  [(SearchUICollectionViewCell *)self _setContinuousCornerRadius:v3];
  v7 = [(SearchUICollectionViewCell *)self contentView];
  [v7 _setContinuousCornerRadius:v3];

  v8 = [(SearchUICollectionViewCell *)self backgroundPlatterView];
  [v8 _setContinuousCornerRadius:v3];

  v9 = [(SearchUICollectionViewCell *)self dummyBackgroundView];
  [v9 _setContinuousCornerRadius:v3];

  v10 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v10 borderWidth];
  v12 = v3 + v11;
  v13 = [(SearchUICollectionViewCell *)self selectedBackgroundView];
  [v13 _setContinuousCornerRadius:v12];

  [(SearchUICollectionViewCell *)self updateCornerMasks];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v21 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(SearchUICollectionViewCell *)self focusEffect];

  v8 = [(SearchUICollectionViewCell *)self rowModel];
  v9 = [v8 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (!v7)
  {
    v11 = [v6 nextFocusedView];

    if (v11 == self)
    {
      if ((isKindOfClass & 1) == 0)
      {
        [(SearchUICollectionViewCell *)self setSelected:1];
      }

      [(SearchUICollectionViewCell *)self tlk_updateWithCurrentAppearance];
      v12 = [(SearchUICollectionViewCell *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(SearchUICollectionViewCell *)self delegate];
        v15 = [(SearchUICollectionViewCell *)self rowModel];
        v16 = [v15 identifyingResult];
        v17 = [(SearchUICollectionViewCell *)self rowModel];
        v18 = [v17 cardSection];
        [v14 didUpdateKeyboardFocusToResult:v16 cardSection:v18];
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
    v19 = [v6 nextFocusedView];
    v20 = [(SearchUICollectionViewCell *)self viewForForcedFocus];

    if (v19 == v20)
    {
      [(SearchUICollectionViewCell *)self setupManualFocus];
    }

    else
    {
      [(SearchUICollectionViewCell *)self removeManualFocus];
    }
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 isForcingHeight];
  [v4 frame];
  v8.receiver = self;
  v8.super_class = SearchUICollectionViewCell;
  v6 = [(SearchUICollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];

  if (v5)
  {
    [v6 frame];
    [v6 setFrame:?];
  }

  return v6;
}

- (void)applyLayoutAttributes:(id)a3
{
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewCell;
  [(SearchUICollectionViewCell *)&v5 applyLayoutAttributes:a3];
  v4 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  [(SearchUICollectionViewCell *)self updateFocusStyleWithAppearance:v4];
}

- (void)addLinkLayer:(id)a3
{
  v8 = a3;
  v4 = [(SearchUICollectionViewCell *)self linkLayer];

  v5 = [(SearchUICollectionViewCell *)self layer];
  v6 = v5;
  if (v4)
  {
    v7 = [(SearchUICollectionViewCell *)self linkLayer];
    [v6 replaceSublayer:v7 with:v8];
  }

  else
  {
    [v5 addSublayer:v8];
  }

  [(SearchUICollectionViewCell *)self setLinkLayer:v8];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 nextFocusedItem];
  v6 = [v4 previouslyFocusedItem];

  if (v5 == v6)
  {
    v8 = [(SearchUICollectionViewCell *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SearchUICollectionViewCell *)self delegate];
      [v10 didUpdateKeyboardFocusToResult:0 cardSection:0];
    }

    v7 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SearchUICollectionViewCell;
    v7 = [(SearchUICollectionViewCell *)&v12 shouldUpdateFocusInContext:v4];
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
  v3 = [(SearchUICollectionViewCell *)self selectionAnimator];

  if (v3)
  {
    v4 = [(SearchUICollectionViewCell *)self selectionAnimator];
    [v4 stopAnimation:1];

    v5 = [(SearchUICollectionViewCell *)self selectionAnimator];
    [v5 finishAnimationAtPosition:2];

    [(SearchUICollectionViewCell *)self setSelectionAnimator:0];
  }

  [(SearchUICollectionViewCell *)self _removeAllAnimations:1];
  v6 = [(SearchUICollectionViewCell *)self highlightReferenceView];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = self;
  }

  v9 = v8;

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v10;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(SearchUICollectionViewCell *)v9 setTransform:v12];
  v11 = [(SearchUICollectionViewCell *)self selectedOverlayView];
  [v11 setHidden:1];

  [SearchUIAppEntityAnnotator resetAnnotationForView:self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [MEMORY[0x1E69D91A8] tappableControlViewForPoint:self inView:v7 withEvent:{x, y}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUICollectionViewCell;
    v10 = [(SearchUICollectionViewCell *)&v13 hitTest:v7 withEvent:x, y];
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