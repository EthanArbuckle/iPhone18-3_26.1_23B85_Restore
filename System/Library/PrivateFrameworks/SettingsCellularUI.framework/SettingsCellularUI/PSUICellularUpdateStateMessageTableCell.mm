@interface PSUICellularUpdateStateMessageTableCell
+ (id)specifierForUpdateState:(id)state details:(id)details target:(id)target action:(SEL)action;
- (void)_setupView:(id)view Context:(id)context target:(id)target CloseAction:(SEL)action;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularUpdateStateMessageTableCell

+ (id)specifierForUpdateState:(id)state details:(id)details target:(id)target action:(SEL)action
{
  actionCopy = action;
  v8 = MEMORY[0x277D3FAD8];
  targetCopy = target;
  detailsCopy = details;
  stateCopy = state;
  v12 = [v8 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:{0, actionCopy}];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v12 setProperty:v13 forKey:*MEMORY[0x277D40140]];

  [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v12 setProperty:stateCopy forKey:@"CellularUpdateStateMessageTitleKey"];

  [v12 setProperty:detailsCopy forKey:@"CellularUpdateStateMessageContextKey"];
  [v12 setProperty:targetCopy forKey:@"PSUICellularUpdateStateMessageCloseTarget"];

  v14 = [MEMORY[0x277CCAE60] valueWithBytes:&actionCopy objCType:":"];
  [v12 setProperty:v14 forKey:@"PSUICellularUpdateStateMessageCloseAction"];

  return v12;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = PSUICellularUpdateStateMessageTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"CellularUpdateStateMessageTitleKey"];
  v6 = [specifierCopy propertyForKey:@"CellularUpdateStateMessageContextKey"];
  v9 = 0;
  v7 = [specifierCopy propertyForKey:@"PSUICellularUpdateStateMessageCloseAction"];
  [v7 getValue:&v9];

  v8 = [specifierCopy propertyForKey:@"PSUICellularUpdateStateMessageCloseTarget"];

  [(PSUICellularUpdateStateMessageTableCell *)self _setupView:v5 Context:v6 target:v8 CloseAction:v9];
  [(PSUICellularUpdateStateMessageTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)view Context:(id)context target:(id)target CloseAction:(SEL)action
{
  v87[12] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  contextCopy = context;
  targetCopy = target;
  title = self->_title;
  if (!title)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    v15 = self->_title;
    self->_title = v14;

    [(UILabel *)self->_title setNumberOfLines:0];
    [(UILabel *)self->_title setText:viewCopy];
    v16 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [(UILabel *)self->_title setFont:v16];

    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [contentView addSubview:self->_title];

    title = self->_title;
  }

  [(UILabel *)title setText:viewCopy];
  label = self->_label;
  if (!label)
  {
    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    v20 = self->_label;
    self->_label = v19;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:contextCopy];
    v21 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)self->_label setFont:v21];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [contentView2 addSubview:self->_label];

    label = self->_label;
  }

  v86 = viewCopy;
  [(UILabel *)label setText:contextCopy];
  closeButton = self->_closeButton;
  v85 = contextCopy;
  if (!closeButton)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v25 = [v24 imageWithRenderingMode:2];

    v26 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:10.0];
    v27 = [v25 imageByApplyingSymbolConfiguration:v26];
    v28 = [MEMORY[0x277D75220] systemButtonWithImage:v27 target:targetCopy action:action];
    v29 = self->_closeButton;
    self->_closeButton = v28;

    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UIButton *)self->_closeButton setTintColor:tertiaryLabelColor];

    imageView = [(UIButton *)self->_closeButton imageView];
    [imageView setContentMode:4];

    contentView3 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [contentView3 addSubview:self->_closeButton];

    [(UIButton *)self->_closeButton setContentHorizontalAlignment:2];
    [(UIButton *)self->_closeButton setContentVerticalAlignment:1];

    closeButton = self->_closeButton;
  }

  [(UIButton *)closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)self->_title leadingAnchor];
  contentView4 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v87[0] = v80;
  topAnchor = [(UILabel *)self->_title topAnchor];
  contentView5 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v87[1] = v76;
  leadingAnchor3 = [(UILabel *)self->_title leadingAnchor];
  contentView6 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
  v71 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v87[2] = v71;
  trailingAnchor = [(UILabel *)self->_title trailingAnchor];
  contentView7 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v87[3] = v66;
  topAnchor3 = [(UILabel *)self->_label topAnchor];
  bottomAnchor = [(UILabel *)self->_title bottomAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:7.0];
  v87[4] = v62;
  bottomAnchor2 = [(UILabel *)self->_label bottomAnchor];
  contentView8 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  v57 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];
  v87[5] = v57;
  leadingAnchor5 = [(UILabel *)self->_label leadingAnchor];
  contentView9 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  layoutMarginsGuide4 = [contentView9 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide4 leadingAnchor];
  v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v87[6] = v52;
  trailingAnchor3 = [(UILabel *)self->_label trailingAnchor];
  contentView10 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  layoutMarginsGuide5 = [contentView10 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v87[7] = v47;
  topAnchor4 = [(UIButton *)self->_closeButton topAnchor];
  contentView11 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  topAnchor5 = [contentView11 topAnchor];
  v33 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:10.0];
  v87[8] = v33;
  [(UIButton *)self->_closeButton trailingAnchor];
  v34 = v60 = targetCopy;
  contentView12 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  trailingAnchor5 = [contentView12 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
  v87[9] = v37;
  widthAnchor = [(UIButton *)self->_closeButton widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:44.0];
  v87[10] = v39;
  heightAnchor = [(UIButton *)self->_closeButton heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:44.0];
  v87[11] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:12];
  [v65 activateConstraints:v42];

  v43 = *MEMORY[0x277D85DE8];
}

@end