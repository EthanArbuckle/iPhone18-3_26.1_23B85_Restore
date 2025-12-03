@interface PUSwipeSelectionManager
- (CGPoint)screenTouchLocation;
- (PUSwipeSelectionManager)init;
- (PUSwipeSelectionManager)initWithSelectionMode:(int64_t)mode photoSelectionManager:(id)manager;
- (PUSwipeSelectionManagerDataSource)datasource;
- (PUSwipeSelectionManagerDelegate)delegate;
- (id)_indexesPathsRangeForIndexPath:(id)path;
- (int64_t)_selectionModeForRestoringStateOfIndexPath:(id)path;
- (void)beginSelectionFromIndexPath:(id)path;
- (void)dealloc;
- (void)endSelection;
- (void)updateSelectionWithCurrentIndexPath:(id)path leftClosestIndexPath:(id)indexPath aboveClosestIndexPath:(id)closestIndexPath;
@end

@implementation PUSwipeSelectionManager

- (CGPoint)screenTouchLocation
{
  x = self->_screenTouchLocation.x;
  y = self->_screenTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUSwipeSelectionManagerDataSource)datasource
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);

  return WeakRetained;
}

- (PUSwipeSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSelectionWithCurrentIndexPath:(id)path leftClosestIndexPath:(id)indexPath aboveClosestIndexPath:(id)closestIndexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  closestIndexPathCopy = closestIndexPath;
  _startingIndexPath = [(PUSwipeSelectionManager *)self _startingIndexPath];

  if (!_startingIndexPath)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSwipeSelectionManager.m" lineNumber:148 description:@"Starting indexPath should be set"];
  }

  if (pathCopy | indexPathCopy || closestIndexPathCopy)
  {
    if (pathCopy | indexPathCopy)
    {
      if (pathCopy)
      {
        v13 = pathCopy;
      }

      else
      {
        v13 = indexPathCopy;
      }

      v14 = v13;
LABEL_10:
      v15 = [(PUSwipeSelectionManager *)self _indexesPathsRangeForIndexPath:v14];
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      oldIndexesPaths = self->_oldIndexesPaths;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke;
      v34[3] = &unk_1E7B7E350;
      v18 = v15;
      v35 = v18;
      selfCopy = self;
      v37 = v16;
      v38 = a2;
      v19 = v16;
      [(NSMutableDictionary *)oldIndexesPaths enumerateKeysAndObjectsUsingBlock:v34];
      v20 = self->_oldIndexesPaths;
      self->_oldIndexesPaths = v18;
      v21 = v18;

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_3;
      v33[3] = &unk_1E7B7E378;
      v33[4] = self;
      [(NSMutableDictionary *)v21 enumerateKeysAndObjectsUsingBlock:v33];
      _selectionMode = [(PUSwipeSelectionManager *)self _selectionMode];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_4;
      v32[3] = &unk_1E7B7E3A0;
      v32[4] = self;
      v32[5] = _selectionMode == 0;
      [v19 enumerateKeysAndObjectsUsingBlock:v32];

      goto LABEL_19;
    }

    if (!closestIndexPathCopy)
    {
      goto LABEL_19;
    }

    _startingIndexPath2 = [(PUSwipeSelectionManager *)self _startingIndexPath];
    v24 = [_startingIndexPath2 compare:closestIndexPathCopy];

    if (v24 != 1)
    {
      if (v24 != -1)
      {
        goto LABEL_19;
      }

      v25 = [closestIndexPathCopy copy];
      goto LABEL_18;
    }

    section = [closestIndexPathCopy section];
    _startingIndexPath3 = [(PUSwipeSelectionManager *)self _startingIndexPath];
    section2 = [_startingIndexPath3 section];

    if (section < section2)
    {
      datasource = [(PUSwipeSelectionManager *)self datasource];
      v30 = [datasource swipeSelectionManager:self numberOfItemsInSection:{objc_msgSend(closestIndexPathCopy, "section") + 1}];

      if (v30 >= 1)
      {
        v25 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(closestIndexPathCopy, "section") + 1}];
LABEL_18:
        v14 = v25;
        if (!v25)
        {
          goto LABEL_19;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_19:
}

void __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_2;
  v11[3] = &unk_1E7B7E328;
  v12 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v10 = *(a1 + 48);
  v8 = v10;
  v15 = v10;
  v9 = v5;
  [a3 enumerateIndexesUsingBlock:v11];
}

void __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [*(a1 + 32) delegate];
  [v7 swipeSelectionManager:*(a1 + 32) updatePhotoSelectionWithIndexes:v5 inSection:v6 selectionMode:{objc_msgSend(*(a1 + 32), "_selectionMode")}];
}

void __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [*(a1 + 32) delegate];
  [v7 swipeSelectionManager:*(a1 + 32) updatePhotoSelectionWithIndexes:v5 inSection:v6 selectionMode:*(a1 + 40)];
}

void __106__PUSwipeSelectionManager_updateSelectionWithCurrentIndexPath_leftClosestIndexPath_aboveClosestIndexPath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:{objc_msgSend(*(a1 + 32), "integerValue")}];
  if (([*(a1 + 40) pu_containsIndexPath:?] & 1) == 0)
  {
    v3 = [v13 item];
    v4 = [*(a1 + 48) datasource];
    v5 = [v4 swipeSelectionManager:*(a1 + 48) numberOfItemsInSection:{objc_msgSend(v13, "section")}];

    if (v3 >= v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"PUSwipeSelectionManager.m" lineNumber:188 description:@"IndexPath should still be valid"];
    }

    v6 = [*(a1 + 48) _selectionModeForRestoringStateOfIndexPath:v13];
    if (v6 != [*(a1 + 48) _selectionMode])
    {
      v7 = *(a1 + 56);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "section")}];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        [v9 addIndex:{objc_msgSend(v13, "item")}];
      }

      else
      {
        v9 = [MEMORY[0x1E696AD50] indexSetWithIndex:{objc_msgSend(v13, "item")}];
        v10 = *(a1 + 56);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "section")}];
        [v10 setObject:v9 forKeyedSubscript:v11];
      }
    }
  }
}

- (void)endSelection
{
  selectionAutoScroller = self->_selectionAutoScroller;
  if (selectionAutoScroller)
  {
    [(PXUIAutoScroller *)selectionAutoScroller stop];
  }

  _pausingChangesToken = [(PUSwipeSelectionManager *)self _pausingChangesToken];

  if (_pausingChangesToken)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    _pausingChangesToken2 = [(PUSwipeSelectionManager *)self _pausingChangesToken];
    [px_deprecated_appPhotoLibrary px_endPausingChanges:_pausingChangesToken2];

    [(PUSwipeSelectionManager *)self _setPausingChangesToken:0];
  }
}

- (void)beginSelectionFromIndexPath:(id)path
{
  [(PUSwipeSelectionManager *)self _setStartingIndexPath:path];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [px_deprecated_appPhotoLibrary px_beginPausingChangesWithTimeout:@"PUSwipeSelectionManager" identifier:60.0];
  [(PUSwipeSelectionManager *)self _setPausingChangesToken:v4];
}

- (int64_t)_selectionModeForRestoringStateOfIndexPath:(id)path
{
  pathCopy = path;
  datasource = [(PUSwipeSelectionManager *)self datasource];
  v6 = [datasource swipeSelectionManager:self photoCollectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  _restorePhotoSelectionManager = [(PUSwipeSelectionManager *)self _restorePhotoSelectionManager];
  item = [pathCopy item];

  LODWORD(pathCopy) = [_restorePhotoSelectionManager isAssetAtIndexSelected:item inAssetCollection:v6];
  return pathCopy ^ 1;
}

- (id)_indexesPathsRangeForIndexPath:(id)path
{
  pathCopy = path;
  _startingIndexPath = [(PUSwipeSelectionManager *)self _startingIndexPath];

  if (!_startingIndexPath)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSwipeSelectionManager.m" lineNumber:68 description:@"Starting indexPath should be set"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _startingIndexPath2 = [(PUSwipeSelectionManager *)self _startingIndexPath];
  v9 = [_startingIndexPath2 compare:pathCopy];

  if (v9 == 1)
  {
    v33 = a2;
    section = [pathCopy section];
    item = [pathCopy item];
    _startingIndexPath3 = [(PUSwipeSelectionManager *)self _startingIndexPath];
    section2 = [_startingIndexPath3 section];

    [(PUSwipeSelectionManager *)self _startingIndexPath];
    v18 = v17 = pathCopy;
    item2 = [v18 item];

    pathCopy = v17;
  }

  else
  {
    if (v9 && v9 != -1)
    {
      section = 0;
      item = 0;
      item2 = 0;
      goto LABEL_21;
    }

    v33 = a2;
    _startingIndexPath4 = [(PUSwipeSelectionManager *)self _startingIndexPath];
    section = [_startingIndexPath4 section];

    _startingIndexPath5 = [(PUSwipeSelectionManager *)self _startingIndexPath];
    item = [_startingIndexPath5 item];

    section2 = [pathCopy section];
    item2 = [pathCopy item];
  }

  if (section >= section2)
  {
    if (section == section2)
    {
      section = section2;
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v33 object:self file:@"PUSwipeSelectionManager.m" lineNumber:109 description:@"Must be same section"];
    }
  }

  else
  {
    v32 = pathCopy;
    do
    {
      datasource = [(PUSwipeSelectionManager *)self datasource];

      if (!datasource)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:v33 object:self file:@"PUSwipeSelectionManager.m" lineNumber:98 description:@"Datasource should be set"];
      }

      datasource2 = [(PUSwipeSelectionManager *)self datasource];
      v21 = [datasource2 swipeSelectionManager:self numberOfItemsInSection:section];

      if (v21)
      {
        v22 = v21 < item;
        v23 = v21 - item;
        if (!v22)
        {
          v24 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{item, v23}];
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:section];
          [v7 setObject:v24 forKeyedSubscript:v25];
        }
      }

      item = 0;
      ++section;
    }

    while (section2 != section);
    section = section2;
    pathCopy = v32;
  }

LABEL_21:
  v27 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{item, item2 - item + 1}];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  [v7 setObject:v27 forKeyedSubscript:v28];

  return v7;
}

- (void)dealloc
{
  selectionAutoScroller = self->_selectionAutoScroller;
  if (selectionAutoScroller)
  {
    [(PXUIAutoScroller *)selectionAutoScroller stop];
  }

  _pausingChangesToken = [(PUSwipeSelectionManager *)self _pausingChangesToken];

  if (_pausingChangesToken)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    _pausingChangesToken2 = [(PUSwipeSelectionManager *)self _pausingChangesToken];
    [px_deprecated_appPhotoLibrary px_endPausingChanges:_pausingChangesToken2];

    [(PUSwipeSelectionManager *)self _setPausingChangesToken:0];
  }

  v7.receiver = self;
  v7.super_class = PUSwipeSelectionManager;
  [(PUSwipeSelectionManager *)&v7 dealloc];
}

- (PUSwipeSelectionManager)initWithSelectionMode:(int64_t)mode photoSelectionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PUSwipeSelectionManager;
  v7 = [(PUSwipeSelectionManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->__selectionMode = mode;
    v9 = [managerCopy copy];
    restorePhotoSelectionManager = v8->__restorePhotoSelectionManager;
    v8->__restorePhotoSelectionManager = v9;
  }

  return v8;
}

- (PUSwipeSelectionManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Must use initWithStartingIndexPath:mode:photoSelectionManager:" userInfo:0];
  objc_exception_throw(v2);
}

@end