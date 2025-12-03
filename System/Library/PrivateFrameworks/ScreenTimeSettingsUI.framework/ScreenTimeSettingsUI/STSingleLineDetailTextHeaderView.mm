@interface STSingleLineDetailTextHeaderView
- (STSingleLineDetailTextHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide;
- (void)reloadFromSpecifier;
@end

@implementation STSingleLineDetailTextHeaderView

- (STSingleLineDetailTextHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide
{
  guideCopy = guide;
  v39[4] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = STSingleLineDetailTextHeaderView;
  v5 = [(STSingleLineHeaderView *)&v38 initWithSpecifier:specifier useContentLayoutGuide:?];
  if (v5)
  {
    v6 = objc_opt_new();
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v6;

    titleLabel = [(STSingleLineHeaderView *)v5 titleLabel];
    font = [titleLabel font];
    [(UILabel *)v5->_detailLabel setFont:font];

    textColor = [titleLabel textColor];
    [(UILabel *)v5->_detailLabel setTextColor:textColor];

    [(UILabel *)v5->_detailLabel setNumberOfLines:2];
    [(UILabel *)v5->_detailLabel setLineBreakMode:0];
    [(UILabel *)v5->_detailLabel setTextAlignment:2 * ([(STSingleLineDetailTextHeaderView *)v5 effectiveUserInterfaceLayoutDirection]!= 1)];
    [(UILabel *)v5->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1144750080;
    [(UILabel *)v5->_detailLabel setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(UILabel *)v5->_detailLabel setContentCompressionResistancePriority:0 forAxis:v12];
    contentView = [(STSingleLineDetailTextHeaderView *)v5 contentView];
    [(STSingleLineDetailTextHeaderView *)contentView addSubview:v5->_detailLabel];
    if (guideCopy)
    {
      contentLayoutGuide = [(STTableViewHeaderFooterView *)v5 contentLayoutGuide];
      trailingAnchor = [contentLayoutGuide trailingAnchor];
    }

    else
    {
      trailingAnchor = [(STSingleLineDetailTextHeaderView *)v5 trailingAnchor];
    }

    trailingAnchor2 = [(UILabel *)v5->_detailLabel trailingAnchor];
    v17 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];

    LODWORD(v18) = 1144750080;
    [v17 setPriority:v18];
    v34 = MEMORY[0x277CCAAD0];
    v36 = v17;
    v39[0] = v17;
    topAnchor = [(UILabel *)v5->_detailLabel topAnchor];
    v37 = trailingAnchor;
    v35 = contentView;
    if (guideCopy)
    {
      v20 = contentView;
    }

    else
    {
      v20 = v5;
    }

    topAnchor2 = [(STSingleLineDetailTextHeaderView *)v20 topAnchor];
    v22 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v39[1] = v22;
    lastBaselineAnchor = [(UILabel *)v5->_detailLabel lastBaselineAnchor];
    [titleLabel lastBaselineAnchor];
    v24 = titleLabel;
    v25 = v33 = titleLabel;
    [lastBaselineAnchor constraintEqualToAnchor:v25];
    v26 = v32 = topAnchor;
    v39[2] = v26;
    leadingAnchor = [(UILabel *)v5->_detailLabel leadingAnchor];
    trailingAnchor3 = [v24 trailingAnchor];
    v29 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
    v39[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v34 activateConstraints:v30];

    [(STSingleLineDetailTextHeaderView *)v5 reloadFromSpecifier];
  }

  return v5;
}

- (void)reloadFromSpecifier
{
  v8.receiver = self;
  v8.super_class = STSingleLineDetailTextHeaderView;
  [(STSingleLineHeaderView *)&v8 reloadFromSpecifier];
  specifier = [(STSingleLineHeaderView *)self specifier];
  v4 = [specifier objectForKeyedSubscript:@"STDetailTextKey"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_28766E5A8;
  }

  detailLabel = [(STSingleLineDetailTextHeaderView *)self detailLabel];
  [detailLabel setText:v6];
}

@end