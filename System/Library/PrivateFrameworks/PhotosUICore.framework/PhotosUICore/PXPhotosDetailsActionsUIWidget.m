@interface PXPhotosDetailsActionsUIWidget
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)hasContentForCurrentInput;
- (CGPoint)lastNormalizedTapPosition;
- (PXActionPerformerDelegate)actionPerformerDelegate;
- (PXPhotosDetailsActionsUIWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetUnlockDelegate)widgetUnlockDelegate;
- (id)_createNewLayout;
- (id)_extendedTraitCollection;
- (id)menuElementsForActionRowTile:(id)a3;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)undoManagerForActionPerformer:(id)a3;
- (void)_handleContentSizeCategoryDidChange:(id)a3;
- (void)_loadTilingController;
- (void)_performChanges:(id)a3;
- (void)_setAllowedActionTypes:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setPeopleFetchResult:(id)a3;
- (void)_setPerformableActionTypes:(id)a3;
- (void)_setPhotosDataSource:(id)a3;
- (void)_setRowHeight:(double)a3;
- (void)_setViewModel:(id)a3;
- (void)_updateActionManagerIfNeeded;
- (void)_updateAllowedActionTypesIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updatePeopleFetchResultIfNeeded;
- (void)_updatePerformableActionTypesIfNeeded;
- (void)_updateRowHeightIfNeeded;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)actionRowTileSelected:(id)a3 tapPositionInTile:(CGPoint)a4;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)configureActionButtonTile:(id)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)reusableObjectPool:(id)a3 didCreateReusableObject:(id)a4;
- (void)reusableObjectPool:(id)a3 didEvictReusableObject:(id)a4;
- (void)setAllowCreateMemoryAction:(BOOL)a3;
- (void)setAllowInternalFileRadarAction:(BOOL)a3;
- (void)setAllowRevealInMomentAction:(BOOL)a3;
- (void)setContext:(id)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXPhotosDetailsActionsUIWidget

- (CGPoint)lastNormalizedTapPosition
{
  x = self->_lastNormalizedTapPosition.x;
  y = self->_lastNormalizedTapPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXActionPerformerDelegate)actionPerformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformerDelegate);

  return WeakRetained;
}

- (PXWidgetUnlockDelegate)widgetUnlockDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetUnlockDelegate);

  return WeakRetained;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsUpdateFlags.layout)
  {
    v11[9] = v2;
    v11[10] = v3;
    self->_needsUpdateFlags.layout = 0;
    v5 = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
    v6 = [v5 currentLayout];
    v7 = v6;
    if (self->_ensureTransition || (v8 = [v6 numberOfItems], v8 != -[NSArray count](self->__performableActionTypes, "count")))
    {
      self->_ensureTransition = 0;
      if (v5)
      {
        if (v7)
        {
          v10 = [(PXPhotosDetailsActionsUIWidget *)self _createNewLayout];
          [v5 transitionToLayout:v10];
        }
      }
    }

    else
    {
      v9 = [v5 scrollController];
      [v9 visibleRect];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__PXPhotosDetailsActionsUIWidget__updateLayoutIfNeeded__block_invoke;
      v11[3] = &unk_1E773D130;
      v11[4] = self;
      [v5 enumerateTilesInRect:0 withOptions:v11 usingBlock:?];
    }
  }
}

uint64_t __55__PXPhotosDetailsActionsUIWidget__updateLayoutIfNeeded__block_invoke(uint64_t result, __int128 *a2)
{
  if (*(a2 + 1) == 6200434)
  {
    v18[5] = v2;
    v18[6] = v3;
    v5 = result;
    v18[0] = 0;
    v6 = [*(result + 32) _tilingController];
    v7 = a2[3];
    v14 = a2[2];
    v15 = v7;
    v16 = a2[4];
    v17 = *(a2 + 10);
    v8 = a2[1];
    v12 = *a2;
    v13 = v8;
    [v6 getTile:v18 geometry:0 group:0 userData:0 forTileWithIdentifier:&v12];

    v9 = *(v5 + 32);
    v10 = a2[3];
    v14 = a2[2];
    v15 = v10;
    v16 = a2[4];
    v17 = *(a2 + 10);
    v11 = a2[1];
    v12 = *a2;
    v13 = v11;
    return [v9 configureActionButtonTile:v18[0] withIdentifier:&v12];
  }

  return result;
}

- (void)_setRowHeight:(double)a3
{
  if (self->__rowHeight != a3)
  {
    self->__rowHeight = a3;
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayoutEnsureTransition];
  }
}

- (void)_updateRowHeightIfNeeded
{
  if (self->_needsUpdateFlags.rowHeight)
  {
    self->_needsUpdateFlags.rowHeight = 0;
    v10 = [(PXPhotosDetailsActionsUIWidget *)self _measuringActionRowTile];
    [v10 prepareForReuse];
    [v10 setTitle:@"Title"];
    v4 = [v10 view];
    [v4 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v5;

    v7 = round(v6);
    v8 = [(PXWidgetSpec *)self->_spec userInterfaceIdiom];
    v9 = 42.0;
    if (v8 == 3)
    {
      v9 = 70.0;
    }

    if (v7 >= v9)
    {
      v9 = v7;
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setRowHeight:v9];
  }
}

- (void)_updateActionManagerIfNeeded
{
  if (self->_needsUpdateFlags.actionManager)
  {
    self->_needsUpdateFlags.actionManager = 0;
    v12 = [(PXPhotosDetailsActionsUIWidget *)self _photosDataSource];
    v4 = [v12 firstAssetCollection];
    if (v4)
    {
      v5 = [(PXPhotosDetailsActionsUIWidget *)self context];
      v6 = [v5 displayTitleInfo];

      v7 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v4 displayTitleInfo:v6];
      v8 = [(PXPhotosDetailsActionsUIWidget *)self _peopleFetchResult];
      [(PXPhotoKitAssetCollectionActionManager *)v7 setPeople:v8];

      v9 = [(PXPhotosDetailsActionsUIWidget *)self context];
      v10 = [v9 containingAlbum];
      [(PXPhotoKitAssetCollectionActionManager *)v7 setContainingAlbum:v10];

      v11 = [v12 assetsInSection:0];
      [(PXAssetCollectionActionManager *)v7 setAssetsFetchResult:v11];
    }

    else
    {
      v7 = 0;
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setAssetCollectionActionManager:v7];
  }
}

- (void)_updatePerformableActionTypesIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.performableActionTypes)
  {
    self->_needsUpdateFlags.performableActionTypes = 0;
    v3 = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
    v4 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(PXPhotosDetailsActionsUIWidget *)self _allowedActionTypes];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v3 canPerformActionType:v10])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([v4 count] || -[PXPhotosDetailsActionsUIWidget allowInternalFileRadarAction](self, "allowInternalFileRadarAction"))
    {
      v11 = *off_1E7721D18;
      if ([v3 canPerformActionType:*off_1E7721D18])
      {
        [v4 addObject:v11];
      }
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setPerformableActionTypes:v4];
  }
}

- (void)_updateAllowedActionTypesIfNeeded
{
  if (self->_needsUpdateFlags.allowedActionTypes)
  {
    self->_needsUpdateFlags.allowedActionTypes = 0;
    v4 = [MEMORY[0x1E695DF70] array];
    if ([(PXPhotosDetailsActionsUIWidget *)self allowRevealInMomentAction])
    {
      [v4 addObject:*off_1E7721D98];
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setAllowedActionTypes:v4];
  }
}

- (void)_updatePeopleFetchResultIfNeeded
{
  if (self->_needsUpdateFlags.peopleFetchResult)
  {
    self->_needsUpdateFlags.peopleFetchResult = 0;
    v4 = [(PXPhotosDetailsActionsUIWidget *)self context];
    v5 = [v4 people];

    [(PXPhotosDetailsActionsUIWidget *)self _setPeopleFetchResult:v5];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:593 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXPhotosDetailsActionsUIWidget *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXPhotosDetailsActionsUIWidget *)self _updatePeopleFetchResultIfNeeded];
    [(PXPhotosDetailsActionsUIWidget *)self _updateActionManagerIfNeeded];
    [(PXPhotosDetailsActionsUIWidget *)self _updateAllowedActionTypesIfNeeded];
    [(PXPhotosDetailsActionsUIWidget *)self _updatePerformableActionTypesIfNeeded];
    [(PXPhotosDetailsActionsUIWidget *)self _updateRowHeightIfNeeded];
    [(PXPhotosDetailsActionsUIWidget *)self _updateLayoutIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXPhotosDetailsActionsUIWidget *)self _needsUpdate])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:589 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = v4;
  if (v4)
  {
    v4[2](v4);
    v4 = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXPhotosDetailsActionsUIWidget *)self _updateIfNeeded];
    v4 = v6;
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSpecManagerObservationContext_142047 == a5)
  {
    if (v6)
    {
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v11 = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke;
      goto LABEL_12;
    }
  }

  else if (PXPhotosDetailsContextObservationContext_142048 == a5)
  {
    if ((v6 & 0x30) != 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke_2;
      v16[3] = &unk_1E774C648;
      v16[4] = self;
      [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v16];
    }

    if ((v6 & 8) != 0)
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v11 = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke_3;
      goto LABEL_12;
    }
  }

  else
  {
    if (PXPhotosDetailsViewModelObservationContext != a5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:542 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 0x20) != 0)
    {
      v10 = &v13;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v11 = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke_4;
LABEL_12:
      v10[2] = v11;
      v10[3] = &unk_1E774C648;
      v10[4] = self;
      [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v13, v14];
    }
  }
}

uint64_t __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _invalidatePeopleFetchResult];
  v2 = *(a1 + 32);

  return [v2 _invalidateLayout];
}

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v5 = [a4 sectionedDataSourceChangeDetails];
  v6 = [v5 sectionChanges];

  if ([v6 hasAnyChanges])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PXPhotosDetailsActionsUIWidget_photosDataSource_didChange___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v7];
  }
}

void __61__PXPhotosDetailsActionsUIWidget_photosDataSource_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _photosDataSource];
  v6 = [v2 firstAssetCollection];

  v3 = [*(a1 + 32) _assetCollectionActionManager];
  v4 = [v3 assetCollectionReference];
  v5 = [v4 assetCollection];

  if (v5 != v6)
  {
    [*(a1 + 32) _invalidateActionManager];
    [*(a1 + 32) _invalidatePerformableActionTypes];
  }

  [*(a1 + 32) _invalidateLayout];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__142052;
  v37 = __Block_byref_object_dispose__142053;
  v38 = 0;
  v6 = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
  v7 = [v6 scrollController];
  [v7 visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__PXPhotosDetailsActionsUIWidget_prepareForPopoverPresentation___block_invoke;
  v30[3] = &unk_1E773D108;
  v30[4] = self;
  v16 = v5;
  v31 = v16;
  v32 = &v33;
  [v6 enumerateTilesInRect:0 withOptions:v30 usingBlock:{v9, v11, v13, v15}];
  v17 = v34[5];
  if (v17)
  {
    [v17 bounds];
    v19 = v18;
    [(PXPhotosDetailsActionsUIWidget *)self lastNormalizedTapPosition];
    v21 = v20;
    [v34[5] bounds];
    v23 = v22;
    [v34[5] bounds];
    v25 = v24;
    [v34[5] bounds];
    v27 = v26;
    [v4 setSourceView:v34[5]];
    [v4 setSourceRect:{v19 * v21 + v25 * -0.5, v23 + v27 * -0.75, v25, v27}];
    [v4 setPermittedArrowDirections:2];
  }

  else
  {
    v28 = PLUIGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v16 actionType];
      *buf = 138412290;
      v40 = v29;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "Failed to prepare popover presentation over a tile row for action type (%@)", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v33, 8);
}

void __64__PXPhotosDetailsActionsUIWidget_prepareForPopoverPresentation___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (*(a2 + 8) == 6200434)
  {
    v12 = *(a2 + 24);
    v13 = [*(a1 + 32) _performableActionTypes];
    v18 = [v13 objectAtIndexedSubscript:v12];

    v14 = [*(a1 + 40) actionType];
    LODWORD(v13) = [v14 isEqualToString:v18];

    if (v13)
    {
      v15 = [a3 view];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a8 = 1;
    }
  }
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  v5 = [v4 widgetUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [v5 popoverPresentationController];
  [v6 setDelegate:self];
  v7 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  LOBYTE(self) = [v7 widget:self transitionToViewController:v5 withTransitionType:2];

  return self;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 10)
  {
    [(PXPhotosDetailsActionsUIWidget *)self _setActivePerformer:v6];
  }

  else
  {
    v7 = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];

    if (v7 == v6)
    {
      [(PXPhotosDetailsActionsUIWidget *)self _setActivePerformer:0];
    }

    if (a4 == 20)
    {
      v8 = [v6 actionType];
      v9 = *off_1E7721CC0;
      v10 = [v8 isEqualToString:*off_1E7721CC0];

      if (v10)
      {
        v11 = MEMORY[0x1E695DFA8];
        v12 = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
        v13 = [v12 disabledActionTypes];
        v14 = [v11 setWithSet:v13];

        [v14 addObject:v9];
        v15 = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __65__PXPhotosDetailsActionsUIWidget_actionPerformer_didChangeState___block_invoke;
        v26[3] = &unk_1E773D0E0;
        v27 = v14;
        v16 = v14;
        [v15 performChanges:v26];
      }

      v17 = [v6 actionType];
      v18 = [v17 isEqualToString:*off_1E7721C48];

      if (v18)
      {
        v19 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
        [v19 widget:self requestViewControllerDismissalAnimated:1];
      }

      v20 = [v6 actionType];
      v21 = [v20 isEqualToString:*off_1E7721CF8];

      if (v21)
      {
        v22 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
        [v22 widget:self requestViewControllerDismissalAnimated:1];
      }
    }
  }

  v23 = [(PXPhotosDetailsActionsUIWidget *)self actionPerformerDelegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(PXPhotosDetailsActionsUIWidget *)self actionPerformerDelegate];
    [v25 actionPerformer:v6 didChangeState:a4];
  }
}

- (id)menuElementsForActionRowTile:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
  v6 = v5;
  if (v5)
  {
    [v5 tileIdentifierForTile:v4];
  }

  return 0;
}

- (void)actionRowTileSelected:(id)a3 tapPositionInTile:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];

  if (!v8)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v9 = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
    v10 = v9;
    if (v9)
    {
      [v9 tileIdentifierForTile:v7];
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
    }

    if ((v25 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(&v26 + 1);
      v12 = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
      v13 = [v12 objectAtIndexedSubscript:v11];

      v14 = [v7 view];
      [v14 bounds];
      v16 = v15;
      v18 = v17;

      [(PXPhotosDetailsActionsUIWidget *)self setLastNormalizedTapPosition:x / v16, y / v18];
      v19 = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
      v20 = [v19 actionPerformerForActionType:v13];

      [v20 setDelegate:self];
      v21 = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __74__PXPhotosDetailsActionsUIWidget_actionRowTileSelected_tapPositionInTile___block_invoke;
      v23[3] = &unk_1E774C648;
      v24 = v20;
      v22 = v20;
      [v21 widget:self performAfterUnlockingDeviceIfNecessary:v23 failurehandler:0];
    }
  }
}

void __74__PXPhotosDetailsActionsUIWidget_actionRowTileSelected_tapPositionInTile___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (a2 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Error performing action:%@", &v6, 0xCu);
    }
  }
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v4 = a4;
  v5 = [v4 fromLayout];
  v6 = [v4 toLayout];

  if (v5 == v6)
  {
    v7 = objc_alloc_init(PXTileIdentifierIdentityConverter);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v5 = a3;
  v6 = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
  [v6 checkInReusableObject:v5];

  v7 = [(PXPhotosDetailsActionsUIWidget *)self _tilesInUse];
  [v7 removeObject:v5];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  v8 = a3->index[0];
  if (v8 == 6200435)
  {
    v13 = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
    v10 = [v13 checkOutReusableObjectWithReuseIdentifier:403153];
  }

  else
  {
    if (v8 != 6200434)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = *&a3->index[5];
      v22 = *&a3->index[3];
      v23 = v17;
      v24 = *&a3->index[7];
      v25 = a3->index[9];
      v18 = *&a3->index[1];
      v20 = *&a3->length;
      v21 = v18;
      v19 = PXTileIdentifierDescription(&v20);
      [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:351 description:{@"%@ got asked to produce a tile for an unknown identifier:%@. If you're adding custom tile kinds, those have to be returned by your own tile source and not bubble up to the assets scene.", self, v19}];

      abort();
    }

    v9 = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
    v10 = [v9 checkOutReusableObjectWithReuseIdentifier:403133];

    v11 = *&a3->index[5];
    v22 = *&a3->index[3];
    v23 = v11;
    v24 = *&a3->index[7];
    v25 = a3->index[9];
    v12 = *&a3->index[1];
    v20 = *&a3->length;
    v21 = v12;
    [(PXPhotosDetailsActionsUIWidget *)self configureActionButtonTile:v10 withIdentifier:&v20];
  }

  v14 = [(PXPhotosDetailsActionsUIWidget *)self _tilesInUse];
  [v14 addObject:v10];

  return v10;
}

- (void)configureActionButtonTile:(id)a3 withIdentifier:(PXTileIdentifier *)a4
{
  spec = self->_spec;
  v7 = a3;
  [v7 setIdiom:{-[PXWidgetSpec userInterfaceIdiom](spec, "userInterfaceIdiom")}];
  v8 = a4->index[2];
  v9 = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v15 = [v9 objectAtIndexedSubscript:v8];

  v10 = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
  v11 = [v10 localizedTitleForActionType:v15 useCase:1];
  [v7 setTitle:v11];

  v12 = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
  v13 = [v12 disabledActionTypes];
  [v7 setEnabled:{objc_msgSend(v13, "containsObject:", v15) ^ 1}];

  v14 = [v10 menuElementsForActionType:v15];
  [v7 setShowsMenu:{objc_msgSend(v14, "count") != 0}];
}

- (void)reusableObjectPool:(id)a3 didEvictReusableObject:(id)a4
{
  v4 = [a4 view];
  [v4 removeFromSuperview];
}

- (void)reusableObjectPool:(id)a3 didCreateReusableObject:(id)a4
{
  v6 = [a4 view];
  v5 = [(PXPhotosDetailsActionsUIWidget *)self _scrollViewController];
  [v5 addSubview:v6];
}

- (PXTilingController)contentTilingController
{
  [(PXPhotosDetailsActionsUIWidget *)self _loadTilingController];

  return [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
}

- (BOOL)hasContentForCurrentInput
{
  v3 = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v4 = [v3 count];

  v5 = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
  if (v5)
  {
    v6 = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
    v7 = [v6 widgetDeviceIsUnlocked:self];
  }

  else
  {
    v7 = 1;
  }

  return (v4 != 0) & v7;
}

- (void)_setPeopleFetchResult:(id)a3
{
  v5 = a3;
  if (self->__peopleFetchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__peopleFetchResult, a3);
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateActionManager];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidatePerformableActionTypes];
    v5 = v6;
  }
}

- (void)_setPhotosDataSource:(id)a3
{
  v5 = a3;
  photosDataSource = self->__photosDataSource;
  if (photosDataSource != v5)
  {
    v7 = v5;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->__photosDataSource, a3);
    [(PXPhotosDataSource *)v7 registerChangeObserver:self];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateActionManager];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidatePerformableActionTypes];
    v5 = v7;
  }
}

- (void)_setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->__viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXPhotosDetailsViewModel *)viewModel unregisterChangeObserver:self context:PXPhotosDetailsViewModelObservationContext];
    objc_storeStrong(&self->__viewModel, a3);
    [(PXPhotosDetailsViewModel *)self->__viewModel registerChangeObserver:self context:PXPhotosDetailsViewModelObservationContext];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayout];
    v5 = v7;
  }
}

- (void)setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  if (context != v5)
  {
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext_142048];
    objc_storeStrong(&self->_context, a3);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext_142048];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXPhotosDetailsActionsUIWidget_setContext___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v5;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v7];
  }
}

uint64_t __45__PXPhotosDetailsActionsUIWidget_setContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) viewModel];
  [v2 _setViewModel:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) photosDataSource];
  [v4 _setPhotosDataSource:v5];

  v6 = *(a1 + 32);

  return [v6 _invalidatePeopleFetchResult];
}

- (void)_setPerformableActionTypes:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->__performableActionTypes != v5)
  {
    v8 = v5;
    v7 = [(NSArray *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__performableActionTypes, a3);
      [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayout];
      v6 = v8;
    }
  }
}

- (void)_setAllowedActionTypes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->__allowedActionTypes != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      allowedActionTypes = self->__allowedActionTypes;
      self->__allowedActionTypes = v7;

      [(PXPhotosDetailsActionsUIWidget *)self _invalidatePerformableActionTypes];
      v5 = v9;
    }
  }
}

- (id)_createNewLayout
{
  v3 = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v4 = [v3 count];

  v5 = [(PXPhotosDetailsActionsUIWidget *)self _specManager];
  v6 = [v5 spec];

  v7 = [[PXPhotosDetailsActionsTilingLayout alloc] initWithNumberOfItems:v4];
  [(PXPhotosDetailsActionsUIWidget *)self _rowHeight];
  [(PXPhotosDetailsActionsTilingLayout *)v7 setRowHeight:?];
  v8 = [(PXPhotosDetailsActionsUIWidget *)self _extendedTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = 1.0;
  if (v9 == 3)
  {
    v10 = 15.0;
  }

  [(PXPhotosDetailsActionsTilingLayout *)v7 setSeparatorHeight:v10];
  -[PXPhotosDetailsActionsTilingLayout setShouldShowSeparators:](v7, "setShouldShowSeparators:", [v6 shouldShowSeparators]);
  -[PXPhotosDetailsActionsTilingLayout setShouldInsetAllSeparators:](v7, "setShouldInsetAllSeparators:", [v6 shouldInsetAllSeparators]);

  return v7;
}

- (void)_handleContentSizeCategoryDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PXPhotosDetailsActionsUIWidget__handleContentSizeCategoryDidChange___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v3];
}

uint64_t __70__PXPhotosDetailsActionsUIWidget__handleContentSizeCategoryDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateRowHeight];
  v2 = *(a1 + 32);

  return [v2 _invalidateLayout];
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = self->__tilesInUse;
    self->__tilesInUse = v3;

    v5 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
    v6 = [v5 widgetScrollViewControllerHostingWidget:self];
    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = v6;

    v8 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
    v9 = [v8 widgetViewControllerHostingWidget:self];
    v10 = [v9 px_extendedTraitCollection];

    v11 = [(PXFeatureSpecManager *)[PXPhotosDetailsActionsSpecManager alloc] initWithExtendedTraitCollection:v10];
    specManager = self->__specManager;
    self->__specManager = v11;

    [(PXPhotosDetailsActionsSpecManager *)self->__specManager registerChangeObserver:self context:PXSpecManagerObservationContext_142047];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:self selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v14 = objc_alloc_init(PXActionRowTile);
    measuringActionRowTile = self->__measuringActionRowTile;
    self->__measuringActionRowTile = v14;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke;
    v30[3] = &unk_1E774C648;
    v30[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v30];
    v16 = [(PXPhotosDetailsActionsUIWidget *)self _createNewLayout];
    v17 = [[PXTilingController alloc] initWithLayout:v16];
    tilingController = self->__tilingController;
    self->__tilingController = v17;

    [(PXTilingController *)self->__tilingController setScrollController:self->__scrollViewController];
    v19 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->__tileAnimator;
    self->__tileAnimator = v19;

    [(PXTilingController *)self->__tilingController setTileAnimator:self->__tileAnimator];
    [(PXTilingController *)self->__tilingController setTileSource:self];
    [(PXTilingController *)self->__tilingController setTransitionDelegate:self];
    v21 = objc_alloc_init(off_1E7721868);
    tileReusePool = self->__tileReusePool;
    self->__tileReusePool = v21;

    [(PXReusableObjectPool *)self->__tileReusePool setDelegate:self];
    objc_initWeak(&location, self);
    v23 = self->__tileReusePool;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke_2;
    v27[3] = &unk_1E7744030;
    objc_copyWeak(&v28, &location);
    [(PXReusableObjectPool *)v23 registerReusableObjectForReuseIdentifier:403133 creationHandler:v27];
    v24 = self->__tileReusePool;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke_3;
    v25[3] = &unk_1E7744030;
    objc_copyWeak(&v26, &location);
    [(PXReusableObjectPool *)v24 registerReusableObjectForReuseIdentifier:403153 creationHandler:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

PXActionRowTile *__55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(PXActionRowTile);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PXActionRowTile *)v2 setDelegate:WeakRetained];

  return v2;
}

PXUIGenericViewTile *__55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(PXUIGenericViewTile);
  v3 = [(PXUIGenericViewTile *)v2 view];
  [v3 setOpaque:1];
  v4 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _extendedTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 3)
  {
    v8 = [MEMORY[0x1E69DC888] clearColor];

    v4 = v8;
  }

  [v3 setBackgroundColor:v4];

  return v2;
}

- (id)_extendedTraitCollection
{
  v3 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  v4 = [v3 widgetExtendedTraitCollection:self];

  return v4;
}

- (void)setAllowInternalFileRadarAction:(BOOL)a3
{
  if (self->_allowInternalFileRadarAction != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowInternalFileRadarAction = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PXPhotosDetailsActionsUIWidget_setAllowInternalFileRadarAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setAllowCreateMemoryAction:(BOOL)a3
{
  if (self->_allowCreateMemoryAction != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowCreateMemoryAction = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXPhotosDetailsActionsUIWidget_setAllowCreateMemoryAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setAllowRevealInMomentAction:(BOOL)a3
{
  if (self->_allowRevealInMomentAction != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowRevealInMomentAction = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PXPhotosDetailsActionsUIWidget_setAllowRevealInMomentAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    objc_storeStrong(&self->_spec, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PXPhotosDetailsActionsUIWidget_setSpec___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v6];
  }
}

- (PXPhotosDetailsActionsUIWidget)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsActionsUIWidget;
  result = [(PXPhotosDetailsActionsUIWidget *)&v3 init];
  if (result)
  {
    result->_needsUpdateFlags.allowedActionTypes = 1;
    result->_allowCreateMemoryAction = 1;
  }

  return result;
}

@end