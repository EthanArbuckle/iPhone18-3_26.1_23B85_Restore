@interface _UIStatusBarDualIndicatorItem
- (_UIStatusBarDisplayableContainerView)iconsView;
- (_UIStatusBarImageView)iconView;
- (_UIStatusBarImageView)secondaryIconView;
- (id)additionRemovalAnimationForSubItem:(id)item image:(id)image update:(id)update displayItem:(id)displayItem;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)dependentEntryKeys;
- (id)imageForUpdate:(id)update secondary:(BOOL)secondary;
- (void)_create_iconView;
- (void)_create_iconsView;
- (void)_create_secondaryIconView;
@end

@implementation _UIStatusBarDualIndicatorItem

- (id)dependentEntryKeys
{
  v3 = MEMORY[0x1E695DFD8];
  indicatorEntryKey = [(_UIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  secondaryIndicatorEntryKey = [(_UIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
  v6 = [v3 setWithObjects:{indicatorEntryKey, secondaryIndicatorEntryKey, 0}];

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v37[7] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = _UIStatusBarDualIndicatorItem;
  v4 = [(_UIStatusBarItem *)&v36 createDisplayItemForIdentifier:identifier];
  identifier = [v4 identifier];
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  if (identifier == defaultDisplayIdentifier)
  {
    iconsView = [(_UIStatusBarDualIndicatorItem *)self iconsView];
    [iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    iconView = [(_UIStatusBarDualIndicatorItem *)self iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:iconView];
    secondaryIconView = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    [secondaryIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:secondaryIconView];
    leadingAnchor = [secondaryIconView leadingAnchor];
    trailingAnchor = [iconView trailingAnchor];
    [(_UIStatusBarDualIndicatorItem *)self itemSpacing];
    v12 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:?];
    [(_UIStatusBarDualIndicatorItem *)self setItemSpacingConstraint:v12];

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
    itemSpacingConstraint = [(_UIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
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

- (id)imageForUpdate:(id)update secondary:(BOOL)secondary
{
  updateCopy = update;
  if (secondary)
  {
    [(_UIStatusBarDualIndicatorItem *)self secondarySystemImageNameForUpdate:updateCopy];
  }

  else
  {
    [(_UIStatusBarDualIndicatorItem *)self systemImageNameForUpdate:updateCopy];
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

- (id)additionRemovalAnimationForSubItem:(id)item image:(id)image update:(id)update displayItem:(id)displayItem
{
  itemCopy = item;
  imageCopy = image;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93___UIStatusBarDualIndicatorItem_additionRemovalAnimationForSubItem_image_update_displayItem___block_invoke;
  v14[3] = &unk_1E71081A0;
  v15 = imageCopy;
  v16 = itemCopy;
  selfCopy = self;
  v10 = itemCopy;
  v11 = imageCopy;
  v12 = [_UIStatusBarAnimation animationWithBlock:v14];

  return v12;
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

  iconView = [(_UIStatusBarDualIndicatorItem *)self iconView];
  image = [iconView image];

  secondaryIconView = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
  image2 = [secondaryIconView image];

  data = [updateCopy data];
  indicatorEntryKey = [(_UIStatusBarDualIndicatorItem *)self indicatorEntryKey];
  v18 = [data valueForKey:indicatorEntryKey];

  data2 = [updateCopy data];
  secondaryIndicatorEntryKey = [(_UIStatusBarDualIndicatorItem *)self secondaryIndicatorEntryKey];
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
    v40.super_class = _UIStatusBarDualIndicatorItem;
    v30 = [(_UIStatusBarItem *)&v40 applyUpdate:updateCopy toDisplayItem:itemCopy];
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:0];
    iconView2 = [(_UIStatusBarDualIndicatorItem *)self iconView];
    [iconView2 setImage:v28];

    v33 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:1];
    secondaryIconView2 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    [secondaryIconView2 setImage:v33];

    v35 = 0.0;
    if (v28 && v33)
    {
      [(_UIStatusBarDualIndicatorItem *)self itemSpacing];
      v35 = v36;
    }

    itemSpacingConstraint = [(_UIStatusBarDualIndicatorItem *)self itemSpacingConstraint];
    [itemSpacingConstraint setConstant:v35];

    goto LABEL_36;
  }

  if (v18)
  {
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:0];
    iconView3 = [(_UIStatusBarDualIndicatorItem *)self iconView];
LABEL_35:
    v33 = iconView3;
    v30 = [(_UIStatusBarDualIndicatorItem *)self additionRemovalAnimationForSubItem:iconView3 image:v28 update:updateCopy displayItem:itemCopy];
LABEL_36:

    goto LABEL_26;
  }

  if (v22)
  {
    v28 = [(_UIStatusBarDualIndicatorItem *)self imageForUpdate:updateCopy secondary:1];
    iconView3 = [(_UIStatusBarDualIndicatorItem *)self secondaryIconView];
    goto LABEL_35;
  }

  v39.receiver = self;
  v39.super_class = _UIStatusBarDualIndicatorItem;
  v30 = [(_UIStatusBarItem *)&v39 applyUpdate:updateCopy toDisplayItem:itemCopy];
LABEL_26:

  return v30;
}

@end