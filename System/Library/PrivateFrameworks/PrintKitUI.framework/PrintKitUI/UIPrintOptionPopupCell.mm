@interface UIPrintOptionPopupCell
- (BOOL)usingLargeTextLayout;
- (UIPrintOptionPopupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateConstraints;
- (void)setEnabled:(BOOL)enabled;
- (void)setPopupActions:(id)actions;
@end

@implementation UIPrintOptionPopupCell

- (UIPrintOptionPopupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v37[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v35.receiver = self;
  v35.super_class = UIPrintOptionPopupCell;
  v6 = [(UIPrintOptionCell *)&v35 initWithStyle:1 reuseIdentifier:identifierCopy];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v6->_textLabel;
    v6->_textLabel = v7;

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6->_textLabel setFont:v9];

    [(UILabel *)v6->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_textLabel setAdjustsFontForContentSizeCategory:1];
    contentView = [(UIPrintOptionPopupCell *)v6 contentView];
    [contentView addSubview:v6->_textLabel];

    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration setTitleLineBreakMode:4];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

    [plainButtonConfiguration contentInsets];
    v14 = v13;
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:{v14, 0.0}];
    v15 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    [(UIPrintOptionPopupCell *)v6 setPopupButton:v15];

    popupButton = [(UIPrintOptionPopupCell *)v6 popupButton];
    [popupButton setChangesSelectionAsPrimaryAction:1];

    popupButton2 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [popupButton2 setShowsMenuAsPrimaryAction:1];

    v18 = [MEMORY[0x277D750C8] actionWithTitle:&stru_2871AE610 image:0 identifier:0 handler:&__block_literal_global_1];
    v19 = MEMORY[0x277D75710];
    v37[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v21 = [v19 menuWithChildren:v20];
    popupButton3 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [popupButton3 setMenu:v21];

    popupButton4 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [popupButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    popupButton5 = [(UIPrintOptionPopupCell *)v6 popupButton];
    LODWORD(v25) = 1144750080;
    [popupButton5 setContentCompressionResistancePriority:0 forAxis:v25];

    popupButton6 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [(UIPrintOptionPopupCell *)v6 _setPopupMenuButton:popupButton6];

    contentView2 = [(UIPrintOptionPopupCell *)v6 contentView];
    popupButton7 = [(UIPrintOptionPopupCell *)v6 popupButton];
    [contentView2 addSubview:popupButton7];

    [(UIPrintOptionPopupCell *)v6 _updateConstraints];
    objc_initWeak(&location, v6);
    v36 = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__UIPrintOptionPopupCell_initWithStyle_reuseIdentifier___block_invoke_2;
    v32[3] = &unk_279A9C470;
    objc_copyWeak(&v33, &location);
    v30 = [(UIPrintOptionPopupCell *)v6 registerForTraitChanges:v29 withHandler:v32];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __56__UIPrintOptionPopupCell_initWithStyle_reuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConstraints];
}

- (BOOL)usingLargeTextLayout
{
  traitCollection = [(UIPrintOptionPopupCell *)self traitCollection];

  if (!traitCollection)
  {
    return 0;
  }

  traitCollection2 = [(UIPrintOptionPopupCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)_updateConstraints
{
  v72[7] = *MEMORY[0x277D85DE8];
  constraints = [(UIPrintOptionPopupCell *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(UIPrintOptionPopupCell *)self constraints];
    [v4 deactivateConstraints:constraints2];
  }

  usingLargeTextLayout = [(UIPrintOptionPopupCell *)self usingLargeTextLayout];
  textLabel = self->_textLabel;
  if (usingLargeTextLayout)
  {
    LODWORD(v7) = 1144750080;
    [(UILabel *)textLabel setContentCompressionResistancePriority:0 forAxis:v7];
    leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
    contentView = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v72[0] = v49;
    topAnchor = [(UILabel *)self->_textLabel topAnchor];
    contentView2 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:?];
    v72[1] = v68;
    trailingAnchor = [(UILabel *)self->_textLabel trailingAnchor];
    contentView3 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    [layoutMarginsGuide3 trailingAnchor];
    v65 = popupButton5 = trailingAnchor;
    popupButton6 = [trailingAnchor constraintEqualToAnchor:?];
    v72[2] = popupButton6;
    popupButton = [(UIPrintOptionPopupCell *)self popupButton];
    leadingAnchor3 = [popupButton leadingAnchor];
    contentView4 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    [layoutMarginsGuide4 leadingAnchor];
    v59 = contentView8 = leadingAnchor3;
    popupButton7 = [leadingAnchor3 constraintEqualToAnchor:?];
    v72[3] = popupButton7;
    popupButton2 = [(UIPrintOptionPopupCell *)self popupButton];
    trailingAnchor2 = [popupButton2 trailingAnchor];
    contentView5 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
    [layoutMarginsGuide5 trailingAnchor];
    v53 = contentView9 = trailingAnchor2;
    v52 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:?];
    v72[4] = v52;
    popupButton3 = [(UIPrintOptionPopupCell *)self popupButton];
    topAnchor3 = [popupButton3 topAnchor];
    bottomAnchor = [(UILabel *)self->_textLabel bottomAnchor];
    v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v72[5] = v13;
    popupButton4 = [(UIPrintOptionPopupCell *)self popupButton];
    bottomAnchor2 = [popupButton4 bottomAnchor];
    contentView6 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide6 bottomAnchor];
    v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v72[6] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:7];
    [(UIPrintOptionPopupCell *)self setConstraints:v20];

    contentView7 = contentView2;
    v22 = layoutMarginsGuide5;

    centerYAnchor = topAnchor;
    v24 = layoutMarginsGuide4;

    v25 = v49;
    leadingAnchor5 = leadingAnchor2;

    layoutMarginsGuide7 = layoutMarginsGuide;
    v28 = layoutMarginsGuide3;
  }

  else
  {
    LODWORD(v7) = 1148846080;
    [(UILabel *)textLabel setContentCompressionResistancePriority:0 forAxis:v7];
    leadingAnchor4 = [(UILabel *)self->_textLabel leadingAnchor];
    contentView = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide7 = [contentView layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide7 leadingAnchor];
    leadingAnchor = leadingAnchor4;
    v25 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v71[0] = v25;
    centerYAnchor = [(UILabel *)self->_textLabel centerYAnchor];
    contentView7 = [(UIPrintOptionPopupCell *)self contentView];
    layoutMarginsGuide2 = [contentView7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v68 = [centerYAnchor constraintEqualToAnchor:?];
    v71[1] = v68;
    popupButton5 = [(UIPrintOptionPopupCell *)self popupButton];
    leadingAnchor6 = [popupButton5 leadingAnchor];
    trailingAnchor3 = [(UILabel *)self->_textLabel trailingAnchor];
    contentView3 = leadingAnchor6;
    v32 = leadingAnchor6;
    v28 = trailingAnchor3;
    v65 = [v32 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:8.0];
    v71[2] = v65;
    popupButton6 = [(UIPrintOptionPopupCell *)self popupButton];
    trailingAnchor4 = [popupButton6 trailingAnchor];
    contentView8 = [(UIPrintOptionPopupCell *)self contentView];
    contentView4 = [contentView8 layoutMarginsGuide];
    trailingAnchor5 = [contentView4 trailingAnchor];
    popupButton = trailingAnchor4;
    v35 = trailingAnchor4;
    v24 = trailingAnchor5;
    v59 = [v35 constraintEqualToAnchor:trailingAnchor5];
    v71[3] = v59;
    popupButton7 = [(UIPrintOptionPopupCell *)self popupButton];
    centerYAnchor2 = [popupButton7 centerYAnchor];
    contentView9 = [(UIPrintOptionPopupCell *)self contentView];
    contentView5 = [contentView9 layoutMarginsGuide];
    centerYAnchor3 = [contentView5 centerYAnchor];
    popupButton2 = centerYAnchor2;
    v38 = centerYAnchor2;
    v22 = centerYAnchor3;
    v53 = [v38 constraintEqualToAnchor:centerYAnchor3];
    v71[4] = v53;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:5];
    [(UIPrintOptionPopupCell *)self setConstraints:?];
  }

  v39 = MEMORY[0x277CCAAD0];
  constraints3 = [(UIPrintOptionPopupCell *)self constraints];
  [v39 activateConstraints:constraints3];

  [(UILabel *)self->_textLabel setNeedsUpdateConstraints];
  popupButton8 = [(UIPrintOptionPopupCell *)self popupButton];
  [popupButton8 setNeedsUpdateConstraints];
}

- (void)setPopupActions:(id)actions
{
  v21 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  objc_storeStrong(&self->_popupActions, actions);
  if (actionsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = actionsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277D75710] menuWithTitle:&stru_2871AE610 image:0 identifier:0 options:1 children:{*(*(&v16 + 1) + 8 * v11), v16}];
          [array addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x277D75710] menuWithTitle:&stru_2871AE610 children:array];
    popupButton = [(UIPrintOptionPopupCell *)self popupButton];
    [popupButton setMenu:v13];
  }

  popupButton2 = [(UIPrintOptionPopupCell *)self popupButton];
  [(UIPrintOptionPopupCell *)self _setPopupMenuButton:popupButton2];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  popupButton = [(UIPrintOptionPopupCell *)self popupButton];
  [popupButton setEnabled:enabledCopy];

  [(UIPrintOptionPopupCell *)self setUserInteractionEnabled:enabledCopy];
}

@end