@interface _UIEditMenuListViewCell
+ (CGSize)layoutSizeForItem:(id)item traitCollection:(id)collection containerSize:(CGSize)size;
- (BOOL)_wantsPasteSlotView;
- (UIEdgeInsets)arrowEdgeInsets;
- (_UIEditMenuListViewCell)initWithCoder:(id)coder;
- (_UIEditMenuListViewCell)initWithFrame:(CGRect)frame;
- (unsigned)_secureName;
- (void)_contentSizeCategoryDidChange;
- (void)_createViewHierarchy;
- (void)_hideContents;
- (void)_overlaySlotView:(id)view;
- (void)_setupSlotView;
- (void)_updateConstraints;
- (void)_updateFont;
- (void)_updateLayoutMargins;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setArrowEdgeInsets:(UIEdgeInsets)insets;
- (void)setBounds:(CGRect)bounds;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setMaximumContentWidth:(double)width;
@end

@implementation _UIEditMenuListViewCell

+ (CGSize)layoutSizeForItem:(id)item traitCollection:(id)collection containerSize:(CGSize)size
{
  width = size.width;
  v85[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  collectionCopy = collection;
  v9 = _UIEditMenuGetPlatformMetrics([collectionCopy userInterfaceIdiom]);
  title = [itemCopy title];
  image = [itemCopy image];
  customView = [itemCopy customView];
  v13 = _UIEditMenuIsInVerticalLayout(collectionCopy);
  menuItemMarginsProvider = [v9 menuItemMarginsProvider];
  v15 = menuItemMarginsProvider[2](menuItemMarginsProvider, [itemCopy isSingleItemMenu]);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v13)
  {
    v22 = width - v17 - v21;
  }

  else
  {
    v22 = 1.79769313e308;
  }

  v23 = collectionCopy;
  v24 = _UIEditMenuGetPlatformMetrics([v23 userInterfaceIdiom]);
  menuItemTitleFont = [v24 menuItemTitleFont];
  v26 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v23];

  if (customView)
  {
    traitCollection = [customView traitCollection];
    if (v23)
    {
      if (traitCollection && v23[13] == traitCollection[13])
      {
        v28 = v23[15];
        v29 = traitCollection[15];

        if (v28 == v29)
        {
LABEL_9:
          [customView systemLayoutSizeFittingSize:{v22, 1.79769313e308}];
          v31 = v30;
          v33 = v32;
LABEL_12:
          [v23 displayScale];
          v43 = v42;
          goto LABEL_33;
        }
      }

      else
      {
      }

      preferredContentSizeCategory = [v23 preferredContentSizeCategory];
      _internalTraitOverrides = [(UIView *)customView _internalTraitOverrides];
      [_internalTraitOverrides setPreferredContentSizeCategory:preferredContentSizeCategory];

      legibilityWeight = [v23 legibilityWeight];
      _internalTraitOverrides2 = [(UIView *)customView _internalTraitOverrides];
      [_internalTraitOverrides2 setLegibilityWeight:legibilityWeight];

      [customView setNeedsLayout];
      [customView layoutIfNeeded];
      [customView systemLayoutSizeFittingSize:{v22, 1.79769313e308}];
      v31 = v38;
      v33 = v39;
      _internalTraitOverrides3 = [(UIView *)customView _internalTraitOverrides];
      [_internalTraitOverrides3 removeTrait:objc_opt_class()];

      _internalTraitOverrides4 = [(UIView *)customView _internalTraitOverrides];
      [_internalTraitOverrides4 removeTrait:objc_opt_class()];

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v44 = *MEMORY[0x1E695F060];
  v45 = *(MEMORY[0x1E695F060] + 8);
  v83 = v45;
  v46 = *MEMORY[0x1E695F060];
  if (([itemCopy hidesTitleForTraitCollection:v23] & 1) == 0)
  {
    v84 = *off_1E70EC918;
    v85[0] = v26;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    [title boundingRectWithSize:1 options:v47 attributes:0 context:{v22, 1.79769313e308}];
    v46 = v48;
    v83 = v49;
  }

  if (([itemCopy hidesImageForTraitCollection:v23] & 1) == 0)
  {
    v50 = [UIImageSymbolConfiguration configurationWithFont:v26];
    v51 = [v50 configurationWithTraitCollection:v23];

    v52 = _layoutImageView;
    if (!_layoutImageView)
    {
      v53 = objc_opt_new();
      v54 = _layoutImageView;
      _layoutImageView = v53;

      [_layoutImageView setPreferredSymbolConfiguration:v51];
      v52 = _layoutImageView;
    }

    traitCollection2 = [v52 traitCollection];
    v82 = title;
    if (v23)
    {
      if (traitCollection2 && v23[13] == traitCollection2[13])
      {
        v56 = v23[15];
        v57 = v51;
        v58 = traitCollection2[15];

        v59 = v56 == v58;
        v51 = v57;
        if (v59)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      preferredContentSizeCategory2 = [v23 preferredContentSizeCategory];
      [_layoutImageView traitOverrides];
      v62 = v61 = v51;
      [v62 setPreferredContentSizeCategory:preferredContentSizeCategory2];

      legibilityWeight2 = [v23 legibilityWeight];
      traitOverrides = [_layoutImageView traitOverrides];
      [traitOverrides setLegibilityWeight:legibilityWeight2];

      v51 = v61;
      [_layoutImageView setPreferredSymbolConfiguration:v61];
      [_layoutImageView updateTraitsIfNeeded];
    }

    else
    {
    }

LABEL_26:
    [_layoutImageView setImage:image];
    [_layoutImageView sizeToFit];
    [_layoutImageView bounds];
    v66 = v65;
    v68 = v67;
    [_layoutImageView alignmentRectInsets];
    v44 = v66 - (v69 + v70);
    v45 = v68 - (v71 + v72);

    title = v82;
  }

  [v23 displayScale];
  v43 = v73;
  v74 = 0.0;
  if (v46 > 0.0 && v44 > 0.0)
  {
    v74 = 6.0;
  }

  v31 = v17 + v21 + v44 + v46 + v74;
  v33 = fmax(v83, v45) - (-v19 - v15);
LABEL_33:
  UICeilToScale(v31, v43);
  v77 = v76;
  UICeilToScale(v33, v43);
  v79 = v78;

  v80 = v77;
  v81 = v79;
  result.height = v81;
  result.width = v80;
  return result;
}

- (_UIEditMenuListViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIEditMenuListViewCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIEditMenuListViewCell *)v3 _createViewHierarchy];
  }

  return v4;
}

- (_UIEditMenuListViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIEditMenuListViewCell;
  v3 = [(UICollectionViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_UIEditMenuListViewCell *)v3 _createViewHierarchy];
  }

  return v4;
}

- (void)setMaximumContentWidth:(double)width
{
  if (self->_maximumContentWidth != width)
  {
    if (width == 0.0)
    {
      maximumWidthConstraint = self->_maximumWidthConstraint;
      if (maximumWidthConstraint)
      {
        [(NSLayoutConstraint *)maximumWidthConstraint setActive:0];
        v6 = self->_maximumWidthConstraint;
        self->_maximumWidthConstraint = 0;
      }
    }

    self->_maximumContentWidth = width;
    if (width != 0.0)
    {
      v7 = self->_maximumWidthConstraint;
      if (v7)
      {

        [(NSLayoutConstraint *)v7 setConstant:width];
      }

      else
      {
        contentView = [(UICollectionViewCell *)self contentView];
        widthAnchor = [contentView widthAnchor];
        v10 = [widthAnchor constraintLessThanOrEqualToConstant:width];
        v11 = self->_maximumWidthConstraint;
        self->_maximumWidthConstraint = v10;

        v12 = self->_maximumWidthConstraint;

        [(NSLayoutConstraint *)v12 setActive:1];
      }
    }
  }
}

- (void)setArrowEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_arrowEdgeInsets.top), vceqq_f64(v4, *&self->_arrowEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_arrowEdgeInsets = insets;
    [(_UIEditMenuListViewCell *)self _updateLayoutMargins];
    [(_UIEditMenuListViewCell *)self _setupSlotView];

    [(_UIEditMenuListViewCell *)self _updateConstraints];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  LODWORD(v3) = highlighted;
  item = [(_UIEditMenuListViewCell *)self item];
  options = [item options];

  if (options)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  v32.receiver = self;
  v32.super_class = _UIEditMenuListViewCell;
  [(UICollectionViewCell *)&v32 setHighlighted:v3];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (v3)
  {
    backgroundView = [(UICollectionViewCell *)self backgroundView];

    if (!backgroundView)
    {
      v10 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
      v11 = [UIVisualEffectView alloc];
      menuHighlightBackgroundEffect = [v10 menuHighlightBackgroundEffect];
      v13 = [(UIVisualEffectView *)v11 initWithEffect:menuHighlightBackgroundEffect];

      menuHighlightBackgroundColor = [v10 menuHighlightBackgroundColor];
      contentView = [(UIVisualEffectView *)v13 contentView];
      [contentView setBackgroundColor:menuHighlightBackgroundColor];

      [(UICollectionViewCell *)self setBackgroundView:v13];
    }
  }

  traitCollection2 = [(UIView *)self traitCollection];
  v17 = _UIEditMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  cellBackgroundShapeProvider = [v17 cellBackgroundShapeProvider];
  item2 = [(_UIEditMenuListViewCell *)self item];
  v20 = cellBackgroundShapeProvider[2](cellBackgroundShapeProvider, [item2 isSingleItemMenu]);

  [(UIView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  backgroundView2 = [(UICollectionViewCell *)self backgroundView];
  [backgroundView2 setFrame:{v22, v24, v26, v28}];

  backgroundView3 = [(UICollectionViewCell *)self backgroundView];
  [backgroundView3 _applyShape:v20];

  backgroundView4 = [(UICollectionViewCell *)self backgroundView];
  [backgroundView4 setHidden:v3 ^ 1];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  if (title)
  {
    goto LABEL_2;
  }

  image = [itemCopy image];

  if (!image)
  {
    title = [MEMORY[0x1E696AAA8] currentHandler];
    [title handleFailureInMethod:a2 object:self file:@"_UIEditMenuListViewCell.m" lineNumber:196 description:@"One of title or image must be non-null"];
LABEL_2:
  }

  objc_storeStrong(&self->_item, item);
  title2 = [itemCopy title];
  [(UILabel *)self->_titleLabel setText:title2];

  image2 = [itemCopy image];
  [(UIImageView *)self->_imageView setImage:image2];

  traitCollection = [(UIView *)self traitCollection];
  -[UIView setHidden:](self->_titleLabel, "setHidden:", [itemCopy hidesTitleForTraitCollection:traitCollection]);

  traitCollection2 = [(UIView *)self traitCollection];
  -[UIImageView setHidden:](self->_imageView, "setHidden:", [itemCopy hidesImageForTraitCollection:traitCollection2]);

  v12 = +[UIColor labelColor];
  if ([itemCopy options])
  {
    destructiveColor = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (([itemCopy options] & 2) == 0)
    {
      v13 = 1;
      goto LABEL_10;
    }

    v15 = _UIEditMenuGetPlatformMetrics([(UIView *)self _userInterfaceIdiom]);
    destructiveColor = [v15 destructiveColor];

    v12 = v15;
  }

  v13 = 0;
  v12 = destructiveColor;
LABEL_10:
  [(UILabel *)self->_titleLabel setTextColor:v12];
  [(UIView *)self->_imageView setTintColor:v12];
  [(UIView *)self->_titleLabel _setEnableMonochromaticTreatment:v13];
  if (v13)
  {
    image3 = [itemCopy image];
    -[UIView _setEnableMonochromaticTreatment:](self->_imageView, "_setEnableMonochromaticTreatment:", [image3 _isColoredSymbolImage] ^ 1);
  }

  else
  {
    [(UIView *)self->_imageView _setEnableMonochromaticTreatment:0];
  }

  menuElement = [itemCopy menuElement];
  accessibilityIdentifier = [menuElement accessibilityIdentifier];
  [self setAccessibilityIdentifier:accessibilityIdentifier];

  customView = [itemCopy customView];
  p_customView = &self->_customView;
  customView = self->_customView;
  self->_customView = customView;

  contentStackView = self->_contentStackView;
  if (self->_customView)
  {
    [(UIView *)contentStackView removeFromSuperview];
    [*p_customView setTranslatesAutoresizingMaskIntoConstraints:0];
LABEL_15:
    contentView = [(UICollectionViewCell *)self contentView];
    [contentView addSubview:*p_customView];

    [(_UIEditMenuListViewCell *)self _updateConstraints];
    goto LABEL_17;
  }

  superview = [(UIView *)contentStackView superview];

  if (!superview)
  {
    p_customView = &self->_contentStackView;
    goto LABEL_15;
  }

LABEL_17:
  [itemCopy overrideMinimumWidth];
  if (v25 <= 0.0)
  {
    minimumWidthConstraint = [(_UIEditMenuListViewCell *)self minimumWidthConstraint];

    if (minimumWidthConstraint)
    {
      [(NSLayoutConstraint *)self->_minimumWidthConstraint setActive:0];
      minimumWidthConstraint = self->_minimumWidthConstraint;
      self->_minimumWidthConstraint = 0;
    }
  }

  else if (self->_minimumWidthConstraint)
  {
    [itemCopy overrideMinimumWidth];
    [(NSLayoutConstraint *)self->_minimumWidthConstraint setConstant:?];
  }

  else
  {
    contentView2 = [(UICollectionViewCell *)self contentView];
    widthAnchor = [contentView2 widthAnchor];
    [itemCopy overrideMinimumWidth];
    v30 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
    v31 = self->_minimumWidthConstraint;
    self->_minimumWidthConstraint = v30;

    [(NSLayoutConstraint *)self->_minimumWidthConstraint setActive:1];
  }

  if ([itemCopy isSingleItemMenu])
  {
    [(_UIEditMenuListViewCell *)self _updateLayoutMargins];
  }

  [(_UIEditMenuListViewCell *)self _setupSlotView];
  [(UIView *)self setNeedsLayout];
}

- (void)_createViewHierarchy
{
  v17[2] = *MEMORY[0x1E69E9840];
  contentView = [(UICollectionViewCell *)self contentView];
  [contentView setInsetsLayoutMarginsFromSafeArea:0];

  v4 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v6;

  v8 = +[_UITraitMonochromaticTreatment _glassMonochromaticTreatment];
  [(UIView *)self->_titleLabel _setMonochromaticTreatment:v8];
  [(UIView *)self->_imageView _setMonochromaticTreatment:v8];
  v9 = [UIStackView alloc];
  v10 = self->_titleLabel;
  v17[0] = self->_imageView;
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [(UIStackView *)v9 initWithArrangedSubviews:v11];

  [(UIStackView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v12 setSpacing:6.0];
  [(UIStackView *)v12 setAxis:0];
  objc_storeStrong(&self->_contentStackView, v12);
  contentView2 = [(UICollectionViewCell *)self contentView];
  [contentView2 addSubview:v12];

  [(_UIEditMenuListViewCell *)self _updateLayoutMargins];
  [(_UIEditMenuListViewCell *)self _updateConstraints];
  [(_UIEditMenuListViewCell *)self _updateFont];
  [(UIView *)self _setDisableDictationTouchCancellation:1];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v15 = [(UIView *)self registerForTraitChanges:v14 withAction:sel__contentSizeCategoryDidChange];
}

- (void)_contentSizeCategoryDidChange
{
  [(_UIEditMenuListViewCell *)self _updateFont];
  item = self->_item;
  traitCollection = [(UIView *)self traitCollection];
  [(UIView *)self->_titleLabel setHidden:[(_UIEditMenuListItem *)item hidesTitleForTraitCollection:traitCollection]];

  v5 = self->_item;
  traitCollection2 = [(UIView *)self traitCollection];
  [(UIImageView *)self->_imageView setHidden:[(_UIEditMenuListItem *)v5 hidesImageForTraitCollection:traitCollection2]];
}

- (void)_updateConstraints
{
  v35[4] = *MEMORY[0x1E69E9840];
  v3 = 0x1E6997000uLL;
  if (self->_contentConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  customView = self->_customView;
  if (customView)
  {
    leftAnchor = [(UIView *)customView leftAnchor];
    contentView = [(UICollectionViewCell *)self contentView];
    leftAnchor2 = [contentView leftAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    leadingAnchor2 = leftAnchor2;
    v31 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v6];
    v35[0] = v31;
    topAnchor = [(UIView *)self->_customView topAnchor];
    contentView2 = [(UICollectionViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v30 = topAnchor;
    v28 = topAnchor2;
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v35[1] = v27;
    contentView3 = [(UICollectionViewCell *)self contentView];
    rightAnchor = [contentView3 rightAnchor];
    rightAnchor2 = [(UIView *)self->_customView rightAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    bottomAnchor3 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v11];
    v35[2] = bottomAnchor3;
    contentView4 = [(UICollectionViewCell *)self contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_customView bottomAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v16];
    v35[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];

    v3 = 0x1E6997000;
    layoutMarginsGuide = leftAnchor;
  }

  else
  {
    contentView5 = [(UICollectionViewCell *)self contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];

    leadingAnchor = [(UIView *)self->_contentStackView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    contentView = leadingAnchor;
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v31;
    trailingAnchor = [(UIView *)self->_contentStackView trailingAnchor];
    contentView2 = [layoutMarginsGuide trailingAnchor];
    v30 = trailingAnchor;
    v28 = [trailingAnchor constraintEqualToAnchor:contentView2];
    v34[1] = v28;
    topAnchor3 = [(UIView *)self->_contentStackView topAnchor];
    contentView3 = [layoutMarginsGuide topAnchor];
    v27 = topAnchor3;
    rightAnchor = [topAnchor3 constraintEqualToAnchor:contentView3];
    v34[2] = rightAnchor;
    rightAnchor2 = [(UIView *)self->_contentStackView bottomAnchor];
    bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
    contentView4 = [rightAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v34[3] = contentView4;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  }

  [*(v3 + 1952) activateConstraints:v18];
  contentConstraints = self->_contentConstraints;
  self->_contentConstraints = v18;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIEditMenuListViewCell;
  [(UIView *)&v4 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    [(_UIEditMenuListViewCell *)self _updateFont];
  }
}

- (void)_updateFont
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  menuItemTitleFont = [v4 menuItemTitleFont];
  v12 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  [(UILabel *)self->_titleLabel setFont:v12];
  v6 = [UIImageSymbolConfiguration configurationWithFont:v12];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v6];

  traitCollection2 = [(UIView *)self traitCollection];
  v8 = _UIEditMenuIsInVerticalLayout(traitCollection2);

  v9 = v8 ^ 1u;
  if (v8)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v9];
  [(UILabel *)self->_titleLabel setTextAlignment:v10];
  [(UIImageView *)self->_imageView setContentMode:v11];
}

- (void)_updateLayoutMargins
{
  traitCollection = [(UIView *)self traitCollection];
  v22 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  menuItemMarginsProvider = [v22 menuItemMarginsProvider];
  item = [(_UIEditMenuListViewCell *)self item];
  v6 = menuItemMarginsProvider[2](menuItemMarginsProvider, [item isSingleItemMenu]);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 + v19;
  contentView = [(UICollectionViewCell *)self contentView];
  [contentView setLayoutMargins:{v14, v16, v18, v20}];
}

- (void)setBounds:(CGRect)bounds
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuListViewCell;
  [(UIView *)&v5 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  securePasteButtonSlotView = [(_UIEditMenuListViewCell *)self securePasteButtonSlotView];

  if (securePasteButtonSlotView)
  {
    [(_UIEditMenuListViewCell *)self _setupSlotView];
  }
}

- (void)_setupSlotView
{
  if ([(_UIEditMenuListViewCell *)self _wantsPasteSlotView]&& ([(_UIEditMenuListItem *)self->_item options]& 1) == 0)
  {
    securePasteButtonSlotView = self->_securePasteButtonSlotView;
    if (securePasteButtonSlotView)
    {
      v4 = securePasteButtonSlotView;
    }

    else
    {
      v4 = objc_alloc_init(_UISlotView);
      v5 = self->_securePasteButtonSlotView;
      self->_securePasteButtonSlotView = v4;
    }

    traitCollection = [(UIView *)self traitCollection];
    v7 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    menuItemMarginsProvider = [v7 menuItemMarginsProvider];
    item = [(_UIEditMenuListViewCell *)self item];
    v10 = menuItemMarginsProvider[2](menuItemMarginsProvider, [item isSingleItemMenu]);
    v12 = v11;

    [(UIView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v22 = v16 + v21;
    v25 = v18 - (v23 + v24);
    v50.size.height = v20 - (v21 + v26);
    v50.origin.x = v14 + v23;
    v50.origin.y = v22;
    v50.size.width = v25;
    v51 = CGRectInset(v50, 2.0, 0.0);
    width = v51.size.width;
    height = v51.size.height;
    v29 = v12 + -2.0;
    traitCollection2 = [(UIView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      displayMode = 0;
    }

    else
    {
      item2 = [(_UIEditMenuListViewCell *)self item];
      displayMode = [item2 displayMode];
    }

    v35 = MEMORY[0x1E69BC820];
    item3 = [(_UIEditMenuListViewCell *)self item];
    pasteVariant = [item3 pasteVariant];
    v38 = [v35 editMenuPasteButtonTagWithSecureName:objc_msgSend(pasteVariant size:"secureName") contentOrigin:displayMode displayMode:{width, height, v29, v10}];

    objc_initWeak(&location, self);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __41___UIEditMenuListViewCell__setupSlotView__block_invoke;
    v47[3] = &unk_1E70F7530;
    v39 = v38;
    v48 = v39;
    [(_UISlotView *)v4 _setSlotStyleResolver:v47];
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __41___UIEditMenuListViewCell__setupSlotView__block_invoke_2;
    v44 = &unk_1E70F75A8;
    v40 = v39;
    v45 = v40;
    objc_copyWeak(&v46, &location);
    [(_UISlotView *)v4 _setSlotAnyContentProvider:&v41];
    [(_UIEditMenuListViewCell *)self _overlaySlotView:v4, v41, v42, v43, v44];
    objc_destroyWeak(&v46);

    objc_destroyWeak(&location);
  }
}

- (BOOL)_wantsPasteSlotView
{
  item = [(_UIEditMenuListViewCell *)self item];
  pasteVariant = [item pasteVariant];
  if (pasteVariant)
  {
    item2 = [(_UIEditMenuListViewCell *)self item];
    wantsPasteSlotView = [item2 wantsPasteSlotView];
  }

  else
  {
    wantsPasteSlotView = 0;
  }

  return wantsPasteSlotView;
}

- (unsigned)_secureName
{
  item = [(_UIEditMenuListViewCell *)self item];
  pasteVariant = [item pasteVariant];

  if (pasteVariant)
  {
    secureName = [pasteVariant secureName];
  }

  else
  {
    secureName = 0;
  }

  return secureName;
}

- (void)_overlaySlotView:(id)view
{
  v28[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  superview = [viewCopy superview];
  contentView = [(UICollectionViewCell *)self contentView];

  if (superview != contentView)
  {
    [viewCopy setUserInteractionEnabled:0];
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(UICollectionViewCell *)self contentView];
    [contentView2 addSubview:viewCopy];

    centerXAnchor = [viewCopy centerXAnchor];
    contentView3 = [(UICollectionViewCell *)self contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    slotViewCenterXConstraint = self->_slotViewCenterXConstraint;
    self->_slotViewCenterXConstraint = v11;

    centerYAnchor = [viewCopy centerYAnchor];
    contentView4 = [(UICollectionViewCell *)self contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    slotViewCenterYConstraint = self->_slotViewCenterYConstraint;
    self->_slotViewCenterYConstraint = v16;

    v18 = MEMORY[0x1E69977A0];
    slotViewCenterXConstraint = [(_UIEditMenuListViewCell *)self slotViewCenterXConstraint];
    v28[0] = slotViewCenterXConstraint;
    slotViewCenterYConstraint = [(_UIEditMenuListViewCell *)self slotViewCenterYConstraint];
    v28[1] = slotViewCenterYConstraint;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v18 activateConstraints:v21];
  }

  if (self->_slotViewCenterXConstraint)
  {
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v23 = v22;
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    [(NSLayoutConstraint *)self->_slotViewCenterXConstraint setConstant:(v23 - v24) * 0.5];
  }

  if (self->_slotViewCenterYConstraint)
  {
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v26 = v25;
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    [(NSLayoutConstraint *)self->_slotViewCenterYConstraint setConstant:(v26 - v27) * 0.5];
  }
}

- (void)_hideContents
{
  contentStackView = [(_UIEditMenuListViewCell *)self contentStackView];
  [contentStackView setAlpha:0.0];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = _UIEditMenuListViewCell;
  [(UICollectionViewCell *)&v10 prepareForReuse];
  if ([(_UIEditMenuListViewCell *)self _wantsPasteSlotView])
  {
    contentStackView = [(_UIEditMenuListViewCell *)self contentStackView];
    [contentStackView setAlpha:1.0];

    [(UIView *)self->_securePasteButtonSlotView removeFromSuperview];
    securePasteButtonSlotView = self->_securePasteButtonSlotView;
    self->_securePasteButtonSlotView = 0;

    slotViewCenterYConstraint = self->_slotViewCenterYConstraint;
    self->_slotViewCenterYConstraint = 0;
  }

  superview = [(UIView *)self->_customView superview];
  contentView = [(UICollectionViewCell *)self contentView];

  if (superview == contentView)
  {
    [(UIView *)self->_customView removeFromSuperview];
  }

  customView = self->_customView;
  self->_customView = 0;

  item = self->_item;
  self->_item = 0;
}

- (UIEdgeInsets)arrowEdgeInsets
{
  top = self->_arrowEdgeInsets.top;
  left = self->_arrowEdgeInsets.left;
  bottom = self->_arrowEdgeInsets.bottom;
  right = self->_arrowEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end