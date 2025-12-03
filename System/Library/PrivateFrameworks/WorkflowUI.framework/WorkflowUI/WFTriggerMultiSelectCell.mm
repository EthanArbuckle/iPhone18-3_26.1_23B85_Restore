@interface WFTriggerMultiSelectCell
+ (id)multiSelectCellOptionConfigurationWithImage:(id)image selectedImage:(id)selectedImage title:(id)title tintColor:(id)color selected:(BOOL)selected;
+ (id)multiSelectCellOptionConfigurationWithImage:(id)image title:(id)title tintColor:(id)color selected:(BOOL)selected;
- (BOOL)isLeftViewSelected;
- (BOOL)isRightViewSelected;
- (NSArray)optionContainers;
- (NSArray)selectedCellViews;
- (WFTriggerMultiSelectCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFTriggerMultiSelectCellDelegate)delegate;
- (void)configureWithLeftGlyph:(id)glyph leftTitle:(id)title leftTintColor:(id)color rightGlyph:(id)rightGlyph rightTitle:(id)rightTitle rightTintColor:(id)tintColor;
- (void)prepareForReuse;
- (void)setLeftViewSelected:(BOOL)selected;
- (void)setMultiSelectCellOptionConfigurations:(id)configurations;
- (void)setRightViewSelected:(BOOL)selected;
- (void)setSelectedViewTintColor:(id)color;
- (void)view:(id)view didSelectOptionWithLeftViewCurrentlySelected:(BOOL)selected;
- (void)view:(id)view didSelectOptionWithRightViewCurrentlySelected:(BOOL)selected;
@end

@implementation WFTriggerMultiSelectCell

- (WFTriggerMultiSelectCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedViewTintColor:(id)color
{
  objc_storeStrong(&self->_selectedViewTintColor, color);
  colorCopy = color;
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  [containerTop setSelectedImageTintColor:colorCopy];

  containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [containerMiddle setSelectedImageTintColor:colorCopy];

  containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
  [containerBottom setSelectedImageTintColor:colorCopy];
}

- (void)configureWithLeftGlyph:(id)glyph leftTitle:(id)title leftTintColor:(id)color rightGlyph:(id)rightGlyph rightTitle:(id)rightTitle rightTintColor:(id)tintColor
{
  v31[2] = *MEMORY[0x277D85DE8];
  tintColorCopy = tintColor;
  rightTitleCopy = rightTitle;
  rightGlyphCopy = rightGlyph;
  colorCopy = color;
  titleCopy = title;
  glyphCopy = glyph;
  v20 = objc_opt_class();
  platformImage = [glyphCopy platformImage];

  platformColor = [colorCopy platformColor];

  v23 = [v20 multiSelectCellOptionConfigurationWithImage:platformImage title:titleCopy tintColor:platformColor selected:0];

  v31[0] = v23;
  v24 = objc_opt_class();
  platformImage2 = [rightGlyphCopy platformImage];

  platformColor2 = [tintColorCopy platformColor];

  v27 = [v24 multiSelectCellOptionConfigurationWithImage:platformImage2 title:rightTitleCopy tintColor:platformColor2 selected:0];

  v31[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [(WFTriggerMultiSelectCell *)self setMultiSelectCellOptionConfigurations:v28];

  containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [containerMiddle setHidden:1];

  containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
  [containerBottom setHidden:1];

  [(WFTriggerMultiSelectCell *)self setNeedsLayout];
}

- (void)setMultiSelectCellOptionConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  if ([configurationsCopy count] >= 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerMultiSelectCell.m" lineNumber:199 description:@"A maximum of 6 configurations are supported!"];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WFTriggerMultiSelectCell_setMultiSelectCellOptionConfigurations___block_invoke;
  v7[3] = &unk_279EE7678;
  v7[4] = self;
  [configurationsCopy enumerateObjectsUsingBlock:v7];
}

void __67__WFTriggerMultiSelectCell_setMultiSelectCellOptionConfigurations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = a2;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v5 = [*(a1 + 32) containerTop];
      v6 = [v47 objectForKeyedSubscript:@"image"];
      v7 = [v47 objectForKeyedSubscript:@"selectedImage"];
      v8 = [v47 objectForKeyedSubscript:@"color"];
      v9 = [v47 objectForKeyedSubscript:@"selected"];
      v10 = [v9 BOOLValue];
      v11 = [v47 objectForKeyedSubscript:@"tintColor"];
      [v5 setLeftOptionImage:v6 selectedImage:v7 label:v8 selected:v10 tintColor:v11];
    }

    v12 = [*(a1 + 32) containerTop];
    v13 = [v47 objectForKeyedSubscript:@"image"];
    v14 = [v47 objectForKeyedSubscript:@"selectedImage"];
    v15 = [v47 objectForKeyedSubscript:@"color"];
    v16 = [v47 objectForKeyedSubscript:@"selected"];
    v17 = [v16 BOOLValue];
    v18 = [v47 objectForKeyedSubscript:@"tintColor"];
    [v12 setRightOptionImage:v13 selectedImage:v14 label:v15 selected:v17 tintColor:v18];

LABEL_12:
    v19 = [*(a1 + 32) containerMiddle];
    v20 = [v47 objectForKeyedSubscript:@"image"];
    v21 = [v47 objectForKeyedSubscript:@"selectedImage"];
    v22 = [v47 objectForKeyedSubscript:@"color"];
    v23 = [v47 objectForKeyedSubscript:@"selected"];
    v24 = [v23 BOOLValue];
    v25 = [v47 objectForKeyedSubscript:@"tintColor"];
    [v19 setLeftOptionImage:v20 selectedImage:v21 label:v22 selected:v24 tintColor:v25];

    goto LABEL_13;
  }

  switch(a3)
  {
    case 3:
LABEL_13:
      v26 = [*(a1 + 32) containerMiddle];
      v27 = [v47 objectForKeyedSubscript:@"image"];
      v28 = [v47 objectForKeyedSubscript:@"selectedImage"];
      v29 = [v47 objectForKeyedSubscript:@"color"];
      v30 = [v47 objectForKeyedSubscript:@"selected"];
      v31 = [v30 BOOLValue];
      v32 = [v47 objectForKeyedSubscript:@"tintColor"];
      [v26 setRightOptionImage:v27 selectedImage:v28 label:v29 selected:v31 tintColor:v32];

      goto LABEL_14;
    case 4:
LABEL_14:
      v33 = [*(a1 + 32) containerBottom];
      v34 = [v47 objectForKeyedSubscript:@"image"];
      v35 = [v47 objectForKeyedSubscript:@"selectedImage"];
      v36 = [v47 objectForKeyedSubscript:@"color"];
      v37 = [v47 objectForKeyedSubscript:@"selected"];
      v38 = [v37 BOOLValue];
      v39 = [v47 objectForKeyedSubscript:@"tintColor"];
      [v33 setLeftOptionImage:v34 selectedImage:v35 label:v36 selected:v38 tintColor:v39];

      goto LABEL_15;
    case 5:
LABEL_15:
      v40 = [*(a1 + 32) containerBottom];
      v41 = [v47 objectForKeyedSubscript:@"image"];
      v42 = [v47 objectForKeyedSubscript:@"selectedImage"];
      v43 = [v47 objectForKeyedSubscript:@"color"];
      v44 = [v47 objectForKeyedSubscript:@"selected"];
      v45 = [v44 BOOLValue];
      v46 = [v47 objectForKeyedSubscript:@"tintColor"];
      [v40 setRightOptionImage:v41 selectedImage:v42 label:v43 selected:v45 tintColor:v46];

      break;
  }

LABEL_16:
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = WFTriggerMultiSelectCell;
  [(WFTriggerMultiSelectCell *)&v2 prepareForReuse];
}

- (void)setRightViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  [containerTop setRightViewSelected:selectedCopy];
}

- (BOOL)isRightViewSelected
{
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  rightViewSelected = [containerTop rightViewSelected];

  return rightViewSelected;
}

- (void)setLeftViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  [containerTop setLeftViewSelected:selectedCopy];
}

- (BOOL)isLeftViewSelected
{
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  leftViewSelected = [containerTop leftViewSelected];

  return leftViewSelected;
}

- (NSArray)selectedCellViews
{
  v3 = objc_opt_new();
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  leftViewSelected = [containerTop leftViewSelected];

  if (leftViewSelected)
  {
    [v3 addObject:&unk_2883C1B80];
  }

  containerTop2 = [(WFTriggerMultiSelectCell *)self containerTop];
  rightViewSelected = [containerTop2 rightViewSelected];

  if (rightViewSelected)
  {
    [v3 addObject:&unk_2883C1B98];
  }

  containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
  leftViewSelected2 = [containerMiddle leftViewSelected];

  if (leftViewSelected2)
  {
    [v3 addObject:&unk_2883C1BB0];
  }

  containerMiddle2 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  rightViewSelected2 = [containerMiddle2 rightViewSelected];

  if (rightViewSelected2)
  {
    [v3 addObject:&unk_2883C1BC8];
  }

  containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
  leftViewSelected3 = [containerBottom leftViewSelected];

  if (leftViewSelected3)
  {
    [v3 addObject:&unk_2883C1BE0];
  }

  containerBottom2 = [(WFTriggerMultiSelectCell *)self containerBottom];
  rightViewSelected3 = [containerBottom2 rightViewSelected];

  if (rightViewSelected3)
  {
    [v3 addObject:&unk_2883C1BF8];
  }

  return v3;
}

- (void)view:(id)view didSelectOptionWithRightViewCurrentlySelected:(BOOL)selected
{
  selectedCopy = selected;
  viewCopy = view;
  if ([(WFTriggerMultiSelectCell *)self singleSelection])
  {
    if ([viewCopy rightViewSelected] && selectedCopy)
    {
      goto LABEL_10;
    }

    containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
    [containerTop setLeftViewSelected:0];

    containerTop2 = [(WFTriggerMultiSelectCell *)self containerTop];
    [containerTop2 setRightViewSelected:0];

    containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [containerMiddle setLeftViewSelected:0];

    containerMiddle2 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [containerMiddle2 setRightViewSelected:0];

    containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
    [containerBottom setLeftViewSelected:0];

    containerBottom2 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [containerBottom2 setRightViewSelected:0];

    [viewCopy setLeftViewSelected:selectedCopy];
  }

  [viewCopy setRightViewSelected:selectedCopy ^ 1];
  delegate = [(WFTriggerMultiSelectCell *)self delegate];
  v13 = objc_opt_respondsToSelector();

  delegate2 = [(WFTriggerMultiSelectCell *)self delegate];
  if (v13)
  {
    [delegate2 cell:self didSelectOptionWithLeftViewSelected:objc_msgSend(viewCopy rightViewSelected:{"leftViewSelected"), objc_msgSend(viewCopy, "rightViewSelected")}];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }

    delegate2 = [(WFTriggerMultiSelectCell *)self delegate];
    selectedCellViews = [(WFTriggerMultiSelectCell *)self selectedCellViews];
    [delegate2 cell:self didSelectOptions:selectedCellViews];
  }

LABEL_10:
}

- (void)view:(id)view didSelectOptionWithLeftViewCurrentlySelected:(BOOL)selected
{
  selectedCopy = selected;
  viewCopy = view;
  if ([(WFTriggerMultiSelectCell *)self singleSelection])
  {
    if ([viewCopy leftViewSelected] && selectedCopy)
    {
      goto LABEL_11;
    }

    containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
    [containerTop setLeftViewSelected:0];

    containerTop2 = [(WFTriggerMultiSelectCell *)self containerTop];
    [containerTop2 setRightViewSelected:0];

    containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [containerMiddle setLeftViewSelected:0];

    containerMiddle2 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [containerMiddle2 setRightViewSelected:0];

    containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
    [containerBottom setLeftViewSelected:0];

    containerBottom2 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [containerBottom2 setRightViewSelected:0];

    [viewCopy setLeftViewSelected:selectedCopy ^ 1];
    [viewCopy setRightViewSelected:selectedCopy];
  }

  else
  {
    [viewCopy setLeftViewSelected:selectedCopy ^ 1];
  }

  delegate = [(WFTriggerMultiSelectCell *)self delegate];
  v13 = objc_opt_respondsToSelector();

  delegate2 = [(WFTriggerMultiSelectCell *)self delegate];
  if (v13)
  {
    [delegate2 cell:self didSelectOptionWithLeftViewSelected:objc_msgSend(viewCopy rightViewSelected:{"leftViewSelected"), objc_msgSend(viewCopy, "rightViewSelected")}];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    delegate2 = [(WFTriggerMultiSelectCell *)self delegate];
    selectedCellViews = [(WFTriggerMultiSelectCell *)self selectedCellViews];
    [delegate2 cell:self didSelectOptions:selectedCellViews];
  }

LABEL_11:
}

- (NSArray)optionContainers
{
  v3 = objc_opt_new();
  containerTop = [(WFTriggerMultiSelectCell *)self containerTop];
  [v3 if_addObjectIfNonNil:containerTop];

  containerMiddle = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [v3 if_addObjectIfNonNil:containerMiddle];

  containerBottom = [(WFTriggerMultiSelectCell *)self containerBottom];
  [v3 if_addObjectIfNonNil:containerBottom];

  return v3;
}

- (WFTriggerMultiSelectCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFTriggerMultiSelectCell;
  v4 = [(WFTriggerMultiSelectCell *)&v34 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(WFTriggerOptionSelectionViewContainer);
    containerTop = v4->_containerTop;
    v4->_containerTop = v5;

    [(WFTriggerOptionSelectionViewContainer *)v4->_containerTop setDelegate:v4];
    v7 = objc_alloc_init(WFTriggerOptionSelectionViewContainer);
    containerMiddle = v4->_containerMiddle;
    v4->_containerMiddle = v7;

    [(WFTriggerOptionSelectionViewContainer *)v4->_containerMiddle setDelegate:v4];
    v9 = objc_alloc_init(WFTriggerOptionSelectionViewContainer);
    containerBottom = v4->_containerBottom;
    v4->_containerBottom = v9;

    [(WFTriggerOptionSelectionViewContainer *)v4->_containerBottom setDelegate:v4];
    [(WFTriggerOptionSelectionViewContainer *)v4->_containerBottom setHidden:1];
    v11 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v4->_stackView;
    v4->_stackView = v11;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_stackView setDistribution:1];
    [(UIStackView *)v4->_stackView setAxis:1];
    contentView = [(WFTriggerMultiSelectCell *)v4 contentView];
    [contentView addSubview:v4->_stackView];

    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerTop];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerMiddle];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerBottom];
    v26 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)v4->_stackView topAnchor];
    contentView2 = [(WFTriggerMultiSelectCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v30;
    bottomAnchor = [(UIStackView *)v4->_stackView bottomAnchor];
    contentView3 = [(WFTriggerMultiSelectCell *)v4 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[1] = v25;
    leadingAnchor = [(UIStackView *)v4->_stackView leadingAnchor];
    contentView4 = [(WFTriggerMultiSelectCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[2] = v17;
    trailingAnchor = [(UIStackView *)v4->_stackView trailingAnchor];
    contentView5 = [(WFTriggerMultiSelectCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v26 activateConstraints:v22];

    v23 = v4;
  }

  return v4;
}

+ (id)multiSelectCellOptionConfigurationWithImage:(id)image selectedImage:(id)selectedImage title:(id)title tintColor:(id)color selected:(BOOL)selected
{
  selectedCopy = selected;
  v22[4] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CBEB38];
  v21[0] = @"image";
  v21[1] = @"color";
  v22[0] = image;
  v22[1] = title;
  v21[2] = @"selected";
  v12 = MEMORY[0x277CCABB0];
  colorCopy = color;
  titleCopy = title;
  selectedImageCopy = selectedImage;
  imageCopy = image;
  v17 = [v12 numberWithBool:selectedCopy];
  v21[3] = @"selectedImage";
  v22[2] = v17;
  v22[3] = selectedImageCopy;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v11 dictionaryWithDictionary:v18];

  [v19 if_setObjectIfNonNil:colorCopy forKey:@"tintColor"];

  return v19;
}

+ (id)multiSelectCellOptionConfigurationWithImage:(id)image title:(id)title tintColor:(id)color selected:(BOOL)selected
{
  selectedCopy = selected;
  v19[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB38];
  v18[0] = @"image";
  v18[1] = @"color";
  v19[0] = image;
  v19[1] = title;
  v18[2] = @"selected";
  v10 = MEMORY[0x277CCABB0];
  colorCopy = color;
  titleCopy = title;
  imageCopy = image;
  v14 = [v10 numberWithBool:selectedCopy];
  v19[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [v9 dictionaryWithDictionary:v15];

  [v16 if_setObjectIfNonNil:colorCopy forKey:@"tintColor"];

  return v16;
}

@end