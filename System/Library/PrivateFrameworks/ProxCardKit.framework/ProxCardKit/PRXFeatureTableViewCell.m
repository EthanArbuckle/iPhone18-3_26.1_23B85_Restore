@interface PRXFeatureTableViewCell
- (PRXFeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateImageViewAnchors;
- (void)_updateLabelHyphenationFactor;
- (void)_updateTitleIndent;
- (void)_updateTitleLeadingAnchor;
- (void)layoutMarginsDidChange;
- (void)setFeatureImageSize:(double)a3;
- (void)setFeatureImageView:(id)a3;
- (void)setHidingSeparator:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setSwitchControl:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PRXFeatureTableViewCell

- (PRXFeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v74[11] = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = PRXFeatureTableViewCell;
  v4 = [(PRXFeatureTableViewCell *)&v73 initWithStyle:0 reuseIdentifier:a4];
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
    v12 = [(PRXFeatureTableViewCell *)v4 contentView];
    [v12 addSubview:v4->_titleLabel];

    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v13;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setFont:v69];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    v15 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v15];

    [(UILabel *)v4->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    v17 = [(PRXFeatureTableViewCell *)v4 contentView];
    [v17 addSubview:v4->_subtitleLabel];

    v18 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v19 = [(PRXFeatureTableViewCell *)v4 contentView];
    v20 = [v19 layoutMarginsGuide];
    v21 = [v20 leadingAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    titleLabelLeadingAnchor = v4->_titleLabelLeadingAnchor;
    v4->_titleLabelLeadingAnchor = v22;

    v24 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v25 = [(PRXFeatureTableViewCell *)v4 contentView];
    v26 = [v25 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];
    titleLabelTrailingAnchor = v4->_titleLabelTrailingAnchor;
    v4->_titleLabelTrailingAnchor = v28;

    v30 = objc_alloc_init(MEMORY[0x277D756D0]);
    v31 = objc_alloc_init(MEMORY[0x277D756D0]);
    v32 = [(PRXFeatureTableViewCell *)v4 contentView];
    [v32 addLayoutGuide:v30];

    v33 = [(PRXFeatureTableViewCell *)v4 contentView];
    [v33 addLayoutGuide:v31];

    v34 = [v30 heightAnchor];
    v35 = [v34 constraintGreaterThanOrEqualToConstant:15.0];
    layoutGuideHeightConstraint = v4->_layoutGuideHeightConstraint;
    v4->_layoutGuideHeightConstraint = v35;

    v55 = MEMORY[0x277CCAAD0];
    v68 = [v30 heightAnchor];
    v67 = [v31 heightAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v74[0] = v66;
    v74[1] = v4->_layoutGuideHeightConstraint;
    v63 = v30;
    v64 = [v30 topAnchor];
    v65 = [(PRXFeatureTableViewCell *)v4 contentView];
    v62 = [v65 topAnchor];
    [v64 constraintEqualToAnchor:v62];
    v61 = v60 = v31;
    v74[2] = v61;
    v58 = [v31 bottomAnchor];
    v59 = [(PRXFeatureTableViewCell *)v4 contentView];
    v57 = [v59 bottomAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v74[3] = v56;
    v54 = [(UILabel *)v4->_titleLabel topAnchor];
    v53 = [v30 bottomAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v74[4] = v52;
    v51 = [(UILabel *)v4->_subtitleLabel bottomAnchor];
    v50 = [v31 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v74[5] = v49;
    v74[6] = v4->_titleLabelLeadingAnchor;
    v74[7] = v4->_titleLabelTrailingAnchor;
    v48 = [(UILabel *)v4->_subtitleLabel topAnchor];
    v37 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v38 = [v48 constraintEqualToAnchor:v37 constant:2.0];
    v74[8] = v38;
    v39 = [(UILabel *)v4->_subtitleLabel leadingAnchor];
    v40 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v74[9] = v41;
    v42 = [(UILabel *)v4->_subtitleLabel trailingAnchor];
    v43 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v74[10] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:11];
    [v55 activateConstraints:v45];

    [(PRXFeatureTableViewCell *)v4 _updateLabelHyphenationFactor];
    v46 = v4;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRXFeatureTableViewCell;
  [(PRXFeatureTableViewCell *)&v4 traitCollectionDidChange:a3];
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
  v5 = [(PRXFeatureTableViewCell *)self featureImageView];

  if (v5)
  {
    [(PRXFeatureTableViewCell *)self featureImageSize];
    v4 = v4 + v6 + 16.0;
  }

  [(PRXFeatureTableViewCell *)self directionalLayoutMargins];
  [(PRXFeatureTableViewCell *)self setSeparatorInset:0.0, v4, 0.0];
}

- (void)setFeatureImageView:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_featureImageView != v5)
  {
    objc_storeStrong(&self->_featureImageView, a3);
    [(UIView *)self->_featureImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PRXFeatureTableViewCell *)self contentView];
    [v6 addSubview:self->_featureImageView];

    v7 = [(UIView *)self->_featureImageView leadingAnchor];
    v8 = [(PRXFeatureTableViewCell *)self contentView];
    v9 = [v8 layoutMarginsGuide];
    v10 = [v9 leadingAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    [(PRXFeatureTableViewCell *)self setImageViewLeadingAnchor:v11];

    [(PRXFeatureTableViewCell *)self _updateImageViewAnchors];
    [(PRXFeatureTableViewCell *)self _updateTitleLeadingAnchor];
    [(PRXFeatureTableViewCell *)self _updateTitleIndent];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [(PRXFeatureTableViewCell *)self imageViewLeadingAnchor];
    v15[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v12 activateConstraints:v14];
  }
}

- (void)setSwitchControl:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  switchControl = self->_switchControl;
  if (switchControl != v5)
  {
    v27 = v5;
    [(UISwitch *)switchControl removeFromSuperview];
    objc_storeStrong(&self->_switchControl, a3);
    [(UISwitch *)self->_switchControl setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UISwitch *)self->_switchControl setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = [(PRXFeatureTableViewCell *)self contentView];
    [v8 addSubview:self->_switchControl];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(PRXFeatureTableViewCell *)self titleLabelTrailingAnchor];
    v29[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v9 deactivateConstraints:v11];

    v22 = MEMORY[0x277CCAAD0];
    v25 = [(UISwitch *)self->_switchControl leadingAnchor];
    v26 = [(PRXFeatureTableViewCell *)self titleLabel];
    v24 = [v26 trailingAnchor];
    v23 = [v25 constraintGreaterThanOrEqualToAnchor:v24 constant:12.0];
    v28[0] = v23;
    v12 = [(UISwitch *)self->_switchControl centerYAnchor];
    v13 = [(PRXFeatureTableViewCell *)self contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v28[1] = v15;
    v16 = [(UISwitch *)self->_switchControl trailingAnchor];
    v17 = [(PRXFeatureTableViewCell *)self contentView];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19 constant:-2.0];
    v28[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    [v22 activateConstraints:v21];

    v5 = v27;
  }
}

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v7 = [(PRXFeatureTableViewCell *)self titleLabel];
  [v7 setAttributedText:v6];

  [(PRXFeatureTableViewCell *)self _updateTitleIndent];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(PRXFeatureTableViewCell *)self subtitleLabel];
  [v5 setText:v4];
}

- (void)setFeatureImageSize:(double)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  self->_featureImageSize = a3;
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(UIView *)self->_featureImageView widthAnchor];
  v7 = [v6 constraintEqualToConstant:a3];
  v11[0] = v7;
  v8 = [(UIView *)self->_featureImageView heightAnchor];
  v9 = [v8 constraintEqualToConstant:a3];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v5 activateConstraints:v10];

  [(PRXFeatureTableViewCell *)self _updateTitleIndent];
}

- (void)setHidingSeparator:(BOOL)a3
{
  self->_hidingSeparator = a3;
  v3 = [(PRXFeatureTableViewCell *)self layoutGuideHeightConstraint];
  [v3 setConstant:15.0];
}

- (void)_updateLabelHyphenationFactor
{
  v3 = [(PRXFeatureTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    v6 = [(PRXFeatureTableViewCell *)self titleLabel];
    LODWORD(v7) = 1045220557;
    [v6 _setHyphenationFactor:v7];

    v9 = [(PRXFeatureTableViewCell *)self subtitleLabel];
    LODWORD(v8) = 1055286886;
    [v9 _setHyphenationFactor:v8];
  }
}

- (void)_updateImageViewAnchors
{
  v3 = [(PRXFeatureTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (self->_featureImageView)
  {
    v6 = [(PRXFeatureTableViewCell *)self imageViewVerticalAnchor];
    [v6 setActive:0];

    if (IsAccessibilityCategory)
    {
      v7 = [(PRXFeatureTableViewCell *)self titleLabel];
      v8 = [v7 font];
      [v8 lineHeight];
      v10 = v9 * 0.5;

      v11 = [(UIView *)self->_featureImageView centerYAnchor];
      v12 = [(PRXFeatureTableViewCell *)self titleLabel];
      v13 = [v12 topAnchor];
      [v11 constraintEqualToAnchor:v13 constant:v10];
    }

    else
    {
      v11 = [(UIView *)self->_featureImageView centerYAnchor];
      v12 = [(PRXFeatureTableViewCell *)self contentView];
      v13 = [v12 centerYAnchor];
      [v11 constraintEqualToAnchor:v13];
    }
    v14 = ;
    [(PRXFeatureTableViewCell *)self setImageViewVerticalAnchor:v14];

    v15 = [(PRXFeatureTableViewCell *)self imageViewVerticalAnchor];
    [v15 setActive:1];
  }
}

- (void)_updateTitleLeadingAnchor
{
  if (self->_featureImageView)
  {
    v3 = [(PRXFeatureTableViewCell *)self titleLabelLeadingAnchor];
    [v3 setActive:0];

    v4 = [(PRXFeatureTableViewCell *)self traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    v7 = [(PRXFeatureTableViewCell *)self titleLabel];
    v8 = [v7 leadingAnchor];
    if (IsAccessibilityCategory)
    {
      v9 = [(PRXFeatureTableViewCell *)self contentView];
      v10 = [v9 layoutMarginsGuide];
      v11 = [v10 leadingAnchor];
      v12 = [v8 constraintEqualToAnchor:v11];
      [(PRXFeatureTableViewCell *)self setTitleLabelLeadingAnchor:v12];
    }

    else
    {
      v9 = [(PRXFeatureTableViewCell *)self featureImageView];
      v10 = [v9 trailingAnchor];
      v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
      [(PRXFeatureTableViewCell *)self setTitleLabelLeadingAnchor:v11];
    }

    v13 = [(PRXFeatureTableViewCell *)self titleLabelLeadingAnchor];
    [v13 setActive:1];
  }
}

- (void)_updateTitleIndent
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(PRXFeatureTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(v4))
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
  v9 = [(PRXFeatureTableViewCell *)self titleLabel];
  v10 = [v9 attributedText];
  v11 = [v10 mutableCopy];

  [v11 setAttributes:v8 range:{0, objc_msgSend(v11, "length")}];
  v12 = [(PRXFeatureTableViewCell *)self titleLabel];
  [v12 setAttributedText:v11];
}

@end