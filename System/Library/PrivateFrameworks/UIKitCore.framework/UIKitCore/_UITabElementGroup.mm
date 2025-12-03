@interface _UITabElementGroup
- (BOOL)_canBeReordered;
- (BOOL)_canReorderChild:(id)child;
- (BOOL)_isCustomizable;
- (_UITabElementGroup)initWithIdentifier:(id)identifier title:(id)title image:(id)image children:(id)children;
- (_UITabElementGroupDelegate)_delegate;
- (id)_defaultChildElement;
- (id)_filteredDisplayOrderIdentifiers;
- (id)_orderedChildrenForDisplayOrder:(id)order;
- (id)_tabForIdentifier:(id)identifier;
- (void)_didChangeTabModel:(id)model;
- (void)_notifyObserversElementsChanged;
- (void)_selectElement:(id)element notifyingDelegate:(BOOL)delegate notifyOnReselection:(BOOL)reselection performBeforeNotifyingDelegate:(id)notifyingDelegate;
- (void)_setAllowsReordering:(BOOL)reordering;
- (void)_setChildren:(id)children;
- (void)_setDelegate:(id)delegate;
- (void)_setDisplayOrder:(id)order notifyingDelegate:(BOOL)delegate;
- (void)_setSidebarAppearance:(unint64_t)appearance;
- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive;
@end

@implementation _UITabElementGroup

- (void)_notifyObserversElementsChanged
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel elementsDidChangeForGroup:self];
}

- (_UITabElementGroup)initWithIdentifier:(id)identifier title:(id)title image:(id)image children:(id)children
{
  childrenCopy = children;
  v15.receiver = self;
  v15.super_class = _UITabElementGroup;
  v11 = [(_UITabElement *)&v15 initWithIdentifier:identifier title:title image:image];
  v12 = v11;
  if (v11)
  {
    children = v11->_children;
    v11->_children = MEMORY[0x1E695E0F0];

    [(_UITabElementGroup *)v12 _setChildren:childrenCopy];
  }

  return v12;
}

- (void)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  *&self->_delegateImplements = *&self->_delegateImplements & 0xFE | objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegateImplements = *&self->_delegateImplements & 0xFD | v6;
}

- (void)_setChildren:(id)children
{
  v64 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  if (!childrenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:808 description:{@"Invalid parameter not satisfying: %@", @"children"}];
  }

  v6 = [childrenCopy differenceFromArray:self->_children withOptions:0 usingEquivalenceTest:&__block_literal_global_217];
  if ([v6 hasChanges])
  {
    v40 = a2;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = v6;
    removals = [v6 removals];
    v9 = [removals countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v57;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(removals);
          }

          object = [*(*(&v56 + 1) + 8 * i) object];
          [v7 addObject:object];
        }

        v10 = [removals countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v10);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    insertions = [v41 insertions];
    v15 = [insertions countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v53;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(insertions);
          }

          object2 = [*(*(&v52 + 1) + 8 * j) object];
          [v7 removeObject:object2];
        }

        v16 = [insertions countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v16);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v48 + 1) + 8 * k) set_parent:0];
        }

        v22 = [v20 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v22);
    }

    v25 = [childrenCopy copy];
    children = self->_children;
    self->_children = v25;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = childrenCopy;
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v44 + 1) + 8 * m);
          if (([v32 _isUniquelySPI] & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:v40 object:self file:@"UITabGroup.m" lineNumber:829 description:@"Cannot add UITab objects to a UITabElementGroup. Please use UITab + UITabGroup directly."];
          }

          [v32 set_parent:self];
        }

        v29 = [v27 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v29);
    }

    [(_UITabElementGroup *)self _notifyObserversElementsChanged];
    v34 = self->_selectedElement;
    v35 = v34;
    v6 = v41;
    if (v34)
    {
      _parent = [(_UITab *)v34 _parent];

      if (_parent != self)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __35___UITabElementGroup__setChildren___block_invoke_2;
        v42[3] = &unk_1E7105890;
        v37 = v35;
        v43 = v37;
        v38 = [v27 indexOfObjectPassingTest:v42];
        if (v38 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(_UITabElementGroup *)self _defaultChildElement];
        }

        else
        {
          [v27 objectAtIndex:v38];
        }
        v35 = ;

        [(_UITabElementGroup *)self _selectElement:v35 notifyingDelegate:1 notifyOnReselection:1];
      }
    }
  }
}

- (void)_setSidebarAppearance:(unint64_t)appearance
{
  if (self->__sidebarAppearance != appearance)
  {
    self->__sidebarAppearance = appearance;
    [(_UITabElementGroup *)self _notifyObserversElementsChanged];
  }
}

- (void)_setDisplayOrder:(id)order notifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  orderCopy = order;
  displayOrder = self->__displayOrder;
  v13 = orderCopy;
  v9 = displayOrder;
  if (v9 == v13)
  {

    WeakRetained = v13;
LABEL_11:

    goto LABEL_12;
  }

  if (v13 && v9)
  {
    v10 = [(NSArray *)v13 isEqual:v9];

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->__displayOrder, order);
  [(_UITabElementGroup *)self _notifyObserversElementsChanged];
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel displayOrderIdentifiersDidChangeForGroup:self];

  if (delegateCopy && (*&self->_delegateImplements & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _tabElementGroup:self didCustomizeDisplayOrder:v13];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_setAllowsReordering:(BOOL)reordering
{
  if (self->__allowsReordering != reordering)
  {
    self->__allowsReordering = reordering;
    [(UITab *)self _customizabilityDidChange];
  }
}

- (id)_orderedChildrenForDisplayOrder:(id)order
{
  v24 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = [(_UITabElementGroup *)self _displayOrder];
  }

  _children = [(_UITabElementGroup *)self _children];
  if ([orderCopy count])
  {
    v6 = [_children mutableCopy];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_children, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = orderCopy;
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __54___UITabElementGroup__orderedChildrenForDisplayOrder___block_invoke;
          v18[3] = &unk_1E7105890;
          v18[4] = v11;
          v12 = [v6 indexOfObjectPassingTest:v18];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v12;
            v14 = [v6 objectAtIndex:v12];
            [v16 addObject:v14];
            [v6 removeObjectAtIndex:v13];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [v16 addObjectsFromArray:v6];
  }

  else
  {
    v16 = _children;
  }

  return v16;
}

- (id)_defaultChildElement
{
  _defaultChildIdentifier = [(_UITabElementGroup *)self _defaultChildIdentifier];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__64;
  v24 = __Block_byref_object_dispose__64;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__64;
  v18 = __Block_byref_object_dispose__64;
  v19 = 0;
  _children = [(_UITabElementGroup *)self _children];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___UITabElementGroup__defaultChildElement__block_invoke;
  v9[3] = &unk_1E71058B8;
  v5 = _defaultChildIdentifier;
  v10 = v5;
  v11 = &v20;
  v12 = v26;
  v13 = &v14;
  [_children enumerateObjectsUsingBlock:v9];

  v6 = v21[5];
  if (!v6)
  {
    v6 = v15[5];
  }

  v7 = v6;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);

  return v7;
}

- (void)_selectElement:(id)element notifyingDelegate:(BOOL)delegate notifyOnReselection:(BOOL)reselection performBeforeNotifyingDelegate:(id)notifyingDelegate
{
  reselectionCopy = reselection;
  delegateCopy = delegate;
  elementCopy = element;
  notifyingDelegateCopy = notifyingDelegate;
  if (elementCopy && ([elementCopy _isElement] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:957 description:{@"Cannot select a tab (%@) that is not selectable in %@.", elementCopy, self}];
  }

  v19 = elementCopy;
  selectedElement = self->_selectedElement;
  objc_storeStrong(&self->_selectedElement, element);
  if (notifyingDelegateCopy)
  {
    notifyingDelegateCopy[2](notifyingDelegateCopy);
  }

  if (selectedElement != v19 || reselectionCopy)
  {
    if (delegateCopy && (*&self->_delegateImplements & 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained _tabElementGroup:self didSelectElement:v19];
    }

    _tabModel = [(UITab *)self _tabModel];
    [_tabModel selectedElementDidChangeForGroup:self];
  }
}

- (id)_tabForIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _children = [(_UITabElementGroup *)self _children];
  v6 = [_children countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(_children);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      _identifier = [v10 _identifier];
      v12 = [_identifier isEqualToString:identifierCopy];

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

    v7 = [_children countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)_isCustomizable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v8.receiver = self;
  v8.super_class = _UITabElementGroup;
  _isCustomizable = [(UITab *)&v8 _isCustomizable];
  if ((v10[3] & 1) != 0 || (v3 = [(_UITabElementGroup *)self allowsReordering], (*(v10 + 24) = v3) != 0))
  {
    v4 = 1;
  }

  else
  {
    children = [(_UITabElementGroup *)self children];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37___UITabElementGroup__isCustomizable__block_invoke;
    v7[3] = &unk_1E71057F8;
    v7[4] = &v9;
    [children enumerateObjectsUsingBlock:v7];

    v4 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v4 & 1;
}

- (void)_didChangeTabModel:(id)model
{
  v19 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = _UITabElementGroup;
  [(UITab *)&v17 _didChangeTabModel:modelCopy];
  if (modelCopy)
  {
    customizationStore = [modelCopy customizationStore];
    identifier = [(UITab *)self identifier];
    v7 = [customizationStore displayOrderIdentifiersForGroupWithIdentifier:identifier];

    if (v7)
    {
      [(_UITabElementGroup *)self _setDisplayOrderIdentifiers:v7];
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_children;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _didChangeTabModel:{modelCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_canBeReordered
{
  if ([(_UITabElementGroup *)self _sidebarAppearance]== 2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _UITabElementGroup;
  return [(UITab *)&v4 _canBeReordered];
}

- (BOOL)_canReorderChild:(id)child
{
  childCopy = child;
  _children = [(_UITabElementGroup *)self _children];
  v6 = [_children containsObject:childCopy];
  v8 = v6 && (-[_UITabElementGroup _sidebarAppearance](self, "_sidebarAppearance") != 1 || (-[_UITab _parent](self, "_parent"), v7 = ;
  return v8;
}

- (id)_filteredDisplayOrderIdentifiers
{
  v35 = *MEMORY[0x1E69E9840];
  _children = [(_UITabElementGroup *)self _children];
  v4 = [_children mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _displayOrder = [(_UITabElementGroup *)self _displayOrder];
  v7 = [_displayOrder count];

  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(_UITabElementGroup *)self _displayOrder];
    v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __54___UITabElementGroup__filteredDisplayOrderIdentifiers__block_invoke;
          v28[3] = &unk_1E7105890;
          v28[4] = v12;
          v13 = [v4 indexOfObjectPassingTest:v28];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = v13;
            v15 = [v4 objectAtIndex:v13];
            [v5 addObject:v12];
            [v4 removeObjectAtIndex:v14];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        _identifier = [*(*(&v24 + 1) + 8 * j) _identifier];
        [v5 addObject:_identifier];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v18);
  }

  return v5;
}

- (void)_updateDescriptionWithBuilder:(id)builder recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = _UITabElementGroup;
  [(UITab *)&v8 _updateDescriptionWithBuilder:builderCopy recursive:recursiveCopy];
  if (!recursiveCopy && [(NSArray *)self->_children count])
  {
    v7 = [builderCopy appendName:@"children" object:self->_children usingLightweightDescription:1];
  }
}

- (_UITabElementGroupDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end