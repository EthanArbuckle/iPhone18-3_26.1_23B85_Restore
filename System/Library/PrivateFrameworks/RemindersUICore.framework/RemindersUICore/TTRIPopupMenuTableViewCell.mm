@interface TTRIPopupMenuTableViewCell
- (TTRIPopupMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)buttonTitleAttributes;
- (id)titleFont;
- (void)setAccessoryTitle:(id)a3;
- (void)setPopupMenu:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation TTRIPopupMenuTableViewCell

- (id)titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = *MEMORY[0x277D76918];
  v4 = [(TTRIPopupMenuTableViewCell *)self traitCollection];
  v5 = [v2 preferredFontForTextStyle:v3 compatibleWithTraitCollection:v4];

  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (id)buttonTitleAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D740A8];
  v2 = [(TTRIPopupMenuTableViewCell *)self titleFont];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D740C0];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(TTRIPopupMenuTableViewCell *)self titleLabel];
  [v5 setText:v4];

  v6 = [(TTRIPopupMenuTableViewCell *)self titleLabel];
  [v6 sizeToFit];

  v7 = [(NUITableViewContainerCell *)self containerView];
  [v7 invalidateIntrinsicContentSize];
}

- (void)setAccessoryTitle:(id)a3
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(TTRIPopupMenuTableViewCell *)self buttonTitleAttributes];
  v10 = [v6 initWithString:v5 attributes:v7];

  v8 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [v8 setAttributedTitle:v10 forState:0];

  v9 = [(TTRIPopupMenuTableViewCell *)self accessoriesStackView];
  [v9 invalidateIntrinsicContentSize];
}

- (void)setPopupMenu:(id)a3
{
  v4 = a3;
  v5 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [v5 setMenu:v4];

  v6 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [v6 setChangesSelectionAsPrimaryAction:1];

  v7 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [v7 setHidden:0];

  v8 = [(TTRIPopupMenuTableViewCell *)self menuButton];
  [(TTRIPopupMenuTableViewCell *)self _setPopupMenuButton:v8];
}

- (TTRIPopupMenuTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TTRIPopupMenuTableViewCell;
  v4 = [(NUITableViewContainerCell *)&v24 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NUITableViewContainerCell *)v4 containerView];
    [v6 setDistribution:4];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v9 = [(TTRIPopupMenuTableViewCell *)v5 titleFont];
    [v8 setFont:v9];

    v10 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v10 setTitleAlignment:3];
    [v10 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    v11 = [MEMORY[0x277D75348] clearColor];
    v12 = [v10 background];
    [v12 setBackgroundColor:v11];

    v13 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:0];
    [v13 setShowsMenuAsPrimaryAction:1];
    [v13 setContentHorizontalAlignment:2];
    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v13 setTintColor:v14];

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
    v18 = [(TTRIPopupMenuTableViewCell *)v5 accessoriesStackView];
    [v18 setBaselineRelativeArrangement:1];

    v19 = [(NUITableViewContainerCell *)v5 containerView];
    [v19 setBaselineRelativeArrangement:1];

    LODWORD(v20) = 1148846080;
    [v13 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v20}];
    v21 = [(NUITableViewContainerCell *)v5 containerView];
    [v21 addArrangedSubview:v8];

    v22 = [(NUITableViewContainerCell *)v5 containerView];
    [v22 addArrangedSubview:v17];

    [(TTRIPopupMenuTableViewCell *)v5 setSeparatorInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v5;
}

@end