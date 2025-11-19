@interface _UITabModel
- (BOOL)isTabHidden:(id)a3;
- (BOOL)shouldSelectTab:(id)a3;
- (UITabBarController)tabBarController;
- (_UITabCustomizationStore)customizationStore;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3;
- (id)tabForIdentifier:(id)a3;
- (uint64_t)_indexOfObserver:(uint64_t)a1;
- (void)_inferCurrentEditability;
- (void)_selectTab:(id)a3 notifyObserversOnReselection:(BOOL)a4;
- (void)_sendToObservers:(id)a3 allowUpdatesDuringBroadcast:(BOOL)a4;
- (void)_setSelectedItem:(id)a3 notifyDelegateOnReselection:(BOOL)a4;
- (void)_updateSelectedLeafPerformBeforeNotifyingBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)customizabilityDidChangeForTab:(id)a3;
- (void)customizationStoreDidReset:(id)a3;
- (void)elementsDidChangeForGroup:(id)a3;
- (void)favoriteOrderDidChange:(id)a3;
- (void)removeObserver:(id)a3;
- (void)replaceItemAtIndex:(int64_t)a3 withItem:(id)a4;
- (void)selectTab:(id)a3 notifyOnReselection:(BOOL)a4;
- (void)selectTabInSidebar:(id)a3 notifyOnReselection:(BOOL)a4;
- (void)setEditable:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setPersistenceIdentifier:(id)a3;
- (void)setTabItems:(id)a3 inferSelection:(BOOL)a4;
- (void)tabContentDidChange:(id)a3;
- (void)visibilityDidChangeForTab:(id)a3 editing:(BOOL)a4;
@end

@implementation _UITabModel

- (void)_inferCurrentEditability
{
  v3 = [(_UITabModel *)self tabItems];
  v4 = [v3 count];

  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v5 = [(_UITabModel *)self tabItems];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39___UITabModel__inferCurrentEditability__block_invoke;
    v6[3] = &unk_1E7114440;
    v6[4] = &v11;
    v6[5] = &v7;
    [v5 enumerateObjectsUsingBlock:v6];

    if ((v8[3] & 1) == 0)
    {
      [(_UITabModel *)self setEditable:*(v12 + 24)];
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }
}

- (_UITabCustomizationStore)customizationStore
{
  customizationStore = self->_customizationStore;
  if (!customizationStore)
  {
    v4 = [(_UITabModel *)self persistenceIdentifier];
    v5 = [_UITabCustomizationStore customizationStoreWithPersistenceIdentifier:v4];
    v6 = self->_customizationStore;
    self->_customizationStore = v5;

    [(_UITabCustomizationStore *)self->_customizationStore addObserver:self];
    customizationStore = self->_customizationStore;
  }

  return customizationStore;
}

- (UITabBarController)tabBarController
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);

  return WeakRetained;
}

- (void)setTabItems:(id)a3 inferSelection:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  tabItems = self->_tabItems;
  if (tabItems != v7)
  {
    [(NSArray *)tabItems enumerateObjectsUsingBlock:&__block_literal_global_356];
    if ((*&self->_flags & 9) == 1)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"_UITabModel.m" lineNumber:63 description:@"Attempt to modify model while broadcasting a change to the model."];
    }

    if (self->_selectedItem)
    {
      v9 = [(NSArray *)self->_tabItems indexOfObject:?];
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = [(NSArray *)v7 copy];
    v11 = self->_tabItems;
    self->_tabItems = v10;

    v12 = self->_tabItems;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __42___UITabModel_setTabItems_inferSelection___block_invoke_2;
    v32[3] = &unk_1E710C518;
    v32[4] = self;
    [(NSArray *)v12 enumerateObjectsUsingBlock:v32];
    v13 = self->_selectedItem;
    v14 = self->_selectedItem;
    if (!_tabElementsContainsTab(v7, v13))
    {

      v13 = 0;
    }

    v15 = 0;
    if (!v13 && v4)
    {
      if ([(UITab *)self->_selectedItem _isMoreTab])
      {
        v15 = 0;
      }

      else
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__123;
        v30 = __Block_byref_object_dispose__123;
        v31 = 0;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __42___UITabModel_setTabItems_inferSelection___block_invoke_5;
        v25[3] = &unk_1E71143A0;
        v25[4] = self;
        v25[5] = &v26;
        [(NSArray *)v7 enumerateObjectsUsingBlock:v25];
        if (v9 >= [(NSArray *)v7 count])
        {
          v17 = v27[5];
          if (v17)
          {
            v16 = v17;
          }

          else
          {
            v16 = [(NSArray *)v7 firstObject];
          }
        }

        else
        {
          v16 = [(NSArray *)v7 objectAtIndex:v9];
        }

        selectedItem = self->_selectedItem;
        self->_selectedItem = v16;

        _Block_object_dispose(&v26, 8);
        v15 = 1;
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42___UITabModel_setTabItems_inferSelection___block_invoke_2_6;
    v24[3] = &unk_1E71143C8;
    v24[4] = self;
    [(_UITabModel *)self _sendToObservers:v24 allowUpdatesDuringBroadcast:0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42___UITabModel_setTabItems_inferSelection___block_invoke_3;
    v21[3] = &unk_1E70F5AF0;
    v23 = v15;
    v21[4] = self;
    v22 = v14;
    v19 = v14;
    [(_UITabModel *)self _updateSelectedLeafPerformBeforeNotifyingBlock:v21];
    [(_UITabModel *)self _inferCurrentEditability];
  }
}

- (void)replaceItemAtIndex:(int64_t)a3 withItem:(id)a4
{
  v6 = a4;
  v7 = [(_UITabModel *)self tabItems];
  v8 = [v7 objectAtIndex:a3];

  if (v8 != v6)
  {
    [v8 _setTabModel:0];
    [v6 _setTabModel:self];
    v9 = [(_UITabModel *)self tabItems];
    v10 = [v9 mutableCopy];

    [v10 replaceObjectAtIndex:a3 withObject:v6];
    v11 = [v10 copy];
    tabItems = self->_tabItems;
    self->_tabItems = v11;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43___UITabModel_replaceItemAtIndex_withItem___block_invoke;
    v13[3] = &unk_1E71143F0;
    v13[4] = self;
    v14 = v8;
    v15 = v6;
    [(_UITabModel *)self _sendToObservers:v13 allowUpdatesDuringBroadcast:0];
  }
}

- (void)_setSelectedItem:(id)a3 notifyDelegateOnReselection:(BOOL)a4
{
  v7 = a3;
  v8 = v7;
  if (v7 && ([v7 _isElement] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UITabModel.m" lineNumber:140 description:{@"Cannot select a tab (%@) that is not selectable.", v8}];
  }

  v9 = self->_selectedItem;
  v10 = v8;
  v11 = v10;
  if (v9 != v10)
  {
    if (v10 && v9)
    {
      v12 = [(UITab *)v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if ((*&self->_flags & 9) == 1)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"_UITabModel.m" lineNumber:145 description:@"Attempt to modify model while broadcasting a change to the model."];

      if (v8)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
LABEL_13:
      if (!_tabElementsContainsTab(self->_tabItems, v11) && ![(UITab *)v11 _isMoreTab])
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"_UITabModel.m" lineNumber:146 description:{@"Attempt to select tab %@ that is not in the current tabs %@.", v11, self->_tabItems}];
      }
    }

    v14 = v11;
    selectedItem = self->_selectedItem;
    self->_selectedItem = v14;
    a4 = 1;
    goto LABEL_17;
  }

  selectedItem = v9;
LABEL_17:

LABEL_18:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60___UITabModel__setSelectedItem_notifyDelegateOnReselection___block_invoke;
  v20[3] = &unk_1E70F5B18;
  v23 = a4;
  v20[4] = self;
  v21 = v11;
  v22 = v9;
  v15 = v9;
  v16 = v11;
  [(_UITabModel *)self _updateSelectedLeafPerformBeforeNotifyingBlock:v20];
}

- (BOOL)shouldSelectTab:(id)a3
{
  v4 = a3;
  v5 = [v4 isEnabled];
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_tabBarController);
    v5 &= [(UITabBarController *)v7 _shouldSelectTab:v4];
  }

  return v5;
}

- (void)selectTab:(id)a3 notifyOnReselection:(BOOL)a4
{
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v4;
  [(_UITabModel *)self _selectTab:a3 notifyObserversOnReselection:?];
}

- (void)selectTabInSidebar:(id)a3 notifyOnReselection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 _isGroup] && objc_msgSend(v6, "_isSidebarDestination"))
  {
    [v6 _selectElement:0 notifyOnReselection:0 performBeforeNotifyingDelegate:0];
  }

  [(_UITabModel *)self selectTab:v6 notifyOnReselection:v4];
}

- (BOOL)isTabHidden:(id)a3
{
  v4 = a3;
  v5 = [(_UITabModel *)self tabBarController];
  v6 = [v5 sidebar];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 104);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 isTabHidden:v4];
  }

  else
  {
    v10 = [v4 isHidden];
  }

  v11 = v10;

  return v11;
}

- (void)visibilityDidChangeForTab:(id)a3 editing:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    [(_UITabCustomizationStore *)self->_customizationStore updateCustomizationForTab:v6];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___UITabModel_visibilityDidChangeForTab_editing___block_invoke;
  v9[3] = &unk_1E7114418;
  v9[4] = self;
  v7 = v6;
  v10 = v7;
  v8 = v7;
  if (self)
  {
    [(_UITabModel *)self _sendToObservers:v9 allowUpdatesDuringBroadcast:0];
    v8 = v10;
  }
}

- (void)customizabilityDidChangeForTab:(id)a3
{
  v4 = a3;
  v5 = [(_UITabModel *)self isEditable];
  v6 = [v4 _isCustomizable];

  if (v5 != v6)
  {

    [(_UITabModel *)self _inferCurrentEditability];
  }
}

- (void)tabContentDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[138] tabContentDidChange:v4];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35___UITabModel_tabContentDidChange___block_invoke;
  v9[3] = &unk_1E7114418;
  v9[4] = self;
  v7 = v4;
  v10 = v7;
  v8 = v7;
  if (self)
  {
    [(_UITabModel *)self _sendToObservers:v9 allowUpdatesDuringBroadcast:0];
    v8 = v10;
  }
}

- (void)elementsDidChangeForGroup:(id)a3
{
  v4 = a3;
  v5 = [(_UITabModel *)self isEditable];
  if (v5 != [v4 _isCustomizable])
  {
    [(_UITabModel *)self _inferCurrentEditability];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41___UITabModel_elementsDidChangeForGroup___block_invoke;
  v8[3] = &unk_1E7114418;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    [(_UITabModel *)self _sendToObservers:v8 allowUpdatesDuringBroadcast:0];
    v7 = v9;
  }
}

- (void)_selectTab:(id)a3 notifyObserversOnReselection:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (v7 && ([v7 _isElement] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UITabModel.m" lineNumber:260 description:{@"Cannot select a tab that is not selectable.", v8}];
  }

  *&self->_flags |= 2u;
  v9 = [v8 _parentGroup];
  if (v9)
  {
    if (v4)
    {
      if ([v8 _isUniquelySPI])
      {
        v4 = 1;
      }

      else
      {
        v10 = [(_UITabModel *)self selectedLeaf];
        v4 = v10 == v8;
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UITabModel__selectTab_notifyObserversOnReselection___block_invoke;
    v12[3] = &unk_1E70F35B8;
    v12[4] = self;
    v13 = v9;
    [v13 _selectElement:v8 notifyOnReselection:v4 performBeforeNotifyingDelegate:v12];
  }

  else
  {
    *&self->_flags &= ~2u;
    [(_UITabModel *)self _setSelectedItem:v8 notifyDelegateOnReselection:v4];
  }
}

- (void)_updateSelectedLeafPerformBeforeNotifyingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_flags & 2) != 0)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v6 = [(_UITabModel *)self selectedItem];
    if ([(UITab *)v6 _isGroup])
    {
      while (1)
      {
        v7 = [(UITab *)v6 selectedChild];
        if (!v7)
        {
          break;
        }

        v8 = v7;

        v6 = v8;
        if (![(UITab *)v8 _isGroup])
        {
          goto LABEL_9;
        }
      }
    }

    v8 = v6;
LABEL_9:
    v9 = self->_selectedLeaf;
    objc_storeStrong(&self->_selectedLeaf, v8);
    flags = self->_flags;
    if (v8 == v9)
    {
      v11 = (*&flags >> 2) & 1;
    }

    else
    {
      v11 = 1;
    }

    *&self->_flags = *&flags & 0xFB;
    if (v5)
    {
      v5[2](v5);
    }

    if (v8 != v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62___UITabModel__updateSelectedLeafPerformBeforeNotifyingBlock___block_invoke;
      v13[3] = &unk_1E71143F0;
      v13[4] = self;
      v14 = v8;
      v15 = v9;
      [(_UITabModel *)self _sendToObservers:v13 allowUpdatesDuringBroadcast:0];
    }

    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
      [(UITabBarController *)WeakRetained _selectedLeafDidChange:v8 previousLeaf:v9];
    }
  }
}

- (id)tabForIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(_UITabModel *)self tabItems];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

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

        v13 = [v10 tabForIdentifier:v4];
      }

      v14 = v13;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)setPersistenceIdentifier:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_persistenceIdentifier isEqualToString:v4])
  {
    v5 = [v4 copy];
    persistenceIdentifier = self->_persistenceIdentifier;
    self->_persistenceIdentifier = v5;

    customizationStore = self->_customizationStore;
    if (customizationStore)
    {
      [(_UITabCustomizationStore *)customizationStore removeObserver:self];
      v8 = self->_customizationStore;
      self->_customizationStore = 0;

      v9 = [(_UITabModel *)self customizationStore];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40___UITabModel_setPersistenceIdentifier___block_invoke;
      v11[3] = &unk_1E7114418;
      v11[4] = self;
      v12 = v9;
      v10 = v9;
      [(_UITabModel *)self _sendToObservers:v11 allowUpdatesDuringBroadcast:0];
    }
  }
}

- (void)favoriteOrderDidChange:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___UITabModel_favoriteOrderDidChange___block_invoke;
  v7[3] = &unk_1E7114418;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v6 = v5;
  if (self)
  {
    [(_UITabModel *)self _sendToObservers:v7 allowUpdatesDuringBroadcast:0];
    v6 = v8;
  }
}

- (void)customizationStoreDidReset:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42___UITabModel_customizationStoreDidReset___block_invoke;
  v7[3] = &unk_1E7114418;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v6 = v5;
  if (self)
  {
    [(_UITabModel *)self _sendToObservers:v7 allowUpdatesDuringBroadcast:0];
    v6 = v8;
  }
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v6 = [(UITabBarController *)WeakRetained _visualStyle];
  v7 = [v6 suppressesEditingUI];

  v8 = v3 & ~v7;
  if (self->_editable != v8)
  {
    v9 = [(_UITabModel *)self isEditing];
    if ((v8 & 1) == 0 && v9)
    {
      [(_UITabModel *)self setEditing:0];
    }

    self->_editable = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27___UITabModel_setEditable___block_invoke;
    v10[3] = &unk_1E7114468;
    v10[4] = self;
    v11 = v8;
    [(_UITabModel *)self _sendToObservers:v10 allowUpdatesDuringBroadcast:0];
  }
}

- (void)setEditing:(BOOL)a3
{
  v4 = [(_UITabModel *)self isEditable]&& a3;
  if (self->_editing != v4)
  {
    self->_editing = v4;
    v5 = [(_UITabModel *)self tabBarController];
    [(UITabBarController *)v5 _notifyEditingStateChange:v4];
  }
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v6 = [(UITabBarController *)WeakRetained _resolvedPopoverPresentationControllerSourceItemForTab:v4];

  return v6;
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSPointerArray *)observers compact];
  if ([(_UITabModel *)self _indexOfObserver:v7]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_observers addPointer:v7];
  }
}

- (uint64_t)_indexOfObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 8) count])
    {
      v4 = 0;
      while ([*(a1 + 8) pointerAtIndex:v4] != v3)
      {
        if (++v4 >= [*(a1 + 8) count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeObserver:(id)a3
{
  if (self->_observers)
  {
    v4 = [(_UITabModel *)self _indexOfObserver:a3];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)self->_observers removePointerAtIndex:v4];
    }

    observers = self->_observers;

    [(NSPointerArray *)observers compact];
  }
}

- (void)_sendToObservers:(id)a3 allowUpdatesDuringBroadcast:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4)
  {
    v7 = 9;
  }

  else
  {
    v7 = 1;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v7;
  v8 = [(NSPointerArray *)self->_observers copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (*(*(&v14 + 1) + 8 * i))
        {
          v6[2](v6);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSPointerArray *)self->_observers compact];
  *&self->_flags &= 0xF6u;
}

@end