@interface UITabSidebarItem
+ (id)itemFromRequest:(id)a3;
- (BOOL)_shouldUpdateImageForSelectedStateChange;
- (BOOL)isEqual:(id)a3;
- (NSArray)accessories;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UIContentConfiguration)contentConfiguration;
- (id)_initWithItem:(id)a3;
- (id)_initWithRequest:(id)a3;
- (id)_resolvedAccessories;
- (id)_resolvedImageForState:(id)a3;
- (id)_updatedItemUsingState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultBackgroundConfiguration;
- (id)defaultContentConfiguration;
@end

@implementation UITabSidebarItem

- (id)_initWithRequest:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = UITabSidebarItem;
  v5 = [(UITabSidebarItem *)&v32 init];
  if (v5)
  {
    v6 = [v4 tab];
    v7 = [v4 action];
    v8 = [v4 _cell];
    v9 = [v8 defaultContentConfiguration];
    v10 = [v8 defaultBackgroundConfiguration];
    if (v6)
    {
      v11 = [(UITab *)v6 title];
      [(UIListContentConfiguration *)v9 setText:v11];

      v12 = [(UITab *)v6 subtitle];
      [(UIListContentConfiguration *)v9 setSecondaryText:v12];

      if (([v4 _attributes] & 1) == 0)
      {
        v13 = [(UITab *)v6 image];
        [(UIListContentConfiguration *)v9 setImage:v13];
      }

      v14 = [(UITab *)v6 _isAction];
    }

    else if (v7)
    {
      v15 = [(UIMenuElement *)v7 title];
      [(UIListContentConfiguration *)v9 setText:v15];

      v16 = [(UIMenuElement *)v7 subtitle];
      [(UIListContentConfiguration *)v9 setSecondaryText:v16];

      v17 = [(UIMenuElement *)v7 image];
      [(UIListContentConfiguration *)v9 setImage:v17];

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v18 = +[_UITraitMonochromaticTreatment _sidebarListMonochromaticTreatment];
    if (v14 && !v18)
    {
      v19 = +[UIColor tintColor];
      v20 = [(UIListContentConfiguration *)v9 textProperties];
      [v20 setColor:v19];
    }

    tab = v5->_tab;
    v5->_tab = v6;
    v22 = v6;

    action = v5->_action;
    v5->_action = v7;
    v24 = v7;

    objc_storeStrong(&v5->_contentConfiguration, v9);
    objc_storeStrong(&v5->_backgroundConfiguration, v10);
    defaultContentConfiguration = v5->_defaultContentConfiguration;
    v5->_defaultContentConfiguration = v9;
    v26 = v9;

    defaultBackgroundConfiguration = v5->_defaultBackgroundConfiguration;
    v5->_defaultBackgroundConfiguration = v10;
    v28 = v10;

    v29 = [v8 configurationState];
    configurationState = v5->_configurationState;
    v5->_configurationState = v29;

    v5->_attributes = [v4 _attributes];
  }

  return v5;
}

- (id)_initWithItem:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UITabSidebarItem;
  v5 = [(UITabSidebarItem *)&v19 init];
  if (v5)
  {
    v6 = [v4 tab];
    tab = v5->_tab;
    v5->_tab = v6;

    v8 = [v4 action];
    action = v5->_action;
    v5->_action = v8;

    v10 = [v4 configurationState];
    configurationState = v5->_configurationState;
    v5->_configurationState = v10;

    v12 = [v4 contentConfiguration];
    contentConfiguration = v5->_contentConfiguration;
    v5->_contentConfiguration = v12;

    v14 = [v4 backgroundConfiguration];
    backgroundConfiguration = v5->_backgroundConfiguration;
    v5->_backgroundConfiguration = v14;

    v16 = [v4 accessories];
    accessories = v5->_accessories;
    v5->_accessories = v16;

    objc_storeStrong(&v5->_defaultContentConfiguration, *(v4 + 1));
    objc_storeStrong(&v5->_defaultBackgroundConfiguration, *(v4 + 2));
    v5->_attributes = *(v4 + 3);
  }

  return v5;
}

+ (id)itemFromRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithRequest:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initWithItem:self];
}

- (UIContentConfiguration)contentConfiguration
{
  v2 = [(UIContentConfiguration *)self->_contentConfiguration copyWithZone:0];

  return v2;
}

- (UIBackgroundConfiguration)backgroundConfiguration
{
  v2 = [(UIBackgroundConfiguration *)self->_backgroundConfiguration copy];

  return v2;
}

- (NSArray)accessories
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_accessories copyItems:1];

  return v2;
}

- (id)defaultContentConfiguration
{
  defaultContentConfiguration = self->_defaultContentConfiguration;
  v3 = [(UITabSidebarItem *)self configurationState];
  v4 = [(UIListContentConfiguration *)defaultContentConfiguration updatedConfigurationForState:v3];

  return v4;
}

- (id)defaultBackgroundConfiguration
{
  defaultBackgroundConfiguration = self->_defaultBackgroundConfiguration;
  v3 = [(UITabSidebarItem *)self configurationState];
  v4 = [(UIBackgroundConfiguration *)defaultBackgroundConfiguration updatedConfigurationForState:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5 == self)
      {
        goto LABEL_33;
      }

      tab = v5->_tab;
      v8 = self->_tab;
      v9 = tab;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {
          goto LABEL_28;
        }

        v11 = [(UITab *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_29;
        }
      }

      action = v6->_action;
      v8 = self->_action;
      v14 = action;
      v10 = v14;
      if (v8 == v14)
      {
      }

      else
      {
        if (!v8 || !v14)
        {
          goto LABEL_28;
        }

        v15 = [(UITab *)v8 isEqual:v14];

        if (!v15)
        {
          goto LABEL_29;
        }
      }

      contentConfiguration = v6->_contentConfiguration;
      v8 = self->_contentConfiguration;
      v17 = contentConfiguration;
      v10 = v17;
      if (v8 == v17)
      {
      }

      else
      {
        if (!v8 || !v17)
        {
          goto LABEL_28;
        }

        v18 = [(UITab *)v8 isEqual:v17];

        if (!v18)
        {
          goto LABEL_29;
        }
      }

      backgroundConfiguration = v6->_backgroundConfiguration;
      v8 = self->_backgroundConfiguration;
      v20 = backgroundConfiguration;
      v10 = v20;
      if (v8 == v20)
      {

LABEL_31:
        if (!_deferringTokenEqualToToken(self->_accessories, v6->_accessories) || self->_attributes != v6->_attributes)
        {
          goto LABEL_29;
        }

LABEL_33:
        v12 = 1;
        goto LABEL_34;
      }

      if (v8 && v20)
      {
        v21 = [(UITab *)v8 isEqual:v20];

        if (v21)
        {
          goto LABEL_31;
        }

LABEL_29:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }

LABEL_28:

      goto LABEL_29;
    }
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)_updatedItemUsingState:(id)a3
{
  v5 = a3;
  v6 = [(UITabSidebarItem *)self configurationState];
  v7 = [v6 isSelected];

  LODWORD(v6) = [v5 isSelected];
  objc_storeStrong(&self->_configurationState, a3);
  if (v7 != v6 && [(UITabSidebarItem *)self _shouldUpdateImageForSelectedStateChange]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [(UITabSidebarItem *)self copy];
    v9 = [(UITabSidebarItem *)self contentConfiguration];
    v10 = [(UITabSidebarItem *)self _resolvedImageForState:v5];
    [v9 setImage:v10];

    [(UITabSidebarItem *)v8 setContentConfiguration:v9];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    self = v8;
  }

  v11 = self;

  return self;
}

- (BOOL)_shouldUpdateImageForSelectedStateChange
{
  v3 = [(UITabSidebarItem *)self tab];

  if (v3)
  {
    v4 = [(UITabSidebarItem *)self tab];
LABEL_5:
    v6 = v4;
    v7 = [v4 selectedImage];
    LOBYTE(v5) = v7 != 0;

    return v5;
  }

  v5 = [(UITabSidebarItem *)self action];

  if (v5)
  {
    v4 = [(UITabSidebarItem *)self action];
    goto LABEL_5;
  }

  return v5;
}

- (id)_resolvedImageForState:(id)a3
{
  if (self->_attributes)
  {
    goto LABEL_11;
  }

  v4 = [a3 isSelected];
  v5 = [(UITabSidebarItem *)self tab];

  if (v5)
  {
    if (!v4 || (-[UITabSidebarItem tab](self, "tab"), v6 = objc_claimAutoreleasedReturnValue(), [v6 selectedImage], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v8 = [(UITabSidebarItem *)self tab];
LABEL_10:
      v11 = v8;
      v7 = [v8 image];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [(UITabSidebarItem *)self action];

  if (!v9)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (!v4 || (-[UITabSidebarItem action](self, "action"), v10 = objc_claimAutoreleasedReturnValue(), [v10 selectedImage], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
  {
    v8 = [(UITabSidebarItem *)self action];
    goto LABEL_10;
  }

LABEL_12:

  return v7;
}

- (id)_resolvedAccessories
{
  v3 = [(UITabSidebarItem *)self accessories];
  v4 = [v3 mutableCopy];

  if (qword_1ED4A08E0 != -1)
  {
    dispatch_once(&qword_1ED4A08E0, &__block_literal_global_512);
  }

  v5 = [v4 count];
  if (v5 - 1 < 0)
  {
    LOBYTE(v8) = 0;
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v4 objectAtIndex:--v6];
      if ([_MergedGlobals_1277 containsObject:objc_opt_class()])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;

          v7 = v10;
        }

        [v4 removeObjectAtIndex:v6];
      }

      else
      {
        objc_opt_class();
        v8 |= objc_opt_isKindOfClass();
      }
    }

    while (v6 > 0);
  }

  v11 = [(UITabSidebarItem *)self tab];
  v12 = [v11 _isGroup];

  if (v12)
  {
    if ((self->_attributes & 2) != 0)
    {
      goto LABEL_25;
    }

    v13 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
    v14 = [(UITabSidebarItem *)self tab];
    v15 = [v14 _isSidebarDestination];

    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    [(UICellAccessoryOutlineDisclosure *)v13 setStyle:v16];
    goto LABEL_24;
  }

  v17 = [(UITabSidebarItem *)self tab];
  v18 = [v17 _canBeReordered];

  if (v18)
  {
    v19 = objc_alloc_init(UICellAccessoryReorder);
    [(UICellAccessory *)v19 setDisplayedState:1];
    [(UICellAccessoryReorder *)v19 setShowsVerticalSeparator:0];
    [v4 addObject:v19];
  }

  v20 = [(UITabSidebarItem *)self tab];
  v21 = [v20 allowsHiding];

  if (v21)
  {
    v13 = objc_alloc_init(UICellAccessoryMultiselect);
    [(UICellAccessory *)v13 setDisplayedState:1];
    if (v7)
    {
      v22 = [v7 tintColor];
      [(UICellAccessory *)v13 setTintColor:v22];

      v23 = [v7 backgroundColor];
      [(UICellAccessoryOutlineDisclosure *)v13 setBackgroundColor:v23];
    }

LABEL_24:
    [v4 addObject:v13];
  }

LABEL_25:
  v24 = [(UITabSidebarItem *)self tab];
  v25 = [v24 badgeValue];

  if (!(([v25 length] == 0) | v8 & 1))
  {
    v26 = [[UICellAccessoryLabel alloc] initWithText:v25];
    [v4 addObject:v26];
  }

  v27 = v4;

  return v4;
}

void __40__UITabSidebarItem__resolvedAccessories__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = _MergedGlobals_1277;
  _MergedGlobals_1277 = v0;
}

@end