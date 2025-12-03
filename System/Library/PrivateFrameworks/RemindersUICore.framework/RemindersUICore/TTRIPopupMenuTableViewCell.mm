@interface TTRIPopupMenuTableViewCell
- (TTRIPopupMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)buttonTitleAttributes;
- (id)titleFont;
- (void)setAccessoryTitle:(id)title;
- (void)setPopupMenu:(id)menu;
- (void)setTitle:(id)title;
@end

@implementation TTRIPopupMenuTableViewCell

- (id)titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = *MEMORY[0x277D76918];
  traitCollection = [(TTRIPopupMenuTableViewCell *)self traitCollection];
  v5 = [v2 preferredFontForTextStyle:v3 compatibleWithTraitCollection:traitCollection];

  fontDescriptor = [v5 fontDescriptor];
  v7 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (id)buttonTitleAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  titleFont = [(TTRIPopupMenuTableViewCell *)self titleFont];
  v7[0] = titleFont;
  v6[1] = *MEMORY[0x277D740C0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v7[1] = secondaryLabelColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(TTRIPopupMenuTableViewCell *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleLabel2 = [(TTRIPopupMenuTableViewCell *)self titleLabel];
  [titleLabel2 sizeToFit];

  containerView = [(NUITableViewContainerCell *)self containerView];
  [containerView invalidateIntrinsicContentSize];
}

- (void)setAccessoryTitle:(id)title
{
  v4 = MEMORY[0x277CCA898];
  titleCopy = title;
  v6 = [v4 alloc];
  buttonTitleAttributes = [(TTRIPopupMenuTableViewCell *)self buttonTitleAttributes];
  v10 = [v6 initWithString:titleCopy attributes:buttonTitleAttributes];

  menuButton = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [menuButton setAttributedTitle:v10 forState:0];

  accessoriesStackView = [(TTRIPopupMenuTableViewCell *)self accessoriesStackView];
  [accessoriesStackView invalidateIntrinsicContentSize];
}

- (void)setPopupMenu:(id)menu
{
  menuCopy = menu;
  menuButton = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [menuButton setMenu:menuCopy];

  menuButton2 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [menuButton2 setChangesSelectionAsPrimaryAction:1];

  menuButton3 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [menuButton3 setHidden:0];

  menuButton4 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [(TTRIPopupMenuTableViewCell *)self _setPopupMenuButton:menuButton4];
}

- (TTRIPopupMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TTRIPopupMenuTableViewCell;
  v4 = [(NUITableViewContainerCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    containerView = [(NUITableViewContainerCell *)v4 containerView];
    [containerView setDistribution:4];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleFont = [(TTRIPopupMenuTableViewCell *)v5 titleFont];
    [v8 setFont:titleFont];

    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration setTitleAlignment:3];
    [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    clearColor = [MEMORY[0x277D75348] clearColor];
    background = [plainButtonConfiguration background];
    [background setBackgroundColor:clearColor];

    v13 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    [v13 setShowsMenuAsPrimaryAction:1];
    [v13 setContentHorizontalAlignment:2];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v13 setTintColor:secondaryLabelColor];

    [v13 setHidden:1];
    [(TTRIPopupMenuTableViewCell *)v5 setMenuButton:v13];
    [(TTRIPopupMenuTableViewCell *)v5 setTitleLabel:v8];
    v15 = objc_alloc(MEMORY[0x277CEC638]);
    v25[0] = v13;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v17 = [v15 initWithArrangedSubviews:v16];

    [v17 setSpacing:8.0];
    [v17 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    [(TTRIPopupMenuTableViewCell *)v5 setAccessoriesStackView:v17];
    accessoriesStackView = [(TTRIPopupMenuTableViewCell *)v5 accessoriesStackView];
    [accessoriesStackView setBaselineRelativeArrangement:1];

    containerView2 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView2 setBaselineRelativeArrangement:1];

    LODWORD(v20) = 1148846080;
    [v13 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v20}];
    containerView3 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView3 addArrangedSubview:v8];

    containerView4 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView4 addArrangedSubview:v17];

    [(TTRIPopupMenuTableViewCell *)v5 setSeparatorInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v5;
}

@end