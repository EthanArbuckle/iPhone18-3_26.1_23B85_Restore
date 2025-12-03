@interface STSingleLineButtonHeaderView
- (STSingleLineButtonHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide;
- (void)reloadFromSpecifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation STSingleLineButtonHeaderView

- (STSingleLineButtonHeaderView)initWithSpecifier:(id)specifier useContentLayoutGuide:(BOOL)guide
{
  guideCopy = guide;
  v43[4] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = STSingleLineButtonHeaderView;
  specifierCopy = specifier;
  v6 = [(STSingleLineHeaderView *)&v42 initWithSpecifier:specifierCopy useContentLayoutGuide:guideCopy];
  v7 = [MEMORY[0x277D75220] buttonWithType:1];
  button = v6->_button;
  v6->_button = v7;

  [(UIButton *)v6->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = v6->_button;
  target = [specifierCopy target];
  buttonAction = [specifierCopy buttonAction];

  [(UIButton *)v9 addTarget:target action:buttonAction forEvents:0x2000];
  titleLabel = [(UIButton *)v6->_button titleLabel];
  titleLabel2 = [(STSingleLineHeaderView *)v6 titleLabel];
  font = [titleLabel2 font];
  [titleLabel setFont:font];

  [titleLabel setNumberOfLines:2];
  [titleLabel setLineBreakMode:0];
  [titleLabel setTextAlignment:{2 * (-[STSingleLineButtonHeaderView effectiveUserInterfaceLayoutDirection](v6, "effectiveUserInterfaceLayoutDirection") != 1)}];
  if (guideCopy)
  {
    contentView = [(STSingleLineButtonHeaderView *)v6 contentView];
    [contentView addSubview:v6->_button];
    v16 = contentView;
    contentLayoutGuide = [(STTableViewHeaderFooterView *)v6 contentLayoutGuide];
    trailingAnchor = [contentLayoutGuide trailingAnchor];
  }

  else
  {
    v19 = v6;
    [(STSingleLineButtonHeaderView *)v19 addSubview:v6->_button];
    v16 = v19;
    trailingAnchor = [(STSingleLineButtonHeaderView *)v16 trailingAnchor];
  }

  v36 = trailingAnchor;
  v39 = v16;
  trailingAnchor2 = [titleLabel trailingAnchor];
  v21 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];

  LODWORD(v22) = 1144750080;
  v41 = v21;
  [v21 setPriority:v22];
  v35 = MEMORY[0x277CCAAD0];
  v43[0] = v21;
  topAnchor = [titleLabel topAnchor];
  topAnchor2 = [(STSingleLineButtonHeaderView *)v16 topAnchor];
  v23 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v43[1] = v23;
  lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  lastBaselineAnchor2 = [titleLabel2 lastBaselineAnchor];
  v26 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v43[2] = v26;
  leadingAnchor = [titleLabel leadingAnchor];
  v28 = titleLabel2;
  v40 = titleLabel2;
  v29 = leadingAnchor;
  trailingAnchor3 = [v28 trailingAnchor];
  v31 = [v29 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
  v43[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [v35 activateConstraints:v32];

  [(STSingleLineButtonHeaderView *)v6 reloadFromSpecifier];
  v33 = v6;

  return v33;
}

- (void)reloadFromSpecifier
{
  v8.receiver = self;
  v8.super_class = STSingleLineButtonHeaderView;
  [(STSingleLineHeaderView *)&v8 reloadFromSpecifier];
  button = [(STSingleLineButtonHeaderView *)self button];
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__STSingleLineButtonHeaderView_reloadFromSpecifier__block_invoke;
  v6[3] = &unk_279B7CAE0;
  v6[4] = self;
  v7 = button;
  v5 = button;
  [v4 transitionWithView:v5 duration:5 options:v6 animations:0 completion:0.3];
}

void __51__STSingleLineButtonHeaderView_reloadFromSpecifier__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) specifier];
  v2 = [v8 objectForKeyedSubscript:@"ButtonHidden"];
  v3 = [v2 BOOLValue];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  [*(a1 + 40) setAlpha:v4];

  v5 = [v8 objectForKeyedSubscript:@"ButtonTag"];
  [*(a1 + 40) setTag:{objc_msgSend(v5, "integerValue")}];

  v6 = [v8 objectForKeyedSubscript:@"ButtonTitle"];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = [v6 localizedUppercaseString];

    v6 = v7;
  }

  [*(a1 + 40) setTitle:v6 forState:0];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  button = [(STSingleLineButtonHeaderView *)self button];
  specifier = [(STSingleLineHeaderView *)self specifier];
  target = [specifier target];
  [button removeTarget:target forEvents:0x2000];

  v10.receiver = self;
  v10.super_class = STSingleLineButtonHeaderView;
  [(STSingleLineHeaderView *)&v10 setSpecifier:specifierCopy];
  target2 = [specifierCopy target];
  buttonAction = [specifierCopy buttonAction];

  [button addTarget:target2 action:buttonAction forEvents:0x2000];
}

@end