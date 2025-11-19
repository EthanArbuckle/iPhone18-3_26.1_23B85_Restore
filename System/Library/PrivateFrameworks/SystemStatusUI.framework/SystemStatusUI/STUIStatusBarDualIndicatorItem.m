@interface STUIStatusBarDualIndicatorItem
- (STUIStatusBarDisplayableContainerView)iconsView;
- (STUIStatusBarImageView)iconView;
- (STUIStatusBarImageView)secondaryIconView;
- (id)additionRemovalAnimationForSubItem:(id)a3 image:(id)a4 update:(id)a5 displayItem:(id)a6;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)a3 secondary:(BOOL)a4;
- (void)_create_iconView;
- (void)_create_iconsView;
- (void)_create_secondaryIconView;
@end

@implementation STUIStatusBarDualIndicatorItem

- (id)dependentEntryKeys
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(STUIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v5 = [(STUIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v37[7] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = STUIStatusBarDualIndicatorItem;
  v4 = [(STUIStatusBarItem *)&v36 createDisplayItemForIdentifier:a3];
  v5 = [v4 identifier];
  v6 = [objc_opt_class() defaultDisplayIdentifier];

  if (v5 == v6)
  {
    v7 = [(STUIStatusBarDualIndicatorItem *)self iconsView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(STUIStatusBarDualIndicatorItem *)self iconView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v8];
    v9 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v9];
    v10 = [v9 leadingAnchor];
    v11 = [v8 trailingAnchor];
    [(STUIStatusBarDualIndicatorItem *)self itemSpacing];
    v12 = [v10 constraintEqualToAnchor:v11 constant:?];
    [(STUIStatusBarDualIndicatorItem *)self setItemSpacingConstraint:v12];

    v35 = [v8 leadingAnchor];
    v33 = [v7 leadingAnchor];
    v32 = [v35 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v34 = v8;
    v31 = [v8 topAnchor];
    v30 = [v7 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v37[1] = v29;
    v28 = [v8 bottomAnchor];
    v27 = [v7 bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v37[2] = v26;
    v25 = [(STUIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    v37[3] = v25;
    v24 = [v9 topAnchor];
    v23 = [v7 topAnchor];
    v13 = [v24 constraintEqualToAnchor:v23];
    v37[4] = v13;
    v14 = [v9 bottomAnchor];
    v15 = [v7 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v37[5] = v16;
    v17 = [v9 trailingAnchor];
    [v7 trailingAnchor];
    v19 = v18 = v4;
    v20 = [v17 constraintEqualToAnchor:v19];
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

- (id)imageForUpdate:(id)a3 secondary:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(STUIStatusBarDualIndicatorItem *)self secondarySystemImageNameForUpdate:v6];
  }

  else
  {
    [(STUIStatusBarDualIndicatorItem *)self systemImageNameForUpdate:v6];
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

- (id)additionRemovalAnimationForSubItem:(id)a3 image:(id)a4 update:(id)a5 displayItem:(id)a6
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__STUIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke;
  v14[3] = &unk_279D38D50;
  v15 = v9;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v9;
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

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() defaultDisplayIdentifier];
  v10 = v9;
  if (v8 != v9)
  {

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v11 = [v7 isEnabled];

  if (!v11 || ![v6 dataChanged])
  {
    goto LABEL_25;
  }

  v12 = [(STUIStatusBarDualIndicatorItem *)self iconView];
  v13 = [v12 image];

  v14 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
  v15 = [v14 image];

  v16 = [v6 data];
  v17 = [(STUIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v18 = [v16 valueForKey:v17];

  v19 = [v6 data];
  v20 = [(STUIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v21 = [v19 valueForKey:v20];
  v22 = v21;
  if (v18)
  {
    v23 = v13 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v15)
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
    v25 = v15 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v13 | v15;
  if (v13)
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
    v30 = [(STUIStatusBarItem *)&v40 applyUpdate:v6 toDisplayItem:v7];
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:0];
    v32 = [(STUIStatusBarDualIndicatorItem *)self iconView];
    [v32 setImage:v28];

    v33 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:1];
    v34 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    [v34 setImage:v33];

    v35 = 0.0;
    if (v28 && v33)
    {
      [(STUIStatusBarDualIndicatorItem *)self itemSpacing];
      v35 = v36;
    }

    v37 = [(STUIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    [v37 setConstant:v35];

    goto LABEL_36;
  }

  if (v18)
  {
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:0];
    v29 = [(STUIStatusBarDualIndicatorItem *)self iconView];
LABEL_35:
    v33 = v29;
    v30 = [(STUIStatusBarDualIndicatorItem *)self additionRemovalAnimationForSubItem:v29 image:v28 update:v6 displayItem:v7];
LABEL_36:

    goto LABEL_26;
  }

  if (v22)
  {
    v28 = [(STUIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:1];
    v29 = [(STUIStatusBarDualIndicatorItem *)self secondaryIconView];
    goto LABEL_35;
  }

  v39.receiver = self;
  v39.super_class = STUIStatusBarDualIndicatorItem;
  v30 = [(STUIStatusBarItem *)&v39 applyUpdate:v6 toDisplayItem:v7];
LABEL_26:

  return v30;
}

@end