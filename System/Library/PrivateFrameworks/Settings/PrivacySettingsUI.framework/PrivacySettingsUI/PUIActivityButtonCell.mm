@interface PUIActivityButtonCell
- (PUIActivityButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PUIActivityButtonCell

- (PUIActivityButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v61.receiver = self;
  v61.super_class = PUIActivityButtonCell;
  v4 = [(PSTableCell *)&v61 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PUIActivityButtonCell *)v4 contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];

    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUIActivityButtonCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    v10 = objc_opt_new();
    [(PUIActivityButtonCell *)v5 setPrimaryLabel:v10];

    primaryLabel = [(PUIActivityButtonCell *)v5 primaryLabel];
    [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    font = [titleLabel2 font];
    primaryLabel2 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [primaryLabel2 setFont:font];

    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    textColor = [titleLabel3 textColor];
    primaryLabel3 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [primaryLabel3 setTextColor:textColor];

    primaryLabel4 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [primaryLabel4 setNumberOfLines:0];

    contentView2 = [(PUIActivityButtonCell *)v5 contentView];
    primaryLabel5 = [(PUIActivityButtonCell *)v5 primaryLabel];
    [contentView2 addSubview:primaryLabel5];

    v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(PUIActivityButtonCell *)v5 setSpinner:v21];

    spinner = [(PUIActivityButtonCell *)v5 spinner];
    [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView3 = [(PUIActivityButtonCell *)v5 contentView];
    spinner2 = [(PUIActivityButtonCell *)v5 spinner];
    [contentView3 addSubview:spinner2];

    spinner3 = [(PUIActivityButtonCell *)v5 spinner];
    [spinner3 setHidden:1];

    spinner4 = [(PUIActivityButtonCell *)v5 spinner];
    topAnchor = [spinner4 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v29 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [v29 setActive:1];

    spinner5 = [(PUIActivityButtonCell *)v5 spinner];
    leadingAnchor = [spinner5 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v33 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [v33 setActive:1];

    spinner6 = [(PUIActivityButtonCell *)v5 spinner];
    bottomAnchor = [spinner6 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v37 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [v37 setActive:1];

    primaryLabel6 = [(PUIActivityButtonCell *)v5 primaryLabel];
    topAnchor3 = [primaryLabel6 topAnchor];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v41 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [v41 setActive:1];

    primaryLabel7 = [(PUIActivityButtonCell *)v5 primaryLabel];
    leadingAnchor3 = [primaryLabel7 leadingAnchor];
    spinner7 = [(PUIActivityButtonCell *)v5 spinner];
    trailingAnchor = [spinner7 trailingAnchor];
    v46 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:8.0];
    [v46 setActive:1];

    primaryLabel8 = [(PUIActivityButtonCell *)v5 primaryLabel];
    trailingAnchor2 = [primaryLabel8 trailingAnchor];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v50 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v50 setActive:1];

    primaryLabel9 = [(PUIActivityButtonCell *)v5 primaryLabel];
    bottomAnchor3 = [primaryLabel9 bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v54 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    [v54 setActive:1];

    primaryLabel10 = [(PUIActivityButtonCell *)v5 primaryLabel];
    centerXAnchor = [primaryLabel10 centerXAnchor];
    contentView4 = [(PUIActivityButtonCell *)v5 contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v59 setActive:1];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4 = MEMORY[0x277CCABB0];
  specifierCopy = specifier;
  v6 = [specifierCopy objectForKeyedSubscript:@"PUIActivityButtonCellIsActive"];
  v7 = [v4 numberWithInt:{objc_msgSend(v6, "BOOLValue") ^ 1}];
  [specifierCopy setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  v19.receiver = self;
  v19.super_class = PUIActivityButtonCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  primaryLabel = [(PUIActivityButtonCell *)self primaryLabel];
  [primaryLabel setText:text];

  v11 = [specifierCopy objectForKeyedSubscript:@"PUIActivityButtonCellIsActive"];

  LODWORD(titleLabel) = [v11 BOOLValue];
  spinner = [(PUIActivityButtonCell *)self spinner];
  v13 = spinner;
  if (titleLabel)
  {
    [spinner setHidden:0];

    spinner2 = [(PUIActivityButtonCell *)self spinner];
    [spinner2 startAnimating];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    primaryLabel2 = [(PUIActivityButtonCell *)self primaryLabel];
    [primaryLabel2 setTextColor:systemGrayColor];
  }

  else
  {
    [spinner setHidden:1];

    spinner3 = [(PUIActivityButtonCell *)self spinner];
    [spinner3 stopAnimating];

    systemGrayColor = [(PSTableCell *)self titleLabel];
    primaryLabel2 = [systemGrayColor textColor];
    primaryLabel3 = [(PUIActivityButtonCell *)self primaryLabel];
    [primaryLabel3 setTextColor:primaryLabel2];
  }
}

@end