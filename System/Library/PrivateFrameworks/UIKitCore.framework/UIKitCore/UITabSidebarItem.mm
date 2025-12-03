@interface UITabSidebarItem
+ (id)itemFromRequest:(id)request;
- (BOOL)_shouldUpdateImageForSelectedStateChange;
- (BOOL)isEqual:(id)equal;
- (NSArray)accessories;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UIContentConfiguration)contentConfiguration;
- (id)_initWithItem:(id)item;
- (id)_initWithRequest:(id)request;
- (id)_resolvedAccessories;
- (id)_resolvedImageForState:(id)state;
- (id)_updatedItemUsingState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultBackgroundConfiguration;
- (id)defaultContentConfiguration;
@end

@implementation UITabSidebarItem

- (id)_initWithRequest:(id)request
{
  requestCopy = request;
  v32.receiver = self;
  v32.super_class = UITabSidebarItem;
  v5 = [(UITabSidebarItem *)&v32 init];
  if (v5)
  {
    v6 = [requestCopy tab];
    action = [requestCopy action];
    _cell = [requestCopy _cell];
    defaultContentConfiguration = [_cell defaultContentConfiguration];
    defaultBackgroundConfiguration = [_cell defaultBackgroundConfiguration];
    if (v6)
    {
      title = [(UITab *)v6 title];
      [(UIListContentConfiguration *)defaultContentConfiguration setText:title];

      subtitle = [(UITab *)v6 subtitle];
      [(UIListContentConfiguration *)defaultContentConfiguration setSecondaryText:subtitle];

      if (([requestCopy _attributes] & 1) == 0)
      {
        image = [(UITab *)v6 image];
        [(UIListContentConfiguration *)defaultContentConfiguration setImage:image];
      }

      _isAction = [(UITab *)v6 _isAction];
    }

    else if (action)
    {
      title2 = [(UIMenuElement *)action title];
      [(UIListContentConfiguration *)defaultContentConfiguration setText:title2];

      subtitle2 = [(UIMenuElement *)action subtitle];
      [(UIListContentConfiguration *)defaultContentConfiguration setSecondaryText:subtitle2];

      image2 = [(UIMenuElement *)action image];
      [(UIListContentConfiguration *)defaultContentConfiguration setImage:image2];

      _isAction = 1;
    }

    else
    {
      _isAction = 0;
    }

    v18 = +[_UITraitMonochromaticTreatment _sidebarListMonochromaticTreatment];
    if (_isAction && !v18)
    {
      v19 = +[UIColor tintColor];
      textProperties = [(UIListContentConfiguration *)defaultContentConfiguration textProperties];
      [textProperties setColor:v19];
    }

    tab = v5->_tab;
    v5->_tab = v6;
    v22 = v6;

    action = v5->_action;
    v5->_action = action;
    v24 = action;

    objc_storeStrong(&v5->_contentConfiguration, defaultContentConfiguration);
    objc_storeStrong(&v5->_backgroundConfiguration, defaultBackgroundConfiguration);
    defaultContentConfiguration = v5->_defaultContentConfiguration;
    v5->_defaultContentConfiguration = defaultContentConfiguration;
    v26 = defaultContentConfiguration;

    defaultBackgroundConfiguration = v5->_defaultBackgroundConfiguration;
    v5->_defaultBackgroundConfiguration = defaultBackgroundConfiguration;
    v28 = defaultBackgroundConfiguration;

    configurationState = [_cell configurationState];
    configurationState = v5->_configurationState;
    v5->_configurationState = configurationState;

    v5->_attributes = [requestCopy _attributes];
  }

  return v5;
}

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = UITabSidebarItem;
  v5 = [(UITabSidebarItem *)&v19 init];
  if (v5)
  {
    v6 = [itemCopy tab];
    tab = v5->_tab;
    v5->_tab = v6;

    action = [itemCopy action];
    action = v5->_action;
    v5->_action = action;

    configurationState = [itemCopy configurationState];
    configurationState = v5->_configurationState;
    v5->_configurationState = configurationState;

    contentConfiguration = [itemCopy contentConfiguration];
    contentConfiguration = v5->_contentConfiguration;
    v5->_contentConfiguration = contentConfiguration;

    backgroundConfiguration = [itemCopy backgroundConfiguration];
    backgroundConfiguration = v5->_backgroundConfiguration;
    v5->_backgroundConfiguration = backgroundConfiguration;

    accessories = [itemCopy accessories];
    accessories = v5->_accessories;
    v5->_accessories = accessories;

    objc_storeStrong(&v5->_defaultContentConfiguration, *(itemCopy + 1));
    objc_storeStrong(&v5->_defaultBackgroundConfiguration, *(itemCopy + 2));
    v5->_attributes = *(itemCopy + 3);
  }

  return v5;
}

+ (id)itemFromRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] _initWithRequest:requestCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

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
  configurationState = [(UITabSidebarItem *)self configurationState];
  v4 = [(UIListContentConfiguration *)defaultContentConfiguration updatedConfigurationForState:configurationState];

  return v4;
}

- (id)defaultBackgroundConfiguration
{
  defaultBackgroundConfiguration = self->_defaultBackgroundConfiguration;
  configurationState = [(UITabSidebarItem *)self configurationState];
  v4 = [(UIBackgroundConfiguration *)defaultBackgroundConfiguration updatedConfigurationForState:configurationState];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)_updatedItemUsingState:(id)state
{
  stateCopy = state;
  configurationState = [(UITabSidebarItem *)self configurationState];
  isSelected = [configurationState isSelected];

  LODWORD(configurationState) = [stateCopy isSelected];
  objc_storeStrong(&self->_configurationState, state);
  if (isSelected != configurationState && [(UITabSidebarItem *)self _shouldUpdateImageForSelectedStateChange]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [(UITabSidebarItem *)self copy];
    contentConfiguration = [(UITabSidebarItem *)self contentConfiguration];
    v10 = [(UITabSidebarItem *)self _resolvedImageForState:stateCopy];
    [contentConfiguration setImage:v10];

    [(UITabSidebarItem *)v8 setContentConfiguration:contentConfiguration];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    self = v8;
  }

  selfCopy = self;

  return self;
}

- (BOOL)_shouldUpdateImageForSelectedStateChange
{
  v3 = [(UITabSidebarItem *)self tab];

  if (v3)
  {
    action2 = [(UITabSidebarItem *)self tab];
LABEL_5:
    v6 = action2;
    selectedImage = [action2 selectedImage];
    LOBYTE(action) = selectedImage != 0;

    return action;
  }

  action = [(UITabSidebarItem *)self action];

  if (action)
  {
    action2 = [(UITabSidebarItem *)self action];
    goto LABEL_5;
  }

  return action;
}

- (id)_resolvedImageForState:(id)state
{
  if (self->_attributes)
  {
    goto LABEL_11;
  }

  isSelected = [state isSelected];
  v5 = [(UITabSidebarItem *)self tab];

  if (v5)
  {
    if (!isSelected || (-[UITabSidebarItem tab](self, "tab"), v6 = objc_claimAutoreleasedReturnValue(), [v6 selectedImage], image = objc_claimAutoreleasedReturnValue(), v6, !image))
    {
      action2 = [(UITabSidebarItem *)self tab];
LABEL_10:
      v11 = action2;
      image = [action2 image];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  action = [(UITabSidebarItem *)self action];

  if (!action)
  {
LABEL_11:
    image = 0;
    goto LABEL_12;
  }

  if (!isSelected || (-[UITabSidebarItem action](self, "action"), v10 = objc_claimAutoreleasedReturnValue(), [v10 selectedImage], image = objc_claimAutoreleasedReturnValue(), v10, !image))
  {
    action2 = [(UITabSidebarItem *)self action];
    goto LABEL_10;
  }

LABEL_12:

  return image;
}

- (id)_resolvedAccessories
{
  accessories = [(UITabSidebarItem *)self accessories];
  v4 = [accessories mutableCopy];

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
  _isGroup = [v11 _isGroup];

  if (_isGroup)
  {
    if ((self->_attributes & 2) != 0)
    {
      goto LABEL_25;
    }

    v13 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
    v14 = [(UITabSidebarItem *)self tab];
    _isSidebarDestination = [v14 _isSidebarDestination];

    if (_isSidebarDestination)
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
  _canBeReordered = [v17 _canBeReordered];

  if (_canBeReordered)
  {
    v19 = objc_alloc_init(UICellAccessoryReorder);
    [(UICellAccessory *)v19 setDisplayedState:1];
    [(UICellAccessoryReorder *)v19 setShowsVerticalSeparator:0];
    [v4 addObject:v19];
  }

  v20 = [(UITabSidebarItem *)self tab];
  allowsHiding = [v20 allowsHiding];

  if (allowsHiding)
  {
    v13 = objc_alloc_init(UICellAccessoryMultiselect);
    [(UICellAccessory *)v13 setDisplayedState:1];
    if (v7)
    {
      tintColor = [v7 tintColor];
      [(UICellAccessory *)v13 setTintColor:tintColor];

      backgroundColor = [v7 backgroundColor];
      [(UICellAccessoryOutlineDisclosure *)v13 setBackgroundColor:backgroundColor];
    }

LABEL_24:
    [v4 addObject:v13];
  }

LABEL_25:
  v24 = [(UITabSidebarItem *)self tab];
  badgeValue = [v24 badgeValue];

  if (!(([badgeValue length] == 0) | v8 & 1))
  {
    v26 = [[UICellAccessoryLabel alloc] initWithText:badgeValue];
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