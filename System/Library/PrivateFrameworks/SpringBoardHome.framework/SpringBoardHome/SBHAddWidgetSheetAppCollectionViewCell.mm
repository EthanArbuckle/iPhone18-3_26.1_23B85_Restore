@interface SBHAddWidgetSheetAppCollectionViewCell
- (MTVisualStylingProvider)visualStylingProvider;
- (NSDirectionalEdgeInsets)contentInsets;
- (SBHAddWidgetSheetAppCollectionViewCell)initWithFrame:(CGRect)frame;
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
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)view;
- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)title;
- (void)setAddWidgetSheetStyle:(unint64_t)style;
- (void)setContentHorizontalSpacing:(double)spacing;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
- (void)setDetailText:(id)text;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setImageViewHasVisualStyling:(BOOL)styling;
- (void)setImageViewRequiresVisualStyling:(BOOL)styling;
- (void)setSeparatorAlignedToLabels:(BOOL)labels;
- (void)setSeparatorVisible:(BOOL)visible;
- (void)setTextLabelHasVisualStyling:(BOOL)styling;
- (void)setVisualStylingProvider:(id)provider;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCell

- (SBHAddWidgetSheetAppCollectionViewCell)initWithFrame:(CGRect)frame
{
  v95[2] = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = SBHAddWidgetSheetAppCollectionViewCell;
  v3 = [(SBHAddWidgetSheetAppCollectionViewCell *)&v87 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SBHAddWidgetSheetAppCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [(UIImageView *)v4->_imageView widthAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 iconImageInfo];
    v9 = [widthAnchor constraintEqualToConstant:?];
    iconWidthConstraint = v4->_iconWidthConstraint;
    v4->_iconWidthConstraint = v9;

    heightAnchor = [(UIImageView *)v4->_imageView heightAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 iconImageInfo];
    v13 = [heightAnchor constraintEqualToConstant:v12];
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
    _textLabelFont = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _textLabelFont];
    [(UILabel *)v19 setFont:_textLabelFont];

    [(UILabel *)v4->_textLabel setNumberOfLines:[(SBHAddWidgetSheetAppCollectionViewCell *)v4 _textLabelNumberOfLines]];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v21;

    v23 = v4->_detailTextLabel;
    _detailTextLabelFont = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _detailTextLabelFont];
    [(UILabel *)v23 setFont:_detailTextLabelFont];

    v25 = v4->_detailTextLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v25 setTextColor:secondaryLabelColor];

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
    [contentView addSubview:v4->_verticalStackView];
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
    [contentView addSubview:v4->_horizontalStackView];
    leadingAnchor = [(UIStackView *)v4->_horizontalStackView leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v4->_contentInsets.leading];
    leadingConstraint = v4->_leadingConstraint;
    v4->_leadingConstraint = v37;

    trailingAnchor = [(UIStackView *)v4->_horizontalStackView trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4->_contentInsets.trailing];
    trailingConstraint = v4->_trailingConstraint;
    v4->_trailingConstraint = v41;

    topAnchor = [(UIStackView *)v4->_horizontalStackView topAnchor];
    topAnchor2 = [contentView topAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 contentInsets];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v45;

    bottomAnchor = [(UIStackView *)v4->_horizontalStackView bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 contentInsets];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v49];
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
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v56 setBackgroundColor:separatorColor];

    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 setSeparatorVisible:1];
    [contentView addSubview:v4->_separatorView];
    traitCollection = [(SBHAddWidgetSheetAppCollectionViewCell *)v4 traitCollection];
    [traitCollection displayScale];
    v60 = v59;

    heightAnchor2 = [(UIView *)v4->_separatorView heightAnchor];
    v62 = [heightAnchor2 constraintEqualToConstant:1.0 / v60];

    v63 = MEMORY[0x1E696ACD8];
    trailingAnchor3 = [(UIView *)v4->_separatorView trailingAnchor];
    v84 = contentView;
    trailingAnchor4 = [contentView trailingAnchor];
    v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v91[0] = v66;
    bottomAnchor3 = [(UIView *)v4->_separatorView bottomAnchor];
    bottomAnchor4 = [contentView bottomAnchor];
    v69 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v91[1] = v69;
    v91[2] = v62;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
    [v63 activateConstraints:v70];

    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateSeparatorLeadingConstraint];
    v71 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 setSelectedBackgroundView:v71];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateAppearanceForFocus];
    [(SBHAddWidgetSheetAppCollectionViewCell *)v4 _updateTableViewStyle];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetAppCollectionViewCell;
  [(SBHAddWidgetSheetAppCollectionViewCell *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(SBHAddWidgetSheetAppCollectionViewCell *)self addWidgetSheetStyle]!= 1)
  {
    v5.receiver = self;
    v5.super_class = SBHAddWidgetSheetAppCollectionViewCell;
    [(SBHAddWidgetSheetAppCollectionViewCell *)&v5 setHighlighted:highlightedCopy];
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
  selectedBackgroundView = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:0];
  layer = [selectedBackgroundView layer];
  [layer setCompositingFilter:0];
}

- (void)setAddWidgetSheetStyle:(unint64_t)style
{
  if (self->_addWidgetSheetStyle != style)
  {
    self->_addWidgetSheetStyle = style;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateTableViewStyle];
  }
}

- (void)setSeparatorVisible:(BOOL)visible
{
  if (self->_separatorVisible != visible)
  {
    self->_separatorVisible = visible;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateTableViewStyle];
  }
}

- (void)_updateTableViewStyle
{
  addWidgetSheetStyle = self->_addWidgetSheetStyle;
  contentView = [(SBHAddWidgetSheetAppCollectionViewCell *)self contentView];
  v5 = 12.0;
  if (!addWidgetSheetStyle)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [contentView setBackgroundColor:clearColor];

    v5 = 0.0;
  }

  [contentView _setContinuousCornerRadius:v5];
  selectedBackgroundView = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView _setContinuousCornerRadius:v5];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self _contentSizeCategoryDidChange];
  separatorView = self->_separatorView;
  v9 = (addWidgetSheetStyle != 0) | !self->_separatorVisible;

  [(UIView *)separatorView setHidden:v9];
}

- (void)setSeparatorAlignedToLabels:(BOOL)labels
{
  if (self->_separatorAlignedToLabels != labels)
  {
    self->_separatorAlignedToLabels = labels;
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

  leadingAnchor = [(UIView *)self->_separatorView leadingAnchor];
  separatorAlignedToLabels = self->_separatorAlignedToLabels;
  if (separatorAlignedToLabels)
  {
    [(UILabel *)self->_textLabel leadingAnchor];
  }

  else
  {
    contentView = [(SBHAddWidgetSheetAppCollectionViewCell *)self contentView];
    [contentView leadingAnchor];
  }
  v8 = ;
  v9 = [leadingAnchor constraintEqualToAnchor:v8];
  v10 = self->_separatorLeadingConstraint;
  self->_separatorLeadingConstraint = v9;

  if (!separatorAlignedToLabels)
  {

    v8 = contentView;
  }

  v11 = self->_separatorLeadingConstraint;

  [(NSLayoutConstraint *)v11 setActive:1];
}

- (void)setDetailText:(id)text
{
  [(UILabel *)self->_detailTextLabel setText:?];
  detailTextLabel = self->_detailTextLabel;

  [(UILabel *)detailTextLabel setHidden:text == 0];
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    top = insets.top;
    bottom = insets.bottom;
    trailing = insets.trailing;
    [(NSLayoutConstraint *)self->_leadingConstraint setConstant:insets.leading];
    [(NSLayoutConstraint *)self->_trailingConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_topConstraint setConstant:top];
    bottomConstraint = self->_bottomConstraint;

    [(NSLayoutConstraint *)bottomConstraint setConstant:-bottom];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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

- (void)setContentHorizontalSpacing:(double)spacing
{
  [(UIStackView *)self->_horizontalStackView setSpacing:spacing];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateSeparatorLeadingConstraint];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    v7 = 1;
  }

  else
  {
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];

    if (previouslyFocusedItem != self)
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
    tintColor = [(SBHAddWidgetSheetAppCollectionViewCell *)self tintColor];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v6 = 0;
    v18 = 0;
  }

  else
  {
    traitCollection = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v9 = MEMORY[0x1E6979CE8];
    if (userInterfaceStyle != 2)
    {
      v9 = MEMORY[0x1E6979CF8];
    }

    v18 = [MEMORY[0x1E6979378] filterWithType:*v9];
    tintColor = [MEMORY[0x1E69DC888] colorWithWhite:0.666666667 alpha:0.2];
    systemWhiteColor = [MEMORY[0x1E69DC888] labelColor];
    systemWhiteColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    WeakRetained = objc_loadWeakRetained(&self->_visualStylingProvider);
    v6 = WeakRetained != 0;
  }

  selectedBackgroundView = [(SBHAddWidgetSheetAppCollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tintColor];
  layer = [selectedBackgroundView layer];
  [layer setCompositingFilter:v18];

  textLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  textColor = [textLabel textColor];

  if (textColor != systemWhiteColor)
  {
    textLabel2 = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
    [textLabel2 setTextColor:systemWhiteColor];

    if (v6)
    {
      [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForTextLabel];
    }
  }

  imageView = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  [imageView setTintColor:systemWhiteColor];

  detailTextLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:systemWhiteColor2];

  [(SBHAddWidgetSheetAppCollectionViewCell *)self setTextLabelHasVisualStyling:v6];
  if ([(SBHAddWidgetSheetAppCollectionViewCell *)self imageViewRequiresVisualStyling])
  {
    [(SBHAddWidgetSheetAppCollectionViewCell *)self setImageViewHasVisualStyling:v6];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  obj = provider;
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

- (void)setTextLabelHasVisualStyling:(BOOL)styling
{
  if (self->_textLabelHasVisualStyling != styling)
  {
    self->_textLabelHasVisualStyling = styling;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForTextLabel];
  }
}

- (void)setImageViewHasVisualStyling:(BOOL)styling
{
  if (self->_imageViewHasVisualStyling != styling)
  {
    self->_imageViewHasVisualStyling = styling;
    [(SBHAddWidgetSheetAppCollectionViewCell *)self _updateVisualStylingForImageView];
  }
}

- (void)setImageViewRequiresVisualStyling:(BOOL)styling
{
  if (self->_imageViewRequiresVisualStyling != styling)
  {
    self->_imageViewRequiresVisualStyling = styling;
    if (styling)
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
  visualStylingProvider = [(SBHAddWidgetSheetAppCollectionViewCell *)self visualStylingProvider];
  textLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  if (self->_textLabelHasVisualStyling)
  {
    [visualStylingProvider automaticallyUpdateView:textLabel withStyle:1];
  }

  else
  {
    [visualStylingProvider stopAutomaticallyUpdatingView:textLabel];
    [textLabel mt_removeAllVisualStyling];
  }
}

- (void)_updateVisualStylingForImageView
{
  visualStylingProvider = [(SBHAddWidgetSheetAppCollectionViewCell *)self visualStylingProvider];
  imageView = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  if (self->_imageViewHasVisualStyling)
  {
    [visualStylingProvider automaticallyUpdateView:imageView withStyle:2];
  }

  else
  {
    [visualStylingProvider stopAutomaticallyUpdatingView:imageView];
    [imageView mt_removeAllVisualStyling];
  }
}

- (void)setAddWidgetSheetAppCollectionViewCellTitle:(id)title
{
  titleCopy = title;
  textLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setAddWidgetSheetAppCollectionViewCellIconImageView:(id)view
{
  viewCopy = view;
  imageView = [(SBHAddWidgetSheetAppCollectionViewCell *)self imageView];
  customImageView = [(SBHAddWidgetSheetAppCollectionViewCell *)self customImageView];
  [imageView setImage:0];
  [customImageView removeFromSuperview];
  [(SBHAddWidgetSheetAppCollectionViewCell *)self setCustomImageView:viewCopy];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  if (customImageView)
  {
    [(UIStackView *)self->_horizontalStackView removeArrangedSubview:customImageView];
    [customImageView removeFromSuperview];
  }

  [(UIStackView *)self->_horizontalStackView insertArrangedSubview:viewCopy atIndex:0];
  [imageView setHidden:1];
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
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  _uiHIFontStyle = [(SBHAddWidgetSheetAppCollectionViewCell *)self _uiHIFontStyle];
  traitCollection = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v8 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:_uiHIFontStyle contentSizeCategory:preferredContentSizeCategory];

  return v8;
}

- (id)_detailTextLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  traitCollection = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (unint64_t)_textLabelNumberOfLines
{
  traitCollection = [(SBHAddWidgetSheetAppCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory)
  {
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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
  textLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self textLabel];
  _textLabelFont = [(SBHAddWidgetSheetAppCollectionViewCell *)self _textLabelFont];
  [textLabel setFont:_textLabelFont];

  [textLabel setNumberOfLines:{-[SBHAddWidgetSheetAppCollectionViewCell _textLabelNumberOfLines](self, "_textLabelNumberOfLines")}];
  detailTextLabel = [(SBHAddWidgetSheetAppCollectionViewCell *)self detailTextLabel];
  _detailTextLabelFont = [(SBHAddWidgetSheetAppCollectionViewCell *)self _detailTextLabelFont];
  [detailTextLabel setFont:_detailTextLabelFont];

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