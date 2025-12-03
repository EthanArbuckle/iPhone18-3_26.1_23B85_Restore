@interface _UICollectionViewShadowUpdatesController
- (BOOL)_collectionView:(id)view canEditItemAtIndexPath:(id)path;
- (BOOL)_collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)_collectionView:(id)view canHandleDropSesson:(id)sesson;
- (BOOL)_collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)_collectionView:(id)view dragSessionSupportsSystemDrag:(id)drag;
- (BOOL)_collectionView:(id)view prefersFullSizePreviewsForDragSession:(id)session;
- (BOOL)_collectionView:(id)view shouldApplyTransitionContentOffset:(CGPoint)offset contentSize:(CGSize)size;
- (BOOL)_collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)_rebaseForUpdateMap:(id)map;
- (BOOL)_shadowUpdatesAreSimpleInsertWithOptionalMoveSequenceForIndexPath:(id)path;
- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson;
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view dragSessionAllowsMoveOperation:(id)operation;
- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldShowMenuForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)collectionView:(id)view shouldUpdateFocusFromItemAtIndexPath:(id)path toView:(id)toView heading:(unint64_t)heading;
- (BOOL)collectionView:(id)view shouldUpdateFocusInContext:(id)context;
- (BOOL)collectionView:(id)view tableLayout:(id)layout shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)rebaseForUpdates:(id)updates;
- (BOOL)shouldRebaseForUpdates;
- (CGPoint)_collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_UICollectionViewShadowUpdatesController)initWithCollectionView:(id)view;
- (_UIDataSourceSnapshotter)initialSnapshot;
- (_UIDataSourceUpdateMap)updateMap;
- (double)collectionView:(id)view heightForFooterViewInTableLayout:(id)layout;
- (double)collectionView:(id)view heightForHeaderViewInTableLayout:(id)layout;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForFooterInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForHeaderInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForRowAtIndexPath:(id)path;
- (double)collectionView:(id)view tableLayout:(id)layout heightForFooterInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path;
- (id)_coalesceUpdatesIfPossible:(id)possible;
- (id)_collectionView:(id)view accessoriesForContextMenuWithConfiguration:(id)configuration layoutAnchor:(id *)anchor;
- (id)_collectionView:(id)view dragDestinationTargetIndexPathForProposedIndexPath:(id)path currentIndexPath:(id)indexPath dropSession:(id)session;
- (id)_collectionView:(id)view dragSessionPropertiesForSession:(id)session;
- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)_collectionView:(id)view flowLayoutRowAlignmentOptionsForSection:(int64_t)section;
- (id)_collectionView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference;
- (id)_collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)_collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)_collectionView:(id)view layout:(id)layout flowLayoutRowAlignmentOptionsForSection:(int64_t)section;
- (id)_collectionView:(id)view layout:(id)layout sizesForItemsInSection:(int64_t)section;
- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path;
- (id)_collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)_collectionView:(id)view sectionIndexTitlesTrimmedToCount:(unint64_t)count;
- (id)_collectionView:(id)view styleForContextMenuWithConfiguration:(id)configuration;
- (id)_collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path;
- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForDismissingToItemAtIndexPath:(id)path;
- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForHighlightingItemAtIndexPath:(id)path;
- (id)_dci_collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)_dci_collectionView:(id)view contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)_expandCollapseAnimationContextForCollectionView:(id)view;
- (id)_findInsertShadowUpdateForFinalIndexPath:(id)path;
- (id)_findShadowUpdateForIdentifier:(id)identifier inShadowUpdates:(id)updates;
- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view;
- (id)_indexPathsBeforeShadowUpdates:(id)updates;
- (id)_rebasedShadowUpdatesForUpdate:(id)update initialSnapshot:(id)snapshot shadowUpdates:(id)updates;
- (id)_rebasedUpdateMapForUpdates:(id)updates;
- (id)_sectionIndexTitlesForCollectionView:(id)view;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view tableLayout:(id)layout leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout leadingSwipeActionsForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionView:(id)view transitionLayoutForOldLayout:(id)layout newLayout:(id)newLayout;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)computeRevertShadowUpdates;
- (id)indexPathAfterShadowUpdates:(id)updates allowingAppendingInserts:(BOOL)inserts;
- (id)indexPathBeforeShadowUpdates:(id)updates;
- (id)indexPathForElementWithModelIdentifier:(id)identifier inView:(id)view;
- (id)indexPathForPreferredFocusedItemForCollectionView:(id)view;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)indexPathsAfterShadowUpdates:(id)updates;
- (id)indexPathsBeforeShadowUpdates:(id)updates;
- (id)indexTitlesForCollectionView:(id)view;
- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view;
- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view tableLayout:(id)layout indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)sectionIndexAfterShadowUpdates:(int64_t)updates allowingAppendingInserts:(BOOL)inserts;
- (int64_t)sectionIndexBeforeShadowUpdates:(int64_t)updates;
- (void)_collectionView:(id)view didFocusItemAtIndexPath:(id)path;
- (void)_collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)_collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)_collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)_collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)_collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)_collectionView:(id)view horizontalIndexTitleBar:(id)bar selectedEntry:(id)entry;
- (void)_collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)_collectionView:(id)view typeSelectResultDidUpdate:(id)update;
- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator;
- (void)_collectionView:(id)view willPerformUpdates:(id)updates;
- (void)_pruneAndRebaseShadowUpdatesForShadowInsertWithIdentifier:(id)identifier;
- (void)_regenerateUpdateMap;
- (void)appendShadowUpdate:(id)update;
- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)collectionView:(id)view performAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view tableLayout:(id)layout accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)collectionView:(id)view tableLayout:(id)layout commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)collectionView:(id)view tableLayout:(id)layout didEndEditingRowAtIndexPath:(id)path;
- (void)collectionView:(id)view tableLayout:(id)layout willBeginEditingRowAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)reset;
@end

@implementation _UICollectionViewShadowUpdatesController

- (void)reset
{
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  [_shadowUpdates removeAllObjects];

  [(_UICollectionViewShadowUpdatesController *)self setInitialSnapshot:0];

  [(_UICollectionViewShadowUpdatesController *)self setUpdateMap:0];
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (BOOL)shouldRebaseForUpdates
{
  if (!self->_updateMap || !self->_initialSnapshot)
  {
    return 0;
  }

  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  if ([_shadowUpdates count])
  {
    hasActiveDrag = 1;
  }

  else
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    if ([collectionView hasActiveDrop])
    {
      hasActiveDrag = 1;
    }

    else
    {
      collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
      hasActiveDrag = [collectionView2 hasActiveDrag];
    }
  }

  return hasActiveDrag;
}

- (_UICollectionViewShadowUpdatesController)initWithCollectionView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UICollectionViewShadowUpdatesController;
  v5 = [(_UICollectionViewShadowUpdatesController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, viewCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    shadowUpdates = v6->__shadowUpdates;
    v6->__shadowUpdates = v7;

    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"com.apple.UIKit.shadowReuseCellIdentifier"];
  }

  return v6;
}

- (BOOL)rebaseForUpdates:(id)updates
{
  updatesCopy = updates;
  if ([updatesCopy count])
  {
    v5 = [(_UICollectionViewShadowUpdatesController *)self _rebasedUpdateMapForUpdates:updatesCopy];
    if (v5)
    {
      v6 = [(_UICollectionViewShadowUpdatesController *)self _rebaseForUpdateMap:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_rebaseForUpdateMap:(id)map
{
  mapCopy = map;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v6 = [off_1E70ECC48 snapshotterForDataSourceBackedView:collectionView];

  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  v8 = [updateMap rebasedMapFromNewBaseMap:mapCopy];

  if (v8)
  {
    _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    [_shadowUpdates removeAllObjects];

    _shadowUpdates2 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    updates = [v8 updates];
    [_shadowUpdates2 addObjectsFromArray:updates];

    [(_UICollectionViewShadowUpdatesController *)self setInitialSnapshot:v6];
    [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
  }

  return v8 != 0;
}

- (void)appendShadowUpdate:(id)update
{
  v22[2] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (updateCopy)
  {
    _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v6 = [_shadowUpdates count];

    if (!v6)
    {
      collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
      v8 = [off_1E70ECC48 snapshotterForDataSourceBackedView:collectionView];
      [(_UICollectionViewShadowUpdatesController *)self setInitialSnapshot:v8];
    }

    if (!updateCopy[10])
    {
      updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      finalSnapshot = [updateMap finalSnapshot];
      v11 = 8;
      if (!updateCopy[10])
      {
        v11 = 9;
      }

      v12 = updateCopy[v11];
      v13 = [finalSnapshot indexPathIsSectionAppendingInsert:v12];

      if (v13)
      {
        *(updateCopy + 56) |= 1u;
      }
    }

    _shadowUpdates2 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    lastObject = [_shadowUpdates2 lastObject];

    if (!lastObject || (v22[0] = lastObject, v22[1] = updateCopy, [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2], v16 = objc_claimAutoreleasedReturnValue(), -[_UICollectionViewShadowUpdatesController _coalesceUpdatesIfPossible:](self, "_coalesceUpdatesIfPossible:", v16), _shadowUpdates3 = objc_claimAutoreleasedReturnValue(), v16, !_shadowUpdates3))
    {
      _shadowUpdates3 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
      [_shadowUpdates3 addObject:updateCopy];
LABEL_22:

      [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
      goto LABEL_23;
    }

    _shadowUpdates4 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v19 = [_shadowUpdates4 count] - 1;

    if (_shadowUpdates3[10] == 3 && _shadowUpdates3[2] == _shadowUpdates3[4] && _shadowUpdates3[1] == _shadowUpdates3[3])
    {
      _shadowUpdates5 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
LABEL_20:
      [_shadowUpdates5 removeObjectAtIndex:v19];
      goto LABEL_21;
    }

    if (_shadowUpdates3[8])
    {
      _shadowUpdates5 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    }

    else
    {
      v21 = _shadowUpdates3[9];
      _shadowUpdates5 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
      if (!v21)
      {
        goto LABEL_20;
      }
    }

    [_shadowUpdates5 replaceObjectAtIndex:v19 withObject:_shadowUpdates3];
LABEL_21:

    goto LABEL_22;
  }

LABEL_23:
}

- (id)computeRevertShadowUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  reverseObjectEnumerator = [_shadowUpdates reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        revertedUpdate = [(UICollectionViewUpdateItem *)*(*(&v12 + 1) + 8 * i) revertedUpdate];
        [v3 addObject:revertedUpdate];
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v7 = [_shadowUpdates count];

  if (v7)
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    finalSnapshot = [updateMap finalSnapshot];
    v10 = [finalSnapshot numberOfItemsInSection:section];
  }

  else
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    finalSnapshot = [updateMap _dataSourceActual];
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v10 = [finalSnapshot collectionView:collectionView numberOfItemsInSection:section];
  }

  return v10;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  v5 = [_shadowUpdates count];

  if (v5)
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    finalSnapshot = [updateMap finalSnapshot];
    numberOfSections = [finalSnapshot numberOfSections];
  }

  else
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    finalSnapshot = [updateMap _dataSourceActual];
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    numberOfSections = [finalSnapshot numberOfSectionsInCollectionView:collectionView];
  }

  return numberOfSections;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    v11 = [_dataSourceActual collectionView:viewCopy cellForItemAtIndexPath:v8];
  }

  else
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdateReuseIdentifierForItemItemAtIndexPath:pathCopy];
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:collectionView forIndexPath:pathCopy];

    [(_UICollectionViewShadowUpdatesController *)self _updateCellIfNeeded:v11 atIndexPath:pathCopy];
    if ([collectionView isEqualToString:@"com.apple.UIKit.shadowReuseCellIdentifier"])
    {
      [v11 _setHiddenForReordering:1];
    }
  }

  return v11;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  v10 = [(_UICollectionViewShadowUpdatesController *)self _supplementaryIndexPathBeforeShadowUpdates:path];
  if (v10)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    v13 = [_dataSourceActual collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    v10 = [_dataSourceActual collectionView:viewCopy canMoveItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  v10 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  if (v9 && v10)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    [_dataSourceActual collectionView:viewCopy moveItemAtIndexPath:v9 toIndexPath:v10];
  }
}

- (id)_expandCollapseAnimationContextForCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  v7 = [_dataSourceActual _expandCollapseAnimationContextForCollectionView:viewCopy];

  return v7;
}

- (id)indexTitlesForCollectionView:(id)view
{
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v7 = [_dataSourceActual indexTitlesForCollectionView:collectionView2];

  return v7;
}

- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v11 = [_dataSourceActual collectionView:collectionView2 indexPathForIndexTitle:titleCopy atIndex:index];

  return v11;
}

- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    v10 = [_dataSourceActual modelIdentifierForElementAtIndexPath:v7 inView:viewCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexPathForElementWithModelIdentifier:(id)identifier inView:(id)view
{
  viewCopy = view;
  identifierCopy = identifier;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  v10 = [_dataSourceActual indexPathForElementWithModelIdentifier:identifierCopy inView:viewCopy];

  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v10];

  return v11;
}

- (BOOL)_collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v5)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v9 = [_dataSourceActual _collectionView:collectionView2 canMoveItemAtIndexPath:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  v10 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  if (v9 && v10)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    [_dataSourceActual _collectionView:viewCopy moveItemAtIndexPath:v9 toIndexPath:v10];
  }
}

- (BOOL)_collectionView:(id)view canEditItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dataSourceActual = [collectionView _dataSourceActual];
    v10 = [_dataSourceActual _collectionView:viewCopy canEditItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_sectionIndexTitlesForCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  v7 = [_dataSourceActual _sectionIndexTitlesForCollectionView:viewCopy];

  return v7;
}

- (id)_collectionView:(id)view sectionIndexTitlesTrimmedToCount:(unint64_t)count
{
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  v9 = [_dataSourceActual _collectionView:viewCopy sectionIndexTitlesTrimmedToCount:count];

  return v9;
}

- (id)_collectionView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  v12 = [_dataSourceActual _collectionView:viewCopy indexPathForSectionIndexTitle:titleCopy atIndex:index];

  return v12;
}

- (void)_collectionView:(id)view willPerformUpdates:(id)updates
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updatesCopy = updates;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = updatesCopy;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
        v14 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathBeforeUpdate];

        indexPathAfterUpdate = [v12 indexPathAfterUpdate];
        v16 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathAfterUpdate];

        v17 = [UICollectionViewUpdateItem alloc];
        if (v12)
        {
          v18 = v12[10];
        }

        else
        {
          v18 = 0;
        }

        v19 = [(UICollectionViewUpdateItem *)v17 initWithInitialIndexPath:v14 finalIndexPath:v16 updateAction:v18];
        [v7 addObject:v19];

        ++v11;
      }

      while (v9 != v11);
      v20 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v20;
    }

    while (v20);
  }

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];
  [_dataSourceActual _collectionView:viewCopy willPerformUpdates:v7];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual collectionView:viewCopy shouldHighlightItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didHighlightItemAtIndexPath:v6];
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didUnhighlightItemAtIndexPath:v6];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual collectionView:viewCopy shouldSelectItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual collectionView:viewCopy shouldDeselectItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didSelectItemAtIndexPath:v6];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didDeselectItemAtIndexPath:v6];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:v9];
  }
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  v12 = [(_UICollectionViewShadowUpdatesController *)self _supplementaryIndexPathBeforeShadowUpdates:path];
  if (v12)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy willDisplaySupplementaryView:supplementaryViewCopy forElementKind:kindCopy atIndexPath:v12];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didEndDisplayingCell:cellCopy forItemAtIndexPath:v9];
  }
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  v12 = [(_UICollectionViewShadowUpdatesController *)self _supplementaryIndexPathBeforeShadowUpdates:path];
  if (v12)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didEndDisplayingSupplementaryView:supplementaryViewCopy forElementOfKind:kindCopy atIndexPath:v12];
  }
}

- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v11 = [_delegateActual collectionView:viewCopy canEditItemAtIndexPath:pathCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)collectionView:(id)view shouldShowMenuForItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual collectionView:viewCopy shouldShowMenuForItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  senderCopy = sender;
  v12 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v12)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v15 = [_delegateActual collectionView:viewCopy canPerformAction:action forItemAtIndexPath:v12 withSender:senderCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)collectionView:(id)view performAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  senderCopy = sender;
  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v11)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy performAction:action forItemAtIndexPath:v11 withSender:senderCopy];
  }
}

- (id)collectionView:(id)view transitionLayoutForOldLayout:(id)layout newLayout:(id)newLayout
{
  newLayoutCopy = newLayout;
  layoutCopy = layout;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v13 = [_delegateActual collectionView:viewCopy transitionLayoutForOldLayout:layoutCopy newLayout:newLayoutCopy];

  return v13;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  proposedIndexPathCopy = proposedIndexPath;
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v16 = [_delegateActual collectionView:viewCopy targetIndexPathForMoveOfItemFromOriginalIndexPath:pathCopy atCurrentIndexPath:indexPathCopy toProposedIndexPath:proposedIndexPathCopy];

  return v16;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v13 = [_delegateActual collectionView:viewCopy targetIndexPathForMoveFromItemAtIndexPath:pathCopy toProposedIndexPath:indexPathCopy];

  return v13;
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  [_delegateActual collectionView:viewCopy targetContentOffsetForProposedContentOffset:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual collectionView:viewCopy canFocusItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)collectionView:(id)view shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_delegateActual collectionView:collectionView2 shouldUpdateFocusInContext:contextCopy];

  return v9;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_delegateActual collectionView:collectionView2 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v7 = collectionView;
  if (v5)
  {
    _delegateActual = [collectionView _delegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    selectionFollowsFocus = [_delegateActual collectionView:collectionView2 selectionFollowsFocusForItemAtIndexPath:v5];
  }

  else
  {
    selectionFollowsFocus = [collectionView selectionFollowsFocus];
  }

  return selectionFollowsFocus;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v7 = [_delegateActual indexPathForPreferredFocusedViewInCollectionView:collectionView2];

  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v7];

  return v8;
}

- (BOOL)_collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v10 = [_delegateActual _collectionView:viewCopy canFocusItemAtIndexPath:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexPathForPreferredFocusedItemForCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v7 = [_delegateActual indexPathForPreferredFocusedItemForCollectionView:viewCopy];

  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v7];

  return v8;
}

- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didFocusItemAtIndexPath:v6];
  }
}

- (void)_collectionView:(id)view didFocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual _collectionView:viewCopy didFocusItemAtIndexPath:v6];
  }
}

- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual collectionView:viewCopy didUnfocusItemAtIndexPath:v6];
  }
}

- (BOOL)collectionView:(id)view shouldUpdateFocusFromItemAtIndexPath:(id)path toView:(id)toView heading:(unint64_t)heading
{
  viewCopy = view;
  toViewCopy = toView;
  v12 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v12)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v15 = [_delegateActual collectionView:viewCopy shouldUpdateFocusFromItemAtIndexPath:v12 toView:toViewCopy heading:heading];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_collectionView:(id)view horizontalIndexTitleBar:(id)bar selectedEntry:(id)entry
{
  entryCopy = entry;
  barCopy = bar;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  [_delegateActual _collectionView:viewCopy horizontalIndexTitleBar:barCopy selectedEntry:entryCopy];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathsCopy = paths;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual collectionView:viewCopy contextMenuConfigurationForItemsAtIndexPaths:pathsCopy point:{x, y}];

  return v11;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual collectionView:viewCopy contextMenuConfiguration:configurationCopy highlightPreviewForItemAtIndexPath:pathCopy];

  return v11;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual collectionView:viewCopy contextMenuConfiguration:configurationCopy dismissalPreviewForItemAtIndexPath:pathCopy];

  return v11;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual collectionView:viewCopy contextMenuConfigurationForItemAtIndexPath:pathCopy point:{x, y}];

  return v11;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v8 = [_delegateActual collectionView:viewCopy previewForHighlightingContextMenuWithConfiguration:configurationCopy];

  return v8;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v8 = [_delegateActual collectionView:viewCopy previewForDismissingContextMenuWithConfiguration:configurationCopy];

  return v8;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual collectionView:viewCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual collectionView:viewCopy willDisplayContextMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual collectionView:viewCopy willEndContextMenuInteractionWithConfiguration:configurationCopy animator:animatorCopy];
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual collectionView:viewCopy canPerformPrimaryActionForItemAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual collectionView:viewCopy performPrimaryActionForItemAtIndexPath:v6];
  }
}

- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual collectionView:viewCopy sceneActivationConfigurationForItemAtIndexPath:pathCopy point:{x, y}];

  return v11;
}

- (id)_collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual _collectionView:viewCopy sceneActivationConfigurationForItemAtIndexPath:pathCopy point:{x, y}];

  return v11;
}

- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v11 = [_delegateActual _collectionView:viewCopy typeSelectStringForItemAtIndexPath:pathCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  resultCopy = result;
  animatorCopy = animator;
  v16 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v16)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    [_delegateActual _collectionView:viewCopy updateTypeSelectResultForCell:cellCopy atIndexPath:pathCopy withItemResult:resultCopy animator:animatorCopy];
  }
}

- (void)_collectionView:(id)view typeSelectResultDidUpdate:(id)update
{
  updateCopy = update;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  [_delegateActual _collectionView:viewCopy typeSelectResultDidUpdate:updateCopy];
}

- (id)_indexPathOfReferenceItemForLayoutTransitionInCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v7 = [_delegateActual _indexPathOfReferenceItemForLayoutTransitionInCollectionView:viewCopy];

  return v7;
}

- (CGPoint)_collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  [_delegateActual _collectionView:viewCopy targetContentOffsetForProposedContentOffset:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)_collectionView:(id)view shouldApplyTransitionContentOffset:(CGPoint)offset contentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];
  v13 = [_delegateActual _collectionView:viewCopy shouldApplyTransitionContentOffset:x contentSize:{y, width, height}];

  return v13;
}

- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  scrollCopy = scroll;
  viewCopy = view;
  [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual _collectionView:viewCopy orthogonalScrollViewDidScroll:scrollCopy section:section];
}

- (id)_collectionView:(id)view indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)reference
{
  referenceCopy = reference;
  viewCopy = view;
  v8 = viewCopy;
  if (referenceCopy)
  {
    _delegateActual2 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:referenceCopy];
    _delegateActual = [v8 _delegateActual];
    v11 = [_delegateActual _collectionView:v8 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:referenceCopy];

    v8 = _delegateActual;
  }

  else
  {
    _delegateActual2 = [viewCopy _delegateActual];
    v11 = [_delegateActual2 _collectionView:v8 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:0];
  }

  return v11;
}

- (id)_collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  v10 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  v12 = 0;
  if (v10 && v11)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    v12 = [_delegateActual _collectionView:viewCopy targetIndexPathForMoveFromItemAtIndexPath:v10 toProposedIndexPath:v11];
  }

  return v12;
}

- (id)_collectionView:(id)view styleForContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v8 = [_delegateActual _collectionView:viewCopy styleForContextMenuWithConfiguration:configurationCopy];

  return v8;
}

- (id)_collectionView:(id)view accessoriesForContextMenuWithConfiguration:(id)configuration layoutAnchor:(id *)anchor
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v10 = *&anchor->var2;
  v13[0] = *&anchor->var0;
  v13[1] = v10;
  var4 = anchor->var4;
  v11 = [_delegateActual _collectionView:viewCopy accessoriesForContextMenuWithConfiguration:configurationCopy layoutAnchor:v13];

  return v11;
}

- (id)_dci_collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathsCopy = paths;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual _dci_collectionView:viewCopy contextMenuConfigurationForItemsAtIndexPaths:pathsCopy point:{x, y}];

  return v11;
}

- (id)_dci_collectionView:(id)view contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathsCopy = paths;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual _dci_collectionView:viewCopy contextMenuConfigurationForSelectedItemsAtIndexPaths:pathsCopy point:{x, y}];

  return v11;
}

- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForHighlightingItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual _dci_collectionView:viewCopy contextMenuConfiguration:configurationCopy previewForHighlightingItemAtIndexPath:pathCopy];

  return v11;
}

- (id)_dci_collectionView:(id)view contextMenuConfiguration:(id)configuration previewForDismissingToItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v11 = [_delegateActual _dci_collectionView:viewCopy contextMenuConfiguration:configurationCopy previewForDismissingToItemAtIndexPath:pathCopy];

  return v11;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathsCopy = paths;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = pathsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:*(*(&v17 + 1) + 8 * v13), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _prefetchDataSourceActual = [collectionView _prefetchDataSourceActual];
  [_prefetchDataSourceActual collectionView:viewCopy prefetchItemsAtIndexPaths:v8];
}

- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathsCopy = paths;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = pathsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:*(*(&v17 + 1) + 8 * v13), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _prefetchDataSourceActual = [collectionView _prefetchDataSourceActual];
  [_prefetchDataSourceActual collectionView:viewCopy cancelPrefetchingForItemsAtIndexPaths:v8];
}

- (id)_collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dragSourceDelegateActual = [collectionView _dragSourceDelegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_dragSourceDelegateActual _collectionView:collectionView2 itemsForBeginningDragSession:sessionCopy atIndexPath:v8];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v11)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dragSourceDelegateActual = [collectionView _dragSourceDelegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v15 = [_dragSourceDelegateActual _collectionView:collectionView2 itemsForAddingToDragSession:sessionCopy atIndexPath:v11 point:{x, y}];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)_collectionView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragSourceDelegateActual = [collectionView _dragSourceDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragSourceDelegateActual _collectionView:collectionView2 dragSessionWillBegin:beginCopy];
}

- (void)_collectionView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragSourceDelegateActual = [collectionView _dragSourceDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragSourceDelegateActual _collectionView:collectionView2 dragSessionDidEnd:endCopy];
}

- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDestinationDelegateActual _collectionView:collectionView2 performDropWithCoordinator:coordinatorCopy];
}

- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson
{
  sessonCopy = sesson;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDestinationDelegateActual _collectionView:collectionView2 canHandleDropSesson:sessonCopy];

  return v9;
}

- (void)_collectionView:(id)view dropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDestinationDelegateActual _collectionView:collectionView2 dropSessionDidEnter:enterCopy];
}

- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v12 = [_dragDestinationDelegateActual _collectionView:collectionView2 dropSessionDidUpdate:updateCopy withDestinationIndexPath:v8];

  return v12;
}

- (void)_collectionView:(id)view dropSessionDidExit:(id)exit
{
  exitCopy = exit;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDestinationDelegateActual _collectionView:collectionView2 dropSessionDidExit:exitCopy];
}

- (void)_collectionView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDestinationDelegateActual _collectionView:collectionView2 dropSessionDidEnd:endCopy];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  _shouldPerformTranslationForDelegateBasedFlowLayoutSizing = [(_UICollectionViewShadowUpdatesController *)self _shouldPerformTranslationForDelegateBasedFlowLayoutSizing];
  v10 = pathCopy;
  v11 = v10;
  if (!_shouldPerformTranslationForDelegateBasedFlowLayoutSizing)
  {
    goto LABEL_3;
  }

  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:v10];

  if (v11)
  {
    goto LABEL_3;
  }

  v11 = [layoutCopy layoutAttributesForInteractivelyMovingItemAtIndexPath:v10 withTargetPosition:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v11 size];
  v23 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);
  if (v24 != *MEMORY[0x1E695F060] || v21 != v22)
  {
    [v11 size];
    v16 = v26;
    v18 = v27;
    goto LABEL_4;
  }

  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  initialSnapshot = [updateMap initialSnapshot];
  v30 = [initialSnapshot globalIndexForIndexPath:v10];

  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
LABEL_3:
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy sizeForItemAtIndexPath:v11];
    v16 = v15;
    v18 = v17;

LABEL_4:
    goto LABEL_5;
  }

  [layoutCopy _fallbackItemSize];
  v16 = v31;
  v18 = v32;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [layoutCopy itemSize];
    if (v33 != v23 || v34 != v22)
    {
      v18 = v34;
      v16 = v33;
    }
  }

LABEL_5:

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:index];
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy insetForSectionAtIndex:v13];
    v12 = v17;
    v11 = v18;
    v10 = v19;
    v9 = v20;
  }

  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:index];
  v9 = 0.0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy minimumLineSpacingForSectionAtIndex:v10];
    v9 = v14;
  }

  return v9;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:index];
  v9 = 0.0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy minimumInteritemSpacingForSectionAtIndex:v10];
    v9 = v14;
  }

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v11 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy referenceSizeForHeaderInSection:v11];
    v9 = v15;
    v10 = v16;
  }

  v17 = v9;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v11 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 layout:layoutCopy referenceSizeForFooterInSection:v11];
    v9 = v15;
    v10 = v16;
  }

  v17 = v9;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)_collectionView:(id)view flowLayoutRowAlignmentOptionsForSection:(int64_t)section
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v7 = v5;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v6 = [_delegateActual _collectionView:collectionView2 flowLayoutRowAlignmentOptionsForSection:v7];
  }

  return v6;
}

- (id)_collectionView:(id)view layout:(id)layout flowLayoutRowAlignmentOptionsForSection:(int64_t)section
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v10 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v9 = [_delegateActual _collectionView:collectionView2 layout:layoutCopy flowLayoutRowAlignmentOptionsForSection:v10];
  }

  return v9;
}

- (id)_collectionView:(id)view layout:(id)layout sizesForItemsInSection:(int64_t)section
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v10 = v8;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v9 = [_delegateActual _collectionView:collectionView2 layout:layoutCopy sizesForItemsInSection:v10];
  }

  return v9;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v9)
  {
LABEL_2:
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy heightForRowAtIndexPath:v9];
    v14 = v13;

    goto LABEL_3;
  }

  [layoutCopy rowHeight];
  v14 = v16;
  v17 = fabs(v16) < 2.22044605e-16;
  v18 = fabs(v16 + -1.79769313e308);
  if (v17 || v18 <= 2.22044605e-16)
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    initialSnapshot = [updateMap initialSnapshot];
    v22 = [initialSnapshot globalIndexForIndexPath:pathCopy];

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [layoutCopy _defaultCellHeight];
      v14 = v23;
      goto LABEL_3;
    }

    v9 = pathCopy;
    goto LABEL_2;
  }

LABEL_3:

  return v14;
}

- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  v10 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    [_delegateActual collectionView:viewCopy tableLayout:layoutCopy estimatedHeightForRowAtIndexPath:v10];
    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  return v14;
}

- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  v10 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  v11 = 0.0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v10;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    [_delegateActual collectionView:viewCopy tableLayout:layoutCopy estimatedHeightForHeaderInSection:v12];
    v11 = v15;
  }

  return v11;
}

- (double)collectionView:(id)view tableLayout:(id)layout estimatedHeightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  v10 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  v11 = 0.0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v10;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    [_delegateActual collectionView:viewCopy tableLayout:layoutCopy estimatedHeightForFooterInSection:v12];
    v11 = v15;
  }

  return v11;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section
{
  layoutCopy = layout;
  [layoutCopy sectionHeaderHeight];
  v9 = v8;
  v10 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy heightForHeaderInSection:v11];
    v9 = v15;
  }

  return v9;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForFooterInSection:(int64_t)section
{
  layoutCopy = layout;
  [layoutCopy sectionFooterHeight];
  v9 = v8;
  v10 = [(_UICollectionViewShadowUpdatesController *)self sectionIndexBeforeShadowUpdates:section];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy heightForFooterInSection:v11];
    v9 = v15;
  }

  return v9;
}

- (double)collectionView:(id)view heightForHeaderViewInTableLayout:(id)layout
{
  layoutCopy = layout;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];

  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_delegateActual collectionView:collectionView2 heightForHeaderViewInTableLayout:layoutCopy];
  v10 = v9;

  return v10;
}

- (double)collectionView:(id)view heightForFooterViewInTableLayout:(id)layout
{
  layoutCopy = layout;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _delegateActual = [collectionView _delegateActual];

  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_delegateActual collectionView:collectionView2 heightForFooterViewInTableLayout:layoutCopy];
  v10 = v9;

  return v10;
}

- (void)collectionView:(id)view tableLayout:(id)layout accessoryButtonTappedForRowWithIndexPath:(id)path
{
  layoutCopy = layout;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy accessoryButtonTappedForRowWithIndexPath:v7];
  }
}

- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy editingStyleForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)collectionView:(id)view tableLayout:(id)layout commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy commitEditingStyle:style forRowAtIndexPath:v9];
  }
}

- (id)collectionView:(id)view tableLayout:(id)layout leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy leadingSwipeActionsConfigurationForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy trailingSwipeActionsConfigurationForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)collectionView:(id)view tableLayout:(id)layout shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy shouldIndentWhileEditingRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)collectionView:(id)view tableLayout:(id)layout willBeginEditingRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy willBeginEditingRowAtIndexPath:v7];
  }
}

- (void)collectionView:(id)view tableLayout:(id)layout didEndEditingRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v7 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy didEndEditingRowAtIndexPath:v7];
  }
}

- (int64_t)collectionView:(id)view tableLayout:(id)layout indentationLevelForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy indentationLevelForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)view tableLayout:(id)layout leadingSwipeActionsForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy leadingSwipeActionsForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path
{
  layoutCopy = layout;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];

    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 tableLayout:layoutCopy trailingSwipeActionsForRowAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v12 = [_dragDelegateActual collectionView:collectionView2 itemsForBeginningDragSession:sessionCopy atIndexPath:v8];

  return v12;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v15 = [_dragDelegateActual collectionView:collectionView2 itemsForAddingToDragSession:sessionCopy atIndexPath:v11 point:{x, y}];

  return v15;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual collectionView:collectionView2 dragPreviewParametersForItemAtIndexPath:v5];

  return v9;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDelegateActual collectionView:collectionView2 dragSessionWillBegin:beginCopy];
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dragDelegateActual collectionView:collectionView2 dragSessionDidEnd:endCopy];
}

- (BOOL)collectionView:(id)view dragSessionAllowsMoveOperation:(id)operation
{
  operationCopy = operation;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual collectionView:collectionView2 dragSessionAllowsMoveOperation:operationCopy];

  return v9;
}

- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application
{
  applicationCopy = application;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual collectionView:collectionView2 dragSessionIsRestrictedToDraggingApplication:applicationCopy];

  return v9;
}

- (BOOL)_collectionView:(id)view prefersFullSizePreviewsForDragSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual _collectionView:collectionView2 prefersFullSizePreviewsForDragSession:sessionCopy];

  return v9;
}

- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dragDelegateActual = [collectionView _dragDelegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_dragDelegateActual _collectionView:collectionView2 dataOwnerForDragSession:sessionCopy atIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_collectionView:(id)view dragSessionSupportsSystemDrag:(id)drag
{
  dragCopy = drag;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual _collectionView:collectionView2 dragSessionSupportsSystemDrag:dragCopy];

  return v9;
}

- (id)_collectionView:(id)view dragSessionPropertiesForSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDelegateActual = [collectionView _dragDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDelegateActual _collectionView:collectionView2 dragSessionPropertiesForSession:sessionCopy];

  return v9;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dropDelegateActual collectionView:collectionView2 performDropWithCoordinator:coordinatorCopy];
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dropDelegateActual collectionView:collectionView2 canHandleDropSession:sessionCopy];

  return v9;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dropDelegateActual collectionView:collectionView2 dropSessionDidEnter:enterCopy];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  pathCopy = path;
  updateCopy = update;
  v9 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  v10 = v9;
  if (pathCopy && !v9)
  {
    if ([(_UICollectionViewShadowUpdatesController *)self _shadowUpdatesAreSimpleInsertWithOptionalMoveSequenceForIndexPath:pathCopy])
    {
      v10 = pathCopy;
    }

    else
    {
      v10 = 0;
    }
  }

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v14 = [_dropDelegateActual collectionView:collectionView2 dropSessionDidUpdate:updateCopy withDestinationIndexPath:v10];

  return v14;
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  exitCopy = exit;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dropDelegateActual collectionView:collectionView2 dropSessionDidExit:exitCopy];
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dropDelegateActual = [collectionView _dropDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  [_dropDelegateActual collectionView:collectionView2 dropSessionDidEnd:endCopy];
}

- (id)collectionView:(id)view dropPreviewParametersForItemAtIndexPath:(id)path
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v5)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dropDelegateActual = [collectionView _dropDelegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v9 = [_dropDelegateActual collectionView:collectionView2 dropPreviewParametersForItemAtIndexPath:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  sessionCopy = session;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _dropDelegateActual = [collectionView _dropDelegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_dropDelegateActual _collectionView:collectionView2 dataOwnerForDropSession:sessionCopy withDestinationIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_collectionView:(id)view liftingPreviewParametersForItemAtIndexPath:(id)path
{
  v5 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragSourceDelegateActual = [collectionView _dragSourceDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragSourceDelegateActual _collectionView:collectionView2 liftingPreviewParametersForItemAtIndexPath:v5];

  return v9;
}

- (id)_collectionView:(id)view dragDestinationTargetIndexPathForProposedIndexPath:(id)path currentIndexPath:(id)indexPath dropSession:(id)session
{
  sessionCopy = session;
  indexPathCopy = indexPath;
  v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  v12 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v16 = [_dragDestinationDelegateActual _collectionView:collectionView2 dragDestinationTargetIndexPathForProposedIndexPath:v11 currentIndexPath:v12 dropSession:sessionCopy];

  return v16;
}

- (BOOL)_collectionView:(id)view canHandleDropSesson:(id)sesson
{
  sessonCopy = sesson;
  collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  _dragDestinationDelegateActual = [collectionView _dragDestinationDelegateActual];
  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v9 = [_dragDestinationDelegateActual _collectionView:collectionView2 canHandleDropSesson:sessonCopy];

  return v9;
}

- (BOOL)_collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  contextCopy = context;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual _collectionView:collectionView2 shouldSpringLoadItemAtIndexPath:v8 withContext:contextCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  contextCopy = context;
  v8 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    _delegateActual = [collectionView _delegateActual];
    collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v12 = [_delegateActual collectionView:collectionView2 shouldSpringLoadItemAtIndexPath:v8 withContext:contextCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shadowUpdatesAreSimpleInsertWithOptionalMoveSequenceForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableArray *)self->__shadowUpdates count];
  shadowUpdates = self->__shadowUpdates;
  if (v5 == 1)
  {
    v7 = [(NSMutableArray *)shadowUpdates objectAtIndexedSubscript:0];
    if ([v7 updateAction])
    {
      v8 = 0;
LABEL_13:

      goto LABEL_14;
    }

    _indexPath = [(UICollectionViewUpdateItem *)v7 _indexPath];
    v8 = [_indexPath isEqual:pathCopy];
LABEL_12:

    goto LABEL_13;
  }

  if ([(NSMutableArray *)shadowUpdates count]== 2)
  {
    v7 = [(NSMutableArray *)self->__shadowUpdates objectAtIndexedSubscript:0];
    _indexPath = [(NSMutableArray *)self->__shadowUpdates objectAtIndexedSubscript:1];
    if ([v7 updateAction] || objc_msgSend(_indexPath, "updateAction") != 3)
    {
      v8 = 0;
    }

    else
    {
      _indexPath2 = [(UICollectionViewUpdateItem *)v7 _indexPath];
      indexPathBeforeUpdate = [_indexPath indexPathBeforeUpdate];
      if ([_indexPath2 isEqual:indexPathBeforeUpdate])
      {
        indexPathAfterUpdate = [_indexPath indexPathAfterUpdate];
        v8 = [pathCopy isEqual:indexPathAfterUpdate];
      }

      else
      {
        v8 = 0;
      }
    }

    goto LABEL_12;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)_rebasedShadowUpdatesForUpdate:(id)update initialSnapshot:(id)snapshot shadowUpdates:(id)updates
{
  v47[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  snapshotCopy = snapshot;
  updatesCopy = updates;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = updateCopy;
  v47[0] = updateCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v38 = snapshotCopy;
  v11 = [_UIDataSourceUpdateMap mapForInitialSnapshot:snapshotCopy orderedUpdateItems:v10];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = updatesCopy;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v40)
  {
    v37 = *v42;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v12);
        indexPathBeforeUpdate = [v14 indexPathBeforeUpdate];
        indexPathBeforeUpdate2 = [v13 finalIndexPathForInitialIndexPath:indexPathBeforeUpdate];

        indexPathAfterUpdate = [v14 indexPathAfterUpdate];
        indexPathAfterUpdate2 = [v13 finalIndexPathForInitialIndexPath:indexPathAfterUpdate];

        if ([v14 updateAction] != 3)
        {
          if ([v14 updateAction])
          {
            v21 = 0;
          }

          else
          {
            v21 = indexPathAfterUpdate2 == 0;
          }

          if (v21)
          {
            indexPathAfterUpdate2 = [v14 indexPathAfterUpdate];
          }

          goto LABEL_21;
        }

        if (!indexPathBeforeUpdate2)
        {
          indexPathBeforeUpdate2 = [v14 indexPathBeforeUpdate];
        }

        if (indexPathBeforeUpdate2)
        {
          v19 = indexPathAfterUpdate2 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewShadowUpdatesController.m" lineNumber:1326 description:{@"Rebased moves cannot have either initial or final indexPaths == nil. updateItem(%@)", v14}];

LABEL_21:
          if (!(indexPathBeforeUpdate2 | indexPathAfterUpdate2))
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewShadowUpdatesController.m" lineNumber:1334 description:{@"Rebased updateItem cannot have both an initial+final indexPath == nil. Faulty updateItem is (%@)", v14}];

            indexPathBeforeUpdate2 = 0;
            indexPathAfterUpdate2 = 0;
          }
        }

        v22 = -[UICollectionViewUpdateItem initWithInitialIndexPath:finalIndexPath:updateAction:]([UICollectionViewUpdateItem alloc], "initWithInitialIndexPath:finalIndexPath:updateAction:", indexPathBeforeUpdate2, indexPathAfterUpdate2, [v14 updateAction]);
        if (v14)
        {
          v23 = v14[11];
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        [(UIBackgroundConfiguration *)v22 _setStrokeColor:v24];

        if (([(UICollectionViewUpdateItem *)v22 isNOOP]& 1) == 0)
        {
          [v35 addObject:v22];
        }

        updates = [v13 updates];
        v26 = [updates arrayByAddingObject:v22];

        v27 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v38 orderedUpdateItems:v26];
        finalSnapshot = [v27 finalSnapshot];
        v45 = v39;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        v11 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot orderedUpdateItems:v29];

        ++v12;
        v13 = v11;
      }

      while (v40 != v12);
      v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      v40 = v31;
    }

    while (v31);
  }

  return v35;
}

- (_UIDataSourceUpdateMap)updateMap
{
  updateMap = self->_updateMap;
  if (!updateMap)
  {
    initialSnapshot = [(_UICollectionViewShadowUpdatesController *)self initialSnapshot];
    _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
    v6 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:_shadowUpdates];
    v7 = self->_updateMap;
    self->_updateMap = v6;

    updateMap = self->_updateMap;
  }

  return updateMap;
}

- (void)_regenerateUpdateMap
{
  [(_UICollectionViewShadowUpdatesController *)self setUpdateMap:0];
  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  [updateMap _performAppendingInsertsFixups];
}

- (_UIDataSourceSnapshotter)initialSnapshot
{
  initialSnapshot = self->_initialSnapshot;
  if (!initialSnapshot)
  {
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    v5 = [off_1E70ECC48 snapshotterForDataSourceBackedView:collectionView];
    v6 = self->_initialSnapshot;
    self->_initialSnapshot = v5;

    initialSnapshot = self->_initialSnapshot;
  }

  return initialSnapshot;
}

- (id)_rebasedUpdateMapForUpdates:(id)updates
{
  updatesCopy = updates;
  if (!self->_updateMap || !self->_initialSnapshot)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    collectionView = [(_UICollectionViewShadowUpdatesController *)self collectionView];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewShadowUpdatesController.m" lineNumber:1373 description:{@"UICollectionView internal inconsistency: attempted to rebase shadow updates with a nil update map and/or initial snapshot. Collection view: %@", collectionView}];
  }

  collectionView2 = [(_UICollectionViewShadowUpdatesController *)self collectionView];
  v7 = [off_1E70ECC48 snapshotterForDataSourceBackedView:collectionView2];

  initialSnapshot = [(_UICollectionViewShadowUpdatesController *)self initialSnapshot];
  v9 = [_UIDataSourceUpdateMap validatedMapForInitialSnapshot:initialSnapshot finalSnapshot:v7 batchUpdateItems:updatesCopy];

  return v9;
}

- (id)_coalesceUpdatesIfPossible:(id)possible
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  possibleCopy = possible;
  v4 = [possibleCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    indexPathAfterUpdate = 0;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    v10 = indexPathAfterUpdate;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(possibleCopy);
      }

      v11 = *(*(&v16 + 1) + 8 * v9);
      if (!v11 || v11[10] != 3)
      {
        break;
      }

      indexPathBeforeUpdate = [*(*(&v16 + 1) + 8 * v9) indexPathBeforeUpdate];
      v13 = indexPathBeforeUpdate;
      if (v6)
      {
        v14 = [indexPathBeforeUpdate isEqual:v10];

        if (!v14)
        {
          break;
        }
      }

      else
      {
        v6 = indexPathBeforeUpdate;
      }

      indexPathAfterUpdate = [v11 indexPathAfterUpdate];

      v9 = (v9 + 1);
      v10 = indexPathAfterUpdate;
      if (v5 == v9)
      {
        v5 = [possibleCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        if (v6 && indexPathAfterUpdate)
        {
          v5 = [[UICollectionViewUpdateItem alloc] initWithInitialIndexPath:v6 finalIndexPath:indexPathAfterUpdate updateAction:3];
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    v6 = 0;
    v10 = 0;
  }

  v5 = 0;
  indexPathAfterUpdate = v10;
LABEL_19:

  return v5;
}

- (id)indexPathBeforeShadowUpdates:(id)updates
{
  updatesCopy = updates;
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    v6 = [updateMap initialIndexPathForFinalIndexPath:updatesCopy];
  }

  else
  {
    v6 = updatesCopy;
  }

  return v6;
}

- (id)indexPathsBeforeShadowUpdates:(id)updates
{
  v18 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(updatesCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = updatesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:*(*(&v13 + 1) + 8 * i), v13];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = updatesCopy;
  }

  return v5;
}

- (id)indexPathsAfterShadowUpdates:(id)updates
{
  v18 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(updatesCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = updatesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathAfterShadowUpdates:*(*(&v13 + 1) + 8 * i), v13];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = updatesCopy;
  }

  return v5;
}

- (id)indexPathAfterShadowUpdates:(id)updates allowingAppendingInserts:(BOOL)inserts
{
  insertsCopy = inserts;
  updatesCopy = updates;
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    if (insertsCopy && (-[_UICollectionViewShadowUpdatesController updateMap](self, "updateMap"), v7 = objc_claimAutoreleasedReturnValue(), [v7 initialSnapshot], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "indexPathIsSectionAppendingInsert:", updatesCopy), v8, v7, v9))
    {
      updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      finalSnapshot = [updateMap finalSnapshot];
      v12 = [finalSnapshot indexPathForAppendingInsertInSection:{objc_msgSend(updatesCopy, "section")}];
    }

    else
    {
      updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      v12 = [updateMap finalIndexPathForInitialIndexPath:updatesCopy];
    }
  }

  else
  {
    v12 = updatesCopy;
  }

  return v12;
}

- (int64_t)sectionIndexBeforeShadowUpdates:(int64_t)updates
{
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
    updates = [updateMap initialSectionIndexForFinalSectionIndex:updates];
  }

  return updates;
}

- (int64_t)sectionIndexAfterShadowUpdates:(int64_t)updates allowingAppendingInserts:(BOOL)inserts
{
  insertsCopy = inserts;
  if ([(NSMutableArray *)self->__shadowUpdates count])
  {
    if (insertsCopy && (-[_UICollectionViewShadowUpdatesController updateMap](self, "updateMap"), v7 = objc_claimAutoreleasedReturnValue(), [v7 initialSnapshot], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "numberOfSections"), v8, v7, v9 == updates))
    {
      updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      finalSnapshot = [updateMap finalSnapshot];
      updates = [finalSnapshot numberOfSections];
    }

    else
    {
      updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
      updates = [updateMap finalSectionIndexForInitialSectionIndex:updates];
    }
  }

  return updates;
}

- (id)_indexPathsBeforeShadowUpdates:(id)updates
{
  v18 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = updatesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(_UICollectionViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_findShadowUpdateForIdentifier:(id)identifier inShadowUpdates:(id)updates
{
  identifierCopy = identifier;
  updatesCopy = updates;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__45;
  v17 = __Block_byref_object_dispose__45;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91___UICollectionViewShadowUpdatesController__findShadowUpdateForIdentifier_inShadowUpdates___block_invoke;
  v10[3] = &unk_1E70FD008;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [updatesCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_findInsertShadowUpdateForFinalIndexPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__45;
  v16 = __Block_byref_object_dispose__45;
  v17 = 0;
  shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self shadowUpdates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85___UICollectionViewShadowUpdatesController__findInsertShadowUpdateForFinalIndexPath___block_invoke;
  v9[3] = &unk_1E7100568;
  v9[4] = self;
  v6 = pathCopy;
  v10 = v6;
  v11 = &v12;
  [shadowUpdates enumerateObjectsWithOptions:2 usingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_pruneAndRebaseShadowUpdatesForShadowInsertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  updateMap = [(_UICollectionViewShadowUpdatesController *)self updateMap];
  v9 = [updateMap updateMapByRevertingUpdateWithIdentifier:identifierCopy];

  _shadowUpdates = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  [_shadowUpdates removeAllObjects];

  _shadowUpdates2 = [(_UICollectionViewShadowUpdatesController *)self _shadowUpdates];
  updates = [v9 updates];
  [_shadowUpdates2 addObjectsFromArray:updates];

  [(_UICollectionViewShadowUpdatesController *)self _regenerateUpdateMap];
}

@end