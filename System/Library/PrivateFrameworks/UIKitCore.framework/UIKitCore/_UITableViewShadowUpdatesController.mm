@interface _UITableViewShadowUpdatesController
- (BOOL)_tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (BOOL)_tableView:(id)view canHandleDropSession:(id)session;
- (BOOL)_tableView:(id)view dragSessionSupportsSystemDrag:(id)drag;
- (BOOL)_tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canHandleDropSession:(id)session;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view canPerformPrimaryActionForRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view dragSessionAllowsMoveOperation:(id)operation;
- (BOOL)tableView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)tableView:(id)view selectionFollowsFocusForRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHaveFullLengthTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context;
- (BOOL)tableView:(id)view shouldUpdateFocusFromRowAtIndexPath:(id)path toView:(id)toView heading:(unint64_t)heading;
- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context;
- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section;
- (CGPoint)tableView:(id)view newContentOffsetAfterUpdate:(CGPoint)update context:(id)context;
- (CGRect)tableView:(id)view calloutTargetRectForCell:(id)cell forRowAtIndexPath:(id)path;
- (CGRect)tableView:(id)view frameForSectionIndexGivenProposedFrame:(CGRect)frame;
- (UITableView)tableView;
- (_UIDataSourceSnapshotter)dataSourceAfterShadowUpdates;
- (_UIDataSourceSnapshotter)dataSourceBeforeShadowUpdates;
- (_UIDataSourceUpdateMap)updateMap;
- (_UITableViewShadowUpdatesController)initWithTableView:(id)view;
- (double)heightForFooterInTableView:(id)view;
- (double)heightForHeaderInTableView:(id)view;
- (double)marginForTableView:(id)view;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view maxTitleWidthForFooterInSection:(int64_t)section;
- (double)tableView:(id)view maxTitleWidthForHeaderInSection:(int64_t)section;
- (double)tableViewSpacingForExtraSeparators:(id)separators;
- (id)_rebasedShadowUpdatesForUpdate:(id)update initialSnapshot:(id)snapshot;
- (id)_tableView:(id)view dragSessionPropertiesForSession:(id)session;
- (id)_tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)_tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)_tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)_tableView:(id)view sectionIndexTitlesTrimmedToCount:(unint64_t)count;
- (id)_tableView:(id)view targetIndexPathForProposedIndexPath:(id)path currentIndexPath:(id)indexPath dropSession:(id)session;
- (id)indexPathAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert;
- (id)indexPathAfterShadowUpdates:(id)updates startingAtUpdate:(id)update;
- (id)indexPathBeforeShadowUpdates:(id)updates;
- (id)indexPathBeforeShadowUpdates:(id)updates startingBeforeUpdate:(id)update;
- (id)indexPathForElementWithModelIdentifier:(id)identifier inView:(id)view;
- (id)indexPathForPreferredFocusedItemForTableView:(id)view;
- (id)indexPathForPreferredFocusedViewInTableView:(id)view;
- (id)indexPathsAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert;
- (id)indexPathsBeforeShadowUpdates:(id)updates;
- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)sectionsAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert;
- (id)sectionsBeforeShadowUpdates:(id)updates;
- (id)shadowUpdateWithIdentifier:(id)identifier;
- (id)tableView:(id)view backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view detailTextForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path;
- (id)tableView:(id)view dropPreviewParametersForRowAtIndexPath:(id)path;
- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path;
- (id)tableView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view leadingSwipeActionsForRowAtIndexPath:(id)path;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view titleForSwipeAccessoryButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)viewForFooterInTableView:(id)view;
- (id)viewForHeaderInTableView:(id)view;
- (int64_t)__tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)__tableView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (int64_t)_tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_tableView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sectionAfterShadowUpdates:(int64_t)updates;
- (int64_t)sectionBeforeShadowUpdates:(int64_t)updates;
- (int64_t)tableView:(id)view accessoryTypeForRowWithIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section;
- (void)_tableView:(id)view dragSessionDidEnd:(id)end;
- (void)_tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)_tableView:(id)view dropSessionDidEnd:(id)end;
- (void)_tableView:(id)view dropSessionDidEnter:(id)enter;
- (void)_tableView:(id)view dropSessionDidExit:(id)exit;
- (void)_tableView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)appendShadowUpdate:(id)update;
- (void)rebaseExistingShadowUpdatesForUpdates:(id)updates;
- (void)regenerateUpdateMap;
- (void)removeShadowUpdate:(id)update;
- (void)reset;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didCancelReorderingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view didEndDisplayingHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndReorderingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndSwipingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didFocusRowAtIndexPath:(id)path;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnfocusRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view didUpdateTextFieldForRowAtIndexPath:(id)path withValue:(id)value;
- (void)tableView:(id)view dragSessionDidEnd:(id)end;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view dropSessionDidEnd:(id)end;
- (void)tableView:(id)view dropSessionDidEnter:(id)enter;
- (void)tableView:(id)view dropSessionDidExit:(id)exit;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)tableView:(id)view performPrimaryActionForRowAtIndexPath:(id)path;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view swipeAccessoryButtonPushedForRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginReorderingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginSwipingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willCommitMenuWithAnimator:(id)animator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableViewDidFinishReload:(id)reload;
@end

@implementation _UITableViewShadowUpdatesController

- (_UITableViewShadowUpdatesController)initWithTableView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UITableViewShadowUpdatesController;
  v5 = [(_UITableViewShadowUpdatesController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableView, viewCopy);
    array = [MEMORY[0x1E695DF70] array];
    shadowUpdates = v6->_shadowUpdates;
    v6->_shadowUpdates = array;
  }

  return v6;
}

- (id)shadowUpdateWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  shadowUpdates = [(_UITableViewShadowUpdatesController *)self shadowUpdates];
  v6 = [shadowUpdates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(shadowUpdates);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (v9)
        {
          v10 = v9[11];
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = [v11 isEqual:identifierCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [shadowUpdates countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v13;
    }

    while (v13);
  }

LABEL_15:

  return v6;
}

- (_UIDataSourceSnapshotter)dataSourceBeforeShadowUpdates
{
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    initialSnapshot = [(_UITableViewShadowUpdatesController *)self initialSnapshot];
  }

  else
  {
    initialSnapshot = 0;
  }

  return initialSnapshot;
}

- (_UIDataSourceSnapshotter)dataSourceAfterShadowUpdates
{
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    finalSnapshot = [updateMap finalSnapshot];
  }

  else
  {
    finalSnapshot = 0;
  }

  return finalSnapshot;
}

- (void)reset
{
  [(NSMutableArray *)self->_shadowUpdates removeAllObjects];
  [(_UITableViewShadowUpdatesController *)self setInitialSnapshot:0];

  [(_UITableViewShadowUpdatesController *)self setUpdateMap:0];
}

- (_UIDataSourceUpdateMap)updateMap
{
  updateMap = self->_updateMap;
  if (!updateMap)
  {
    [(_UITableViewShadowUpdatesController *)self regenerateUpdateMap];
    updateMap = self->_updateMap;
  }

  return updateMap;
}

- (void)regenerateUpdateMap
{
  initialSnapshot = [(_UITableViewShadowUpdatesController *)self initialSnapshot];
  shadowUpdates = [(_UITableViewShadowUpdatesController *)self shadowUpdates];
  v5 = initialSnapshot;
  v6 = shadowUpdates;
  if (!initialSnapshot)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewShadowUpdatesController.m" lineNumber:93 description:@"UITableView internal inconsistency: initialSnapshot should not be nil when creating the update map"];

    v5 = 0;
  }

  v7 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v5 orderedUpdateItems:v6];
  updateMap = self->_updateMap;
  self->_updateMap = v7;

  [(_UIDataSourceUpdateMap *)self->_updateMap _performAppendingInsertsFixups];
}

- (void)appendShadowUpdate:(id)update
{
  updateCopy = update;
  v16 = updateCopy;
  if (!updateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewShadowUpdatesController.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"shadowUpdate != nil"}];

    updateCopy = 0;
  }

  _indexPath = [(UICollectionViewUpdateItem *)updateCopy _indexPath];

  if (!_indexPath)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewShadowUpdatesController.m" lineNumber:101 description:@"UITableView internal inconsistency: attempted to append shadow update without an index path"];
  }

  if (![(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    tableView = [(_UITableViewShadowUpdatesController *)self tableView];
    v8 = [off_1E70ECC48 snapshotterForDataSourceBackedView:tableView];
    [(_UITableViewShadowUpdatesController *)self setInitialSnapshot:v8];
  }

  v9 = v16;
  if (!v16 || !*(v16 + 10))
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    finalSnapshot = [updateMap finalSnapshot];
    _indexPath2 = [(UICollectionViewUpdateItem *)v16 _indexPath];
    v13 = [finalSnapshot indexPathIsSectionAppendingInsert:_indexPath2];

    v9 = v16;
    if (v16)
    {
      if (v13)
      {
        v16[56] |= 1u;
      }
    }
  }

  [(NSMutableArray *)self->_shadowUpdates addObject:v9];
  [(_UITableViewShadowUpdatesController *)self regenerateUpdateMap];
}

- (void)removeShadowUpdate:(id)update
{
  updateCopy = update;
  updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
  if (updateCopy)
  {
    v6 = updateCopy[11];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v10 = [updateMap updateMapByRevertingUpdateWithIdentifier:v7];

  [(NSMutableArray *)self->_shadowUpdates removeAllObjects];
  shadowUpdates = self->_shadowUpdates;
  updates = [v10 updates];
  [(NSMutableArray *)shadowUpdates addObjectsFromArray:updates];

  [(_UITableViewShadowUpdatesController *)self regenerateUpdateMap];
}

- (void)rebaseExistingShadowUpdatesForUpdates:(id)updates
{
  v18[1] = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if ([updatesCopy count])
  {
    shadowUpdates = [(_UITableViewShadowUpdatesController *)self shadowUpdates];
    v6 = [shadowUpdates count];

    if (v6)
    {
      tableView = [(_UITableViewShadowUpdatesController *)self tableView];
      v8 = [off_1E70ECC48 snapshotterForDataSourceBackedView:tableView];

      if ([updatesCopy count] == 1)
      {
        firstObject = [updatesCopy firstObject];
        updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
        initialSnapshot = [updateMap initialSnapshot];
        v18[0] = firstObject;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v13 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:v12];
      }

      else
      {
        firstObject = [(_UITableViewShadowUpdatesController *)self initialSnapshot];
        v13 = [_UIDataSourceUpdateMap mapForInitialSnapshot:firstObject finalSnapshot:v8 batchUpdateItems:updatesCopy];
      }

      updateMap2 = [(_UITableViewShadowUpdatesController *)self updateMap];
      v15 = [updateMap2 rebasedMapFromNewBaseMap:v13];

      [(NSMutableArray *)self->_shadowUpdates removeAllObjects];
      shadowUpdates = self->_shadowUpdates;
      updates = [v15 updates];
      [(NSMutableArray *)shadowUpdates addObjectsFromArray:updates];

      [(_UITableViewShadowUpdatesController *)self setInitialSnapshot:v8];
      [(_UITableViewShadowUpdatesController *)self regenerateUpdateMap];
    }
  }
}

- (id)_rebasedShadowUpdatesForUpdate:(id)update initialSnapshot:(id)snapshot
{
  v45[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  snapshotCopy = snapshot;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = updateCopy;
  v45[0] = updateCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v36 = snapshotCopy;
  v9 = [_UIDataSourceUpdateMap mapForInitialSnapshot:snapshotCopy orderedUpdateItems:v8];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = [(_UITableViewShadowUpdatesController *)self shadowUpdates];
  v38 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v38)
  {
    v35 = *v40;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * v10);
        indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
        indexPathBeforeUpdate2 = [v11 finalIndexPathForInitialIndexPath:indexPathBeforeUpdate];

        indexPathAfterUpdate = [v12 indexPathAfterUpdate];
        indexPathAfterUpdate2 = [v11 finalIndexPathForInitialIndexPath:indexPathAfterUpdate];

        if ([v12 updateAction] != 3)
        {
          if ([v12 updateAction])
          {
            v19 = 0;
          }

          else
          {
            v19 = indexPathAfterUpdate2 == 0;
          }

          if (v19)
          {
            indexPathAfterUpdate2 = [v12 indexPathAfterUpdate];
          }

          goto LABEL_21;
        }

        if (!indexPathBeforeUpdate2)
        {
          indexPathBeforeUpdate2 = [v12 indexPathBeforeUpdate];
        }

        if (indexPathBeforeUpdate2)
        {
          v17 = indexPathAfterUpdate2 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_UITableViewShadowUpdatesController.m" lineNumber:166 description:{@"Rebased moves cannot have either initial or final indexPaths == nil. updateItem(%@)", v12}];

LABEL_21:
          if (!(indexPathBeforeUpdate2 | indexPathAfterUpdate2))
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"_UITableViewShadowUpdatesController.m" lineNumber:174 description:{@"Rebased updateItem cannot have both an initial+final indexPath == nil. Faulty updateItem is (%@)", v12}];

            indexPathBeforeUpdate2 = 0;
            indexPathAfterUpdate2 = 0;
          }
        }

        v20 = -[UICollectionViewUpdateItem initWithInitialIndexPath:finalIndexPath:updateAction:]([UICollectionViewUpdateItem alloc], "initWithInitialIndexPath:finalIndexPath:updateAction:", indexPathBeforeUpdate2, indexPathAfterUpdate2, [v12 updateAction]);
        if (v12)
        {
          v21 = v12[11];
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        [(UIBackgroundConfiguration *)v20 _setStrokeColor:v22];

        if (([(UICollectionViewUpdateItem *)v20 isNOOP]& 1) == 0)
        {
          [v33 addObject:v20];
        }

        updates = [v11 updates];
        v24 = [updates arrayByAddingObject:v20];

        v25 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v36 orderedUpdateItems:v24];
        finalSnapshot = [v25 finalSnapshot];
        v43 = v37;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        v9 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot orderedUpdateItems:v27];

        ++v10;
        v11 = v9;
      }

      while (v38 != v10);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      v38 = v29;
    }

    while (v29);
  }

  return v33;
}

- (int64_t)sectionBeforeShadowUpdates:(int64_t)updates
{
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    updates = [updateMap initialSectionIndexForFinalSectionIndex:updates];
  }

  return updates;
}

- (int64_t)sectionAfterShadowUpdates:(int64_t)updates
{
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    updates = [updateMap finalSectionIndexForInitialSectionIndex:updates];
  }

  return updates;
}

- (id)sectionsBeforeShadowUpdates:(id)updates
{
  updatesCopy = updates;
  hasShadowUpdates = [(_UITableViewShadowUpdatesController *)self hasShadowUpdates];
  if (updatesCopy && hasShadowUpdates)
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67___UITableViewShadowUpdatesController_sectionsBeforeShadowUpdates___block_invoke;
    v13[3] = &unk_1E70F43F0;
    v14 = updateMap;
    v8 = indexSet;
    v15 = v8;
    v9 = updateMap;
    [updatesCopy enumerateIndexesUsingBlock:v13];
    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = updatesCopy;
  }

  return v11;
}

- (id)sectionsAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert
{
  updatesCopy = updates;
  hasShadowUpdates = [(_UITableViewShadowUpdatesController *)self hasShadowUpdates];
  if (updatesCopy && hasShadowUpdates)
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87___UITableViewShadowUpdatesController_sectionsAfterShadowUpdates_allowAppendingInsert___block_invoke;
    v15[3] = &unk_1E7123CB0;
    v16 = updateMap;
    insertCopy = insert;
    v10 = indexSet;
    v17 = v10;
    v11 = updateMap;
    [updatesCopy enumerateIndexesUsingBlock:v15];
    v12 = v17;
    v13 = v10;
  }

  else
  {
    v13 = updatesCopy;
  }

  return v13;
}

- (id)indexPathBeforeShadowUpdates:(id)updates
{
  updatesCopy = updates;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    v6 = [updateMap initialIndexPathForFinalIndexPath:updatesCopy];
  }

  else
  {
    v6 = updatesCopy;
  }

  return v6;
}

- (id)indexPathAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert
{
  v13 = *MEMORY[0x1E69E9840];
  if (updates)
  {
    insertCopy = insert;
    updatesCopy = updates;
    v6 = MEMORY[0x1E695DEC8];
    updatesCopy2 = updates;
    v8 = [v6 arrayWithObjects:&updatesCopy count:1];

    v9 = [(_UITableViewShadowUpdatesController *)self indexPathsAfterShadowUpdates:v8 allowAppendingInsert:insertCopy, updatesCopy, v13];
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)indexPathsBeforeShadowUpdates:(id)updates
{
  v20 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  hasShadowUpdates = [(_UITableViewShadowUpdatesController *)self hasShadowUpdates];
  if (updatesCopy && hasShadowUpdates)
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(updatesCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = updatesCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [updateMap initialIndexPathForFinalIndexPath:{*(*(&v15 + 1) + 8 * i), v15}];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = updatesCopy;
  }

  return v7;
}

- (id)indexPathsAfterShadowUpdates:(id)updates allowAppendingInsert:(BOOL)insert
{
  insertCopy = insert;
  v30 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  hasShadowUpdates = [(_UITableViewShadowUpdatesController *)self hasShadowUpdates];
  if (updatesCopy && hasShadowUpdates)
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(updatesCopy, "count")}];
    v23 = v22 = updatesCopy;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = updatesCopy;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = *v26;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [updateMap finalIndexPathForInitialIndexPath:v13];
        v15 = v14;
        if (insertCopy && !v14)
        {
          updateMap2 = [(_UITableViewShadowUpdatesController *)self updateMap];
          initialSnapshot = [updateMap2 initialSnapshot];
          v18 = [initialSnapshot indexPathIsSectionAppendingInsert:v13];

          if (!v18)
          {
            continue;
          }

          updateMap3 = [(_UITableViewShadowUpdatesController *)self updateMap];
          finalSnapshot = [updateMap3 finalSnapshot];
          v15 = [finalSnapshot indexPathForAppendingInsertInSection:{objc_msgSend(v13, "section")}];
        }

        if (v15)
        {
          [v23 addObject:v15];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v10)
      {
LABEL_16:

        updatesCopy = v22;
        goto LABEL_18;
      }
    }
  }

  v23 = updatesCopy;
LABEL_18:

  return v23;
}

- (id)indexPathBeforeShadowUpdates:(id)updates startingBeforeUpdate:(id)update
{
  updatesCopy = updates;
  updateCopy = update;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    if (updateCopy)
    {
      v9 = updateCopy[11];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [updateMap initialIndexPathForIndexPath:updatesCopy beforeUpdateWithIdentifier:v10];
  }

  else
  {
    v11 = updatesCopy;
  }

  return v11;
}

- (id)indexPathAfterShadowUpdates:(id)updates startingAtUpdate:(id)update
{
  updatesCopy = updates;
  updateCopy = update;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    updateMap = [(_UITableViewShadowUpdatesController *)self updateMap];
    if (updateCopy)
    {
      v9 = updateCopy[11];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [updateMap finalIndexPathForIndexPath:updatesCopy startingAtUpdateWithIdentifier:v10];
  }

  else
  {
    v11 = updatesCopy;
  }

  return v11;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    dataSourceAfterShadowUpdates = [(_UITableViewShadowUpdatesController *)self dataSourceAfterShadowUpdates];
    numberOfSections = [dataSourceAfterShadowUpdates numberOfSections];
  }

  else
  {
    dataSourceAfterShadowUpdates = [viewCopy _dataSourceActual];
    numberOfSections = [dataSourceAfterShadowUpdates numberOfSectionsInTableView:viewCopy];
  }

  v7 = numberOfSections;

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    dataSourceAfterShadowUpdates = [(_UITableViewShadowUpdatesController *)self dataSourceAfterShadowUpdates];
    v8 = [dataSourceAfterShadowUpdates numberOfItemsInSection:section];
  }

  else
  {
    dataSourceAfterShadowUpdates = [viewCopy _dataSourceActual];
    v8 = [dataSourceAfterShadowUpdates tableView:viewCopy numberOfRowsInSection:section];
  }

  v9 = v8;

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v8)
  {
    _dataSourceActual = [viewCopy _dataSourceActual];
    v10 = [_dataSourceActual tableView:viewCopy cellForRowAtIndexPath:v8];
  }

  else
  {
    v10 = [viewCopy _cellForShadowRowAtIndexPath:pathCopy];
  }

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _dataSourceActual = [viewCopy _dataSourceActual];
    v8 = [_dataSourceActual tableView:viewCopy titleForHeaderInSection:v9];
  }

  return v8;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _dataSourceActual = [viewCopy _dataSourceActual];
    v8 = [_dataSourceActual tableView:viewCopy titleForFooterInSection:v9];
  }

  return v8;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _dataSourceActual = [viewCopy _dataSourceActual];
    v9 = [_dataSourceActual tableView:viewCopy canEditRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _dataSourceActual = [viewCopy _dataSourceActual];
    v9 = [_dataSourceActual tableView:viewCopy canMoveRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  viewCopy = view;
  _dataSourceActual = [viewCopy _dataSourceActual];
  v5 = [_dataSourceActual sectionIndexTitlesForTableView:viewCopy];

  return v5;
}

- (id)_tableView:(id)view sectionIndexTitlesTrimmedToCount:(unint64_t)count
{
  viewCopy = view;
  _dataSourceActual = [viewCopy _dataSourceActual];
  v7 = [_dataSourceActual _tableView:viewCopy sectionIndexTitlesTrimmedToCount:count];

  return v7;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  viewCopy = view;
  _dataSourceActual = [viewCopy _dataSourceActual];
  v11 = [_dataSourceActual tableView:viewCopy sectionForSectionIndexTitle:titleCopy atIndex:index];

  return [(_UITableViewShadowUpdatesController *)self sectionAfterShadowUpdates:v11];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  v8 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v8)
  {
    _dataSourceActual = [viewCopy _dataSourceActual];
    [_dataSourceActual tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:v8];
  }
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  indexPathCopy = indexPath;
  v9 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  if (v9 && v10)
  {
    _dataSourceActual = [viewCopy _dataSourceActual];
    [_dataSourceActual tableView:viewCopy moveRowAtIndexPath:v9 toIndexPath:v10];
  }
}

- (id)tableView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  viewCopy = view;
  _dataSourceActual = [viewCopy _dataSourceActual];
  v11 = [_dataSourceActual tableView:viewCopy indexPathForSectionIndexTitle:titleCopy atIndex:index];

  v12 = [(_UITableViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v11];

  return v12;
}

- (id)tableView:(id)view detailTextForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _dataSourceActual = [viewCopy _dataSourceActual];
    v8 = [_dataSourceActual tableView:viewCopy detailTextForHeaderInSection:v9];
  }

  return v8;
}

- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    tableView = [(_UITableViewShadowUpdatesController *)self tableView];
    _dataSourceActual = [tableView _dataSourceActual];
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
  tableView = [(_UITableViewShadowUpdatesController *)self tableView];
  _dataSourceActual = [tableView _dataSourceActual];
  v10 = [_dataSourceActual indexPathForElementWithModelIdentifier:identifierCopy inView:viewCopy];

  v11 = [(_UITableViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v10];

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  if (v8)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy heightForRowAtIndexPath:v8];
    v11 = v10;
  }

  else
  {
    [viewCopy _heightForShadowRowAtIndexPath:pathCopy];
    v11 = v12;
  }

  return v11;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy estimatedHeightForRowAtIndexPath:v7];
    v10 = v9;
  }

  else
  {
    v10 = -1.0;
  }

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  v9 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:v9];
  }
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  v9 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willDisplayHeaderView:headerViewCopy forSection:v10];
  }
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  v9 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willDisplayFooterView:footerViewCopy forSection:v10];
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  v9 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndDisplayingCell:cellCopy forRowAtIndexPath:v9];
  }
}

- (void)tableView:(id)view didEndDisplayingHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  v9 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndDisplayingHeaderView:headerViewCopy forSection:v10];
  }
}

- (void)tableView:(id)view didEndDisplayingFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  v9 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndDisplayingFooterView:footerViewCopy forSection:v10];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy heightForHeaderInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy heightForFooterInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy estimatedHeightForHeaderInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy estimatedHeightForFooterInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy viewForHeaderInSection:v9];
  }

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy viewForFooterInSection:v9];
  }

  return v8;
}

- (int64_t)tableView:(id)view accessoryTypeForRowWithIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy accessoryTypeForRowWithIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy accessoryButtonTappedForRowWithIndexPath:v6];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy shouldHighlightRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didHighlightRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didUnhighlightRowAtIndexPath:v6];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy willSelectRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy willDeselectRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didSelectRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didDeselectRowAtIndexPath:v6];
  }
}

- (BOOL)tableView:(id)view canPerformPrimaryActionForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy canPerformPrimaryActionForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view performPrimaryActionForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy performPrimaryActionForRowAtIndexPath:v6];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy editingStyleForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy titleForDeleteConfirmationButtonForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy editActionsForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy shouldIndentWhileEditingRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willBeginEditingRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndEditingRowAtIndexPath:v6];
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  v11 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:pathCopy];
  v12 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];

  if (v11 && v12)
  {
    _delegateActual = [viewCopy _delegateActual];
    v14 = [_delegateActual tableView:viewCopy targetIndexPathForMoveFromRowAtIndexPath:v11 toProposedIndexPath:v12];

    v15 = [(_UITableViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = pathCopy;
    }

    v18 = v17;
  }

  else
  {
    v18 = pathCopy;
  }

  return v18;
}

- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy indentationLevelForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy shouldShowMenuForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  senderCopy = sender;
  v12 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v12)
  {
    _delegateActual = [viewCopy _delegateActual];
    v14 = [_delegateActual tableView:viewCopy canPerformAction:action forRowAtIndexPath:v12 withSender:senderCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  senderCopy = sender;
  v11 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v11)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy performAction:action forRowAtIndexPath:v11 withSender:senderCopy];
  }
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy canFocusRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  viewCopy = view;
  previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];
  v9 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:previouslyFocusedIndexPath];

  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  v11 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:nextFocusedIndexPath];

  previouslyFocusedIndexPath2 = [contextCopy previouslyFocusedIndexPath];
  v13 = previouslyFocusedIndexPath2;
  if (!previouslyFocusedIndexPath2 || v9)
  {
    nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];

    if (!nextFocusedIndexPath2 || v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (os_variant_has_internal_diagnostics())
  {
    v19 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Support for shadow updates on tvOS with the focus system is not implemented yet.", buf, 2u);
    }
  }

  else
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &tableView_shouldUpdateFocusInContext____s_category) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Support for shadow updates on tvOS with the focus system is not implemented yet.", v20, 2u);
    }
  }

LABEL_9:
  _delegateActual = [viewCopy _delegateActual];
  v17 = [_delegateActual tableView:viewCopy shouldUpdateFocusInContext:contextCopy];

  return v17;
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  viewCopy = view;
  previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];
  v12 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:previouslyFocusedIndexPath];

  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  v14 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:nextFocusedIndexPath];

  previouslyFocusedIndexPath2 = [contextCopy previouslyFocusedIndexPath];
  v16 = previouslyFocusedIndexPath2;
  if (!previouslyFocusedIndexPath2 || v12)
  {
    nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];

    if (!nextFocusedIndexPath2 || v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (os_variant_has_internal_diagnostics())
  {
    v20 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Support for shadow updates on tvOS with the focus system is not implemented yet.", buf, 2u);
    }
  }

  else
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &tableView_didUpdateFocusInContext_withAnimationCoordinator____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Support for shadow updates on tvOS with the focus system is not implemented yet.", v21, 2u);
    }
  }

LABEL_9:
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (BOOL)tableView:(id)view selectionFollowsFocusForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    selectionFollowsFocus = [_delegateActual tableView:viewCopy selectionFollowsFocusForRowAtIndexPath:v7];
  }

  else
  {
    selectionFollowsFocus = [viewCopy selectionFollowsFocus];
  }

  return selectionFollowsFocus;
}

- (id)indexPathForPreferredFocusedViewInTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v6 = [_delegateActual indexPathForPreferredFocusedViewInTableView:viewCopy];

  v7 = [(_UITableViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v6];

  return v7;
}

- (BOOL)tableView:(id)view wantsHeaderForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy wantsHeaderForSection:v9];
  }

  return v8;
}

- (double)tableViewSpacingForExtraSeparators:(id)separators
{
  separatorsCopy = separators;
  _delegateActual = [separatorsCopy _delegateActual];
  [_delegateActual tableViewSpacingForExtraSeparators:separatorsCopy];
  v6 = v5;

  return v6;
}

- (CGPoint)tableView:(id)view newContentOffsetAfterUpdate:(CGPoint)update context:(id)context
{
  y = update.y;
  x = update.x;
  contextCopy = context;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy newContentOffsetAfterUpdate:contextCopy context:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)tableView:(id)view didUpdateTextFieldForRowAtIndexPath:(id)path withValue:(id)value
{
  viewCopy = view;
  valueCopy = value;
  v9 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v9)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didUpdateTextFieldForRowAtIndexPath:v9 withValue:valueCopy];
  }
}

- (double)marginForTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual marginForTableView:viewCopy];
  v6 = v5;

  return v6;
}

- (int64_t)tableView:(id)view titleAlignmentForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 4;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy titleAlignmentForHeaderInSection:v9];
  }

  return v8;
}

- (int64_t)tableView:(id)view titleAlignmentForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 4;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy titleAlignmentForFooterInSection:v9];
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _delegateActual = [viewCopy _delegateActual];
    v12 = [_delegateActual tableView:viewCopy shouldSpringLoadRowAtIndexPath:v10 withContext:contextCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _delegateActual = [viewCopy _delegateActual];
    v12 = [_delegateActual _tableView:viewCopy shouldSpringLoadRowAtIndexPath:v10 withContext:contextCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)tableView:(id)view maxTitleWidthForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy maxTitleWidthForHeaderInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (double)tableView:(id)view maxTitleWidthForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  v8 = 0.0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy maxTitleWidthForFooterInSection:v9];
    v8 = v11;
  }

  return v8;
}

- (CGRect)tableView:(id)view frameForSectionIndexGivenProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy frameForSectionIndexGivenProposedFrame:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)tableViewDidFinishReload:(id)reload
{
  reloadCopy = reload;
  _delegateActual = [reloadCopy _delegateActual];
  [_delegateActual tableViewDidFinishReload:reloadCopy];
}

- (double)heightForHeaderInTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual heightForHeaderInTableView:viewCopy];
  v6 = v5;

  return v6;
}

- (double)heightForFooterInTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual heightForFooterInTableView:viewCopy];
  v6 = v5;

  return v6;
}

- (id)viewForHeaderInTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v5 = [_delegateActual viewForHeaderInTableView:viewCopy];

  return v5;
}

- (id)viewForFooterInTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v5 = [_delegateActual viewForFooterInTableView:viewCopy];

  return v5;
}

- (CGRect)tableView:(id)view calloutTargetRectForCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy calloutTargetRectForCell:cellCopy forRowAtIndexPath:v10];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy leadingSwipeActionsConfigurationForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy trailingSwipeActionsConfigurationForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view leadingSwipeActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy leadingSwipeActionsForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view trailingSwipeActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy trailingSwipeActionsForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view willBeginReorderingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willBeginReorderingRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didEndReorderingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndReorderingRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didCancelReorderingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didCancelReorderingRowAtIndexPath:v6];
  }
}

- (id)tableView:(id)view backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy backgroundColorForDeleteConfirmationButtonForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy backgroundColorForSwipeAccessoryButtonForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view titleForSwipeAccessoryButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual tableView:viewCopy titleForSwipeAccessoryButtonForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view swipeAccessoryButtonPushedForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy swipeAccessoryButtonPushedForRowAtIndexPath:v6];
  }
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy shouldDrawTopSeparatorForSection:v9];
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy shouldDrawBottomSeparatorForSection:v9];
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldHaveFullLengthTopSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy shouldHaveFullLengthTopSeparatorForSection:v9];
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldHaveFullLengthBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self sectionBeforeShadowUpdates:section];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _delegateActual = [viewCopy _delegateActual];
    v8 = [_delegateActual tableView:viewCopy shouldHaveFullLengthBottomSeparatorForSection:v9];
  }

  return v8;
}

- (void)tableView:(id)view willBeginSwipingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy willBeginSwipingRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didEndSwipingRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didEndSwipingRowAtIndexPath:v6];
  }
}

- (BOOL)_tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _delegateActual = [viewCopy _delegateActual];
    v9 = [_delegateActual _tableView:viewCopy canFocusRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didFocusRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didFocusRowAtIndexPath:v6];
  }
}

- (void)tableView:(id)view didUnfocusRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v6)
  {
    _delegateActual = [viewCopy _delegateActual];
    [_delegateActual tableView:viewCopy didUnfocusRowAtIndexPath:v6];
  }
}

- (BOOL)tableView:(id)view shouldUpdateFocusFromRowAtIndexPath:(id)path toView:(id)toView heading:(unint64_t)heading
{
  viewCopy = view;
  toViewCopy = toView;
  v12 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v12)
  {
    _delegateActual = [viewCopy _delegateActual];
    v14 = [_delegateActual tableView:viewCopy shouldUpdateFocusFromRowAtIndexPath:v12 toView:toViewCopy heading:heading];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)indexPathForPreferredFocusedItemForTableView:(id)view
{
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v6 = [_delegateActual indexPathForPreferredFocusedItemForTableView:viewCopy];

  v7 = [(_UITableViewShadowUpdatesController *)self indexPathAfterShadowUpdates:v6];

  return v7;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _delegateActual = [viewCopy _delegateActual];
    v12 = [_delegateActual tableView:viewCopy contextMenuConfigurationForRowAtIndexPath:v10 point:{x, y}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v8 = [_delegateActual tableView:viewCopy previewForHighlightingContextMenuWithConfiguration:configurationCopy];

  return v8;
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  v8 = [_delegateActual tableView:viewCopy previewForDismissingContextMenuWithConfiguration:configurationCopy];

  return v8;
}

- (void)tableView:(id)view willCommitMenuWithAnimator:(id)animator
{
  animatorCopy = animator;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy willCommitMenuWithAnimator:animatorCopy];
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy willDisplayContextMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  viewCopy = view;
  _delegateActual = [viewCopy _delegateActual];
  [_delegateActual tableView:viewCopy willEndContextMenuInteractionWithConfiguration:configurationCopy animator:animatorCopy];
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathsBeforeShadowUpdates:paths];
  if ([v6 count])
  {
    _prefetchDataSourceActual = [viewCopy _prefetchDataSourceActual];
    [_prefetchDataSourceActual tableView:viewCopy prefetchRowsAtIndexPaths:v6];
  }
}

- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths
{
  viewCopy = view;
  v6 = [(_UITableViewShadowUpdatesController *)self indexPathsBeforeShadowUpdates:paths];
  if ([v6 count])
  {
    _prefetchDataSourceActual = [viewCopy _prefetchDataSourceActual];
    [_prefetchDataSourceActual tableView:viewCopy cancelPrefetchingForRowsAtIndexPaths:v6];
  }
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _dragDelegateActual = [viewCopy _dragDelegateActual];
    v12 = [_dragDelegateActual tableView:viewCopy itemsForBeginningDragSession:sessionCopy atIndexPath:v10];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  sessionCopy = session;
  v13 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v13)
  {
    _dragDelegateActual = [viewCopy _dragDelegateActual];
    v15 = [_dragDelegateActual tableView:viewCopy itemsForAddingToDragSession:sessionCopy atIndexPath:v13 point:{x, y}];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _dragDelegateActual = [viewCopy _dragDelegateActual];
    v9 = [_dragDelegateActual tableView:viewCopy dragPreviewParametersForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  [_dragDelegateActual tableView:viewCopy dragSessionWillBegin:beginCopy];
}

- (void)tableView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  [_dragDelegateActual tableView:viewCopy dragSessionDidEnd:endCopy];
}

- (BOOL)tableView:(id)view dragSessionAllowsMoveOperation:(id)operation
{
  operationCopy = operation;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  v8 = [_dragDelegateActual tableView:viewCopy dragSessionAllowsMoveOperation:operationCopy];

  return v8;
}

- (BOOL)tableView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application
{
  applicationCopy = application;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  v8 = [_dragDelegateActual tableView:viewCopy dragSessionIsRestrictedToDraggingApplication:applicationCopy];

  return v8;
}

- (int64_t)_tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _dragDelegateActual = [viewCopy _dragDelegateActual];
    v12 = [_dragDelegateActual _tableView:viewCopy dataOwnerForDragSession:sessionCopy atIndexPath:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_tableView:(id)view dragSessionSupportsSystemDrag:(id)drag
{
  dragCopy = drag;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  v8 = [_dragDelegateActual _tableView:viewCopy dragSessionSupportsSystemDrag:dragCopy];

  return v8;
}

- (id)_tableView:(id)view dragSessionPropertiesForSession:(id)session
{
  sessionCopy = session;
  viewCopy = view;
  _dragDelegateActual = [viewCopy _dragDelegateActual];
  v8 = [_dragDelegateActual _tableView:viewCopy dragSessionPropertiesForSession:sessionCopy];

  return v8;
}

- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101___UITableViewShadowUpdatesController_UITableViewDropDelegate__tableView_performDropWithCoordinator___block_invoke;
    v10[3] = &unk_1E70FFBD8;
    v10[4] = self;
    [coordinatorCopy _translateDestinationIndexPath:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101___UITableViewShadowUpdatesController_UITableViewDropDelegate__tableView_performDropWithCoordinator___block_invoke_2;
    v9[3] = &unk_1E70FFBD8;
    v9[4] = self;
    [coordinatorCopy _translateSourceIndexPathsOfDropItems:v9];
  }

  _dropDelegateActual = [viewCopy _dropDelegateActual];
  [_dropDelegateActual tableView:viewCopy performDropWithCoordinator:coordinatorCopy];
}

- (BOOL)tableView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  viewCopy = view;
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  v8 = [_dropDelegateActual tableView:viewCopy canHandleDropSession:sessionCopy];

  return v8;
}

- (void)tableView:(id)view dropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  viewCopy = view;
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  [_dropDelegateActual tableView:viewCopy dropSessionDidEnter:enterCopy];
}

- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  viewCopy = view;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  v12 = [_dropDelegateActual tableView:viewCopy dropSessionDidUpdate:updateCopy withDestinationIndexPath:v10];

  return v12;
}

- (void)tableView:(id)view dropSessionDidExit:(id)exit
{
  exitCopy = exit;
  viewCopy = view;
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  [_dropDelegateActual tableView:viewCopy dropSessionDidExit:exitCopy];
}

- (void)tableView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  viewCopy = view;
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  [_dropDelegateActual tableView:viewCopy dropSessionDidEnd:endCopy];
}

- (id)tableView:(id)view dropPreviewParametersForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v7)
  {
    _dropDelegateActual = [viewCopy _dropDelegateActual];
    v9 = [_dropDelegateActual tableView:viewCopy dropPreviewParametersForRowAtIndexPath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_tableView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  sessionCopy = session;
  viewCopy = view;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  _dropDelegateActual = [viewCopy _dropDelegateActual];
  v12 = [_dropDelegateActual _tableView:viewCopy dataOwnerForDropSession:sessionCopy withDestinationIndexPath:v10];

  return v12;
}

- (id)_tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _dragSourceDelegateActual = [viewCopy _dragSourceDelegateActual];
    v12 = [_dragSourceDelegateActual _tableView:viewCopy itemsForBeginningDragSession:sessionCopy atIndexPath:v10];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  sessionCopy = session;
  v13 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v13)
  {
    _dragSourceDelegateActual = [viewCopy _dragSourceDelegateActual];
    v15 = [_dragSourceDelegateActual _tableView:viewCopy itemsForAddingToDragSession:sessionCopy atIndexPath:v13 point:{x, y}];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)_tableView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  viewCopy = view;
  _dragSourceDelegateActual = [viewCopy _dragSourceDelegateActual];
  [_dragSourceDelegateActual _tableView:viewCopy dragSessionWillBegin:beginCopy];
}

- (void)_tableView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  viewCopy = view;
  _dragSourceDelegateActual = [viewCopy _dragSourceDelegateActual];
  [_dragSourceDelegateActual _tableView:viewCopy dragSessionDidEnd:endCopy];
}

- (int64_t)__tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  viewCopy = view;
  sessionCopy = session;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v10)
  {
    _dragSourceDelegateActual = [viewCopy _dragSourceDelegateActual];
    v12 = [_dragSourceDelegateActual __tableView:viewCopy dataOwnerForDragSession:sessionCopy atIndexPath:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_tableView:(id)view performDropWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  if ([(_UITableViewShadowUpdatesController *)self hasShadowUpdates])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __113___UITableViewShadowUpdatesController_UITableViewDragDestinationDelegate___tableView_performDropWithCoordinator___block_invoke;
    v10[3] = &unk_1E70FFBD8;
    v10[4] = self;
    [coordinatorCopy _translateDestinationIndexPath:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __113___UITableViewShadowUpdatesController_UITableViewDragDestinationDelegate___tableView_performDropWithCoordinator___block_invoke_2;
    v9[3] = &unk_1E70FFBD8;
    v9[4] = self;
    [coordinatorCopy _translateSourceIndexPathsOfDropItems:v9];
  }

  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  [_dragDestinationDelegateActual _tableView:viewCopy performDropWithCoordinator:coordinatorCopy];
}

- (BOOL)_tableView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  viewCopy = view;
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  v8 = [_dragDestinationDelegateActual _tableView:viewCopy canHandleDropSession:sessionCopy];

  return v8;
}

- (void)_tableView:(id)view dropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  viewCopy = view;
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  [_dragDestinationDelegateActual _tableView:viewCopy dropSessionDidEnter:enterCopy];
}

- (id)_tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  viewCopy = view;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  v12 = [_dragDestinationDelegateActual _tableView:viewCopy dropSessionDidUpdate:updateCopy withDestinationIndexPath:v10];

  return v12;
}

- (void)_tableView:(id)view dropSessionDidExit:(id)exit
{
  exitCopy = exit;
  viewCopy = view;
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  [_dragDestinationDelegateActual _tableView:viewCopy dropSessionDidExit:exitCopy];
}

- (void)_tableView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  viewCopy = view;
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  [_dragDestinationDelegateActual _tableView:viewCopy dropSessionDidEnd:endCopy];
}

- (id)_tableView:(id)view targetIndexPathForProposedIndexPath:(id)path currentIndexPath:(id)indexPath dropSession:(id)session
{
  viewCopy = view;
  indexPathCopy = indexPath;
  sessionCopy = session;
  v13 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  if (v13)
  {
    v14 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:indexPathCopy];
    _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
    v16 = [_dragDestinationDelegateActual _tableView:viewCopy targetIndexPathForProposedIndexPath:v13 currentIndexPath:v14 dropSession:sessionCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)__tableView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  sessionCopy = session;
  viewCopy = view;
  v10 = [(_UITableViewShadowUpdatesController *)self indexPathBeforeShadowUpdates:path];
  _dragDestinationDelegateActual = [viewCopy _dragDestinationDelegateActual];
  v12 = [_dragDestinationDelegateActual __tableView:viewCopy dataOwnerForDropSession:sessionCopy withDestinationIndexPath:v10];

  return v12;
}

@end