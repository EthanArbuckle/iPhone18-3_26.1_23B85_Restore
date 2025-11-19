@interface _UIDiffableDataSourceViewUpdater
- (BOOL)_doesExpectedUpdate:(id)a3 matchActualUpdates:(id)a4 allowingEmptyUpdates:(BOOL)a5;
- (UICollectionView)collectionView;
- (UITableView)tableView;
- (_UICollectionViewUpdateItemApplying)updatesSink;
- (_UIDiffableDataSourceViewUpdater)initWithUpdatesSink:(id)a3 collectionView:(id)a4 tableView:(id)a5;
- (id)_sectionIndexesToReloadForTableViewCompatibility:(id)a3;
- (id)targetView;
- (int64_t)_performUpdateWithCollectionViewUpdateItems:(id)a3 dataSourceSnapshot:(id)a4 updateHandler:(id)a5 completion:(id)a6 viewPropertyAnimator:(id)a7 customAnimationsProvider:(id)a8 animated:(BOOL)a9;
- (void)_deleteAllItems;
- (void)_performMoveUpdate:(id)a3 onCollectionView:(id)a4;
- (void)_performMoveUpdate:(id)a3 onTableView:(id)a4;
- (void)_performViewUpdates:(id)a3;
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
  v3 = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v4 = v3;
  if (v3)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47___UIDiffableDataSourceViewUpdater__reloadData__block_invoke;
    v17[3] = &unk_1E70F3590;
    v5 = v3;
    v18 = v5;
    [v5 _performDiffableUpdate:v17];
    v6 = [v5 window];

    if (v6)
    {
      [v5 layoutIfNeeded];
    }

    v7 = v18;
  }

  else
  {
    v8 = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (v8)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __47___UIDiffableDataSourceViewUpdater__reloadData__block_invoke_2;
      v15 = &unk_1E70F3590;
      v7 = v8;
      v16 = v7;
      [v7 _performDiffableUpdate:&v12];
      v9 = [v7 window];

      if (v9)
      {
        [v7 layoutIfNeeded];
      }
    }

    else
    {
      v10 = [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v11 = v10;
      if (v10)
      {
        [v10 _reloadData];
      }

      v7 = 0;
    }
  }
}

- (_UIDiffableDataSourceViewUpdater)initWithUpdatesSink:(id)a3 collectionView:(id)a4 tableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _UIDiffableDataSourceViewUpdater;
  v11 = [(_UIDiffableDataSourceViewUpdater *)&v18 init];
  v12 = v11;
  if (v11)
  {
    if (v8)
    {
      v13 = 0;
      v14 = 32;
      v15 = 24;
      v16 = v8;
LABEL_8:
      *(&v11->super.isa + v15) = v13;
      objc_storeWeak((&v11->super.isa + v14), v16);
      goto LABEL_9;
    }

    if (v9)
    {
      v14 = 40;
      v13 = 1;
      v15 = 24;
      v16 = v9;
      goto LABEL_8;
    }

    if (v10)
    {
      v11->_sinkKind = 2;
      v14 = 56;
      v13 = 100;
      v15 = 16;
      v16 = v10;
      goto LABEL_8;
    }
  }

LABEL_9:

  return v12;
}

- (int64_t)_performUpdateWithCollectionViewUpdateItems:(id)a3 dataSourceSnapshot:(id)a4 updateHandler:(id)a5 completion:(id)a6 viewPropertyAnimator:(id)a7 customAnimationsProvider:(id)a8 animated:(BOOL)a9
{
  v16 = a3;
  v56 = a4;
  v17 = a5;
  v57 = a6;
  v18 = a7;
  v19 = v17;
  v20 = v18;
  v58 = a8;
  if (v19)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v47 = [MEMORY[0x1E696AAA8] currentHandler];
  [v47 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"updateItems"}];

LABEL_3:
  v21 = v56;
  if (!v56)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];
  }

  v55 = v20;
  if (!v20 && v58)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:108 description:@"An non-nil animator is required to use a custom animations provider"];
  }

  v22 = [(_UIDiffableDataSourceViewUpdater *)self hasPerformedInitialUpdate];
  [(_UIDiffableDataSourceViewUpdater *)self setHasPerformedInitialUpdate:1];
  [(_UIDiffableDataSourceViewUpdater *)self setDataSourceSnapshot:v56];
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  v23 = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v24 = !v22;
  if (v23)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke;
    aBlock[3] = &unk_1E70FD548;
    v51 = v19;
    v25 = v19;
    v92 = v25;
    aBlock[4] = self;
    v53 = v16;
    v26 = v16;
    v91 = v26;
    v27 = _Block_copy(aBlock);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_2;
    v88[3] = &unk_1E70F3608;
    v28 = v57;
    v89 = v28;
    v29 = _Block_copy(v88);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_3;
    v75[3] = &unk_1E70FE298;
    v76 = v23;
    v80 = v25;
    v77 = self;
    v78 = v26;
    v85 = &v93;
    v81 = v28;
    v86 = a9;
    v79 = v55;
    v30 = v27;
    v82 = v30;
    v83 = v58;
    v31 = v29;
    v84 = v31;
    v87 = v24;
    [v76 _performDiffableUpdate:v75];
    v32 = v94[3];

    v33 = v92;
    v19 = v51;
    v16 = v53;
    v34 = v55;
    v21 = v56;
  }

  else
  {
    v33 = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (v33)
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_5;
      v72[3] = &unk_1E70FD548;
      v52 = v19;
      v35 = v19;
      v74 = v35;
      v72[4] = self;
      v54 = v16;
      v36 = v16;
      v73 = v36;
      v37 = _Block_copy(v72);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_6;
      v70[3] = &unk_1E70F3608;
      v50 = v24;
      v38 = v57;
      v71 = v38;
      v39 = _Block_copy(v70);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __179___UIDiffableDataSourceViewUpdater__performUpdateWithCollectionViewUpdateItems_dataSourceSnapshot_updateHandler_completion_viewPropertyAnimator_customAnimationsProvider_animated___block_invoke_7;
      v59[3] = &unk_1E70FE2E8;
      v60 = v33;
      v63 = v35;
      v61 = self;
      v62 = v36;
      v67 = &v93;
      v64 = v38;
      v68 = a9;
      v40 = v37;
      v65 = v40;
      v41 = v39;
      v66 = v41;
      v69 = v50;
      [v60 _performDiffableUpdate:v59];
      v32 = v94[3];

      v42 = v74;
      v19 = v52;
      v16 = v54;
      v34 = v55;
      v21 = v56;
    }

    else
    {
      [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v42 = v34 = v55;
      if (v42)
      {
        v43 = [(_UIDiffableDataSourceViewUpdater *)self dataSourceSnapshot];
        LOBYTE(v49) = a9;
        [v42 _performUpdateWithCollectionViewUpdateItems:v16 dataSourceSnapshot:v43 updateHandler:v19 completion:v57 viewPropertyAnimator:v55 customAnimationsProvider:v58 animated:v49];
      }

      v32 = v94[3];
    }
  }

  _Block_object_dispose(&v93, 8);
  return v32;
}

- (BOOL)_doesExpectedUpdate:(id)a3 matchActualUpdates:(id)a4 allowingEmptyUpdates:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 count])
  {
    if ([v8 count] == 1)
    {
      v9 = [v8 firstObject];
      v10 = [(UICollectionViewUpdateItem *)v9 isEqualToUpdate:v7];

      if (v10)
      {
LABEL_4:
        a5 = 1;
        goto LABEL_14;
      }
    }

    else if ([v8 count] == 2 && objc_msgSend(v7, "updateAction") == 3)
    {
      v11 = [v8 indexOfObjectPassingTest:&__block_literal_global_111];
      v12 = [v8 indexOfObjectPassingTest:&__block_literal_global_21];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v8 objectAtIndexedSubscript:v11];
          v15 = [v8 objectAtIndexedSubscript:v13];
          if ([(UICollectionViewUpdateItem *)v14 _initialIndexPathEqualToUpdateItem:v7]&& ([(UICollectionViewUpdateItem *)v15 _finalIndexPathEqualToUpdateItem:v7]& 1) != 0)
          {

            goto LABEL_4;
          }
        }
      }
    }

    a5 = 0;
  }

LABEL_14:

  return a5;
}

- (void)_deleteAllItems
{
  [(_UIDiffableDataSourceViewUpdater *)self setHasPerformedInitialUpdate:1];
  v3 = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v4 = v3;
  if (v3)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51___UIDiffableDataSourceViewUpdater__deleteAllItems__block_invoke;
    v17[3] = &unk_1E70F3590;
    v5 = v3;
    v18 = v5;
    [v5 _performDiffableUpdate:v17];
    v6 = [v5 window];

    if (v6)
    {
      [v5 layoutIfNeeded];
    }

    v7 = v18;
  }

  else
  {
    v8 = [(_UIDiffableDataSourceViewUpdater *)self tableView];
    if (v8)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __51___UIDiffableDataSourceViewUpdater__deleteAllItems__block_invoke_2;
      v15 = &unk_1E70F3590;
      v7 = v8;
      v16 = v7;
      [v7 _performDiffableUpdate:&v12];
      v9 = [v7 window];

      if (v9)
      {
        [v7 layoutIfNeeded];
      }
    }

    else
    {
      v10 = [(_UIDiffableDataSourceViewUpdater *)self updatesSink];
      v11 = v10;
      if (v10)
      {
        [v10 _deleteAllItems];
      }

      v7 = 0;
    }
  }
}

- (id)targetView
{
  if ([(_UIDiffableDataSourceViewUpdater *)self sinkKind]== 2)
  {
    v3 = [(_UIDiffableDataSourceViewUpdater *)self tableView];
  }

  else if ([(_UIDiffableDataSourceViewUpdater *)self sinkKind]== 1)
  {
    v3 = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_performViewUpdates:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:348 description:@"Error: Updates can only be committed on the main thread."];
  }

  v6 = [(_UIDiffableDataSourceViewUpdater *)self collectionView];
  v42 = [(_UIDiffableDataSourceViewUpdater *)self tableView];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v5;
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
  v40 = self;
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
          v19 = [*(*(&v47 + 1) + 8 * v14) indexPathAfterUpdate];
          v20 = v12;
          goto LABEL_35;
        }

        v26 = objc_alloc(MEMORY[0x1E695DF70]);
        v19 = [v15 indexPathAfterUpdate];
        v12 = [v26 initWithObjects:{v19, 0}];
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
              v30 = [MEMORY[0x1E696AAA8] currentHandler];
              [v30 handleFailureInMethod:v39 object:self file:@"_UIDiffableDataSourceViewUpdater.m" lineNumber:399 description:@"Cannot reload a section with NSNotFound index"];
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
                v19 = [v15 indexPathBeforeUpdate];
                v10 = [v28 initWithObjects:{v19, 0}];
                goto LABEL_36;
              }

              v19 = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
              v20 = v10;
LABEL_35:
              [v20 addObject:v19];
              goto LABEL_36;
            }

            v21 = v6;
            v22 = v12;
            v23 = v11;
            v24 = v10;
            if (v41)
            {
              v25 = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
              [v41 addObject:v25];
            }

            else
            {
              v29 = objc_alloc(MEMORY[0x1E695DF70]);
              v25 = [v15 indexPathBeforeUpdate];
              v41 = [v29 initWithObjects:{v25, 0}];
            }

            v10 = v24;
            v11 = v23;
            v12 = v22;
            v6 = v21;
            self = v40;
          }
        }

        else if (v16 == 3)
        {
          if (v6)
          {
            [(_UIDiffableDataSourceViewUpdater *)self _performMoveUpdate:*(*(&v47 + 1) + 8 * v14) onCollectionView:v6];
          }

          else if (v42)
          {
            [(_UIDiffableDataSourceViewUpdater *)self _performMoveUpdate:*(*(&v47 + 1) + 8 * v14) onTableView:v42];
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
            v19 = [v15 indexPathBeforeUpdate];
            v11 = [v27 initWithObjects:{v19, 0}];
            goto LABEL_36;
          }

          v19 = [*(*(&v47 + 1) + 8 * v14) indexPathBeforeUpdate];
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

  if (v6)
  {
    if (v43)
    {
      [v6 reloadSections:?];
    }

    if (v44)
    {
      [v6 deleteSections:?];
    }

    if (v45)
    {
      [v6 insertSections:?];
    }

    if (v41)
    {
      [v6 reconfigureItemsAtIndexPaths:?];
    }

    if (v10)
    {
      [v6 reloadItemsAtIndexPaths:v10];
    }

    if (v11)
    {
      [v6 deleteItemsAtIndexPaths:v11];
    }

    if (v12)
    {
      [v6 insertItemsAtIndexPaths:v12];
    }

    goto LABEL_82;
  }

  v36 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v41;
  if (v42)
  {
    if (v43)
    {
      v37 = [(_UIDiffableDataSourceViewUpdater *)v40 _sectionIndexesToReloadForTableViewCompatibility:v43];
      [v42 reloadSections:v37 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation")}];

      v35 = v41;
      v33 = v44;
      v34 = v45;
    }

    if (v33)
    {
      [v42 deleteSections:v33 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation", v36)}];
      v35 = v41;
      v34 = v45;
    }

    if (v34)
    {
      [v42 insertSections:v34 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation", v36)}];
      v35 = v41;
    }

    if (v35)
    {
      [v42 reconfigureRowsAtIndexPaths:v35];
    }

    if (v10)
    {
      [v42 reloadRowsAtIndexPaths:v10 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation", v36)}];
    }

    if (v11)
    {
      [v42 deleteRowsAtIndexPaths:v11 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation", v36)}];
    }

    if (v12)
    {
      [v42 insertRowsAtIndexPaths:v12 withRowAnimation:{-[_UIDiffableDataSourceViewUpdater tableViewRowAnimation](v40, "tableViewRowAnimation", v36)}];
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

- (void)_performMoveUpdate:(id)a3 onCollectionView:(id)a4
{
  v12 = a4;
  v5 = a3;
  v6 = v5;
  if (v5 && v5[6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5[1];
    v8 = v5[3];

    [v12 moveSection:v7 toSection:v8];
    v9 = v12;
  }

  else
  {
    v10 = [v5 indexPathBeforeUpdate];
    v11 = [v6 indexPathAfterUpdate];

    [v12 moveItemAtIndexPath:v10 toIndexPath:v11];
    v9 = v10;
  }
}

- (id)_sectionIndexesToReloadForTableViewCompatibility:(id)a3
{
  v4 = a3;
  if ((dyld_program_sdk_at_least() & 1) != 0 || (-[_UIDiffableDataSourceViewUpdater dataSourceSnapshot](self, "dataSourceSnapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 numberOfSections], v5, !v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v6}];
  }

  v8 = v7;

  return v8;
}

- (void)_performMoveUpdate:(id)a3 onTableView:(id)a4
{
  v12 = a4;
  v5 = a3;
  v6 = v5;
  if (v5 && v5[6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5[1];
    v8 = v5[3];

    [v12 moveSection:v7 toSection:v8];
    v9 = v12;
  }

  else
  {
    v10 = [v5 indexPathBeforeUpdate];
    v11 = [v6 indexPathAfterUpdate];

    [v12 moveRowAtIndexPath:v10 toIndexPath:v11];
    v9 = v10;
  }
}

- (_UICollectionViewUpdateItemApplying)updatesSink
{
  WeakRetained = objc_loadWeakRetained(&self->_updatesSink);

  return WeakRetained;
}

@end