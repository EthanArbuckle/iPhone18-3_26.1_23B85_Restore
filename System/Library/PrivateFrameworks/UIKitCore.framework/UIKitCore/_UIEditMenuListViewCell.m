@interface _UIEditMenuListViewCell
+ (CGSize)layoutSizeForItem:(id)a3 traitCollection:(id)a4 containerSize:(CGSize)a5;
- (BOOL)_wantsPasteSlotView;
- (UIEdgeInsets)arrowEdgeInsets;
- (_UIEditMenuListViewCell)initWithCoder:(id)a3;
- (_UIEditMenuListViewCell)initWithFrame:(CGRect)a3;
- (unsigned)_secureName;
- (void)_contentSizeCategoryDidChange;
- (void)_createViewHierarchy;
- (void)_hideContents;
- (void)_overlaySlotView:(id)a3;
- (void)_setupSlotView;
- (void)_updateConstraints;
- (void)_updateFont;
- (void)_updateLayoutMargins;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setArrowEdgeInsets:(UIEdgeInsets)a3;
- (void)setBounds:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setMaximumContentWidth:(double)a3;
@end

@implementation _UIEditMenuListViewCell

+ (CGSize)layoutSizeForItem:(id)a3 traitCollection:(id)a4 containerSize:(CGSize)a5
{
  width = a5.width;
  v85[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  v10 = [v7 title];
  v11 = [v7 image];
  v12 = [v7 customView];
  v13 = _UIEditMenuIsInVerticalLayout(v8);
  v14 = [v9 menuItemMarginsProvider];
  v15 = v14[2](v14, [v7 isSingleItemMenu]);
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

  v23 = v8;
  v24 = _UIEditMenuGetPlatformMetrics([v23 userInterfaceIdiom]);
  v25 = [v24 menuItemTitleFont];
  v26 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v23];

  if (v12)
  {
    v27 = [v12 traitCollection];
    if (v23)
    {
      if (v27 && v23[13] == v27[13])
      {
        v28 = v23[15];
        v29 = v27[15];

        if (v28 == v29)
        {
LABEL_9:
          [v12 systemLayoutSizeFittingSize:{v22, 1.79769313e308}];
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

      v34 = [v23 preferredContentSizeCategory];
      v35 = [(UIView *)v12 _internalTraitOverrides];
      [v35 setPreferredContentSizeCategory:v34];

      v36 = [v23 legibilityWeight];
      v37 = [(UIView *)v12 _internalTraitOverrides];
      [v37 setLegibilityWeight:v36];

      [v12 setNeedsLayout];
      [v12 layoutIfNeeded];
      [v12 systemLayoutSizeFittingSize:{v22, 1.79769313e308}];
      v31 = v38;
      v33 = v39;
      v40 = [(UIView *)v12 _internalTraitOverrides];
      [v40 removeTrait:objc_opt_class()];

      v41 = [(UIView *)v12 _internalTraitOverrides];
      [v41 removeTrait:objc_opt_class()];

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v44 = *MEMORY[0x1E695F060];
  v45 = *(MEMORY[0x1E695F060] + 8);
  v83 = v45;
  v46 = *MEMORY[0x1E695F060];
  if (([v7 hidesTitleForTraitCollection:v23] & 1) == 0)
  {
    v84 = *off_1E70EC918;
    v85[0] = v26;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    [v10 boundingRectWithSize:1 options:v47 attributes:0 context:{v22, 1.79769313e308}];
    v46 = v48;
    v83 = v49;
  }

  if (([v7 hidesImageForTraitCollection:v23] & 1) == 0)
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

    v55 = [v52 traitCollection];
    v82 = v10;
    if (v23)
    {
      if (v55 && v23[13] == v55[13])
      {
        v56 = v23[15];
        v57 = v51;
        v58 = v55[15];

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

      v60 = [v23 preferredContentSizeCategory];
      [_layoutImageView traitOverrides];
      v62 = v61 = v51;
      [v62 setPreferredContentSizeCategory:v60];

      v63 = [v23 legibilityWeight];
      v64 = [_layoutImageView traitOverrides];
      [v64 setLegibilityWeight:v63];

      v51 = v61;
      [_layoutImageView setPreferredSymbolConfiguration:v61];
      [_layoutImageView updateTraitsIfNeeded];
    }

    else
    {
    }

LABEL_26:
    [_layoutImageView setImage:v11];
    [_layoutImageView sizeToFit];
    [_layoutImageView bounds];
    v66 = v65;
    v68 = v67;
    [_layoutImageView alignmentRectInsets];
    v44 = v66 - (v69 + v70);
    v45 = v68 - (v71 + v72);

    v10 = v82;
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

- (_UIEditMenuListViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIEditMenuListViewCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIEditMenuListViewCell *)v3 _createViewHierarchy];
  }

  return v4;
}

- (_UIEditMenuListViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIEditMenuListViewCell;
  v3 = [(UICollectionViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIEditMenuListViewCell *)v3 _createViewHierarchy];
  }

  return v4;
}

- (void)setMaximumContentWidth:(double)a3
{
  if (self->_maximumContentWidth != a3)
  {
    if (a3 == 0.0)
    {
      maximumWidthConstraint = self->_maximumWidthConstraint;
      if (maximumWidthConstraint)
      {
        [(NSLayoutConstraint *)maximumWidthConstraint setActive:0];
        v6 = self->_maximumWidthConstraint;
        self->_maximumWidthConstraint = 0;
      }
    }

    self->_maximumContentWidth = a3;
    if (a3 != 0.0)
    {
      v7 = self->_maximumWidthConstraint;
      if (v7)
      {

        [(NSLayoutConstraint *)v7 setConstant:a3];
      }

      else
      {
        v8 = [(UICollectionViewCell *)self contentView];
        v9 = [v8 widthAnchor];
        v10 = [v9 constraintLessThanOrEqualToConstant:a3];
        v11 = self->_maximumWidthConstraint;
        self->_maximumWidthConstraint = v10;

        v12 = self->_maximumWidthConstraint;

        [(NSLayoutConstraint *)v12 setActive:1];
      }
    }
  }
}

- (void)setArrowEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_arrowEdgeInsets.top), vceqq_f64(v4, *&self->_arrowEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_arrowEdgeInsets = a3;
    [(_UIEditMenuListViewCell *)self _updateLayoutMargins];
    [(_UIEditMenuListViewCell *)self _setupSlotView];

    [(_UIEditMenuListViewCell *)self _updateConstraints];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  LODWORD(v3) = a3;
  v5 = [(_UIEditMenuListViewCell *)self item];
  v6 = [v5 options];

  if (v6)
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
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v3)
  {
    v9 = [(UICollectionViewCell *)self backgroundView];

    if (!v9)
    {
      v10 = _UIEditMenuGetPlatformMetrics(v8);
      v11 = [UIVisualEffectView alloc];
      v12 = [v10 menuHighlightBackgroundEffect];
      v13 = [(UIVisualEffectView *)v11 initWithEffect:v12];

      v14 = [v10 menuHighlightBackgroundColor];
      v15 = [(UIVisualEffectView *)v13 contentView];
      [v15 setBackgroundColor:v14];

      [(UICollectionViewCell *)self setBackgroundView:v13];
    }
  }

  v16 = [(UIView *)self traitCollection];
  v17 = _UIEditMenuGetPlatformMetrics([v16 userInterfaceIdiom]);
  v18 = [v17 cellBackgroundShapeProvider];
  v19 = [(_UIEditMenuListViewCell *)self item];
  v20 = v18[2](v18, [v19 isSingleItemMenu]);

  [(UIView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(UICollectionViewCell *)self backgroundView];
  [v29 setFrame:{v22, v24, v26, v28}];

  v30 = [(UICollectionViewCell *)self backgroundView];
  [v30 _applyShape:v20];

  v31 = [(UICollectionViewCell *)self backgroundView];
  [v31 setHidden:v3 ^ 1];
}

- (void)setItem:(id)a3
{
  v32 = a3;
  v6 = [v32 title];
  if (v6)
  {
    goto LABEL_2;
  }

  v7 = [v32 image];

  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIEditMenuListViewCell.m" lineNumber:196 description:@"One of title or image must be non-null"];
LABEL_2:
  }

  objc_storeStrong(&self->_item, a3);
  v8 = [v32 title];
  [(UILabel *)self->_titleLabel setText:v8];

  v9 = [v32 image];
  [(UIImageView *)self->_imageView setImage:v9];

  v10 = [(UIView *)self traitCollection];
  -[UIView setHidden:](self->_titleLabel, "setHidden:", [v32 hidesTitleForTraitCollection:v10]);

  v11 = [(UIView *)self traitCollection];
  -[UIImageView setHidden:](self->_imageView, "setHidden:", [v32 hidesImageForTraitCollection:v11]);

  v12 = +[UIColor labelColor];
  if ([v32 options])
  {
    v14 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (([v32 options] & 2) == 0)
    {
      v13 = 1;
      goto LABEL_10;
    }

    v15 = _UIEditMenuGetPlatformMetrics([(UIView *)self _userInterfaceIdiom]);
    v14 = [v15 destructiveColor];

    v12 = v15;
  }

  v13 = 0;
  v12 = v14;
LABEL_10:
  [(UILabel *)self->_titleLabel setTextColor:v12];
  [(UIView *)self->_imageView setTintColor:v12];
  [(UIView *)self->_titleLabel _setEnableMonochromaticTreatment:v13];
  if (v13)
  {
    v16 = [v32 image];
    -[UIView _setEnableMonochromaticTreatment:](self->_imageView, "_setEnableMonochromaticTreatment:", [v16 _isColoredSymbolImage] ^ 1);
  }

  else
  {
    [(UIView *)self->_imageView _setEnableMonochromaticTreatment:0];
  }

  v17 = [v32 menuElement];
  v18 = [v17 accessibilityIdentifier];
  [self setAccessibilityIdentifier:v18];

  v19 = [v32 customView];
  p_customView = &self->_customView;
  customView = self->_customView;
  self->_customView = v19;

  contentStackView = self->_contentStackView;
  if (self->_customView)
  {
    [(UIView *)contentStackView removeFromSuperview];
    [*p_customView setTranslatesAutoresizingMaskIntoConstraints:0];
LABEL_15:
    v23 = [(UICollectionViewCell *)self contentView];
    [v23 addSubview:*p_customView];

    [(_UIEditMenuListViewCell *)self _updateConstraints];
    goto LABEL_17;
  }

  v24 = [(UIView *)contentStackView superview];

  if (!v24)
  {
    p_customView = &self->_contentStackView;
    goto LABEL_15;
  }

LABEL_17:
  [v32 overrideMinimumWidth];
  if (v25 <= 0.0)
  {
    v26 = [(_UIEditMenuListViewCell *)self minimumWidthConstraint];

    if (v26)
    {
      [(NSLayoutConstraint *)self->_minimumWidthConstraint setActive:0];
      minimumWidthConstraint = self->_minimumWidthConstraint;
      self->_minimumWidthConstraint = 0;
    }
  }

  else if (self->_minimumWidthConstraint)
  {
    [v32 overrideMinimumWidth];
    [(NSLayoutConstraint *)self->_minimumWidthConstraint setConstant:?];
  }

  else
  {
    v28 = [(UICollectionViewCell *)self contentView];
    v29 = [v28 widthAnchor];
    [v32 overrideMinimumWidth];
    v30 = [v29 constraintGreaterThanOrEqualToConstant:?];
    v31 = self->_minimumWidthConstraint;
    self->_minimumWidthConstraint = v30;

    [(NSLayoutConstraint *)self->_minimumWidthConstraint setActive:1];
  }

  if ([v32 isSingleItemMenu])
  {
    [(_UIEditMenuListViewCell *)self _updateLayoutMargins];
  }

  [(_UIEditMenuListViewCell *)self _setupSlotView];
  [(UIView *)self setNeedsLayout];
}

- (void)_createViewHierarchy
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionViewCell *)self contentView];
  [v3 setInsetsLayoutMarginsFromSafeArea:0];

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
  v13 = [(UICollectionViewCell *)self contentView];
  [v13 addSubview:v12];

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
  v4 = [(UIView *)self traitCollection];
  [(UIView *)self->_titleLabel setHidden:[(_UIEditMenuListItem *)item hidesTitleForTraitCollection:v4]];

  v5 = self->_item;
  v6 = [(UIView *)self traitCollection];
  [(UIImageView *)self->_imageView setHidden:[(_UIEditMenuListItem *)v5 hidesImageForTraitCollection:v6]];
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
    v25 = [(UIView *)customView leftAnchor];
    v33 = [(UICollectionViewCell *)self contentView];
    v5 = [v33 leftAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v32 = v5;
    v31 = [v25 constraintEqualToAnchor:v5 constant:v6];
    v35[0] = v31;
    v7 = [(UIView *)self->_customView topAnchor];
    v29 = [(UICollectionViewCell *)self contentView];
    v8 = [v29 topAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v30 = v7;
    v28 = v8;
    v27 = [v7 constraintEqualToAnchor:v8 constant:?];
    v35[1] = v27;
    v26 = [(UICollectionViewCell *)self contentView];
    v9 = [v26 rightAnchor];
    v10 = [(UIView *)self->_customView rightAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v12 = [v9 constraintEqualToAnchor:v10 constant:v11];
    v35[2] = v12;
    v13 = [(UICollectionViewCell *)self contentView];
    v14 = [v13 bottomAnchor];
    v15 = [(UIView *)self->_customView bottomAnchor];
    [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
    v17 = [v14 constraintEqualToAnchor:v15 constant:v16];
    v35[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];

    v3 = 0x1E6997000;
    v19 = v25;
  }

  else
  {
    v20 = [(UICollectionViewCell *)self contentView];
    v19 = [v20 layoutMarginsGuide];

    v21 = [(UIView *)self->_contentStackView leadingAnchor];
    v32 = [v19 leadingAnchor];
    v33 = v21;
    v31 = [v21 constraintEqualToAnchor:v32];
    v34[0] = v31;
    v22 = [(UIView *)self->_contentStackView trailingAnchor];
    v29 = [v19 trailingAnchor];
    v30 = v22;
    v28 = [v22 constraintEqualToAnchor:v29];
    v34[1] = v28;
    v23 = [(UIView *)self->_contentStackView topAnchor];
    v26 = [v19 topAnchor];
    v27 = v23;
    v9 = [v23 constraintEqualToAnchor:v26];
    v34[2] = v9;
    v10 = [(UIView *)self->_contentStackView bottomAnchor];
    v12 = [v19 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v34[3] = v13;
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
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(_UIEditMenuListViewCell *)self _updateFont];
  }
}

- (void)_updateFont
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([v3 userInterfaceIdiom]);
  v5 = [v4 menuItemTitleFont];
  v12 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v3];

  [(UILabel *)self->_titleLabel setFont:v12];
  v6 = [UIImageSymbolConfiguration configurationWithFont:v12];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v6];

  v7 = [(UIView *)self traitCollection];
  v8 = _UIEditMenuIsInVerticalLayout(v7);

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
  v3 = [(UIView *)self traitCollection];
  v22 = _UIEditMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [v22 menuItemMarginsProvider];
  v5 = [(_UIEditMenuListViewCell *)self item];
  v6 = v4[2](v4, [v5 isSingleItemMenu]);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(_UIEditMenuListViewCell *)self arrowEdgeInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 + v19;
  v21 = [(UICollectionViewCell *)self contentView];
  [v21 setLayoutMargins:{v14, v16, v18, v20}];
}

- (void)setBounds:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuListViewCell;
  [(UIView *)&v5 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(_UIEditMenuListViewCell *)self securePasteButtonSlotView];

  if (v4)
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

    v6 = [(UIView *)self traitCollection];
    v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);

    v8 = [v7 menuItemMarginsProvider];
    v9 = [(_UIEditMenuListViewCell *)self item];
    v10 = v8[2](v8, [v9 isSingleItemMenu]);
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
    v30 = [(UIView *)self traitCollection];
    v31 = [v30 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v31);

    if (IsAccessibilityCategory)
    {
      v33 = 0;
    }

    else
    {
      v34 = [(_UIEditMenuListViewCell *)self item];
      v33 = [v34 displayMode];
    }

    v35 = MEMORY[0x1E69BC820];
    v36 = [(_UIEditMenuListViewCell *)self item];
    v37 = [v36 pasteVariant];
    v38 = [v35 editMenuPasteButtonTagWithSecureName:objc_msgSend(v37 size:"secureName") contentOrigin:v33 displayMode:{width, height, v29, v10}];

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
  v3 = [(_UIEditMenuListViewCell *)self item];
  v4 = [v3 pasteVariant];
  if (v4)
  {
    v5 = [(_UIEditMenuListViewCell *)self item];
    v6 = [v5 wantsPasteSlotView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)_secureName
{
  v2 = [(_UIEditMenuListViewCell *)self item];
  v3 = [v2 pasteVariant];

  if (v3)
  {
    v4 = [v3 secureName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_overlaySlotView:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 superview];
  v6 = [(UICollectionViewCell *)self contentView];

  if (v5 != v6)
  {
    [v4 setUserInteractionEnabled:0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UICollectionViewCell *)self contentView];
    [v7 addSubview:v4];

    v8 = [v4 centerXAnchor];
    v9 = [(UICollectionViewCell *)self contentView];
    v10 = [v9 centerXAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    slotViewCenterXConstraint = self->_slotViewCenterXConstraint;
    self->_slotViewCenterXConstraint = v11;

    v13 = [v4 centerYAnchor];
    v14 = [(UICollectionViewCell *)self contentView];
    v15 = [v14 centerYAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    slotViewCenterYConstraint = self->_slotViewCenterYConstraint;
    self->_slotViewCenterYConstraint = v16;

    v18 = MEMORY[0x1E69977A0];
    v19 = [(_UIEditMenuListViewCell *)self slotViewCenterXConstraint];
    v28[0] = v19;
    v20 = [(_UIEditMenuListViewCell *)self slotViewCenterYConstraint];
    v28[1] = v20;
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
  v2 = [(_UIEditMenuListViewCell *)self contentStackView];
  [v2 setAlpha:0.0];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = _UIEditMenuListViewCell;
  [(UICollectionViewCell *)&v10 prepareForReuse];
  if ([(_UIEditMenuListViewCell *)self _wantsPasteSlotView])
  {
    v3 = [(_UIEditMenuListViewCell *)self contentStackView];
    [v3 setAlpha:1.0];

    [(UIView *)self->_securePasteButtonSlotView removeFromSuperview];
    securePasteButtonSlotView = self->_securePasteButtonSlotView;
    self->_securePasteButtonSlotView = 0;

    slotViewCenterYConstraint = self->_slotViewCenterYConstraint;
    self->_slotViewCenterYConstraint = 0;
  }

  v6 = [(UIView *)self->_customView superview];
  v7 = [(UICollectionViewCell *)self contentView];

  if (v6 == v7)
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