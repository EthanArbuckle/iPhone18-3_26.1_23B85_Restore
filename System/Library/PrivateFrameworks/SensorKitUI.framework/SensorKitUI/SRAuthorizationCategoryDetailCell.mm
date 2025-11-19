@interface SRAuthorizationCategoryDetailCell
- (SRAuthorizationCategoryDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 titleFont:(id)a5 bodyFont:(id)a6 fontColor:(id)a7 OBKStyle:(BOOL)a8;
- (id)addBulletStackViewForTitleLabel:(id)a3 count:(int64_t)a4;
- (id)dynamicHeightLabel;
- (id)stackViewForSubviews:(id)a3 spacing:(double)a4;
- (void)dealloc;
- (void)setNumberOfCollectedLabels:(int64_t)a3;
- (void)setNumberOfNotCollectedLabels:(int64_t)a3;
- (void)setNumberOfWhatIsSharedLabels:(int64_t)a3;
- (void)setNumberOfWhenSharedLabels:(int64_t)a3;
- (void)setShowAppUsage:(BOOL)a3;
@end

@implementation SRAuthorizationCategoryDetailCell

- (SRAuthorizationCategoryDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 titleFont:(id)a5 bodyFont:(id)a6 fontColor:(id)a7 OBKStyle:(BOOL)a8
{
  v29[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SRAuthorizationCategoryDetailCell;
  v12 = [(SRAuthorizationCategoryDetailCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  v13 = v12;
  if (v12)
  {
    [(SRAuthorizationCategoryDetailCell *)v12 setSelectionStyle:0];
    v13->_titleFont = a5;
    v13->_bodyFont = a6;
    v13->_fontColor = a7;
    v13->_OBKStyle = a8;
    v13->_categorySubTitleLabel = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    -[UILabel setFont:](v13->_categorySubTitleLabel, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D76968]), "fontDescriptorWithSymbolicTraits:", 2), 0.0}]);
    -[UILabel setTextColor:](v13->_categorySubTitleLabel, "setTextColor:", [MEMORY[0x277D75348] secondaryLabelColor]);
    v13->_categoryTitleLabel = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    -[UILabel setFont:](v13->_categoryTitleLabel, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D769A8]), "fontDescriptorWithSymbolicTraits:", 2), 0.0}]);
    v14 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_appUsageTitleLabel = v14;
    [(UILabel *)v14 setFont:v13->_titleFont];
    v15 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_appUsageBodyLabel = v15;
    [(UILabel *)v15 setFont:v13->_bodyFont];
    v16 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_collectedTitleLabel = v16;
    [(UILabel *)v16 setFont:v13->_titleFont];
    v17 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_notCollectedTitleLabel = v17;
    [(UILabel *)v17 setFont:v13->_titleFont];
    v18 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_whenSharedTitleLabel = v18;
    [(UILabel *)v18 setFont:v13->_titleFont];
    v19 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_whatIsSharedTitleLabel = v19;
    [(UILabel *)v19 setFont:v13->_titleFont];
    v29[0] = v13->_appUsageTitleLabel;
    v29[1] = v13->_appUsageBodyLabel;
    v20 = -[SRAuthorizationCategoryDetailCell stackViewForSubviews:spacing:](v13, "stackViewForSubviews:spacing:", [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2], 6.0);
    v13->_appUsageStack = v20;
    v28 = v20;
    v13->_stacks = -[SRAuthorizationCategoryDetailCell stackViewForSubviews:spacing:](v13, "stackViewForSubviews:spacing:", [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1], 22.0);
    if (v13->_OBKStyle)
    {
      v27[0] = v13->_categorySubTitleLabel;
      v27[1] = v13->_categoryTitleLabel;
      v21 = -[SRAuthorizationCategoryDetailCell stackViewForSubviews:spacing:](v13, "stackViewForSubviews:spacing:", [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2], 0.0);
      v13->_categoryStack = v21;
      [(UIStackView *)v13->_stacks insertArrangedSubview:v21 atIndex:0];
      [(UIStackView *)v13->_stacks setCustomSpacing:v13->_categoryStack afterView:15.0];
    }

    [-[SRAuthorizationCategoryDetailCell contentView](v13 "contentView")];
    v22 = MEMORY[0x277CCAAD0];
    v26[0] = [-[UIStackView topAnchor](v13->_stacks "topAnchor")];
    v26[1] = [-[UIStackView leadingAnchor](v13->_stacks "leadingAnchor")];
    v26[2] = [-[UIStackView trailingAnchor](v13->_stacks "trailingAnchor")];
    v26[3] = [-[UIStackView bottomAnchor](v13->_stacks "bottomAnchor")];
    [v22 activateConstraints:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 4)}];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dealloc
{
  self->_categorySubTitleLabel = 0;

  self->_categoryTitleLabel = 0;
  self->_appUsageTitleLabel = 0;

  self->_appUsageBodyLabel = 0;
  self->_collectedTitleLabel = 0;

  self->_notCollectedTitleLabel = 0;
  self->_whenSharedTitleLabel = 0;

  [(SRAuthorizationCategoryDetailCell *)self setCollectedLabels:0];
  [(SRAuthorizationCategoryDetailCell *)self setNotCollectedLabels:0];
  [(SRAuthorizationCategoryDetailCell *)self setWhenSharedLabels:0];
  [(SRAuthorizationCategoryDetailCell *)self setWhatIsSharedLabels:0];
  [(SRAuthorizationCategoryDetailCell *)self setCategoryStack:0];
  [(SRAuthorizationCategoryDetailCell *)self setAppUsageStack:0];
  [(SRAuthorizationCategoryDetailCell *)self setStacks:0];
  [(SRAuthorizationCategoryDetailCell *)self setTitleFont:0];
  [(SRAuthorizationCategoryDetailCell *)self setBodyFont:0];
  [(SRAuthorizationCategoryDetailCell *)self setFontColor:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationCategoryDetailCell;
  [(SRAuthorizationCategoryDetailCell *)&v3 dealloc];
}

- (id)dynamicHeightLabel
{
  v3 = objc_opt_new();
  [v3 setLineBreakMode:0];
  [v3 setNumberOfLines:0];
  [v3 setTextColor:{-[SRAuthorizationCategoryDetailCell fontColor](self, "fontColor")}];
  return v3;
}

- (id)stackViewForSubviews:(id)a3 spacing:(double)a4
{
  v5 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:a3];
  [v5 setAxis:1];
  [v5 setSpacing:a4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v5;
}

- (id)addBulletStackViewForTitleLabel:(id)a3 count:(int64_t)a4
{
  v4 = a4;
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4 + 1];
  [v8 addObject:a3];
  if (v4 >= 1)
  {
    v9 = *MEMORY[0x277D740A8];
    do
    {
      if ([(SRAuthorizationCategoryDetailCell *)self OBKStyle])
      {
        v10 = [MEMORY[0x277D755B8] skui_bulletImage];
        v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
        [v11 setContentMode:1];
        v12 = [v11 widthAnchor];
        [v10 size];
        v14 = v12;
      }

      else
      {
        v11 = [(SRAuthorizationCategoryDetailCell *)self dynamicHeightLabel];
        [v11 setText:@"•"];
        [v11 setFont:{-[SRAuthorizationCategoryDetailCell bodyFont](self, "bodyFont")}];
        v15 = [v11 text];
        v29 = v9;
        v30[0] = [v11 font];
        [v15 sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1)}];
        v17 = v16;
        v14 = [v11 widthAnchor];
        v13 = v17;
      }

      [objc_msgSend(v14 constraintEqualToConstant:{v13), "setActive:", 1}];
      v18 = [(SRAuthorizationCategoryDetailCell *)self dynamicHeightLabel];
      [v18 setFont:{-[SRAuthorizationCategoryDetailCell bodyFont](self, "bodyFont")}];
      [v7 addObject:v18];
      v19 = objc_alloc(MEMORY[0x277D75A68]);
      v28[0] = v11;
      v28[1] = v18;
      v20 = [v19 initWithArrangedSubviews:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v28, 2)}];
      [v20 layoutMargins];
      [v20 setLayoutMargins:?];
      [v20 setLayoutMarginsRelativeArrangement:1];
      [v20 setAxis:0];
      if ([(SRAuthorizationCategoryDetailCell *)self OBKStyle])
      {
        v21 = 14.0;
      }

      else
      {
        v21 = 6.0;
      }

      [v20 setSpacing:v21];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (![(SRAuthorizationCategoryDetailCell *)self OBKStyle])
      {
        [v20 setAlignment:2];
      }

      [v8 addObject:v20];
      --v4;
    }

    while (v4);
  }

  v22 = [(SRAuthorizationCategoryDetailCell *)self OBKStyle];
  v23 = 10.0;
  v24 = 16.0;
  if (v22)
  {
    v23 = 16.0;
  }

  v25 = [(SRAuthorizationCategoryDetailCell *)self stackViewForSubviews:v8 spacing:v23];
  if (![(SRAuthorizationCategoryDetailCell *)self OBKStyle])
  {
    v24 = 12.0;
  }

  [v25 setCustomSpacing:objc_msgSend(objc_msgSend(v25 afterView:{"subviews"), "firstObject"), v24}];
  [v25 setShouldGroupAccessibilityChildren:1];
  [(UIStackView *)[(SRAuthorizationCategoryDetailCell *)self stacks] addArrangedSubview:v25];
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setShowAppUsage:(BOOL)a3
{
  v3 = a3;
  self->_showAppUsage = a3;
  v4 = [(SRAuthorizationCategoryDetailCell *)self appUsageStack];

  [(UIStackView *)v4 setHidden:!v3];
}

- (void)setNumberOfCollectedLabels:(int64_t)a3
{
  self->_numberOfCollectedLabels = a3;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self collectedTitleLabel] count:a3];

  [(SRAuthorizationCategoryDetailCell *)self setCollectedLabels:v4];
}

- (void)setNumberOfNotCollectedLabels:(int64_t)a3
{
  self->_numberOfNotCollectedLabels = a3;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self notCollectedTitleLabel] count:a3];

  [(SRAuthorizationCategoryDetailCell *)self setNotCollectedLabels:v4];
}

- (void)setNumberOfWhenSharedLabels:(int64_t)a3
{
  self->_numberOfWhenSharedLabels = a3;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self whenSharedTitleLabel] count:a3];

  [(SRAuthorizationCategoryDetailCell *)self setWhenSharedLabels:v4];
}

- (void)setNumberOfWhatIsSharedLabels:(int64_t)a3
{
  self->_numberOfWhatIsSharedLabels = a3;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self whatIsSharedTitleLabel] count:a3];

  [(SRAuthorizationCategoryDetailCell *)self setWhatIsSharedLabels:v4];
}

uint64_t __113__SRAuthorizationCategoryDetailCell_categoryDetailCellForAuthGroup_bundle_titleFont_bodyFont_textColor_OBKStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:?];

  return [a2 setText:v3];
}

uint64_t __113__SRAuthorizationCategoryDetailCell_categoryDetailCellForAuthGroup_bundle_titleFont_bodyFont_textColor_OBKStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:?];

  return [a2 setText:v3];
}

uint64_t __113__SRAuthorizationCategoryDetailCell_categoryDetailCellForAuthGroup_bundle_titleFont_bodyFont_textColor_OBKStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:?];

  return [a2 setText:v3];
}

uint64_t __113__SRAuthorizationCategoryDetailCell_categoryDetailCellForAuthGroup_bundle_titleFont_bodyFont_textColor_OBKStyle___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:?];

  return [a2 setText:v3];
}

@end