@interface PXPhotosDetailsActionsUIWidget
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)hasContentForCurrentInput;
- (CGPoint)lastNormalizedTapPosition;
- (PXActionPerformerDelegate)actionPerformerDelegate;
- (PXPhotosDetailsActionsUIWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetUnlockDelegate)widgetUnlockDelegate;
- (id)_createNewLayout;
- (id)_extendedTraitCollection;
- (id)menuElementsForActionRowTile:(id)tile;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)undoManagerForActionPerformer:(id)performer;
- (void)_handleContentSizeCategoryDidChange:(id)change;
- (void)_loadTilingController;
- (void)_performChanges:(id)changes;
- (void)_setAllowedActionTypes:(id)types;
- (void)_setNeedsUpdate;
- (void)_setPeopleFetchResult:(id)result;
- (void)_setPerformableActionTypes:(id)types;
- (void)_setPhotosDataSource:(id)source;
- (void)_setRowHeight:(double)height;
- (void)_setViewModel:(id)model;
- (void)_updateActionManagerIfNeeded;
- (void)_updateAllowedActionTypesIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updatePeopleFetchResultIfNeeded;
- (void)_updatePerformableActionTypesIfNeeded;
- (void)_updateRowHeightIfNeeded;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)actionRowTileSelected:(id)selected tapPositionInTile:(CGPoint)tile;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)configureActionButtonTile:(id)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)reusableObjectPool:(id)pool didCreateReusableObject:(id)object;
- (void)reusableObjectPool:(id)pool didEvictReusableObject:(id)object;
- (void)setAllowCreateMemoryAction:(BOOL)action;
- (void)setAllowInternalFileRadarAction:(BOOL)action;
- (void)setAllowRevealInMomentAction:(BOOL)action;
- (void)setContext:(id)context;
- (void)setSpec:(id)spec;
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
    _tilingController = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
    currentLayout = [_tilingController currentLayout];
    v7 = currentLayout;
    if (self->_ensureTransition || (v8 = [currentLayout numberOfItems], v8 != -[NSArray count](self->__performableActionTypes, "count")))
    {
      self->_ensureTransition = 0;
      if (_tilingController)
      {
        if (v7)
        {
          _createNewLayout = [(PXPhotosDetailsActionsUIWidget *)self _createNewLayout];
          [_tilingController transitionToLayout:_createNewLayout];
        }
      }
    }

    else
    {
      scrollController = [_tilingController scrollController];
      [scrollController visibleRect];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__PXPhotosDetailsActionsUIWidget__updateLayoutIfNeeded__block_invoke;
      v11[3] = &unk_1E773D130;
      v11[4] = self;
      [_tilingController enumerateTilesInRect:0 withOptions:v11 usingBlock:?];
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

- (void)_setRowHeight:(double)height
{
  if (self->__rowHeight != height)
  {
    self->__rowHeight = height;
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayoutEnsureTransition];
  }
}

- (void)_updateRowHeightIfNeeded
{
  if (self->_needsUpdateFlags.rowHeight)
  {
    self->_needsUpdateFlags.rowHeight = 0;
    _measuringActionRowTile = [(PXPhotosDetailsActionsUIWidget *)self _measuringActionRowTile];
    [_measuringActionRowTile prepareForReuse];
    [_measuringActionRowTile setTitle:@"Title"];
    view = [_measuringActionRowTile view];
    [view sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v5;

    v7 = round(v6);
    userInterfaceIdiom = [(PXWidgetSpec *)self->_spec userInterfaceIdiom];
    v9 = 42.0;
    if (userInterfaceIdiom == 3)
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
    _photosDataSource = [(PXPhotosDetailsActionsUIWidget *)self _photosDataSource];
    firstAssetCollection = [_photosDataSource firstAssetCollection];
    if (firstAssetCollection)
    {
      context = [(PXPhotosDetailsActionsUIWidget *)self context];
      displayTitleInfo = [context displayTitleInfo];

      v7 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:firstAssetCollection displayTitleInfo:displayTitleInfo];
      _peopleFetchResult = [(PXPhotosDetailsActionsUIWidget *)self _peopleFetchResult];
      [(PXPhotoKitAssetCollectionActionManager *)v7 setPeople:_peopleFetchResult];

      context2 = [(PXPhotosDetailsActionsUIWidget *)self context];
      containingAlbum = [context2 containingAlbum];
      [(PXPhotoKitAssetCollectionActionManager *)v7 setContainingAlbum:containingAlbum];

      v11 = [_photosDataSource assetsInSection:0];
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
    _assetCollectionActionManager = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    _allowedActionTypes = [(PXPhotosDetailsActionsUIWidget *)self _allowedActionTypes];
    v6 = [_allowedActionTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_allowedActionTypes);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([_assetCollectionActionManager canPerformActionType:v10])
          {
            [array addObject:v10];
          }
        }

        v7 = [_allowedActionTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([array count] || -[PXPhotosDetailsActionsUIWidget allowInternalFileRadarAction](self, "allowInternalFileRadarAction"))
    {
      v11 = *off_1E7721D18;
      if ([_assetCollectionActionManager canPerformActionType:*off_1E7721D18])
      {
        [array addObject:v11];
      }
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setPerformableActionTypes:array];
  }
}

- (void)_updateAllowedActionTypesIfNeeded
{
  if (self->_needsUpdateFlags.allowedActionTypes)
  {
    self->_needsUpdateFlags.allowedActionTypes = 0;
    array = [MEMORY[0x1E695DF70] array];
    if ([(PXPhotosDetailsActionsUIWidget *)self allowRevealInMomentAction])
    {
      [array addObject:*off_1E7721D98];
    }

    [(PXPhotosDetailsActionsUIWidget *)self _setAllowedActionTypes:array];
  }
}

- (void)_updatePeopleFetchResultIfNeeded
{
  if (self->_needsUpdateFlags.peopleFetchResult)
  {
    self->_needsUpdateFlags.peopleFetchResult = 0;
    context = [(PXPhotosDetailsActionsUIWidget *)self context];
    people = [context people];

    [(PXPhotosDetailsActionsUIWidget *)self _setPeopleFetchResult:people];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:593 description:@"not inside -performChanges: or _updateIfNeeded"];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:589 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXPhotosDetailsActionsUIWidget *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSpecManagerObservationContext_142047 == context)
  {
    if (changeCopy)
    {
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v11 = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke;
      goto LABEL_12;
    }
  }

  else if (PXPhotosDetailsContextObservationContext_142048 == context)
  {
    if ((changeCopy & 0x30) != 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __63__PXPhotosDetailsActionsUIWidget_observable_didChange_context___block_invoke_2;
      v16[3] = &unk_1E774C648;
      v16[4] = self;
      [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v16];
    }

    if ((changeCopy & 8) != 0)
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
    if (PXPhotosDetailsViewModelObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:542 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 0x20) != 0)
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

- (void)photosDataSource:(id)source didChange:(id)change
{
  sectionedDataSourceChangeDetails = [change sectionedDataSourceChangeDetails];
  sectionChanges = [sectionedDataSourceChangeDetails sectionChanges];

  if ([sectionChanges hasAnyChanges])
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

- (void)prepareForPopoverPresentation:(id)presentation
{
  v41 = *MEMORY[0x1E69E9840];
  presentationCopy = presentation;
  _activePerformer = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__142052;
  v37 = __Block_byref_object_dispose__142053;
  v38 = 0;
  _tilingController = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
  scrollController = [_tilingController scrollController];
  [scrollController visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__PXPhotosDetailsActionsUIWidget_prepareForPopoverPresentation___block_invoke;
  v30[3] = &unk_1E773D108;
  v30[4] = self;
  v16 = _activePerformer;
  v31 = v16;
  v32 = &v33;
  [_tilingController enumerateTilesInRect:0 withOptions:v30 usingBlock:{v9, v11, v13, v15}];
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
    [presentationCopy setSourceView:v34[5]];
    [presentationCopy setSourceRect:{v19 * v21 + v25 * -0.5, v23 + v27 * -0.75, v25, v27}];
    [presentationCopy setPermittedArrowDirections:2];
  }

  else
  {
    v28 = PLUIGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      actionType = [v16 actionType];
      *buf = 138412290;
      v40 = actionType;
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

- (id)undoManagerForActionPerformer:(id)performer
{
  widgetDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  v5 = [widgetDelegate widgetUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  widgetDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  LOBYTE(self) = [widgetDelegate widget:self transitionToViewController:controllerCopy withTransitionType:2];

  return self;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  if (state == 10)
  {
    [(PXPhotosDetailsActionsUIWidget *)self _setActivePerformer:performerCopy];
  }

  else
  {
    _activePerformer = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];

    if (_activePerformer == performerCopy)
    {
      [(PXPhotosDetailsActionsUIWidget *)self _setActivePerformer:0];
    }

    if (state == 20)
    {
      actionType = [performerCopy actionType];
      v9 = *off_1E7721CC0;
      v10 = [actionType isEqualToString:*off_1E7721CC0];

      if (v10)
      {
        v11 = MEMORY[0x1E695DFA8];
        _viewModel = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
        disabledActionTypes = [_viewModel disabledActionTypes];
        v14 = [v11 setWithSet:disabledActionTypes];

        [v14 addObject:v9];
        _viewModel2 = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __65__PXPhotosDetailsActionsUIWidget_actionPerformer_didChangeState___block_invoke;
        v26[3] = &unk_1E773D0E0;
        v27 = v14;
        v16 = v14;
        [_viewModel2 performChanges:v26];
      }

      actionType2 = [performerCopy actionType];
      v18 = [actionType2 isEqualToString:*off_1E7721C48];

      if (v18)
      {
        widgetDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
        [widgetDelegate widget:self requestViewControllerDismissalAnimated:1];
      }

      actionType3 = [performerCopy actionType];
      v21 = [actionType3 isEqualToString:*off_1E7721CF8];

      if (v21)
      {
        widgetDelegate2 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
        [widgetDelegate2 widget:self requestViewControllerDismissalAnimated:1];
      }
    }
  }

  actionPerformerDelegate = [(PXPhotosDetailsActionsUIWidget *)self actionPerformerDelegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    actionPerformerDelegate2 = [(PXPhotosDetailsActionsUIWidget *)self actionPerformerDelegate];
    [actionPerformerDelegate2 actionPerformer:performerCopy didChangeState:state];
  }
}

- (id)menuElementsForActionRowTile:(id)tile
{
  tileCopy = tile;
  _tilingController = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
  v6 = _tilingController;
  if (_tilingController)
  {
    [_tilingController tileIdentifierForTile:tileCopy];
  }

  return 0;
}

- (void)actionRowTileSelected:(id)selected tapPositionInTile:(CGPoint)tile
{
  y = tile.y;
  x = tile.x;
  selectedCopy = selected;
  _activePerformer = [(PXPhotosDetailsActionsUIWidget *)self _activePerformer];

  if (!_activePerformer)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    _tilingController = [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
    v10 = _tilingController;
    if (_tilingController)
    {
      [_tilingController tileIdentifierForTile:selectedCopy];
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
      _performableActionTypes = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
      v13 = [_performableActionTypes objectAtIndexedSubscript:v11];

      view = [selectedCopy view];
      [view bounds];
      v16 = v15;
      v18 = v17;

      [(PXPhotosDetailsActionsUIWidget *)self setLastNormalizedTapPosition:x / v16, y / v18];
      _assetCollectionActionManager = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
      v20 = [_assetCollectionActionManager actionPerformerForActionType:v13];

      [v20 setDelegate:self];
      widgetUnlockDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __74__PXPhotosDetailsActionsUIWidget_actionRowTileSelected_tapPositionInTile___block_invoke;
      v23[3] = &unk_1E774C648;
      v24 = v20;
      v22 = v20;
      [widgetUnlockDelegate widget:self performAfterUnlockingDeviceIfNecessary:v23 failurehandler:0];
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

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  changeCopy = change;
  fromLayout = [changeCopy fromLayout];
  toLayout = [changeCopy toLayout];

  if (fromLayout == toLayout)
  {
    v7 = objc_alloc_init(PXTileIdentifierIdentityConverter);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  tileCopy = tile;
  _tileReusePool = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
  [_tileReusePool checkInReusableObject:tileCopy];

  _tilesInUse = [(PXPhotosDetailsActionsUIWidget *)self _tilesInUse];
  [_tilesInUse removeObject:tileCopy];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  v8 = identifier->index[0];
  if (v8 == 6200435)
  {
    _tileReusePool = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
    v10 = [_tileReusePool checkOutReusableObjectWithReuseIdentifier:403153];
  }

  else
  {
    if (v8 != 6200434)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = *&identifier->index[5];
      v22 = *&identifier->index[3];
      v23 = v17;
      v24 = *&identifier->index[7];
      v25 = identifier->index[9];
      v18 = *&identifier->index[1];
      v20 = *&identifier->length;
      v21 = v18;
      v19 = PXTileIdentifierDescription(&v20);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsUIWidget.m" lineNumber:351 description:{@"%@ got asked to produce a tile for an unknown identifier:%@. If you're adding custom tile kinds, those have to be returned by your own tile source and not bubble up to the assets scene.", self, v19}];

      abort();
    }

    _tileReusePool2 = [(PXPhotosDetailsActionsUIWidget *)self _tileReusePool];
    v10 = [_tileReusePool2 checkOutReusableObjectWithReuseIdentifier:403133];

    v11 = *&identifier->index[5];
    v22 = *&identifier->index[3];
    v23 = v11;
    v24 = *&identifier->index[7];
    v25 = identifier->index[9];
    v12 = *&identifier->index[1];
    v20 = *&identifier->length;
    v21 = v12;
    [(PXPhotosDetailsActionsUIWidget *)self configureActionButtonTile:v10 withIdentifier:&v20];
  }

  _tilesInUse = [(PXPhotosDetailsActionsUIWidget *)self _tilesInUse];
  [_tilesInUse addObject:v10];

  return v10;
}

- (void)configureActionButtonTile:(id)tile withIdentifier:(PXTileIdentifier *)identifier
{
  spec = self->_spec;
  tileCopy = tile;
  [tileCopy setIdiom:{-[PXWidgetSpec userInterfaceIdiom](spec, "userInterfaceIdiom")}];
  v8 = identifier->index[2];
  _performableActionTypes = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v15 = [_performableActionTypes objectAtIndexedSubscript:v8];

  _assetCollectionActionManager = [(PXPhotosDetailsActionsUIWidget *)self _assetCollectionActionManager];
  v11 = [_assetCollectionActionManager localizedTitleForActionType:v15 useCase:1];
  [tileCopy setTitle:v11];

  _viewModel = [(PXPhotosDetailsActionsUIWidget *)self _viewModel];
  disabledActionTypes = [_viewModel disabledActionTypes];
  [tileCopy setEnabled:{objc_msgSend(disabledActionTypes, "containsObject:", v15) ^ 1}];

  v14 = [_assetCollectionActionManager menuElementsForActionType:v15];
  [tileCopy setShowsMenu:{objc_msgSend(v14, "count") != 0}];
}

- (void)reusableObjectPool:(id)pool didEvictReusableObject:(id)object
{
  view = [object view];
  [view removeFromSuperview];
}

- (void)reusableObjectPool:(id)pool didCreateReusableObject:(id)object
{
  view = [object view];
  _scrollViewController = [(PXPhotosDetailsActionsUIWidget *)self _scrollViewController];
  [_scrollViewController addSubview:view];
}

- (PXTilingController)contentTilingController
{
  [(PXPhotosDetailsActionsUIWidget *)self _loadTilingController];

  return [(PXPhotosDetailsActionsUIWidget *)self _tilingController];
}

- (BOOL)hasContentForCurrentInput
{
  _performableActionTypes = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v4 = [_performableActionTypes count];

  widgetUnlockDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
  if (widgetUnlockDelegate)
  {
    widgetUnlockDelegate2 = [(PXPhotosDetailsActionsUIWidget *)self widgetUnlockDelegate];
    v7 = [widgetUnlockDelegate2 widgetDeviceIsUnlocked:self];
  }

  else
  {
    v7 = 1;
  }

  return (v4 != 0) & v7;
}

- (void)_setPeopleFetchResult:(id)result
{
  resultCopy = result;
  if (self->__peopleFetchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->__peopleFetchResult, result);
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateActionManager];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidatePerformableActionTypes];
    resultCopy = v6;
  }
}

- (void)_setPhotosDataSource:(id)source
{
  sourceCopy = source;
  photosDataSource = self->__photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->__photosDataSource, source);
    [(PXPhotosDataSource *)v7 registerChangeObserver:self];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateActionManager];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidatePerformableActionTypes];
    sourceCopy = v7;
  }
}

- (void)_setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->__viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXPhotosDetailsViewModel *)viewModel unregisterChangeObserver:self context:PXPhotosDetailsViewModelObservationContext];
    objc_storeStrong(&self->__viewModel, model);
    [(PXPhotosDetailsViewModel *)self->__viewModel registerChangeObserver:self context:PXPhotosDetailsViewModelObservationContext];
    [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayout];
    modelCopy = v7;
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext_142048];
    objc_storeStrong(&self->_context, context);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext_142048];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXPhotosDetailsActionsUIWidget_setContext___block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = contextCopy;
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

- (void)_setPerformableActionTypes:(id)types
{
  typesCopy = types;
  v6 = typesCopy;
  if (self->__performableActionTypes != typesCopy)
  {
    v8 = typesCopy;
    v7 = [(NSArray *)typesCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__performableActionTypes, types);
      [(PXPhotosDetailsActionsUIWidget *)self _invalidateLayout];
      v6 = v8;
    }
  }
}

- (void)_setAllowedActionTypes:(id)types
{
  typesCopy = types;
  v5 = typesCopy;
  if (self->__allowedActionTypes != typesCopy)
  {
    v9 = typesCopy;
    v6 = [(NSArray *)typesCopy isEqual:?];
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
  _performableActionTypes = [(PXPhotosDetailsActionsUIWidget *)self _performableActionTypes];
  v4 = [_performableActionTypes count];

  _specManager = [(PXPhotosDetailsActionsUIWidget *)self _specManager];
  spec = [_specManager spec];

  v7 = [[PXPhotosDetailsActionsTilingLayout alloc] initWithNumberOfItems:v4];
  [(PXPhotosDetailsActionsUIWidget *)self _rowHeight];
  [(PXPhotosDetailsActionsTilingLayout *)v7 setRowHeight:?];
  _extendedTraitCollection = [(PXPhotosDetailsActionsUIWidget *)self _extendedTraitCollection];
  userInterfaceIdiom = [_extendedTraitCollection userInterfaceIdiom];

  v10 = 1.0;
  if (userInterfaceIdiom == 3)
  {
    v10 = 15.0;
  }

  [(PXPhotosDetailsActionsTilingLayout *)v7 setSeparatorHeight:v10];
  -[PXPhotosDetailsActionsTilingLayout setShouldShowSeparators:](v7, "setShouldShowSeparators:", [spec shouldShowSeparators]);
  -[PXPhotosDetailsActionsTilingLayout setShouldInsetAllSeparators:](v7, "setShouldInsetAllSeparators:", [spec shouldInsetAllSeparators]);

  return v7;
}

- (void)_handleContentSizeCategoryDidChange:(id)change
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

    widgetDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
    v6 = [widgetDelegate widgetScrollViewControllerHostingWidget:self];
    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = v6;

    widgetDelegate2 = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
    v9 = [widgetDelegate2 widgetViewControllerHostingWidget:self];
    px_extendedTraitCollection = [v9 px_extendedTraitCollection];

    v11 = [(PXFeatureSpecManager *)[PXPhotosDetailsActionsSpecManager alloc] initWithExtendedTraitCollection:px_extendedTraitCollection];
    specManager = self->__specManager;
    self->__specManager = v11;

    [(PXPhotosDetailsActionsSpecManager *)self->__specManager registerChangeObserver:self context:PXSpecManagerObservationContext_142047];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v14 = objc_alloc_init(PXActionRowTile);
    measuringActionRowTile = self->__measuringActionRowTile;
    self->__measuringActionRowTile = v14;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PXPhotosDetailsActionsUIWidget__loadTilingController__block_invoke;
    v30[3] = &unk_1E774C648;
    v30[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v30];
    _createNewLayout = [(PXPhotosDetailsActionsUIWidget *)self _createNewLayout];
    v17 = [[PXTilingController alloc] initWithLayout:_createNewLayout];
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
  widgetDelegate = [(PXPhotosDetailsActionsUIWidget *)self widgetDelegate];
  v4 = [widgetDelegate widgetExtendedTraitCollection:self];

  return v4;
}

- (void)setAllowInternalFileRadarAction:(BOOL)action
{
  if (self->_allowInternalFileRadarAction != action)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowInternalFileRadarAction = action;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PXPhotosDetailsActionsUIWidget_setAllowInternalFileRadarAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setAllowCreateMemoryAction:(BOOL)action
{
  if (self->_allowCreateMemoryAction != action)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowCreateMemoryAction = action;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXPhotosDetailsActionsUIWidget_setAllowCreateMemoryAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setAllowRevealInMomentAction:(BOOL)action
{
  if (self->_allowRevealInMomentAction != action)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_allowRevealInMomentAction = action;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PXPhotosDetailsActionsUIWidget_setAllowRevealInMomentAction___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXPhotosDetailsActionsUIWidget *)self _performChanges:v5];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    objc_storeStrong(&self->_spec, spec);
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