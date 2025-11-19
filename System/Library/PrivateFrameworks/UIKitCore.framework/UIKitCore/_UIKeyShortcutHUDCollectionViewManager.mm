@interface _UIKeyShortcutHUDCollectionViewManager
- (BOOL)client:(id)a3 isCategoryVisibleForCellAtIndexPath:(id)a4;
- (BOOL)client:(id)a3 shouldHideSeparatorAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (NSArray)allClients;
- (NSArray)preferredFocusEnvironments;
- (_UIKeyShortcutHUDCollectionViewManagerClient)menu;
- (_UIKeyShortcutHUDCollectionViewManagerClient)searchButton;
- (_UIKeyShortcutHUDCollectionViewManagerClient)toolbar;
- (_UIKeyShortcutHUDViewController)hudVC;
- (id)_clientForCollectionView:(id)a3;
- (void)_client:(id)a3 deselectCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 highlightCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForDeselectingCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForHighlightingCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForSelectingCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 performBookkeepingForUnhighlightingCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 removeCategoryVisibleForCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 selectCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 setCategoryVisibleForCellAtIndexPath:(id)a4;
- (void)_client:(id)a3 unhighlightCellAtIndexPath:(id)a4;
- (void)_collectionView:(id)a3 performActionForSelectingCellAtIndexPath:(id)a4;
- (void)_collectionView:(id)a3 updateSeparatorVisibilityForCellAtIndexPath:(id)a4;
- (void)_configureCollectionView:(id)a3;
- (void)client:(id)a3 flashCellIfPossibleAtIndexPath:(id)a4 completionHandler:(id)a5;
- (void)client:(id)a3 highlightCellAtIndexPath:(id)a4;
- (void)client:(id)a3 reloadSeparatorAtIndexPath:(id)a4;
- (void)client:(id)a3 selectCellAtIndexPath:(id)a4;
- (void)client:(id)a3 setCategoryVisibleForCellAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)deselectCurrentlySelectedCell;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)reloadAllVisibleSeparatorsForClient:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setMenu:(id)a3;
- (void)setSearchButton:(id)a3;
- (void)setToolbar:(id)a3;
@end

@implementation _UIKeyShortcutHUDCollectionViewManager

- (void)setMenu:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_menu, obj);
    v6 = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:v6];
  }
}

- (void)setToolbar:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_toolbar, obj);
    v6 = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:v6];
  }
}

- (void)setSearchButton:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_searchButton);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_searchButton, obj);
    v6 = [obj collectionView];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _configureCollectionView:v6];
  }
}

- (void)_configureCollectionView:(id)a3
{
  v6 = a3;
  v4 = +[UIColor clearColor];
  [v6 setBackgroundColor:v4];

  [v6 setDelegate:self];
  [v6 setSelectionFollowsFocus:1];
  v5 = +[_UIKeyShortcutHUDUtilities sharedFocusGroupIdentifier];
  [v6 setFocusGroupIdentifier:v5];

  [v6 setAlwaysBounceHorizontal:0];
  [v6 setAlwaysBounceVertical:0];
  [v6 setShowsHorizontalScrollIndicator:0];
  [v6 setShowsVerticalScrollIndicator:0];
}

- (id)_clientForCollectionView:(id)a3
{
  v4 = a3;
  p_toolbar = &self->_toolbar;
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);
  v7 = [WeakRetained collectionView];

  if (v7 != v4)
  {
    p_toolbar = &self->_menu;
    v8 = objc_loadWeakRetained(&self->_menu);
    v9 = [v8 collectionView];

    if (v9 != v4)
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
  if (!-[_UIKeyShortcutHUDCollectionViewManager nextFocusUpdatePrefersTopSearchResult](self, "nextFocusUpdatePrefersTopSearchResult") || (-[_UIKeyShortcutHUDCollectionViewManager setNextFocusUpdatePrefersTopSearchResult:](self, "setNextFocusUpdatePrefersTopSearchResult:", 0), v3 = objc_loadWeakRetained(&self->_menu), [v3 collectionView], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AC88], "indexPathForItem:inSection:", 0, 0), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "cellForItemAtIndexPath:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, v3, !v6))
  {
    v7 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath client];
    v8 = [v7 collectionView];
    v9 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    v6 = [v8 cellForItemAtIndexPath:v9];

    if (!v6)
    {
      v10 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath client];
      v11 = [v10 collectionView];
      v12 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
      v6 = [v11 cellForItemAtIndexPath:v12];

      if (!v6)
      {
        WeakRetained = objc_loadWeakRetained(&self->_searchButton);
        v14 = [WeakRetained collectionView];
        v15 = [v14 visibleCells];
        v6 = [v15 firstObject];
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

  if (v6)
  {
    v21[0] = v6;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    goto LABEL_13;
  }

LABEL_12:
  v19 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v19;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12 = [a3 nextFocusedItem];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v12;
    v8 = [v7 _collectionView];
    v9 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:v8];
    v10 = [v8 indexPathForCell:v7];

    [(_UIKeyShortcutHUDCollectionViewManager *)self client:v9 selectCellAtIndexPath:v10];
  }

  else
  {
    selectedIndexPath = self->_selectedIndexPath;
    if (!selectedIndexPath)
    {
      goto LABEL_6;
    }

    v8 = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
    v9 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 deselectCellAtIndexPath:v9];
  }

LABEL_6:
}

- (BOOL)client:(id)a3 shouldHideSeparatorAtIndexPath:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:a3 indexPath:a4];
  v6 = [MEMORY[0x1E695DFA8] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self allClients];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) indexPathsForCellsUsingSeparatorAtIndexPath:v5];
        [v6 unionSet:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          v18 = [v17 client];
          v19 = [v18 collectionView];
          v20 = [v17 indexPath];
          v21 = [v19 cellForItemAtIndexPath:v20];

          LOBYTE(v20) = [v21 isBackgroundVisible];
          if (v20)
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

- (void)client:(id)a3 reloadSeparatorAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 collectionView];
  v9 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v12 = [v8 supplementaryViewForElementKind:v9 atIndexPath:v6];

  v10 = [(_UIKeyShortcutHUDCollectionViewManager *)self client:v7 shouldHideSeparatorAtIndexPath:v6];
  v11 = [v12 separatorView];
  [v11 setSeparatorHidden:v10];
}

- (void)reloadAllVisibleSeparatorsForClient:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 collectionView];
  v6 = +[_UIKeyShortcutHUDUtilities separatorElementKind];
  v7 = [v5 indexPathsForVisibleSupplementaryElementsOfKind:v6];

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

        [(_UIKeyShortcutHUDCollectionViewManager *)self client:v4 reloadSeparatorAtIndexPath:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)client:(id)a3 flashCellIfPossibleAtIndexPath:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 collectionView];
  v12 = [v11 cellForItemAtIndexPath:v9];
  if (v12)
  {
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    [v11 convertRect:v12 fromView:?];
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
      v25 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath client];
      v26 = v25;
      if (v25 == v8)
      {
        v27 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
        v28 = [v27 isEqual:v9];

        if (v28)
        {
LABEL_8:
          [v12 setFlashing:1];
          [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v11 updateSeparatorVisibilityForCellAtIndexPath:v9];
          v29 = +[UIKeyShortcutHUDMetrics currentMetrics];
          [v29 cellFlashDuration];
          v31 = v30;

          v32 = dispatch_time(0, (v31 * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __98___UIKeyShortcutHUDCollectionViewManager_client_flashCellIfPossibleAtIndexPath_completionHandler___block_invoke;
          block[3] = &unk_1E7103108;
          v34 = v12;
          v35 = self;
          v36 = v11;
          v37 = v9;
          v38 = v10;
          dispatch_after(v32, MEMORY[0x1E69E96A0], block);

          goto LABEL_9;
        }
      }

      else
      {
      }

      [(_UIKeyShortcutHUDCollectionViewManager *)self client:v8 selectCellAtIndexPath:0];
      goto LABEL_8;
    }
  }

  (*(v10 + 2))(v10, 0);
LABEL_9:
}

- (void)client:(id)a3 selectCellAtIndexPath:(id)a4
{
  selectedIndexPath = self->_selectedIndexPath;
  v7 = a4;
  v10 = a3;
  v8 = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
  v9 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 deselectCellAtIndexPath:v9];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v10 selectCellAtIndexPath:v7];
}

- (void)_client:(id)a3 deselectCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v8 = a3;
    v7 = [v8 collectionView];
    [v7 deselectItemAtIndexPath:v6 animated:0];

    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 performBookkeepingForDeselectingCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForDeselectingCellAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v7 updateSeparatorVisibilityForCellAtIndexPath:v6];

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;
}

- (void)_client:(id)a3 selectCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v8 = a3;
    v7 = [v8 collectionView];
    [v7 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];

    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 performBookkeepingForSelectingCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForSelectingCellAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v8 updateSeparatorVisibilityForCellAtIndexPath:v6];

  v9 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:v7 indexPath:v6];

  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v9;
}

- (void)deselectCurrentlySelectedCell
{
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath)
  {
    v5 = [(_UIKeyShortcutHUDIndexPath *)selectedIndexPath client];
    v4 = [(_UIKeyShortcutHUDIndexPath *)self->_selectedIndexPath indexPath];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v5 deselectCellAtIndexPath:v4];
  }
}

- (void)client:(id)a3 highlightCellAtIndexPath:(id)a4
{
  highlightedIndexPath = self->_highlightedIndexPath;
  v7 = a4;
  v10 = a3;
  v8 = [(_UIKeyShortcutHUDIndexPath *)highlightedIndexPath client];
  v9 = [(_UIKeyShortcutHUDIndexPath *)self->_highlightedIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 unhighlightCellAtIndexPath:v9];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v10 highlightCellAtIndexPath:v7];
}

- (void)_client:(id)a3 unhighlightCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 collectionView];
    v9 = [v8 cellForItemAtIndexPath:v6];

    [v9 setHighlighted:0];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForUnhighlightingCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForUnhighlightingCellAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v7 updateSeparatorVisibilityForCellAtIndexPath:v6];

  highlightedIndexPath = self->_highlightedIndexPath;
  self->_highlightedIndexPath = 0;
}

- (void)_client:(id)a3 highlightCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 collectionView];
    v9 = [v8 cellForItemAtIndexPath:v6];

    [v9 setHighlighted:1];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForHighlightingCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForHighlightingCellAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 collectionView];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v8 updateSeparatorVisibilityForCellAtIndexPath:v6];

  v9 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:v7 indexPath:v6];

  highlightedIndexPath = self->_highlightedIndexPath;
  self->_highlightedIndexPath = v9;
}

- (BOOL)client:(id)a3 isCategoryVisibleForCellAtIndexPath:(id)a4
{
  v6 = a4;
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  v8 = a3;
  v9 = [(_UIKeyShortcutHUDIndexPath *)categoryVisibleIndexPath client];

  if (v9 == v8)
  {
    v11 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
    v10 = [v11 isEqual:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)client:(id)a3 setCategoryVisibleForCellAtIndexPath:(id)a4
{
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  v7 = a4;
  v10 = a3;
  v8 = [(_UIKeyShortcutHUDIndexPath *)categoryVisibleIndexPath client];
  v9 = [(_UIKeyShortcutHUDIndexPath *)self->_categoryVisibleIndexPath indexPath];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v8 removeCategoryVisibleForCellAtIndexPath:v9];

  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v10 setCategoryVisibleForCellAtIndexPath:v7];
}

- (void)_client:(id)a3 removeCategoryVisibleForCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 collectionView];
    v9 = [v8 cellForItemAtIndexPath:v6];

    [v9 setCategoryVisible:0];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForRemovingCategoryVisibleForCellAtIndexPath:(id)a4
{
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  self->_categoryVisibleIndexPath = 0;
}

- (void)_client:(id)a3 setCategoryVisibleForCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 collectionView];
    v9 = [v8 cellForItemAtIndexPath:v6];

    [v9 setCategoryVisible:1];
    [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:v6];
  }
}

- (void)_client:(id)a3 performBookkeepingForSettingCategoryVisibleForCellAtIndexPath:(id)a4
{
  v5 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:a3 indexPath:a4];
  categoryVisibleIndexPath = self->_categoryVisibleIndexPath;
  self->_categoryVisibleIndexPath = v5;
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForUnhighlightingCellAtIndexPath:v6];
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
  [(_UIKeyShortcutHUDCollectionViewManager *)self client:v7 highlightCellAtIndexPath:v6];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
  [(_UIKeyShortcutHUDCollectionViewManager *)self _client:v7 performBookkeepingForDeselectingCellAtIndexPath:v6];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:v9];
  v8 = [v9 cellForItemAtIndexPath:v6];
  if ([v7 shouldPersistSelectionForCellAtIndexPath:v6] & 1) != 0 || (objc_msgSend(v8, "isFocused"))
  {
    [(_UIKeyShortcutHUDCollectionViewManager *)self client:v7 selectCellAtIndexPath:v6];
  }

  else
  {
    [v9 deselectItemAtIndexPath:v6 animated:0];
  }

  [(_UIKeyShortcutHUDCollectionViewManager *)self _collectionView:v9 performActionForSelectingCellAtIndexPath:v6];
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
  LOBYTE(self) = [v7 selectionFollowsFocusForItemAtIndexPath:v6];

  return self;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:v14];
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  if (v10 == WeakRetained)
  {
    v12 = v8;
    v13 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:v14];
    [v12 setCategoryVisible:{-[_UIKeyShortcutHUDCollectionViewManager client:isCategoryVisibleForCellAtIndexPath:](self, "client:isCategoryVisibleForCellAtIndexPath:", v13, v9)}];
  }
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v17 = a3;
  v9 = a4;
  v10 = a6;
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:v17];
    v14 = v9;
    v15 = [(_UIKeyShortcutHUDCollectionViewManager *)self client:v13 shouldHideSeparatorAtIndexPath:v10];
    v16 = [v14 separatorView];

    [v16 setSeparatorHidden:v15];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
  [v3 didScrollCollectionView];
}

- (void)_collectionView:(id)a3 performActionForSelectingCellAtIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
    [v7 performActionForSelectingCellAtIndexPath:v6];
  }
}

- (void)_collectionView:(id)a3 updateSeparatorVisibilityForCellAtIndexPath:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = [(_UIKeyShortcutHUDCollectionViewManager *)self _clientForCollectionView:a3];
    v8 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:v7 indexPath:v6];
    v9 = [MEMORY[0x1E695DFA8] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [(_UIKeyShortcutHUDCollectionViewManager *)self allClients];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v28 + 1) + 8 * i) indexPathsForSeparatorsUsedByCellAtIndexPath:v8];
          [v9 unionSet:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          v22 = [v21 client];
          v23 = [v21 indexPath];
          [(_UIKeyShortcutHUDCollectionViewManager *)self client:v22 reloadSeparatorAtIndexPath:v23];
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