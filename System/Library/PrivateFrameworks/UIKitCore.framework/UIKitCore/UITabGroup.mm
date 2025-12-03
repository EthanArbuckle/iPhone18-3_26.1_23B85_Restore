@interface UITabGroup
- (BOOL)_canBeReordered;
- (BOOL)_canReorderChild:(id)child;
- (BOOL)_isCustomizable;
- (BOOL)_setDisplayOrderIdentifiers:(id)identifiers;
- (NSArray)displayOrder;
- (UITabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier children:(id)children viewControllerProvider:(id)provider;
- (id)_defaultChildForSelection;
- (id)_displayedViewController;
- (id)_existingDisplayedViewController;
- (id)_filteredDisplayOrderIdentifiers;
- (id)_orderedChildrenForDisplayOrder:(id)order;
- (id)_selectedTabHierarchy;
- (id)managingTabGroup;
- (id)tabForIdentifier:(id)identifier;
- (void)_didChangeTabModel:(id)model;
- (void)_elementsDidChange;
- (void)_invalidateDisplayOrder;
- (void)_performWithoutUpdatingManagingNavigationController:(id)controller;
- (void)_registerManagingNavigationTraitsIfNeeded;
- (void)_selectElement:(id)element notifyOnReselection:(BOOL)reselection performBeforeNotifyingDelegate:(id)delegate;
- (void)_selectedElementDidChange;
- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive;
- (void)_updateForManagingNavigationStackChange;
- (void)_updateManagingNavigationStackUsingTransition:(unint64_t)transition isExplicit:(BOOL)explicit;
- (void)_validateSelectedElement;
- (void)setAllowsReordering:(BOOL)reordering;
- (void)setChildren:(id)children;
- (void)setIsSidebarDestination:(BOOL)destination;
- (void)setManagingNavigationController:(id)controller;
- (void)setSelectedChild:(id)child;
- (void)setSidebarAppearance:(unint64_t)appearance;
@end

@implementation UITabGroup

- (id)_existingDisplayedViewController
{
  managingNavigationController = [(UITabGroup *)self managingNavigationController];
  v4 = managingNavigationController;
  if (managingNavigationController)
  {
    _existingDisplayedViewController = managingNavigationController;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabGroup;
    _existingDisplayedViewController = [(UITab *)&v8 _existingDisplayedViewController];
  }

  v6 = _existingDisplayedViewController;

  return v6;
}

- (void)_invalidateDisplayOrder
{
  displayOrder = self->_displayOrder;
  self->_displayOrder = 0;
}

- (void)_validateSelectedElement
{
  selectedChild = [(UITabGroup *)self selectedChild];
  v4 = selectedChild;
  if (selectedChild)
  {
    parent = [selectedChild parent];

    if (parent != self)
    {
      children = self->_children;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__UITabGroup__validateSelectedElement__block_invoke;
      v9[3] = &unk_1E7101F18;
      v7 = v4;
      v10 = v7;
      v8 = [(NSArray *)children indexOfObjectPassingTest:v9];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UITabGroup *)self _defaultChildForSelection];
      }

      else
      {
        [(NSArray *)self->_children objectAtIndex:v8];
      }
      v4 = ;

      [(UITabGroup *)self setSelectedChild:v4];
    }
  }
}

- (void)_elementsDidChange
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel elementsDidChangeForGroup:self];
}

- (id)_displayedViewController
{
  managingNavigationController = [(UITabGroup *)self managingNavigationController];
  v4 = managingNavigationController;
  if (managingNavigationController)
  {
    _displayedViewController = managingNavigationController;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabGroup;
    _displayedViewController = [(UITab *)&v8 _displayedViewController];
  }

  v6 = _displayedViewController;

  return v6;
}

- (void)_registerManagingNavigationTraitsIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_sizeClassTraitRegistration)
  {
    tabBarController = [(UITab *)self tabBarController];
    v4 = objc_opt_self();
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [tabBarController registerForTraitChanges:v5 withTarget:self action:sel__updateManagingNavigationStackFromTraitUpdate];
    sizeClassTraitRegistration = self->_sizeClassTraitRegistration;
    self->_sizeClassTraitRegistration = v6;
  }
}

- (BOOL)_isCustomizable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v8.receiver = self;
  v8.super_class = UITabGroup;
  _isCustomizable = [(UITab *)&v8 _isCustomizable];
  if ((v10[3] & 1) != 0 || (v3 = [(UITabGroup *)self allowsReordering], (*(v10 + 24) = v3) != 0))
  {
    v4 = 1;
  }

  else
  {
    children = [(UITabGroup *)self children];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29__UITabGroup__isCustomizable__block_invoke;
    v7[3] = &unk_1E71057F8;
    v7[4] = &v9;
    [children enumerateObjectsUsingBlock:v7];

    v4 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v4 & 1;
}

- (UITabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier children:(id)children viewControllerProvider:(id)provider
{
  childrenCopy = children;
  v20.receiver = self;
  v20.super_class = UITabGroup;
  v13 = [(UITab *)&v20 initWithTitle:title image:image identifier:identifier viewControllerProvider:provider];
  v14 = v13;
  if (v13)
  {
    children = v13->_children;
    v16 = MEMORY[0x1E695E0F0];
    v13->_children = MEMORY[0x1E695E0F0];

    displayOrderIdentifiers = v14->_displayOrderIdentifiers;
    v14->_displayOrderIdentifiers = v16;

    sidebarActions = v14->_sidebarActions;
    v14->_sidebarActions = v16;

    [(UITabGroup *)v14 setChildren:childrenCopy];
  }

  return v14;
}

- (void)setSelectedChild:(id)child
{
  childCopy = child;
  if (self->_selectedChild != childCopy)
  {
    v6 = childCopy;
    objc_storeStrong(&self->_selectedChild, child);
    [(UITabGroup *)self _selectedElementDidChange];
    childCopy = v6;
  }
}

- (void)setChildren:(id)children
{
  v95 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  if (!childrenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"children"}];
  }

  v6 = [childrenCopy differenceFromArray:self->_children withOptions:0 usingEquivalenceTest:&__block_literal_global_175];
  if ([v6 hasChanges])
  {
    v60 = a2;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    removals = [v6 removals];
    v9 = [removals countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v86;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v86 != v11)
          {
            objc_enumerationMutation(removals);
          }

          object = [*(*(&v85 + 1) + 8 * i) object];
          [v7 addObject:object];
        }

        v10 = [removals countByEnumeratingWithState:&v85 objects:v94 count:16];
      }

      while (v10);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    insertions = [v6 insertions];
    v15 = [insertions countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v82;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v82 != v17)
          {
            objc_enumerationMutation(insertions);
          }

          object2 = [*(*(&v81 + 1) + 8 * j) object];
          [v7 removeObject:object2];
        }

        v16 = [insertions countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v16);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v77 objects:v92 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v78;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v78 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v77 + 1) + 8 * k);
          parent = [v25 parent];

          if (parent == self)
          {
            [v25 _setParent:0];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v77 objects:v92 count:16];
      }

      while (v22);
    }

    v61 = v20;
    v62 = v6;

    v27 = [childrenCopy copy];
    children = self->_children;
    self->_children = v27;

    [MEMORY[0x1E695DF90] dictionary];
    v64 = v63 = childrenCopy;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v29 = childrenCopy;
    v30 = [v29 countByEnumeratingWithState:&v73 objects:v91 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v74;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v74 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v73 + 1) + 8 * m);
          parent2 = [v34 parent];
          v36 = parent2;
          if (parent2)
          {
            v37 = parent2 == self;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            identifier = [(UITab *)parent2 identifier];
            v39 = [v64 objectForKey:identifier];

            if (!v39)
            {
              v39 = [MEMORY[0x1E695DFA8] set];
              identifier2 = [(UITab *)v36 identifier];
              [v64 setObject:v39 forKey:identifier2];
            }

            [v39 addObject:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v73 objects:v91 count:16];
      }

      while (v31);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    objectEnumerator = [v64 objectEnumerator];
    v42 = [objectEnumerator countByEnumeratingWithState:&v69 objects:v90 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v70;
      do
      {
        for (n = 0; n != v43; ++n)
        {
          if (*v70 != v44)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v46 = *(*(&v69 + 1) + 8 * n);
          anyObject = [v46 anyObject];
          parent3 = [anyObject parent];

          children = [parent3 children];
          v50 = [children mutableCopy];

          allObjects = [v46 allObjects];
          [v50 removeObjectsInArray:allObjects];

          [parent3 setChildren:v50];
        }

        v43 = [objectEnumerator countByEnumeratingWithState:&v69 objects:v90 count:16];
      }

      while (v43);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = v29;
    v53 = [v52 countByEnumeratingWithState:&v65 objects:v89 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v66;
      do
      {
        for (ii = 0; ii != v54; ++ii)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v65 + 1) + 8 * ii);
          if ([v57 _isUniquelySPI])
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:v60 object:self file:@"UITabGroup.m" lineNumber:109 description:@"Cannot add _UITab objects to a UITabGroup. Please use UITab directly."];
          }

          [v57 _setParent:self];
        }

        v54 = [v52 countByEnumeratingWithState:&v65 objects:v89 count:16];
      }

      while (v54);
    }

    [(UITabGroup *)self _invalidateDisplayOrder];
    [(UITabGroup *)self _elementsDidChange];
    [(UITabGroup *)self _validateSelectedElement];

    v6 = v62;
    childrenCopy = v63;
  }
}

- (void)setIsSidebarDestination:(BOOL)destination
{
  if (self->_isSidebarDestination != destination)
  {
    self->_isSidebarDestination = destination;
    [(UITabGroup *)self _validateSelectedElement];
  }
}

- (NSArray)displayOrder
{
  displayOrder = self->_displayOrder;
  if (!displayOrder)
  {
    v4 = [(UITabGroup *)self _orderedChildrenForDisplayOrder:0];
    v5 = self->_displayOrder;
    self->_displayOrder = v4;

    displayOrder = self->_displayOrder;
  }

  return displayOrder;
}

- (void)setAllowsReordering:(BOOL)reordering
{
  if (self->_allowsReordering != reordering)
  {
    self->_allowsReordering = reordering;
    [(UITab *)self _customizabilityDidChange];
  }
}

- (void)setSidebarAppearance:(unint64_t)appearance
{
  if (self->_sidebarAppearance != appearance)
  {
    self->_sidebarAppearance = appearance;
    [(UITabGroup *)self _elementsDidChange];
  }
}

- (id)tabForIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  children = [(UITabGroup *)self children];
  v6 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *v17;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(children);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:identifierCopy];

      if (v12)
      {
        v13 = v10;
      }

      else
      {
        if (![v10 _isGroup])
        {
          continue;
        }

        v13 = [v10 tabForIdentifier:identifierCopy];
      }

      v14 = v13;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v7 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (id)managingTabGroup
{
  parent = [(UITab *)self parent];
  selfCopy = [parent managingTabGroup];

  if (!selfCopy)
  {
    selfCopy = [(UITabGroup *)self managingNavigationController];

    if (selfCopy)
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (void)setManagingNavigationController:(id)controller
{
  controllerCopy = controller;
  if (self->_managingNavigationController != controllerCopy)
  {
    v11 = controllerCopy;
    _displayedViewController = [(UITabGroup *)self _displayedViewController];
    _managedTabGroup = [(UINavigationController *)self->_managingNavigationController _managedTabGroup];

    if (_managedTabGroup == self)
    {
      [(UINavigationController *)self->_managingNavigationController _setManagedTabGroup:0];
    }

    objc_storeStrong(&self->_managingNavigationController, controller);
    _displayedViewController2 = [(UITabGroup *)self _displayedViewController];

    if (_displayedViewController2 != _displayedViewController)
    {
      [(UITab *)self _updateLinkedTabBarItem];
      tabBarController = [(UITab *)self tabBarController];
      [(UITabBarController *)tabBarController _displayedViewControllerDidChangeForTab:_displayedViewController previousViewController:?];
    }

    _managedTabGroup2 = [(UINavigationController *)v11 _managedTabGroup];

    if (_managedTabGroup2)
    {
      [(UINavigationController *)v11 _setManagedTabGroup:0];
    }

    [(UINavigationController *)v11 _setManagedTabGroup:self];
    [(UITabGroup *)self _registerManagingNavigationTraitsIfNeeded];
    [(UITabGroup *)self _updateManagingNavigationStackUsingTransition:0 isExplicit:0];

    controllerCopy = v11;
  }
}

- (void)_updateManagingNavigationStackUsingTransition:(unint64_t)transition isExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  v107 = *MEMORY[0x1E69E9840];
  tabBarController = [(UITab *)self tabBarController];
  if (tabBarController && !self->_isUpdatingManagedNavigationController)
  {
    managingNavigationController = [(UITabGroup *)self managingNavigationController];
    if (managingNavigationController)
    {
      parent = [(UITab *)self parent];
      if (parent)
      {
        v9 = parent;
        while (1)
        {
          managingNavigationController2 = [v9 managingNavigationController];

          if (managingNavigationController2)
          {
            break;
          }

          parent2 = [v9 parent];

          v9 = parent2;
          if (!parent2)
          {
            goto LABEL_8;
          }
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke;
        block[3] = &unk_1E70F35B8;
        v99 = v9;
        selfCopy = self;
        v57 = _MergedGlobals_1_7;
        obj = v9;
        if (v57 != -1)
        {
          dispatch_once(&_MergedGlobals_1_7, block);
        }
      }

      else
      {
LABEL_8:
        transitionCopy = transition;
        selfCopy2 = self;
        _selectedTabHierarchy = [(UITabGroup *)self _selectedTabHierarchy];
        v65 = managingNavigationController;
        viewControllers = [managingNavigationController viewControllers];
        v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_selectedTabHierarchy, "count")}];
        traitCollection = [tabBarController traitCollection];
        horizontalSizeClass = [traitCollection horizontalSizeClass];

        v15 = [MEMORY[0x1E695DFA8] set];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        obj = _selectedTabHierarchy;
        v76 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (v76)
        {
          v74 = *v95;
          v16 = !explicitCopy;
          if (horizontalSizeClass == 2)
          {
            v16 = 1;
          }

          v71 = v16;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v95 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v94 + 1) + 8 * i);
              _displayedViewControllers = [v18 _displayedViewControllers];
              v20 = _displayedViewControllers;
              if ((v71 & 1) == 0 && [_displayedViewControllers count])
              {
                v21 = [v20 objectAtIndex:0];
                v22 = [viewControllers containsObject:v21];

                if ((v22 & 1) == 0)
                {
                  [v18 _resetViewController];
                }

                _displayedViewControllers2 = [v18 _displayedViewControllers];

                v20 = _displayedViewControllers2;
              }

              v24 = [(UITabBarController *)tabBarController _displayedViewControllersForTab:v18 proposedViewControllers:v20];
              v25 = v24;
              if (v24)
              {
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v26 = [v24 countByEnumeratingWithState:&v90 objects:v105 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v91;
                  do
                  {
                    for (j = 0; j != v27; ++j)
                    {
                      if (*v91 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = *(*(&v90 + 1) + 8 * j);
                      if ([v13 containsObject:v30])
                      {
                        v31 = v15;
                      }

                      else
                      {
                        v31 = v13;
                      }

                      [v31 addObject:v30];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v90 objects:v105 count:16];
                  }

                  while (v27);
                }
              }

              [v18 _setDisplayedViewControllers:v25];
            }

            v76 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
          }

          while (v76);
        }

        if ([v15 count])
        {
          string = [MEMORY[0x1E696AD60] string];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v68 = obj;
          v72 = [v68 countByEnumeratingWithState:&v86 objects:v104 count:16];
          if (v72)
          {
            v70 = *v87;
            do
            {
              v32 = 0;
              do
              {
                if (*v87 != v70)
                {
                  objc_enumerationMutation(v68);
                }

                v75 = v32;
                v33 = *(*(&v86 + 1) + 8 * v32);
                v34 = objc_opt_class();
                title = [v33 title];
                identifier = [v33 identifier];
                [string appendFormat:@"<%@: %p, title='%@', identifier='%@'>\n", v34, v33, title, identifier];

                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                _displayedViewControllers3 = [v33 _displayedViewControllers];
                v38 = [_displayedViewControllers3 countByEnumeratingWithState:&v82 objects:v103 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v83;
                  do
                  {
                    for (k = 0; k != v39; ++k)
                    {
                      if (*v83 != v40)
                      {
                        objc_enumerationMutation(_displayedViewControllers3);
                      }

                      v42 = *(*(&v82 + 1) + 8 * k);
                      if ([v15 containsObject:v42])
                      {
                        if (v42)
                        {
                          v43 = MEMORY[0x1E696AEC0];
                          v44 = v42;
                          v45 = objc_opt_class();
                          v46 = NSStringFromClass(v45);
                          v47 = [v43 stringWithFormat:@"<%@: %p>", v46, v44];
                        }

                        else
                        {
                          v47 = @"(nil)";
                        }

                        [string appendFormat:@"\t%@ (DUPLICATE)\n", v47];
                      }

                      else
                      {
                        if (v42)
                        {
                          v48 = MEMORY[0x1E696AEC0];
                          v49 = v42;
                          v50 = objc_opt_class();
                          v51 = NSStringFromClass(v50);
                          v47 = [v48 stringWithFormat:@"<%@: %p>", v51, v49];
                        }

                        else
                        {
                          v47 = @"(nil)";
                        }

                        [string appendFormat:@"\t%@\n", v47];
                      }
                    }

                    v39 = [_displayedViewControllers3 countByEnumeratingWithState:&v82 objects:v103 count:16];
                  }

                  while (v39);
                }

                v32 = v75 + 1;
              }

              while (v75 + 1 != v72);
              v72 = [v68 countByEnumeratingWithState:&v86 objects:v104 count:16];
            }

            while (v72);
          }

          if (os_variant_has_internal_diagnostics())
          {
            v62 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v102 = string;
              _os_log_fault_impl(&dword_188A29000, v62, OS_LOG_TYPE_FAULT, "All view controllers in the selected hierarchy must have distinct view controllers. Found duplicates:\n%@", buf, 0xCu);
            }
          }

          else
          {
            v52 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499258) + 8);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v102 = string;
              _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "All view controllers in the selected hierarchy must have distinct view controllers. Found duplicates:\n%@", buf, 0xCu);
            }
          }
        }

        if (transitionCopy)
        {
          managingNavigationController = v65;
          if ([v13 count])
          {
            v53 = +[UIView areAnimationsEnabled];
          }

          else
          {
            v53 = 0;
          }
        }

        else
        {
          v53 = 0;
          managingNavigationController = v65;
        }

        v59 = transitionCopy == 2 && horizontalSizeClass == 2;
        [managingNavigationController _setWantsTabCrossfadeTransition:v59];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke_33;
        v78[3] = &unk_1E70F5AF0;
        v60 = managingNavigationController;
        v79 = v60;
        v80 = v13;
        v81 = v53;
        v61 = v13;
        [(UITabGroup *)selfCopy2 _performWithoutUpdatingManagingNavigationController:v78];
        [v60 _setWantsTabCrossfadeTransition:0];
      }
    }

    else
    {
      selectedChild = [(UITabGroup *)self selectedChild];
      _isGroup = [selectedChild _isGroup];

      if (_isGroup)
      {
        selectedChild2 = [(UITabGroup *)self selectedChild];
        [selectedChild2 _updateManagingNavigationStackUsingTransition:transition isExplicit:explicitCopy];
      }
    }
  }
}

void __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("UITab", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_6) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = [*(a1 + 40) identifier];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UITabGroup.managingNavigationController does not supported nesting. The managingNavigationController from the rootmost UITabGroup (%@) will be used, and the nested one (%@) will be ignored.", &v7, 0x16u);
  }
}

- (void)_updateForManagingNavigationStackChange
{
  v66 = *MEMORY[0x1E69E9840];
  if (!self->_isUpdatingManagedNavigationController)
  {
    managingNavigationController = [(UITabGroup *)self managingNavigationController];
    viewControllers = [managingNavigationController viewControllers];

    _selectedTabHierarchy = [(UITabGroup *)self _selectedTabHierarchy];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__64;
    v59 = __Block_byref_object_dispose__64;
    v60 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_37;
    v50[3] = &unk_1E71057D0;
    v39 = _selectedTabHierarchy;
    v51 = v39;
    v52 = &__block_literal_global_36;
    v53 = &v55;
    v54 = &v61;
    [viewControllers enumerateObjectsWithOptions:2 usingBlock:v50];
    if ([v56[5] _isGroup])
    {
      v4 = v56[5];
      selectedChild = [v4 selectedChild];
      selectedChild3 = selectedChild;
      if (selectedChild)
      {
        v7 = selectedChild;
        while (1)
        {
          _displayedViewControllers = [v7 _displayedViewControllers];
          v9 = [_displayedViewControllers count];

          if (![v7 _isGroup])
          {
            break;
          }

          selectedChild2 = [v7 selectedChild];

          if (selectedChild2)
          {
            v11 = v9 != 0;
          }

          else
          {
            v11 = 1;
          }

          v7 = selectedChild2;
          if (v11)
          {
            if (!v9)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }

        selectedChild2 = 0;
        if (!v9)
        {
          goto LABEL_15;
        }

LABEL_14:

        selectedChild3 = 0;
      }

      else
      {
        selectedChild2 = 0;
      }

LABEL_15:
      v12 = v62[3] + 1;
      v62[3] = v12;
      while (v12 < [viewControllers count])
      {
        v13 = [viewControllers objectAtIndex:v62[3]];
        v14 = [v13 tab];
        _parentGroup = [v14 _parentGroup];
        v16 = _parentGroup == v4;

        if (!v16)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          children = [v4 children];
          v18 = [children countByEnumeratingWithState:&v46 objects:v65 count:16];
          v19 = v18;
          if (v18)
          {
            v20 = *v47;
LABEL_20:
            v21 = 0;
            while (1)
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(children);
              }

              v22 = *(*(&v46 + 1) + 8 * v21);
              v18 = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(v18, v22, v13);
              if (v18)
              {
                break;
              }

              if (v19 == ++v21)
              {
                v18 = [children countByEnumeratingWithState:&v46 objects:v65 count:16];
                v19 = v18;
                if (v18)
                {
                  goto LABEL_20;
                }

                goto LABEL_34;
              }
            }

            v23 = v22;

            if (v23)
            {
              goto LABEL_30;
            }
          }

          else
          {
LABEL_34:
          }

          goto LABEL_35;
        }

        v23 = v14;
LABEL_30:

        if (![v23 _isGroup] || (objc_msgSend(v23, "children"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count") == 0, v24, v25))
        {
          selectedChild3 = v23;
LABEL_35:

          break;
        }

        v26 = v23;

        selectedChild3 = [v26 selectedChild];

        v12 = v62[3] + 1;
        v62[3] = v12;
        v4 = v26;
      }

      if (!selectedChild3)
      {
        selectedChild4 = [v4 selectedChild];
        v36 = selectedChild4 == 0;

        if (!v36)
        {
          selectedChild5 = [v4 selectedChild];
          if (selectedChild5)
          {
            while (1)
            {
              [selectedChild5 _resetViewController];
              if (![selectedChild5 _isGroup])
              {
                break;
              }

              v37SelectedChild = [selectedChild5 selectedChild];

              selectedChild5 = v37SelectedChild;
              if (!v37SelectedChild)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_37:
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_3;
      v42[3] = &unk_1E70F6228;
      v27 = v4;
      v43 = v27;
      v28 = selectedChild3;
      v44 = v28;
      selfCopy = self;
      [(UITabGroup *)self _performWithoutUpdatingManagingNavigationController:v42];
      if (selectedChild3)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      objc_storeStrong(v56 + 5, v29);
    }

    v30 = v62[3];
    if ((v30 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
    {
      while (1)
      {
        v31 = [viewControllers objectAtIndex:v30 - 1];
        if ((__53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(v31, v56[5], v31) & 1) == 0)
        {
          break;
        }

        --v62[3];

        v30 = v62[3];
        if ((v30 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
        {
          goto LABEL_46;
        }
      }

      v30 = v62[3];
    }

LABEL_46:
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      selfCopy2 = v56[5];
      if (!selfCopy2)
      {
        selfCopy2 = self;
      }

      v33 = selfCopy2;
      [(UITab *)v33 _setDisplayedViewControllers:viewControllers];
    }

    else
    {
      v34 = [viewControllers count];
      v33 = [viewControllers subarrayWithRange:{v30, v34 - v62[3]}];
      [v56[5] _setDisplayedViewControllers:v33];
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);
  }
}

uint64_t __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 tab];
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v4 _displayedViewControllers];
    v8 = [v7 containsObject:v5];
  }

  return v8;
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_37(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_2;
  v11[3] = &unk_1E71057A8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = a3;
  v16 = a4;
  v10 = v7;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v11];
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64);
    **(a1 + 72) = 1;
    *a4 = 1;
  }
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setSelectedChild:*(a1 + 40)];
  v2 = [*(a1 + 48) _tabModel];
  [v2 selectTab:*(a1 + 32) notifyOnReselection:0];
}

- (void)_performWithoutUpdatingManagingNavigationController:(id)controller
{
  isUpdatingManagedNavigationController = self->_isUpdatingManagedNavigationController;
  self->_isUpdatingManagedNavigationController = 1;
  (*(controller + 2))(controller, a2);
  self->_isUpdatingManagedNavigationController = isUpdatingManagedNavigationController;
}

- (id)_selectedTabHierarchy
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  if (selfCopy)
  {
    selectedChild = selfCopy;
    do
    {
      [v3 addObject:selectedChild];
      if (![selectedChild _isGroup])
      {
        break;
      }

      v6 = selectedChild;
      selectedChild = [v6 selectedChild];
    }

    while (selectedChild);
  }

  return v3;
}

- (void)_selectedElementDidChange
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel selectedElementDidChangeForGroup:self];
}

uint64_t __38__UITabGroup__validateSelectedElement__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  return v8;
}

uint64_t __29__UITabGroup__isCustomizable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _isCustomizable];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)_didChangeTabModel:(id)model
{
  v21 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (self->_sizeClassTraitRegistration)
  {
    tabBarController = [(UITab *)self tabBarController];
    [tabBarController unregisterForTraitChanges:self->_sizeClassTraitRegistration];

    sizeClassTraitRegistration = self->_sizeClassTraitRegistration;
    self->_sizeClassTraitRegistration = 0;
  }

  v19.receiver = self;
  v19.super_class = UITabGroup;
  [(UITab *)&v19 _didChangeTabModel:modelCopy];
  if (modelCopy)
  {
    customizationStore = [modelCopy customizationStore];
    identifier = [(UITab *)self identifier];
    v9 = [customizationStore displayOrderIdentifiersForGroupWithIdentifier:identifier];

    if (v9)
    {
      [(UITabGroup *)self _setDisplayOrderIdentifiers:v9];
    }

    [(UITabGroup *)self _registerManagingNavigationTraitsIfNeeded];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_children;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) _didChangeTabModel:{modelCopy, v15}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (id)_defaultChildForSelection
{
  if ([(UITabGroup *)self isSidebarDestination])
  {
    v3 = 0;
  }

  else
  {
    _tabModel = [(UITab *)self _tabModel];
    defaultChildIdentifier = [(UITabGroup *)self defaultChildIdentifier];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__64;
    v31 = __Block_byref_object_dispose__64;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__64;
    v25 = __Block_byref_object_dispose__64;
    v26 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__UITabGroup__defaultChildForSelection__block_invoke;
    aBlock[3] = &unk_1E7105820;
    v6 = _tabModel;
    v20 = v6;
    v7 = _Block_copy(aBlock);
    children = [(UITabGroup *)self children];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__UITabGroup__defaultChildForSelection__block_invoke_2;
    v13[3] = &unk_1E7105848;
    v9 = defaultChildIdentifier;
    v14 = v9;
    v10 = v7;
    v15 = v10;
    v16 = &v27;
    v17 = v33;
    v18 = &v21;
    [children enumerateObjectsUsingBlock:v13];

    v11 = v28[5];
    if (!v11)
    {
      v11 = v22[5];
    }

    v3 = v11;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(v33, 8);
  }

  return v3;
}

uint64_t __39__UITabGroup__defaultChildForSelection__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return [v2 isTabHidden:a2];
  }

  else
  {
    return [a2 isHidden];
  }
}

void __39__UITabGroup__defaultChildForSelection__block_invoke_2(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    if ([v10 _isElement] && ((*(a1[5] + 16))() & 1) == 0)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  if (!*(*(a1[8] + 8) + 40) && [v10 _isElement] && ((*(a1[5] + 16))() & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
  }

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (*(*(a1[6] + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(*(a1[8] + 8) + 40) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

- (BOOL)_canBeReordered
{
  if ([(UITabGroup *)self sidebarAppearance]== 2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UITabGroup;
  return [(UITab *)&v4 _canBeReordered];
}

- (BOOL)_canReorderChild:(id)child
{
  childCopy = child;
  children = [(UITabGroup *)self children];
  v6 = [children containsObject:childCopy];
  v8 = v6 && (-[UITabGroup sidebarAppearance](self, "sidebarAppearance") != 1 || (-[UITab parent](self, "parent"), v7 = ;
  return v8;
}

- (id)_filteredDisplayOrderIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  displayOrder = [(UITabGroup *)self displayOrder];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(displayOrder, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = displayOrder;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_orderedChildrenForDisplayOrder:(id)order
{
  v30 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = [(UITabGroup *)self displayOrderIdentifiers];
  }

  if (!self->_displayOrder)
  {
    goto LABEL_12;
  }

  displayOrderIdentifiers = self->_displayOrderIdentifiers;
  v6 = orderCopy;
  v7 = displayOrderIdentifiers;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (!v6 || !v7)
  {

    goto LABEL_12;
  }

  v9 = [(NSArray *)v6 isEqual:v7];

  if (v9)
  {
LABEL_10:
    v22 = self->_displayOrder;
    goto LABEL_24;
  }

LABEL_12:
  children = [(UITabGroup *)self children];
  if ([orderCopy count])
  {
    v11 = [(NSArray *)children mutableCopy];
    v21 = orderCopy;
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](children, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = orderCopy;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __46__UITabGroup__orderedChildrenForDisplayOrder___block_invoke;
          v24[3] = &unk_1E7101F18;
          v24[4] = v16;
          v17 = [v11 indexOfObjectPassingTest:v24];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            v19 = [v11 objectAtIndex:v17];
            [(NSArray *)v22 addObject:v19];
            [v11 removeObjectAtIndex:v18];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    [(NSArray *)v22 addObjectsFromArray:v11];
    orderCopy = v21;
  }

  else
  {
    v22 = children;
  }

LABEL_24:

  return v22;
}

uint64_t __46__UITabGroup__orderedChildrenForDisplayOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_selectElement:(id)element notifyOnReselection:(BOOL)reselection performBeforeNotifyingDelegate:(id)delegate
{
  reselectionCopy = reselection;
  elementCopy = element;
  delegateCopy = delegate;
  if (elementCopy && ![(UITab *)elementCopy _isElement])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:716 description:{@"Cannot select a tab (%@) that is not seletable.", elementCopy}];
  }

  selectedChild = self->_selectedChild;
  objc_storeStrong(&self->_selectedChild, element);
  if (delegateCopy)
  {
    delegateCopy[2](delegateCopy);
  }

  if (selectedChild != elementCopy || !reselectionCopy)
  {
    v18 = elementCopy;
  }

  else
  {
    if (elementCopy)
    {
      v14 = elementCopy;
      while (1)
      {
        v18 = v14;
        [(UITab *)v14 _setDisplayedViewControllers:0];
        if (![(UITab *)v18 _isGroup])
        {
          break;
        }

        selectedChild = [(UITab *)v18 selectedChild];

        v14 = selectedChild;
        if (!selectedChild)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v18 = 0;
    }

    managingTabGroup = [(UITabGroup *)self managingTabGroup];
    [managingTabGroup _updateManagingNavigationStackUsingTransition:1 isExplicit:1];
  }

  if (selectedChild != elementCopy)
  {
    [(UITabGroup *)self _selectedElementDidChange];
  }
}

- (BOOL)_setDisplayOrderIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _tabModel = self->_displayOrderIdentifiers;
  v7 = identifiersCopy;
  v8 = v7;
  v9 = _tabModel != v7;
  if (_tabModel == v7)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v7 || !_tabModel)
  {

    goto LABEL_8;
  }

  v10 = [(NSArray *)_tabModel isEqual:v7];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_displayOrderIdentifiers, identifiers);
    [(UITabGroup *)self _invalidateDisplayOrder];
    _tabModel = [(UITab *)self _tabModel];
    [(NSArray *)_tabModel displayOrderIdentifiersDidChangeForGroup:self];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = UITabGroup;
  [(UITab *)&v8 _updateDescriptionWithBuilder:builderCopy recursive:recursiveCopy];
  if (!recursiveCopy && [(NSArray *)self->_children count])
  {
    v7 = [builderCopy appendName:@"children" object:self->_children usingLightweightDescription:1];
  }
}

@end