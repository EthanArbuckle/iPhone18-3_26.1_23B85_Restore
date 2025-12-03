@interface UITabBarControllerSidebar
- (BOOL)_isEditable;
- (BOOL)_isEditing;
- (BOOL)_makeFirstResponderForTab:(id)tab;
- (BOOL)_resignFirstResponder;
- (UIContentConfiguration)footerContentConfiguration;
- (UIContentConfiguration)headerContentConfiguration;
- (UITabBarControllerSidebarDelegate)delegate;
- (UIView)bottomBarView;
- (_UITabGroup)_displayedGroup;
- (id)_actualHeaderContentConfiguration;
- (id)_contextMenuConfigurationForTab:(uint64_t)tab;
- (id)_customizationIdentifier;
- (id)_isSidebarSupportedAndVisible;
- (id)_itemsForAddingToDragSession:(void *)session tab:;
- (id)_itemsForBeginningDragSession:(void *)session tab:;
- (id)_leadingSwipeActionsConfigurationForTab:(uint64_t)tab;
- (id)_sessionPropertiesForDragSession:(uint64_t)session;
- (id)_sidebarItemForRequest:(uint64_t)request;
- (id)_sidebarViewForEditing:(id *)editing;
- (id)_trailingSwipeActionsConfigurationForTab:(uint64_t)tab;
- (id)_updatedSidebarItem:(id)item;
- (id)_visualStyle;
- (uint64_t)_operationForInsertingItemsFromSession:(void *)session intoTabGroup:(uint64_t)group atIndex:;
- (uint64_t)_resolvedLayout;
- (uint64_t)_sidebarAction:(void *)action group:(void *)group operationForAcceptingItemsFromDropSession:;
- (void)_didEndDisplayingTab:(uint64_t)tab;
- (void)_editingStateDidChange:(uint64_t)change;
- (void)_initWithTabBarController:(void *)controller;
- (void)_insertItemsFromSession:(void *)session intoTabGroup:(uint64_t)group atIndex:;
- (void)_scrollToHeaderAnimated:(BOOL)animated;
- (void)_scrollToTab:(id)tab atPosition:(unint64_t)position animated:(BOOL)animated;
- (void)_setCustomizationIdentifier:(id)identifier;
- (void)_setDisplayedGroup:(id)group;
- (void)_setEditable:(BOOL)editable;
- (void)_setEditing:(BOOL)editing;
- (void)_setHidden:(uint64_t)hidden source:;
- (void)_setSidebarViewDelegate:(uint64_t)delegate;
- (void)_setToolbarItems:(id)items;
- (void)_sidebarAction:(void *)action group:(void *)group acceptItemsFromDropSession:;
- (void)_tabModel;
- (void)_updateInitialSidebarVisibilityIfPossible;
- (void)_visibilityDidChangeForTabs:(uint64_t)tabs;
- (void)_willDisplayTab:(uint64_t)tab;
- (void)reconfigureItemForTab:(id)tab;
- (void)scrollToTarget:(id)target animated:(BOOL)animated;
- (void)setBottomBarView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)setFooterContentConfiguration:(id)configuration;
- (void)setHeaderContentConfiguration:(id)configuration;
- (void)setNavigationOverflowItems:(id)items;
- (void)setPreferredLayout:(int64_t)layout;
- (void)set_activeTransaction:(uint64_t)transaction;
@end

@implementation UITabBarControllerSidebar

- (uint64_t)_resolvedLayout
{
  if (result)
  {
    v1 = result;
    result = [result preferredLayout];
    if (result)
    {
      if (result == 3)
      {
        return 1;
      }
    }

    else
    {
      traitCollection = [*(v1 + 40) traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 6)
      {
        return 2;
      }

      else if (userInterfaceIdiom == 5)
      {
        if (_UISolariumEnabled())
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)_tabModel
{
  if (self)
  {
    v2 = self[5];
    if (v2)
    {
      v2 = v2[150];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (void)_initWithTabBarController:(void *)controller
{
  if (!controller)
  {
    return 0;
  }

  v6.receiver = controller;
  v6.super_class = UITabBarControllerSidebar;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[5] = a2;
    [v3 _updateInitialSidebarVisibilityIfPossible];
  }

  return v4;
}

- (id)_sidebarViewForEditing:(id *)editing
{
  if (editing)
  {
    editingCopy = editing;
    if (a2)
    {
      v4 = 0;
    }

    else
    {
      _visualStyle = [(UITabBarControllerSidebar *)editing _visualStyle];
      canDisplaySidebar = [_visualStyle canDisplaySidebar];

      v4 = canDisplaySidebar ^ 1;
    }

    if (!editingCopy[6] && (v4 & 1) == 0 && _UITabBarControllerWantsFloatingTabBar())
    {
      v7 = [[_UITabOutlineView alloc] initWithSidebar:editingCopy];
      v8 = editingCopy[6];
      editingCopy[6] = v7;

      WeakRetained = objc_loadWeakRetained(editingCopy + 14);
      v10 = editingCopy[6];
      if (v10)
      {
        objc_storeWeak(v10 + 58, WeakRetained);
      }

      -[_UITabOutlineView setPreferredStyle:](editingCopy[6], [editingCopy _sidebarViewStyle]);
      title = [editingCopy[5] title];
      [(_UITabOutlineView *)editingCopy[6] setTitle:title];

      if (editingCopy[9])
      {
        [(_UITabOutlineView *)editingCopy[6] updateBottomBarView];
      }

      if (editingCopy[15])
      {
        _outlineView = [editingCopy _outlineView];
        [(_UITabOutlineView *)_outlineView setOverrideBackgroundEffect:?];
      }
    }

    editing = editingCopy[6];
    v2 = vars8;
  }

  return editing;
}

- (id)_visualStyle
{
  if (self)
  {
    self = [(UITabBarController *)self[5] _visualStyle];
    v1 = vars8;
  }

  return self;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFDFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 1024;
    }

    else
    {
      v14 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xFBFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 2048;
    }

    else
    {
      v15 = 0;
    }

    *&self->_delegateImplements = *&self->_delegateImplements & 0xF7FF | v15;
    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    if (objc_opt_respondsToSelector())
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFFD | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFFB | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFF7 | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 16;
    }

    else
    {
      v19 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFEF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 32;
    }

    else
    {
      v20 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFDF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFFBF | v21);
    if (objc_opt_respondsToSelector())
    {
      v22 = 128;
    }

    else
    {
      v22 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFF7F | v22);
    if (objc_opt_respondsToSelector())
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFEFF | v23);
    if (objc_opt_respondsToSelector())
    {
      v24 = 512;
    }

    else
    {
      v24 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFDFF | v24);
    if (objc_opt_respondsToSelector())
    {
      v25 = 1024;
    }

    else
    {
      v25 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFFBFF | v25);
    if (objc_opt_respondsToSelector())
    {
      v26 = 2048;
    }

    else
    {
      v26 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFF7FF | v26);
    if (objc_opt_respondsToSelector())
    {
      v27 = 4096;
    }

    else
    {
      v27 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFEFFF | v27);
    if (objc_opt_respondsToSelector())
    {
      v28 = 0x8000;
    }

    else
    {
      v28 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFF7FFF | v28);
    if (objc_opt_respondsToSelector())
    {
      v29 = 0x10000;
    }

    else
    {
      v29 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFEFFFF | v29);
    if (objc_opt_respondsToSelector())
    {
      v30 = 0x2000;
    }

    else
    {
      v30 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFDFFF | v30);
    if (objc_opt_respondsToSelector())
    {
      v31 = 0x4000;
    }

    else
    {
      v31 = 0;
    }

    self->_uip_delegateImplements = (*&self->_uip_delegateImplements & 0xFFFFBFFF | v31);
  }
}

- (void)_setHidden:(uint64_t)hidden source:
{
  if (self && *(self + 32) != a2)
  {
    *(self + 32) = a2;
    *(self + 16) = *(self + 16) & 0xFD | (2 * (hidden != 0));
    if (hidden != 5)
    {
      _tabModel = [(UITabBarControllerSidebar *)self _tabModel];
      customizationStore = [_tabModel customizationStore];

      v8 = 1;
      if (!a2)
      {
        v8 = 2;
      }

      if (hidden)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [customizationStore setPreferredSidebarVisibility:v9];
    }

    _visualStyle = [(UITabBarControllerSidebar *)self _visualStyle];
    canDisplaySidebar = [_visualStyle canDisplaySidebar];

    if (canDisplaySidebar)
    {
      if (hidden == 5)
      {
        _visualStyle2 = [(UITabBarControllerSidebar *)self _visualStyle];
        [_visualStyle2 sidebarVisibilityDidChangeWithAnimator:0];
      }

      else
      {
        _visualStyle2 = objc_opt_new();
        if (*(self + 8))
        {
          delegate = [self delegate];
          [delegate tabBarController:*(self + 40) sidebarVisibilityWillChange:self animator:_visualStyle2];
        }

        _visualStyle3 = [(UITabBarControllerSidebar *)self _visualStyle];
        [_visualStyle3 sidebarVisibilityDidChangeWithAnimator:_visualStyle2];

        if (*(self + 8) & 1) == 0 && (*(self + 12))
        {
          _delegate = [self _delegate];
          [_delegate _tabBarController:*(self + 40) sidebarVisibilityDidChange:self];
        }

        if (hidden)
        {
          v15 = +[_UITabAnalytics sharedInstance];
          [(_UITabAnalytics *)v15 userDidToggleSidebar:hidden source:?];
        }
      }
    }
  }
}

- (void)_updateInitialSidebarVisibilityIfPossible
{
  if (![(UIViewController *)self->_tabBarController _hasAppeared])
  {
    _tabModel = [(UITabBarControllerSidebar *)self _tabModel];
    customizationStore = [_tabModel customizationStore];

    if ([customizationStore preferredSidebarVisibility] == 1)
    {
      [(UITabBarControllerSidebar *)self _setHidden:5 source:?];
    }
  }
}

- (void)setPreferredLayout:(int64_t)layout
{
  _resolvedLayout = [(UITabBarControllerSidebar *)self _resolvedLayout];
  self->_preferredLayout = layout;
  if (_resolvedLayout != [(UITabBarControllerSidebar *)self _resolvedLayout])
  {
    [(_UITabOutlineView *)&self->_outlineView->super.super.super.isa setPreferredStyle:?];
    _visualStyle = [(UITabBarControllerSidebar *)self _visualStyle];
    [_visualStyle sidebarLayoutDidChange];
  }
}

- (UIContentConfiguration)headerContentConfiguration
{
  v2 = [(UIContentConfiguration *)self->_headerContentConfiguration copyWithZone:0];

  return v2;
}

- (void)setHeaderContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  headerContentConfiguration = self->_headerContentConfiguration;
  v12 = configurationCopy;
  v6 = headerContentConfiguration;
  if (v6 == v12)
  {
    _outlineView = v12;
LABEL_9:

    v8 = v12;
    goto LABEL_10;
  }

  if (!v12 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(UIContentConfiguration *)v12 isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v6 = self->_headerContentConfiguration;
    v10 = [(UIContentConfiguration *)v12 copyWithZone:0];
    v11 = self->_headerContentConfiguration;
    self->_headerContentConfiguration = v10;

    _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)_outlineView headerContentConfigurationDidChange:v6];
    goto LABEL_9;
  }

LABEL_10:
}

- (UIContentConfiguration)footerContentConfiguration
{
  v2 = [(UIContentConfiguration *)self->_footerContentConfiguration copyWithZone:0];

  return v2;
}

- (void)setFooterContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  footerContentConfiguration = self->_footerContentConfiguration;
  v12 = configurationCopy;
  v6 = footerContentConfiguration;
  if (v6 == v12)
  {
    _outlineView = v12;
LABEL_9:

    v8 = v12;
    goto LABEL_10;
  }

  if (!v12 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(UIContentConfiguration *)v12 isEqual:v6];

  v8 = v12;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v6 = self->_footerContentConfiguration;
    v10 = [(UIContentConfiguration *)v12 copyWithZone:0];
    v11 = self->_footerContentConfiguration;
    self->_footerContentConfiguration = v10;

    _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)_outlineView footerContentConfigurationDidChange:v6];
    goto LABEL_9;
  }

LABEL_10:
}

- (UIView)bottomBarView
{
  if (*&self->_sidebarFlags)
  {
    v3 = self->_bottomBarView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBottomBarView:(id)view
{
  viewCopy = view;
  v11 = viewCopy;
  if (viewCopy)
  {
    v7 = [(NSArray *)self->_toolbarItems count];
    viewCopy = v11;
    if (v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarControllerSidebar.m" lineNumber:332 description:@"Setting a bottomBarView alongside _toolbarItems is not supported"];

      viewCopy = v11;
    }
  }

  if (self->_bottomBarView != viewCopy)
  {
    v8 = *&self->_sidebarFlags & 0xFE;
    if (viewCopy)
    {
      ++v8;
    }

    *&self->_sidebarFlags = v8;
    objc_storeStrong(&self->_bottomBarView, view);
    _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)_outlineView updateBottomBarView];

    viewCopy = v11;
  }
}

- (id)_actualHeaderContentConfiguration
{
  if (self)
  {
    self = self[7];
    v1 = vars8;
  }

  return self;
}

- (void)reconfigureItemForTab:(id)tab
{
  tabCopy = tab;
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)_outlineView reconfigureItemForTab:tabCopy];
}

- (void)scrollToTarget:(id)target animated:(BOOL)animated
{
  animatedCopy = animated;
  targetCopy = target;
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)_outlineView scrollToTarget:targetCopy animated:animatedCopy];
}

- (void)setNavigationOverflowItems:(id)items
{
  itemsCopy = items;
  if (self->_navigationOverflowItems != itemsCopy)
  {
    v8 = itemsCopy;
    objc_storeStrong(&self->_navigationOverflowItems, items);
    _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
    v7 = _outlineView;
    if (_outlineView)
    {
      [_outlineView _updateEditBarButtonItem];
    }

    itemsCopy = v8;
  }
}

- (BOOL)_makeFirstResponderForTab:(id)tab
{
  tabCopy = tab;
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  v6 = [(_UITabOutlineView *)_outlineView makeFirstResponderForTab:tabCopy];

  return v6;
}

- (BOOL)_resignFirstResponder
{
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  resignFirstResponder = [_outlineView resignFirstResponder];

  return resignFirstResponder;
}

- (void)_setSidebarViewDelegate:(uint64_t)delegate
{
  if (delegate)
  {
    obj = a2;
    objc_storeWeak((delegate + 112), obj);
    v3 = *(delegate + 48);
    if (v3)
    {
      objc_storeWeak((v3 + 464), obj);
    }
  }
}

- (id)_isSidebarSupportedAndVisible
{
  if (result)
  {
    _visualStyle = [(UITabBarControllerSidebar *)result _visualStyle];
    isDisplayingSidebar = [_visualStyle isDisplayingSidebar];

    return isDisplayingSidebar;
  }

  return result;
}

- (void)_willDisplayTab:(uint64_t)tab
{
  v4 = a2;
  if (tab)
  {
    if ((*(tab + 8) & 0x40) != 0)
    {
      delegate = [tab delegate];
      [delegate tabBarController:*(tab + 40) sidebar:tab willBeginDisplayingTab:v4];
    }

    else
    {
      if ((*(tab + 13) & 0x20) == 0)
      {
        goto LABEL_7;
      }

      delegate = [tab _delegate];
      [delegate _tabBarController:*(tab + 40) sidebar:tab willBeginDisplayingTab:v4];
    }
  }

LABEL_7:
}

- (void)_didEndDisplayingTab:(uint64_t)tab
{
  v4 = a2;
  if (tab)
  {
    if ((*(tab + 8) & 0x80) != 0)
    {
      delegate = [tab delegate];
      [delegate tabBarController:*(tab + 40) sidebar:tab didEndDisplayingTab:v4];
    }

    else
    {
      if ((*(tab + 13) & 0x40) == 0)
      {
        goto LABEL_7;
      }

      delegate = [tab _delegate];
      [delegate _tabBarController:*(tab + 40) sidebar:tab didEndDisplayingTab:v4];
    }
  }

LABEL_7:
}

- (id)_sidebarItemForRequest:(uint64_t)request
{
  v3 = a2;
  if (request)
  {
    if ((*(request + 8) & 2) != 0)
    {
      delegate = [request delegate];
      v4 = [delegate tabBarController:*(request + 40) sidebar:request itemForRequest:v3];
    }

    else
    {
      if ((*(request + 12) & 8) == 0)
      {
        v4 = [UITabSidebarItem itemFromRequest:v3];
        goto LABEL_8;
      }

      v4 = [_UITabSidebarItem itemFromRequest:v3];
      delegate = [request _delegate];
      [delegate _tabBarController:*(request + 40) sidebar:request configureItem:v4];
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (id)_updatedSidebarItem:(id)item
{
  v3 = a2;
  v4 = v3;
  if (item)
  {
    if ((*(item + 4) & 4) != 0)
    {
      v5 = [v3 copy];
      delegate = [item delegate];
      [delegate tabBarController:*(item + 5) sidebar:item updateItem:v5];
    }

    else
    {
      if ((*(item + 12) & 0x10) == 0)
      {
        v5 = 0;
LABEL_8:
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = v4;
        }

        item = v7;

        goto LABEL_12;
      }

      v5 = [v3 copy];
      delegate = [item _delegate];
      [delegate _tabBarController:*(item + 5) sidebar:item updateItem:v5];
    }

    goto LABEL_8;
  }

LABEL_12:

  return item;
}

- (id)_leadingSwipeActionsConfigurationForTab:(uint64_t)tab
{
  v3 = a2;
  v4 = v3;
  if (tab)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__leadingSwipeActionsConfigurationForTab_ object:tab file:@"UITabBarControllerSidebar.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"tab != nil"}];
    }

    if ((*(tab + 8) & 8) != 0)
    {
      _delegate = [tab _delegate];
      v6 = [_delegate tabBarController:*(tab + 40) sidebar:tab leadingSwipeActionsConfigurationForTab:v4];
    }

    else
    {
      if ((*(tab + 12) & 0x20) == 0)
      {
        tab = 0;
        goto LABEL_10;
      }

      _delegate = [tab _delegate];
      v6 = [_delegate _tabBarController:*(tab + 40) sidebar:tab leadingSwipeActionsConfigurationForTab:v4];
    }

    tab = v6;
  }

LABEL_10:

  return tab;
}

- (id)_trailingSwipeActionsConfigurationForTab:(uint64_t)tab
{
  v3 = a2;
  v4 = v3;
  if (tab)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__trailingSwipeActionsConfigurationForTab_ object:tab file:@"UITabBarControllerSidebar.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"tab != nil"}];
    }

    if ((*(tab + 8) & 0x10) != 0)
    {
      _delegate = [tab _delegate];
      v6 = [_delegate tabBarController:*(tab + 40) sidebar:tab trailingSwipeActionsConfigurationForTab:v4];
    }

    else
    {
      if ((*(tab + 12) & 0x40) == 0)
      {
        tab = 0;
        goto LABEL_10;
      }

      _delegate = [tab _delegate];
      v6 = [_delegate _tabBarController:*(tab + 40) sidebar:tab trailingSwipeActionsConfigurationForTab:v4];
    }

    tab = v6;
  }

LABEL_10:

  return tab;
}

- (id)_contextMenuConfigurationForTab:(uint64_t)tab
{
  v3 = a2;
  if (tab)
  {
    if ((*(tab + 8) & 0x20) != 0)
    {
      delegate = [tab delegate];
      v5 = [delegate tabBarController:*(tab + 40) sidebar:tab contextMenuConfigurationForTab:v3];
    }

    else
    {
      if ((*(tab + 12) & 0x80) == 0)
      {
        tab = 0;
        goto LABEL_8;
      }

      delegate = [tab _delegate];
      v5 = [delegate _tabBarController:*(tab + 40) sidebar:tab contextMenuConfigurationForTab:v3];
    }

    tab = v5;
  }

LABEL_8:

  return tab;
}

- (id)_itemsForBeginningDragSession:(void *)session tab:
{
  v5 = a2;
  sessionCopy = session;
  if (self)
  {
    if ((*(self + 8) & 0x100) != 0)
    {
      delegate = [self delegate];
      v8 = [delegate tabBarController:*(self + 40) sidebar:self itemsForBeginningDragSession:v5 tab:sessionCopy];
    }

    else
    {
      if ((*(self + 13) & 1) == 0)
      {
        self = MEMORY[0x1E695E0F0];
        goto LABEL_8;
      }

      delegate = [self _delegate];
      v8 = [delegate _tabBarController:*(self + 40) sidebar:self itemsForBeginningDragSession:v5 tab:sessionCopy];
    }

    self = v8;
  }

LABEL_8:

  return self;
}

- (id)_itemsForAddingToDragSession:(void *)session tab:
{
  v5 = a2;
  sessionCopy = session;
  if (self)
  {
    if ((*(self + 8) & 0x200) != 0)
    {
      delegate = [self delegate];
      v8 = [delegate tabBarController:*(self + 40) sidebar:self itemsForAddingToDragSession:v5 tab:sessionCopy];
    }

    else
    {
      if ((*(self + 13) & 2) == 0)
      {
        self = MEMORY[0x1E695E0F0];
        goto LABEL_8;
      }

      delegate = [self _delegate];
      v8 = [delegate _tabBarController:*(self + 40) sidebar:self itemsForAddingToDragSession:v5 tab:sessionCopy];
    }

    self = v8;
  }

LABEL_8:

  return self;
}

- (id)_sessionPropertiesForDragSession:(uint64_t)session
{
  v3 = a2;
  if (session)
  {
    if ((*(session + 13) & 4) != 0)
    {
      _delegate = [session _delegate];
      session = [_delegate _tabBarController:*(session + 40) sidebar:session sessionPropertiesForDragSession:v3];
    }

    else
    {
      session = 0;
    }
  }

  return session;
}

- (uint64_t)_sidebarAction:(void *)action group:(void *)group operationForAcceptingItemsFromDropSession:
{
  v7 = a2;
  actionCopy = action;
  groupCopy = group;
  if (self)
  {
    if ((*(self + 8) & 0x400) != 0)
    {
      delegate = [self delegate];
      v11 = [delegate tabBarController:*(self + 40) sidebar:self sidebarAction:v7 group:actionCopy operationForAcceptingItemsFromDropSession:groupCopy];
    }

    else
    {
      if ((*(self + 13) & 8) == 0)
      {
        self = 0;
        goto LABEL_8;
      }

      delegate = [self _delegate];
      v11 = [delegate _tabBarController:*(self + 40) sidebar:self sidebarAction:v7 group:actionCopy operationForAcceptingItemsFromDropSession:groupCopy];
    }

    self = v11;
  }

LABEL_8:

  return self;
}

- (void)_sidebarAction:(void *)action group:(void *)group acceptItemsFromDropSession:
{
  v10 = a2;
  actionCopy = action;
  groupCopy = group;
  if (self)
  {
    if ((*(self + 8) & 0x800) != 0)
    {
      delegate = [self delegate];
      [delegate tabBarController:*(self + 40) sidebar:self sidebarAction:v10 group:actionCopy acceptItemsFromDropSession:groupCopy];
    }

    else
    {
      if ((*(self + 13) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      delegate = [self _delegate];
      [delegate _tabBarController:*(self + 40) sidebar:self sidebarAction:v10 group:actionCopy acceptItemsFromDropSession:groupCopy];
    }
  }

LABEL_7:
}

- (uint64_t)_operationForInsertingItemsFromSession:(void *)session intoTabGroup:(uint64_t)group atIndex:
{
  v7 = a2;
  sessionCopy = session;
  if (!self || (~*(self + 12) & 0x18000) != 0)
  {
    v10 = 0;
  }

  else
  {
    _delegate = [self _delegate];
    v10 = [_delegate _tabBarController:*(self + 40) sidebar:self operationForInsertingItemsFromDropSession:v7 intoTabGroup:sessionCopy atDisplayIndex:group];
  }

  return v10;
}

- (void)_insertItemsFromSession:(void *)session intoTabGroup:(uint64_t)group atIndex:
{
  v9 = a2;
  sessionCopy = session;
  if (self && (~*(self + 12) & 0x18000) == 0)
  {
    _delegate = [self _delegate];
    [_delegate _tabBarController:*(self + 40) sidebar:self insertItemsFromDropSession:v9 intoTabGroup:sessionCopy atDisplayIndex:group];
  }
}

- (void)_scrollToHeaderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[UITabSidebarScrollTarget targetForHeader];
  [(UITabBarControllerSidebar *)self scrollToTarget:v5 animated:animatedCopy];
}

- (void)_scrollToTab:(id)tab atPosition:(unint64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  position = [UITabSidebarScrollTarget targetForTab:tab, position];
  [(UITabBarControllerSidebar *)self scrollToTarget:position animated:animatedCopy];
}

- (id)_customizationIdentifier
{
  if (self)
  {
    self = self->_tabBarController;
  }

  return [(UITabBarControllerSidebar *)self customizationIdentifier];
}

- (void)_setCustomizationIdentifier:(id)identifier
{
  if (self)
  {
    self = self->_tabBarController;
  }

  [(UITabBarControllerSidebar *)self setCustomizationIdentifier:identifier];
}

- (BOOL)_isEditing
{
  if (self)
  {
    self = self->_tabBarController;
  }

  return [(UITabBarControllerSidebar *)self isEditing];
}

- (void)_setEditing:(BOOL)editing
{
  if (self)
  {
    self = self->_tabBarController;
  }

  [(UITabBarControllerSidebar *)self setEditing:editing];
}

- (void)_editingStateDidChange:(uint64_t)change
{
  if (change && (*(change + 12) & 2) != 0)
  {
    _delegate = [change _delegate];
    [_delegate _tabbarController:*(change + 40) sidebar:change editingStateDidChange:a2];
  }
}

- (void)_visibilityDidChangeForTabs:(uint64_t)tabs
{
  v3 = a2;
  if (tabs && (*(tabs + 12) & 4) != 0)
  {
    v5 = v3;
    _delegate = [tabs _delegate];
    [_delegate _tabBarController:*(tabs + 40) sidebar:tabs visibilityDidChangeForTabs:v5];

    v3 = v5;
  }
}

- (void)_setToolbarItems:(id)items
{
  itemsCopy = items;
  toolbarItems = self->_toolbarItems;
  v19 = itemsCopy;
  v7 = toolbarItems;
  if (v7 == v19)
  {

    _outlineView2 = v19;
LABEL_18:

    v9 = v19;
    goto LABEL_19;
  }

  if (!v19 || !v7)
  {

    v9 = v19;
LABEL_8:
    v11 = [(NSArray *)v9 copy];
    v12 = self->_toolbarItems;
    self->_toolbarItems = v11;

    if ([(NSArray *)v19 count]&& (*&self->_sidebarFlags & 1) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarControllerSidebar.m" lineNumber:701 description:@"Setting _toolbarItems alongside a _bottomBarView is not supported"];
    }

    if ([(NSArray *)v19 count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = self->_bottomBarView;
      }

      else
      {
        v14 = [UIToolbar alloc];
        _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
        [_outlineView frame];
        v13 = [(UIToolbar *)v14 initWithFrame:0.0, 0.0];
      }

      [(UIView *)v13 setItems:v19];
    }

    else
    {
      v13 = 0;
    }

    bottomBarView = self->_bottomBarView;
    self->_bottomBarView = v13;
    v17 = v13;

    _outlineView2 = [(UITabBarControllerSidebar *)self _outlineView];

    [(_UITabOutlineView *)_outlineView2 updateBottomBarView];
    goto LABEL_18;
  }

  v8 = [(NSArray *)v19 isEqual:v7];

  v9 = v19;
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
}

- (BOOL)_isEditable
{
  _tabModel = [(UITabBarControllerSidebar *)self _tabModel];
  isEditable = [_tabModel isEditable];

  return isEditable;
}

- (void)_setEditable:(BOOL)editable
{
  editableCopy = editable;
  _tabModel = [(UITabBarControllerSidebar *)self _tabModel];
  [_tabModel setEditable:editableCopy];
}

- (_UITabGroup)_displayedGroup
{
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  v3 = _outlineView;
  if (_outlineView)
  {
    v4 = *(_outlineView + 480);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_setDisplayedGroup:(id)group
{
  groupCopy = group;
  _outlineView = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)_outlineView setDisplayedGroup:groupCopy];
}

- (UITabBarControllerSidebarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)set_activeTransaction:(uint64_t)transaction
{
  if (transaction)
  {
    objc_storeStrong((transaction + 104), a2);
  }
}

@end