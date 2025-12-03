@interface _UIDiffableDataSourceViewUpdater
- (BOOL)_doesExpectedUpdate:(id)update matchActualUpdates:(id)updates allowingEmptyUpdates:(BOOL)emptyUpdates;
- (UICollectionView)collectionView;
- (UITableView)tableView;
- (_UICollectionViewUpdateItemApplying)updatesSink;
- (_UIDiffableDataSourceViewUpdater)initWithUpdatesSink:(id)sink collectionView:(id)view tableView:(id)tableView;
- (id)_sectionIndexesToReloadForTableViewCompatibility:(id)compatibility;
- (id)targetView;
- (int64_t)_performUpdateWithCollectionViewUpdateItems:(id)items dataSourceSnapshot:(id)snapshot updateHandler:(id)handler completion:(id)completion viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated;
- (void)_deleteAllItems;
- (void)_performMoveUpdate:(id)update onCollectionView:(id)view;
- (void)_performMoveUpdate:(id)update onTableView:(id)view;
- (void)_performViewUpdates:(id)updates;
- (void)_reloadData;
@end

@implementation _UIDiffableDataSourceViewUpdater

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (void)_reloadData
{
  [(_UIDiffableDataSourceViewUpdater *)self setHasPerformedInitialUpdate:1];
  collectionView = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v4 = collectionView;
  if (collectionView)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47___UIDiffableDataSourceViewUpdater__reloadData__block_invoke;
    v17[3] = &unk_1E70F3590;
    v5 = collectionView;
    v18 = v5;
    [v5 _performDiffableUpdate:v17];
    window = [v5 window];

    if (window)
    {
      [v5 layoutIfNeeded];
    }

    v7 = v18;
  }

  else
  {
    tableView = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (tableView)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __47___UIDiffableDataSourceViewUpdater__reloadData__block_invoke_2;
      v15 = &unk_1E70F3590;
      v7 = tableView;
      v16 = v7;
      [v7 _performDiffableUpdate:&v12];
      window2 = [v7 window];

      if (window2)
      {
        [v7 layoutIfNeeded];
      }
    }

    else
    {
      updatesSink = [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v11 = updatesSink;
      if (updatesSink)
      {
        [updatesSink _reloadData];
      }

      v7 = 0;
    }
  }
}

- (_UIDiffableDataSourceViewUpdater)initWithUpdatesSink:(id)sink collectionView:(id)view tableView:(id)tableView
{
  sinkCopy = sink;
  viewCopy = view;
  tableViewCopy = tableView;
  v18.receiver = self;
  v18.super_class = _UIDiffableDataSourceViewUpdater;
  v11 = [(_UIDiffableDataSourceViewUpdater *)&v18 init];
  v12 = v11;
  if (v11)
  {
    if (sinkCopy)
    {
      v13 = 0;
      v14 = 32;
      v15 = 24;
      v16 = sinkCopy;
LABEL_8:
      *(&v11->super.isa + v15) = v13;
      objc_storeWeak((&v11->super.isa + v14), v16);
      goto LABEL_9;
    }

    if (viewCopy)
    {
      v14 = 40;
      v13 = 1;
      v15 = 24;
      v16 = viewCopy;
      goto LABEL_8;
    }

    if (tableViewCopy)
    {
      v11->_sinkKind = 2;
      v14 = 56;
      v13 = 100;
      v15 = 16;
      v16 = tableViewCopy;
      goto LABEL_8;
    }
  }

LABEL_9:

  return v12;
}

- (int64_t)_performUpdateWithCollectionViewUpdateItems:(id)items dataSourceSnapshot:(id)snapshot updateHandler:(id)handler completion:(id)completion viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider animated:(BOOL)animated
{
  itemsCopy = items;
  snapshotCopy = snapshot;
  handlerCopy = handler;
  completionCopy = completion;
  animatorCopy = animator;
  v19 = handlerCopy;
  v20 = animatorCopy;
  providerCopy = provider;
  if (v19)
  {
    if (itemsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];

    if (itemsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"updateItems"}];

LABEL_3:
  v21 = snapshotCopy;
  if (!snapshotCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];
  }

  v55 = v20;
  if (!v20 && providerCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:108 description:@"An non-nil animator is required to use a custom animations provider"];
  }

  hasPerformedInitialUpdate = [(_UIDiffableDataSourceViewUpdater *)self hasPerformedInitialUpdate];
  [(_UIDiffableDataSourceViewUpdater *)self setHasPerformedInitialUpdate:1];
  [(_UIDiffableDataSourceViewUpdater *)self setDataSourceSnapshot:snapshotCopy];
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  collectionView = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v24 = !hasPerformedInitialUpdate;
  if (collectionView)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke;
    aBlock[3] = &unk_1E70FD548;
    v51 = v19;
    v25 = v19;
    v92 = v25;
    aBlock[4] = self;
    v53 = itemsCopy;
    v26 = itemsCopy;
    v91 = v26;
    v27 = _Block_copy(aBlock);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_2;
    v88[3] = &unk_1E70F3608;
    v28 = completionCopy;
    v89 = v28;
    v29 = _Block_copy(v88);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_3;
    v75[3] = &unk_1E70FE298;
    v76 = collectionView;
    v80 = v25;
    selfCopy = self;
    v78 = v26;
    v85 = &v93;
    v81 = v28;
    animatedCopy = animated;
    v79 = v55;
    v30 = v27;
    v82 = v30;
    v83 = providerCopy;
    v31 = v29;
    v84 = v31;
    v87 = v24;
    [v76 _performDiffableUpdate:v75];
    v32 = v94[3];

    tableView = v92;
    v19 = v51;
    itemsCopy = v53;
    v34 = v55;
    v21 = snapshotCopy;
  }

  else
  {
    tableView = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (tableView)
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_5;
      v72[3] = &unk_1E70FD548;
      v52 = v19;
      v35 = v19;
      v74 = v35;
      v72[4] = self;
      v54 = itemsCopy;
      v36 = itemsCopy;
      v73 = v36;
      v37 = _Block_copy(v72);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_6;
      v70[3] = &unk_1E70F3608;
      v50 = v24;
      v38 = completionCopy;
      v71 = v38;
      v39 = _Block_copy(v70);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_7;
      v59[3] = &unk_1E70FE2E8;
      v60 = tableView;
      v63 = v35;
      selfCopy2 = self;
      v62 = v36;
      v67 = &v93;
      v64 = v38;
      animatedCopy2 = animated;
      v40 = v37;
      v65 = v40;
      v41 = v39;
      v66 = v41;
      v69 = v50;
      [v60 _performDiffableUpdate:v59];
      v32 = v94[3];

      v42 = v74;
      v19 = v52;
      itemsCopy = v54;
      v34 = v55;
      v21 = snapshotCopy;
    }

    else
    {
      [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v42 = v34 = v55;
      if (v42)
      {
        dataSourceSnapshot = [(_UIDiffableDataSourceViewUpdater *)self dataSourceSnapshot];
        LOBYTE(v49) = animated;
        [v42 _performUpdateWithCollectionViewUpdateItems:itemsCopy dataSourceSnapshot:dataSourceSnapshot updateHandler:v19 completion:completionCopy viewPropertyAnimator:v55 customAnimationsProvider:providerCopy animated:v49];
      }

      v32 = v94[3];
    }
  }

  _Block_object_dispose(&v93, 8);
  return v32;
}

- (BOOL)_doesExpectedUpdate:(id)update matchActualUpdates:(id)updates allowingEmptyUpdates:(BOOL)emptyUpdates
{
  updateCopy = update;
  updatesCopy = updates;
  if ([updatesCopy count])
  {
    if ([updatesCopy count] == 1)
    {
      firstObject = [updatesCopy firstObject];
      v10 = [(UICollectionViewUpdateItem *)firstObject isEqualToUpdate:updateCopy];

      if (v10)
      {
LABEL_4:
        emptyUpdates = 1;
        goto LABEL_14;
      }
    }

    else if ([updatesCopy count] == 2 && objc_msgSend(updateCopy, "updateAction") == 3)
    {
      v11 = [updatesCopy indexOfObjectPassingTest:&__block_literal_global_111];
      v12 = [updatesCopy indexOfObjectPassingTest:&__block_literal_global_21];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [updatesCopy objectAtIndexedSubscript:v11];
          v15 = [updatesCopy objectAtIndexedSubscript:v13];
          if ([(UICollectionViewUpdateItem *)v14 _initialIndexPathEqualToUpdateItem:updateCopy]&& ([(UICollectionViewUpdateItem *)v15 _finalIndexPathEqualToUpdateItem:updateCopy]& 1) != 0)
          {

            goto LABEL_4;
          }
        }
      }
    }

    emptyUpdates = 0;
  }

LABEL_14:

  return emptyUpdates;
}

- (void)_deleteAllItems
{
  [(_UIDiffableDataSourceViewUpdater *)self setHasPerformedInitialUpdate:1];
  collectionView = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v4 = collectionView;
  if (collectionView)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51___UIDiffableDataSourceViewUpdater__deleteAllItems__block_invoke;
    v17[3] = &unk_1E70F3590;
    v5 = collectionView;
    v18 = v5;
    [v5 _performDiffableUpdate:v17];
    window = [v5 window];

    if (window)
    {
      [v5 layoutIfNeeded];
    }

    v7 = v18;
  }

  else
  {
    tableView = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (tableView)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __51___UIDiffableDataSourceViewUpdater__deleteAllItems__block_invoke_2;
      v15 = &unk_1E70F3590;
      v7 = tableView;
      v16 = v7;
      [v7 _performDiffableUpdate:&v12];
      window2 = [v7 window];

      if (window2)
      {
        [v7 layoutIfNeeded];
      }
    }

    else
    {
      updatesSink = [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v11 = updatesSink;
      if (updatesSink)
      {
        [updatesSink _deleteAllItems];
      }

      v7 = 0;
    }
  }
}

- (id)targetView
{
  if ([(_UIDiffableDataSourceViewUpdater *)self sinkKind]== 2)
  {
    tableView = [(_UIDiffableDataSourceViewUpdater *)self tableView];
  }

  else if ([(_UIDiffableDataSourceViewUpdater *)self sinkKind]== 1)
  {
    tableView = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  }

  else
  {
    tableView = 0;
  }

  return tableView;
}

- (void)_performViewUpdates:(id)updates
{
  v52 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:348 description:@"Error: Updates can only be committed on the main thread."];
  }

  collectionView = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  tableView = [(_UIDiffableDataSourceViewUpdater *)self tableView];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = updatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v8)
  {

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_83;
  }

  v9 = v8;
  v45 = 0;
  obj = v7;
  v39 = a2;
  selfCopy = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v13 = *v48;
  do
  {
    v14 = 0;
    do
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v47 + 1) + 8 * v14);
      if (!v15)
      {
LABEL_28:
        if (v12)
        {
          indexPathAfterUpdate = [*(*(&v47 + 1) + 8 * v14) indexPathAfterUpdate];
          v20 = v12;
          goto LABEL_35;
        }

        v26 = objc_alloc(MEMORY[0x1E695DF70]);
        indexPathAfterUpdate = [v15 indexPathAfterUpdate];
        v12 = [v26 initWithObjects:{indexPathAfterUpdate, 0}];
LABEL_36:

        goto LABEL_37;
      }

      v16 = *(v15 + 80);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (*(v15 + 48) == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (*(v15 + 8) == 0x7FFFFFFFFFFFFFFFLL)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:v39 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:399 description:@"Cannot reload a section with NSNotFound index"];
            }

            v17 = v43;
            if (v43)
            {
              goto LABEL_26;
            }

            v43 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:*(v15 + 8)];
          }

          else
          {
            if ((*(v15 + 56) & 2) == 0)
            {
              if (!v10)
              {
                v28 = objc_alloc(MEMORY[0x1E695DF70]);
                indexPathAfterUpdate = [v15 indexPathBeforeUpdate];
                v10 = [v28 initWithObjects:{indexPathAfterUpdate, 0}];
                goto LABEL_36;
              }

              indexPathAfterUpdate = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
              v20 = v10;
LABEL_35:
              [v20 addObject:indexPathAfterUpdate];
              goto LABEL_36;
            }

            v21 = collectionView;
            v22 = v12;
            v23 = v11;
            v24 = v10;
            if (v41)
            {
              indexPathBeforeUpdate = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
              [v41 addObject:indexPathBeforeUpdate];
            }

            else
            {
              v29 = objc_alloc(MEMORY[0x1E695DF70]);
              indexPathBeforeUpdate = [v15 indexPathBeforeUpdate];
              v41 = [v29 initWithObjects:{indexPathBeforeUpdate, 0}];
            }

            v10 = v24;
            v11 = v23;
            v12 = v22;
            collectionView = v21;
            self = selfCopy;
          }
        }

        else if (v16 == 3)
        {
          if (collectionView)
          {
            [(_UIDiffableDataSourceViewUpdater *)self _performMoveUpdate:*(*(&v47 + 1) + 8 * v14) onCollectionView:collectionView];
          }

          else if (tableView)
          {
            [(_UIDiffableDataSourceViewUpdater *)self _performMoveUpdate:*(*(&v47 + 1) + 8 * v14) onTableView:tableView];
          }
        }
      }

      else
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_37;
          }

          if (*(v15 + 48) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = v44;
            if (!v44)
            {
              v44 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:*(v15 + 8)];
              goto LABEL_37;
            }

LABEL_26:
            v18 = *(v15 + 8);
LABEL_27:
            [v17 addIndex:v18];
            goto LABEL_37;
          }

          if (!v11)
          {
            v27 = objc_alloc(MEMORY[0x1E695DF70]);
            indexPathAfterUpdate = [v15 indexPathBeforeUpdate];
            v11 = [v27 initWithObjects:{indexPathAfterUpdate, 0}];
            goto LABEL_36;
          }

          indexPathAfterUpdate = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
          v20 = v11;
          goto LABEL_35;
        }

        if (*(v15 + 48) != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_28;
        }

        v17 = v45;
        if (v45)
        {
          v18 = *(v15 + 24);
          goto LABEL_27;
        }

        v45 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:*(v15 + 24)];
      }

LABEL_37:
      ++v14;
    }

    while (v9 != v14);
    v31 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    v9 = v31;
  }

  while (v31);
  v7 = obj;

  if (collectionView)
  {
    if (v43)
    {
      [collectionView reloadSections:?];
    }

    if (v44)
    {
      [collectionView deleteSections:?];
    }

    if (v45)
    {
      [collectionView insertSections:?];
    }

    if (v41)
    {
      [collectionView reconfigureItemsAtIndexPaths:?];
    }

    if (v10)
    {
      [collectionView reloadItemsAtIndexPaths:v10];
    }

    if (v11)
    {
      [collectionView deleteItemsAtIndexPaths:v11];
    }

    if (v12)
    {
      [collectionView insertItemsAtIndexPaths:v12];
    }

    goto LABEL_82;
  }

  v36 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v41;
  if (tableView)
  {
    if (v43)
    {
      v37 = [(_UIDiffableDataSourceViewUpdater *)selfCopy _sectionIndexesToReloadForTableViewCompatibility:v43];
      [tableView reloadSections:v37 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation")}];

      v35 = v41;
      v33 = v44;
      v34 = v45;
    }

    if (v33)
    {
      [tableView deleteSections:v33 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation", v36)}];
      v35 = v41;
      v34 = v45;
    }

    if (v34)
    {
      [tableView insertSections:v34 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation", v36)}];
      v35 = v41;
    }

    if (v35)
    {
      [tableView reconfigureRowsAtIndexPaths:v35];
    }

    if (v10)
    {
      [tableView reloadRowsAtIndexPaths:v10 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation", v36)}];
    }

    if (v11)
    {
      [tableView deleteRowsAtIndexPaths:v11 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation", v36)}];
    }

    if (v12)
    {
      [tableView insertRowsAtIndexPaths:v12 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](selfCopy, "tableViewRowAnimation", v36)}];
    }

LABEL_82:
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v41;
  }

  else
  {
    v32 = v43;
  }

LABEL_83:
}

- (void)_performMoveUpdate:(id)update onCollectionView:(id)view
{
  viewCopy = view;
  updateCopy = update;
  v6 = updateCopy;
  if (updateCopy && updateCopy[6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = updateCopy[1];
    v8 = updateCopy[3];

    [viewCopy moveSection:v7 toSection:v8];
    v9 = viewCopy;
  }

  else
  {
    indexPathBeforeUpdate = [updateCopy indexPathBeforeUpdate];
    indexPathAfterUpdate = [v6 indexPathAfterUpdate];

    [viewCopy moveItemAtIndexPath:indexPathBeforeUpdate toIndexPath:indexPathAfterUpdate];
    v9 = indexPathBeforeUpdate;
  }
}

- (id)_sectionIndexesToReloadForTableViewCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  if ((dyld_program_sdk_at_least() & 1) != 0 || (-[_UIDiffableDataSourceViewUpdater dataSourceSnapshot](self, "dataSourceSnapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfSections], v5, !v6))
  {
    v7 = compatibilityCopy;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v6}];
  }

  v8 = v7;

  return v8;
}

- (void)_performMoveUpdate:(id)update onTableView:(id)view
{
  viewCopy = view;
  updateCopy = update;
  v6 = updateCopy;
  if (updateCopy && updateCopy[6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = updateCopy[1];
    v8 = updateCopy[3];

    [viewCopy moveSection:v7 toSection:v8];
    v9 = viewCopy;
  }

  else
  {
    indexPathBeforeUpdate = [updateCopy indexPathBeforeUpdate];
    indexPathAfterUpdate = [v6 indexPathAfterUpdate];

    [viewCopy moveRowAtIndexPath:indexPathBeforeUpdate toIndexPath:indexPathAfterUpdate];
    v9 = indexPathBeforeUpdate;
  }
}

- (_UICollectionViewUpdateItemApplying)updatesSink
{
  WeakRetained = objc_loadWeakRetained(&self->_updatesSink);

  return WeakRetained;
}

@end