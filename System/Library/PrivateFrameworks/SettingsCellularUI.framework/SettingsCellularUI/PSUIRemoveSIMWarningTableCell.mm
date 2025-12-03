@interface PSUIRemoveSIMWarningTableCell
- (void)_setupView:(id)view;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUIRemoveSIMWarningTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSUIRemoveSIMWarningTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"RemoveSIMWarningKey", v6.receiver, v6.super_class}];

  [(PSUIRemoveSIMWarningTableCell *)self _setupView:v5];
  [(PSUIRemoveSIMWarningTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)view
{
  if (!self->_title)
  {
    v4 = MEMORY[0x277D756B8];
    viewCopy = view;
    v6 = objc_alloc_init(v4);
    title = self->_title;
    self->_title = v6;

    [(UILabel *)self->_title setNumberOfLines:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CELLULAR_PLAN_TRANSFERRED" value:&stru_287733598 table:@"Cellular"];
    [(UILabel *)self->_title setText:v9];

    v10 = MEMORY[0x277D74300];
    font = [(UILabel *)self->_title font];
    fontDescriptor = [font fontDescriptor];
    v13 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    font2 = [(UILabel *)self->_title font];
    [font2 pointSize];
    v58 = [v10 fontWithDescriptor:v13 size:?];

    [(UILabel *)self->_title setFont:v58];
    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    [contentView addSubview:self->_title];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = self->_label;
    self->_label = v16;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:viewCopy];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    [contentView2 addSubview:self->_label];

    topAnchor = [(UILabel *)self->_title topAnchor];
    contentView3 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [v22 setActive:1];

    centerXAnchor = [(UILabel *)self->_title centerXAnchor];
    contentView4 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    centerXAnchor2 = [contentView4 centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v26 setActive:1];

    trailingAnchor = [(UILabel *)self->_title trailingAnchor];
    contentView5 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v31 setActive:1];

    leadingAnchor = [(UILabel *)self->_title leadingAnchor];
    contentView6 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v36 setActive:1];

    topAnchor3 = [(UILabel *)self->_label topAnchor];
    bottomAnchor = [(UILabel *)self->_title bottomAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    [v39 setActive:1];

    centerXAnchor3 = [(UILabel *)self->_label centerXAnchor];
    contentView7 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    centerXAnchor4 = [contentView7 centerXAnchor];
    v43 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v43 setActive:1];

    bottomAnchor2 = [(UILabel *)self->_label bottomAnchor];
    contentView8 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    bottomAnchor3 = [contentView8 bottomAnchor];
    v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];
    [v47 setActive:1];

    trailingAnchor3 = [(UILabel *)self->_label trailingAnchor];
    contentView9 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide3 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v52 setActive:1];

    leadingAnchor3 = [(UILabel *)self->_label leadingAnchor];
    contentView10 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    layoutMarginsGuide4 = [contentView10 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v57 setActive:1];
  }
}

@end