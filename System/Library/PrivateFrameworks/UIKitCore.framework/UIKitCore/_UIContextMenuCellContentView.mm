@interface _UIContextMenuCellContentView
- (BOOL)_primaryContentColorShouldOverrideForCurrentState;
- (BOOL)shouldHighlightOnHover;
- (CGSize)_maxImageSize;
- (UIShape)contentShape;
- (UIView)iconView;
- (_UIContextMenuCellContentView)initWithFrame:(CGRect)frame;
- (_UISlotView)securePasteButtonSlotView;
- (id)_childIndicatorColorForCurrentState;
- (id)_childIndicatorImage;
- (id)_childIndicatorSymbolImageConfiguration;
- (id)_contentImageViewForImage:(id)image;
- (id)_decorationSymbolImageConfiguration;
- (id)_iconSymbolConfigurationForCurrentTraitsUsingBoldFont:(BOOL)font;
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
- (void)_inheritRelevantPropertiesFromContentView:(id)view;
- (void)_installSubtitleLabelIfNeeded;
- (void)_installTitleLabelIfNeeded;
- (void)_setDecorationImage:(id)image;
- (void)_setNeedsConstraintRebuild;
- (void)_updateAppearanceForStateChange;
- (void)_updateAttachedConstraintsForViewHierarchyChange;
- (void)_updateCompositingFiltersForCurrentState;
- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)options;
- (void)_updateHoverStyleIfNeeded;
- (void)_updateIconImageAppearanceForStateChange;
- (void)_updateLabelsForCurrentState;
- (void)_updateSecureView;
- (void)_updateSubtitleLabelNumberOfLines;
- (void)_updateTitleLabelNumberOfLines;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryAction:(id)action;
- (void)setAttributedTitle:(id)title;
- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setImage:(id)image;
- (void)setIsEmphasized:(BOOL)emphasized;
- (void)setKeyboardShortcut:(id)shortcut;
- (void)setLayoutClass:(Class)class;
- (void)setNumberOfTitleLines:(unint64_t)lines;
- (void)setOptions:(unint64_t)options;
- (void)setPasteVariant:(id)variant;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
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
  window = [(UIView *)self window];
  if (window)
  {
    hoverStyle = window;
    if ([(_UIContextMenuCellContentView *)self needsHoverStyleUpdate])
    {
      needsConstraintRebuild = [(_UIContextMenuCellContentView *)self needsConstraintRebuild];

      if (needsConstraintRebuild)
      {
        return;
      }

      layout = [(_UIContextMenuCellContentView *)self layout];
      hoverStyle = [layout hoverStyle];

      [(UIView *)self setHoverStyle:hoverStyle];
      v6 = ([(_UIContextMenuCellContentView *)self options]& 1) == 0;
      hoverStyle2 = [(UIView *)self hoverStyle];
      [hoverStyle2 setEnabled:v6];

      [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:0];
    }

    window = hoverStyle;
  }
}

- (void)_setNeedsConstraintRebuild
{
  [(_UIContextMenuCellContentView *)self setNeedsConstraintRebuild:1];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)_installTitleLabelIfNeeded
{
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];

  if (!titleLabel)
  {
    _primaryTitleLabel = [(_UIContextMenuCellContentView *)self _primaryTitleLabel];
    titleLabel = self->_titleLabel;
    self->_titleLabel = _primaryTitleLabel;

    labelStackView = [(_UIContextMenuCellContentView *)self labelStackView];
    titleLabel2 = [(_UIContextMenuCellContentView *)self titleLabel];
    [labelStackView insertArrangedSubview:titleLabel2 atIndex:0];
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
  traitCollection = [(UIView *)self traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  titleFont = [v7 titleFont];
  v9 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  [(UILabel *)v4 setFont:v9];
  _primaryContentColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  [(UILabel *)v4 setTextColor:_primaryContentColorForCurrentState];

  _primaryCompositingFilterForCurrentTraitsAndState = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  layer = [(UIView *)v4 layer];
  [layer setCompositingFilter:_primaryCompositingFilterForCurrentTraitsAndState];

  return v4;
}

- (id)_primaryContentColorForCurrentState
{
  layout = [(_UIContextMenuCellContentView *)self layout];
  preferredContentColorForCurrentState = [layout preferredContentColorForCurrentState];

  if (preferredContentColorForCurrentState)
  {
    v5 = preferredContentColorForCurrentState;
LABEL_8:
    v10 = v5;
LABEL_9:
    v11 = v10;
    v10 = v11;
    goto LABEL_10;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (([(_UIContextMenuCellContentView *)self options]& 1) != 0)
  {
    v5 = _UIContextMenuItemPrimaryColor(userInterfaceIdiom, [(_UIContextMenuCellContentView *)self controlState]| 2);
    goto LABEL_8;
  }

  if (([(_UIContextMenuCellContentView *)self options]& 2) != 0)
  {
    controlState = [(_UIContextMenuCellContentView *)self controlState];
    v15 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    itemPrimaryDestructiveColorProvider = [v15 itemPrimaryDestructiveColorProvider];
    v17 = itemPrimaryDestructiveColorProvider;
    if (itemPrimaryDestructiveColorProvider)
    {
      v10 = (*(itemPrimaryDestructiveColorProvider + 16))(itemPrimaryDestructiveColorProvider, controlState);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  options = [(_UIContextMenuCellContentView *)self options];
  controlState2 = [(_UIContextMenuCellContentView *)self controlState];
  if ((options & 0x40) != 0)
  {
    v18 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    v10 = _UIContextMenuItemPrimaryColor(userInterfaceIdiom, controlState2);
    itemPrimaryEmphasizedColorProvider = [v18 itemPrimaryEmphasizedColorProvider];
    v20 = itemPrimaryEmphasizedColorProvider;
    if (itemPrimaryEmphasizedColorProvider)
    {
      v21 = (*(itemPrimaryEmphasizedColorProvider + 16))(itemPrimaryEmphasizedColorProvider, controlState2);

      v10 = v21;
    }
  }

  else
  {
    v10 = _UIContextMenuItemPrimaryColor(userInterfaceIdiom, controlState2);
  }

  v22 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
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
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  if (titleLabel)
  {
    v13 = titleLabel;
    _resolvedLineLimit = [(_UIContextMenuCellContentView *)self _resolvedLineLimit];
    if (([(_UIContextMenuCellContentView *)self overrideNumberOfTitleLines]& 0x8000000000000000) == 0)
    {
      _resolvedLineLimit = [(_UIContextMenuCellContentView *)self overrideNumberOfTitleLines];
    }

    [v13 setNumberOfLines:_resolvedLineLimit];
    [v13 setAdjustsFontSizeToFitWidth:_resolvedLineLimit == 1];
    layout = [(_UIContextMenuCellContentView *)self layout];
    [v13 setTextAlignment:{objc_msgSend(layout, "labelTextAlignment")}];

    emphasizedTitleLabel = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];

    titleLabel = v13;
    if (emphasizedTitleLabel)
    {
      textAlignment = [v13 textAlignment];
      emphasizedTitleLabel2 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [emphasizedTitleLabel2 setTextAlignment:textAlignment];

      numberOfLines = [v13 numberOfLines];
      emphasizedTitleLabel3 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [emphasizedTitleLabel3 setNumberOfLines:numberOfLines];

      adjustsFontSizeToFitWidth = [v13 adjustsFontSizeToFitWidth];
      emphasizedTitleLabel4 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [emphasizedTitleLabel4 setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];

      titleLabel = v13;
    }
  }
}

- (int64_t)_resolvedLineLimit
{
  if ([(_UIContextMenuCellContentView *)self numberOfTitleLines]== 0x7FFFFFFFFFFFFFFFLL)
  {
    traitCollection = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v5);

    if (IsAccessibilityContentSizeCategory)
    {
      numberOfTitleLines = 0;
    }

    else
    {
      numberOfTitleLines = 2;
    }
  }

  else
  {
    numberOfTitleLines = [(_UIContextMenuCellContentView *)self numberOfTitleLines];
  }

  layout = [(_UIContextMenuCellContentView *)self layout];
  labelMaximumNumberOfLines = [layout labelMaximumNumberOfLines];

  if (numberOfTitleLines >= labelMaximumNumberOfLines)
  {
    return labelMaximumNumberOfLines;
  }

  else
  {
    return numberOfTitleLines;
  }
}

- (void)_updateAttachedConstraintsForViewHierarchyChange
{
  v24[2] = *MEMORY[0x1E69E9840];
  layout = [(_UIContextMenuCellContentView *)self layout];
  [layout removeConstraints];

  nonSymbolImageWidth = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
  [nonSymbolImageWidth setActive:0];

  nonSymbolImageHeight = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
  [nonSymbolImageHeight setActive:0];

  layout2 = [(_UIContextMenuCellContentView *)self layout];
  [layout2 installConstraints];

  iconView = [(_UIContextMenuCellContentView *)self iconView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iconView2 = [(_UIContextMenuCellContentView *)self iconView];
    image = [iconView2 image];
    isSymbolImage = [image isSymbolImage];

    if ((isSymbolImage & 1) == 0)
    {
      [(_UIContextMenuCellContentView *)self _maxImageSize];
      v13 = v12;
      v15 = v14;
      widthAnchor = [iconView2 widthAnchor];
      v17 = [widthAnchor constraintLessThanOrEqualToConstant:v13];
      [(_UIContextMenuCellContentView *)self setNonSymbolImageWidth:v17];

      heightAnchor = [iconView2 heightAnchor];
      v19 = [heightAnchor constraintLessThanOrEqualToConstant:v15];
      [(_UIContextMenuCellContentView *)self setNonSymbolImageHeight:v19];

      v20 = MEMORY[0x1E69977A0];
      nonSymbolImageWidth2 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
      v24[0] = nonSymbolImageWidth2;
      nonSymbolImageHeight2 = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
      v24[1] = nonSymbolImageHeight2;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [v20 activateConstraints:v23];
    }
  }

  [(UIView *)self setNeedsUpdateConstraints];
}

- (UIView)iconView
{
  accessoryButton = [(_UIContextMenuCellContentView *)self accessoryButton];
  v4 = accessoryButton;
  if (accessoryButton)
  {
    iconImageView = accessoryButton;
  }

  else
  {
    iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  }

  v6 = iconImageView;

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
    options = [(_UIContextMenuCellContentView *)self options];
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    v5 = WeakRetained;
    if (options)
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
        traitCollection = [(UIView *)self traitCollection];
        v12 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
        prefersLeadingImageCellLayout = [v12 prefersLeadingImageCellLayout];

        v52 = MEMORY[0x1E69BC820];
        pasteVariant = [(_UIContextMenuCellContentView *)self pasteVariant];
        secureName = [pasteVariant secureName];
        v50 = v10 + -2.0;
        v51 = v8 + -2.0;
        labelStackView = [(_UIContextMenuCellContentView *)self labelStackView];
        labelStackView2 = [(_UIContextMenuCellContentView *)self labelStackView];
        [labelStackView2 bounds];
        [labelStackView convertRect:self toView:?];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        iconView = [(_UIContextMenuCellContentView *)self iconView];
        iconView2 = [(_UIContextMenuCellContentView *)self iconView];
        [iconView2 bounds];
        [iconView convertRect:self toView:?];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        layout = [(_UIContextMenuCellContentView *)self layout];
        v37 = [v52 contextMenuDynamicPasteButtonTagWithSecureName:secureName size:prefersLeadingImageCellLayout titleFrame:objc_msgSend(layout iconFrame:"layoutSize") layout:v51 layoutSize:{v50, v19, v21, v23, v25, v29, v31, v33, v35}];
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
        pasteVariant = [(_UIContextMenuCellContentView *)self pasteVariant];
        secureName2 = [pasteVariant secureName];
        [(UIView *)self->_labelStackView frame];
        v47 = v46;
        labelStackView = [(_UIContextMenuCellContentView *)self layout];
        v37 = [v44 contextMenuPasteButtonTagWithSecureName:secureName2 size:objc_msgSend(labelStackView titleOrigin:"layoutSize") layoutSize:v43 hasTrailingGutter:{v8 + -2.0, v10 + -2.0, v39, v47}];
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
  layout = [(_UIContextMenuCellContentView *)self layout];
  focusStyle = [layout focusStyle];

  return focusStyle;
}

- (void)_createLabelStackViewIfNeeded
{
  labelStackView = [(_UIContextMenuCellContentView *)self labelStackView];

  if (!labelStackView)
  {
    v4 = objc_opt_new();
    [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4 setBaselineRelativeArrangement:1];
    [(UIStackView *)v4 setAxis:1];
    [(UIStackView *)v4 setSpacing:20.0];
    layer = [(UIView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    labelStackView = self->_labelStackView;
    self->_labelStackView = v4;

    [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
  }
}

- (id)_primaryCompositingFilterForCurrentTraitsAndState
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  itemPrimaryCompositingFilterProvider = [v4 itemPrimaryCompositingFilterProvider];
  if (itemPrimaryCompositingFilterProvider)
  {
    itemPrimaryCompositingFilterProvider2 = [v4 itemPrimaryCompositingFilterProvider];
    traitCollection2 = [(UIView *)self traitCollection];
    v8 = (itemPrimaryCompositingFilterProvider2)[2](itemPrimaryCompositingFilterProvider2, traitCollection2, [(_UIContextMenuCellContentView *)self controlState]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateSubtitleLabelNumberOfLines
{
  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
  if (subtitleLabel)
  {
    v5 = subtitleLabel;
    _resolvedLineLimit = [(_UIContextMenuCellContentView *)self _resolvedLineLimit];
    if (([(_UIContextMenuCellContentView *)self overrideNumberOfSubtitleLines]& 0x8000000000000000) == 0)
    {
      _resolvedLineLimit = [(_UIContextMenuCellContentView *)self overrideNumberOfSubtitleLines];
    }

    [v5 setNumberOfLines:_resolvedLineLimit];
    subtitleLabel = v5;
  }
}

- (void)updateConstraints
{
  if ([(_UIContextMenuCellContentView *)self needsConstraintRebuild])
  {
    [(_UIContextMenuCellContentView *)self setNeedsConstraintRebuild:0];
    [(_UIContextMenuCellContentView *)self _updateAttachedConstraintsForViewHierarchyChange];
    emphasizedIconImageView = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    if (emphasizedIconImageView)
    {
      v4 = emphasizedIconImageView;
      emphasizedIconImageView2 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      window = [emphasizedIconImageView2 window];

      if (!window)
      {
        iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
        superview = [iconImageView superview];
        emphasizedIconImageView3 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
        iconImageView2 = [(_UIContextMenuCellContentView *)self iconImageView];
        [superview insertSubview:emphasizedIconImageView3 aboveSubview:iconImageView2];
      }
    }

    emphasizedTitleLabel = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    leadingAnchor = [emphasizedTitleLabel leadingAnchor];
    labelStackView = [(_UIContextMenuCellContentView *)self labelStackView];
    leadingAnchor2 = [labelStackView leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 setActive:1];

    emphasizedTitleLabel2 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    trailingAnchor = [emphasizedTitleLabel2 trailingAnchor];
    labelStackView2 = [(_UIContextMenuCellContentView *)self labelStackView];
    trailingAnchor2 = [labelStackView2 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v20 setActive:1];

    iconImageView3 = [(_UIContextMenuCellContentView *)self iconImageView];
    superview2 = [iconImageView3 superview];

    if (superview2)
    {
      emphasizedIconImageView4 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      centerXAnchor = [emphasizedIconImageView4 centerXAnchor];
      iconImageView4 = [(_UIContextMenuCellContentView *)self iconImageView];
      centerXAnchor2 = [iconImageView4 centerXAnchor];
      v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v27 setActive:1];

      emphasizedIconImageView5 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
      centerYAnchor = [emphasizedIconImageView5 centerYAnchor];
      iconImageView5 = [(_UIContextMenuCellContentView *)self iconImageView];
      centerYAnchor2 = [iconImageView5 centerYAnchor];
      v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v32 setActive:1];
    }

    emphasizedTitleLabel3 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    firstBaselineAnchor = [emphasizedTitleLabel3 firstBaselineAnchor];
    labelStackView3 = [(_UIContextMenuCellContentView *)self labelStackView];
    firstBaselineAnchor2 = [labelStackView3 firstBaselineAnchor];
    v37 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    [v37 setActive:1];
  }

  nonSymbolImageWidth = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];

  if (nonSymbolImageWidth)
  {
    [(_UIContextMenuCellContentView *)self _maxImageSize];
    v40 = v39;
    v42 = v41;
    nonSymbolImageWidth2 = [(_UIContextMenuCellContentView *)self nonSymbolImageWidth];
    [nonSymbolImageWidth2 setConstant:v40];

    nonSymbolImageHeight = [(_UIContextMenuCellContentView *)self nonSymbolImageHeight];
    [nonSymbolImageHeight setConstant:v42];
  }

  layout = [(_UIContextMenuCellContentView *)self layout];
  [layout updateConstraints];

  v46.receiver = self;
  v46.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v46 updateConstraints];
}

- (_UIContextMenuCellContentView)initWithFrame:(CGRect)frame
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIContextMenuCellContentView;
  v3 = [(UIView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(UIView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];

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

- (void)setLayoutClass:(Class)class
{
  layout = [(_UIContextMenuCellContentView *)self layout];
  v6 = objc_opt_class();

  if (v6 != class)
  {
    [(UIView *)self setHoverStyle:0];
    [(_UIContextMenuCellLayout *)self->_layout removeConstraints];
    v7 = [[class alloc] initWithContentView:self];
    layout = self->_layout;
    self->_layout = v7;

    v9 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
    iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
    [iconImageView _setOverridingSymbolConfiguration:v9];

    [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];

    [(_UIContextMenuCellContentView *)self setNeedsHoverStyleUpdate:1];
  }
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuCellContentView;
  [(UIView *)&v4 setDirectionalLayoutMargins:margins.top, margins.leading, margins.bottom, margins.trailing];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (BOOL)shouldHighlightOnHover
{
  layout = [(_UIContextMenuCellContentView *)self layout];
  hoverStyle = [layout hoverStyle];
  v4 = hoverStyle == 0;

  return v4;
}

- (UIShape)contentShape
{
  layout = [(_UIContextMenuCellContentView *)self layout];
  contentShape = [layout contentShape];

  return contentShape;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  text = [titleLabel text];
  v7 = [titleCopy isEqualToString:text];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42___UIContextMenuCellContentView_setTitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = titleCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  attributedText = [titleLabel attributedText];
  v7 = [titleCopy isEqualToAttributedString:attributedText];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UIContextMenuCellContentView_setAttributedTitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = titleCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
  text = [subtitleLabel text];
  v7 = [subtitleCopy isEqualToString:text];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45___UIContextMenuCellContentView_setSubtitle___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = subtitleCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  image = [iconImageView image];
  v7 = [imageCopy isEqual:image];

  if (v7)
  {
    iconImageView2 = [(_UIContextMenuCellContentView *)self iconImageView];

    if (iconImageView2)
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
    v10 = imageCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)setAccessoryAction:(id)action
{
  actionCopy = action;
  accessoryButton = [(_UIContextMenuCellContentView *)self accessoryButton];
  if (actionCopy)
  {

    if (!accessoryButton)
    {
      v5 = [UIButton systemButtonWithPrimaryAction:actionCopy];
      [(_UIContextMenuCellContentView *)self setAccessoryButton:v5];

      _primaryContentColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
      accessoryButton2 = [(_UIContextMenuCellContentView *)self accessoryButton];
      [accessoryButton2 setTintColor:_primaryContentColorForCurrentState];

      v8 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
      accessoryButton3 = [(_UIContextMenuCellContentView *)self accessoryButton];
      imageView = [accessoryButton3 imageView];
      [imageView setPreferredSymbolConfiguration:v8];

      accessoryButton4 = [(_UIContextMenuCellContentView *)self accessoryButton];
      [accessoryButton4 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  else
  {
    [accessoryButton removeFromSuperview];

    [(_UIContextMenuCellContentView *)self setAccessoryButton:0];
  }

  [(_UIContextMenuCellContentView *)self setImage:0];
  [(_UIContextMenuCellContentView *)self _setNeedsConstraintRebuild];
}

- (void)setKeyboardShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  keyShortcutInputView = [(_UIContextMenuCellContentView *)self keyShortcutInputView];
  shortcut = [keyShortcutInputView shortcut];
  v7 = [shortcutCopy isEqual:shortcut];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIContextMenuCellContentView_setKeyboardShortcut___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = shortcutCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)_setDecorationImage:(id)image
{
  imageCopy = image;
  decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
  image = [decorationImageView image];
  v7 = [imageCopy isEqual:image];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53___UIContextMenuCellContentView__setDecorationImage___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = imageCopy;
    selfCopy = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)setOptions:(unint64_t)options
{
  options = self->_options;
  if (options != options)
  {
    self->_options = options;
    [(_UIContextMenuCellContentView *)self _updateForOptionsChangeFromPreviousOptions:options];
  }
}

- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)options
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke;
  aBlock[3] = &unk_1E71162C0;
  aBlock[4] = self;
  aBlock[5] = options;
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
    traitCollection = [(UIView *)self traitCollection];
    v11 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

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

- (void)setNumberOfTitleLines:(unint64_t)lines
{
  if (self->_numberOfTitleLines != lines)
  {
    self->_numberOfTitleLines = lines;
    [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];

    [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
  }
}

- (unint64_t)measuredNumberOfTitleLines
{
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  _measuredNumberOfLines = [titleLabel _measuredNumberOfLines];

  return _measuredNumberOfLines;
}

- (unint64_t)measuredNumberOfSubTitleLines
{
  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
  _measuredNumberOfLines = [subtitleLabel _measuredNumberOfLines];

  return _measuredNumberOfLines;
}

- (void)_inheritRelevantPropertiesFromContentView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (viewCopy)
  {
    -[_UIContextMenuCellContentView setOverrideNumberOfTitleLines:](self, "setOverrideNumberOfTitleLines:", [viewCopy measuredNumberOfTitleLines]);
    measuredNumberOfSubTitleLines = [v6 measuredNumberOfSubTitleLines];
  }

  else
  {
    measuredNumberOfSubTitleLines = -1;
    [(_UIContextMenuCellContentView *)self setOverrideNumberOfTitleLines:-1];
  }

  [(_UIContextMenuCellContentView *)self setOverrideNumberOfSubtitleLines:measuredNumberOfSubTitleLines];
  [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];
  [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
}

- (void)_hideContents
{
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  [titleLabel setAlpha:0.0];

  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
  [subtitleLabel setAlpha:0.0];

  decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
  [decorationImageView setAlpha:0.0];

  iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  [iconImageView setAlpha:0.0];
}

- (void)prepareForReuse
{
  pasteVariant = [(_UIContextMenuCellContentView *)self pasteVariant];

  if (pasteVariant)
  {
    titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
    [titleLabel setAlpha:1.0];

    subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
    [subtitleLabel setAlpha:1.0];

    decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
    [decorationImageView setAlpha:1.0];

    iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
    [iconImageView setAlpha:1.0];

    [(_UIContextMenuCellContentView *)self setPasteVariant:0];
    WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
    [WeakRetained removeFromSuperview];

    objc_storeWeak(&self->_securePasteButtonSlotView, 0);
  }
}

- (void)setPasteVariant:(id)variant
{
  variantCopy = variant;
  v10 = variantCopy;
  if (variantCopy)
  {
    v6 = [variantCopy localizedStringForLocalization:0];
    [(_UIContextMenuCellContentView *)self setTitle:v6];

    [(_UIContextMenuCellContentView *)self setSubtitle:0];
    glyph = [v10 glyph];
    v8 = [UIImage _systemImageNamed:glyph];
    [(_UIContextMenuCellContentView *)self setImage:v8];

    objc_storeStrong(&self->_pasteVariant, variant);
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
  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];

  if (!subtitleLabel)
  {
    v4 = [UILabel alloc];
    v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5 setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    LODWORD(v6) = 0.5;
    [(UILabel *)v5 _setHyphenationFactor:v6];
    traitCollection = [(UIView *)self traitCollection];
    v8 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    subtitleFont = [v8 subtitleFont];
    _fontAdjustedForCurrentContentSizeCategory = [subtitleFont _fontAdjustedForCurrentContentSizeCategory];

    [(UILabel *)v5 setFont:_fontAdjustedForCurrentContentSizeCategory];
    _subtitleTextColor = [(_UIContextMenuCellContentView *)self _subtitleTextColor];
    [(UILabel *)v5 setTextColor:_subtitleTextColor];

    [(UIView *)v5 _setOverrideUserInterfaceRenderingMode:[(_UIContextMenuCellContentView *)self _subtitleLabelRenderingMode]];
    _subtitleLabelFilterForCurrentTraitsAndState = [(_UIContextMenuCellContentView *)self _subtitleLabelFilterForCurrentTraitsAndState];
    layer = [(UIView *)v5 layer];
    [layer setCompositingFilter:_subtitleLabelFilterForCurrentTraitsAndState];

    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v5;

    [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
    labelStackView = [(_UIContextMenuCellContentView *)self labelStackView];
    subtitleLabel2 = [(_UIContextMenuCellContentView *)self subtitleLabel];
    [labelStackView addArrangedSubview:subtitleLabel2];
  }
}

- (id)_contentImageViewForImage:(id)image
{
  imageCopy = image;
  v5 = [[UIImageView alloc] initWithImage:imageCopy];
  [(UIImageView *)v5 setContentMode:1];
  [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _primaryContentColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  [(UIView *)v5 setTintColor:_primaryContentColorForCurrentState];

  isSymbolImage = [imageCopy isSymbolImage];
  if (isSymbolImage)
  {
    _primaryCompositingFilterForCurrentTraitsAndState = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  }

  else
  {
    _primaryCompositingFilterForCurrentTraitsAndState = 0;
  }

  layer = [(UIView *)v5 layer];
  [layer setCompositingFilter:_primaryCompositingFilterForCurrentTraitsAndState];

  if (isSymbolImage)
  {
  }

  return v5;
}

- (void)_updateAppearanceForStateChange
{
  _primaryContentColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  if (![(_UIContextMenuCellContentView *)self typeSelectState])
  {
    if ([(_UIContextMenuCellContentView *)self _primaryContentColorShouldOverrideForCurrentState]|| ![(_UIContextMenuCellContentView *)self hasAttributedTitle])
    {
      titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
      [titleLabel setTextColor:_primaryContentColorForCurrentState];

      emphasizedTitleLabel = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [emphasizedTitleLabel setTextColor:_primaryContentColorForCurrentState];
    }

    _childIndicatorColorForCurrentState = [(_UIContextMenuCellContentView *)self _childIndicatorColorForCurrentState];
    decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
    [decorationImageView setTintColor:_childIndicatorColorForCurrentState];

    iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
    [iconImageView setTintColor:_primaryContentColorForCurrentState];

    [(_UIContextMenuCellContentView *)self _updateIconImageAppearanceForStateChange];
    emphasizedIconImageView = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    [emphasizedIconImageView setTintColor:_primaryContentColorForCurrentState];

    accessoryButton = [(_UIContextMenuCellContentView *)self accessoryButton];
    imageView = [accessoryButton imageView];
    [imageView setTintColor:_primaryContentColorForCurrentState];
  }

  traitCollection = [(UIView *)self traitCollection];
  v12 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  wantsFloatingContentViewAsBackground = [v12 wantsFloatingContentViewAsBackground];

  if ((wantsFloatingContentViewAsBackground & 1) == 0)
  {
    _primaryBackgroundColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryBackgroundColorForCurrentState];
    [(UIView *)self setBackgroundColor:_primaryBackgroundColorForCurrentState];
  }
}

- (void)_updateIconImageAppearanceForStateChange
{
  iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  image = [iconImageView image];
  if ([image isSymbolImage])
  {
    iconImageView2 = [(_UIContextMenuCellContentView *)self iconImageView];
    image2 = [iconImageView2 image];
    _isColoredSymbolImage = [image2 _isColoredSymbolImage];

    if (!_isColoredSymbolImage)
    {
      return;
    }

    traitCollection = [(UIView *)self traitCollection];
    iconImageView = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    image = [iconImageView itemColoredSymbolImageUserInterfaceStyleOverrideProvider];
    if (image)
    {
      v8 = image[2](image, [(_UIContextMenuCellContentView *)self controlState], ([(_UIContextMenuCellContentView *)self options]>> 1) & 1);
      iconImageView3 = [(_UIContextMenuCellContentView *)self iconImageView];
      _internalTraitOverrides = [(UIView *)iconImageView3 _internalTraitOverrides];
      v11 = _internalTraitOverrides;
      if (v8)
      {
        [_internalTraitOverrides setUserInterfaceStyle:v8];
      }

      else
      {
        [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
      }
    }
  }
}

- (void)setIsEmphasized:(BOOL)emphasized
{
  if (self->_isEmphasized != emphasized)
  {
    self->_isEmphasized = emphasized;
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

    titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
    [titleLabel setAlpha:v4];

    if (self->_isEmphasized)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    emphasizedTitleLabel = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [emphasizedTitleLabel setAlpha:v6];

    titleLabel2 = [(_UIContextMenuCellContentView *)self titleLabel];
    numberOfLines = [titleLabel2 numberOfLines];
    emphasizedTitleLabel2 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [emphasizedTitleLabel2 setNumberOfLines:numberOfLines];

    if (self->_isEmphasized)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
    [iconImageView setAlpha:v11];

    if (self->_isEmphasized)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    emphasizedIconImageView = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
    [emphasizedIconImageView setAlpha:v13];

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

        decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
        [decorationImageView setAlpha:v18];
      }

      else
      {
        v15 = 0.0;
        if (self->_isEmphasized)
        {
          superview = [(UIView *)self superview];
          if ([superview _flipsHorizontalAxis])
          {
            v15 = -1.57079633;
          }

          else
          {
            v15 = 1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v43, v15);
        decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
        v46 = v43;
        [decorationImageView setTransform:&v46];
      }
    }

    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *&v42.a = *MEMORY[0x1E695EFD0];
    *&v42.c = v19;
    *&v42.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v41.a = *&v42.a;
    *&v41.c = v19;
    *&v41.tx = *&v42.tx;
    titleLabel3 = [(_UIContextMenuCellContentView *)self titleLabel];
    titleLabel4 = [(_UIContextMenuCellContentView *)self titleLabel];
    [titleLabel4 bounds];
    [titleLabel3 sizeThatFits:{v22, v23}];
    v25 = v24;

    emphasizedTitleLabel3 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    emphasizedTitleLabel4 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    [emphasizedTitleLabel4 bounds];
    [emphasizedTitleLabel3 sizeThatFits:{v28, v29}];
    v31 = v30;

    effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
    if (self->_isEmphasized)
    {
      titleLabel5 = [(_UIContextMenuCellContentView *)self titleLabel];
      [titleLabel5 bounds];
      v34 = CGRectGetWidth(v47) * -0.5;
      if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
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
      titleLabel5 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
      [titleLabel5 bounds];
      v36 = CGRectGetWidth(v48) * -0.5;
      if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
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

    titleLabel6 = [(_UIContextMenuCellContentView *)self titleLabel];
    v46 = v42;
    [titleLabel6 setTransform:&v46];

    emphasizedTitleLabel5 = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
    v46 = v41;
    [emphasizedTitleLabel5 setTransform:&v46];
  }
}

- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  self->_controlState = state;
  [(_UIContextMenuCellContentView *)self _updateCompositingFiltersForCurrentState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___UIContextMenuCellContentView_setControlState_withAnimationCoordinator___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (coordinatorCopy)
  {
    [coordinatorCopy addCoordinatedAnimations:v7 completion:0];
  }

  else
  {
    (*(v7 + 2))(v7);
  }

  layout = [(_UIContextMenuCellContentView *)self layout];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    layout2 = [(_UIContextMenuCellContentView *)self layout];
    [layout2 setControlState:state withAnimationCoordinator:coordinatorCopy];
  }
}

- (void)_updateCompositingFiltersForCurrentState
{
  _primaryCompositingFilterForCurrentTraitsAndState = [(_UIContextMenuCellContentView *)self _primaryCompositingFilterForCurrentTraitsAndState];
  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  layer = [titleLabel layer];
  [layer setCompositingFilter:_primaryCompositingFilterForCurrentTraitsAndState];

  _subtitleLabelFilterForCurrentTraitsAndState = [(_UIContextMenuCellContentView *)self _subtitleLabelFilterForCurrentTraitsAndState];
  subtitleLabel = [(_UIContextMenuCellContentView *)self subtitleLabel];
  layer2 = [subtitleLabel layer];
  [layer2 setCompositingFilter:_subtitleLabelFilterForCurrentTraitsAndState];

  emphasizedTitleLabel = [(_UIContextMenuCellContentView *)self emphasizedTitleLabel];
  layer3 = [emphasizedTitleLabel layer];
  [layer3 setCompositingFilter:_primaryCompositingFilterForCurrentTraitsAndState];

  iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  image = [iconImageView image];
  if ([image isSymbolImage])
  {
    v12 = _primaryCompositingFilterForCurrentTraitsAndState;
  }

  else
  {
    v12 = 0;
  }

  iconImageView2 = [(_UIContextMenuCellContentView *)self iconImageView];
  layer4 = [iconImageView2 layer];
  [layer4 setCompositingFilter:v12];

  emphasizedIconImageView = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
  image2 = [emphasizedIconImageView image];
  if ([image2 isSymbolImage])
  {
    v17 = _primaryCompositingFilterForCurrentTraitsAndState;
  }

  else
  {
    v17 = 0;
  }

  emphasizedIconImageView2 = [(_UIContextMenuCellContentView *)self emphasizedIconImageView];
  layer5 = [emphasizedIconImageView2 layer];
  [layer5 setCompositingFilter:v17];

  decorationImageView = [(_UIContextMenuCellContentView *)self decorationImageView];
  image3 = [decorationImageView image];
  if ([image3 isSymbolImage])
  {
    v22 = _primaryCompositingFilterForCurrentTraitsAndState;
  }

  else
  {
    v22 = 0;
  }

  decorationImageView2 = [(_UIContextMenuCellContentView *)self decorationImageView];
  layer6 = [decorationImageView2 layer];
  [layer6 setCompositingFilter:v22];
}

- (void)_updateLabelsForCurrentState
{
  [(_UIContextMenuCellContentView *)self _updateTitleLabelNumberOfLines];
  [(_UIContextMenuCellContentView *)self _updateSubtitleLabelNumberOfLines];
  v3 = [(_UIContextMenuCellContentView *)self _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
  iconImageView = [(_UIContextMenuCellContentView *)self iconImageView];
  [iconImageView _setOverridingSymbolConfiguration:v3];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (id)_subtitleLabelFilterForCurrentTraitsAndState
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  itemSubtitleCompositingFilterProvider = [v4 itemSubtitleCompositingFilterProvider];
  if (itemSubtitleCompositingFilterProvider)
  {
    itemSubtitleCompositingFilterProvider2 = [v4 itemSubtitleCompositingFilterProvider];
    traitCollection2 = [(UIView *)self traitCollection];
    v8 = (itemSubtitleCompositingFilterProvider2)[2](itemSubtitleCompositingFilterProvider2, traitCollection2, [(_UIContextMenuCellContentView *)self controlState]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_subtitleLabelRenderingMode
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  itemSubtitleRenderingMode = [v3 itemSubtitleRenderingMode];
  return itemSubtitleRenderingMode;
}

- (id)_iconSymbolConfigurationForCurrentTraitsUsingBoldFont:(BOOL)font
{
  fontCopy = font;
  layout = [(_UIContextMenuCellContentView *)self layout];
  v6 = [layout preferredIconFontUsingBoldFont:fontCopy];

  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v9);

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
  layout = [(_UIContextMenuCellContentView *)self layout];
  preferredBackgroundColorForCurrentState = [layout preferredBackgroundColorForCurrentState];

  if (!preferredBackgroundColorForCurrentState)
  {
    options = [(_UIContextMenuCellContentView *)self options];
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    controlState = [(_UIContextMenuCellContentView *)self controlState];
    v9 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    itemBackgroundColorProvider = [v9 itemBackgroundColorProvider];
    v11 = itemBackgroundColorProvider;
    if (itemBackgroundColorProvider)
    {
      preferredBackgroundColorForCurrentState = (*(itemBackgroundColorProvider + 16))(itemBackgroundColorProvider, controlState, (options >> 1) & 1);
    }

    else
    {
      preferredBackgroundColorForCurrentState = 0;
    }
  }

  return preferredBackgroundColorForCurrentState;
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
  if (!-[_UIContextMenuCellContentView _hasTrailingAccessory](self, "_hasTrailingAccessory") || (-[UIView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "trailingAccessoryColor"), _primaryContentColorForCurrentState = objc_claimAutoreleasedReturnValue(), v4, v3, !_primaryContentColorForCurrentState))
  {
    _primaryContentColorForCurrentState = [(_UIContextMenuCellContentView *)self _primaryContentColorForCurrentState];
  }

  return _primaryContentColorForCurrentState;
}

- (id)_subtitleTextColor
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  itemSubtitleColor = [v3 itemSubtitleColor];

  return itemSubtitleColor;
}

- (CGSize)_maxImageSize
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  titleLabel = [(_UIContextMenuCellContentView *)self titleLabel];
  font = [titleLabel font];
  v7 = font;
  if (font)
  {
    v8 = font;
  }

  else
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v10 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
    titleFont = [v10 titleFont];
    v8 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection2];
  }

  v12 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v12 dynamicImageBoxWidth];
  v14 = v13;

  [v8 _scaledValueForValue:v14];
  UIRoundToViewScale(self);
  v16 = v15;
  v17 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v17 itemTopToFirstBaseline];
  v19 = v18;

  v20 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  decorationViewSymbolConfiguration = [v3 decorationViewSymbolConfiguration];

  return decorationViewSymbolConfiguration;
}

- (id)_childIndicatorSymbolImageConfiguration
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  childIndicatorSymbolConfiguration = [v3 childIndicatorSymbolConfiguration];

  return childIndicatorSymbolConfiguration;
}

- (id)_selectionImage
{
  _decorationSymbolImageConfiguration = [(_UIContextMenuCellContentView *)self _decorationSymbolImageConfiguration];
  v3 = [UIImage systemImageNamed:@"checkmark" withConfiguration:_decorationSymbolImageConfiguration];

  return v3;
}

- (id)_mixedSelectionImage
{
  _decorationSymbolImageConfiguration = [(_UIContextMenuCellContentView *)self _decorationSymbolImageConfiguration];
  v3 = [UIImage systemImageNamed:@"minus" withConfiguration:_decorationSymbolImageConfiguration];

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