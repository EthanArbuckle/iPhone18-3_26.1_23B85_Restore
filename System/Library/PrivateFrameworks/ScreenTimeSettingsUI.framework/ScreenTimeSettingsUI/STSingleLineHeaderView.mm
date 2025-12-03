@interface STSingleLineHeaderView
- (PSSpecifier)specifier;
- (STSingleLineHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide;
- (void)reloadFromSpecifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation STSingleLineHeaderView

- (STSingleLineHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide
{
  guideCopy = guide;
  v41[5] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v40.receiver = self;
  v40.super_class = STSingleLineHeaderView;
  v7 = [(STTableViewHeaderFooterView *)&v40 initWithReuseIdentifier:0 useLayoutMarginsGuide:!guideCopy];
  if (v7)
  {
    obj = specifierCopy;
    v8 = objc_opt_new();
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = [MEMORY[0x277D75B70] _defaultFontForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v7->_titleLabel setFont:v10];

    v11 = [MEMORY[0x277D75B70] _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v7->_titleLabel setTextColor:v11];

    [(UILabel *)v7->_titleLabel setNumberOfLines:2];
    [(UILabel *)v7->_titleLabel setLineBreakMode:0];
    [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1144750080;
    [(UILabel *)v7->_titleLabel setContentHuggingPriority:0 forAxis:v12];
    contentView = [(STSingleLineHeaderView *)v7 contentView];
    [contentView addSubview:v7->_titleLabel];
    lastBaselineAnchor = [(UILabel *)v7->_titleLabel lastBaselineAnchor];
    textLabel = [(STSingleLineHeaderView *)v7 textLabel];
    lastBaselineAnchor2 = [textLabel lastBaselineAnchor];
    v17 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];

    LODWORD(v18) = 1132068864;
    [v17 setPriority:v18];
    v38 = contentView;
    if (guideCopy)
    {
      v19 = contentView;
      contentLayoutGuide = [(STTableViewHeaderFooterView *)v7 contentLayoutGuide];
      leadingAnchor = [contentLayoutGuide leadingAnchor];
    }

    else
    {
      v19 = v7;
      leadingAnchor = [(STSingleLineHeaderView *)v19 leadingAnchor];
    }

    v34 = leadingAnchor;
    v31 = MEMORY[0x277CCAAD0];
    v41[0] = v17;
    topAnchor = [(UILabel *)v7->_titleLabel topAnchor];
    topAnchor2 = [(STSingleLineHeaderView *)v19 topAnchor];
    v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v41[1] = v35;
    leadingAnchor2 = [(UILabel *)v7->_titleLabel leadingAnchor];
    v22 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];
    v41[2] = v22;
    bottomAnchor = [(UILabel *)v7->_titleLabel bottomAnchor];
    bottomAnchor2 = [(STSingleLineHeaderView *)v19 bottomAnchor];
    v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v41[3] = v25;
    trailingAnchor = [(UILabel *)v7->_titleLabel trailingAnchor];
    [(STSingleLineHeaderView *)v19 centerXAnchor];
    v27 = v33 = v17;
    v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:v27];
    v41[4] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    [v31 activateConstraints:v29];

    specifierCopy = obj;
    objc_storeWeak(&v7->_specifier, obj);
    [(STSingleLineHeaderView *)v7 reloadFromSpecifier];
  }

  return v7;
}

- (void)setSpecifier:(id)specifier
{
  objc_storeWeak(&self->_specifier, specifier);

  [(STSingleLineHeaderView *)self reloadFromSpecifier];
}

- (void)reloadFromSpecifier
{
  v3 = _UISolariumEnabled();
  specifier = [(STSingleLineHeaderView *)self specifier];
  name = [specifier name];
  v5 = name;
  if (v3)
  {
    titleLabel = [(STSingleLineHeaderView *)self titleLabel];
    [titleLabel setText:v5];
  }

  else
  {
    titleLabel = [name localizedUppercaseString];
    titleLabel2 = [(STSingleLineHeaderView *)self titleLabel];
    [titleLabel2 setText:titleLabel];
  }
}

- (PSSpecifier)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_specifier);

  return WeakRetained;
}

@end