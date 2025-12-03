@interface PSUIAppInstallCell
+ (id)specifierForAppWithDescription:(id)description target:(id)target action:(SEL)action;
- (PSUIAppInstallCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_updateCellWithInstallState;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setInstallState:(int)state;
- (void)updateConstraints;
@end

@implementation PSUIAppInstallCell

+ (id)specifierForAppWithDescription:(id)description target:(id)target action:(SEL)action
{
  descriptionCopy = description;
  targetCopy = target;
  actionCopy = action;
  if (MobileStoreUILibraryCore_0())
  {
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D40140]];

    [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    icon = [descriptionCopy icon];
    [v9 setProperty:icon forKey:@"PSUIAppIcon"];

    name = [descriptionCopy name];
    [v9 setProperty:name forKey:@"PSUIAppName"];

    publisher = [descriptionCopy publisher];
    [v9 setProperty:publisher forKey:@"PSUIAppPublisher"];

    [v9 setProperty:targetCopy forKey:@"PSUIAppButtonTarget"];
    v14 = [MEMORY[0x277CCAE60] valueWithBytes:&actionCopy objCType:":"];
    [v9 setProperty:v14 forKey:@"PSUIAppButtonAction"];

    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    if ([descriptionCopy installed])
    {
      v15 = MEMORY[0x277CBEC38];
      v16 = v9;
    }

    else
    {
      v16 = v9;
      v15 = 0;
    }

    [v16 setProperty:v15 forKey:@"PSUIAppInstalled"];
    installedLabel = [descriptionCopy installedLabel];

    if (installedLabel)
    {
      installedLabel2 = [descriptionCopy installedLabel];
      [v9 setProperty:installedLabel2 forKey:@"PSUIAppInstalledLabel"];
    }

    else
    {
      installedLabel2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [installedLabel2 localizedStringForKey:@"INSTALLED" value:&stru_287733598 table:@"AppInstallCell"];
      [v9 setProperty:v19 forKey:@"PSUIAppInstalledLabel"];
    }
  }

  else
  {
    installedLabel2 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallCell"];
    if (os_log_type_enabled(installedLabel2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, installedLabel2, OS_LOG_TYPE_DEFAULT, "MobileStoreUI Framework not available. Will not return AppInstallCell.", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (PSUIAppInstallCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  v118.receiver = self;
  v118.super_class = PSUIAppInstallCell;
  specifierCopy = specifier;
  v9 = [(PSTableCell *)&v118 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D755E8]);
    v11 = [specifierCopy propertyForKey:@"PSUIAppIcon"];
    v12 = [v10 initWithImage:v11];
    iconView = v9->_iconView;
    v9->_iconView = v12;

    [(UIImageView *)v9->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1144766464;
    [(UIImageView *)v9->_iconView setContentCompressionResistancePriority:0 forAxis:v14];
    contentView = [(PSUIAppInstallCell *)v9 contentView];
    [contentView addSubview:v9->_iconView];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v9->_nameLabel;
    v9->_nameLabel = v16;

    v18 = [specifierCopy propertyForKey:@"PSUIAppName"];
    [(UILabel *)v9->_nameLabel setText:v18];

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v9->_nameLabel setFont:v19];

    [(UILabel *)v9->_nameLabel setOpaque:0];
    [(UILabel *)v9->_nameLabel setBackgroundColor:0];
    [(UILabel *)v9->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1148846080;
    [(UILabel *)v9->_nameLabel setContentHuggingPriority:1 forAxis:v20];
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    publisherLabel = v9->_publisherLabel;
    v9->_publisherLabel = v21;

    v23 = [specifierCopy propertyForKey:@"PSUIAppPublisher"];
    [(UILabel *)v9->_publisherLabel setText:v23];

    v24 = *MEMORY[0x277D76968];
    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v9->_publisherLabel setFont:v25];

    [(UILabel *)v9->_publisherLabel setOpaque:0];
    [(UILabel *)v9->_publisherLabel setBackgroundColor:0];
    [(UILabel *)v9->_publisherLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1148846080;
    [(UILabel *)v9->_publisherLabel setContentHuggingPriority:1 forAxis:v26];
    v27 = objc_alloc_init(MEMORY[0x277D756B8]);
    installedLabel = v9->_installedLabel;
    v9->_installedLabel = v27;

    v29 = [specifierCopy propertyForKey:@"PSUIAppInstalledLabel"];
    [(UILabel *)v9->_installedLabel setText:v29];

    v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:v24];
    [(UILabel *)v9->_installedLabel setFont:v30];

    [(UILabel *)v9->_installedLabel setOpaque:0];
    [(UILabel *)v9->_installedLabel setBackgroundColor:0];
    [(UILabel *)v9->_installedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [(UILabel *)v9->_installedLabel setContentHuggingPriority:1 forAxis:v31];
    v32 = objc_alloc_init(MEMORY[0x277D75D18]);
    labelContainerView = v9->_labelContainerView;
    v9->_labelContainerView = v32;

    [(UIView *)v9->_labelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9->_labelContainerView addSubview:v9->_nameLabel];
    [(UIView *)v9->_labelContainerView addSubview:v9->_publisherLabel];
    [(UIView *)v9->_labelContainerView addSubview:v9->_installedLabel];
    LODWORD(v34) = 1148846080;
    [(UIView *)v9->_labelContainerView setContentHuggingPriority:1 forAxis:v34];
    contentView2 = [(PSUIAppInstallCell *)v9 contentView];
    [contentView2 addSubview:v9->_labelContainerView];

    v120 = 0;
    v121 = &v120;
    v122 = 0x2050000000;
    v36 = getSUUIItemOfferButtonClass_softClass;
    v123 = getSUUIItemOfferButtonClass_softClass;
    if (!getSUUIItemOfferButtonClass_softClass)
    {
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __getSUUIItemOfferButtonClass_block_invoke;
      v119[3] = &unk_279BA9F68;
      v119[4] = &v120;
      __getSUUIItemOfferButtonClass_block_invoke(v119);
      v36 = v121[3];
    }

    v37 = v36;
    _Block_object_dispose(&v120, 8);
    v38 = objc_alloc_init(v36);
    installButton = v9->_installButton;
    v9->_installButton = v38;

    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"OPEN" value:&stru_287733598 table:@"AppInstallCell"];
    [(SUUIItemOfferButton *)v9->_installButton setTitle:v41];

    [(SUUIItemOfferButton *)v9->_installButton setEnabled:1];
    [(SUUIItemOfferButton *)v9->_installButton setAlpha:1.0];
    LODWORD(v42) = -0.5;
    [(SUUIItemOfferButton *)v9->_installButton setCharge:v42];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIItemOfferButton *)v9->_installButton setBackgroundColor:clearColor];

    [(SUUIItemOfferButton *)v9->_installButton setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(PSUIAppInstallCell *)v9 contentView];
    [contentView3 addSubview:v9->_installButton];

    v119[0] = 0;
    v45 = [specifierCopy propertyForKey:@"PSUIAppButtonAction"];
    [v45 getValue:v119];

    v46 = v9->_installButton;
    v47 = [specifierCopy propertyForKey:@"PSUIAppButtonTarget"];
    [(SUUIItemOfferButton *)v46 addTarget:v47 action:v119[0] forControlEvents:64];

    array = [MEMORY[0x277CBEB18] array];
    constraints = v9->_constraints;
    v9->_constraints = array;

    v50 = v9->_nameLabel;
    v51 = _NSDictionaryOfVariableBindings(&cfstr_IconviewNamela.isa, v9->_iconView, v50, v9->_publisherLabel, v9->_installedLabel, v9->_labelContainerView, v9->_installButton, 0);
    v52 = v9->_constraints;
    v116 = v51;
    v53 = v51;
    v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-15-[_iconView]-8-[_labelContainerView]-(>=10)-[_installButton]-12-|" options:0 metrics:0 views:?];
    [(NSMutableArray *)v52 addObjectsFromArray:v54];

    v55 = v9->_constraints;
    v56 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_nameLabel]-2-[_publisherLabel]-3-[_installedLabel]" options:0 metrics:0 views:v53];
    [(NSMutableArray *)v55 addObjectsFromArray:v56];

    widthAnchor = [(UIImageView *)v9->_iconView widthAnchor];
    heightAnchor = [(UIImageView *)v9->_iconView heightAnchor];
    v59 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:1.0];
    [v59 setActive:1];

    bottomAnchor = [(UILabel *)v9->_installedLabel bottomAnchor];
    bottomAnchor2 = [(UIView *)v9->_labelContainerView bottomAnchor];
    v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    installedConstraint = v9->_installedConstraint;
    v9->_installedConstraint = v62;

    [(NSLayoutConstraint *)v9->_installedConstraint setActive:1];
    bottomAnchor3 = [(UILabel *)v9->_publisherLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)v9->_labelContainerView bottomAnchor];
    v66 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    availableConstraint = v9->_availableConstraint;
    v9->_availableConstraint = v66;

    [(NSLayoutConstraint *)v9->_availableConstraint setActive:0];
    centerYAnchor = [(UIImageView *)v9->_iconView centerYAnchor];
    contentView4 = [(PSUIAppInstallCell *)v9 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v71 setActive:1];

    centerYAnchor3 = [(UIView *)v9->_labelContainerView centerYAnchor];
    contentView5 = [(PSUIAppInstallCell *)v9 contentView];
    centerYAnchor4 = [contentView5 centerYAnchor];
    v75 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v75 setActive:1];

    centerYAnchor5 = [(SUUIItemOfferButton *)v9->_installButton centerYAnchor];
    contentView6 = [(PSUIAppInstallCell *)v9 contentView];
    centerYAnchor6 = [contentView6 centerYAnchor];
    v79 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v79 setActive:1];

    leadingAnchor = [(UIView *)v9->_labelContainerView leadingAnchor];
    leadingAnchor2 = [(UILabel *)v9->_nameLabel leadingAnchor];
    v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v82 setActive:1];

    leadingAnchor3 = [(UIView *)v9->_labelContainerView leadingAnchor];
    leadingAnchor4 = [(UILabel *)v9->_publisherLabel leadingAnchor];
    v85 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v85 setActive:1];

    leadingAnchor5 = [(UIView *)v9->_labelContainerView leadingAnchor];
    leadingAnchor6 = [(UILabel *)v9->_installedLabel leadingAnchor];
    v88 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v88 setActive:1];

    trailingAnchor = [(UIView *)v9->_labelContainerView trailingAnchor];
    trailingAnchor2 = [(UILabel *)v9->_nameLabel trailingAnchor];
    v91 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    [v91 setActive:1];

    trailingAnchor3 = [(UIView *)v9->_labelContainerView trailingAnchor];
    trailingAnchor4 = [(UILabel *)v9->_publisherLabel trailingAnchor];
    v94 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
    [v94 setActive:1];

    trailingAnchor5 = [(UIView *)v9->_labelContainerView trailingAnchor];
    trailingAnchor6 = [(UILabel *)v9->_installedLabel trailingAnchor];
    v97 = [trailingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor6];
    [v97 setActive:1];

    topAnchor = [(UIView *)v9->_labelContainerView topAnchor];
    contentView7 = [(PSUIAppInstallCell *)v9 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v101 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:15.0];
    labelPaddingTop = v9->_labelPaddingTop;
    v9->_labelPaddingTop = v101;

    [(NSLayoutConstraint *)v9->_labelPaddingTop setActive:1];
    bottomAnchor5 = [(UIView *)v9->_labelContainerView bottomAnchor];
    contentView8 = [(PSUIAppInstallCell *)v9 contentView];
    bottomAnchor6 = [contentView8 bottomAnchor];
    v106 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:-15.0];
    labelPaddingBottom = v9->_labelPaddingBottom;
    v9->_labelPaddingBottom = v106;

    [(NSLayoutConstraint *)v9->_labelPaddingBottom setActive:1];
    widthAnchor2 = [(SUUIItemOfferButton *)v9->_installButton widthAnchor];
    v109 = [widthAnchor2 constraintEqualToConstant:59.0];
    installButtonWidthConstraint = v9->_installButtonWidthConstraint;
    v9->_installButtonWidthConstraint = v109;

    heightAnchor2 = [(SUUIItemOfferButton *)v9->_installButton heightAnchor];
    v112 = [heightAnchor2 constraintEqualToConstant:26.0];
    installButtonHeightConstraint = v9->_installButtonHeightConstraint;
    v9->_installButtonHeightConstraint = v112;

    [MEMORY[0x277CCAAD0] activateConstraints:v9->_constraints];
    v114 = [specifierCopy propertyForKey:@"PSUIAppInstalled"];

    v9->_installState = v114 != 0;
    [(PSUIAppInstallCell *)v9 _updateCellWithInstallState];
  }

  return v9;
}

- (void)setInstallState:(int)state
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PSUIAppInstallCell setInstallState:]";
    v9 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting app install state to %i", &v7, 0x12u);
  }

  self->_installState = state;
  [(PSUIAppInstallCell *)self setNeedsUpdateConstraints];
  [(PSUIAppInstallCell *)self setNeedsLayout];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraints
{
  v13 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[PSUIAppInstallCell updateConstraints]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = &OBJC_IVAR___PSUIAppInstallCell__installedConstraint;
  installState = self->_installState;
  if (!installState)
  {
    v6 = &OBJC_IVAR___PSUIAppInstallCell__availableConstraint;
    v7 = -21.0;
    v8 = 21.0;
    goto LABEL_7;
  }

  if (installState == 1)
  {
    v6 = &OBJC_IVAR___PSUIAppInstallCell__installedConstraint;
    v4 = &OBJC_IVAR___PSUIAppInstallCell__availableConstraint;
    v7 = -15.0;
    v8 = 15.0;
LABEL_7:
    [(NSLayoutConstraint *)self->_labelPaddingTop setConstant:v8];
    [(NSLayoutConstraint *)self->_labelPaddingBottom setConstant:v7];
    [*(&self->super.super.super.super.super.isa + *v4) setActive:0];
    [*(&self->super.super.super.super.super.isa + *v6) setActive:1];
  }

  v10.receiver = self;
  v10.super_class = PSUIAppInstallCell;
  [(PSUIAppInstallCell *)&v10 updateConstraints];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[PSUIAppInstallCell layoutSubviews]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = PSUIAppInstallCell;
  [(PSTableCell *)&v7 layoutSubviews];
  [(PSUIAppInstallCell *)self _updateCellWithInstallState];
  if (![(NSLayoutConstraint *)self->_installButtonWidthConstraint isActive])
  {
    [(SUUIItemOfferButton *)self->_installButton sizeToFit];
    [(SUUIItemOfferButton *)self->_installButton bounds];
    [(NSLayoutConstraint *)self->_installButtonWidthConstraint setConstant:v4];
    [(SUUIItemOfferButton *)self->_installButton bounds];
    [(NSLayoutConstraint *)self->_installButtonHeightConstraint setConstant:v5];
    [(NSLayoutConstraint *)self->_installButtonWidthConstraint setActive:1];
    [(NSLayoutConstraint *)self->_installButtonHeightConstraint setActive:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateCellWithInstallState
{
  v15 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIAppInstallCell *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    installState = self->_installState;
    v11 = 136315394;
    v12 = "[PSUIAppInstallCell _updateCellWithInstallState]";
    v13 = 1024;
    v14 = installState;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s updating UI view state with install state %i", &v11, 0x12u);
  }

  v5 = self->_installState;
  if (!v5)
  {
    v6 = 1;
    v7 = @"INSTALL";
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = 0;
    v7 = @"OPEN";
LABEL_7:
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v7 value:&stru_287733598 table:@"AppInstallCell"];
    [(SUUIItemOfferButton *)self->_installButton setTitle:v9];

    [(UILabel *)self->_installedLabel setHidden:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSUIAppInstallCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  v4 = +[PSUICarrierSpaceManager sharedManager];
  carrierAppInstallController = [v4 carrierAppInstallController];
  -[PSUIAppInstallCell setInstallState:](self, "setInstallState:", [carrierAppInstallController installState]);
}

@end