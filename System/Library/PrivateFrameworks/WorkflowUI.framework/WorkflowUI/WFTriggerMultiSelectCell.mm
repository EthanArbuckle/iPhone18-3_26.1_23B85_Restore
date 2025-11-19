@interface WFTriggerMultiSelectCell
+ (id)multiSelectCellOptionConfigurationWithImage:(id)a3 selectedImage:(id)a4 title:(id)a5 tintColor:(id)a6 selected:(BOOL)a7;
+ (id)multiSelectCellOptionConfigurationWithImage:(id)a3 title:(id)a4 tintColor:(id)a5 selected:(BOOL)a6;
- (BOOL)isLeftViewSelected;
- (BOOL)isRightViewSelected;
- (NSArray)optionContainers;
- (NSArray)selectedCellViews;
- (WFTriggerMultiSelectCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFTriggerMultiSelectCellDelegate)delegate;
- (void)configureWithLeftGlyph:(id)a3 leftTitle:(id)a4 leftTintColor:(id)a5 rightGlyph:(id)a6 rightTitle:(id)a7 rightTintColor:(id)a8;
- (void)prepareForReuse;
- (void)setLeftViewSelected:(BOOL)a3;
- (void)setMultiSelectCellOptionConfigurations:(id)a3;
- (void)setRightViewSelected:(BOOL)a3;
- (void)setSelectedViewTintColor:(id)a3;
- (void)view:(id)a3 didSelectOptionWithLeftViewCurrentlySelected:(BOOL)a4;
- (void)view:(id)a3 didSelectOptionWithRightViewCurrentlySelected:(BOOL)a4;
@end

@implementation WFTriggerMultiSelectCell

- (WFTriggerMultiSelectCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedViewTintColor:(id)a3
{
  objc_storeStrong(&self->_selectedViewTintColor, a3);
  v5 = a3;
  v6 = [(WFTriggerMultiSelectCell *)self containerTop];
  [v6 setSelectedImageTintColor:v5];

  v7 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [v7 setSelectedImageTintColor:v5];

  v8 = [(WFTriggerMultiSelectCell *)self containerBottom];
  [v8 setSelectedImageTintColor:v5];
}

- (void)configureWithLeftGlyph:(id)a3 leftTitle:(id)a4 leftTintColor:(id)a5 rightGlyph:(id)a6 rightTitle:(id)a7 rightTintColor:(id)a8
{
  v31[2] = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_opt_class();
  v21 = [v19 platformImage];

  v22 = [v17 platformColor];

  v23 = [v20 multiSelectCellOptionConfigurationWithImage:v21 title:v18 tintColor:v22 selected:0];

  v31[0] = v23;
  v24 = objc_opt_class();
  v25 = [v16 platformImage];

  v26 = [v14 platformColor];

  v27 = [v24 multiSelectCellOptionConfigurationWithImage:v25 title:v15 tintColor:v26 selected:0];

  v31[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [(WFTriggerMultiSelectCell *)self setMultiSelectCellOptionConfigurations:v28];

  v29 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [v29 setHidden:1];

  v30 = [(WFTriggerMultiSelectCell *)self containerBottom];
  [v30 setHidden:1];

  [(WFTriggerMultiSelectCell *)self setNeedsLayout];
}

- (void)setMultiSelectCellOptionConfigurations:(id)a3
{
  v5 = a3;
  if ([v5 count] >= 7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WFTriggerMultiSelectCell.m" lineNumber:199 description:@"A maximum of 6 configurations are supported!"];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WFTriggerMultiSelectCell_setMultiSelectCellOptionConfigurations___block_invoke;
  v7[3] = &unk_279EE7678;
  v7[4] = self;
  [v5 enumerateObjectsUsingBlock:v7];
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

- (void)setRightViewSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFTriggerMultiSelectCell *)self containerTop];
  [v4 setRightViewSelected:v3];
}

- (BOOL)isRightViewSelected
{
  v2 = [(WFTriggerMultiSelectCell *)self containerTop];
  v3 = [v2 rightViewSelected];

  return v3;
}

- (void)setLeftViewSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFTriggerMultiSelectCell *)self containerTop];
  [v4 setLeftViewSelected:v3];
}

- (BOOL)isLeftViewSelected
{
  v2 = [(WFTriggerMultiSelectCell *)self containerTop];
  v3 = [v2 leftViewSelected];

  return v3;
}

- (NSArray)selectedCellViews
{
  v3 = objc_opt_new();
  v4 = [(WFTriggerMultiSelectCell *)self containerTop];
  v5 = [v4 leftViewSelected];

  if (v5)
  {
    [v3 addObject:&unk_2883C1B80];
  }

  v6 = [(WFTriggerMultiSelectCell *)self containerTop];
  v7 = [v6 rightViewSelected];

  if (v7)
  {
    [v3 addObject:&unk_2883C1B98];
  }

  v8 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  v9 = [v8 leftViewSelected];

  if (v9)
  {
    [v3 addObject:&unk_2883C1BB0];
  }

  v10 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  v11 = [v10 rightViewSelected];

  if (v11)
  {
    [v3 addObject:&unk_2883C1BC8];
  }

  v12 = [(WFTriggerMultiSelectCell *)self containerBottom];
  v13 = [v12 leftViewSelected];

  if (v13)
  {
    [v3 addObject:&unk_2883C1BE0];
  }

  v14 = [(WFTriggerMultiSelectCell *)self containerBottom];
  v15 = [v14 rightViewSelected];

  if (v15)
  {
    [v3 addObject:&unk_2883C1BF8];
  }

  return v3;
}

- (void)view:(id)a3 didSelectOptionWithRightViewCurrentlySelected:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  if ([(WFTriggerMultiSelectCell *)self singleSelection])
  {
    if ([v17 rightViewSelected] && v4)
    {
      goto LABEL_10;
    }

    v6 = [(WFTriggerMultiSelectCell *)self containerTop];
    [v6 setLeftViewSelected:0];

    v7 = [(WFTriggerMultiSelectCell *)self containerTop];
    [v7 setRightViewSelected:0];

    v8 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [v8 setLeftViewSelected:0];

    v9 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [v9 setRightViewSelected:0];

    v10 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [v10 setLeftViewSelected:0];

    v11 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [v11 setRightViewSelected:0];

    [v17 setLeftViewSelected:v4];
  }

  [v17 setRightViewSelected:v4 ^ 1];
  v12 = [(WFTriggerMultiSelectCell *)self delegate];
  v13 = objc_opt_respondsToSelector();

  v14 = [(WFTriggerMultiSelectCell *)self delegate];
  if (v13)
  {
    [v14 cell:self didSelectOptionWithLeftViewSelected:objc_msgSend(v17 rightViewSelected:{"leftViewSelected"), objc_msgSend(v17, "rightViewSelected")}];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }

    v14 = [(WFTriggerMultiSelectCell *)self delegate];
    v16 = [(WFTriggerMultiSelectCell *)self selectedCellViews];
    [v14 cell:self didSelectOptions:v16];
  }

LABEL_10:
}

- (void)view:(id)a3 didSelectOptionWithLeftViewCurrentlySelected:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  if ([(WFTriggerMultiSelectCell *)self singleSelection])
  {
    if ([v17 leftViewSelected] && v4)
    {
      goto LABEL_11;
    }

    v6 = [(WFTriggerMultiSelectCell *)self containerTop];
    [v6 setLeftViewSelected:0];

    v7 = [(WFTriggerMultiSelectCell *)self containerTop];
    [v7 setRightViewSelected:0];

    v8 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [v8 setLeftViewSelected:0];

    v9 = [(WFTriggerMultiSelectCell *)self containerMiddle];
    [v9 setRightViewSelected:0];

    v10 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [v10 setLeftViewSelected:0];

    v11 = [(WFTriggerMultiSelectCell *)self containerBottom];
    [v11 setRightViewSelected:0];

    [v17 setLeftViewSelected:v4 ^ 1];
    [v17 setRightViewSelected:v4];
  }

  else
  {
    [v17 setLeftViewSelected:v4 ^ 1];
  }

  v12 = [(WFTriggerMultiSelectCell *)self delegate];
  v13 = objc_opt_respondsToSelector();

  v14 = [(WFTriggerMultiSelectCell *)self delegate];
  if (v13)
  {
    [v14 cell:self didSelectOptionWithLeftViewSelected:objc_msgSend(v17 rightViewSelected:{"leftViewSelected"), objc_msgSend(v17, "rightViewSelected")}];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = [(WFTriggerMultiSelectCell *)self delegate];
    v16 = [(WFTriggerMultiSelectCell *)self selectedCellViews];
    [v14 cell:self didSelectOptions:v16];
  }

LABEL_11:
}

- (NSArray)optionContainers
{
  v3 = objc_opt_new();
  v4 = [(WFTriggerMultiSelectCell *)self containerTop];
  [v3 if_addObjectIfNonNil:v4];

  v5 = [(WFTriggerMultiSelectCell *)self containerMiddle];
  [v3 if_addObjectIfNonNil:v5];

  v6 = [(WFTriggerMultiSelectCell *)self containerBottom];
  [v3 if_addObjectIfNonNil:v6];

  return v3;
}

- (WFTriggerMultiSelectCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFTriggerMultiSelectCell;
  v4 = [(WFTriggerMultiSelectCell *)&v34 initWithStyle:0 reuseIdentifier:a4];
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
    v13 = [(WFTriggerMultiSelectCell *)v4 contentView];
    [v13 addSubview:v4->_stackView];

    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerTop];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerMiddle];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_containerBottom];
    v26 = MEMORY[0x277CCAAD0];
    v32 = [(UIStackView *)v4->_stackView topAnchor];
    v33 = [(WFTriggerMultiSelectCell *)v4 contentView];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v35[0] = v30;
    v28 = [(UIStackView *)v4->_stackView bottomAnchor];
    v29 = [(WFTriggerMultiSelectCell *)v4 contentView];
    v27 = [v29 bottomAnchor];
    v25 = [v28 constraintEqualToAnchor:v27];
    v35[1] = v25;
    v14 = [(UIStackView *)v4->_stackView leadingAnchor];
    v15 = [(WFTriggerMultiSelectCell *)v4 contentView];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v35[2] = v17;
    v18 = [(UIStackView *)v4->_stackView trailingAnchor];
    v19 = [(WFTriggerMultiSelectCell *)v4 contentView];
    v20 = [v19 trailingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v26 activateConstraints:v22];

    v23 = v4;
  }

  return v4;
}

+ (id)multiSelectCellOptionConfigurationWithImage:(id)a3 selectedImage:(id)a4 title:(id)a5 tintColor:(id)a6 selected:(BOOL)a7
{
  v7 = a7;
  v22[4] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CBEB38];
  v21[0] = @"image";
  v21[1] = @"color";
  v22[0] = a3;
  v22[1] = a5;
  v21[2] = @"selected";
  v12 = MEMORY[0x277CCABB0];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 numberWithBool:v7];
  v21[3] = @"selectedImage";
  v22[2] = v17;
  v22[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v11 dictionaryWithDictionary:v18];

  [v19 if_setObjectIfNonNil:v13 forKey:@"tintColor"];

  return v19;
}

+ (id)multiSelectCellOptionConfigurationWithImage:(id)a3 title:(id)a4 tintColor:(id)a5 selected:(BOOL)a6
{
  v6 = a6;
  v19[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB38];
  v18[0] = @"image";
  v18[1] = @"color";
  v19[0] = a3;
  v19[1] = a4;
  v18[2] = @"selected";
  v10 = MEMORY[0x277CCABB0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 numberWithBool:v6];
  v19[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16 = [v9 dictionaryWithDictionary:v15];

  [v16 if_setObjectIfNonNil:v11 forKey:@"tintColor"];

  return v16;
}

@end