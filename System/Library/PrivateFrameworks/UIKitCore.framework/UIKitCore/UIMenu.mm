@interface UIMenu
+ (UIMenu)menuWithTitle:(NSString *)title children:(NSArray *)children;
+ (UIMenu)menuWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIMenuIdentifier)identifier options:(UIMenuOptions)options children:(NSArray *)children;
+ (UIMenu)menuWithTitle:(id)title imageName:(id)name identifier:(id)identifier options:(unint64_t)options children:(id)children;
+ (id)_defaultMenuImageNames;
+ (id)_defaultMenuTitles;
+ (id)_defaultMenuWithIdentifier:(id)identifier options:(unint64_t)options children:(id)children;
- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit;
- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (BOOL)_hasGlobalHeader;
- (BOOL)_hasVisibleChildren;
- (BOOL)_shouldShowSelectionState;
- (BOOL)isEqual:(id)equal;
- (NSArray)selectedElements;
- (NSString)description;
- (UIMenu)initWithCoder:(NSCoder *)coder;
- (UIMenu)initWithMenu:(id)menu overrideChildren:(id)children additionalOptions:(unint64_t)options;
- (UIMenu)initWithTitle:(id)title image:(id)image imageName:(id)name identifier:(id)identifier options:(unint64_t)options children:(id)children;
- (UIMenu)menuByReplacingChildren:(NSArray *)newChildren;
- (UIMenuForcedAutomaticSelectionDelegate)forcedAutomaticSelectionDelegate;
- (UIView)headerView;
- (id)_copyPreservingMetadataAndSharingLeafObservers:(BOOL)observers;
- (id)_copyPreservingMetadataAndSharingLeafObserversIfNeeded;
- (id)_copyWithOptions:(unint64_t)options;
- (id)_menuByReplacingChildren:(id)children additionalOptions:(unint64_t)options;
- (id)_safeCopy;
- (id)childElementForElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (id)recursiveDescription;
- (id)recursivelySelectDefaultForcedSelection:(BOOL)selection;
- (int64_t)_resolvedElementSize;
- (uint64_t)_hasVisibleChild;
- (uint64_t)_shouldAlwaysShowCommandsWithoutTargets;
- (uint64_t)_shouldShowAlternatesInContextMenus;
- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit;
- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (void)_addRecursiveDescriptionForElement:(id)element toString:(id)string level:(unint64_t)level;
- (void)_elementStateDidChange:(id)change;
- (void)_elementWillPerformAction:(id)action;
- (void)_resolveElementSizeWithContext:(id)context;
- (void)_setPinnedFooterElement:(id)element;
- (void)_setResolvedElementSize:(int64_t)size;
- (void)_setSurfacesSelectionState:(BOOL)state;
- (void)encodeWithCoder:(id)coder;
- (void)establishInitialDefaultSingleSelection;
- (void)setForceAutomaticSelection:(BOOL)selection;
- (void)updateChildrenForSingleSelectedElement:(id)element;
@end

@implementation UIMenu

- (void)establishInitialDefaultSingleSelection
{
  v12 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__37;
  v23 = __Block_byref_object_dispose__37;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIMenu_establishInitialDefaultSingleSelection__block_invoke;
  aBlock[3] = &unk_1E70FE780;
  aBlock[4] = &v19;
  v3 = _Block_copy(aBlock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(UIMenu *)self children];
  v5 = [children countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __48__UIMenu_establishInitialDefaultSingleSelection__block_invoke_2;
        v13[3] = &unk_1E70FE7A8;
        v13[4] = &v19;
        [v8 _acceptMenuVisit:v13 commandVisit:v3 actionVisit:v3 deferredElementVisit:{0, v12}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [children countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v5);
  }

  if ([(UIMenu *)self forceAutomaticSelection])
  {
    if (!v20[5])
    {
      v9 = [(UIMenu *)self recursivelySelectDefaultForcedSelection:1];
      v10 = v20[5];
      v20[5] = v9;

      if (!v20[5])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v12 object:self file:@"UIMenu.m" lineNumber:706 description:@"Menu does not have a valid element for default selection"];
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __48__UIMenu_establishInitialDefaultSingleSelection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    [v3 updateChildrenForSingleSelectedElement:0];
  }

  else
  {
    v4 = [v3 selectedElements];
    v5 = [v4 firstObject];

    if (v5)
    {
      [v6 updateChildrenForSingleSelectedElement:v5];
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
    }
  }
}

- (NSArray)selectedElements
{
  v3 = objc_opt_new();
  recursivelyPopulateSelectedElements(self, v3);
  array = [v3 array];

  return array;
}

void __48__UIMenu_establishInitialDefaultSingleSelection__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 state] == 1)
  {
    v4 = *(*(a1 + 32) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (v6)
    {
      [v7 _setState:0 notifyingObservers:0];
    }

    else
    {
      objc_storeStrong(v5, a2);
    }
  }
}

- (UIView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    headerView = self->_headerViewProvider;
    if (headerView)
    {
      v4 = headerView[2](headerView, self);
      v5 = self->_headerView;
      self->_headerView = v4;

      headerView = self->_headerView;
    }
  }

  return headerView;
}

- (BOOL)_hasGlobalHeader
{
  title = [(UIMenuElement *)self title];
  if ([title length])
  {
    v4 = 1;
  }

  else
  {
    headerView = [(UIMenu *)self headerView];
    v4 = headerView != 0;
  }

  return v4;
}

- (int64_t)_resolvedElementSize
{
  result = self->_resolvedElementSize;
  if (result == -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:323 description:@"UIMenu._resolvedElementSize cannot be called before the menu has been prepared for display"];

    return self->_resolvedElementSize;
  }

  return result;
}

+ (UIMenu)menuWithTitle:(NSString *)title children:(NSArray *)children
{
  v5 = children;
  v6 = title;
  v7 = [[UIMenu alloc] initWithTitle:v6 image:0 imageName:0 identifier:0 options:0 children:v5];

  return v7;
}

+ (UIMenu)menuWithTitle:(id)title imageName:(id)name identifier:(id)identifier options:(unint64_t)options children:(id)children
{
  childrenCopy = children;
  identifierCopy = identifier;
  nameCopy = name;
  titleCopy = title;
  v15 = [[UIMenu alloc] initWithTitle:titleCopy image:0 imageName:nameCopy identifier:identifierCopy options:options children:childrenCopy];

  return v15;
}

+ (UIMenu)menuWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIMenuIdentifier)identifier options:(UIMenuOptions)options children:(NSArray *)children
{
  v11 = children;
  v12 = identifier;
  v13 = image;
  v14 = title;
  v15 = [[UIMenu alloc] initWithTitle:v14 image:v13 imageName:0 identifier:v12 options:options children:v11];

  return v15;
}

- (UIMenu)initWithTitle:(id)title image:(id)image imageName:(id)name identifier:(id)identifier options:(unint64_t)options children:(id)children
{
  identifierCopy = identifier;
  childrenCopy = children;
  v26.receiver = self;
  v26.super_class = UIMenu;
  v16 = [(UIMenuElement *)&v26 initWithTitle:title image:image imageName:name];
  if (v16)
  {
    if (identifierCopy)
    {
      imageCopy = [identifierCopy copy];
    }

    else
    {
      v18 = MEMORY[0x1E696AEC0];
      image = [MEMORY[0x1E696AFB0] UUID];
      imageCopy = [v18 stringWithFormat:@"com.apple.menu.dynamic.%@", image];
    }

    objc_storeStrong(&v16->_identifier, imageCopy);
    if (!identifierCopy)
    {

      imageCopy = image;
    }

    v16->_options = options;
    v19 = [childrenCopy copy];
    children = v16->_children;
    v16->_children = v19;

    v21 = ((v16->_options >> 2) & 1) - 1;
    v16->_preferredElementSize = v21;
    v16->_resolvedElementSize = v21;
    if ((v16->_options & 0x20) != 0)
    {
      [(UIMenu *)v16 addAsStateObserver];
      [(UIMenu *)v16 establishInitialDefaultSingleSelection];
    }

    v22 = objc_opt_new();
    v23 = v22;
    if ((options & 8) != 0)
    {
      v16->_hasCustomizedDisplayPreferences = 1;
      [(UIMenuDisplayPreferences *)v22 setMaximumNumberOfTitleLines:1];
    }

    if ((options & 0x40) != 0)
    {
      v16->_hasCustomizedDisplayPreferences = 1;
      [(UIMenuDisplayPreferences *)v23 setMaximumNumberOfTitleLines:0];
    }

    displayPreferences = v16->_displayPreferences;
    v16->_displayPreferences = v23;
  }

  return v16;
}

- (UIMenu)initWithMenu:(id)menu overrideChildren:(id)children additionalOptions:(unint64_t)options
{
  menuCopy = menu;
  childrenCopy = children;
  _imageOrName = [menuCopy _imageOrName];
  title = [menuCopy title];
  _asMenuElementImage = [_imageOrName _asMenuElementImage];
  _asMenuElementImageName = [_imageOrName _asMenuElementImageName];
  v32.receiver = self;
  v32.super_class = UIMenu;
  v14 = [(UIMenuElement *)&v32 initWithTitle:title image:_asMenuElementImage imageName:_asMenuElementImageName];

  if (v14)
  {
    attributedTitle = [menuCopy attributedTitle];
    attributedTitle = v14->super._attributedTitle;
    v14->super._attributedTitle = attributedTitle;

    subtitle = [menuCopy subtitle];
    subtitle = v14->super._subtitle;
    v14->super._subtitle = subtitle;

    identifier = [menuCopy identifier];
    identifier = v14->_identifier;
    v14->_identifier = identifier;

    v14->_options = [menuCopy options] | options;
    children = childrenCopy;
    if (!childrenCopy)
    {
      children = [menuCopy children];
    }

    objc_storeStrong(&v14->_children, children);
    if (!childrenCopy)
    {
    }

    accessibilityIdentifier = [menuCopy accessibilityIdentifier];
    accessibilityIdentifier = v14->super._accessibilityIdentifier;
    v14->super._accessibilityIdentifier = accessibilityIdentifier;

    v14->_forceAutomaticSelection = [menuCopy forceAutomaticSelection];
    v14->_behaviorOptions = [menuCopy behaviorOptions];
    headerViewProvider = [menuCopy headerViewProvider];
    headerViewProvider = v14->_headerViewProvider;
    v14->_headerViewProvider = headerViewProvider;

    _pinnedFooterElement = [menuCopy _pinnedFooterElement];
    pinnedFooterElement = v14->_pinnedFooterElement;
    v14->_pinnedFooterElement = _pinnedFooterElement;

    v14->_preferredElementSize = [menuCopy preferredElementSize];
    v14->_resolvedElementSize = menuCopy[11];
    v14->super.__preferredDisplayMode = [menuCopy _preferredDisplayMode];
    v14->__surfacesSelectionState = [menuCopy _surfacesSelectionState];
    _internalIdentifier = [menuCopy _internalIdentifier];
    [(UIMenuElement *)v14 set_internalIdentifier:_internalIdentifier];

    displayPreferences = [menuCopy displayPreferences];
    [(UIMenu *)v14 setDisplayPreferences:displayPreferences];

    _accessoryAction = [menuCopy _accessoryAction];
    [(UIMenuElement *)v14 set_accessoryAction:_accessoryAction];

    if ((v14->_options & 0x20) != 0 || v14->_forceAutomaticSelection)
    {
      [(UIMenu *)v14 addAsStateObserver];
      [(UIMenu *)v14 establishInitialDefaultSingleSelection];
    }
  }

  return v14;
}

- (UIMenu)menuByReplacingChildren:(NSArray *)newChildren
{
  v4 = newChildren;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSArray *)v4 copy];

  v7 = [v5 initWithMenu:self overrideChildren:v6];

  return v7;
}

- (id)_menuByReplacingChildren:(id)children additionalOptions:(unint64_t)options
{
  childrenCopy = children;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsOverlayUI() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:253 description:@"This may only be used by SpringBoard."];
  }

  v8 = objc_alloc(objc_opt_class());
  v9 = [childrenCopy copy];

  v10 = [v8 initWithMenu:self overrideChildren:v9 additionalOptions:options];

  return v10;
}

- (void)_setSurfacesSelectionState:(BOOL)state
{
  stateCopy = state;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:259 description:@"This may only be used by SpringBoard."];
  }

  if (self->__surfacesSelectionState != stateCopy)
  {
    self->__surfacesSelectionState = stateCopy;
  }
}

- (uint64_t)_shouldAlwaysShowCommandsWithoutTargets
{
  if (self && (*(self + 113) & 2) != 0)
  {
    if (qword_1ED49A8C0 != -1)
    {
      dispatch_once(&qword_1ED49A8C0, &__block_literal_global_112);
    }

    v1 = _MergedGlobals_11_3;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void __49__UIMenu__shouldAlwaysShowCommandsWithoutTargets__block_invoke()
{
  if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsOverlayUI())
  {
    _MergedGlobals_11_3 = 1;
  }

  else
  {
    _MergedGlobals_11_3 = _UIApplicationProcessIsUIKitester();
    if ((_MergedGlobals_11_3 & 1) == 0 && os_variant_has_internal_diagnostics())
    {
      v0 = *(__UILogGetCategoryCachedImpl("UIMenu", &qword_1ED49A8C8) + 8);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        *v1 = 0;
        _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Process is not approved to use the UIMenuOptionsPrivateAlwaysShowCommandsWithoutTargets SPI. Ignoring.", v1, 2u);
      }
    }
  }
}

- (uint64_t)_shouldShowAlternatesInContextMenus
{
  if (self && (*(self + 113) & 4) != 0)
  {
    if (qword_1ED49A8D0 != -1)
    {
      dispatch_once(&qword_1ED49A8D0, &__block_literal_global_228);
    }

    v1 = byte_1ED49A8B9;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void __45__UIMenu__shouldShowAlternatesInContextMenus__block_invoke()
{
  if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsOverlayUI())
  {
    byte_1ED49A8B9 = 1;
  }

  else
  {
    byte_1ED49A8B9 = _UIApplicationProcessIsUIKitester();
    if ((byte_1ED49A8B9 & 1) == 0 && os_variant_has_internal_diagnostics())
    {
      v0 = *(__UILogGetCategoryCachedImpl("UIMenu", &qword_1ED49A8D8) + 8);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        *v1 = 0;
        _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Process is not approved to use the UIMenuOptionsPrivateShowAlternates SPI. Ignoring.", v1, 2u);
      }
    }
  }
}

- (void)_setResolvedElementSize:(int64_t)size
{
  if (size == -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:317 description:@"Cannot set the resolved element size to be .automatic"];
  }

  self->_resolvedElementSize = size;
}

- (void)_setPinnedFooterElement:(id)element
{
  elementCopy = element;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsControlCenterHostApp() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:330 description:@"This may only be used by SpringBoard."];
  }

  pinnedFooterElement = self->_pinnedFooterElement;
  self->_pinnedFooterElement = elementCopy;
}

- (BOOL)_hasVisibleChildren
{
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsOverlayUI() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:337 description:@"This may only be used by SpringBoard."];
  }

  return [(UIMenu *)self _hasVisibleChild];
}

- (uint64_t)_hasVisibleChild
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  children = [self children];
  v2 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = *v10;
  while (2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v10 != v3)
      {
        objc_enumerationMutation(children);
      }

      v5 = *(*(&v9 + 1) + 8 * i);
      v6 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        if (([(UIMenu *)v5 _hasVisibleChild]& 1) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (![v5 _isLeaf])
        {
          continue;
        }

        if (([v5 attributes] & 4) == 0)
        {
LABEL_16:

          v2 = 1;
          goto LABEL_17;
        }
      }
    }

    v2 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIMenu;
  [(UIMenuElement *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
  [coderCopy encodeInteger:self->_preferredElementSize forKey:@"preferredElementSize"];
  [coderCopy encodeInteger:self->_resolvedElementSize forKey:@"resolvedElementSize"];
  [coderCopy encodeObject:self->_children forKey:@"children"];
  [coderCopy encodeObject:self->_displayPreferences forKey:@"displayPreferences"];
  if (self->_forceAutomaticSelection)
  {
    [coderCopy encodeBool:1 forKey:@"automaticSelection"];
  }

  behaviorOptions = self->_behaviorOptions;
  if (behaviorOptions)
  {
    [coderCopy encodeInteger:behaviorOptions forKey:@"behaviorOptions"];
  }

  if (self->__surfacesSelectionState)
  {
    [coderCopy encodeBool:1 forKey:@"surfacesSelectionState"];
  }

  p_metadata = &self->_metadata;
  if (p_metadata->isPreparedForDisplay)
  {
    [coderCopy encodeBool:1 forKey:@"metadata.isPreparedForDisplay"];
  }

  if (p_metadata->hasVisibleSelectedItem)
  {
    [coderCopy encodeBool:1 forKey:@"metadata.hasVisibleSelectedItem"];
  }

  if (p_metadata->hasDeepHierarchy)
  {
    [coderCopy encodeBool:1 forKey:@"metadata.hasDeepHierarchy"];
  }

  if (p_metadata->hasAtLeastOneVisibleItem)
  {
    [coderCopy encodeBool:1 forKey:@"metadata.hasAtLeastOneVisibleItem"];
  }
}

- (UIMenu)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v16.receiver = self;
  v16.super_class = UIMenu;
  v5 = [(UIMenuElement *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_options = [(NSCoder *)v4 decodeIntegerForKey:@"options"];
    v5->_preferredElementSize = [(NSCoder *)v4 decodeIntegerForKey:@"preferredElementSize"];
    v5->_resolvedElementSize = [(NSCoder *)v4 decodeIntegerForKey:@"resolvedElementSize"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [(NSCoder *)v4 decodeObjectOfClasses:v10 forKey:@"children"];
    children = v5->_children;
    v5->_children = v11;

    v5->_forceAutomaticSelection = [(NSCoder *)v4 decodeBoolForKey:@"automaticSelection"];
    v5->_behaviorOptions = [(NSCoder *)v4 decodeIntegerForKey:@"behaviorOptions"];
    v5->__surfacesSelectionState = [(NSCoder *)v4 decodeBoolForKey:@"surfacesSelectionState"];
    v13 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayPreferences"];
    displayPreferences = v5->_displayPreferences;
    v5->_displayPreferences = v13;

    v5->_metadata.isPreparedForDisplay = [(NSCoder *)v4 decodeBoolForKey:@"metadata.isPreparedForDisplay"];
    v5->_metadata.hasVisibleSelectedItem = [(NSCoder *)v4 decodeBoolForKey:@"metadata.hasVisibleSelectedItem"];
    v5->_metadata.hasDeepHierarchy = [(NSCoder *)v4 decodeBoolForKey:@"metadata.hasDeepHierarchy"];
    v5->_metadata.hasAtLeastOneVisibleItem = [(NSCoder *)v4 decodeBoolForKey:@"metadata.hasAtLeastOneVisibleItem"];
    if ((v5->_options & 0x20) != 0 || v5->_forceAutomaticSelection)
    {
      [(UIMenu *)v5 addAsStateObserver];
      [(UIMenu *)v5 establishInitialDefaultSingleSelection];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  children = [(UIMenu *)self children];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = children;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copy];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(UIMenu *)self menuByReplacingChildren:array];

  return v12;
}

- (id)_safeCopy
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(UIMenu *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(children);
        }

        _safeCopy = [*(*(&v12 + 1) + 8 * i) _safeCopy];
        [array addObject:_safeCopy];
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [[UIMenu alloc] initWithMenu:self overrideChildren:array];

  return v10;
}

- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit
{
  if (visit)
  {
    (*(visit + 2))(visit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit
{
  if (visit)
  {
    return (*(visit + 2))(visit, self);
  }

  else
  {
    return 0;
  }
}

- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (visit)
  {
    (*(visit + 2))(visit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (visit)
  {
    return (*(visit + 2))(visit, self);
  }

  else
  {
    return 0;
  }
}

- (id)_copyPreservingMetadataAndSharingLeafObserversIfNeeded
{
  v3 = ([(UIMenu *)self options]& 0x20) != 0 || [(UIMenu *)self forceAutomaticSelection];

  return [(UIMenu *)self _copyPreservingMetadataAndSharingLeafObservers:v3];
}

- (id)_copyPreservingMetadataAndSharingLeafObservers:(BOOL)observers
{
  observersCopy = observers;
  selfCopy = self;
  v34 = *MEMORY[0x1E69E9840];
  children = [(UIMenu *)self children];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [children countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v25 = selfCopy;
  v8 = 0;
  v9 = 0;
  v10 = *v30;
  v11 = off_1E70EA000;
  v26 = observersCopy;
  do
  {
    v12 = 0;
    do
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(children);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      if (observersCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        _copyPreservingMetadataAndSharingLeafObserversIfNeeded = [v13 _copyPreservingMetadataAndSharingLeafObservers:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _copyPreservingMetadataAndSharingLeafObserversIfNeeded = [v13 _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
        }

        else
        {
          _copyPreservingMetadataAndSharingLeafObserversIfNeeded = [v13 copy];
        }
      }

      v15 = _copyPreservingMetadataAndSharingLeafObserversIfNeeded;
      if (_copyPreservingMetadataAndSharingLeafObserversIfNeeded != v13)
      {
        if (v9)
        {
          if (observersCopy)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = [children mutableCopy];
          if (observersCopy)
          {
LABEL_15:
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __57__UIMenu__copyPreservingMetadataAndSharingLeafObservers___block_invoke;
            aBlock[3] = &unk_1E70FE758;
            v28 = v15;
            v16 = v9;
            v17 = v7;
            v18 = v10;
            v19 = v11;
            v20 = children;
            v21 = _Block_copy(aBlock);
            [v13 _acceptMenuVisit:0 commandVisit:v21 actionVisit:v21 deferredElementVisit:0];

            children = v20;
            v11 = v19;
            v10 = v18;
            v7 = v17;
            v9 = v16;
            observersCopy = v26;
          }
        }

        [v9 setObject:v15 atIndexedSubscript:{v8, v25}];
      }

      ++v8;

      ++v12;
    }

    while (v7 != v12);
    v22 = [children countByEnumeratingWithState:&v29 objects:v33 count:16];
    v7 = v22;
  }

  while (v22);
  selfCopy = v25;
  if (!v9)
  {
LABEL_24:
    v23 = selfCopy;
    v9 = 0;
    goto LABEL_25;
  }

  v23 = [(UIMenu *)v25 menuByReplacingChildren:v9];
  [(UIMenu *)v23 setMetadata:[(UIMenu *)v25 metadata]& 0xFFFFFFFFFFLL];
LABEL_25:

  return v23;
}

void __57__UIMenu__copyPreservingMetadataAndSharingLeafObservers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 _getStateObservers];
  [v3 _setStateObservers:v4];
}

- (id)_copyWithOptions:(unint64_t)options
{
  result = [objc_alloc(objc_opt_class()) initWithMenu:self overrideChildren:0];
  *(result + 14) = options;
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  title = [(UIMenuElement *)self title];
  v5 = [title length];

  if (v5)
  {
    title2 = [(UIMenuElement *)self title];
    [v3 appendFormat:@"; title = %@", title2];
  }

  identifier = [(UIMenu *)self identifier];
  [v3 appendFormat:@"; identifier = %@", identifier];

  image = [(UIMenuElement *)self image];
  if (image)
  {
    [v3 appendFormat:@"; image = <%@: %p", objc_opt_class(), image];
    if ([image isSymbolImage])
    {
      v9 = _UIImageName(image);
      [v3 appendFormat:@"; symbol = (%@)", v9];
    }

    [v3 appendString:@">"];
  }

  if ([(UIMenu *)self options])
  {
    array = [MEMORY[0x1E695DF70] array];
    if (([(UIMenu *)self options]& 1) != 0)
    {
      [array addObject:@"Inline"];
    }

    if (([(UIMenu *)self options]& 2) != 0)
    {
      [array addObject:@"Destructive"];
    }

    if (([(UIMenu *)self options]& 4) != 0)
    {
      [array addObject:@"Compact"];
    }

    if (([(UIMenu *)self options]& 0x10) != 0)
    {
      [array addObject:@"AlwaysDisplayChildImages"];
    }

    if (([(UIMenu *)self options]& 0x20) != 0)
    {
      [array addObject:@"SingleSelection"];
    }

    if (([(UIMenu *)self options]& 0x80) != 0)
    {
      [array addObject:@"Palette"];
    }

    v11 = [array componentsJoinedByString:@"|"];
    [v3 appendFormat:@"; options = (%@)", v11];
  }

  if ([(UIMenu *)self forceAutomaticSelection])
  {
    [v3 appendString:@"; forcesAutomaticSelection"];
  }

  selectedElements = [(UIMenu *)self selectedElements];
  v13 = [selectedElements count];

  if (v13)
  {
    selectedElements2 = [(UIMenu *)self selectedElements];
    [v3 appendFormat:@"; currentSelection = <NSArray: %p>", selectedElements2];
  }

  if (self->_hasCustomizedDisplayPreferences)
  {
    displayPreferences = [(UIMenu *)self displayPreferences];
    v16 = objc_opt_class();
    displayPreferences2 = [(UIMenu *)self displayPreferences];
    [v3 appendFormat:@"; displayPreferences = <%@: %p>", v16, displayPreferences2];
  }

  preferredElementSize = [(UIMenu *)self preferredElementSize];
  if (preferredElementSize <= UIMenuElementSizeLarge)
  {
    [v3 appendString:off_1E70FE908[preferredElementSize]];
  }

  children = [(UIMenu *)self children];
  [v3 appendFormat:@"; children = <NSArray: %p>>", children];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:equalCopy[13]];

  return v5;
}

- (id)childElementForElement:(id)element
{
  v29 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__37;
  v26 = __Block_byref_object_dispose__37;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  children = [(UIMenu *)self children];
  v6 = [children countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(children);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __33__UIMenu_childElementForElement___block_invoke;
      v15[3] = &unk_1E70FE7D0;
      v16 = elementCopy;
      v17 = &v22;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__UIMenu_childElementForElement___block_invoke_2;
      v12[3] = &unk_1E70FE7F8;
      v13 = v16;
      v14 = &v22;
      [v9 _acceptMenuVisit:v15 leafVisit:v12];
      LOBYTE(v9) = v23[5] == 0;

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [children countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __33__UIMenu_childElementForElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 childElementForElement:*(a1 + 32)];
  if (v3)
  {
    v4 = v3;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
    v3 = v4;
  }
}

void __33__UIMenu_childElementForElement___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)_elementWillPerformAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] != 1)
  {
    [actionCopy _setState:1 notifyingObservers:1];
  }
}

- (void)_elementStateDidChange:(id)change
{
  changeCopy = change;
  if (([(UIMenu *)self options]& 0x20) != 0 || [(UIMenu *)self forceAutomaticSelection])
  {
    v5 = [(UIMenu *)self childElementForElement:changeCopy];
    v6 = v5;
    if (v5 != changeCopy)
    {
      [v5 _setState:objc_msgSend(changeCopy notifyingObservers:{"state"), 0}];
    }

    [(UIMenu *)self updateChildrenForSingleSelectedElement:v6];
    if ([(UIMenu *)self forceAutomaticSelection])
    {
      if ([v6 state] != 1)
      {
        v7 = [(UIMenu *)self recursivelySelectDefaultForcedSelection:0];

        v6 = v7;
        if (!v7)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenu.m" lineNumber:785 description:@"Menu does not have a valid element for default selection"];

          v6 = 0;
        }
      }

      forcedAutomaticSelectionDelegate = [(UIMenu *)self forcedAutomaticSelectionDelegate];

      if (forcedAutomaticSelectionDelegate)
      {
        forcedAutomaticSelectionDelegate2 = [(UIMenu *)self forcedAutomaticSelectionDelegate];
        [forcedAutomaticSelectionDelegate2 forcedSelectionOfMenu:self willChangeTo:v6];
      }
    }
  }
}

- (void)setForceAutomaticSelection:(BOOL)selection
{
  if (self->_forceAutomaticSelection != selection)
  {
    selectionCopy = selection;
    self->_forceAutomaticSelection = selection;
    options = [(UIMenu *)self options];
    if (selectionCopy)
    {
      if ((options & 0x20) == 0)
      {
        [(UIMenu *)self addAsStateObserver];
      }

      [(UIMenu *)self establishInitialDefaultSingleSelection];
    }

    else if ((options & 0x20) == 0)
    {

      [(UIMenu *)self removeAsStateObserver];
    }
  }
}

- (void)updateChildrenForSingleSelectedElement:(id)element
{
  v22 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__UIMenu_updateChildrenForSingleSelectedElement___block_invoke;
  aBlock[3] = &unk_1E70FE758;
  v5 = elementCopy;
  v20 = v5;
  v6 = _Block_copy(aBlock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(UIMenu *)self children];
  v8 = [children countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(children);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __49__UIMenu_updateChildrenForSingleSelectedElement___block_invoke_2;
        v13[3] = &unk_1E70FE820;
        v14 = v5;
        [v12 _acceptMenuVisit:v13 commandVisit:v6 actionVisit:v6 deferredElementVisit:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [children countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }
}

void __49__UIMenu_updateChildrenForSingleSelectedElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0 && objc_msgSend(v3, "state") == 1)
  {
    [v3 _setState:0 notifyingObservers:0];
  }
}

- (id)recursivelySelectDefaultForcedSelection:(BOOL)selection
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__37;
  v25 = __Block_byref_object_dispose__37;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__UIMenu_recursivelySelectDefaultForcedSelection___block_invoke;
  aBlock[3] = &unk_1E70FE848;
  selectionCopy = selection;
  aBlock[4] = &v21;
  v5 = _Block_copy(aBlock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(UIMenu *)self children];
  v7 = [children countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v7)
  {
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(children);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __50__UIMenu_recursivelySelectDefaultForcedSelection___block_invoke_2;
      v13[3] = &unk_1E70FE870;
      v13[4] = &v21;
      selectionCopy2 = selection;
      [v10 _acceptMenuVisit:v13 commandVisit:v5 actionVisit:v5 deferredElementVisit:0];
      if (v22[5])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [children countByEnumeratingWithState:&v15 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __50__UIMenu_recursivelySelectDefaultForcedSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 _setState:1 notifyingObservers:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __50__UIMenu_recursivelySelectDefaultForcedSelection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recursivelySelectDefaultForcedSelection:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)recursiveDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [(UIMenu *)self _addRecursiveDescriptionForElement:self toString:string level:0];
  v4 = [string copy];

  return v4;
}

- (void)_addRecursiveDescriptionForElement:(id)element toString:(id)string level:(unint64_t)level
{
  v23 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  stringCopy = string;
  if (level)
  {
    levelCopy = level;
    do
    {
      [stringCopy appendString:@"|"];
      --levelCopy;
    }

    while (levelCopy);
  }

  [stringCopy appendFormat:@"%@\n", elementCopy];
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    children = [elementCopy children];
    v14 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(children);
          }

          [(UIMenu *)self _addRecursiveDescriptionForElement:*(*(&v18 + 1) + 8 * v17++) toString:stringCopy level:level + 1];
        }

        while (v15 != v17);
        v15 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (UIMenuForcedAutomaticSelectionDelegate)forcedAutomaticSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forcedAutomaticSelectionDelegate);

  return WeakRetained;
}

- (BOOL)_shouldShowSelectionState
{
  if (![(UIMenu *)self _surfacesSelectionState])
  {
    return 0;
  }

  selectedElements = [(UIMenu *)self selectedElements];
  v4 = [selectedElements count] != 0;

  return v4;
}

+ (id)_defaultMenuTitles
{
  if (_MergedGlobals_1342 != -1)
  {
    dispatch_once(&_MergedGlobals_1342, &__block_literal_global_639);
  }

  v3 = qword_1ED4A2508;

  return v3;
}

void __42__UIMenu_DefaultMenus___defaultMenuTitles__block_invoke()
{
  v21[18] = *MEMORY[0x1E69E9840];
  v20[0] = @"com.apple.menu.services";
  v19 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_APP_SERVICES", @"Services");
  v21[0] = v19;
  v20[1] = @"com.apple.menu.file";
  v18 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_FILE", @"File");
  v21[1] = v18;
  v20[2] = @"com.apple.menu.open-recent";
  v17 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FILE_OPEN_RECENT", @"Open Recent");
  v21[2] = v17;
  v20[3] = @"com.apple.menu.edit";
  v16 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_EDIT", @"Edit");
  v21[3] = v16;
  v20[4] = @"com.apple.menu.find";
  v15 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_EDIT_FIND_MENU", @"Find");
  v21[4] = v15;
  v20[5] = @"com.apple.menu.spelling";
  v14 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_EDIT_SPELLING_AND_GRAMMAR", @"Spelling and Grammar");
  v21[5] = v14;
  v20[6] = @"com.apple.menu.substitutions";
  v13 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_EDIT_SUBSTITUTIONS", @"Substitutions");
  v21[6] = v13;
  v20[7] = @"com.apple.menu.transformations";
  v12 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_EDIT_TRANSFORMATIONS", @"Transformations");
  v21[7] = v12;
  v20[8] = @"com.apple.command.speech";
  v0 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_EDIT_SPEECH", @"Speech");
  v21[8] = v0;
  v20[9] = @"com.apple.menu.format";
  v1 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_FORMAT", @"Format");
  v21[9] = v1;
  v20[10] = @"com.apple.menu.font";
  v2 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_FONT", @"Font");
  v21[10] = v2;
  v20[11] = @"com.apple.menu.text";
  v3 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXT", @"Text");
  v21[11] = v3;
  v20[12] = @"com.apple.menu.writing-direction";
  v4 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXT_WRITING_DIRECTION", @"Writing Direction");
  v21[12] = v4;
  v20[13] = @"com.apple.menu.view";
  v5 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_VIEW", @"View");
  v21[13] = v5;
  v20[14] = @"com.apple.menu.window";
  v6 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_WINDOW", @"Window");
  v21[14] = v6;
  v20[15] = @"com.apple.menu.help";
  v7 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_HELP", @"Help");
  v21[15] = v7;
  v20[16] = @"com.apple.menu.text-style";
  v8 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUDITEM_FORMAT_TEXT_STYLE", @"Text Style");
  v21[16] = v8;
  v20[17] = @"com.apple.menu.autofill";
  v9 = _UINSLocalizedStringWithDefaultValue(@"KEYSHORTCUTHUD_AUTOFILL", @"AutoFill");
  v21[17] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:18];
  v11 = qword_1ED4A2508;
  qword_1ED4A2508 = v10;
}

+ (id)_defaultMenuImageNames
{
  if (qword_1ED4A2510 != -1)
  {
    dispatch_once(&qword_1ED4A2510, &__block_literal_global_112_0);
  }

  v3 = qword_1ED4A2518;

  return v3;
}

void __46__UIMenu_DefaultMenus___defaultMenuImageNames__block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.menu.font";
  v2[1] = @"com.apple.menu.text";
  v3[0] = @"textformat";
  v3[1] = @"text.alignleft";
  v2[2] = @"com.apple.menu.writing-direction";
  v2[3] = @"com.apple.menu.find";
  v3[2] = @"arrow.left.arrow.right";
  v3[3] = @"text.page.badge.magnifyingglass";
  v2[4] = @"com.apple.menu.autofill";
  v2[5] = @"com.apple.menu.spelling";
  v3[4] = @"rectangle.and.pencil.and.ellipsis";
  v3[5] = @"textformat.characters.dottedunderline";
  v2[6] = @"com.apple.menu.substitutions";
  v2[7] = @"com.apple.menu.transformations";
  v3[6] = @"arrow.trianglehead.2.clockwise";
  v3[7] = @"textformat.characters";
  v2[8] = @"com.apple.command.speech";
  v2[9] = @"com.apple.menu.open-recent";
  v3[8] = @"text.bubble";
  v3[9] = @"clock";
  v2[10] = @"com.apple.menu.format";
  v3[10] = @"bold.italic.underline";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = qword_1ED4A2518;
  qword_1ED4A2518 = v0;
}

+ (id)_defaultMenuWithIdentifier:(id)identifier options:(unint64_t)options children:(id)children
{
  childrenCopy = children;
  identifierCopy = identifier;
  _defaultMenuTitles = [objc_opt_self() _defaultMenuTitles];
  v11 = [_defaultMenuTitles objectForKeyedSubscript:identifierCopy];

  if (!v11)
  {
    if ([identifierCopy isEqualToString:@"com.apple.menu.application"] && (+[UIApplication _applicationNameForMenus](UIApplication, "_applicationNameForMenus"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v12;
    }

    else
    {
      v11 = &stru_1EFB14550;
    }
  }

  _defaultMenuImageNames = [self _defaultMenuImageNames];
  v14 = [_defaultMenuImageNames objectForKeyedSubscript:identifierCopy];
  v15 = [self menuWithTitle:v11 imageName:v14 identifier:identifierCopy options:options children:childrenCopy];

  [v15 setBehaviorOptions:1];

  return v15;
}

- (void)_resolveElementSizeWithContext:(id)context
{
  elementSizeSolver = [context elementSizeSolver];
  [(UIMenu *)self _setResolvedElementSize:elementSizeSolver[2](elementSizeSolver, self)];
}

@end