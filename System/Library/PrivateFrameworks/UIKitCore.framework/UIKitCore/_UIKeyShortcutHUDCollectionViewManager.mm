@interface _UIKeyShortcutHUDCollectionViewManager
- (BOOL)client:(id)client isCategoryVisibleForCellAtIndexPath:(id)path;
- (BOOL)client:(id)client shouldHideSeparatorAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (NSArray)allClients;
- (NSArray)preferredFocusEnvironments;
- (_UIKeyShortcutHUDCollectionViewManagerClient)menu;
- (_UIKeyShortcutHUDCollectionViewManagerClient)searchButton;
- (_UIKeyShortcutHUDCollectionViewManagerClient)toolbar;
- (_UIKeyShortcutHUDViewController)hudVC;
- (id)_clientForCollectionView:(id)view;
- (void)_client:(id)_client deselectCellAtIndexPath:(id)path;
- (void)_client:(id)_client highlightCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForDeselectingCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForHighlightingCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForSelectingCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:(id)path;
- (void)_client:(id)_client performBookkeepingForUnhighlightingCellAtIndexPath:(id)path;
- (void)_client:(id)_client removeCategoryVisibleForCellAtIndexPath:(id)path;
- (void)_client:(id)_client selectCellAtIndexPath:(id)path;
- (void)_client:(id)_client setCategoryVisibleForCellAtIndexPath:(id)path;
- (void)_client:(id)_client unhighlightCellAtIndexPath:(id)path;
- (void)_collectionView:(id)view performActionForSelectingCellAtIndexPath:(id)path;
- (void)_collectionView:(id)view updateSeparatorVisibilityForCellAtIndexPath:(id)path;
- (void)_configureCollectionView:(id)view;
- (void)client:(id)client flashCellIfPossibleAtIndexPath:(id)path completionHandler:(id)handler;
- (void)client:(id)client highlightCellAtIndexPath:(id)path;
- (void)client:(id)client reloadSeparatorAtIndexPath:(id)path;
- (void)client:(id)client selectCellAtIndexPath:(id)path;
- (void)client:(id)client setCategoryVisibleForCellAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)deselectCurrentlySelectedCell;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)reloadAllVisibleSeparatorsForClient:(id)client;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setMenu:(id)menu;
- (void)setSearchButton:(id)button;
- (void)setToolbar:(id)toolbar;
@end

@implementation _UIKeyShortcutHUDCollectionViewManager

- (void)setMenu:(id)menu
{
  obj = menu;
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_menu, obj);
    collectionView = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:collectionView];
  }
}

- (void)setToolbar:(id)toolbar
{
  obj = toolbar;
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_toolbar, obj);
    collectionView = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:collectionView];
  }
}

- (void)setSearchButton:(id)button
{
  obj = button;
  WeakRetained = objc_loadWeakRetained(&self->_searchButton);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_searchButton, obj);
    collectionView = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:collectionView];
  }
}

- (void)_configureCollectionView:(id)view
{
  viewCopy = view;
  v4 = +[UIColor clearColor];
  [viewCopy setBackgroundColor:v4];

  [viewCopy setDelegate:self];
  [viewCopy setSelectionFollowsFocus:1];
  v5 = +[_UIKeyShortcutHUDUtilities sharedFocusGroupIdentifier];
  [viewCopy setFocusGroupIdentifier:v5];

  [viewCopy setAlwaysBounceHorizontal:0];
  [viewCopy setAlwaysBounceVertical:0];
  [viewCopy setShowsHorizontalScrollIndicator:0];
  [viewCopy setShowsVerticalScrollIndicator:0];
}

- (id)_clientForCollectionView:(id)view
{
  viewCopy = view;
  p_toolbar = &self->_toolbar;
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);
  collectionView = [WeakRetained collectionView];

  if (collectionView != viewCopy)
  {
    p_toolbar = &self->_menu;
    v8 = objc_loadWeakRetained(&self->_menu);
    collectionView2 = [v8 collectionView];

    if (collectionView2 != viewCopy)
    {
      p_toolbar = &self->_searchButton;
    }
  }

  v10 = objc_loadWeakRetained(p_toolbar);

  return v10;
}

- (NSArray)allClients
{
  v8[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);
  v8[0] = WeakRetained;
  v4 = objc_loadWeakRetained(&self->_menu);
  v8[1] = v4;
  v5 = objc_loadWeakRetained(&self->_searchButton);
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSArray)preferredFocusEnvironments
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!-[_UIKeyShortcutHUDCollectionViewManager nextFocusUpdatePrefersTopSearchResult](self, "nextFocusUpdatePrefersTopSearchResult") || (-[_UIKeyShortcutHUDCollectionViewManager setNextFocusUpdatePrefersTopSearchResult:](self, "setNextFocusUpdatePrefersTopSearchResult:", 0), v3 = objc_loadWeakRetained(&self->_menu), [v3 collectionView], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AC88], "indexPathForItem:inSection:", 0, 0), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "cellForItemAtIndexPath:", v5), firstObject = objc_claimAutoreleasedReturnValue(), v5, v4, v3, !firstObject))
  {
    client = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath client];
    collectionView = [client collectionView];
    indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    firstObject = [collectionView cellForItemAtIndexPath:indexPath];

    if (!firstObject)
    {
      client2 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath client];
      collectionView2 = [client2 collectionView];
      indexPath2 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
      firstObject = [collectionView2 cellForItemAtIndexPath:indexPath2];

      if (!firstObject)
      {
        WeakRetained = objc_loadWeakRetained(&self->_searchButton);
        collectionView3 = [WeakRetained collectionView];
        visibleCells = [collectionView3 visibleCells];
        firstObject = [visibleCells firstObject];
      }
    }
  }

  v16 = objc_loadWeakRetained(&self->_hudVC);
  if ([v16 isSearching])
  {
    v17 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {

      goto LABEL_12;
    }
  }

  else
  {
  }

  if (firstObject)
  {
    v21[0] = firstObject;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    goto LABEL_13;
  }

LABEL_12:
  v19 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v19;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = nextFocusedItem;
    _collectionView = [v7 _collectionView];
    indexPath = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:_collectionView];
    v10 = [_collectionView indexPathForCell:v7];

    [(_UIKeyShortcutHUDCollectionViewManager *)self client:indexPath selectCellAtIndexPath:v10];
  }

  else
  {
    selectedIndexPath = self->_selectedIndexPath;
    if (!selectedIndexPath)
    {
      goto LABEL_6;
    }

    _collectionView = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
    indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_collectionView deselectCellAtIndexPath:indexPath];
  }

LABEL_6:
}

- (BOOL)client:(id)client shouldHideSeparatorAtIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:client indexPath:path];
  v6 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allClients = [(_UIKeyShortcutHUDCollectionViewManager *)self allClients];
  v8 = [allClients countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(allClients);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) indexPathsForCellsUsingSeparatorAtIndexPath:v5];
        [v6 unionSet:v12];
      }

      v9 = [allClients countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = *v24;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v23 + 1) + 8 * j);
          client = [v17 client];
          collectionView = [client collectionView];
          indexPath = [v17 indexPath];
          v21 = [collectionView cellForItemAtIndexPath:indexPath];

          LOBYTE(indexPath) = [v21 isBackgroundVisible];
          if (indexPath)
          {
            LOBYTE(v14) = 1;
            goto LABEL_19;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)client:(id)client reloadSeparatorAtIndexPath:(id)path
{
  pathCopy = path;
  clientCopy = client;
  collectionView = [clientCopy collectionView];
  v9 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v12 = [collectionView supplementaryViewForElementKind:v9 atIndexPath:pathCopy];

  v10 = [(_UIKeyShortcutHUDCollectionViewManager *)self client:clientCopy shouldHideSeparatorAtIndexPath:pathCopy];
  separatorView = [v12 separatorView];
  [separatorView setSeparatorHidden:v10];
}

- (void)reloadAllVisibleSeparatorsForClient:(id)client
{
  v18 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  collectionView = [clientCopy collectionView];
  v6 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v7 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [(_UIKeyShortcutHUDCollectionViewManager *)self client:clientCopy reloadSeparatorAtIndexPath:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)client:(id)client flashCellIfPossibleAtIndexPath:(id)path completionHandler:(id)handler
{
  clientCopy = client;
  pathCopy = path;
  handlerCopy = handler;
  collectionView = [clientCopy collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];
  if (v12)
  {
    [collectionView bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    [collectionView convertRect:v12 fromView:?];
    v40.origin.x = v21;
    v40.origin.y = v22;
    v40.size.width = v23;
    v40.size.height = v24;
    v39.origin.x = v14;
    v39.origin.y = v16;
    v39.size.width = v18;
    v39.size.height = v20;
    if (CGRectIntersectsRect(v39, v40))
    {
      client = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath client];
      v26 = client;
      if (client == clientCopy)
      {
        indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
        v28 = [indexPath isEqual:pathCopy];

        if (v28)
        {
LABEL_8:
          [v12 setFlashing:1];
          [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:collectionView updateSeparatorVisibilityForCellAtIndexPath:pathCopy];
          v29 = +[UIKeyShortcutHUDMetrics currentMetrics];
          [v29 cellFlashDuration];
          v31 = v30;

          v32 = dispatch_time(0, (v31 * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __98___UIKeyShortcutHUDCollectionViewManager_client_flashCellIfPossibleAtIndexPath_completionHandler___block_invoke;
          block[3] = &unk_1E7103108;
          v34 = v12;
          selfCopy = self;
          v36 = collectionView;
          v37 = pathCopy;
          v38 = handlerCopy;
          dispatch_after(v32, MEMORY[0x1E69E96A0], block);

          goto LABEL_9;
        }
      }

      else
      {
      }

      [(_UIKeyShortcutHUDCollectionViewManager *)self client:clientCopy selectCellAtIndexPath:0];
      goto LABEL_8;
    }
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_9:
}

- (void)client:(id)client selectCellAtIndexPath:(id)path
{
  selectedIndexPath = self->_selectedIndexPath;
  pathCopy = path;
  clientCopy = client;
  client = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
  indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:client deselectCellAtIndexPath:indexPath];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:clientCopy selectCellAtIndexPath:pathCopy];
}

- (void)_client:(id)_client deselectCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    [collectionView deselectItemAtIndexPath:pathCopy animated:0];

    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForDeselectingCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForDeselectingCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [_client collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:collectionView updateSeparatorVisibilityForCellAtIndexPath:pathCopy];

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;
}

- (void)_client:(id)_client selectCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];

    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForSelectingCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForSelectingCellAtIndexPath:(id)path
{
  pathCopy = path;
  _clientCopy = _client;
  collectionView = [_clientCopy collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:collectionView updateSeparatorVisibilityForCellAtIndexPath:pathCopy];

  v9 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:_clientCopy indexPath:pathCopy];

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v9;
}

- (void)deselectCurrentlySelectedCell
{
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath)
  {
    client = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
    indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:client deselectCellAtIndexPath:indexPath];
  }
}

- (void)client:(id)client highlightCellAtIndexPath:(id)path
{
  highlightedIndexPath = self->_highlightedIndexPath;
  pathCopy = path;
  clientCopy = client;
  client = [(_UIKeyShortcutHUDIndexPath *)highlightedIndexPath client];
  indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_highlightedIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:client unhighlightCellAtIndexPath:indexPath];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:clientCopy highlightCellAtIndexPath:pathCopy];
}

- (void)_client:(id)_client unhighlightCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];

    [v9 setHighlighted:0];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForUnhighlightingCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForUnhighlightingCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [_client collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:collectionView updateSeparatorVisibilityForCellAtIndexPath:pathCopy];

  highlightedIndexPath = self->_highlightedIndexPath;
  self->_highlightedIndexPath = 0;
}

- (void)_client:(id)_client highlightCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];

    [v9 setHighlighted:1];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForHighlightingCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForHighlightingCellAtIndexPath:(id)path
{
  pathCopy = path;
  _clientCopy = _client;
  collectionView = [_clientCopy collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:collectionView updateSeparatorVisibilityForCellAtIndexPath:pathCopy];

  v9 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:_clientCopy indexPath:pathCopy];

  highlightedIndexPath = self->_highlightedIndexPath;
  self->_highlightedIndexPath = v9;
}

- (BOOL)client:(id)client isCategoryVisibleForCellAtIndexPath:(id)path
{
  pathCopy = path;
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  clientCopy = client;
  client = [(_UIKeyShortcutHUDIndexPath *)categoryVisibleIndexPath client];

  if (client == clientCopy)
  {
    indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
    v10 = [indexPath isEqual:pathCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)client:(id)client setCategoryVisibleForCellAtIndexPath:(id)path
{
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  pathCopy = path;
  clientCopy = client;
  client = [(_UIKeyShortcutHUDIndexPath *)categoryVisibleIndexPath client];
  indexPath = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:client removeCategoryVisibleForCellAtIndexPath:indexPath];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:clientCopy setCategoryVisibleForCellAtIndexPath:pathCopy];
}

- (void)_client:(id)_client removeCategoryVisibleForCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];

    [v9 setCategoryVisible:0];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:(id)path
{
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  self->_categoryVisibleIndexPath = 0;
}

- (void)_client:(id)_client setCategoryVisibleForCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    _clientCopy = _client;
    collectionView = [_clientCopy collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];

    [v9 setCategoryVisible:1];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:_clientCopy performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:pathCopy];
  }
}

- (void)_client:(id)_client performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:(id)path
{
  v5 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:_client indexPath:path];
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  self->_categoryVisibleIndexPath = v5;
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForUnhighlightingCellAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
  [(_UIKeyShortcutHUDCollectionViewManager *)self client:v7 highlightCellAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForDeselectingCellAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:viewCopy];
  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
  if ([v7 shouldPersistSelectionForCellAtIndexPath:pathCopy] & 1) != 0 || (objc_msgSend(v8, "isFocused"))
  {
    [(_UIKeyShortcutHUDCollectionViewManager *)self client:v7 selectCellAtIndexPath:pathCopy];
  }

  else
  {
    [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
  }

  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:viewCopy performActionForSelectingCellAtIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
  LOBYTE(self) = [v7 selectionFollowsFocusForItemAtIndexPath:pathCopy];

  return self;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v10 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:viewCopy];
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  if (v10 == WeakRetained)
  {
    v12 = cellCopy;
    v13 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:viewCopy];
    [v12 setCategoryVisible:{-[_UIKeyShortcutHUDCollectionViewManager client:isCategoryVisibleForCellAtIndexPath:](self, "client:isCategoryVisibleForCellAtIndexPath:", v13, pathCopy)}];
  }
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  pathCopy = path;
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:viewCopy];
    v14 = supplementaryViewCopy;
    v15 = [(_UIKeyShortcutHUDCollectionViewManager *)self client:v13 shouldHideSeparatorAtIndexPath:pathCopy];
    separatorView = [v14 separatorView];

    [separatorView setSeparatorHidden:v15];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:scroll];
  [v3 didScrollCollectionView];
}

- (void)_collectionView:(id)view performActionForSelectingCellAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
    [v7 performActionForSelectingCellAtIndexPath:pathCopy];
  }
}

- (void)_collectionView:(id)view updateSeparatorVisibilityForCellAtIndexPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:view];
    v8 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:v7 indexPath:pathCopy];
    v9 = [MEMORY[0x1E695DFA8] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    allClients = [(_UIKeyShortcutHUDCollectionViewManager *)self allClients];
    v11 = [allClients countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(allClients);
          }

          v15 = [*(*(&v28 + 1) + 8 * i) indexPathsForSeparatorsUsedByCellAtIndexPath:v8];
          [v9 unionSet:v15];
        }

        v12 = [allClients countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v21 = *(*(&v24 + 1) + 8 * j);
          client = [v21 client];
          indexPath = [v21 indexPath];
          [(_UIKeyShortcutHUDCollectionViewManager *)self client:client reloadSeparatorAtIndexPath:indexPath];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }
}

- (_UIKeyShortcutHUDViewController)hudVC
{
  WeakRetained = objc_loadWeakRetained(&self->_hudVC);

  return WeakRetained;
}

- (_UIKeyShortcutHUDCollectionViewManagerClient)menu
{
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  return WeakRetained;
}

- (_UIKeyShortcutHUDCollectionViewManagerClient)toolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  return WeakRetained;
}

- (_UIKeyShortcutHUDCollectionViewManagerClient)searchButton
{
  WeakRetained = objc_loadWeakRetained(&self->_searchButton);

  return WeakRetained;
}

@end