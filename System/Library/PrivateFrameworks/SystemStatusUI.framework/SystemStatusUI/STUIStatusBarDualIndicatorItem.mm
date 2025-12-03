@interface STUIStatusBarDualIndicatorItem
- (STUIStatusBarDisplayableContainerView)iconsView;
- (STUIStatusBarImageView)iconView;
- (STUIStatusBarImageView)secondaryIconView;
- (id)additionRemovalAnimationForSubItem:(id)item image:(id)image update:(id)update displayItem:(id)displayItem;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)update secondary:(BOOL)secondary;
- (void)_create_iconView;
- (void)_create_iconsView;
- (void)_create_secondaryIconView;
@end

@implementation STUIStatusBarDualIndicatorItem

- (id)dependentEntryKeys
{
  v3 = MEMORY[0x277CBEB98];
  indicatorEntryKey = [(STUIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  secondaryIndicatorEntryKey = [(STUIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v6 = [v3 setWithObjects:{indicatorEntryKey, secondaryIndicatorEntryKey, 0}];

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v37[7] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = STUIStatusBarDualIndicatorItem;
  v4 = [(STUIStatusBarItem *)&v36 createDisplayItemForIdentifier:identifier];
  identifier = [v4 identifier];
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  if (identifier == defaultDisplayIdentifier)
  {
    iconsView = [(STUIStatusBarDualIndicatorItem *)self iconsView];
    [iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    iconView = [(STUIStatusBarDualIndicatorItem *)self iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:iconView];
    secondaryIconView = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    [secondaryIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:secondaryIconView];
    leadingAnchor = [secondaryIconView leadingAnchor];
    trailingAnchor = [iconView trailingAnchor];
    [(STUIStatusBarDualIndicatorItem *)self itemSpacing];
    v12 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:?];
    [(STUIStatusBarDualIndicatorItem *)self setItemSpacingConstraint:v12];

    leadingAnchor2 = [iconView leadingAnchor];
    leadingAnchor3 = [iconsView leadingAnchor];
    v32 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v37[0] = v32;
    v34 = iconView;
    topAnchor = [iconView topAnchor];
    topAnchor2 = [iconsView topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[1] = v29;
    bottomAnchor = [iconView bottomAnchor];
    bottomAnchor2 = [iconsView bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[2] = v26;
    itemSpacingConstraint = [(STUIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    v37[3] = itemSpacingConstraint;
    topAnchor3 = [secondaryIconView topAnchor];
    topAnchor4 = [iconsView topAnchor];
    v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v37[4] = v13;
    bottomAnchor3 = [secondaryIconView bottomAnchor];
    bottomAnchor4 = [iconsView bottomAnchor];
    v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v37[5] = v16;
    trailingAnchor2 = [secondaryIconView trailingAnchor];
    [iconsView trailingAnchor];
    v19 = v18 = v4;
    v20 = [trailingAnchor2 constraintEqualToAnchor:v19];
    v37[6] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:7];

    v4 = v18;
    [MEMORY[0x277CCAAD0] activateConstraints:v22];
  }

  return v4;
}

- (STUIStatusBarDisplayableContainerView)iconsView
{
  iconsView = self->_iconsView;
  if (!iconsView)
  {
    [(STUIStatusBarDualIndicatorItem *)self _create_iconsView];
    iconsView = self->_iconsView;
  }

  return iconsView;
}

- (void)_create_iconsView
{
  v3 = [STUIStatusBarDisplayableContainerView alloc];
  v4 = [(STUIStatusBarDisplayableContainerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  iconsView = self->_iconsView;
  self->_iconsView = v4;

  MEMORY[0x2821F96F8](v4, iconsView);
}

- (STUIStatusBarImageView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    [(STUIStatusBarDualIndicatorItem *)self _create_iconView];
    iconView = self->_iconView;
  }

  return iconView;
}

- (void)_create_iconView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;

  MEMORY[0x2821F96F8](v4, iconView);
}

- (STUIStatusBarImageView)secondaryIconView
{
  secondaryIconView = self->_secondaryIconView;
  if (!secondaryIconView)
  {
    [(STUIStatusBarDualIndicatorItem *)self _create_secondaryIconView];
    secondaryIconView = self->_secondaryIconView;
  }

  return secondaryIconView;
}

- (void)_create_secondaryIconView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  secondaryIconView = self->_secondaryIconView;
  self->_secondaryIconView = v4;

  MEMORY[0x2821F96F8](v4, secondaryIconView);
}

- (id)imageForUpdate:(id)update secondary:(BOOL)secondary
{
  updateCopy = update;
  if (secondary)
  {
    [(STUIStatusBarDualIndicatorItem *)self secondarySystemImageNameForUpdate:updateCopy];
  }

  else
  {
    [(STUIStatusBarDualIndicatorItem *)self systemImageNameForUpdate:updateCopy];
  }
  v7 = ;
  if (v7)
  {
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)additionRemovalAnimationForSubItem:(id)item image:(id)image update:(id)update displayItem:(id)displayItem
{
  itemCopy = item;
  imageCopy = image;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke;
  v14[3] = &unk_279D38D50;
  v15 = imageCopy;
  v16 = itemCopy;
  selfCopy = self;
  v10 = itemCopy;
  v11 = imageCopy;
  v12 = [STUIStatusBarAnimation animationWithBlock:v14];

  return v12;
}

void __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (a1[4])
  {
    [a1[5] setImage:?];
    [a1[6] itemSpacing];
    v7 = v6;
    v8 = [a1[6] itemSpacingConstraint];
    [v8 setConstant:v7];

    [a1[6] additionRemovalScale];
    v10 = v9;
    [a1[6] additionRemovalScale];
    CGAffineTransformMakeScale(&v31, v10, v11);
    v12 = a1[5];
    v30 = v31;
    [v12 setTransform:&v30];
    [a1[5] setAlpha:0.0];
  }

  v13 = MEMORY[0x277D75D18];
  [a1[6] additionRemovalDuration];
  v15 = v14;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_2;
  v26[3] = &unk_279D38D00;
  v27 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v28 = v16;
  v29 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_3;
  v21[3] = &unk_279D38D28;
  v22 = a1[5];
  v18 = a1[4];
  v19 = a1[6];
  v23 = v18;
  v24 = v19;
  v25 = v5;
  v20 = v5;
  [v13 animateWithDuration:v26 animations:v21 completion:v15];
}

uint64_t __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = (a1 + 40);
    v2 = *(a1 + 40);
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&v12.a = *MEMORY[0x277CBF2C0];
    *&v12.c = v4;
    *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v2 setTransform:&v12];
    v5 = 1.0;
  }

  else
  {
    [*(a1 + 48) additionRemovalScale];
    v7 = v6;
    [*(a1 + 48) additionRemovalScale];
    CGAffineTransformMakeScale(&v11, v7, v8);
    v9 = *(a1 + 40);
    v3 = (a1 + 40);
    v12 = v11;
    [v9 setTransform:&v12];
    v5 = 0.0;
  }

  return [*v3 setAlpha:v5];
}

uint64_t __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setImage:*(a1 + 40)];
    if (!*(a1 + 40))
    {
      v3 = [*(a1 + 48) itemSpacingConstraint];
      [v3 setConstant:0.0];
    }

    v4 = *(a1 + 32);
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v7[0] = *MEMORY[0x277CBF2C0];
    v7[1] = v5;
    v7[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v4 setTransform:v7];
    [*(a1 + 32) setAlpha:1.0];
  }

  return (*(*(a1 + 56) + 16))();
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  identifier = [itemCopy identifier];
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];
  v10 = defaultDisplayIdentifier;
  if (identifier != defaultDisplayIdentifier)
  {

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  isEnabled = [itemCopy isEnabled];

  if (!isEnabled || ![updateCopy dataChanged])
  {
    goto LABEL_25;
  }

  iconView = [(STUIStatusBarDualIndicatorItem *)self iconView];
  image = [iconView image];

  secondaryIconView = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
  image2 = [secondaryIconView image];

  data = [updateCopy data];
  indicatorEntryKey = [(STUIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v18 = [data valueForKey:indicatorEntryKey];

  data2 = [updateCopy data];
  secondaryIndicatorEntryKey = [(STUIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v21 = [data2 valueForKey:secondaryIndicatorEntryKey];
  v22 = v21;
  if (v18)
  {
    v23 = image == 0;
  }

  else
  {
    v23 = 1;
  }

  if (image2)
  {
    v23 = 1;
  }

  v38 = v23;
  if (v21)
  {
    v24 = v18 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v21)
  {
    v25 = image2 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = image | image2;
  if (image)
  {
    v27 = 1;
  }

  else
  {
    v27 = v25;
  }

  if (!v26 || !v24 || !v38 || (v27 & 1) == 0)
  {
    v40.receiver = self;
    v40.super_class = STUIStatusBarDualIndicatorItem;
    v30 = [(STUIStatusBarItem *)&v40 applyUpdate:updateCopy toDisplayItem:itemCopy];
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:0];
    iconView2 = [(STUIStatusBarDualIndicatorItem *)self iconView];
    [iconView2 setImage:v28];

    v33 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:1];
    secondaryIconView2 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    [secondaryIconView2 setImage:v33];

    v35 = 0.0;
    if (v28 && v33)
    {
      [(STUIStatusBarDualIndicatorItem *)self itemSpacing];
      v35 = v36;
    }

    itemSpacingConstraint = [(STUIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    [itemSpacingConstraint setConstant:v35];

    goto LABEL_36;
  }

  if (v18)
  {
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:0];
    iconView3 = [(STUIStatusBarDualIndicatorItem *)self iconView];
LABEL_35:
    v33 = iconView3;
    v30 = [(STUIStatusBarDualIndicatorItem *)self additionRemovalAnimationForSubItem:iconView3 image:v28 update:updateCopy displayItem:itemCopy];
LABEL_36:

    goto LABEL_26;
  }

  if (v22)
  {
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:1];
    iconView3 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    goto LABEL_35;
  }

  v39.receiver = self;
  v39.super_class = STUIStatusBarDualIndicatorItem;
  v30 = [(STUIStatusBarItem *)&v39 applyUpdate:updateCopy toDisplayItem:itemCopy];
LABEL_26:

  return v30;
}

@end