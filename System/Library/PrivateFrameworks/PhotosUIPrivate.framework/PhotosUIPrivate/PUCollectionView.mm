@interface PUCollectionView
+ (id)_reuseKeyForSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PUCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (PUCollectionViewReorderDelegate)reorderDelegate;
- (PUCollectionViewSelectionDelegate)selectionDelegate;
- (id)_reorderableLayout;
- (id)indexPathsForSelectedItems;
- (void)_applyAutomaticAdjustedContentOffset:(CGPoint)offset;
- (void)_handleDrag:(id)drag;
- (void)_updateDragUsingIndexPathUpdateBlock:(id)block;
- (void)adjustedContentInsetDidChange;
- (void)dealloc;
- (void)deleteItemsAtIndexPaths:(id)paths;
- (void)didScrollToInitialPosition;
- (void)insertItemsAtIndexPaths:(id)paths;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)reloadData;
- (void)visiblyInsertItemAtIndexPath:(id)path modelUpdate:(id)update completionHandler:(id)handler;
@end

@implementation PUCollectionView

- (PUCollectionViewSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (PUCollectionViewReorderDelegate)reorderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reorderDelegate);

  return WeakRetained;
}

- (void)visiblyInsertItemAtIndexPath:(id)path modelUpdate:(id)update completionHandler:(id)handler
{
  pathCopy = path;
  updateCopy = update;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PUCollectionView_visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke;
  v17[3] = &unk_1E7B80CB0;
  v19 = updateCopy;
  v17[4] = self;
  v18 = pathCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PUCollectionView_visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7B7D308;
  v14[4] = self;
  v15 = v18;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = v18;
  v13 = updateCopy;
  [(PUCollectionView *)self performBatchUpdates:v17 completion:v14];
}

void __79__PUCollectionView_visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v5[0] = a1[5];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 insertItemsAtIndexPaths:v4];
}

void __79__PUCollectionView_visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) indexPathsForVisibleItems];
  if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:0 animated:1];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_dragGestureRecognizer != beginCopy)
  {
    v13.receiver = self;
    v13.super_class = PUCollectionView;
    v5 = [(PUCollectionView *)&v13 gestureRecognizerShouldBegin:beginCopy];
    goto LABEL_13;
  }

  collectionViewLayout = [(PUCollectionView *)self collectionViewLayout];
  if (([collectionViewLayout conformsToProtocol:&unk_1F2C20908] & 1) == 0)
  {

    goto LABEL_9;
  }

  reorderDelegate = [(PUCollectionView *)self reorderDelegate];

  if (!reorderDelegate)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_13;
  }

  [(UILongPressGestureRecognizer *)beginCopy locationInView:self];
  v8 = [(PUCollectionView *)self indexPathForItemAtPoint:?];
  if (v8)
  {
    reorderDelegate2 = [(PUCollectionView *)self reorderDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      reorderDelegate3 = [(PUCollectionView *)self reorderDelegate];
      v5 = [reorderDelegate3 collectionView:self canReorderItemAtIndexPath:v8];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  return v5;
}

- (void)_updateDragUsingIndexPathUpdateBlock:(id)block
{
  if (self->_dragSourceIndexPath)
  {
    blockCopy = block;
    _reorderableLayout = [(PUCollectionView *)self _reorderableLayout];
    v5 = blockCopy[2](blockCopy, self->_dragSourceIndexPath);
    v6 = blockCopy[2](blockCopy, self->_dragTargetIndexPath);

    if ([v5 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UILongPressGestureRecognizer *)self->_dragGestureRecognizer pu_cancel];
    }

    else
    {
      if (([v5 isEqual:self->_dragSourceIndexPath] & 1) == 0)
      {
        [_reorderableLayout endReordering];
        objc_storeStrong(&self->_dragSourceIndexPath, v5);
        [_reorderableLayout beginReorderingItemAtIndexPath:self->_dragSourceIndexPath];
      }

      if ([v5 item] != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_storeStrong(&self->_dragTargetIndexPath, v6);
        [_reorderableLayout updateReorderingTargetIndexPath:self->_dragTargetIndexPath];
      }

      reorderDelegate = [(PUCollectionView *)self reorderDelegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        reorderDelegate2 = [(PUCollectionView *)self reorderDelegate];
        v10 = [reorderDelegate2 collectionView:self targetIndexPathForMoveFromIndexPath:self->_dragSourceIndexPath toProposedIndexPath:self->_dragTargetIndexPath];

        v6 = v10;
      }

      if (v6 && ([v6 isEqual:self->_dragTargetIndexPath] & 1) == 0)
      {
        objc_storeStrong(&self->_dragTargetIndexPath, v6);
        [_reorderableLayout updateReorderingTargetIndexPath:self->_dragTargetIndexPath];
      }
    }
  }
}

- (id)_reorderableLayout
{
  collectionViewLayout = [(PUCollectionView *)self collectionViewLayout];
  if (([collectionViewLayout conformsToProtocol:&unk_1F2C20908] & 1) == 0)
  {

    collectionViewLayout = 0;
  }

  return collectionViewLayout;
}

- (void)_handleDrag:(id)drag
{
  dragCopy = drag;
  state = [dragCopy state];
  [dragCopy locationInView:self];
  v6 = [(PUCollectionView *)self indexPathForItemAtPoint:?];
  _reorderableLayout = [(PUCollectionView *)self _reorderableLayout];
  superview = [(PUCollectionView *)self superview];
  [dragCopy locationInView:superview];
  if (state > 2)
  {
    if (state == 3)
    {
      v36 = MEMORY[0x1E69DD250];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __32__PUCollectionView__handleDrag___block_invoke_2;
      v45[3] = &unk_1E7B809F0;
      v46 = _reorderableLayout;
      selfCopy = self;
      v48 = superview;
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __32__PUCollectionView__handleDrag___block_invoke_3;
      v42 = &unk_1E7B80088;
      selfCopy2 = self;
      v44 = v46;
      [v36 animateWithDuration:v45 animations:&v39 completion:0.3];
      [(PXUIAutoScroller *)self->_autoScroller stop:v39];
      autoScroller = self->_autoScroller;
      self->_autoScroller = 0;

      _feedbackDragBehavior = [(PUCollectionView *)self _feedbackDragBehavior];
      [_feedbackDragBehavior userInteractionEnded];
    }

    else if (state == 4)
    {
      [_reorderableLayout endReordering];
      [(PUCollectionView *)self reloadData];
      [(UIView *)self->_draggedView removeFromSuperview];
      draggedView = self->_draggedView;
      self->_draggedView = 0;

      dragTargetIndexPath = self->_dragTargetIndexPath;
      self->_dragTargetIndexPath = 0;

      dragSourceIndexPath = self->_dragSourceIndexPath;
      self->_dragSourceIndexPath = 0;

      [(PXUIAutoScroller *)self->_autoScroller stop];
      v23 = self->_autoScroller;
      self->_autoScroller = 0;

      _feedbackDragBehavior2 = [(PUCollectionView *)self _feedbackDragBehavior];
      [_feedbackDragBehavior2 userInteractionCancelled];
    }
  }

  else
  {
    v11 = v9;
    v12 = v10;
    if (state == 1)
    {
      v25 = [(PUCollectionView *)self cellForItemAtIndexPath:v6];
      v26 = [v25 snapshotViewAfterScreenUpdates:1];
      [(UIView *)self->_draggedView removeFromSuperview];
      v27 = self->_draggedView;
      self->_draggedView = v26;
      v28 = v26;

      [superview addSubview:self->_draggedView];
      v29 = self->_draggedView;
      [v25 frame];
      [superview convertRect:self fromView:?];
      [(UIView *)v29 setFrame:?];
      [(UIView *)self->_draggedView center];
      self->_draggedViewCenterOffset.x = v11 - v30;
      [(UIView *)self->_draggedView center];
      self->_draggedViewCenterOffset.y = v12 - v31;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __32__PUCollectionView__handleDrag___block_invoke;
      v49[3] = &unk_1E7B80DD0;
      v49[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v49 animations:0.3];
      [_reorderableLayout beginReorderingItemAtIndexPath:v6];
      objc_storeStrong(&self->_dragTargetIndexPath, v6);
      objc_storeStrong(&self->_dragSourceIndexPath, v6);
      v32 = [objc_alloc(MEMORY[0x1E69C45F0]) initWithTargetScrollView:self];
      v33 = self->_autoScroller;
      self->_autoScroller = v32;

      _feedbackDragBehavior3 = [(PUCollectionView *)self _feedbackDragBehavior];
      [_feedbackDragBehavior3 userInteractionStarted];

      _feedbackDragBehavior4 = [(PUCollectionView *)self _feedbackDragBehavior];
      [_feedbackDragBehavior4 draggedObjectLifted];
    }

    else if (state == 2)
    {
      if (v6)
      {
        v13 = [_reorderableLayout reorderedIndexPath:v6];

        if (v13)
        {
          reorderDelegate = [(PUCollectionView *)self reorderDelegate];
          v15 = objc_opt_respondsToSelector();

          if ((v15 & 1) == 0 || (-[PUCollectionView reorderDelegate](self, "reorderDelegate"), v16 = objc_claimAutoreleasedReturnValue(), [v16 collectionView:self targetIndexPathForMoveFromIndexPath:self->_dragSourceIndexPath toProposedIndexPath:v13], v17 = objc_claimAutoreleasedReturnValue(), v13, v16, (v13 = v17) != 0))
          {
            v18 = [v13 isEqual:self->_dragTargetIndexPath];
            objc_storeStrong(&self->_dragTargetIndexPath, v13);
            [_reorderableLayout updateReorderingTargetIndexPath:self->_dragTargetIndexPath];
            if ((v18 & 1) == 0)
            {
              _feedbackDragBehavior5 = [(PUCollectionView *)self _feedbackDragBehavior];
              [_feedbackDragBehavior5 dropTargetUpdated];
            }
          }
        }
      }

      else
      {
        v13 = 0;
      }

      [(UIView *)self->_draggedView setCenter:v11 - self->_draggedViewCenterOffset.x, v12 - self->_draggedViewCenterOffset.y];
      [(PXUIAutoScroller *)self->_autoScroller updateWithGestureRecognizer:dragCopy];
      v6 = v13;
    }
  }
}

uint64_t __32__PUCollectionView__handleDrag___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 3416);
  CGAffineTransformMakeScale(&v3, 1.20000005, 1.20000005);
  return [v1 setTransform:&v3];
}

void __32__PUCollectionView__handleDrag___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutAttributesForItemAtIndexPath:*(*(a1 + 40) + 3400)];
  [v2 center];
  [*(a1 + 48) convertPoint:*(a1 + 40) fromView:?];
  [*(*(a1 + 40) + 3416) setCenter:?];
  v3 = *(*(a1 + 40) + 3416);
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

void __32__PUCollectionView__handleDrag___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) reorderDelegate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 3400);
  v5 = *(v3 + 3408);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__PUCollectionView__handleDrag___block_invoke_4;
  v8[3] = &unk_1E7B80C38;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v2 collectionView:v3 moveItemAtIndexPath:v4 toIndexPath:v5 completionHandler:v8];
}

void __32__PUCollectionView__handleDrag___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) endReordering];
  [*(a1 + 40) reloadData];
  [*(*(a1 + 40) + 3416) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(v2 + 3416);
  *(v2 + 3416) = 0;

  v4 = *(a1 + 40);
  v5 = *(v4 + 3408);
  *(v4 + 3408) = 0;

  v6 = *(a1 + 40);
  v7 = *(v6 + 3400);
  *(v6 + 3400) = 0;

  v8 = [*(a1 + 40) _feedbackDragBehavior];
  [v8 draggedObjectLanded];
}

- (void)_applyAutomaticAdjustedContentOffset:(CGPoint)offset
{
  if (!self->_shouldWorkaround34630932)
  {
    v3.receiver = self;
    v3.super_class = PUCollectionView;
    [(PUCollectionView *)&v3 _applyAutomaticAdjustedContentOffset:offset.x, offset.y];
  }
}

- (void)didScrollToInitialPosition
{
  self->_shouldWorkaround34630932 = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUCollectionView_didScrollToInitialPosition__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)indexPathsForSelectedItems
{
  selectionDelegate = [(PUCollectionView *)self selectionDelegate];
  if (objc_opt_respondsToSelector())
  {
    indexPathsForSelectedItems = [selectionDelegate indexPathsForSelectedItemsInCollectionView:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUCollectionView;
    indexPathsForSelectedItems = [(PUCollectionView *)&v7 indexPathsForSelectedItems];
  }

  v5 = indexPathsForSelectedItems;

  return v5;
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = PUCollectionView;
  [(PUCollectionView *)&v3 reloadData];
  [(UILongPressGestureRecognizer *)self->_dragGestureRecognizer pu_cancel];
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v13.receiver = self;
  v13.super_class = PUCollectionView;
  [(PUCollectionView *)&v13 moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PUCollectionView_moveItemAtIndexPath_toIndexPath___block_invoke;
  v10[3] = &unk_1E7B762A8;
  v11 = pathCopy;
  v12 = indexPathCopy;
  v8 = indexPathCopy;
  v9 = pathCopy;
  [(PUCollectionView *)self _updateDragUsingIndexPathUpdateBlock:v10];
}

- (void)deleteItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v8.receiver = self;
  v8.super_class = PUCollectionView;
  [(PUCollectionView *)&v8 deleteItemsAtIndexPaths:pathsCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PUCollectionView_deleteItemsAtIndexPaths___block_invoke;
  v6[3] = &unk_1E7B76280;
  v7 = pathsCopy;
  v5 = pathsCopy;
  [(PUCollectionView *)self _updateDragUsingIndexPathUpdateBlock:v6];
}

- (void)insertItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v8.receiver = self;
  v8.super_class = PUCollectionView;
  [(PUCollectionView *)&v8 insertItemsAtIndexPaths:pathsCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PUCollectionView_insertItemsAtIndexPaths___block_invoke;
  v6[3] = &unk_1E7B76280;
  v7 = pathsCopy;
  v5 = pathsCopy;
  [(PUCollectionView *)self _updateDragUsingIndexPathUpdateBlock:v6];
}

- (void)adjustedContentInsetDidChange
{
  v4.receiver = self;
  v4.super_class = PUCollectionView;
  [(PUCollectionView *)&v4 adjustedContentInsetDidChange];
  collectionViewLayout = [(PUCollectionView *)self collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [collectionViewLayout invalidateLayoutForVerticalScroll];
  }
}

- (void)dealloc
{
  [(UILongPressGestureRecognizer *)self->_dragGestureRecognizer setDelegate:0];
  [(PUCollectionView *)self removeGestureRecognizer:self->_dragGestureRecognizer];
  v3.receiver = self;
  v3.super_class = PUCollectionView;
  [(PUCollectionView *)&v3 dealloc];
}

- (PUCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PUCollectionView;
  v4 = [(PUCollectionView *)&v20 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel__handleDrag_];
    dragGestureRecognizer = v4->_dragGestureRecognizer;
    v4->_dragGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)v4->_dragGestureRecognizer setMinimumPressDuration:0.2];
    [(UILongPressGestureRecognizer *)v4->_dragGestureRecognizer setDelegate:v4];
    v7 = [objc_alloc(MEMORY[0x1E69DD488]) initWithCoordinateSpace:v4];
    feedbackDragBehavior = v4->__feedbackDragBehavior;
    v4->__feedbackDragBehavior = v7;

    gestureRecognizers = [(PUCollectionView *)v4 gestureRecognizers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 requireGestureRecognizerToFail:v4->_dragGestureRecognizer];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(PUCollectionView *)v4 addGestureRecognizer:v4->_dragGestureRecognizer];
  }

  return v4;
}

+ (id)_reuseKeyForSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  if (kindCopy == identifierCopy)
  {
    v9 = kindCopy;
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __76__PUCollectionView__reuseKeyForSupplementaryViewOfKind_withReuseIdentifier___block_invoke;
    v14 = &unk_1E7B80C38;
    v7 = kindCopy;
    v15 = v7;
    v8 = identifierCopy;
    v16 = v8;
    if (_reuseKeyForSupplementaryViewOfKind_withReuseIdentifier__onceToken != -1)
    {
      dispatch_once(&_reuseKeyForSupplementaryViewOfKind_withReuseIdentifier__onceToken, &block);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v7, v8, block, v12, v13, v14];
  }

  return v9;
}

@end