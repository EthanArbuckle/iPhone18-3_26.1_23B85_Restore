@interface SBHAddWidgetSheetAppCollectionViewCell
- (MTVisualStylingProvider)visualStylingProvider;
- (NSDirectionalEdgeInsets)contentInsets;
- (SBHAddWidgetSheetAppCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_detailTextLabelFont;
- (id)_textLabelFont;
- (int64_t)_uiHIFontStyle;
- (unint64_t)_textLabelNumberOfLines;
- (void)_contentSizeCategoryDidChange;
- (void)_updateAppearanceForFocus;
- (void)_updateSeparatorLeadingConstraint;
- (void)_updateTableViewStyle;
- (void)_updateVisualStylingForImageView;
- (void)_updateVisualStylingForTextLabel;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)a3;
- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)a3;
- (void)setAddWidgetSheetStyle:(unint64_t)a3;
- (void)setContentHorizontalSpacing:(double)a3;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setDetailText:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setImageViewHasVisualStyling:(BOOL)a3;
- (void)setImageViewRequiresVisualStyling:(BOOL)a3;
- (void)setSeparatorAlignedToLabels:(BOOL)a3;
- (void)setSeparatorVisible:(BOOL)a3;
- (void)setTextLabelHasVisualStyling:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCell

- (SBHAddWidgetSheetAppCollectionViewCell)initWithFrame:(CGRect)a3
{
  v95[2] = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = SBHAddWidgetSheetAppCollectionViewCell;
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)&v87 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(UIImageView *)v4->_imageView widthAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 iconImageInfo];
    v9 = [v8 constraintEqualToConstant:?];
    iconWidthConstraint = v4->_iconWidthConstraint;
    v4->_iconWidthConstraint = v9;

    v11 = [(UIImageView *)v4->_imageView heightAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 iconImageInfo];
    v13 = [v11 constraintEqualToConstant:v12];
    iconHeightConstraint = v4->_iconHeightConstraint;
    v4->_iconHeightConstraint = v13;

    v15 = MEMORY[0x1E696ACD8];
    v95[0] = v4->_iconWidthConstraint;
    v95[1] = v4->_iconHeightConstraint;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    [v15 activateConstraints:v16];

    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v4->_textLabel;
    v4->_textLabel = v17;

    v19 = v4->_textLabel;
    v20 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _textLabelFont];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v4->_textLabel setNumberOfLines:[(SBHAddWidgetSheetAppCollectionViewCell *)v4 _textLabelNumberOfLines]];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v21;

    v23 = v4->_detailTextLabel;
    v24 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _detailTextLabelFont];
    [(UILabel *)v23 setFont:v24];

    v25 = v4->_detailTextLabel;
    v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v25 setTextColor:v26];

    [(UILabel *)v4->_detailTextLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailTextLabel setHidden:1];
    v27 = objc_alloc(MEMORY[0x1E69DCF90]);
    v94[0] = v4->_textLabel;
    v94[1] = v4->_detailTextLabel;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
    v29 = [v27 initWithArrangedSubviews:v28];
    verticalStackView = v4->_verticalStackView;
    v4->_verticalStackView = v29;

    [(UIStackView *)v4->_verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_verticalStackView setAxis:1];
    [(UIStackView *)v4->_verticalStackView setAlignment:1];
    [v5 addSubview:v4->_verticalStackView];
    v31 = objc_alloc(MEMORY[0x1E69DCF90]);
    v93[0] = v4->_imageView;
    v93[1] = v4->_verticalStackView;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    v33 = [v31 initWithArrangedSubviews:v32];
    horizontalStackView = v4->_horizontalStackView;
    v4->_horizontalStackView = v33;

    [(UIStackView *)v4->_horizontalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_horizontalStackView setAxis:0];
    [(UIStackView *)v4->_horizontalStackView setAlignment:3];
    [v5 addSubview:v4->_horizontalStackView];
    v35 = [(UIStackView *)v4->_horizontalStackView leadingAnchor];
    v36 = [v5 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v4->_contentInsets.leading];
    leadingConstraint = v4->_leadingConstraint;
    v4->_leadingConstraint = v37;

    v39 = [(UIStackView *)v4->_horizontalStackView trailingAnchor];
    v40 = [v5 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:-v4->_contentInsets.trailing];
    trailingConstraint = v4->_trailingConstraint;
    v4->_trailingConstraint = v41;

    v43 = [(UIStackView *)v4->_horizontalStackView topAnchor];
    v44 = [v5 topAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 contentInsets];
    v45 = [v43 constraintEqualToAnchor:v44 constant:?];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v45;

    v47 = [(UIStackView *)v4->_horizontalStackView bottomAnchor];
    v48 = [v5 bottomAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 contentInsets];
    v50 = [v47 constraintEqualToAnchor:v48 constant:-v49];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v50;

    v92[0] = v4->_leadingConstraint;
    v92[1] = v4->_trailingConstraint;
    v52 = MEMORY[0x1E696ACD8];
    v92[2] = v4->_topConstraint;
    v92[3] = v4->_bottomConstraint;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:4];
    [v52 activateConstraints:v53];

    v54 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v54;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = v4->_separatorView;
    v57 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v56 setBackgroundColor:v57];

    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 setSeparatorVisible:1];
    [v5 addSubview:v4->_separatorView];
    v58 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 traitCollection];
    [v58 displayScale];
    v60 = v59;

    v61 = [(UIView *)v4->_separatorView heightAnchor];
    v62 = [v61 constraintEqualToConstant:1.0 / v60];

    v63 = MEMORY[0x1E696ACD8];
    v64 = [(UIView *)v4->_separatorView trailingAnchor];
    v84 = v5;
    v65 = [v5 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v91[0] = v66;
    v67 = [(UIView *)v4->_separatorView bottomAnchor];
    v68 = [v5 bottomAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    v91[1] = v69;
    v91[2] = v62;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
    [v63 activateConstraints:v70];

    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateSeparatorLeadingConstraint];
    v71 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 setSelectedBackgroundView:v71];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateAppearanceForFocus];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateTableViewStyle];
    v72 = [MEMORY[0x1E696AD88] defaultCenter];
    [v72 addObserver:v4 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v73 = objc_opt_self();
    v90 = v73;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
    v75 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 registerForTraitChanges:v74 withAction:sel__contentSizeCategoryDidChange];

    v76 = objc_opt_self();
    v89 = v76;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
    v78 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 registerForTraitChanges:v77 withTarget:v4 action:sel__updateAppearanceForFocus];

    v79 = objc_opt_self();
    v88 = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __56__SBHAddWidgetSheetAppCollectionViewCell_initWithFrame___block_invoke;
    v85[3] = &unk_1E808B8D0;
    v86 = v62;
    v81 = v62;
    v82 = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 registerForTraitChanges:v80 withHandler:v85];
  }

  return v4;
}

uint64_t __56__SBHAddWidgetSheetAppCollectionViewCell_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = *(a1 + 32);

  return [v6 setConstant:1.0 / v5];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetAppCollectionViewCell;
  [(SBHAddWidgetSheetAppCollectionViewCell *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SBHAddWidgetSheetAppCollectionViewCell *)self addWidgetSheetStyle]!= 1)
  {
    v5.receiver = self;
    v5.super_class = SBHAddWidgetSheetAppCollectionViewCell;
    [(SBHAddWidgetSheetAppCollectionViewCell *)&v5 setHighlighted:v3];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = SBHAddWidgetSheetAppCollectionViewCell;
  [(SBHAddWidgetSheetAppCollectionViewCell *)&v5 prepareForReuse];
  self->_isFocused = 0;
  [(UILabel *)self->_textLabel setText:0];
  [(UILabel *)self->_detailTextLabel setText:0];
  [(UIImageView *)self->_imageView setImage:0];
  [(UIImageView *)self->_imageView setHidden:0];
  if (self->_customImageView)
  {
    [(UIStackView *)self->_horizontalStackView removeArrangedSubview:?];
    [(UIView *)self->_customImageView removeFromSuperview];
    [(SBHAddWidgetSheetAppCollectionViewCell *)self setCustomImageView:0];
  }

  [(SBHAddWidgetSheetAppCollectionViewCell *)self setSeparatorVisible:1];
  [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateAppearanceForFocus];
  [(SBHAddWidgetSheetAppCollectionViewCell *)self setUserInteractionEnabled:1];
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [v3 setBackgroundColor:0];
  v4 = [v3 layer];
  [v4 setCompositingFilter:0];
}

- (void)setAddWidgetSheetStyle:(unint64_t)a3
{
  if (self->_addWidgetSheetStyle != a3)
  {
    self->_addWidgetSheetStyle = a3;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateTableViewStyle];
  }
}

- (void)setSeparatorVisible:(BOOL)a3
{
  if (self->_separatorVisible != a3)
  {
    self->_separatorVisible = a3;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateTableViewStyle];
  }
}

- (void)_updateTableViewStyle
{
  addWidgetSheetStyle = self->_addWidgetSheetStyle;
  v4 = [(SBHAddWidgetSheetAppCollectionViewCell *)self contentView];
  v5 = 12.0;
  if (!addWidgetSheetStyle)
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v6];

    v5 = 0.0;
  }

  [v4 _setContinuousCornerRadius:v5];
  v7 = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [v7 _setContinuousCornerRadius:v5];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self _contentSizeCategoryDidChange];
  separatorView = self->_separatorView;
  v9 = (addWidgetSheetStyle != 0) | !self->_separatorVisible;

  [(UIView *)separatorView setHidden:v9];
}

- (void)setSeparatorAlignedToLabels:(BOOL)a3
{
  if (self->_separatorAlignedToLabels != a3)
  {
    self->_separatorAlignedToLabels = a3;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateSeparatorLeadingConstraint];
  }
}

- (void)_updateSeparatorLeadingConstraint
{
  separatorLeadingConstraint = self->_separatorLeadingConstraint;
  if (separatorLeadingConstraint)
  {
    [(NSLayoutConstraint *)separatorLeadingConstraint setActive:0];
    v5 = self->_separatorLeadingConstraint;
    self->_separatorLeadingConstraint = 0;
  }

  v6 = [(UIView *)self->_separatorView leadingAnchor];
  separatorAlignedToLabels = self->_separatorAlignedToLabels;
  if (separatorAlignedToLabels)
  {
    [(UILabel *)self->_textLabel leadingAnchor];
  }

  else
  {
    v2 = [(SBHAddWidgetSheetAppCollectionViewCell *)self contentView];
    [v2 leadingAnchor];
  }
  v8 = ;
  v9 = [v6 constraintEqualToAnchor:v8];
  v10 = self->_separatorLeadingConstraint;
  self->_separatorLeadingConstraint = v9;

  if (!separatorAlignedToLabels)
  {

    v8 = v2;
  }

  v11 = self->_separatorLeadingConstraint;

  [(NSLayoutConstraint *)v11 setActive:1];
}

- (void)setDetailText:(id)a3
{
  [(UILabel *)self->_detailTextLabel setText:?];
  detailTextLabel = self->_detailTextLabel;

  [(UILabel *)detailTextLabel setHidden:a3 == 0];
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    top = a3.top;
    bottom = a3.bottom;
    trailing = a3.trailing;
    [(NSLayoutConstraint *)self->_leadingConstraint setConstant:a3.leading];
    [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_topConstraint setConstant:top];
    bottomConstraint = self->_bottomConstraint;

    [(NSLayoutConstraint *)bottomConstraint setConstant:-bottom];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    [(NSLayoutConstraint *)self->_iconWidthConstraint setConstant:v10];
    iconHeightConstraint = self->_iconHeightConstraint;

    [(NSLayoutConstraint *)iconHeightConstraint setConstant:v9];
  }
}

- (void)setContentHorizontalSpacing:(double)a3
{
  [(UIStackView *)self->_horizontalStackView setSpacing:a3];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateSeparatorLeadingConstraint];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8 = a3;
  v5 = [v8 nextFocusedItem];

  if (v5 == self)
  {
    v7 = 1;
  }

  else
  {
    v6 = [v8 previouslyFocusedItem];

    if (v6 != self)
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  self->_isFocused = v7;
  [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateAppearanceForFocus];
LABEL_6:
}

- (void)_updateAppearanceForFocus
{
  if (self->_isFocused)
  {
    v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)self tintColor];
    v4 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v6 = 0;
    v18 = 0;
  }

  else
  {
    v7 = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = MEMORY[0x1E6979CE8];
    if (v8 != 2)
    {
      v9 = MEMORY[0x1E6979CF8];
    }

    v18 = [MEMORY[0x1E6979378] filterWithType:*v9];
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.666666667 alpha:0.2];
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    WeakRetained = objc_loadWeakRetained(&self->_visualStylingProvider);
    v6 = WeakRetained != 0;
  }

  v11 = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [v11 setBackgroundColor:v3];
  v12 = [v11 layer];
  [v12 setCompositingFilter:v18];

  v13 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  v14 = [v13 textColor];

  if (v14 != v4)
  {
    v15 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
    [v15 setTextColor:v4];

    if (v6)
    {
      [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForTextLabel];
    }
  }

  v16 = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  [v16 setTintColor:v4];

  v17 = [(SBHAddWidgetSheetAppCollectionViewCell *)self detailTextLabel];
  [v17 setTextColor:v5];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self setTextLabelHasVisualStyling:v6];
  if ([(SBHAddWidgetSheetAppCollectionViewCell *)self imageViewRequiresVisualStyling])
  {
    [(SBHAddWidgetSheetAppCollectionViewCell *)self setImageViewHasVisualStyling:v6];
  }
}

- (void)setVisualStylingProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visualStylingProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      objc_storeWeak(&self->_visualStylingProvider, obj);
      [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateAppearanceForFocus];
    }

    else
    {
      [(SBHAddWidgetSheetAppCollectionViewCell *)self setTextLabelHasVisualStyling:0];
      [(SBHAddWidgetSheetAppCollectionViewCell *)self setImageViewHasVisualStyling:0];
      objc_storeWeak(&self->_visualStylingProvider, 0);
    }

    v5 = obj;
  }
}

- (void)setTextLabelHasVisualStyling:(BOOL)a3
{
  if (self->_textLabelHasVisualStyling != a3)
  {
    self->_textLabelHasVisualStyling = a3;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForTextLabel];
  }
}

- (void)setImageViewHasVisualStyling:(BOOL)a3
{
  if (self->_imageViewHasVisualStyling != a3)
  {
    self->_imageViewHasVisualStyling = a3;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForImageView];
  }
}

- (void)setImageViewRequiresVisualStyling:(BOOL)a3
{
  if (self->_imageViewRequiresVisualStyling != a3)
  {
    self->_imageViewRequiresVisualStyling = a3;
    if (a3)
    {
      [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateAppearanceForFocus];
    }

    else
    {
      [(SBHAddWidgetSheetAppCollectionViewCell *)self setImageViewHasVisualStyling:?];
    }
  }
}

- (void)_updateVisualStylingForTextLabel
{
  v4 = [(SBHAddWidgetSheetAppCollectionViewCell *)self visualStylingProvider];
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  if (self->_textLabelHasVisualStyling)
  {
    [v4 automaticallyUpdateView:v3 withStyle:1];
  }

  else
  {
    [v4 stopAutomaticallyUpdatingView:v3];
    [v3 mt_removeAllVisualStyling];
  }
}

- (void)_updateVisualStylingForImageView
{
  v4 = [(SBHAddWidgetSheetAppCollectionViewCell *)self visualStylingProvider];
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  if (self->_imageViewHasVisualStyling)
  {
    [v4 automaticallyUpdateView:v3 withStyle:2];
  }

  else
  {
    [v4 stopAutomaticallyUpdatingView:v3];
    [v3 mt_removeAllVisualStyling];
  }
}

- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  [v5 setText:v4];
}

- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)a3
{
  v6 = a3;
  v4 = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)self customImageView];
  [v4 setImage:0];
  [v5 removeFromSuperview];
  [(SBHAddWidgetSheetAppCollectionViewCell *)self setCustomImageView:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v5)
  {
    [(UIStackView *)self->_horizontalStackView removeArrangedSubview:v5];
    [v5 removeFromSuperview];
  }

  [(UIStackView *)self->_horizontalStackView insertArrangedSubview:v6 atIndex:0];
  [v4 setHidden:1];
}

- (int64_t)_uiHIFontStyle
{
  if (self->_addWidgetSheetStyle == 1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)_textLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)self _uiHIFontStyle];
  v6 = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v3 preferredFontForTextStyle:v4 hiFontStyle:v5 contentSizeCategory:v7];

  return v8;
}

- (id)_detailTextLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:v6];

  return v7;
}

- (unint64_t)_textLabelNumberOfLines
{
  v2 = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (v3)
  {
    if (UIContentSizeCategoryIsAccessibilityCategory(v3))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_contentSizeCategoryDidChange
{
  v6 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)self _textLabelFont];
  [v6 setFont:v3];

  [v6 setNumberOfLines:{-[SBHAddWidgetSheetAppCollectionViewCell _textLabelNumberOfLines](self, "_textLabelNumberOfLines")}];
  v4 = [(SBHAddWidgetSheetAppCollectionViewCell *)self detailTextLabel];
  v5 = [(SBHAddWidgetSheetAppCollectionViewCell *)self _detailTextLabelFont];
  [v4 setFont:v5];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self setNeedsLayout];
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (MTVisualStylingProvider)visualStylingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStylingProvider);

  return WeakRetained;
}

@end