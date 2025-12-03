@interface SRAuthorizationCategoryDetailCell
- (SRAuthorizationCategoryDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier titleFont:(id)font bodyFont:(id)bodyFont fontColor:(id)color OBKStyle:(BOOL)kStyle;
- (id)addBulletStackViewForTitleLabel:(id)label count:(int64_t)count;
- (id)dynamicHeightLabel;
- (id)stackViewForSubviews:(id)subviews spacing:(double)spacing;
- (void)dealloc;
- (void)setNumberOfCollectedLabels:(int64_t)labels;
- (void)setNumberOfNotCollectedLabels:(int64_t)labels;
- (void)setNumberOfWhatIsSharedLabels:(int64_t)labels;
- (void)setNumberOfWhenSharedLabels:(int64_t)labels;
- (void)setShowAppUsage:(BOOL)usage;
@end

@implementation SRAuthorizationCategoryDetailCell

- (SRAuthorizationCategoryDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier titleFont:(id)font bodyFont:(id)bodyFont fontColor:(id)color OBKStyle:(BOOL)kStyle
{
  v29[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SRAuthorizationCategoryDetailCell;
  v12 = [(SRAuthorizationCategoryDetailCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  v13 = v12;
  if (v12)
  {
    [(SRAuthorizationCategoryDetailCell *)v12 setSelectionStyle:0];
    v13->_titleFont = font;
    v13->_bodyFont = bodyFont;
    v13->_fontColor = color;
    v13->_OBKStyle = kStyle;
    v13->_categorySubTitleLabel = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    -[UILabel setFont:](v13->_categorySubTitleLabel, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D76968]), "fontDescriptorWithSymbolicTraits:", 2), 0.0}]);
    -[UILabel setTextColor:](v13->_categorySubTitleLabel, "setTextColor:", [MEMORY[0x277D75348] secondaryLabelColor]);
    v13->_categoryTitleLabel = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    -[UILabel setFont:](v13->_categoryTitleLabel, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D769A8]), "fontDescriptorWithSymbolicTraits:", 2), 0.0}]);
    dynamicHeightLabel = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_appUsageTitleLabel = dynamicHeightLabel;
    [(UILabel *)dynamicHeightLabel setFont:v13->_titleFont];
    dynamicHeightLabel2 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_appUsageBodyLabel = dynamicHeightLabel2;
    [(UILabel *)dynamicHeightLabel2 setFont:v13->_bodyFont];
    dynamicHeightLabel3 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_collectedTitleLabel = dynamicHeightLabel3;
    [(UILabel *)dynamicHeightLabel3 setFont:v13->_titleFont];
    dynamicHeightLabel4 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_notCollectedTitleLabel = dynamicHeightLabel4;
    [(UILabel *)dynamicHeightLabel4 setFont:v13->_titleFont];
    dynamicHeightLabel5 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_whenSharedTitleLabel = dynamicHeightLabel5;
    [(UILabel *)dynamicHeightLabel5 setFont:v13->_titleFont];
    dynamicHeightLabel6 = [(SRAuthorizationCategoryDetailCell *)v13 dynamicHeightLabel];
    v13->_whatIsSharedTitleLabel = dynamicHeightLabel6;
    [(UILabel *)dynamicHeightLabel6 setFont:v13->_titleFont];
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

- (id)stackViewForSubviews:(id)subviews spacing:(double)spacing
{
  v5 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:subviews];
  [v5 setAxis:1];
  [v5 setSpacing:spacing];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v5;
}

- (id)addBulletStackViewForTitleLabel:(id)label count:(int64_t)count
{
  countCopy = count;
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:countCopy + 1];
  [v8 addObject:label];
  if (countCopy >= 1)
  {
    v9 = *MEMORY[0x277D740A8];
    do
    {
      if ([(SRAuthorizationCategoryDetailCell *)self OBKStyle])
      {
        skui_bulletImage = [MEMORY[0x277D755B8] skui_bulletImage];
        dynamicHeightLabel = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:skui_bulletImage];
        [dynamicHeightLabel setContentMode:1];
        widthAnchor = [dynamicHeightLabel widthAnchor];
        [skui_bulletImage size];
        widthAnchor2 = widthAnchor;
      }

      else
      {
        dynamicHeightLabel = [(SRAuthorizationCategoryDetailCell *)self dynamicHeightLabel];
        [dynamicHeightLabel setText:@"•"];
        [dynamicHeightLabel setFont:{-[SRAuthorizationCategoryDetailCell bodyFont](self, "bodyFont")}];
        text = [dynamicHeightLabel text];
        v29 = v9;
        v30[0] = [dynamicHeightLabel font];
        [text sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1)}];
        v17 = v16;
        widthAnchor2 = [dynamicHeightLabel widthAnchor];
        v13 = v17;
      }

      [objc_msgSend(widthAnchor2 constraintEqualToConstant:{v13), "setActive:", 1}];
      dynamicHeightLabel2 = [(SRAuthorizationCategoryDetailCell *)self dynamicHeightLabel];
      [dynamicHeightLabel2 setFont:{-[SRAuthorizationCategoryDetailCell bodyFont](self, "bodyFont")}];
      [v7 addObject:dynamicHeightLabel2];
      v19 = objc_alloc(MEMORY[0x277D75A68]);
      v28[0] = dynamicHeightLabel;
      v28[1] = dynamicHeightLabel2;
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
      --countCopy;
    }

    while (countCopy);
  }

  oBKStyle = [(SRAuthorizationCategoryDetailCell *)self OBKStyle];
  v23 = 10.0;
  v24 = 16.0;
  if (oBKStyle)
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

- (void)setShowAppUsage:(BOOL)usage
{
  usageCopy = usage;
  self->_showAppUsage = usage;
  appUsageStack = [(SRAuthorizationCategoryDetailCell *)self appUsageStack];

  [(UIStackView *)appUsageStack setHidden:!usageCopy];
}

- (void)setNumberOfCollectedLabels:(int64_t)labels
{
  self->_numberOfCollectedLabels = labels;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self collectedTitleLabel] count:labels];

  [(SRAuthorizationCategoryDetailCell *)self setCollectedLabels:v4];
}

- (void)setNumberOfNotCollectedLabels:(int64_t)labels
{
  self->_numberOfNotCollectedLabels = labels;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self notCollectedTitleLabel] count:labels];

  [(SRAuthorizationCategoryDetailCell *)self setNotCollectedLabels:v4];
}

- (void)setNumberOfWhenSharedLabels:(int64_t)labels
{
  self->_numberOfWhenSharedLabels = labels;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self whenSharedTitleLabel] count:labels];

  [(SRAuthorizationCategoryDetailCell *)self setWhenSharedLabels:v4];
}

- (void)setNumberOfWhatIsSharedLabels:(int64_t)labels
{
  self->_numberOfWhatIsSharedLabels = labels;
  v4 = [(SRAuthorizationCategoryDetailCell *)self addBulletStackViewForTitleLabel:[(SRAuthorizationCategoryDetailCell *)self whatIsSharedTitleLabel] count:labels];

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