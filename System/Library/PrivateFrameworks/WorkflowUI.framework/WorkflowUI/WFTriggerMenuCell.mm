@interface WFTriggerMenuCell
- (WFTriggerMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)titleFont;
- (void)setMenu:(id)menu;
@end

@implementation WFTriggerMenuCell

- (void)setMenu:(id)menu
{
  v16[2] = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  selectedElements = [menuCopy selectedElements];
  firstObject = [selectedElements firstObject];
  title = [firstObject title];

  _popupMenuButton = [(WFTriggerMenuCell *)self _popupMenuButton];
  [_popupMenuButton setMenu:menuCopy];

  if (title)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v15[0] = *MEMORY[0x277D740A8];
    titleFont = [(WFTriggerMenuCell *)self titleFont];
    v16[0] = titleFont;
    v15[1] = *MEMORY[0x277D740C0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v16[1] = secondaryLabelColor;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13 = [v9 initWithString:title attributes:v12];

    _popupMenuButton2 = [(WFTriggerMenuCell *)self _popupMenuButton];
    [_popupMenuButton2 setAttributedTitle:v13 forState:0];
  }
}

- (id)titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = *MEMORY[0x277D76918];
  traitCollection = [(WFTriggerMenuCell *)self traitCollection];
  v5 = [v2 preferredFontForTextStyle:v3 compatibleWithTraitCollection:traitCollection];

  fontDescriptor = [v5 fontDescriptor];
  v7 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (WFTriggerMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[1] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFTriggerMenuCell;
  v4 = [(WFTriggerMenuCell *)&v41 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration setTitleLineBreakMode:4];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

    [plainButtonConfiguration contentInsets];
    v8 = v7;
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:{v8, 0.0}];
    v40 = plainButtonConfiguration;
    [plainButtonConfiguration setTitleAlignment:3];
    v9 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968]];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v9];

    v10 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    v39 = [MEMORY[0x277D750C8] actionWithTitle:&stru_2883A0E78 image:0 identifier:0 handler:&__block_literal_global_2985];
    v11 = MEMORY[0x277D75710];
    v43[0] = v39;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v13 = [v11 menuWithChildren:v12];
    [v10 setMenu:v13];

    [v10 setShowsMenuAsPrimaryAction:1];
    [v10 setChangesSelectionAsPrimaryAction:1];
    [v10 setContentHorizontalAlignment:2];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    subtitleLabel = [v10 subtitleLabel];
    [subtitleLabel setFont:v14];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    subtitleLabel2 = [v10 subtitleLabel];
    [subtitleLabel2 setTextColor:secondaryLabelColor2];

    [(WFTriggerMenuCell *)v4 _setPopupMenuButton:v10];
    contentView = [(WFTriggerMenuCell *)v4 contentView];
    _popupMenuButton = [(WFTriggerMenuCell *)v4 _popupMenuButton];
    [contentView addSubview:_popupMenuButton];

    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [v10 topAnchor];
    topAnchor2 = [(WFTriggerMenuCell *)v4 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[0] = v36;
    leadingAnchor = [v10 leadingAnchor];
    textLabel = [(WFTriggerMenuCell *)v4 textLabel];
    trailingAnchor = [textLabel trailingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:8.0];
    v42[1] = v31;
    bottomAnchor = [v10 bottomAnchor];
    bottomAnchor2 = [(WFTriggerMenuCell *)v4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[2] = v21;
    trailingAnchor2 = [v10 trailingAnchor];
    contentView2 = [(WFTriggerMenuCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v26 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v42[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v32 activateConstraints:v27];

    v28 = v4;
  }

  return v4;
}

@end