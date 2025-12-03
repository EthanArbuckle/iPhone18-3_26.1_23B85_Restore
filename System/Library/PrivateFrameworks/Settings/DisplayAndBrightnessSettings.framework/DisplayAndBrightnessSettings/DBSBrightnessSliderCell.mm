@interface DBSBrightnessSliderCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (DBSBrightnessSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation DBSBrightnessSliderCell

- (DBSBrightnessSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = DBSBrightnessSliderCell;
  v5 = [(PSControlTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_opt_new();
    controlAndWarningLayoutConstraints = v5->_controlAndWarningLayoutConstraints;
    v5->_controlAndWarningLayoutConstraints = v6;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v99[4] = *MEMORY[0x277D85DE8];
  v97.receiver = self;
  v97.super_class = DBSBrightnessSliderCell;
  [(PSSliderTableCell *)&v97 refreshCellContentsWithSpecifier:specifier];
  v4 = MEMORY[0x277CCAAD0];
  controlAndWarningLayoutConstraints = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
  [v4 deactivateConstraints:controlAndWarningLayoutConstraints];

  controlAndWarningLayoutConstraints2 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
  [controlAndWarningLayoutConstraints2 removeAllObjects];

  warningContainerView = [(DBSBrightnessSliderCell *)self warningContainerView];
  [warningContainerView removeFromSuperview];

  [(DBSBrightnessSliderCell *)self setWarningContainerView:0];
  [(DBSBrightnessSliderCell *)self setReferenceWarningLabel:0];
  specifier = [(PSTableCell *)self specifier];
  v9 = [specifier objectForKeyedSubscript:@"brightnessLimited"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    control6 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:control6];
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [v11 setTintColor:systemYellowColor];

    textLabel = [(DBSBrightnessSliderCell *)self textLabel];
    font = [textLabel font];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    contentView5 = font;
    [v15 setFont:font];
    v16 = DBS_LocalizedStringForDisplays(@"REFERENCE_WARNING");
    [v15 setText:v16];

    appearance = [MEMORY[0x277D3FA48] appearance];
    altTextColor = [appearance altTextColor];
    v19 = [(DBSBrightnessSliderCell *)self _accessibilityHigherContrastTintColorForColor:altTextColor];
    [v15 setTextColor:v19];

    [v15 setNumberOfLines:0];
    [v15 setLineBreakMode:0];
    v20 = objc_opt_new();
    [v20 addSubview:v11];
    [v20 addSubview:v15];
    contentView = [(DBSBrightnessSliderCell *)self contentView];
    [contentView addSubview:v20];

    control = [(PSControlTableCell *)self control];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [control setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    controlAndWarningLayoutConstraints3 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    v24 = MEMORY[0x277CCAAD0];
    v25 = _NSDictionaryOfVariableBindings(&cfstr_Warningsymboli.isa, v11, v15, 0);
    v26 = [v24 constraintsWithVisualFormat:@"H:|-0-[warningSymbolImageView]-10-[referenceWarningLabel]-0-|" options:0 metrics:0 views:v25];
    [controlAndWarningLayoutConstraints3 addObjectsFromArray:v26];

    controlAndWarningLayoutConstraints4 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    v28 = MEMORY[0x277CCAAD0];
    v89 = v15;
    v29 = _NSDictionaryOfVariableBindings(&cfstr_Referencewarni.isa, v15, 0);
    v30 = [v28 constraintsWithVisualFormat:@"V:|-0-[referenceWarningLabel]-0-|" options:0 metrics:0 views:v29];
    [controlAndWarningLayoutConstraints4 addObjectsFromArray:v30];

    controlAndWarningLayoutConstraints5 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    v32 = MEMORY[0x277CCAAD0];
    v33 = _NSDictionaryOfVariableBindings(&cfstr_ControlWarning.isa, control, v20, 0);
    v34 = [v32 constraintsWithVisualFormat:@"V:|-8-[control]-0-[warningContainerView]-8-|" options:0 metrics:0 views:v33];
    [controlAndWarningLayoutConstraints5 addObjectsFromArray:v34];

    controlAndWarningLayoutConstraints6 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    v36 = MEMORY[0x277CCAAD0];
    v93 = control;
    v87 = v20;
    v37 = _NSDictionaryOfVariableBindings(&cfstr_Warningcontain.isa, v20, control, 0);
    v38 = [v36 constraintsWithVisualFormat:@"H:[warningContainerView(<=control)]" options:0 metrics:0 views:v37];
    [controlAndWarningLayoutConstraints6 addObjectsFromArray:v38];

    controlAndWarningLayoutConstraints7 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    control2 = [(PSControlTableCell *)self control];
    leadingAnchor = [control2 leadingAnchor];
    contentView2 = [(DBSBrightnessSliderCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v99[0] = v75;
    contentView3 = [(DBSBrightnessSliderCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    control3 = [(PSControlTableCell *)self control];
    trailingAnchor2 = [control3 trailingAnchor];
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v99[1] = v68;
    contentView4 = [(DBSBrightnessSliderCell *)self contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    centerXAnchor = [layoutMarginsGuide3 centerXAnchor];
    centerXAnchor2 = [v20 centerXAnchor];
    v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v99[2] = v43;
    centerYAnchor = [v15 centerYAnchor];
    v95 = v11;
    centerYAnchor2 = [v11 centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v99[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:4];
    [controlAndWarningLayoutConstraints7 addObjectsFromArray:v47];

    v48 = MEMORY[0x277CCAAD0];
    controlAndWarningLayoutConstraints8 = [(DBSBrightnessSliderCell *)self controlAndWarningLayoutConstraints];
    v50 = v48;
    v51 = v89;
    [v50 activateConstraints:controlAndWarningLayoutConstraints8];

    [(DBSBrightnessSliderCell *)self setReferenceWarningLabel:v89];
    selfCopy = self;
    v53 = v87;
    [(DBSBrightnessSliderCell *)selfCopy setWarningContainerView:v87];
  }

  else
  {
    control4 = [(PSControlTableCell *)self control];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    control5 = [(PSControlTableCell *)self control];
    [control5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v84 = MEMORY[0x277CCAAD0];
    control6 = [(PSControlTableCell *)self control];
    leadingAnchor3 = [control6 leadingAnchor];
    contentView5 = [(DBSBrightnessSliderCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    v95 = leadingAnchor3;
    v93 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v98[0] = v93;
    contentView6 = [(DBSBrightnessSliderCell *)self contentView];
    layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide5 trailingAnchor];
    control7 = [(PSControlTableCell *)self control];
    trailingAnchor4 = [control7 trailingAnchor];
    v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v98[1] = v76;
    control8 = [(PSControlTableCell *)self control];
    topAnchor = [control8 topAnchor];
    contentView7 = [(DBSBrightnessSliderCell *)self contentView];
    topAnchor2 = [contentView7 topAnchor];
    v61 = [topAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v98[2] = v61;
    contentView8 = [(DBSBrightnessSliderCell *)self contentView];
    bottomAnchor = [contentView8 bottomAnchor];
    control9 = [(PSControlTableCell *)self control];
    bottomAnchor2 = [control9 bottomAnchor];
    v66 = [bottomAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v98[3] = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:4];
    [v84 activateConstraints:v67];

    v53 = leadingAnchor4;
    v51 = layoutMarginsGuide4;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v14.receiver = self;
  v14.super_class = DBSBrightnessSliderCell;
  [(DBSBrightnessSliderCell *)&v14 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  specifier = [(PSTableCell *)self specifier];
  v9 = [specifier objectForKeyedSubscript:@"brightnessLimited"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    [(UILabel *)self->_referenceWarningLabel intrinsicContentSize];
    v7 = v7 + v11 + 16.0;
  }

  v12 = v5;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

@end