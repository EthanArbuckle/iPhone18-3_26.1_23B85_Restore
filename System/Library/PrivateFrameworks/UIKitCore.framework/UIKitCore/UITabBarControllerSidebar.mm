@interface UITabBarControllerSidebar
- (BOOL)_isEditable;
- (BOOL)_isEditing;
- (BOOL)_makeFirstResponderForTab:(id)a3;
- (BOOL)_resignFirstResponder;
- (UIContentConfiguration)footerContentConfiguration;
- (UIContentConfiguration)headerContentConfiguration;
- (UITabBarControllerSidebarDelegate)delegate;
- (UIView)bottomBarView;
- (_UITabGroup)_displayedGroup;
- (id)_actualHeaderContentConfiguration;
- (id)_contextMenuConfigurationForTab:(uint64_t)a1;
- (id)_customizationIdentifier;
- (id)_isSidebarSupportedAndVisible;
- (id)_itemsForAddingToDragSession:(void *)a3 tab:;
- (id)_itemsForBeginningDragSession:(void *)a3 tab:;
- (id)_leadingSwipeActionsConfigurationForTab:(uint64_t)a1;
- (id)_sessionPropertiesForDragSession:(uint64_t)a1;
- (id)_sidebarItemForRequest:(uint64_t)a1;
- (id)_sidebarViewForEditing:(id *)a1;
- (id)_trailingSwipeActionsConfigurationForTab:(uint64_t)a1;
- (id)_updatedSidebarItem:(id)a1;
- (id)_visualStyle;
- (uint64_t)_operationForInsertingItemsFromSession:(void *)a3 intoTabGroup:(uint64_t)a4 atIndex:;
- (uint64_t)_resolvedLayout;
- (uint64_t)_sidebarAction:(void *)a3 group:(void *)a4 operationForAcceptingItemsFromDropSession:;
- (void)_didEndDisplayingTab:(uint64_t)a1;
- (void)_editingStateDidChange:(uint64_t)a1;
- (void)_initWithTabBarController:(void *)a1;
- (void)_insertItemsFromSession:(void *)a3 intoTabGroup:(uint64_t)a4 atIndex:;
- (void)_scrollToHeaderAnimated:(BOOL)a3;
- (void)_scrollToTab:(id)a3 atPosition:(unint64_t)a4 animated:(BOOL)a5;
- (void)_setCustomizationIdentifier:(id)a3;
- (void)_setDisplayedGroup:(id)a3;
- (void)_setEditable:(BOOL)a3;
- (void)_setEditing:(BOOL)a3;
- (void)_setHidden:(uint64_t)a3 source:;
- (void)_setSidebarViewDelegate:(uint64_t)a1;
- (void)_setToolbarItems:(id)a3;
- (void)_sidebarAction:(void *)a3 group:(void *)a4 acceptItemsFromDropSession:;
- (void)_tabModel;
- (void)_updateInitialSidebarVisibilityIfPossible;
- (void)_visibilityDidChangeForTabs:(uint64_t)a1;
- (void)_willDisplayTab:(uint64_t)a1;
- (void)reconfigureItemForTab:(id)a3;
- (void)scrollToTarget:(id)a3 animated:(BOOL)a4;
- (void)setBottomBarView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFooterContentConfiguration:(id)a3;
- (void)setHeaderContentConfiguration:(id)a3;
- (void)setNavigationOverflowItems:(id)a3;
- (void)setPreferredLayout:(int64_t)a3;
- (void)set_activeTransaction:(uint64_t)a1;
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
      v2 = [*(v1 + 40) traitCollection];
      v3 = [v2 userInterfaceIdiom];

      if (v3 == 6)
      {
        return 2;
      }

      else if (v3 == 5)
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
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      v2 = v2[150];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (void)_initWithTabBarController:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
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

- (id)_sidebarViewForEditing:(id *)a1
{
  if (a1)
  {
    v3 = a1;
    if (a2)
    {
      v4 = 0;
    }

    else
    {
      v5 = [(UITabBarControllerSidebar *)a1 _visualStyle];
      v6 = [v5 canDisplaySidebar];

      v4 = v6 ^ 1;
    }

    if (!v3[6] && (v4 & 1) == 0 && _UITabBarControllerWantsFloatingTabBar())
    {
      v7 = [[_UITabOutlineView alloc] initWithSidebar:v3];
      v8 = v3[6];
      v3[6] = v7;

      WeakRetained = objc_loadWeakRetained(v3 + 14);
      v10 = v3[6];
      if (v10)
      {
        objc_storeWeak(v10 + 58, WeakRetained);
      }

      -[_UITabOutlineView setPreferredStyle:](v3[6], [v3 _sidebarViewStyle]);
      v11 = [v3[5] title];
      [(_UITabOutlineView *)v3[6] setTitle:v11];

      if (v3[9])
      {
        [(_UITabOutlineView *)v3[6] updateBottomBarView];
      }

      if (v3[15])
      {
        v12 = [v3 _outlineView];
        [(_UITabOutlineView *)v12 setOverrideBackgroundEffect:?];
      }
    }

    a1 = v3[6];
    v2 = vars8;
  }

  return a1;
}

- (id)_visualStyle
{
  if (a1)
  {
    a1 = [(UITabBarController *)a1[5] _visualStyle];
    v1 = vars8;
  }

  return a1;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)_setHidden:(uint64_t)a3 source:
{
  if (a1 && *(a1 + 32) != a2)
  {
    *(a1 + 32) = a2;
    *(a1 + 16) = *(a1 + 16) & 0xFD | (2 * (a3 != 0));
    if (a3 != 5)
    {
      v6 = [(UITabBarControllerSidebar *)a1 _tabModel];
      v7 = [v6 customizationStore];

      v8 = 1;
      if (!a2)
      {
        v8 = 2;
      }

      if (a3)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [v7 setPreferredSidebarVisibility:v9];
    }

    v10 = [(UITabBarControllerSidebar *)a1 _visualStyle];
    v11 = [v10 canDisplaySidebar];

    if (v11)
    {
      if (a3 == 5)
      {
        v16 = [(UITabBarControllerSidebar *)a1 _visualStyle];
        [v16 sidebarVisibilityDidChangeWithAnimator:0];
      }

      else
      {
        v16 = objc_opt_new();
        if (*(a1 + 8))
        {
          v12 = [a1 delegate];
          [v12 tabBarController:*(a1 + 40) sidebarVisibilityWillChange:a1 animator:v16];
        }

        v13 = [(UITabBarControllerSidebar *)a1 _visualStyle];
        [v13 sidebarVisibilityDidChangeWithAnimator:v16];

        if (*(a1 + 8) & 1) == 0 && (*(a1 + 12))
        {
          v14 = [a1 _delegate];
          [v14 _tabBarController:*(a1 + 40) sidebarVisibilityDidChange:a1];
        }

        if (a3)
        {
          v15 = +[_UITabAnalytics sharedInstance];
          [(_UITabAnalytics *)v15 userDidToggleSidebar:a3 source:?];
        }
      }
    }
  }
}

- (void)_updateInitialSidebarVisibilityIfPossible
{
  if (![(UIViewController *)self->_tabBarController _hasAppeared])
  {
    v3 = [(UITabBarControllerSidebar *)self _tabModel];
    v4 = [v3 customizationStore];

    if ([v4 preferredSidebarVisibility] == 1)
    {
      [(UITabBarControllerSidebar *)self _setHidden:5 source:?];
    }
  }
}

- (void)setPreferredLayout:(int64_t)a3
{
  v5 = [(UITabBarControllerSidebar *)self _resolvedLayout];
  self->_preferredLayout = a3;
  if (v5 != [(UITabBarControllerSidebar *)self _resolvedLayout])
  {
    [(_UITabOutlineView *)&self->_outlineView->super.super.super.isa setPreferredStyle:?];
    v6 = [(UITabBarControllerSidebar *)self _visualStyle];
    [v6 sidebarLayoutDidChange];
  }
}

- (UIContentConfiguration)headerContentConfiguration
{
  v2 = [(UIContentConfiguration *)self->_headerContentConfiguration copyWithZone:0];

  return v2;
}

- (void)setHeaderContentConfiguration:(id)a3
{
  v4 = a3;
  headerContentConfiguration = self->_headerContentConfiguration;
  v12 = v4;
  v6 = headerContentConfiguration;
  if (v6 == v12)
  {
    v9 = v12;
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

    v9 = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)v9 headerContentConfigurationDidChange:v6];
    goto LABEL_9;
  }

LABEL_10:
}

- (UIContentConfiguration)footerContentConfiguration
{
  v2 = [(UIContentConfiguration *)self->_footerContentConfiguration copyWithZone:0];

  return v2;
}

- (void)setFooterContentConfiguration:(id)a3
{
  v4 = a3;
  footerContentConfiguration = self->_footerContentConfiguration;
  v12 = v4;
  v6 = footerContentConfiguration;
  if (v6 == v12)
  {
    v9 = v12;
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

    v9 = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)v9 footerContentConfigurationDidChange:v6];
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

- (void)setBottomBarView:(id)a3
{
  v6 = a3;
  v11 = v6;
  if (v6)
  {
    v7 = [(NSArray *)self->_toolbarItems count];
    v6 = v11;
    if (v7)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UITabBarControllerSidebar.m" lineNumber:332 description:@"Setting a bottomBarView alongside _toolbarItems is not supported"];

      v6 = v11;
    }
  }

  if (self->_bottomBarView != v6)
  {
    v8 = *&self->_sidebarFlags & 0xFE;
    if (v6)
    {
      ++v8;
    }

    *&self->_sidebarFlags = v8;
    objc_storeStrong(&self->_bottomBarView, a3);
    v9 = [(UITabBarControllerSidebar *)self _outlineView];
    [(_UITabOutlineView *)v9 updateBottomBarView];

    v6 = v11;
  }
}

- (id)_actualHeaderContentConfiguration
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

- (void)reconfigureItemForTab:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)v5 reconfigureItemForTab:v4];
}

- (void)scrollToTarget:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)v7 scrollToTarget:v6 animated:v4];
}

- (void)setNavigationOverflowItems:(id)a3
{
  v5 = a3;
  if (self->_navigationOverflowItems != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_navigationOverflowItems, a3);
    v6 = [(UITabBarControllerSidebar *)self _outlineView];
    v7 = v6;
    if (v6)
    {
      [v6 _updateEditBarButtonItem];
    }

    v5 = v8;
  }
}

- (BOOL)_makeFirstResponderForTab:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarControllerSidebar *)self _outlineView];
  v6 = [(_UITabOutlineView *)v5 makeFirstResponderForTab:v4];

  return v6;
}

- (BOOL)_resignFirstResponder
{
  v2 = [(UITabBarControllerSidebar *)self _outlineView];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)_setSidebarViewDelegate:(uint64_t)a1
{
  if (a1)
  {
    obj = a2;
    objc_storeWeak((a1 + 112), obj);
    v3 = *(a1 + 48);
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
    v1 = [(UITabBarControllerSidebar *)result _visualStyle];
    v2 = [v1 isDisplayingSidebar];

    return v2;
  }

  return result;
}

- (void)_willDisplayTab:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    if ((*(a1 + 8) & 0x40) != 0)
    {
      v3 = [a1 delegate];
      [v3 tabBarController:*(a1 + 40) sidebar:a1 willBeginDisplayingTab:v4];
    }

    else
    {
      if ((*(a1 + 13) & 0x20) == 0)
      {
        goto LABEL_7;
      }

      v3 = [a1 _delegate];
      [v3 _tabBarController:*(a1 + 40) sidebar:a1 willBeginDisplayingTab:v4];
    }
  }

LABEL_7:
}

- (void)_didEndDisplayingTab:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    if ((*(a1 + 8) & 0x80) != 0)
    {
      v3 = [a1 delegate];
      [v3 tabBarController:*(a1 + 40) sidebar:a1 didEndDisplayingTab:v4];
    }

    else
    {
      if ((*(a1 + 13) & 0x40) == 0)
      {
        goto LABEL_7;
      }

      v3 = [a1 _delegate];
      [v3 _tabBarController:*(a1 + 40) sidebar:a1 didEndDisplayingTab:v4];
    }
  }

LABEL_7:
}

- (id)_sidebarItemForRequest:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      v5 = [a1 delegate];
      v4 = [v5 tabBarController:*(a1 + 40) sidebar:a1 itemForRequest:v3];
    }

    else
    {
      if ((*(a1 + 12) & 8) == 0)
      {
        v4 = [UITabSidebarItem itemFromRequest:v3];
        goto LABEL_8;
      }

      v4 = [_UITabSidebarItem itemFromRequest:v3];
      v5 = [a1 _delegate];
      [v5 _tabBarController:*(a1 + 40) sidebar:a1 configureItem:v4];
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (id)_updatedSidebarItem:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 4) & 4) != 0)
    {
      v5 = [v3 copy];
      v6 = [a1 delegate];
      [v6 tabBarController:*(a1 + 5) sidebar:a1 updateItem:v5];
    }

    else
    {
      if ((*(a1 + 12) & 0x10) == 0)
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

        a1 = v7;

        goto LABEL_12;
      }

      v5 = [v3 copy];
      v6 = [a1 _delegate];
      [v6 _tabBarController:*(a1 + 5) sidebar:a1 updateItem:v5];
    }

    goto LABEL_8;
  }

LABEL_12:

  return a1;
}

- (id)_leadingSwipeActionsConfigurationForTab:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__leadingSwipeActionsConfigurationForTab_ object:a1 file:@"UITabBarControllerSidebar.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"tab != nil"}];
    }

    if ((*(a1 + 8) & 8) != 0)
    {
      v5 = [a1 _delegate];
      v6 = [v5 tabBarController:*(a1 + 40) sidebar:a1 leadingSwipeActionsConfigurationForTab:v4];
    }

    else
    {
      if ((*(a1 + 12) & 0x20) == 0)
      {
        a1 = 0;
        goto LABEL_10;
      }

      v5 = [a1 _delegate];
      v6 = [v5 _tabBarController:*(a1 + 40) sidebar:a1 leadingSwipeActionsConfigurationForTab:v4];
    }

    a1 = v6;
  }

LABEL_10:

  return a1;
}

- (id)_trailingSwipeActionsConfigurationForTab:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__trailingSwipeActionsConfigurationForTab_ object:a1 file:@"UITabBarControllerSidebar.m" lineNumber:493 description:{@"Invalid parameter not satisfying: %@", @"tab != nil"}];
    }

    if ((*(a1 + 8) & 0x10) != 0)
    {
      v5 = [a1 _delegate];
      v6 = [v5 tabBarController:*(a1 + 40) sidebar:a1 trailingSwipeActionsConfigurationForTab:v4];
    }

    else
    {
      if ((*(a1 + 12) & 0x40) == 0)
      {
        a1 = 0;
        goto LABEL_10;
      }

      v5 = [a1 _delegate];
      v6 = [v5 _tabBarController:*(a1 + 40) sidebar:a1 trailingSwipeActionsConfigurationForTab:v4];
    }

    a1 = v6;
  }

LABEL_10:

  return a1;
}

- (id)_contextMenuConfigurationForTab:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(a1 + 8) & 0x20) != 0)
    {
      v4 = [a1 delegate];
      v5 = [v4 tabBarController:*(a1 + 40) sidebar:a1 contextMenuConfigurationForTab:v3];
    }

    else
    {
      if ((*(a1 + 12) & 0x80) == 0)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v4 = [a1 _delegate];
      v5 = [v4 _tabBarController:*(a1 + 40) sidebar:a1 contextMenuConfigurationForTab:v3];
    }

    a1 = v5;
  }

LABEL_8:

  return a1;
}

- (id)_itemsForBeginningDragSession:(void *)a3 tab:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ((*(a1 + 8) & 0x100) != 0)
    {
      v7 = [a1 delegate];
      v8 = [v7 tabBarController:*(a1 + 40) sidebar:a1 itemsForBeginningDragSession:v5 tab:v6];
    }

    else
    {
      if ((*(a1 + 13) & 1) == 0)
      {
        a1 = MEMORY[0x1E695E0F0];
        goto LABEL_8;
      }

      v7 = [a1 _delegate];
      v8 = [v7 _tabBarController:*(a1 + 40) sidebar:a1 itemsForBeginningDragSession:v5 tab:v6];
    }

    a1 = v8;
  }

LABEL_8:

  return a1;
}

- (id)_itemsForAddingToDragSession:(void *)a3 tab:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ((*(a1 + 8) & 0x200) != 0)
    {
      v7 = [a1 delegate];
      v8 = [v7 tabBarController:*(a1 + 40) sidebar:a1 itemsForAddingToDragSession:v5 tab:v6];
    }

    else
    {
      if ((*(a1 + 13) & 2) == 0)
      {
        a1 = MEMORY[0x1E695E0F0];
        goto LABEL_8;
      }

      v7 = [a1 _delegate];
      v8 = [v7 _tabBarController:*(a1 + 40) sidebar:a1 itemsForAddingToDragSession:v5 tab:v6];
    }

    a1 = v8;
  }

LABEL_8:

  return a1;
}

- (id)_sessionPropertiesForDragSession:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(a1 + 13) & 4) != 0)
    {
      v4 = [a1 _delegate];
      a1 = [v4 _tabBarController:*(a1 + 40) sidebar:a1 sessionPropertiesForDragSession:v3];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (uint64_t)_sidebarAction:(void *)a3 group:(void *)a4 operationForAcceptingItemsFromDropSession:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ((*(a1 + 8) & 0x400) != 0)
    {
      v10 = [a1 delegate];
      v11 = [v10 tabBarController:*(a1 + 40) sidebar:a1 sidebarAction:v7 group:v8 operationForAcceptingItemsFromDropSession:v9];
    }

    else
    {
      if ((*(a1 + 13) & 8) == 0)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v10 = [a1 _delegate];
      v11 = [v10 _tabBarController:*(a1 + 40) sidebar:a1 sidebarAction:v7 group:v8 operationForAcceptingItemsFromDropSession:v9];
    }

    a1 = v11;
  }

LABEL_8:

  return a1;
}

- (void)_sidebarAction:(void *)a3 group:(void *)a4 acceptItemsFromDropSession:
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if ((*(a1 + 8) & 0x800) != 0)
    {
      v9 = [a1 delegate];
      [v9 tabBarController:*(a1 + 40) sidebar:a1 sidebarAction:v10 group:v7 acceptItemsFromDropSession:v8];
    }

    else
    {
      if ((*(a1 + 13) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      v9 = [a1 _delegate];
      [v9 _tabBarController:*(a1 + 40) sidebar:a1 sidebarAction:v10 group:v7 acceptItemsFromDropSession:v8];
    }
  }

LABEL_7:
}

- (uint64_t)_operationForInsertingItemsFromSession:(void *)a3 intoTabGroup:(uint64_t)a4 atIndex:
{
  v7 = a2;
  v8 = a3;
  if (!a1 || (~*(a1 + 12) & 0x18000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = [a1 _delegate];
    v10 = [v9 _tabBarController:*(a1 + 40) sidebar:a1 operationForInsertingItemsFromDropSession:v7 intoTabGroup:v8 atDisplayIndex:a4];
  }

  return v10;
}

- (void)_insertItemsFromSession:(void *)a3 intoTabGroup:(uint64_t)a4 atIndex:
{
  v9 = a2;
  v7 = a3;
  if (a1 && (~*(a1 + 12) & 0x18000) == 0)
  {
    v8 = [a1 _delegate];
    [v8 _tabBarController:*(a1 + 40) sidebar:a1 insertItemsFromDropSession:v9 intoTabGroup:v7 atDisplayIndex:a4];
  }
}

- (void)_scrollToHeaderAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[UITabSidebarScrollTarget targetForHeader];
  [(UITabBarControllerSidebar *)self scrollToTarget:v5 animated:v3];
}

- (void)_scrollToTab:(id)a3 atPosition:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = [UITabSidebarScrollTarget targetForTab:a3, a4];
  [(UITabBarControllerSidebar *)self scrollToTarget:v7 animated:v5];
}

- (id)_customizationIdentifier
{
  if (self)
  {
    self = self->_tabBarController;
  }

  return [(UITabBarControllerSidebar *)self customizationIdentifier];
}

- (void)_setCustomizationIdentifier:(id)a3
{
  if (self)
  {
    self = self->_tabBarController;
  }

  [(UITabBarControllerSidebar *)self setCustomizationIdentifier:a3];
}

- (BOOL)_isEditing
{
  if (self)
  {
    self = self->_tabBarController;
  }

  return [(UITabBarControllerSidebar *)self isEditing];
}

- (void)_setEditing:(BOOL)a3
{
  if (self)
  {
    self = self->_tabBarController;
  }

  [(UITabBarControllerSidebar *)self setEditing:a3];
}

- (void)_editingStateDidChange:(uint64_t)a1
{
  if (a1 && (*(a1 + 12) & 2) != 0)
  {
    v4 = [a1 _delegate];
    [v4 _tabbarController:*(a1 + 40) sidebar:a1 editingStateDidChange:a2];
  }
}

- (void)_visibilityDidChangeForTabs:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (*(a1 + 12) & 4) != 0)
  {
    v5 = v3;
    v4 = [a1 _delegate];
    [v4 _tabBarController:*(a1 + 40) sidebar:a1 visibilityDidChangeForTabs:v5];

    v3 = v5;
  }
}

- (void)_setToolbarItems:(id)a3
{
  v5 = a3;
  toolbarItems = self->_toolbarItems;
  v19 = v5;
  v7 = toolbarItems;
  if (v7 == v19)
  {

    v10 = v19;
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
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"UITabBarControllerSidebar.m" lineNumber:701 description:@"Setting _toolbarItems alongside a _bottomBarView is not supported"];
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
        v15 = [(UITabBarControllerSidebar *)self _outlineView];
        [v15 frame];
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

    v10 = [(UITabBarControllerSidebar *)self _outlineView];

    [(_UITabOutlineView *)v10 updateBottomBarView];
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
  v2 = [(UITabBarControllerSidebar *)self _tabModel];
  v3 = [v2 isEditable];

  return v3;
}

- (void)_setEditable:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITabBarControllerSidebar *)self _tabModel];
  [v4 setEditable:v3];
}

- (_UITabGroup)_displayedGroup
{
  v2 = [(UITabBarControllerSidebar *)self _outlineView];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 480);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_setDisplayedGroup:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarControllerSidebar *)self _outlineView];
  [(_UITabOutlineView *)v5 setDisplayedGroup:v4];
}

- (UITabBarControllerSidebarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)set_activeTransaction:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

@end