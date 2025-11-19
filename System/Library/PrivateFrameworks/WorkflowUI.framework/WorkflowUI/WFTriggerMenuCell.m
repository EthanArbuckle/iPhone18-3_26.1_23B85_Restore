@interface WFTriggerMenuCell
- (WFTriggerMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)titleFont;
- (void)setMenu:(id)a3;
@end

@implementation WFTriggerMenuCell

- (void)setMenu:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 selectedElements];
  v6 = [v5 firstObject];
  v7 = [v6 title];

  v8 = [(WFTriggerMenuCell *)self _popupMenuButton];
  [v8 setMenu:v4];

  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v15[0] = *MEMORY[0x277D740A8];
    v10 = [(WFTriggerMenuCell *)self titleFont];
    v16[0] = v10;
    v15[1] = *MEMORY[0x277D740C0];
    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13 = [v9 initWithString:v7 attributes:v12];

    v14 = [(WFTriggerMenuCell *)self _popupMenuButton];
    [v14 setAttributedTitle:v13 forState:0];
  }
}

- (id)titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = *MEMORY[0x277D76918];
  v4 = [(WFTriggerMenuCell *)self traitCollection];
  v5 = [v2 preferredFontForTextStyle:v3 compatibleWithTraitCollection:v4];

  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (WFTriggerMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFTriggerMenuCell;
  v4 = [(WFTriggerMenuCell *)&v41 initWithStyle:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v5 setTitleLineBreakMode:4];
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v5 setBaseForegroundColor:v6];

    [v5 contentInsets];
    v8 = v7;
    [v5 contentInsets];
    [v5 setContentInsets:{v8, 0.0}];
    v40 = v5;
    [v5 setTitleAlignment:3];
    v9 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968]];
    [v5 setPreferredSymbolConfigurationForImage:v9];

    v10 = [MEMORY[0x277D75220] buttonWithConfiguration:v5 primaryAction:0];
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
    v15 = [v10 subtitleLabel];
    [v15 setFont:v14];

    v16 = [MEMORY[0x277D75348] secondaryLabelColor];
    v17 = [v10 subtitleLabel];
    [v17 setTextColor:v16];

    [(WFTriggerMenuCell *)v4 _setPopupMenuButton:v10];
    v18 = [(WFTriggerMenuCell *)v4 contentView];
    v19 = [(WFTriggerMenuCell *)v4 _popupMenuButton];
    [v18 addSubview:v19];

    v32 = MEMORY[0x277CCAAD0];
    v38 = [v10 topAnchor];
    v37 = [(WFTriggerMenuCell *)v4 topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v42[0] = v36;
    v34 = [v10 leadingAnchor];
    v35 = [(WFTriggerMenuCell *)v4 textLabel];
    v33 = [v35 trailingAnchor];
    v31 = [v34 constraintEqualToAnchor:v33 constant:8.0];
    v42[1] = v31;
    v30 = [v10 bottomAnchor];
    v20 = [(WFTriggerMenuCell *)v4 bottomAnchor];
    v21 = [v30 constraintEqualToAnchor:v20];
    v42[2] = v21;
    v22 = [v10 trailingAnchor];
    v23 = [(WFTriggerMenuCell *)v4 contentView];
    v24 = [v23 layoutMarginsGuide];
    v25 = [v24 trailingAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
    v42[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v32 activateConstraints:v27];

    v28 = v4;
  }

  return v4;
}

@end