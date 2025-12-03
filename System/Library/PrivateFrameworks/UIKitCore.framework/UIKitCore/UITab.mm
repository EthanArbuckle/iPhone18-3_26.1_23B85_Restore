@interface UITab
- (BOOL)_canBeReordered;
- (BOOL)_hasParent;
- (BOOL)_isAncestorOfTab:(id)tab;
- (BOOL)_isCustomizable;
- (BOOL)hasVisiblePlacement;
- (BOOL)isEqual:(id)equal;
- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window;
- (CGRect)_sourceRectForPresentationInWindow:(id)window;
- (CGRect)frameInView:(id)view;
- (NSArray)_displayedViewControllers;
- (UITab)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider;
- (UITabBarController)tabBarController;
- (UITabBarItem)_linkedTabBarItem;
- (UITabGroup)managingTabGroup;
- (UITabGroup)parent;
- (UIViewController)viewController;
- (_UITabModel)_tabModel;
- (id)_descriptionWithRecursion:(BOOL)recursion;
- (id)_filledVariantImage;
- (id)_filledVariantSelectedImage;
- (id)_nearestViewController;
- (id)_parentGroup;
- (id)_resolvedSourceItem;
- (id)_sourceViewForPresentationInWindow:(id)window;
- (int64_t)_tabPlacement;
- (void)_contentDidChange;
- (void)_customizabilityDidChange;
- (void)_didChangeTabModel:(id)model;
- (void)_resetViewController;
- (void)_setCompactRepresentation:(id)representation;
- (void)_setDisplayedViewControllers:(id)controllers;
- (void)_setParent:(id)parent;
- (void)_setTabModel:(id)model;
- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive;
- (void)_updateLinkedTabBarItem;
- (void)_visibilityDidChange;
- (void)setAccessibilityAttributedHint:(id)hint;
- (void)setAccessibilityAttributedLabel:(id)label;
- (void)setAccessibilityAttributedValue:(id)value;
- (void)setAccessibilityHint:(id)hint;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityValue:(id)value;
- (void)setAllowsHiding:(BOOL)hiding;
- (void)setBadgeValue:(id)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setImage:(id)image;
- (void)setPreferredPlacement:(int64_t)placement;
- (void)setSelectedImage:(id)image;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation UITab

- (_UITabModel)_tabModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tabModel);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    _tabModel = WeakRetained;
  }

  else
  {
    _parentGroup = [(UITab *)self _parentGroup];
    _tabModel = [_parentGroup _tabModel];
  }

  return _tabModel;
}

- (BOOL)_isCustomizable
{
  if ([(UITab *)self allowsHiding])
  {
    return 1;
  }

  return [(UITab *)self _hasCustomizablePlacement];
}

- (int64_t)_tabPlacement
{
  preferredPlacement = [(UITab *)self preferredPlacement];
  if (os_variant_has_internal_diagnostics() && ([(UITab *)self identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabOverridesDefaultPlacement(v6), v6, (v7 & 1) != 0) || !preferredPlacement)
  {
    _parentGroup = [(UITab *)self _parentGroup];

    if (_parentGroup)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return preferredPlacement;
}

- (void)_contentDidChange
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel tabContentDidChange:self];
}

- (UITabBarItem)_linkedTabBarItem
{
  _existingDisplayedViewController = [(UITab *)self _existingDisplayedViewController];
  tabBarItem = [_existingDisplayedViewController tabBarItem];

  return tabBarItem;
}

- (void)_updateLinkedTabBarItem
{
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  if (_linkedTabBarItem)
  {
    v15 = _linkedTabBarItem;
    title = [(UITab *)self title];
    [v15 setTitle:title];

    _filledVariantImage = [(UITab *)self _filledVariantImage];
    [v15 setImage:_filledVariantImage];

    _filledVariantSelectedImage = [(UITab *)self _filledVariantSelectedImage];
    [v15 setSelectedImage:_filledVariantSelectedImage];

    badgeValue = [(UITab *)self badgeValue];
    [v15 setBadgeValue:badgeValue];

    [v15 setEnabled:{-[UITab isEnabled](self, "isEnabled")}];
    accessibilityIdentifier = [(UITab *)self accessibilityIdentifier];
    [v15 setAccessibilityIdentifier:accessibilityIdentifier];

    accessibilityLabel = [self accessibilityLabel];
    [v15 setAccessibilityLabel:accessibilityLabel];

    accessibilityAttributedLabel = [self accessibilityAttributedLabel];
    [v15 setAccessibilityAttributedLabel:accessibilityAttributedLabel];

    accessibilityValue = [self accessibilityValue];
    [v15 setAccessibilityValue:accessibilityValue];

    accessibilityAttributedValue = [self accessibilityAttributedValue];
    [v15 setAccessibilityAttributedValue:accessibilityAttributedValue];

    accessibilityHint = [self accessibilityHint];
    [v15 setAccessibilityHint:accessibilityHint];

    accessibilityAttributedHint = [self accessibilityAttributedHint];
    [v15 setAccessibilityAttributedHint:accessibilityAttributedHint];

    [v15 setSpringLoaded:{-[UITab isSpringLoaded](self, "isSpringLoaded")}];
    _linkedTabBarItem = v15;
  }
}

- (id)_filledVariantImage
{
  image = self->_image;
  v3 = +[_UIImageSymbolVariant filledVariant];
  v4 = [(UIImage *)image _imageByApplyingSymbolVariant:v3];

  return v4;
}

- (void)_customizabilityDidChange
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel customizabilityDidChangeForTab:self];
}

- (UITabBarController)tabBarController
{
  _tabModel = [(UITab *)self _tabModel];
  tabBarController = [_tabModel tabBarController];

  return tabBarController;
}

- (id)_parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (UIViewController)viewController
{
  viewControllerProvider = self->_viewControllerProvider;
  if (viewControllerProvider && !self->_viewController)
  {
    v5 = viewControllerProvider[2](viewControllerProvider, self);
    viewController = self->_viewController;
    self->_viewController = v5;

    v7 = [(UIViewController *)self->_viewController tab];

    if (v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITab.m" lineNumber:202 description:@"UIViewController cannot be shared between multiple UITab."];
    }

    [(UIViewController *)&self->_viewController->super.super.isa _attachTab:?];
    [(UITab *)self _updateLinkedTabBarItem];
  }

  v8 = self->_viewController;

  return v8;
}

- (UITabGroup)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (UITabGroup)managingTabGroup
{
  parent = [(UITab *)self parent];
  managingTabGroup = [parent managingTabGroup];

  return managingTabGroup;
}

- (UITab)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider
{
  titleCopy = title;
  imageCopy = image;
  identifierCopy = identifier;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = UITab;
  v14 = [(UITab *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [imageCopy copy];
    image = v14->_image;
    v14->_image = v19;

    v21 = _Block_copy(providerCopy);
    viewControllerProvider = v14->_viewControllerProvider;
    v14->_viewControllerProvider = v21;

    *&v14->_springLoaded = 257;
    v14->_preferredPlacement = 0;
  }

  return v14;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = titleCopy;
  v11 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v11 copy];
    title = self->_title;
    self->_title = v8;

    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    [_linkedTabBarItem setTitle:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v5 = self->_image;
  v6 = imageCopy;
  v12 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(UIImage *)v5 isEqual:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(UIImage *)v12 copy];
    image = self->_image;
    self->_image = v8;

    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    _filledVariantImage = [(UITab *)self _filledVariantImage];
    [_linkedTabBarItem setImage:_filledVariantImage];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSelectedImage:(id)image
{
  imageCopy = image;
  v5 = self->_selectedImage;
  v6 = imageCopy;
  v12 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(UIImage *)v5 isEqual:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(UIImage *)v12 copy];
    selectedImage = self->_selectedImage;
    self->_selectedImage = v8;

    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    _filledVariantSelectedImage = [(UITab *)self _filledVariantSelectedImage];
    [_linkedTabBarItem setSelectedImage:_filledVariantSelectedImage];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = self->_subtitle;
  v6 = subtitleCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v8;

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setBadgeValue:(id)value
{
  valueCopy = value;
  v5 = self->_badgeValue;
  v6 = valueCopy;
  v11 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v11 copy];
    badgeValue = self->_badgeValue;
    self->_badgeValue = v8;

    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    [_linkedTabBarItem setBadgeValue:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setPreferredPlacement:(int64_t)placement
{
  if (self->_preferredPlacement != placement)
  {
    self->_preferredPlacement = placement;
    [(UITab *)self _customizabilityDidChange];

    [(UITab *)self _contentDidChange];
  }
}

- (BOOL)hasVisiblePlacement
{
  if ([(UITab *)self isHidden]|| ([(UITab *)self _tabModel], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v4 = [(UITab *)self _tabPlacement]- 3;
  if (v4 < 4)
  {
    v5 = 7u >> (v4 & 0xF);
    return v5 & 1;
  }

  _tabModel = [(UITab *)self _tabModel];
  customizationStore = [_tabModel customizationStore];
  v9 = [customizationStore favoriteOrderContainsTab:self];

  return v9;
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
    [(UITab *)self _visibilityDidChange];
  }
}

- (void)setAllowsHiding:(BOOL)hiding
{
  if (self->_allowsHiding != hiding)
  {
    self->_allowsHiding = hiding;
    [(UITab *)self _customizabilityDidChange];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    [_linkedTabBarItem setEnabled:enabledCopy];

    [(UITab *)self _contentDidChange];
  }
}

- (NSArray)_displayedViewControllers
{
  v3 = self->_displayedViewControllers;
  if (![(NSArray *)v3 count])
  {
    v4 = MEMORY[0x1E695DEC8];
    viewController = [(UITab *)self viewController];
    v6 = [v4 arrayWithObjects:{viewController, 0}];

    v3 = v6;
  }

  return v3;
}

- (void)_setDisplayedViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (![controllersCopy count] || objc_msgSend(controllersCopy, "count") == 1 && (objc_msgSend(controllersCopy, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), -[UITab viewController](self, "viewController"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {

    controllersCopy = 0;
  }

  displayedViewControllers = self->_displayedViewControllers;
  v13 = controllersCopy;
  v8 = displayedViewControllers;
  if (v13 == v8)
  {

    v11 = v13;
LABEL_13:

    v10 = v13;
    goto LABEL_14;
  }

  if (!v13 || !v8)
  {

    v10 = v13;
    goto LABEL_12;
  }

  v9 = [(NSArray *)v13 isEqual:v8];

  v10 = v13;
  if ((v9 & 1) == 0)
  {
LABEL_12:
    v12 = v10;
    v11 = self->_displayedViewControllers;
    self->_displayedViewControllers = v12;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_resetViewController
{
  [(UITab *)self _setDisplayedViewControllers:0];
  viewController = self->_viewController;
  if (viewController)
  {
    [(UIViewController *)&viewController->super.super.isa _attachTab:?];
    v4 = self->_viewController;
    self->_viewController = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    preferredPlacement = [(UITab *)self preferredPlacement];
    if (preferredPlacement == [(UITab *)equalCopy preferredPlacement])
    {
      isHidden = [(UITab *)self isHidden];
      if (isHidden == [(UITab *)equalCopy isHidden])
      {
        allowsHiding = [(UITab *)self allowsHiding];
        if (allowsHiding == [(UITab *)equalCopy allowsHiding])
        {
          identifier = [(UITab *)self identifier];
          identifier2 = [(UITab *)equalCopy identifier];
          badgeValue = identifier;
          v13 = identifier2;
          badgeValue2 = v13;
          if (badgeValue == v13)
          {
          }

          else
          {
            if (!badgeValue || !v13)
            {
              goto LABEL_20;
            }

            v15 = [badgeValue isEqual:v13];

            if ((v15 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          title = [(UITab *)self title];
          title2 = [(UITab *)equalCopy title];
          badgeValue = title;
          v18 = title2;
          badgeValue2 = v18;
          if (badgeValue == v18)
          {

LABEL_23:
            image = [(UITab *)self image];
            image2 = [(UITab *)equalCopy image];
            v22 = _deferringTokenEqualToToken(image, image2);

            if (!v22)
            {
              goto LABEL_6;
            }

            selectedImage = [(UITab *)self selectedImage];
            selectedImage2 = [(UITab *)equalCopy selectedImage];
            v25 = _deferringTokenEqualToToken(selectedImage, selectedImage2);

            if (!v25)
            {
              goto LABEL_6;
            }

            subtitle = [(UITab *)self subtitle];
            subtitle2 = [(UITab *)equalCopy subtitle];
            v28 = _deferringTokenEqualToToken(subtitle, subtitle2);

            if (!v28)
            {
              goto LABEL_6;
            }

            badgeValue = [(UITab *)self badgeValue];
            badgeValue2 = [(UITab *)equalCopy badgeValue];
            v8 = _deferringTokenEqualToToken(badgeValue, badgeValue2);
LABEL_21:

            goto LABEL_8;
          }

          if (badgeValue && v18)
          {
            v19 = [badgeValue isEqual:v18];

            if ((v19 & 1) == 0)
            {
              goto LABEL_6;
            }

            goto LABEL_23;
          }

LABEL_20:

          v8 = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_6:
  v8 = 0;
LABEL_8:

  return v8;
}

- (void)_setCompactRepresentation:(id)representation
{
  representationCopy = representation;
  v6 = self->__compactRepresentation;
  v7 = representationCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UITabAlternateRepresentation *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->__compactRepresentation, representation);
    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSpringLoaded:(BOOL)loaded
{
  if (self->_springLoaded != loaded)
  {
    loadedCopy = loaded;
    self->_springLoaded = loaded;
    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    [_linkedTabBarItem setSpringLoaded:loadedCopy];
  }
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_accessibilityIdentifier;
  v6 = identifierCopy;
  v11 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v11 copy];
    accessibilityIdentifier = self->_accessibilityIdentifier;
    self->_accessibilityIdentifier = v8;

    _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
    [_linkedTabBarItem setAccessibilityIdentifier:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setAccessibilityLabel:(id)label
{
  labelCopy = label;
  accessibilityLabel = [self accessibilityLabel];
  v6 = labelCopy;
  v7 = v6;
  if (accessibilityLabel == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityLabel)
    {
      v8 = [accessibilityLabel isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityLabel:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityLabel:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedLabel:(id)label
{
  labelCopy = label;
  accessibilityAttributedLabel = [self accessibilityAttributedLabel];
  v6 = labelCopy;
  v7 = v6;
  if (accessibilityAttributedLabel == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityAttributedLabel)
    {
      v8 = [accessibilityAttributedLabel isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedLabel:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityAttributedLabel:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityValue:(id)value
{
  valueCopy = value;
  accessibilityValue = [self accessibilityValue];
  v6 = valueCopy;
  v7 = v6;
  if (accessibilityValue == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityValue)
    {
      v8 = [accessibilityValue isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityValue:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityValue:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedValue:(id)value
{
  valueCopy = value;
  accessibilityAttributedValue = [self accessibilityAttributedValue];
  v6 = valueCopy;
  v7 = v6;
  if (accessibilityAttributedValue == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityAttributedValue)
    {
      v8 = [accessibilityAttributedValue isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedValue:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityAttributedValue:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityHint:(id)hint
{
  hintCopy = hint;
  accessibilityHint = [self accessibilityHint];
  v6 = hintCopy;
  v7 = v6;
  if (accessibilityHint == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityHint)
    {
      v8 = [accessibilityHint isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityHint:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityHint:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedHint:(id)hint
{
  hintCopy = hint;
  accessibilityAttributedHint = [self accessibilityAttributedHint];
  v6 = hintCopy;
  v7 = v6;
  if (accessibilityAttributedHint == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && accessibilityAttributedHint)
    {
      v8 = [accessibilityAttributedHint isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedHint:v7];
  _linkedTabBarItem = [(UITab *)self _linkedTabBarItem];
  [_linkedTabBarItem setAccessibilityAttributedHint:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (id)_descriptionWithRecursion:(BOOL)recursion
{
  recursionCopy = recursion;
  v5 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  [(UITab *)self _updateDescriptionWithBuilder:v5 recursive:recursionCopy];
  string = [v5 string];

  return string;
}

- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  builderCopy = builder;
  v6 = [builderCopy appendName:@"identifier" object:self->_identifier];
  title = [(UITab *)self title];
  v8 = [builderCopy appendName:@"title" object:title];

  subtitle = [(UITab *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(UITab *)self subtitle];
    v11 = [builderCopy appendName:@"subtitle" object:subtitle2];
  }

  image = [(UITab *)self image];

  if (image)
  {
    image2 = [(UITab *)self image];
    v14 = [builderCopy appendName:@"image" object:image2 usingLightweightDescription:1];
  }

  badgeValue = [(UITab *)self badgeValue];

  if (badgeValue)
  {
    badgeValue2 = [(UITab *)self badgeValue];
    v17 = [builderCopy appendName:@"badgeValue" object:badgeValue2];
  }

  preferredPlacement = [(UITab *)self preferredPlacement];
  if (preferredPlacement > 6)
  {
    v19 = @"<unknown>";
  }

  else
  {
    v19 = off_1E70FFD70[preferredPlacement];
  }

  v20 = [builderCopy appendName:@"placement" object:v19];
  if (self->_hidden)
  {
    v21 = [builderCopy appendName:@"hidden" BOOLValue:1];
  }

  if (self->_enabled)
  {
    v22 = [builderCopy appendName:@"enabled" BOOLValue:1];
  }

  if (self->_allowsHiding)
  {
    v23 = [builderCopy appendName:@"allowsHiding" BOOLValue:1];
  }

  viewController = self->_viewController;
  if (viewController)
  {
    v25 = [builderCopy appendName:@"viewController" object:viewController usingLightweightDescription:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained && recursiveCopy)
  {
    v27 = objc_loadWeakRetained(&self->_parent);
    v28 = [builderCopy appendName:@"parent" object:v27 usingLightweightDescription:1];
  }
}

id __30__UITab__recursiveDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _isGroup])
  {
    v3 = [v2 children];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setParent:(id)parent
{
  parentCopy = parent;
  _tabModel = [(UITab *)self _tabModel];
  objc_storeWeak(&self->_parent, parentCopy);

  _tabModel2 = [(UITab *)self _tabModel];
  if (_tabModel != _tabModel2)
  {
    [(UITab *)self _didChangeTabModel:_tabModel2];
  }
}

- (void)_setTabModel:(id)model
{
  obj = model;
  WeakRetained = objc_loadWeakRetained(&self->_tabModel);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tabModel, obj);
    [(UITab *)self _didChangeTabModel:obj];
  }
}

- (id)_filledVariantSelectedImage
{
  selectedImage = self->_selectedImage;
  v3 = +[_UIImageSymbolVariant filledVariant];
  v4 = [(UIImage *)selectedImage _imageByApplyingSymbolVariant:v3];

  return v4;
}

- (void)_visibilityDidChange
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel visibilityDidChangeForTab:self editing:0];
}

- (BOOL)_hasParent
{
  _parentGroup = [(UITab *)self _parentGroup];
  v3 = _parentGroup != 0;

  return v3;
}

- (BOOL)_isAncestorOfTab:(id)tab
{
  tabCopy = tab;
  if (!tabCopy)
  {
    return 0;
  }

  _parentGroup = tabCopy;
  do
  {
    v6 = _parentGroup;
    _parentGroup = [(UITab *)_parentGroup _parentGroup];

    v7 = _parentGroup == self;
  }

  while (_parentGroup && _parentGroup != self);

  return v7;
}

- (BOOL)_canBeReordered
{
  selfCopy = self;
  _parentGroup = [(UITab *)self _parentGroup];
  LOBYTE(selfCopy) = [_parentGroup _canReorderChild:selfCopy];

  return selfCopy;
}

- (void)_didChangeTabModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    if ([(UITab *)self allowsHiding])
    {
      v8 = 0;
      customizationStore = [modelCopy customizationStore];
      identifier = [(UITab *)self identifier];
      v7 = [customizationStore isHiddenForTabIdentifier:identifier isCustomized:&v8];

      if (v8 == 1)
      {
        self->_hidden = v7;
      }
    }
  }
}

- (CGRect)frameInView:(id)view
{
  viewCopy = view;
  _resolvedSourceItem = [(UITab *)self _resolvedSourceItem];
  [_resolvedSourceItem frameInView:viewCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_resolvedSourceItem
{
  selfCopy = self;
  if (self)
  {
    _tabModel = [self _tabModel];
    selfCopy = [_tabModel resolvedPopoverPresentationControllerSourceItemForTab:selfCopy];
  }

  return selfCopy;
}

- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window
{
  windowCopy = window;
  spaceCopy = space;
  _resolvedSourceItem = [(UITab *)self _resolvedSourceItem];
  [_resolvedSourceItem _frameInCoordinateSpace:spaceCopy window:windowCopy];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_nearestViewController
{
  _resolvedSourceItem = [(UITab *)self _resolvedSourceItem];
  _nearestViewController = [_resolvedSourceItem _nearestViewController];

  return _nearestViewController;
}

- (id)_sourceViewForPresentationInWindow:(id)window
{
  windowCopy = window;
  _resolvedSourceItem = [(UITab *)self _resolvedSourceItem];
  v6 = [_resolvedSourceItem _sourceViewForPresentationInWindow:windowCopy];

  return v6;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)window
{
  windowCopy = window;
  _resolvedSourceItem = [(UITab *)self _resolvedSourceItem];
  [_resolvedSourceItem _sourceRectForPresentationInWindow:windowCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end