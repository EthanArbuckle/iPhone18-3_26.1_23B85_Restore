@interface PSUICellularDiagnosticsMessageTableCell
- (void)_setupView:(id)view Context:(id)context;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularDiagnosticsMessageTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSUICellularDiagnosticsMessageTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CellularDiagnosticsMessageTitleKey", v7.receiver, v7.super_class}];
  v6 = [specifierCopy propertyForKey:@"CellularDiagnosticsMessageContextKey"];

  [(PSUICellularDiagnosticsMessageTableCell *)self _setupView:v5 Context:v6];
  [(PSUICellularDiagnosticsMessageTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)view Context:(id)context
{
  if (!self->_title)
  {
    v6 = MEMORY[0x277D756B8];
    contextCopy = context;
    viewCopy = view;
    v9 = objc_alloc_init(v6);
    title = self->_title;
    self->_title = v9;

    [(UILabel *)self->_title setNumberOfLines:0];
    [(UILabel *)self->_title setText:viewCopy];

    v11 = MEMORY[0x277D74300];
    font = [(UILabel *)self->_title font];
    fontDescriptor = [font fontDescriptor];
    v14 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    font2 = [(UILabel *)self->_title font];
    [font2 pointSize];
    v60 = [v11 fontWithDescriptor:v14 size:v16 + 3.0];

    [(UILabel *)self->_title setFont:v60];
    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    [contentView addSubview:self->_title];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = self->_label;
    self->_label = v18;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:contextCopy];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    [contentView2 addSubview:self->_label];

    topAnchor = [(UILabel *)self->_title topAnchor];
    contentView3 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    [v24 setActive:1];

    centerXAnchor = [(UILabel *)self->_title centerXAnchor];
    contentView4 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v28 setActive:1];

    trailingAnchor = [(UILabel *)self->_title trailingAnchor];
    contentView5 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v33 setActive:1];

    leadingAnchor = [(UILabel *)self->_title leadingAnchor];
    contentView6 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v38 setActive:1];

    topAnchor3 = [(UILabel *)self->_label topAnchor];
    bottomAnchor = [(UILabel *)self->_title bottomAnchor];
    v41 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
    [v41 setActive:1];

    centerXAnchor3 = [(UILabel *)self->_label centerXAnchor];
    contentView7 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    centerXAnchor4 = [contentView7 centerXAnchor];
    v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v45 setActive:1];

    bottomAnchor2 = [(UILabel *)self->_label bottomAnchor];
    contentView8 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    bottomAnchor3 = [contentView8 bottomAnchor];
    v49 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];
    [v49 setActive:1];

    trailingAnchor3 = [(UILabel *)self->_label trailingAnchor];
    contentView9 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide3 trailingAnchor];
    v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v54 setActive:1];

    leadingAnchor3 = [(UILabel *)self->_label leadingAnchor];
    contentView10 = [(PSUICellularDiagnosticsMessageTableCell *)self contentView];
    layoutMarginsGuide4 = [contentView10 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v59 setActive:1];
  }
}

@end