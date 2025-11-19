@interface _UIContextMenuCellContentView
- (BOOL)_primaryContentColorShouldOverrideForCurrentState;
- (BOOL)shouldHighlightOnHover;
- (CGSize)_maxImageSize;
- (UIShape)contentShape;
- (UIView)iconView;
- (_UIContextMenuCellContentView)initWithFrame:(CGRect)a3;
- (_UISlotView)securePasteButtonSlotView;
- (id)_childIndicatorColorForCurrentState;
- (id)_childIndicatorImage;
- (id)_childIndicatorSymbolImageConfiguration;
- (id)_contentImageViewForImage:(id)a3;
- (id)_decorationSymbolImageConfiguration;
- (id)_iconSymbolConfigurationForCurrentTraitsUsingBoldFont:(BOOL)a3;
- (id)_mixedSelectionImage;
- (id)_primaryBackgroundColorForCurrentState;
- (id)_primaryCompositingFilterForCurrentTraitsAndState;
- (id)_primaryContentColorForCurrentState;
- (id)_primaryTitleLabel;
- (id)_selectionImage;
- (id)_subtitleLabelFilterForCurrentTraitsAndState;
- (id)_subtitleTextColor;
- (int64_t)_resolvedLineLimit;
- (int64_t)_subtitleLabelRenderingMode;
- (int64_t)focusStyle;
- (unint64_t)measuredNumberOfSubTitleLines;
- (unint64_t)measuredNumberOfTitleLines;
- (unsigned)_secureName;
- (void)_createLabelStackViewIfNeeded;
- (void)_hideContents;
- (void)_inheritRelevantPropertiesFromContentView:(id)a3;
- (void)_installSubtitleLabelIfNeeded;
- (void)_installTitleLabelIfNeeded;
- (void)_setDecorationImage:(id)a3;
- (void)_setNeedsConstraintRebuild;
- (void)_updateAppearanceForStateChange;
- (void)_updateAttachedConstraintsForViewHierarchyChange;
- (void)_updateCompositingFiltersForCurrentState;
- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)a3;
- (void)_updateHoverStyleIfNeeded;
- (void)_updateIconImageAppearanceForStateChange;
- (void)_updateLabelsForCurrentState;
- (void)_updateSecureView;
- (void)_updateSubtitleLabelNumberOfLines;
- (void)_updateTitleLabelNumberOfLines;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryAction:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setImage:(id)a3;
- (void)setIsEmphasized:(BOOL)a3;
- (void)setKeyboardShortcut:(id)a3;
- (void)setLayoutClass:(Class)a3;
- (void)setNumberOfTitleLines:(unint64_t)a3;
- (void)setOptions:(unint64_t)a3;
- (void)setPasteVariant:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation _UIContextMenuCellContentView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v3 didMoveToWindow];
  [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:1];
  [(_UIContextMenuCellContentView *)self _updateHoverStyleIfNeeded];
}

- (void)_updateHoverStyleIfNeeded
{
  v3 = [(UIView *)self window];
  if (v3)
  {
    v8 = v3;
    if ([(_UIContextMenuCellContentView *)self needsHoverStyleUpdate])
    {
      v4 = [(_UIContextMenuCellContentView *)self needsConstraintRebuild];

      if (v4)
      {
        return;
      }

      v5 = [(_UIContextMenuCellContentView *)self layout];
      v8 = [v5 hoverStyle];

      [(UIView *)self setHoverStyle:v8];
      v6 = ([(_UIContextMenuCellContentView *)self options]& 1) == 0;
      v7 = [(UIView *)self hoverStyle];
      [v7 setEnabled:v6];

      [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:0];
    }

    v3 = v8;
  }
}

- (void)_setNeedsConstraintRebuild
{
  [(_UIContextMenuCellContentView *)self setNeedsConstraintRebuild:1];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)_installTitleLabelIfNeeded
{
  v3 = [(_UIContextMenuCellContentView *)self titleLabel];

  if (!v3)
  {
    v4 = [(_UIContextMenuCellContentView *)self _primaryTitleLabel];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v4;

    v7 = [(_UIContextMenuCellContentView *)self labelStackView];
    v6 = [(_UIContextMenuCellContentView *)self titleLabel];
    [v7 insertArrangedSubview:v6 atIndex:0];
  }
}

- (id)_primaryTitleLabel
{
  v3 = [UILabel alloc];
  v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v4 setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)v4 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v4 setMinimumScaleFactor:0.9];
  LODWORD(v5) = 0.5;
  [(UILabel *)v4 _setHyphenationFactor:v5];
  v6 = [(UIView *)self traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  v8 = [v7 titleFont];
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

  [(UILabel *)v4 setFont:v9];
  v10 = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  [(UILabel *)v4 setTextColor:v10];

  v11 = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  v12 = [(UIView *)v4 layer];
  [v12 setCompositingFilter:v11];

  return v4;
}

- (id)_primaryContentColorForCurrentState
{
  v3 = [(_UIContextMenuCellContentView *)self layout];
  v4 = [v3 preferredContentColorForCurrentState];

  if (v4)
  {
    v5 = v4;
LABEL_8:
    v10 = v5;
LABEL_9:
    v11 = v10;
    v10 = v11;
    goto LABEL_10;
  }

  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (([(_UIContextMenuCellContentView *)self options]& 1) != 0)
  {
    v5 = _UIContextMenuItemPrimaryColor(v7, [(_UIContextMenuCellContentView *)self controlState]| 2);
    goto LABEL_8;
  }

  if (([(_UIContextMenuCellContentView *)self options]& 2) != 0)
  {
    v14 = [(_UIContextMenuCellContentView *)self controlState];
    v15 = _UIContextMenuGetPlatformMetrics(v7);
    v16 = [v15 itemPrimaryDestructiveColorProvider];
    v17 = v16;
    if (v16)
    {
      v10 = (*(v16 + 16))(v16, v14);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  v8 = [(_UIContextMenuCellContentView *)self options];
  v9 = [(_UIContextMenuCellContentView *)self controlState];
  if ((v8 & 0x40) != 0)
  {
    v18 = _UIContextMenuGetPlatformMetrics(v7);
    v10 = _UIContextMenuItemPrimaryColor(v7, v9);
    v19 = [v18 itemPrimaryEmphasizedColorProvider];
    v20 = v19;
    if (v19)
    {
      v21 = (*(v19 + 16))(v19, v9);

      v10 = v21;
    }
  }

  else
  {
    v10 = _UIContextMenuItemPrimaryColor(v7, v9);
  }

  v22 = _UIContextMenuGetPlatformMetrics(v7);
  [v22 itemPrimaryAlpha];
  v24 = v23;

  if (v24 >= 1.0)
  {
    goto LABEL_9;
  }

  [v10 alphaComponent];
  v11 = [v10 colorWithAlphaComponent:v24 * v25];
LABEL_10:
  v12 = v11;

  return v12;
}

- (void)_updateTitleLabelNumberOfLines
{
  v3 = [(_UIContextMenuCellContentView *)self titleLabel];
  if (v3)
  {
    v13 = v3;
    v4 = [(_UIContextMenuCellContentView *)self _resolvedLineLimit];
    if (([(_UIContextMenuCellContentView *)self overrideNumberOfTitleLines]& 0x8000000000000000) == 0)
    {
      v4 = [(_UIContextMenuCellContentView *)self overrideNumberOfTitleLines];
    }

    [v13 setNumberOfLines:v4];
    [v13 setAdjustsFontSizeToFitWidth:v4 == 1];
    v5 = [(_UIContextMenuCellContentView *)self layout];
    [v13 setTextAlignment:{objc_msgSend(v5, "labelTextAlignment")}];

    v6 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];

    v3 = v13;
    if (v6)
    {
      v7 = [v13 textAlignment];
      v8 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [v8 setTextAlignment:v7];

      v9 = [v13 numberOfLines];
      v10 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [v10 setNumberOfLines:v9];

      v11 = [v13 adjustsFontSizeToFitWidth];
      v12 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [v12 setAdjustsFontSizeToFitWidth:v11];

      v3 = v13;
    }
  }
}

- (int64_t)_resolvedLineLimit
{
  if ([(_UIContextMenuCellContentView *)self numberOfTitleLines]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v4, v5);

    if (IsAccessibilityContentSizeCategory)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = [(_UIContextMenuCellContentView *)self numberOfTitleLines];
  }

  v8 = [(_UIContextMenuCellContentView *)self layout];
  v9 = [v8 labelMaximumNumberOfLines];

  if (v7 >= v9)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

- (void)_updateAttachedConstraintsForViewHierarchyChange
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UIContextMenuCellContentView *)self layout];
  [v3 removeConstraints];

  v4 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
  [v4 setActive:0];

  v5 = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
  [v5 setActive:0];

  v6 = [(_UIContextMenuCellContentView *)self layout];
  [v6 installConstraints];

  v7 = [(_UIContextMenuCellContentView *)self iconView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(_UIContextMenuCellContentView *)self iconView];
    v10 = [v9 image];
    v11 = [v10 isSymbolImage];

    if ((v11 & 1) == 0)
    {
      [(_UIContextMenuCellContentView *)self _maxImageSize];
      v13 = v12;
      v15 = v14;
      v16 = [v9 widthAnchor];
      v17 = [v16 constraintLessThanOrEqualToConstant:v13];
      [(_UIContextMenuCellContentView *)self setNonSymbolImageWidth:v17];

      v18 = [v9 heightAnchor];
      v19 = [v18 constraintLessThanOrEqualToConstant:v15];
      [(_UIContextMenuCellContentView *)self setNonSymbolImageHeight:v19];

      v20 = MEMORY[0x1E69977A0];
      v21 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
      v24[0] = v21;
      v22 = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
      v24[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [v20 activateConstraints:v23];
    }
  }

  [(UIView *)self setNeedsUpdateConstraints];
}

- (UIView)iconView
{
  v3 = [(_UIContextMenuCellContentView *)self accessoryButton];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIContextMenuCellContentView *)self iconImageView];
  }

  v6 = v5;

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIContextMenuCellContentView *)self _updateSecureView];
  [(_UIContextMenuCellContentView *)self _updateHoverStyleIfNeeded];
}

- (void)_updateSecureView
{
  if (self->_pasteVariant)
  {
    v3 = [(_UIContextMenuCellContentView *)self options];
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    v5 = WeakRetained;
    if (v3)
    {
      [WeakRetained removeFromSuperview];

      objc_storeWeak(&self->_securePasteButtonSlotView, 0);
    }

    else
    {

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
      }

      else
      {
        v6 = objc_alloc_init(_UISlotView);
        objc_storeWeak(&self->_securePasteButtonSlotView, v6);
      }

      [(UIView *)self bounds];
      v8 = v7;
      v10 = v9;
      if (objc_opt_respondsToSelector())
      {
        v11 = [(UIView *)self traitCollection];
        v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
        v13 = [v12 prefersLeadingImageCellLayout];

        v52 = MEMORY[0x1E69BC820];
        v14 = [(_UIContextMenuCellContentView *)self pasteVariant];
        v15 = [v14 secureName];
        v50 = v10 + -2.0;
        v51 = v8 + -2.0;
        v16 = [(_UIContextMenuCellContentView *)self labelStackView];
        v17 = [(_UIContextMenuCellContentView *)self labelStackView];
        [v17 bounds];
        [v16 convertRect:self toView:?];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = [(_UIContextMenuCellContentView *)self iconView];
        v27 = [(_UIContextMenuCellContentView *)self iconView];
        [v27 bounds];
        [v26 convertRect:self toView:?];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [(_UIContextMenuCellContentView *)self layout];
        v37 = [v52 contextMenuDynamicPasteButtonTagWithSecureName:v15 size:v13 titleFrame:objc_msgSend(v36 iconFrame:"layoutSize") layout:v51 layoutSize:{v50, v19, v21, v23, v25, v29, v31, v33, v35}];
      }

      else
      {
        [(UIView *)self->_labelStackView frame];
        v39 = v38;
        if ([(UIView *)self _shouldReverseLayoutDirection])
        {
          [(UIView *)self->_labelStackView frame];
          v41 = v8 - v40;
          [(UIView *)self->_labelStackView frame];
          v39 = v41 - v42;
        }

        v43 = ([(_UIContextMenuCellContentView *)self options]>> 5) & 1;
        v44 = MEMORY[0x1E69BC820];
        v14 = [(_UIContextMenuCellContentView *)self pasteVariant];
        v45 = [v14 secureName];
        [(UIView *)self->_labelStackView frame];
        v47 = v46;
        v16 = [(_UIContextMenuCellContentView *)self layout];
        v37 = [v44 contextMenuPasteButtonTagWithSecureName:v45 size:objc_msgSend(v16 titleOrigin:"layoutSize") layoutSize:v43 hasTrailingGutter:{v8 + -2.0, v10 + -2.0, v39, v47}];
      }

      objc_initWeak(location, self);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __50___UIContextMenuCellContentView__updateSecureView__block_invoke;
      v56[3] = &unk_1E70F7530;
      v48 = v37;
      v57 = v48;
      [(_UISlotView *)v6 _setSlotStyleResolver:v56];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __50___UIContextMenuCellContentView__updateSecureView__block_invoke_2;
      v53[3] = &unk_1E70F75A8;
      v49 = v48;
      v54 = v49;
      objc_copyWeak(&v55, location);
      [(_UISlotView *)v6 _setSlotAnyContentProvider:v53];
      [(_UISlotView *)v6 _overlayView:self centerInView:self];
      objc_destroyWeak(&v55);

      objc_destroyWeak(location);
    }
  }
}

- (int64_t)focusStyle
{
  v2 = [(_UIContextMenuCellContentView *)self layout];
  v3 = [v2 focusStyle];

  return v3;
}

- (void)_createLabelStackViewIfNeeded
{
  v3 = [(_UIContextMenuCellContentView *)self labelStackView];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4 setBaselineRelativeArrangement:1];
    [(UIStackView *)v4 setAxis:1];
    [(UIStackView *)v4 setSpacing:20.0];
    v5 = [(UIView *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    labelStackView = self->_labelStackView;
    self->_labelStackView = v4;

    [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
  }
}

- (id)_primaryCompositingFilterForCurrentTraitsAndState
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 itemPrimaryCompositingFilterProvider];
  if (v5)
  {
    v6 = [v4 itemPrimaryCompositingFilterProvider];
    v7 = [(UIView *)self traitCollection];
    v8 = (v6)[2](v6, v7, [(_UIContextMenuCellContentView *)self controlState]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateSubtitleLabelNumberOfLines
{
  v3 = [(_UIContextMenuCellContentView *)self subtitleLabel];
  if (v3)
  {
    v5 = v3;
    v4 = [(_UIContextMenuCellContentView *)self _resolvedLineLimit];
    if (([(_UIContextMenuCellContentView *)self overrideNumberOfSubtitleLines]& 0x8000000000000000) == 0)
    {
      v4 = [(_UIContextMenuCellContentView *)self overrideNumberOfSubtitleLines];
    }

    [v5 setNumberOfLines:v4];
    v3 = v5;
  }
}

- (void)updateConstraints
{
  if ([(_UIContextMenuCellContentView *)self needsConstraintRebuild])
  {
    [(_UIContextMenuCellContentView *)self setNeedsConstraintRebuild:0];
    [(_UIContextMenuCellContentView *)self _updateAttachedConstraintsForViewHierarchyChange];
    v3 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    if (v3)
    {
      v4 = v3;
      v5 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      v6 = [v5 window];

      if (!v6)
      {
        v7 = [(_UIContextMenuCellContentView *)self iconImageView];
        v8 = [v7 superview];
        v9 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
        v10 = [(_UIContextMenuCellContentView *)self iconImageView];
        [v8 insertSubview:v9 aboveSubview:v10];
      }
    }

    v11 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v12 = [v11 leadingAnchor];
    v13 = [(_UIContextMenuCellContentView *)self labelStackView];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v17 = [v16 trailingAnchor];
    v18 = [(_UIContextMenuCellContentView *)self labelStackView];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(_UIContextMenuCellContentView *)self iconImageView];
    v22 = [v21 superview];

    if (v22)
    {
      v23 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      v24 = [v23 centerXAnchor];
      v25 = [(_UIContextMenuCellContentView *)self iconImageView];
      v26 = [v25 centerXAnchor];
      v27 = [v24 constraintEqualToAnchor:v26];
      [v27 setActive:1];

      v28 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      v29 = [v28 centerYAnchor];
      v30 = [(_UIContextMenuCellContentView *)self iconImageView];
      v31 = [v30 centerYAnchor];
      v32 = [v29 constraintEqualToAnchor:v31];
      [v32 setActive:1];
    }

    v33 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v34 = [v33 firstBaselineAnchor];
    v35 = [(_UIContextMenuCellContentView *)self labelStackView];
    v36 = [v35 firstBaselineAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    [v37 setActive:1];
  }

  v38 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];

  if (v38)
  {
    [(_UIContextMenuCellContentView *)self _maxImageSize];
    v40 = v39;
    v42 = v41;
    v43 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
    [v43 setConstant:v40];

    v44 = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
    [v44 setConstant:v42];
  }

  v45 = [(_UIContextMenuCellContentView *)self layout];
  [v45 updateConstraints];

  v46.receiver = self;
  v46.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v46 updateConstraints];
}

- (_UIContextMenuCellContentView)initWithFrame:(CGRect)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIContextMenuCellContentView;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = [(UIView *)v4 layer];
    [v6 setAllowsGroupOpacity:0];

    [(UIView *)v4 setTintAdjustmentMode:1];
    [(_UIContextMenuCellContentView *)v4 setOverrideNumberOfTitleLines:-1];
    [(_UIContextMenuCellContentView *)v4 setOverrideNumberOfSubtitleLines:-1];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [(UIView *)v4 registerForTraitChanges:v7 withAction:sel__updateCompositingFiltersForCurrentState];

    v13 = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v10 = [(UIView *)v4 registerForTraitChanges:v9 withAction:sel__updateLabelsForCurrentState];
  }

  return v4;
}

- (void)setLayoutClass:(Class)a3
{
  v5 = [(_UIContextMenuCellContentView *)self layout];
  v6 = objc_opt_class();

  if (v6 != a3)
  {
    [(UIView *)self setHoverStyle:0];
    [(_UIContextMenuCellLayout *)self->_layout removeConstraints];
    v7 = [[a3 alloc] initWithContentView:self];
    layout = self->_layout;
    self->_layout = v7;

    v9 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
    v10 = [(_UIContextMenuCellContentView *)self iconImageView];
    [v10 _setOverridingSymbolConfiguration:v9];

    [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];

    [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:1];
  }
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v4 setDirectionalLayoutMargins:a3.top, a3.leading, a3.bottom, a3.trailing];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (BOOL)shouldHighlightOnHover
{
  v2 = [(_UIContextMenuCellContentView *)self layout];
  v3 = [v2 hoverStyle];
  v4 = v3 == 0;

  return v4;
}

- (UIShape)contentShape
{
  v2 = [(_UIContextMenuCellContentView *)self layout];
  v3 = [v2 contentShape];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self titleLabel];
  v6 = [v5 text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42___UIContextMenuCellContentView_setTitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self titleLabel];
  v6 = [v5 attributedText];
  v7 = [v4 isEqualToAttributedString:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UIContextMenuCellContentView_setAttributedTitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self subtitleLabel];
  v6 = [v5 text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45___UIContextMenuCellContentView_setSubtitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self iconImageView];
  v6 = [v5 image];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(_UIContextMenuCellContentView *)self iconImageView];

    if (v8)
    {
      [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42___UIContextMenuCellContentView_setImage___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v10 = v4;
    v11 = self;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)setAccessoryAction:(id)a3
{
  v12 = a3;
  v4 = [(_UIContextMenuCellContentView *)self accessoryButton];
  if (v12)
  {

    if (!v4)
    {
      v5 = [UIButton systemButtonWithPrimaryAction:v12];
      [(_UIContextMenuCellContentView *)self setAccessoryButton:v5];

      v6 = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
      v7 = [(_UIContextMenuCellContentView *)self accessoryButton];
      [v7 setTintColor:v6];

      v8 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
      v9 = [(_UIContextMenuCellContentView *)self accessoryButton];
      v10 = [v9 imageView];
      [v10 setPreferredSymbolConfiguration:v8];

      v11 = [(_UIContextMenuCellContentView *)self accessoryButton];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  else
  {
    [v4 removeFromSuperview];

    [(_UIContextMenuCellContentView *)self setAccessoryButton:0];
  }

  [(_UIContextMenuCellContentView *)self setImage:0];
  [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
}

- (void)setKeyboardShortcut:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self keyShortcutInputView];
  v6 = [v5 shortcut];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIContextMenuCellContentView_setKeyboardShortcut___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)_setDecorationImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuCellContentView *)self decorationImageView];
  v6 = [v5 image];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIContextMenuCellContentView__setDecorationImage___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setOptions:(unint64_t)a3
{
  options = self->_options;
  if (options != a3)
  {
    self->_options = a3;
    [(_UIContextMenuCellContentView *)self _updateForOptionsChangeFromPreviousOptions:options];
  }
}

- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke;
  aBlock[3] = &unk_1E71162C0;
  aBlock[4] = self;
  aBlock[5] = a3;
  v4 = _Block_copy(aBlock);
  v5 = v4[2](v4, 1);
  if (v5)
  {
    v6 = self->_pasteVariant != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4[2](v4, 2);
  if (v4[2](v4, 4))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_2;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    v8 = v15;
LABEL_8:
    [UIView performWithoutAnimation:v8];
    v9 = 0;
    v6 = 1;
    goto LABEL_9;
  }

  if (v4[2](v4, 8))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_3;
    v14[3] = &unk_1E70F3590;
    v14[4] = self;
    v8 = v14;
    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  if (v4[2](v4, 256))
  {
    v10 = [(UIView *)self traitCollection];
    v11 = _UIContextMenuGetPlatformMetrics([v10 userInterfaceIdiom]);

    v6 |= [v11 prefersLeadingImageCellLayout];
  }

  if ((v9 | [(_UIContextMenuCellContentView *)self _hasTrailingAccessory]) == 1 && v4[2](v4, 16))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_4;
    v13[3] = &unk_1E70F3590;
    v13[4] = self;
    [UIView performWithoutAnimation:v13];
    v6 = 1;
  }

  v12 = v7 | v5;
  if (v4[2](v4, 64))
  {
    [(_UIContextMenuCellContentView *)self setIsEmphasized:([(_UIContextMenuCellContentView *)self options]>> 6) & 1];
  }

  if (v12)
  {
    [(_UIContextMenuCellContentView *)self _updateAppearanceForStateChange];
  }

  if (v6)
  {
    [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
  }

  if (v5)
  {
    [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:1];
    [(_UIContextMenuCellContentView *)self _updateHoverStyleIfNeeded];
  }
}

- (void)setNumberOfTitleLines:(unint64_t)a3
{
  if (self->_numberOfTitleLines != a3)
  {
    self->_numberOfTitleLines = a3;
    [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];

    [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
  }
}

- (unint64_t)measuredNumberOfTitleLines
{
  v2 = [(_UIContextMenuCellContentView *)self titleLabel];
  v3 = [v2 _measuredNumberOfLines];

  return v3;
}

- (unint64_t)measuredNumberOfSubTitleLines
{
  v2 = [(_UIContextMenuCellContentView *)self subtitleLabel];
  v3 = [v2 _measuredNumberOfLines];

  return v3;
}

- (void)_inheritRelevantPropertiesFromContentView:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    -[_UIContextMenuCellContentView setOverrideNumberOfTitleLines:](self, "setOverrideNumberOfTitleLines:", [v4 measuredNumberOfTitleLines]);
    v5 = [v6 measuredNumberOfSubTitleLines];
  }

  else
  {
    v5 = -1;
    [(_UIContextMenuCellContentView *)self setOverrideNumberOfTitleLines:-1];
  }

  [(_UIContextMenuCellContentView *)self setOverrideNumberOfSubtitleLines:v5];
  [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];
  [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
}

- (void)_hideContents
{
  v3 = [(_UIContextMenuCellContentView *)self titleLabel];
  [v3 setAlpha:0.0];

  v4 = [(_UIContextMenuCellContentView *)self subtitleLabel];
  [v4 setAlpha:0.0];

  v5 = [(_UIContextMenuCellContentView *)self decorationImageView];
  [v5 setAlpha:0.0];

  v6 = [(_UIContextMenuCellContentView *)self iconImageView];
  [v6 setAlpha:0.0];
}

- (void)prepareForReuse
{
  v3 = [(_UIContextMenuCellContentView *)self pasteVariant];

  if (v3)
  {
    v4 = [(_UIContextMenuCellContentView *)self titleLabel];
    [v4 setAlpha:1.0];

    v5 = [(_UIContextMenuCellContentView *)self subtitleLabel];
    [v5 setAlpha:1.0];

    v6 = [(_UIContextMenuCellContentView *)self decorationImageView];
    [v6 setAlpha:1.0];

    v7 = [(_UIContextMenuCellContentView *)self iconImageView];
    [v7 setAlpha:1.0];

    [(_UIContextMenuCellContentView *)self setPasteVariant:0];
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    [WeakRetained removeFromSuperview];

    objc_storeWeak(&self->_securePasteButtonSlotView, 0);
  }
}

- (void)setPasteVariant:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (v5)
  {
    v6 = [v5 localizedStringForLocalization:0];
    [(_UIContextMenuCellContentView *)self setTitle:v6];

    [(_UIContextMenuCellContentView *)self setSubtitle:0];
    v7 = [v10 glyph];
    v8 = [UIImage _systemImageNamed:v7];
    [(_UIContextMenuCellContentView *)self setImage:v8];

    objc_storeStrong(&self->_pasteVariant, a3);
    [(UIView *)self setNeedsLayout];
  }

  else
  {
    pasteVariant = self->_pasteVariant;
    self->_pasteVariant = 0;
  }
}

- (unsigned)_secureName
{
  pasteVariant = self->_pasteVariant;
  if (pasteVariant)
  {
    LODWORD(pasteVariant) = [(UISPasteVariant *)pasteVariant secureName];
  }

  return pasteVariant;
}

- (void)_installSubtitleLabelIfNeeded
{
  v3 = [(_UIContextMenuCellContentView *)self subtitleLabel];

  if (!v3)
  {
    v4 = [UILabel alloc];
    v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5 setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    LODWORD(v6) = 0.5;
    [(UILabel *)v5 _setHyphenationFactor:v6];
    v7 = [(UIView *)self traitCollection];
    v8 = _UIContextMenuGetPlatformMetrics([v7 userInterfaceIdiom]);
    v9 = [v8 subtitleFont];
    v10 = [v9 _fontAdjustedForCurrentContentSizeCategory];

    [(UILabel *)v5 setFont:v10];
    v11 = [(_UIContextMenuCellContentView *)self _subtitleTextColor];
    [(UILabel *)v5 setTextColor:v11];

    [(UIView *)v5 _setOverrideUserInterfaceRenderingMode:[(_UIContextMenuCellContentView *)self _subtitleLabelRenderingMode]];
    v12 = [(_UIContextMenuCellContentView *)self _subtitleLabelFilterForCurrentTraitsAndState];
    v13 = [(UIView *)v5 layer];
    [v13 setCompositingFilter:v12];

    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v5;

    [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
    v16 = [(_UIContextMenuCellContentView *)self labelStackView];
    v15 = [(_UIContextMenuCellContentView *)self subtitleLabel];
    [v16 addArrangedSubview:v15];
  }
}

- (id)_contentImageViewForImage:(id)a3
{
  v4 = a3;
  v5 = [[UIImageView alloc] initWithImage:v4];
  [(UIImageView *)v5 setContentMode:1];
  [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  [(UIView *)v5 setTintColor:v6];

  v7 = [v4 isSymbolImage];
  if (v7)
  {
    v8 = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIView *)v5 layer];
  [v9 setCompositingFilter:v8];

  if (v7)
  {
  }

  return v5;
}

- (void)_updateAppearanceForStateChange
{
  v15 = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  if (![(_UIContextMenuCellContentView *)self typeSelectState])
  {
    if ([(_UIContextMenuCellContentView *)self _primaryContentColorShouldOverrideForCurrentState]|| ![(_UIContextMenuCellContentView *)self hasAttributedTitle])
    {
      v3 = [(_UIContextMenuCellContentView *)self titleLabel];
      [v3 setTextColor:v15];

      v4 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [v4 setTextColor:v15];
    }

    v5 = [(_UIContextMenuCellContentView *)self _childIndicatorColorForCurrentState];
    v6 = [(_UIContextMenuCellContentView *)self decorationImageView];
    [v6 setTintColor:v5];

    v7 = [(_UIContextMenuCellContentView *)self iconImageView];
    [v7 setTintColor:v15];

    [(_UIContextMenuCellContentView *)self _updateIconImageAppearanceForStateChange];
    v8 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    [v8 setTintColor:v15];

    v9 = [(_UIContextMenuCellContentView *)self accessoryButton];
    v10 = [v9 imageView];
    [v10 setTintColor:v15];
  }

  v11 = [(UIView *)self traitCollection];
  v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = [v12 wantsFloatingContentViewAsBackground];

  if ((v13 & 1) == 0)
  {
    v14 = [(_UIContextMenuCellContentView *)self _primaryBackgroundColorForCurrentState];
    [(UIView *)self setBackgroundColor:v14];
  }
}

- (void)_updateIconImageAppearanceForStateChange
{
  v12 = [(_UIContextMenuCellContentView *)self iconImageView];
  v3 = [v12 image];
  if ([v3 isSymbolImage])
  {
    v4 = [(_UIContextMenuCellContentView *)self iconImageView];
    v5 = [v4 image];
    v6 = [v5 _isColoredSymbolImage];

    if (!v6)
    {
      return;
    }

    v7 = [(UIView *)self traitCollection];
    v12 = _UIContextMenuGetPlatformMetrics([v7 userInterfaceIdiom]);

    v3 = [v12 itemColoredSymbolImageUserInterfaceStyleOverrideProvider];
    if (v3)
    {
      v8 = v3[2](v3, [(_UIContextMenuCellContentView *)self controlState], ([(_UIContextMenuCellContentView *)self options]>> 1) & 1);
      v9 = [(_UIContextMenuCellContentView *)self iconImageView];
      v10 = [(UIView *)v9 _internalTraitOverrides];
      v11 = v10;
      if (v8)
      {
        [v10 setUserInterfaceStyle:v8];
      }

      else
      {
        [(_UITraitOverrides *)v10 _removeTraitToken:?];
      }
    }
  }
}

- (void)setIsEmphasized:(BOOL)a3
{
  if (self->_isEmphasized != a3)
  {
    self->_isEmphasized = a3;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __49___UIContextMenuCellContentView_setIsEmphasized___block_invoke;
    v44[3] = &unk_1E70F3590;
    v44[4] = self;
    [UIView performWithoutAnimation:v44];
    if (self->_isEmphasized)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = [(_UIContextMenuCellContentView *)self titleLabel];
    [v5 setAlpha:v4];

    if (self->_isEmphasized)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [v7 setAlpha:v6];

    v8 = [(_UIContextMenuCellContentView *)self titleLabel];
    v9 = [v8 numberOfLines];
    v10 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [v10 setNumberOfLines:v9];

    if (self->_isEmphasized)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    v12 = [(_UIContextMenuCellContentView *)self iconImageView];
    [v12 setAlpha:v11];

    if (self->_isEmphasized)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    [v14 setAlpha:v13];

    if (([(_UIContextMenuCellContentView *)self options]& 0x10) != 0)
    {
      if (([(_UIContextMenuCellContentView *)self options]& 4) != 0)
      {
        if (self->_isEmphasized)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = 1.0;
        }

        v17 = [(_UIContextMenuCellContentView *)self decorationImageView];
        [v17 setAlpha:v18];
      }

      else
      {
        v15 = 0.0;
        if (self->_isEmphasized)
        {
          v16 = [(UIView *)self superview];
          if ([v16 _flipsHorizontalAxis])
          {
            v15 = -1.57079633;
          }

          else
          {
            v15 = 1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v43, v15);
        v17 = [(_UIContextMenuCellContentView *)self decorationImageView];
        v46 = v43;
        [v17 setTransform:&v46];
      }
    }

    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *&v42.a = *MEMORY[0x1E695EFD0];
    *&v42.c = v19;
    *&v42.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v41.a = *&v42.a;
    *&v41.c = v19;
    *&v41.tx = *&v42.tx;
    v20 = [(_UIContextMenuCellContentView *)self titleLabel];
    v21 = [(_UIContextMenuCellContentView *)self titleLabel];
    [v21 bounds];
    [v20 sizeThatFits:{v22, v23}];
    v25 = v24;

    v26 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v27 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [v27 bounds];
    [v26 sizeThatFits:{v28, v29}];
    v31 = v30;

    v32 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
    if (self->_isEmphasized)
    {
      v33 = [(_UIContextMenuCellContentView *)self titleLabel];
      [v33 bounds];
      v34 = CGRectGetWidth(v47) * -0.5;
      if (v32 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v35 = -v34;
      }

      else
      {
        v35 = v34;
      }

      memset(&v40, 0, sizeof(v40));
      CGAffineTransformMakeTranslation(&v40, v35, 0.0);
      v45 = v40;
      CGAffineTransformScale(&v46, &v45, v31 / v25, 1.0);
      *&v40.c = *&v46.c;
      *&v40.tx = *&v46.tx;
      *&v40.a = *&v46.a;
      v45 = v46;
      CGAffineTransformTranslate(&v46, &v45, -v35, 0.0);
      *&v40.tx = *&v46.tx;
      v42 = v46;
    }

    else
    {
      v33 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [v33 bounds];
      v36 = CGRectGetWidth(v48) * -0.5;
      if (v32 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v37 = -v36;
      }

      else
      {
        v37 = v36;
      }

      memset(&v40, 0, sizeof(v40));
      CGAffineTransformMakeTranslation(&v40, v37, 0.0);
      v45 = v40;
      CGAffineTransformScale(&v46, &v45, v25 / v31, 1.0);
      *&v40.c = *&v46.c;
      *&v40.tx = *&v46.tx;
      *&v40.a = *&v46.a;
      v45 = v46;
      CGAffineTransformTranslate(&v46, &v45, -v37, 0.0);
      *&v40.tx = *&v46.tx;
      v41 = v46;
    }

    v38 = [(_UIContextMenuCellContentView *)self titleLabel];
    v46 = v42;
    [v38 setTransform:&v46];

    v39 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v46 = v41;
    [v39 setTransform:&v46];
  }
}

- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  self->_controlState = a3;
  [(_UIContextMenuCellContentView *)self _updateCompositingFiltersForCurrentState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___UIContextMenuCellContentView_setControlState_withAnimationCoordinator___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v6)
  {
    [v6 addCoordinatedAnimations:v7 completion:0];
  }

  else
  {
    (*(v7 + 2))(v7);
  }

  v9 = [(_UIContextMenuCellContentView *)self layout];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(_UIContextMenuCellContentView *)self layout];
    [v11 setControlState:a3 withAnimationCoordinator:v6];
  }
}

- (void)_updateCompositingFiltersForCurrentState
{
  v25 = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  v3 = [(_UIContextMenuCellContentView *)self titleLabel];
  v4 = [v3 layer];
  [v4 setCompositingFilter:v25];

  v5 = [(_UIContextMenuCellContentView *)self _subtitleLabelFilterForCurrentTraitsAndState];
  v6 = [(_UIContextMenuCellContentView *)self subtitleLabel];
  v7 = [v6 layer];
  [v7 setCompositingFilter:v5];

  v8 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
  v9 = [v8 layer];
  [v9 setCompositingFilter:v25];

  v10 = [(_UIContextMenuCellContentView *)self iconImageView];
  v11 = [v10 image];
  if ([v11 isSymbolImage])
  {
    v12 = v25;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_UIContextMenuCellContentView *)self iconImageView];
  v14 = [v13 layer];
  [v14 setCompositingFilter:v12];

  v15 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
  v16 = [v15 image];
  if ([v16 isSymbolImage])
  {
    v17 = v25;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
  v19 = [v18 layer];
  [v19 setCompositingFilter:v17];

  v20 = [(_UIContextMenuCellContentView *)self decorationImageView];
  v21 = [v20 image];
  if ([v21 isSymbolImage])
  {
    v22 = v25;
  }

  else
  {
    v22 = 0;
  }

  v23 = [(_UIContextMenuCellContentView *)self decorationImageView];
  v24 = [v23 layer];
  [v24 setCompositingFilter:v22];
}

- (void)_updateLabelsForCurrentState
{
  [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];
  [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
  v3 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
  v4 = [(_UIContextMenuCellContentView *)self iconImageView];
  [v4 _setOverridingSymbolConfiguration:v3];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (id)_subtitleLabelFilterForCurrentTraitsAndState
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 itemSubtitleCompositingFilterProvider];
  if (v5)
  {
    v6 = [v4 itemSubtitleCompositingFilterProvider];
    v7 = [(UIView *)self traitCollection];
    v8 = (v6)[2](v6, v7, [(_UIContextMenuCellContentView *)self controlState]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_subtitleLabelRenderingMode
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  v4 = [v3 itemSubtitleRenderingMode];
  return v4;
}

- (id)_iconSymbolConfigurationForCurrentTraitsUsingBoldFont:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIContextMenuCellContentView *)self layout];
  v6 = [v5 preferredIconFontUsingBoldFont:v3];

  v7 = [(UIView *)self traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v8, v9);

  if (IsAccessibilityContentSizeCategory)
  {
    [UIImageSymbolConfiguration configurationWithFont:v6 scale:1];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithFont:v6];
  }
  v11 = ;

  return v11;
}

- (id)_primaryBackgroundColorForCurrentState
{
  v3 = [(_UIContextMenuCellContentView *)self layout];
  v4 = [v3 preferredBackgroundColorForCurrentState];

  if (!v4)
  {
    v5 = [(_UIContextMenuCellContentView *)self options];
    v6 = [(UIView *)self traitCollection];
    v7 = [v6 userInterfaceIdiom];
    v8 = [(_UIContextMenuCellContentView *)self controlState];
    v9 = _UIContextMenuGetPlatformMetrics(v7);
    v10 = [v9 itemBackgroundColorProvider];
    v11 = v10;
    if (v10)
    {
      v4 = (*(v10 + 16))(v10, v8, (v5 >> 1) & 1);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_primaryContentColorShouldOverrideForCurrentState
{
  if (([(_UIContextMenuCellContentView *)self options]& 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(_UIContextMenuCellContentView *)self options]>> 1) & 1;
  }

  return v3;
}

- (id)_childIndicatorColorForCurrentState
{
  if (!-[_UIContextMenuCellContentView _hasTrailingAccessory](self, "_hasTrailingAccessory") || (-[UIView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "trailingAccessoryColor"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    v5 = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  }

  return v5;
}

- (id)_subtitleTextColor
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  v4 = [v3 itemSubtitleColor];

  return v4;
}

- (CGSize)_maxImageSize
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(_UIContextMenuCellContentView *)self titleLabel];
  v6 = [v5 font];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(UIView *)self traitCollection];
    v10 = _UIContextMenuGetPlatformMetrics([v9 userInterfaceIdiom]);
    v11 = [v10 titleFont];
    v8 = [v11 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v9];
  }

  v12 = _UIContextMenuGetPlatformMetrics(v4);
  [v12 dynamicImageBoxWidth];
  v14 = v13;

  [v8 _scaledValueForValue:v14];
  UIRoundToViewScale(self);
  v16 = v15;
  v17 = _UIContextMenuGetPlatformMetrics(v4);
  [v17 itemTopToFirstBaseline];
  v19 = v18;

  v20 = _UIContextMenuGetPlatformMetrics(v4);
  [v20 itemLastBaselineToBottom];
  v22 = v21;

  [v8 _scaledValueForValue:v19 + v22];
  UIRoundToViewScale(self);
  v24 = v23 + -12.0;

  v25 = v16;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (id)_decorationSymbolImageConfiguration
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);
  v4 = [v3 decorationViewSymbolConfiguration];

  return v4;
}

- (id)_childIndicatorSymbolImageConfiguration
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);
  v4 = [v3 childIndicatorSymbolConfiguration];

  return v4;
}

- (id)_selectionImage
{
  v2 = [(_UIContextMenuCellContentView *)self _decorationSymbolImageConfiguration];
  v3 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v2];

  return v3;
}

- (id)_mixedSelectionImage
{
  v2 = [(_UIContextMenuCellContentView *)self _decorationSymbolImageConfiguration];
  v3 = [UIImage systemImageNamed:@"minus" withConfiguration:v2];

  return v3;
}

- (id)_childIndicatorImage
{
  if (([(_UIContextMenuCellContentView *)self options]& 0x20) != 0)
  {
    [(_UIContextMenuCellContentView *)self _childIndicatorSymbolImageConfiguration];
  }

  else
  {
    [(_UIContextMenuCellContentView *)self _decorationSymbolImageConfiguration];
  }
  v3 = ;
  v4 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v3];

  return v4;
}

- (_UISlotView)securePasteButtonSlotView
{
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

  return WeakRetained;
}

@end