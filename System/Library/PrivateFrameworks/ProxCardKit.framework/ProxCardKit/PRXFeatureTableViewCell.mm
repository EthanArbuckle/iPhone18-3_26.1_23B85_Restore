@interface PRXFeatureTableViewCell
- (PRXFeatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateImageViewAnchors;
- (void)_updateLabelHyphenationFactor;
- (void)_updateTitleIndent;
- (void)_updateTitleLeadingAnchor;
- (void)layoutMarginsDidChange;
- (void)setFeatureImageSize:(double)size;
- (void)setFeatureImageView:(id)view;
- (void)setHidingSeparator:(BOOL)separator;
- (void)setSubtitle:(id)subtitle;
- (void)setSwitchControl:(id)control;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PRXFeatureTableViewCell

- (PRXFeatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v74[11] = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = PRXFeatureTableViewCell;
  v4 = [(PRXFeatureTableViewCell *)&v73 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v72 = [v5 fontDescriptorWithSymbolicTraits:{objc_msgSend(v5, "symbolicTraits") | 0x8000}];

    v6 = MEMORY[0x277D74300];
    [v72 pointSize];
    v70 = [v6 fontWithDescriptor:v72 size:?];
    v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
    v71 = [v7 fontDescriptorWithSymbolicTraits:{objc_msgSend(v7, "symbolicTraits") | 0x8000}];

    v8 = MEMORY[0x277D74300];
    [v71 pointSize];
    v69 = [v8 fontWithDescriptor:v71 size:?];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setFont:v70];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v11];
    contentView = [(PRXFeatureTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v13;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setFont:v69];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    contentView2 = [(PRXFeatureTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_subtitleLabel];

    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    contentView3 = [(PRXFeatureTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    titleLabelLeadingAnchor = v4->_titleLabelLeadingAnchor;
    v4->_titleLabelLeadingAnchor = v22;

    trailingAnchor = [(UILabel *)v4->_titleLabel trailingAnchor];
    contentView4 = [(PRXFeatureTableViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    titleLabelTrailingAnchor = v4->_titleLabelTrailingAnchor;
    v4->_titleLabelTrailingAnchor = v28;

    v30 = objc_alloc_init(MEMORY[0x277D756D0]);
    v31 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentView5 = [(PRXFeatureTableViewCell *)v4 contentView];
    [contentView5 addLayoutGuide:v30];

    contentView6 = [(PRXFeatureTableViewCell *)v4 contentView];
    [contentView6 addLayoutGuide:v31];

    heightAnchor = [v30 heightAnchor];
    v35 = [heightAnchor constraintGreaterThanOrEqualToConstant:15.0];
    layoutGuideHeightConstraint = v4->_layoutGuideHeightConstraint;
    v4->_layoutGuideHeightConstraint = v35;

    v55 = MEMORY[0x277CCAAD0];
    heightAnchor2 = [v30 heightAnchor];
    heightAnchor3 = [v31 heightAnchor];
    v66 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v74[0] = v66;
    v74[1] = v4->_layoutGuideHeightConstraint;
    v63 = v30;
    topAnchor = [v30 topAnchor];
    contentView7 = [(PRXFeatureTableViewCell *)v4 contentView];
    topAnchor2 = [contentView7 topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2];
    v61 = v60 = v31;
    v74[2] = v61;
    bottomAnchor = [v31 bottomAnchor];
    contentView8 = [(PRXFeatureTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v56;
    topAnchor3 = [(UILabel *)v4->_titleLabel topAnchor];
    bottomAnchor3 = [v30 bottomAnchor];
    v52 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
    v74[4] = v52;
    bottomAnchor4 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    topAnchor4 = [v31 topAnchor];
    v49 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4];
    v74[5] = v49;
    v74[6] = v4->_titleLabelLeadingAnchor;
    v74[7] = v4->_titleLabelTrailingAnchor;
    topAnchor5 = [(UILabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor5 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v38 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:2.0];
    v74[8] = v38;
    leadingAnchor3 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v74[9] = v41;
    trailingAnchor3 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v44 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v74[10] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:11];
    [v55 activateConstraints:v45];

    [(PRXFeatureTableViewCell *)v4 _updateLabelHyphenationFactor];
    v46 = v4;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PRXFeatureTableViewCell;
  [(PRXFeatureTableViewCell *)&v4 traitCollectionDidChange:change];
  [(PRXFeatureTableViewCell *)self _updateLabelHyphenationFactor];
  [(PRXFeatureTableViewCell *)self _updateImageViewAnchors];
  [(PRXFeatureTableViewCell *)self _updateTitleIndent];
}

- (void)layoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = PRXFeatureTableViewCell;
  [(PRXFeatureTableViewCell *)&v7 layoutMarginsDidChange];
  [(PRXFeatureTableViewCell *)self directionalLayoutMargins];
  v4 = v3;
  featureImageView = [(PRXFeatureTableViewCell *)self featureImageView];

  if (featureImageView)
  {
    [(PRXFeatureTableViewCell *)self featureImageSize];
    v4 = v4 + v6 + 16.0;
  }

  [(PRXFeatureTableViewCell *)self directionalLayoutMargins];
  [(PRXFeatureTableViewCell *)self setSeparatorInset:0.0, v4, 0.0];
}

- (void)setFeatureImageView:(id)view
{
  v15[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_featureImageView != viewCopy)
  {
    objc_storeStrong(&self->_featureImageView, view);
    [(UIView *)self->_featureImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PRXFeatureTableViewCell *)self contentView];
    [contentView addSubview:self->_featureImageView];

    leadingAnchor = [(UIView *)self->_featureImageView leadingAnchor];
    contentView2 = [(PRXFeatureTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(PRXFeatureTableViewCell *)self setImageViewLeadingAnchor:v11];

    [(PRXFeatureTableViewCell *)self _updateImageViewAnchors];
    [(PRXFeatureTableViewCell *)self _updateTitleLeadingAnchor];
    [(PRXFeatureTableViewCell *)self _updateTitleIndent];
    v12 = MEMORY[0x277CCAAD0];
    imageViewLeadingAnchor = [(PRXFeatureTableViewCell *)self imageViewLeadingAnchor];
    v15[0] = imageViewLeadingAnchor;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v12 activateConstraints:v14];
  }
}

- (void)setSwitchControl:(id)control
{
  v29[1] = *MEMORY[0x277D85DE8];
  controlCopy = control;
  switchControl = self->_switchControl;
  if (switchControl != controlCopy)
  {
    v27 = controlCopy;
    [(UISwitch *)switchControl removeFromSuperview];
    objc_storeStrong(&self->_switchControl, control);
    [(UISwitch *)self->_switchControl setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UISwitch *)self->_switchControl setContentCompressionResistancePriority:0 forAxis:v7];
    contentView = [(PRXFeatureTableViewCell *)self contentView];
    [contentView addSubview:self->_switchControl];

    v9 = MEMORY[0x277CCAAD0];
    titleLabelTrailingAnchor = [(PRXFeatureTableViewCell *)self titleLabelTrailingAnchor];
    v29[0] = titleLabelTrailingAnchor;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v9 deactivateConstraints:v11];

    v22 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UISwitch *)self->_switchControl leadingAnchor];
    titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
    trailingAnchor = [titleLabel trailingAnchor];
    v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:12.0];
    v28[0] = v23;
    centerYAnchor = [(UISwitch *)self->_switchControl centerYAnchor];
    contentView2 = [(PRXFeatureTableViewCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[1] = v15;
    trailingAnchor2 = [(UISwitch *)self->_switchControl trailingAnchor];
    contentView3 = [(PRXFeatureTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-2.0];
    v28[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    [v22 activateConstraints:v21];

    controlCopy = v27;
  }
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x277CCA898];
  titleCopy = title;
  v6 = [[v4 alloc] initWithString:titleCopy];

  titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
  [titleLabel setAttributedText:v6];

  [(PRXFeatureTableViewCell *)self _updateTitleIndent];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(PRXFeatureTableViewCell *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];
}

- (void)setFeatureImageSize:(double)size
{
  v11[2] = *MEMORY[0x277D85DE8];
  self->_featureImageSize = size;
  v5 = MEMORY[0x277CCAAD0];
  widthAnchor = [(UIView *)self->_featureImageView widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:size];
  v11[0] = v7;
  heightAnchor = [(UIView *)self->_featureImageView heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:size];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v5 activateConstraints:v10];

  [(PRXFeatureTableViewCell *)self _updateTitleIndent];
}

- (void)setHidingSeparator:(BOOL)separator
{
  self->_hidingSeparator = separator;
  layoutGuideHeightConstraint = [(PRXFeatureTableViewCell *)self layoutGuideHeightConstraint];
  [layoutGuideHeightConstraint setConstant:15.0];
}

- (void)_updateLabelHyphenationFactor
{
  traitCollection = [(PRXFeatureTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
    LODWORD(v7) = 1045220557;
    [titleLabel _setHyphenationFactor:v7];

    subtitleLabel = [(PRXFeatureTableViewCell *)self subtitleLabel];
    LODWORD(v8) = 1055286886;
    [subtitleLabel _setHyphenationFactor:v8];
  }
}

- (void)_updateImageViewAnchors
{
  traitCollection = [(PRXFeatureTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (self->_featureImageView)
  {
    imageViewVerticalAnchor = [(PRXFeatureTableViewCell *)self imageViewVerticalAnchor];
    [imageViewVerticalAnchor setActive:0];

    if (IsAccessibilityCategory)
    {
      titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
      font = [titleLabel font];
      [font lineHeight];
      v10 = v9 * 0.5;

      centerYAnchor = [(UIView *)self->_featureImageView centerYAnchor];
      titleLabel2 = [(PRXFeatureTableViewCell *)self titleLabel];
      topAnchor = [titleLabel2 topAnchor];
      [centerYAnchor constraintEqualToAnchor:topAnchor constant:v10];
    }

    else
    {
      centerYAnchor = [(UIView *)self->_featureImageView centerYAnchor];
      titleLabel2 = [(PRXFeatureTableViewCell *)self contentView];
      topAnchor = [titleLabel2 centerYAnchor];
      [centerYAnchor constraintEqualToAnchor:topAnchor];
    }
    v14 = ;
    [(PRXFeatureTableViewCell *)self setImageViewVerticalAnchor:v14];

    imageViewVerticalAnchor2 = [(PRXFeatureTableViewCell *)self imageViewVerticalAnchor];
    [imageViewVerticalAnchor2 setActive:1];
  }
}

- (void)_updateTitleLeadingAnchor
{
  if (self->_featureImageView)
  {
    titleLabelLeadingAnchor = [(PRXFeatureTableViewCell *)self titleLabelLeadingAnchor];
    [titleLabelLeadingAnchor setActive:0];

    traitCollection = [(PRXFeatureTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    if (IsAccessibilityCategory)
    {
      contentView = [(PRXFeatureTableViewCell *)self contentView];
      layoutMarginsGuide = [contentView layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PRXFeatureTableViewCell *)self setTitleLabelLeadingAnchor:v12];
    }

    else
    {
      contentView = [(PRXFeatureTableViewCell *)self featureImageView];
      layoutMarginsGuide = [contentView trailingAnchor];
      leadingAnchor2 = [leadingAnchor constraintEqualToAnchor:layoutMarginsGuide constant:16.0];
      [(PRXFeatureTableViewCell *)self setTitleLabelLeadingAnchor:leadingAnchor2];
    }

    titleLabelLeadingAnchor2 = [(PRXFeatureTableViewCell *)self titleLabelLeadingAnchor];
    [titleLabelLeadingAnchor2 setActive:1];
  }
}

- (void)_updateTitleIndent
{
  v14[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(PRXFeatureTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {

    goto LABEL_5;
  }

  featureImageView = self->_featureImageView;

  if (!featureImageView)
  {
LABEL_5:
    v8 = MEMORY[0x277CBEC10];
    goto LABEL_6;
  }

  v6 = objc_alloc_init(MEMORY[0x277D74240]);
  [(PRXFeatureTableViewCell *)self featureImageSize];
  [v6 setFirstLineHeadIndent:v7 + 16.0];
  [v6 setLineBreakStrategy:0xFFFFLL];
  v13 = *MEMORY[0x277D74118];
  v14[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

LABEL_6:
  titleLabel = [(PRXFeatureTableViewCell *)self titleLabel];
  attributedText = [titleLabel attributedText];
  v11 = [attributedText mutableCopy];

  [v11 setAttributes:v8 range:{0, objc_msgSend(v11, "length")}];
  titleLabel2 = [(PRXFeatureTableViewCell *)self titleLabel];
  [titleLabel2 setAttributedText:v11];
}

@end