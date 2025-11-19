@interface UITab
- (BOOL)_canBeReordered;
- (BOOL)_hasParent;
- (BOOL)_isAncestorOfTab:(id)a3;
- (BOOL)_isCustomizable;
- (BOOL)hasVisiblePlacement;
- (BOOL)isEqual:(id)a3;
- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4;
- (CGRect)_sourceRectForPresentationInWindow:(id)a3;
- (CGRect)frameInView:(id)a3;
- (NSArray)_displayedViewControllers;
- (UITab)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6;
- (UITabBarController)tabBarController;
- (UITabBarItem)_linkedTabBarItem;
- (UITabGroup)managingTabGroup;
- (UITabGroup)parent;
- (UIViewController)viewController;
- (_UITabModel)_tabModel;
- (id)_descriptionWithRecursion:(BOOL)a3;
- (id)_filledVariantImage;
- (id)_filledVariantSelectedImage;
- (id)_nearestViewController;
- (id)_parentGroup;
- (id)_resolvedSourceItem;
- (id)_sourceViewForPresentationInWindow:(id)a3;
- (int64_t)_tabPlacement;
- (void)_contentDidChange;
- (void)_customizabilityDidChange;
- (void)_didChangeTabModel:(id)a3;
- (void)_resetViewController;
- (void)_setCompactRepresentation:(id)a3;
- (void)_setDisplayedViewControllers:(id)a3;
- (void)_setParent:(id)a3;
- (void)_setTabModel:(id)a3;
- (void)_updateDescriptionWithBuilder:(id)a3 recursive:(BOOL)a4;
- (void)_updateLinkedTabBarItem;
- (void)_visibilityDidChange;
- (void)setAccessibilityAttributedHint:(id)a3;
- (void)setAccessibilityAttributedLabel:(id)a3;
- (void)setAccessibilityAttributedValue:(id)a3;
- (void)setAccessibilityHint:(id)a3;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityValue:(id)a3;
- (void)setAllowsHiding:(BOOL)a3;
- (void)setBadgeValue:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setPreferredPlacement:(int64_t)a3;
- (void)setSelectedImage:(id)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation UITab

- (_UITabModel)_tabModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tabModel);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = [(UITab *)self _parentGroup];
    v5 = [v6 _tabModel];
  }

  return v5;
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
  v3 = [(UITab *)self preferredPlacement];
  if (os_variant_has_internal_diagnostics() && ([(UITab *)self identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabOverridesDefaultPlacement(v6), v6, (v7 & 1) != 0) || !v3)
  {
    v4 = [(UITab *)self _parentGroup];

    if (v4)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

- (void)_contentDidChange
{
  v3 = [(UITab *)self _tabModel];
  [v3 tabContentDidChange:self];
}

- (UITabBarItem)_linkedTabBarItem
{
  v2 = [(UITab *)self _existingDisplayedViewController];
  v3 = [v2 tabBarItem];

  return v3;
}

- (void)_updateLinkedTabBarItem
{
  v3 = [(UITab *)self _linkedTabBarItem];
  if (v3)
  {
    v15 = v3;
    v4 = [(UITab *)self title];
    [v15 setTitle:v4];

    v5 = [(UITab *)self _filledVariantImage];
    [v15 setImage:v5];

    v6 = [(UITab *)self _filledVariantSelectedImage];
    [v15 setSelectedImage:v6];

    v7 = [(UITab *)self badgeValue];
    [v15 setBadgeValue:v7];

    [v15 setEnabled:{-[UITab isEnabled](self, "isEnabled")}];
    v8 = [(UITab *)self accessibilityIdentifier];
    [v15 setAccessibilityIdentifier:v8];

    v9 = [self accessibilityLabel];
    [v15 setAccessibilityLabel:v9];

    v10 = [self accessibilityAttributedLabel];
    [v15 setAccessibilityAttributedLabel:v10];

    v11 = [self accessibilityValue];
    [v15 setAccessibilityValue:v11];

    v12 = [self accessibilityAttributedValue];
    [v15 setAccessibilityAttributedValue:v12];

    v13 = [self accessibilityHint];
    [v15 setAccessibilityHint:v13];

    v14 = [self accessibilityAttributedHint];
    [v15 setAccessibilityAttributedHint:v14];

    [v15 setSpringLoaded:{-[UITab isSpringLoaded](self, "isSpringLoaded")}];
    v3 = v15;
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
  v3 = [(UITab *)self _tabModel];
  [v3 customizabilityDidChangeForTab:self];
}

- (UITabBarController)tabBarController
{
  v2 = [(UITab *)self _tabModel];
  v3 = [v2 tabBarController];

  return v3;
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
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UITab.m" lineNumber:202 description:@"UIViewController cannot be shared between multiple UITab."];
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
  v2 = [(UITab *)self parent];
  v3 = [v2 managingTabGroup];

  return v3;
}

- (UITab)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = UITab;
  v14 = [(UITab *)&v24 init];
  if (v14)
  {
    v15 = [v12 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v10 copy];
    title = v14->_title;
    v14->_title = v17;

    v19 = [v11 copy];
    image = v14->_image;
    v14->_image = v19;

    v21 = _Block_copy(v13);
    viewControllerProvider = v14->_viewControllerProvider;
    v14->_viewControllerProvider = v21;

    *&v14->_springLoaded = 257;
    v14->_preferredPlacement = 0;
  }

  return v14;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = self->_title;
  v6 = v4;
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

    v10 = [(UITab *)self _linkedTabBarItem];
    [v10 setTitle:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = self->_image;
  v6 = v4;
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

    v10 = [(UITab *)self _linkedTabBarItem];
    v11 = [(UITab *)self _filledVariantImage];
    [v10 setImage:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSelectedImage:(id)a3
{
  v4 = a3;
  v5 = self->_selectedImage;
  v6 = v4;
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

    v10 = [(UITab *)self _linkedTabBarItem];
    v11 = [(UITab *)self _filledVariantSelectedImage];
    [v10 setSelectedImage:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = self->_subtitle;
  v6 = v4;
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

- (void)setBadgeValue:(id)a3
{
  v4 = a3;
  v5 = self->_badgeValue;
  v6 = v4;
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

    v10 = [(UITab *)self _linkedTabBarItem];
    [v10 setBadgeValue:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setPreferredPlacement:(int64_t)a3
{
  if (self->_preferredPlacement != a3)
  {
    self->_preferredPlacement = a3;
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

  v7 = [(UITab *)self _tabModel];
  v8 = [v7 customizationStore];
  v9 = [v8 favoriteOrderContainsTab:self];

  return v9;
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(UITab *)self _visibilityDidChange];
  }
}

- (void)setAllowsHiding:(BOOL)a3
{
  if (self->_allowsHiding != a3)
  {
    self->_allowsHiding = a3;
    [(UITab *)self _customizabilityDidChange];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    v6 = [(UITab *)self _linkedTabBarItem];
    [v6 setEnabled:v4];

    [(UITab *)self _contentDidChange];
  }
}

- (NSArray)_displayedViewControllers
{
  v3 = self->_displayedViewControllers;
  if (![(NSArray *)v3 count])
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = [(UITab *)self viewController];
    v6 = [v4 arrayWithObjects:{v5, 0}];

    v3 = v6;
  }

  return v3;
}

- (void)_setDisplayedViewControllers:(id)a3
{
  v4 = a3;
  if (![v4 count] || objc_msgSend(v4, "count") == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), -[UITab viewController](self, "viewController"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {

    v4 = 0;
  }

  displayedViewControllers = self->_displayedViewControllers;
  v13 = v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UITab *)self preferredPlacement];
    if (v5 == [(UITab *)v4 preferredPlacement])
    {
      v6 = [(UITab *)self isHidden];
      if (v6 == [(UITab *)v4 isHidden])
      {
        v7 = [(UITab *)self allowsHiding];
        if (v7 == [(UITab *)v4 allowsHiding])
        {
          v10 = [(UITab *)self identifier];
          v11 = [(UITab *)v4 identifier];
          v12 = v10;
          v13 = v11;
          v14 = v13;
          if (v12 == v13)
          {
          }

          else
          {
            if (!v12 || !v13)
            {
              goto LABEL_20;
            }

            v15 = [v12 isEqual:v13];

            if ((v15 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v16 = [(UITab *)self title];
          v17 = [(UITab *)v4 title];
          v12 = v16;
          v18 = v17;
          v14 = v18;
          if (v12 == v18)
          {

LABEL_23:
            v20 = [(UITab *)self image];
            v21 = [(UITab *)v4 image];
            v22 = _deferringTokenEqualToToken(v20, v21);

            if (!v22)
            {
              goto LABEL_6;
            }

            v23 = [(UITab *)self selectedImage];
            v24 = [(UITab *)v4 selectedImage];
            v25 = _deferringTokenEqualToToken(v23, v24);

            if (!v25)
            {
              goto LABEL_6;
            }

            v26 = [(UITab *)self subtitle];
            v27 = [(UITab *)v4 subtitle];
            v28 = _deferringTokenEqualToToken(v26, v27);

            if (!v28)
            {
              goto LABEL_6;
            }

            v12 = [(UITab *)self badgeValue];
            v14 = [(UITab *)v4 badgeValue];
            v8 = _deferringTokenEqualToToken(v12, v14);
LABEL_21:

            goto LABEL_8;
          }

          if (v12 && v18)
          {
            v19 = [v12 isEqual:v18];

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

- (void)_setCompactRepresentation:(id)a3
{
  v5 = a3;
  v6 = self->__compactRepresentation;
  v7 = v5;
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
    objc_storeStrong(&self->__compactRepresentation, a3);
    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setSpringLoaded:(BOOL)a3
{
  if (self->_springLoaded != a3)
  {
    v4 = a3;
    self->_springLoaded = a3;
    v5 = [(UITab *)self _linkedTabBarItem];
    [v5 setSpringLoaded:v4];
  }
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_accessibilityIdentifier;
  v6 = v4;
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

    v10 = [(UITab *)self _linkedTabBarItem];
    [v10 setAccessibilityIdentifier:v11];

    [(UITab *)self _contentDidChange];
  }

LABEL_9:
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityLabel];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityLabel:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityLabel:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedLabel:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityAttributedLabel];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedLabel:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityAttributedLabel:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityValue:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityValue];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityValue:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityValue:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedValue:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityAttributedValue];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedValue:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityAttributedValue:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityHint:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityHint];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityHint:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityHint:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (void)setAccessibilityAttributedHint:(id)a3
{
  v4 = a3;
  v5 = [self accessibilityAttributedHint];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v6 && v5)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  v10.receiver = self;
  v10.super_class = UITab;
  [&v10 setAccessibilityAttributedHint:v7];
  v9 = [(UITab *)self _linkedTabBarItem];
  [v9 setAccessibilityAttributedHint:v7];

  if ((v8 & 1) == 0)
  {
    [(UITab *)self _contentDidChange];
  }
}

- (id)_descriptionWithRecursion:(BOOL)a3
{
  v3 = a3;
  v5 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  [(UITab *)self _updateDescriptionWithBuilder:v5 recursive:v3];
  v6 = [v5 string];

  return v6;
}

- (void)_updateDescriptionWithBuilder:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  v6 = [v29 appendName:@"identifier" object:self->_identifier];
  v7 = [(UITab *)self title];
  v8 = [v29 appendName:@"title" object:v7];

  v9 = [(UITab *)self subtitle];

  if (v9)
  {
    v10 = [(UITab *)self subtitle];
    v11 = [v29 appendName:@"subtitle" object:v10];
  }

  v12 = [(UITab *)self image];

  if (v12)
  {
    v13 = [(UITab *)self image];
    v14 = [v29 appendName:@"image" object:v13 usingLightweightDescription:1];
  }

  v15 = [(UITab *)self badgeValue];

  if (v15)
  {
    v16 = [(UITab *)self badgeValue];
    v17 = [v29 appendName:@"badgeValue" object:v16];
  }

  v18 = [(UITab *)self preferredPlacement];
  if (v18 > 6)
  {
    v19 = @"<unknown>";
  }

  else
  {
    v19 = off_1E70FFD70[v18];
  }

  v20 = [v29 appendName:@"placement" object:v19];
  if (self->_hidden)
  {
    v21 = [v29 appendName:@"hidden" BOOLValue:1];
  }

  if (self->_enabled)
  {
    v22 = [v29 appendName:@"enabled" BOOLValue:1];
  }

  if (self->_allowsHiding)
  {
    v23 = [v29 appendName:@"allowsHiding" BOOLValue:1];
  }

  viewController = self->_viewController;
  if (viewController)
  {
    v25 = [v29 appendName:@"viewController" object:viewController usingLightweightDescription:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained && v4)
  {
    v27 = objc_loadWeakRetained(&self->_parent);
    v28 = [v29 appendName:@"parent" object:v27 usingLightweightDescription:1];
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

- (void)_setParent:(id)a3
{
  v4 = a3;
  v6 = [(UITab *)self _tabModel];
  objc_storeWeak(&self->_parent, v4);

  v5 = [(UITab *)self _tabModel];
  if (v6 != v5)
  {
    [(UITab *)self _didChangeTabModel:v5];
  }
}

- (void)_setTabModel:(id)a3
{
  obj = a3;
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
  v3 = [(UITab *)self _tabModel];
  [v3 visibilityDidChangeForTab:self editing:0];
}

- (BOOL)_hasParent
{
  v2 = [(UITab *)self _parentGroup];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isAncestorOfTab:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = v5;
    v5 = [(UITab *)v5 _parentGroup];

    v7 = v5 == self;
  }

  while (v5 && v5 != self);

  return v7;
}

- (BOOL)_canBeReordered
{
  v2 = self;
  v3 = [(UITab *)self _parentGroup];
  LOBYTE(v2) = [v3 _canReorderChild:v2];

  return v2;
}

- (void)_didChangeTabModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(UITab *)self allowsHiding])
    {
      v8 = 0;
      v5 = [v4 customizationStore];
      v6 = [(UITab *)self identifier];
      v7 = [v5 isHiddenForTabIdentifier:v6 isCustomized:&v8];

      if (v8 == 1)
      {
        self->_hidden = v7;
      }
    }
  }
}

- (CGRect)frameInView:(id)a3
{
  v4 = a3;
  v5 = [(UITab *)self _resolvedSourceItem];
  [v5 frameInView:v4];
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
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _tabModel];
    v1 = [v2 resolvedPopoverPresentationControllerSourceItemForTab:v1];
  }

  return v1;
}

- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITab *)self _resolvedSourceItem];
  [v8 _frameInCoordinateSpace:v7 window:v6];
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
  v2 = [(UITab *)self _resolvedSourceItem];
  v3 = [v2 _nearestViewController];

  return v3;
}

- (id)_sourceViewForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UITab *)self _resolvedSourceItem];
  v6 = [v5 _sourceViewForPresentationInWindow:v4];

  return v6;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UITab *)self _resolvedSourceItem];
  [v5 _sourceRectForPresentationInWindow:v4];
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