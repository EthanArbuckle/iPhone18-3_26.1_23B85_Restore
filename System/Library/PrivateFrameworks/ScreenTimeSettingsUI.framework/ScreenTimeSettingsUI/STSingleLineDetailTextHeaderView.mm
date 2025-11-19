@interface STSingleLineDetailTextHeaderView
- (STSingleLineDetailTextHeaderView)initWithSpecifier:(id)a3 useContentLayoutGuide:(BOOL)a4;
- (void)reloadFromSpecifier;
@end

@implementation STSingleLineDetailTextHeaderView

- (STSingleLineDetailTextHeaderView)initWithSpecifier:(id)a3 useContentLayoutGuide:(BOOL)a4
{
  v4 = a4;
  v39[4] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = STSingleLineDetailTextHeaderView;
  v5 = [(STSingleLineHeaderView *)&v38 initWithSpecifier:a3 useContentLayoutGuide:?];
  if (v5)
  {
    v6 = objc_opt_new();
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v6;

    v8 = [(STSingleLineHeaderView *)v5 titleLabel];
    v9 = [v8 font];
    [(UILabel *)v5->_detailLabel setFont:v9];

    v10 = [v8 textColor];
    [(UILabel *)v5->_detailLabel setTextColor:v10];

    [(UILabel *)v5->_detailLabel setNumberOfLines:2];
    [(UILabel *)v5->_detailLabel setLineBreakMode:0];
    [(UILabel *)v5->_detailLabel setTextAlignment:2 * ([(STSingleLineDetailTextHeaderView *)v5 effectiveUserInterfaceLayoutDirection]!= 1)];
    [(UILabel *)v5->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1144750080;
    [(UILabel *)v5->_detailLabel setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(UILabel *)v5->_detailLabel setContentCompressionResistancePriority:0 forAxis:v12];
    v13 = [(STSingleLineDetailTextHeaderView *)v5 contentView];
    [(STSingleLineDetailTextHeaderView *)v13 addSubview:v5->_detailLabel];
    if (v4)
    {
      v14 = [(STTableViewHeaderFooterView *)v5 contentLayoutGuide];
      v15 = [v14 trailingAnchor];
    }

    else
    {
      v15 = [(STSingleLineDetailTextHeaderView *)v5 trailingAnchor];
    }

    v16 = [(UILabel *)v5->_detailLabel trailingAnchor];
    v17 = [v16 constraintEqualToAnchor:v15];

    LODWORD(v18) = 1144750080;
    [v17 setPriority:v18];
    v34 = MEMORY[0x277CCAAD0];
    v36 = v17;
    v39[0] = v17;
    v19 = [(UILabel *)v5->_detailLabel topAnchor];
    v37 = v15;
    v35 = v13;
    if (v4)
    {
      v20 = v13;
    }

    else
    {
      v20 = v5;
    }

    v21 = [(STSingleLineDetailTextHeaderView *)v20 topAnchor];
    v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21];
    v39[1] = v22;
    v23 = [(UILabel *)v5->_detailLabel lastBaselineAnchor];
    [v8 lastBaselineAnchor];
    v24 = v8;
    v25 = v33 = v8;
    [v23 constraintEqualToAnchor:v25];
    v26 = v32 = v19;
    v39[2] = v26;
    v27 = [(UILabel *)v5->_detailLabel leadingAnchor];
    v28 = [v24 trailingAnchor];
    v29 = [v27 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v28 multiplier:1.0];
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
  v3 = [(STSingleLineHeaderView *)self specifier];
  v4 = [v3 objectForKeyedSubscript:@"STDetailTextKey"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_28766E5A8;
  }

  v7 = [(STSingleLineDetailTextHeaderView *)self detailLabel];
  [v7 setText:v6];
}

@end