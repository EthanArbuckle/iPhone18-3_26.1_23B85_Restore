@interface _UIDataSourceUpdateMap
+ (id)mapForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 batchUpdateItems:(id)a5;
+ (id)mapForInitialSnapshot:(id)a3 orderedUpdateItems:(id)a4;
+ (id)validatedMapForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 batchUpdateItems:(id)a5;
- (BOOL)_isSectionOnlyIndexPath:(id)a3;
- (BOOL)_mapIsSimpleInsertMoveSequence;
- (_UIDataSourceUpdateMap)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 updateItems:(id)a5 assertForInvalidUpdates:(BOOL)a6;
- (id)_findUpdateForIdentifier:(id)a3;
- (id)_mapUpdateForCollectionUpdateItem:(id)a3 snapshot:(id)a4;
- (id)_newGlobalItemMapDescription;
- (id)_newSectionMapDescription;
- (id)_oldGlobalItemMapDescription;
- (id)_oldSectionMapDescription;
- (id)_rebasedUpdatesForUpdate:(id)a3;
- (id)_transformIndexPath:(id)a3 applyingUpdateItem:(id)a4 withSnapshot:(id)a5;
- (id)_updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:(id)a3;
- (id)description;
- (id)finalIndexPathForIndexPath:(id)a3 startingAtUpdateWithIdentifier:(id)a4;
- (id)finalIndexPathForInitialIndexPath:(id)a3;
- (id)finalUpdateForInitialUpdate:(id)a3;
- (id)initialIndexPathForFinalIndexPath:(id)a3;
- (id)initialIndexPathForIndexPath:(id)a3 beforeUpdateWithIdentifier:(id)a4;
- (id)initialUpdateForFinalUpdate:(id)a3;
- (id)initialUpdateForUpdateIdentifier:(id)a3;
- (id)rebasedMapFromNewBaseMap:(id)a3;
- (id)submapAfterUpdate:(id)a3;
- (id)submapBeforeUpdate:(id)a3;
- (id)updateMapByRevertingUpdateWithIdentifier:(id)a3;
- (int64_t)_transformSectionIndex:(int64_t)a3 applyingUpdateItem:(id)a4 withSnapshot:(id)a5;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3;
- (void)_computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:(id)a3;
- (void)_performAppendingInsertsFixups;
- (void)_updateSnapshot:(id)a3 forUpdateItem:(id)a4;
@end

@implementation _UIDataSourceUpdateMap

- (_UIDataSourceUpdateMap)initWithInitialSnapshot:(id)a3 finalSnapshot:(id)a4 updateItems:(id)a5 assertForInvalidUpdates:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = _UIDataSourceUpdateMap;
  v14 = [(_UIDataSourceUpdateMap *)&v21 init];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v13 copyItems:1];
  originalUpdateItems = v14->_originalUpdateItems;
  v14->_originalUpdateItems = v15;

  objc_storeStrong(&v14->_initialSnapshot, a3);
  objc_storeStrong(&v14->_finalSnapshot, a4);
  if (!v12)
  {
    [(_UIDataSourceUpdateMap *)v14 _computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:v13];
    goto LABEL_6;
  }

  v17 = [[_UIDataSourceBatchUpdateMapHelper alloc] initWithInitialSnapshot:v11 finalSnapshot:v12 updates:v13 assertingForInvalidUpdates:v6];
  batchUpdateMapHelper = v14->_batchUpdateMapHelper;
  v14->_batchUpdateMapHelper = v17;

  if (v14->_batchUpdateMapHelper)
  {
LABEL_6:
    v19 = v14;
    goto LABEL_7;
  }

  v19 = 0;
LABEL_7:

  return v19;
}

+ (id)mapForInitialSnapshot:(id)a3 orderedUpdateItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithInitialSnapshot:v7 finalSnapshot:0 updateItems:v6 assertForInvalidUpdates:1];

  return v8;
}

+ (id)mapForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 batchUpdateItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithInitialSnapshot:v10 finalSnapshot:v9 updateItems:v8 assertForInvalidUpdates:1];

  return v11;
}

+ (id)validatedMapForInitialSnapshot:(id)a3 finalSnapshot:(id)a4 batchUpdateItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithInitialSnapshot:v10 finalSnapshot:v9 updateItems:v8 assertForInvalidUpdates:0];

  return v11;
}

- (id)finalIndexPathForInitialIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if ([v4 section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "item") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
LABEL_10:
    v8 = v6;
    goto LABEL_11;
  }

  batchUpdateMapHelper = self->_batchUpdateMapHelper;
  if (batchUpdateMapHelper)
  {
    v6 = [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper finalIndexPathForInitialIndexPath:v5];
    goto LABEL_10;
  }

  if ([(_UIDataSourceUpdateMap *)self _isSectionOnlyIndexPath:v5])
  {
    v6 = -[_UIDataSourceUpdateMap _sectionIndexPathForSection:](self, "_sectionIndexPathForSection:", -[_UIDataSourceUpdateMap finalSectionIndexForInitialSectionIndex:](self, "finalSectionIndexForInitialSectionIndex:", [v5 section]));
    goto LABEL_10;
  }

  v10 = [(_UIDataSourceSnapshotter *)self->_initialSnapshot copy];
  v8 = v5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(_UIDataSourceUpdateMap *)self updateItems];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
LABEL_16:
    v15 = 0;
    v16 = v8;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v18 + 1) + 8 * v15);
      v8 = [(_UIDataSourceUpdateMap *)self _transformIndexPath:v16 applyingUpdateItem:v17 withSnapshot:v10];

      if (!v8)
      {
        break;
      }

      [(_UIDataSourceUpdateMap *)self _updateSnapshot:v10 forUpdateItem:v17];
      ++v15;
      v16 = v8;
      if (v13 == v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

LABEL_11:

  return v8;
}

- (id)initialIndexPathForFinalIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if ([v4 section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "item") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
LABEL_10:
    v8 = v6;
    goto LABEL_11;
  }

  batchUpdateMapHelper = self->_batchUpdateMapHelper;
  if (batchUpdateMapHelper)
  {
    v6 = [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper initialIndexPathForFinalIndexPath:v5];
    goto LABEL_10;
  }

  if ([(_UIDataSourceUpdateMap *)self _isSectionOnlyIndexPath:v5])
  {
    v6 = -[_UIDataSourceUpdateMap _sectionIndexPathForSection:](self, "_sectionIndexPathForSection:", -[_UIDataSourceUpdateMap initialSectionIndexForFinalSectionIndex:](self, "initialSectionIndexForFinalSectionIndex:", [v5 section]));
    goto LABEL_10;
  }

  v10 = [(_UIDataSourceSnapshotter *)self->_finalSnapshot copy];
  v8 = v5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(_UIDataSourceUpdateMap *)self reverseUpdateItems];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
LABEL_16:
    v15 = 0;
    v16 = v8;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v18 + 1) + 8 * v15);
      v8 = [(_UIDataSourceUpdateMap *)self _transformIndexPath:v16 applyingUpdateItem:v17 withSnapshot:v10];

      if (!v8)
      {
        break;
      }

      [(_UIDataSourceUpdateMap *)self _updateSnapshot:v10 forUpdateItem:v17];
      ++v15;
      v16 = v8;
      if (v13 == v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

LABEL_11:

  return v8;
}

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a3;
    batchUpdateMapHelper = self->_batchUpdateMapHelper;
    if (batchUpdateMapHelper)
    {

      return [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper finalSectionIndexForInitialSectionIndex:a3];
    }

    else
    {
      if (a3 < 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v7 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      v8 = [v7 numberOfSections];

      if (v8 <= v5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = [(_UIDataSourceSnapshotter *)self->_initialSnapshot copy];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [(_UIDataSourceUpdateMap *)self updateItems];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v16 + 1) + 8 * i);
              if ([v15 isSectionUpdate])
              {
                v5 = [(_UIDataSourceUpdateMap *)self _transformSectionIndex:v5 applyingUpdateItem:v15 withSnapshot:v9];
                [(_UIDataSourceUpdateMap *)self _updateSnapshot:v9 forUpdateItem:v15];
                if (v5 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v5 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_20;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        return v5;
      }
    }
  }

  return result;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a3;
    batchUpdateMapHelper = self->_batchUpdateMapHelper;
    if (batchUpdateMapHelper)
    {

      return [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper initialSectionIndexForFinalSectionIndex:a3];
    }

    else
    {
      if (a3 < 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v7 = [(_UIDataSourceUpdateMap *)self finalSnapshot];
      v8 = [v7 numberOfSections];

      if (v8 <= v5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = [(_UIDataSourceSnapshotter *)self->_finalSnapshot copy];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [(_UIDataSourceUpdateMap *)self reverseUpdateItems];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v16 + 1) + 8 * i);
              if ([v15 isSectionUpdate])
              {
                v5 = [(_UIDataSourceUpdateMap *)self _transformSectionIndex:v5 applyingUpdateItem:v15 withSnapshot:v9];
                [(_UIDataSourceUpdateMap *)self _updateSnapshot:v9 forUpdateItem:v15];
                if (v5 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v5 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_20;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        return v5;
      }
    }
  }

  return result;
}

- (id)rebasedMapFromNewBaseMap:(id)a3
{
  v72[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 initialSnapshot];
  v7 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (!v5)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:213 description:@"Initial snapshots must start at the same place. They dont."];

    if (!v5)
    {
      goto LABEL_53;
    }
  }

  v9 = [v5 updates];
  v10 = [v9 count];

  if (v10)
  {
    if (![v5 isBatchUpdateMap])
    {
      v29 = [v5 updates];
      v30 = [v29 firstObject];
      v31 = [(_UIDataSourceUpdateMap *)self _rebasedUpdatesForUpdate:v30];

      v32 = [v5 finalSnapshot];
      v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v32 orderedUpdateItems:v31];

LABEL_38:
      [v28 _performAppendingInsertsFixups];
      v49 = v28;
LABEL_51:

      goto LABEL_54;
    }

    if (![(_UIDataSourceUpdateMap *)self _mapIsSimpleInsertMoveSequence])
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [(_UIDataSourceUpdateMap *)self updates];
      v60 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (!v60)
      {
        goto LABEL_36;
      }

      v59 = *v62;
      while (1)
      {
        v33 = 0;
        do
        {
          if (*v62 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v61 + 1) + 8 * v33);
          if (v34)
          {
            v35 = *(v34 + 88);
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          v37 = [(_UIDataSourceUpdateMap *)self initialUpdateForUpdateIdentifier:v36];

          v38 = [v5 finalUpdateForInitialUpdate:v37];
          if (!v38)
          {
            v50 = *(__UILogGetCategoryCachedImpl("UICollectionView", &_MergedGlobals_1047) + 8);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v66 = self;
              v67 = 2112;
              v68 = v37;
              v69 = 2112;
              v70 = v5;
              _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "Data source update map could not compute initial update value after shadow updates. Map: %@, update: %@, newBaseMap: %@", buf, 0x20u);
            }

            goto LABEL_47;
          }

          if ([v12 count])
          {
            v39 = [v5 finalSnapshot];
            v40 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v39 orderedUpdateItems:v12];

            v41 = [v40 finalUpdateForInitialUpdate:v38];
            if (!v41)
            {
              v55 = *(__UILogGetCategoryCachedImpl("UICollectionView", &qword_1ED49D718) + 8);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v66 = self;
                v67 = 2112;
                v68 = v38;
                v69 = 2112;
                v70 = v40;
                _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_ERROR, "Data source update map could not compute update value after shadow updates. Map: %@,, update: %@, shadowUpdatesMap: %@", buf, 0x20u);
              }

LABEL_47:
              goto LABEL_50;
            }

            v42 = v41;
            if (v34)
            {
              v43 = *(v34 + 88);
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;
            objc_storeStrong(v42 + 11, v43);

            [v12 addObject:v42];
          }

          else
          {
            if (v34)
            {
              v45 = *(v34 + 88);
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;
            objc_storeStrong(v38 + 11, v45);

            [v12 addObject:v38];
          }

          ++v33;
        }

        while (v60 != v33);
        v47 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
        v60 = v47;
        if (!v47)
        {
LABEL_36:

          v48 = [v5 finalSnapshot];
          v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v48 orderedUpdateItems:v12];

          goto LABEL_37;
        }
      }
    }

    v11 = [(_UIDataSourceUpdateMap *)self updates];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [(_UIDataSourceUpdateMap *)self updates];
    v14 = [v13 objectAtIndexedSubscript:1];

    v15 = [v5 finalUpdateForInitialUpdate:v12];
    if (v15)
    {
      v16 = v15;
      if (v12)
      {
        v17 = v12[11];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      objc_storeStrong(v16 + 11, v17);

      v19 = [v14 indexPathAfterUpdate];
      v20 = [v5 finalIndexPathForInitialIndexPath:v19];

      if (v20)
      {
LABEL_10:
        v21 = [UICollectionViewUpdateItem alloc];
        v22 = [v16 indexPathAfterUpdate];
        v23 = [(UICollectionViewUpdateItem *)v21 initWithInitialIndexPath:v22 finalIndexPath:v20 updateAction:3];

        if (v14)
        {
          v24 = v14[11];
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        [(UIBackgroundConfiguration *)v23 _setStrokeColor:v25];

        v26 = [v5 finalSnapshot];
        v72[0] = v16;
        v72[1] = v23;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
        v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v26 orderedUpdateItems:v27];

LABEL_37:
        goto LABEL_38;
      }

      v51 = [v5 finalSnapshot];
      v52 = [v14 indexPathAfterUpdate];
      v53 = [v51 indexPathIsSectionAppendingInsert:v52];

      if (v53)
      {
        v54 = [v14 indexPathAfterUpdate];
        if (v54)
        {
          v20 = v54;
          goto LABEL_10;
        }
      }
    }

LABEL_50:
    v49 = 0;
    goto LABEL_51;
  }

LABEL_53:
  v49 = self;
LABEL_54:

  return v49;
}

- (id)updateMapByRevertingUpdateWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(_UIDataSourceUpdateMap *)self updates];
  v7 = [v6 count];

  if (v7)
  {
    if (!v5)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"updateIdentifier != nil"}];
    }

    v8 = [(_UIDataSourceUpdateMap *)self updates];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67___UIDataSourceUpdateMap_updateMapByRevertingUpdateWithIdentifier___block_invoke;
    v33[3] = &unk_1E7100650;
    v34 = v5;
    v9 = [v8 indexOfObjectPassingTest:v33];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:302 description:@"Internal error: could not find specified update by identifier."];
    }

    v10 = [(_UIDataSourceUpdateMap *)self updates];
    v11 = [v10 objectAtIndexedSubscript:v9];

    v12 = [(_UIDataSourceUpdateMap *)self updates];
    v13 = [v12 subarrayWithRange:{0, v9 + 1}];

    v14 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v15 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v14 orderedUpdateItems:v13];
    v16 = [v15 finalSnapshot];

    v17 = [(_UIDataSourceUpdateMap *)self updates];
    v18 = [v17 count] - (v9 + 1);

    v19 = [(_UIDataSourceUpdateMap *)self updates];
    v20 = [v19 subarrayWithRange:{v9 + 1, v18}];

    v21 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v16 orderedUpdateItems:v20];
    v22 = [v21 finalUpdateForInitialUpdate:v11];
    v23 = [(UICollectionViewUpdateItem *)v22 revertedUpdate];

    v24 = [(_UIDataSourceUpdateMap *)self _rebasedUpdatesForUpdate:v23];
    v25 = [v24 mutableCopy];

    [v25 removeObjectAtIndex:v9];
    v26 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v27 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v26 orderedUpdateItems:v25];

    [v27 _performAppendingInsertsFixups];
  }

  else
  {
    v28 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v29 = [(_UIDataSourceUpdateMap *)self updates];
    v27 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v28 orderedUpdateItems:v29];
  }

  return v27;
}

- (id)initialUpdateForUpdateIdentifier:(id)a3
{
  v4 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:a3];
  if (v4 && (-[_UIDataSourceUpdateMap updates](self, "updates"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 indexOfObjectIdenticalTo:v4], v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(_UIDataSourceUpdateMap *)self updates];
    v9 = [v8 subarrayWithRange:{0, v6 + 1}];

    v10 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v11 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v10 orderedUpdateItems:v9];

    v12 = v4[11];
    v13 = [v11 _updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:v12];

    v14 = [v13 updates];
    v7 = [v14 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)finalIndexPathForIndexPath:(id)a3 startingAtUpdateWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:a4];
  if (v7)
  {
    v8 = [(_UIDataSourceUpdateMap *)self submapAfterUpdate:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 finalIndexPathForInitialIndexPath:v6];
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initialIndexPathForIndexPath:(id)a3 beforeUpdateWithIdentifier:(id)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v8 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:a4];
  if (v8)
  {
    v9 = [(_UIDataSourceUpdateMap *)self submapBeforeUpdate:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 initialIndexPathForFinalIndexPath:v7];
      if (v11)
      {
        v12 = v11;
LABEL_11:

        goto LABEL_12;
      }

      if (!*(v8 + 80) && (*(v8 + 56) & 1) != 0)
      {
        v15 = [v10 initialSnapshot];
        v16 = [(UICollectionViewUpdateItem *)v8 _indexPath];
        v12 = [v15 indexPathForAppendingInsertInSection:{objc_msgSend(v16, "section")}];

        if (v12)
        {
          goto LABEL_11;
        }
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:383 description:@"Could not determine the intialIndexPath before shadow update"];

    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (id)finalUpdateForInitialUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 indexPathBeforeUpdate];
  v6 = [(_UIDataSourceUpdateMap *)self finalIndexPathForInitialIndexPath:v5];

  v7 = [v4 indexPathAfterUpdate];
  v8 = [(_UIDataSourceUpdateMap *)self finalIndexPathForInitialIndexPath:v7];

  if (v8)
  {
    goto LABEL_2;
  }

  if (v4 && v4[10])
  {
    v10 = [UICollectionViewUpdateItem alloc];
    v9 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v17 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v18 = [(UICollectionViewUpdateItem *)v4 _indexPath];
  v19 = [v17 indexPathIsSectionAppendingInsert:v18];

  if (!v19)
  {
    v8 = 0;
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v20 = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  v21 = [(UICollectionViewUpdateItem *)v4 _indexPath];
  v8 = [v20 indexPathForAppendingInsertInSection:{objc_msgSend(v21, "section")}];

  v9 = 1;
LABEL_3:
  v10 = [UICollectionViewUpdateItem alloc];
  if (!v4)
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v11 = v4[10];
LABEL_9:
  v12 = [(UICollectionViewUpdateItem *)v10 initWithInitialIndexPath:v6 finalIndexPath:v8 updateAction:v11];
  v13 = v12;
  if (v12)
  {
    *&v12->_updateItemFlags = *&v12->_updateItemFlags & 0xFE | v9;
  }

  v14 = [(UICollectionViewUpdateItem *)v12 indexPathBeforeUpdate];
  if (v14)
  {
    goto LABEL_12;
  }

  v15 = [(UICollectionViewUpdateItem *)v13 indexPathAfterUpdate];

  if (!v15)
  {
    v14 = v13;
    v13 = 0;
LABEL_12:
  }

  return v13;
}

- (id)initialUpdateForFinalUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 indexPathBeforeUpdate];
  v6 = [(_UIDataSourceUpdateMap *)self initialIndexPathForFinalIndexPath:v5];

  v7 = [v4 indexPathAfterUpdate];
  v8 = [(_UIDataSourceUpdateMap *)self initialIndexPathForFinalIndexPath:v7];

  v9 = [UICollectionViewUpdateItem alloc];
  if (v4)
  {
    v10 = v4[10];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UICollectionViewUpdateItem *)v9 initWithInitialIndexPath:v6 finalIndexPath:v8 updateAction:v10];
  v12 = [(UICollectionViewUpdateItem *)v11 indexPathAfterUpdate];
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = [(UICollectionViewUpdateItem *)v11 indexPathBeforeUpdate];

  if (!v13)
  {
    v12 = v11;
    v11 = 0;
LABEL_4:
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v7 = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  v8 = [(_UIDataSourceUpdateMap *)self updates];
  v9 = [v3 stringWithFormat:@"<%@: %p intialSnapshot = %@; finalSnapshot = %@; updates = %@>", v5, self, v6, v7, v8];;

  return v9;
}

- (id)_oldSectionMapDescription
{
  v3 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v4 = [v3 numberOfSections];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIDataSourceUpdateMap__oldSectionMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(v4, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_newSectionMapDescription
{
  v3 = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  v4 = [v3 numberOfSections];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIDataSourceUpdateMap__newSectionMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(v4, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_oldGlobalItemMapDescription
{
  v3 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v4 = [v3 numberOfItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___UIDataSourceUpdateMap__oldGlobalItemMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(v4, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_newGlobalItemMapDescription
{
  v3 = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  v4 = [v3 numberOfItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___UIDataSourceUpdateMap__newGlobalItemMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(v4, v8);
  v6 = [v5 description];

  return v6;
}

- (BOOL)_isSectionOnlyIndexPath:(id)a3
{
  v3 = a3;
  v4 = [v3 length] == 1 || objc_msgSend(v3, "item") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)_mapIsSimpleInsertMoveSequence
{
  v3 = [(_UIDataSourceUpdateMap *)self updates];
  v4 = [v3 count];

  if (v4 == 2)
  {
    v5 = [(_UIDataSourceUpdateMap *)self updates];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [(_UIDataSourceUpdateMap *)self updates];
    v8 = [v7 objectAtIndexedSubscript:1];

    if (v6)
    {
      v9 = 0;
      if (v6[10] || !v8)
      {
        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      goto LABEL_9;
    }

    if (v8[10] == 3)
    {
      v10 = [v6 indexPathAfterUpdate];
      v11 = [v8 indexPathBeforeUpdate];
      v9 = [v10 isEqual:v11];

LABEL_10:
      return v9;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  return 0;
}

- (void)_performAppendingInsertsFixups
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v4 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v3 orderedUpdateItems:MEMORY[0x1E695E0F0]];

  v5 = [(_UIDataSourceUpdateMap *)self updates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(_UIDataSourceUpdateMap *)self updates];
      v9 = [v8 objectAtIndexedSubscript:v7];

      if (!v9 || !*(v9 + 80))
      {
        v10 = [v4 finalSnapshot];
        v11 = [(UICollectionViewUpdateItem *)v9 _indexPath];
        v12 = [v10 indexPathIsSectionAppendingInsert:v11];

        if (v9)
        {
          *(v9 + 56) = *(v9 + 56) & 0xFE | v12;
        }
      }

      v13 = [v4 finalSnapshot];
      v18[0] = v9;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v13 orderedUpdateItems:v14];

      ++v7;
      v16 = [(_UIDataSourceUpdateMap *)self updates];
      v17 = [v16 count];

      v4 = v15;
    }

    while (v7 < v17);
  }

  else
  {
    v15 = v4;
  }
}

- (id)_findUpdateForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  v5 = [(_UIDataSourceUpdateMap *)self updates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51___UIDataSourceUpdateMap__findUpdateForIdentifier___block_invoke;
  v9[3] = &unk_1E70FD008;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)submapBeforeUpdate:(id)a3
{
  v4 = a3;
  v5 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45___UIDataSourceUpdateMap_submapBeforeUpdate___block_invoke;
  v13[3] = &unk_1E7100650;
  v6 = v4;
  v14 = v6;
  v7 = [v5 indexOfObjectPassingTest:v13];

  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v10 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
    v9 = [v10 subarrayWithRange:{0, v7}];

    v11 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v11 orderedUpdateItems:v9];
  }

  else
  {
    v9 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v9 orderedUpdateItems:MEMORY[0x1E695E0F0]];
  }

LABEL_7:

  return v8;
}

- (id)submapAfterUpdate:(id)a3
{
  v4 = a3;
  v5 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44___UIDataSourceUpdateMap_submapAfterUpdate___block_invoke;
  v21[3] = &unk_1E7100650;
  v6 = v4;
  v22 = v6;
  v7 = [v5 indexOfObjectPassingTest:v21];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
    v10 = [v9 count];

    if ((v10 - v7) < 1)
    {
      v15 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v15 orderedUpdateItems:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v11 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
      v12 = [v11 subarrayWithRange:{0, v7 + 1}];

      v13 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      v14 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v13 orderedUpdateItems:v12];

      v15 = [v14 finalSnapshot];

      v16 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
      v17 = [v16 count];

      if (v10 <= v17)
      {
        v19 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
        v18 = [v19 subarrayWithRange:{v7 + 1, v10 - v7 - 1}];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v15 orderedUpdateItems:v18];
    }
  }

  return v8;
}

- (id)_updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:(id)a3
{
  v5 = a3;
  if ([(_UIDataSourceUpdateMap *)self isBatchUpdateMap])
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:585 description:@"Cannot revert for a batch updates map."];
  }

  v6 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v7 = [(_UIDataSourceUpdateMap *)self updates];
  v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v6 orderedUpdateItems:v7];

  v9 = [v8 updates];
  v10 = [v9 count];

  if (v10 >= 2)
  {
    v11 = 0;
    do
    {
      v12 = [v8 updates];
      v13 = [v12 count];

      if (v13)
      {
        v14 = 0;
        while (1)
        {
          v15 = [v8 updates];
          v16 = [v15 objectAtIndexedSubscript:v14];

          v17 = v16 ? v16[11] : 0;
          v18 = v17;
          v19 = [v18 isEqual:v5];

          if ((v19 & 1) == 0)
          {
            break;
          }

          ++v14;
          v20 = [v8 updates];
          v21 = [v20 count];

          if (v14 >= v21)
          {
            goto LABEL_16;
          }
        }

        if (v16)
        {
          v22 = v16[11];
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v24 = [v8 updateMapByRevertingUpdateWithIdentifier:v23];

        v8 = v24;
      }

LABEL_16:
      v25 = [(_UIDataSourceUpdateMap *)self updates];
      v26 = [v25 count];

      if (v11 > v26)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = NSStringFromSelector(a2);
        [v27 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:600 description:{@"ERROR: failed to revert intermediate update; failing to create map for %@", v28}];
      }

      ++v11;
      v29 = [v8 updates];
      v30 = [v29 count];
    }

    while (v30 > 1);
  }

  v31 = [v8 updates];
  v32 = [v31 count];

  if (v32 != 1)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = NSStringFromSelector(a2);
    [v35 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:603 description:{@"Resultant map does not have exactly 1 item in it; failing to create map for %@", v36}];
  }

  return v8;
}

- (id)_rebasedUpdatesForUpdate:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34 = a3;
  if (v34)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(_UIDataSourceUpdateMap *)self updates];
    v6 = [v5 count];

    if (v6)
    {
      v32 = a2;
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = [(_UIDataSourceUpdateMap *)self updates];
        v10 = [v9 objectAtIndexedSubscript:v7];

        v11 = [(_UIDataSourceUpdateMap *)self updates];
        v12 = [v11 subarrayWithRange:{0, v7}];

        v13 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
        v35 = v12;
        v14 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v13 orderedUpdateItems:v12];

        v15 = [v14 finalSnapshot];

        v36[0] = v10;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        v17 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v15 orderedUpdateItems:v16];

        ++v7;
        v18 = [(_UIDataSourceUpdateMap *)self updates];
        v19 = [v18 count];

        v20 = [(_UIDataSourceUpdateMap *)self updates];
        v21 = [v20 subarrayWithRange:{v7, v19 + v8}];
        v22 = [v21 arrayByAddingObject:v34];

        v23 = [v17 finalSnapshot];
        v24 = [_UIDataSourceUpdateMap mapForInitialSnapshot:v23 orderedUpdateItems:v22];

        v25 = [v24 finalUpdateForInitialUpdate:v10];
        if (!v25)
        {
          v25 = [[UICollectionViewUpdateItem alloc] initWithAction:4 forIndexPath:0];
        }

        if (v10)
        {
          v26 = v10[11];
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        [(UIBackgroundConfiguration *)v25 _setStrokeColor:v27];

        if (!v25)
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          [v30 handleFailureInMethod:v32 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:645 description:@"Failed to rebase update."];
        }

        [v33 addObject:v25];

        v28 = [(_UIDataSourceUpdateMap *)self updates];
        v29 = [v28 count];

        --v8;
      }

      while (v7 < v29);
    }
  }

  else
  {
    v33 = [(_UIDataSourceUpdateMap *)self updates];
  }

  return v33;
}

- (void)_computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDataSourceSnapshotter *)self->_initialSnapshot copy];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(_UIDataSourceUpdateMap *)self _mapUpdateForCollectionUpdateItem:*(*(&v15 + 1) + 8 * v12) snapshot:v5, v15];
        v14 = [v13 reverseUpdateItem];
        if (v14)
        {
          [v6 addObject:v13];
          [v7 insertObject:v14 atIndex:0];
          [(_UIDataSourceUpdateMap *)self _updateSnapshot:v5 forUpdateItem:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(_UIDataSourceUpdateMap *)self setFinalSnapshot:v5];
  [(_UIDataSourceUpdateMap *)self setUpdateItems:v6];
  [(_UIDataSourceUpdateMap *)self setReverseUpdateItems:v7];
}

- (id)_mapUpdateForCollectionUpdateItem:(id)a3 snapshot:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v5[10];
    if (v7)
    {
      if (v7 == 3)
      {
        v16 = v5[6];
        v17 = [v5 indexPathBeforeUpdate];
        v14 = v17;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v6 rangeForSection:{objc_msgSend(v17, "section")}];
          v20 = v19;

          v14 = [v6 copy];
          v21 = [v5 indexPathBeforeUpdate];
          [v14 _deleteSection:{objc_msgSend(v21, "section")}];

          v22 = [v14 rangeForSection:v5[3]];
          v23 = [v5 indexPathBeforeUpdate];
          v24 = +[_MapUpdate itemMoveSection:toSection:fromRange:toRange:](_MapUpdate, "itemMoveSection:toSection:fromRange:toRange:", [v23 section], v5[3], v18, v20, v22, v20);
        }

        else
        {
          v29 = [v5 indexPathAfterUpdate];
          v24 = +[_MapUpdate itemMoveFromIndexIndexPath:toIndexPath:fromIndex:toIndex:](_MapUpdate, "itemMoveFromIndexIndexPath:toIndexPath:fromIndex:toIndex:", v14, v29, [v6 globalIndexForIndexPath:v14], objc_msgSend(v6, "globalIndexForIndexPath:", v29));
        }

        goto LABEL_21;
      }

      if (v7 == 1)
      {
        v8 = v5[6];
        v9 = [(UICollectionViewUpdateItem *)v5 _indexPath];
        v10 = v9;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v6 rangeForSection:{objc_msgSend(v9, "section")}];
          v13 = v12;

          v14 = [(UICollectionViewUpdateItem *)v5 _indexPath];
          +[_MapUpdate itemDeleteSection:deleteRange:](_MapUpdate, "itemDeleteSection:deleteRange:", [v14 section], v11, v13);
        }

        else
        {
          v30 = [v6 globalIndexForIndexPath:v9];

          v14 = [(UICollectionViewUpdateItem *)v5 _indexPath];
          [_MapUpdate itemDeleteItemAtIndexPath:v14 index:v30];
        }
        v15 = ;
        goto LABEL_20;
      }

LABEL_18:
      v24 = 0;
      goto LABEL_22;
    }

    v25 = v5[6];
    v26 = [(UICollectionViewUpdateItem *)v5 _indexPath];
    v27 = v26;
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [v6 rangeForSection:{objc_msgSend(v26, "section")}];

      v14 = [(UICollectionViewUpdateItem *)v5 _indexPath];
      v15 = +[_MapUpdate itemInsertSection:insertRange:](_MapUpdate, "itemInsertSection:insertRange:", [v14 section], v28, 0);
      goto LABEL_20;
    }
  }

  else
  {
    v27 = [(UICollectionViewUpdateItem *)0 _indexPath];
  }

  v31 = [v6 globalIndexForIndexPath:v27];

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [(UICollectionViewUpdateItem *)v5 _indexPath];
    v33 = [v6 indexPathIsSectionAppendingInsert:v32];

    if (!v33)
    {
      goto LABEL_18;
    }

    v34 = [(UICollectionViewUpdateItem *)v5 _indexPath];
    v35 = [v6 rangeForSection:{objc_msgSend(v34, "section")}];
    v31 = v35 + v36;

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  v14 = [(UICollectionViewUpdateItem *)v5 _indexPath];
  v15 = [_MapUpdate itemInsertItemAtIndexPath:v14 index:v31];
LABEL_20:
  v24 = v15;
LABEL_21:

LABEL_22:

  return v24;
}

- (id)_transformIndexPath:(id)a3 applyingUpdateItem:(id)a4 withSnapshot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_16;
  }

  v12 = [v10 globalIndexForIndexPath:v8];
  if ([v9 isMove])
  {
    if ([v9 isSectionUpdate])
    {
      v13 = [v8 section];
      if ([v9 moveFromSection] == v13)
      {
        v14 = MEMORY[0x1E696AC88];
        v15 = [v8 item];
        v16 = [v9 moveToSection];
        v17 = v14;
        v18 = v15;
LABEL_30:
        v23 = [v17 indexPathForItem:v18 inSection:v16];
LABEL_31:
        v19 = v23;
        if (v23)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v26 = v13 - ([v9 moveFromSection] < v13);
      if ([v9 moveToSection] <= v26)
      {
        ++v26;
      }

      v27 = MEMORY[0x1E696AC88];
      v18 = [v8 item];
      v17 = v27;
    }

    else
    {
      v21 = [v9 moveFromIndexPath];
      v22 = [v8 isEqual:v21];

      if (v22)
      {
        v23 = [v9 moveToIndexPath];
        goto LABEL_31;
      }

      v26 = [v8 section];
      v28 = [v8 item];
      v29 = [v9 moveFromIndexPath];
      v30 = [v29 section];

      v31 = [v9 moveToIndexPath];
      v32 = [v31 section];

      if (v26 != v32 && v26 != v30)
      {
        v19 = v8;
        goto LABEL_37;
      }

      if (v26 == v30)
      {
        v33 = [v9 moveFromIndexPath];
        v34 = [v33 item] < v28;

        v28 -= v34;
      }

      if (v26 == v32)
      {
        v35 = [v9 moveToIndexPath];
        v36 = [v35 item];

        if (v36 <= v28)
        {
          ++v28;
        }
      }

      v17 = MEMORY[0x1E696AC88];
      v18 = v28;
    }

    v16 = v26;
    goto LABEL_30;
  }

  if ([v9 isInsert])
  {
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v9 insertRange] <= v12)
      {
        [v9 insertRange];
        v19 = 0;
        v12 += v20;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_37;
  }

  v19 = 0;
  if ([v9 isDelete] && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [v9 deleteRange];
    if (v12 >= v24 && v12 - v24 < v25)
    {
      goto LABEL_16;
    }

    v37 = [v9 deleteRange];
    if (v12 < v37 + v38)
    {
LABEL_34:
      v19 = 0;
      goto LABEL_35;
    }

    [v9 deleteRange];
    v19 = 0;
    v12 -= v41;
  }

LABEL_35:
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = [v11 copy];
    [(_UIDataSourceUpdateMap *)self _updateSnapshot:v39 forUpdateItem:v9];
    v19 = [v39 indexPathForGlobalIndex:v12];
  }

LABEL_37:

  return v19;
}

- (int64_t)_transformSectionIndex:(int64_t)a3 applyingUpdateItem:(id)a4 withSnapshot:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:825 description:{@"Invalid parameter not satisfying: %@", @"snapshot != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_20:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"updateItem != nil"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_3:
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (![v9 isSectionUpdate])
  {
    goto LABEL_17;
  }

  if ([v9 isMove])
  {
    if ([v9 moveFromSection] == a3)
    {
      v11 = [v9 moveToSection];
      goto LABEL_18;
    }

    a3 -= [v9 moveFromSection] < a3;
    v12 = [v9 moveToSection];
    goto LABEL_11;
  }

  if ([v9 isInsert])
  {
    v12 = [v9 section];
LABEL_11:
    if (v12 > a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a3 + 1;
    }

    goto LABEL_18;
  }

  if (![v9 isDelete])
  {
LABEL_17:
    v11 = a3;
    goto LABEL_18;
  }

  if ([v9 section] != a3)
  {
    v11 = a3 - ([v9 section] < a3);
  }

LABEL_18:

  return v11;
}

- (void)_updateSnapshot:(id)a3 forUpdateItem:(id)a4
{
  v16 = a3;
  v5 = a4;
  if (![v5 isDelete])
  {
    if ([v5 isMove])
    {
      v8 = [v5 isSectionUpdate];
      v9 = [v5 moveFromSection];
      if (!v8)
      {
        [v16 _decrementSectionCount:v9];
        [v16 _incrementSectionCount:{objc_msgSend(v5, "moveToSection")}];
        goto LABEL_14;
      }

      [v16 _deleteSection:v9];
      v10 = [v5 moveToSection];
      [v5 moveToRange];
      v11 = v16;
      v12 = v10;
      v14 = v13;
    }

    else
    {
      if (![v5 isInsert])
      {
        goto LABEL_14;
      }

      if (![v5 isSectionUpdate])
      {
        v15 = [v5 indexPath];
        [v16 _incrementSectionCount:{objc_msgSend(v15, "section")}];

        goto LABEL_14;
      }

      v12 = [v5 section];
      v11 = v16;
      v14 = 0;
    }

    [v11 _insertSection:v12 withInitialCount:v14];
    goto LABEL_14;
  }

  v6 = [v5 isSectionUpdate];
  v7 = [v5 section];
  if (v6)
  {
    [v16 _deleteSection:v7];
  }

  else
  {
    [v16 _decrementSectionCount:v7];
  }

LABEL_14:
}

@end