@interface _UIStatusBarDualIndicatorItem
- (_UIStatusBarDisplayableContainerView)iconsView;
- (_UIStatusBarImageView)iconView;
- (_UIStatusBarImageView)secondaryIconView;
- (id)additionRemovalAnimationForSubItem:(id)a3 image:(id)a4 update:(id)a5 displayItem:(id)a6;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)a3 secondary:(BOOL)a4;
- (void)_create_iconView;
- (void)_create_iconsView;
- (void)_create_secondaryIconView;
@end

@implementation _UIStatusBarDualIndicatorItem

- (id)dependentEntryKeys
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(_UIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v5 = [(_UIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v37[7] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = _UIStatusBarDualIndicatorItem;
  v4 = [(_UIStatusBarItem *)&v36 createDisplayItemForIdentifier:a3];
  v5 = [v4 identifier];
  v6 = [objc_opt_class() defaultDisplayIdentifier];

  if (v5 == v6)
  {
    v7 = [(_UIStatusBarDualIndicatorItem *)self iconsView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(_UIStatusBarDualIndicatorItem *)self iconView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v8];
    v9 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v9];
    v10 = [v9 leadingAnchor];
    v11 = [v8 trailingAnchor];
    [(_UIStatusBarDualIndicatorItem *)self itemSpacing];
    v12 = [v10 constraintEqualToAnchor:v11 constant:?];
    [(_UIStatusBarDualIndicatorItem *)self setItemSpacingConstraint:v12];

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
    v25 = [(_UIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
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
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:7];

    v4 = v18;
    [MEMORY[0x1E69977A0] activateConstraints:v22];
  }

  return v4;
}

- (_UIStatusBarDisplayableContainerView)iconsView
{
  iconsView = self->_iconsView;
  if (!iconsView)
  {
    [(_UIStatusBarDualIndicatorItem *)self _create_iconsView];
    iconsView = self->_iconsView;
  }

  return iconsView;
}

- (void)_create_iconsView
{
  v3 = [_UIStatusBarDisplayableContainerView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconsView = self->_iconsView;
  self->_iconsView = v4;
}

- (_UIStatusBarImageView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    [(_UIStatusBarDualIndicatorItem *)self _create_iconView];
    iconView = self->_iconView;
  }

  return iconView;
}

- (void)_create_iconView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;
}

- (_UIStatusBarImageView)secondaryIconView
{
  secondaryIconView = self->_secondaryIconView;
  if (!secondaryIconView)
  {
    [(_UIStatusBarDualIndicatorItem *)self _create_secondaryIconView];
    secondaryIconView = self->_secondaryIconView;
  }

  return secondaryIconView;
}

- (void)_create_secondaryIconView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  secondaryIconView = self->_secondaryIconView;
  self->_secondaryIconView = v4;
}

- (id)imageForUpdate:(id)a3 secondary:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(_UIStatusBarDualIndicatorItem *)self secondarySystemImageNameForUpdate:v6];
  }

  else
  {
    [(_UIStatusBarDualIndicatorItem *)self systemImageNameForUpdate:v6];
  }
  v7 = ;
  if (v7)
  {
    v8 = [UIImage _systemImageNamed:v7];
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
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke;
  v14[3] = &unk_1E71081A0;
  v15 = v9;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v9;
  v12 = [_UIStatusBarAnimation animationWithBlock:v14];

  return v12;
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

  v12 = [(_UIStatusBarDualIndicatorItem *)self iconView];
  v13 = [v12 image];

  v14 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
  v15 = [v14 image];

  v16 = [v6 data];
  v17 = [(_UIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v18 = [v16 valueForKey:v17];

  v19 = [v6 data];
  v20 = [(_UIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
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
    v40.super_class = _UIStatusBarDualIndicatorItem;
    v30 = [(_UIStatusBarItem *)&v40 applyUpdate:v6 toDisplayItem:v7];
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:0];
    v32 = [(_UIStatusBarDualIndicatorItem *)self iconView];
    [v32 setImage:v28];

    v33 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:1];
    v34 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    [v34 setImage:v33];

    v35 = 0.0;
    if (v28 && v33)
    {
      [(_UIStatusBarDualIndicatorItem *)self itemSpacing];
      v35 = v36;
    }

    v37 = [(_UIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    [v37 setConstant:v35];

    goto LABEL_36;
  }

  if (v18)
  {
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:0];
    v29 = [(_UIStatusBarDualIndicatorItem *)self iconView];
LABEL_35:
    v33 = v29;
    v30 = [(_UIStatusBarDualIndicatorItem *)self additionRemovalAnimationForSubItem:v29 image:v28 update:v6 displayItem:v7];
LABEL_36:

    goto LABEL_26;
  }

  if (v22)
  {
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:v6 secondary:1];
    v29 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    goto LABEL_35;
  }

  v39.receiver = self;
  v39.super_class = _UIStatusBarDualIndicatorItem;
  v30 = [(_UIStatusBarItem *)&v39 applyUpdate:v6 toDisplayItem:v7];
LABEL_26:

  return v30;
}

@end