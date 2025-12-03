@interface _UIDataSourceUpdateMap
+ (id)mapForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot batchUpdateItems:(id)items;
+ (id)mapForInitialSnapshot:(id)snapshot orderedUpdateItems:(id)items;
+ (id)validatedMapForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot batchUpdateItems:(id)items;
- (BOOL)_isSectionOnlyIndexPath:(id)path;
- (BOOL)_mapIsSimpleInsertMoveSequence;
- (_UIDataSourceUpdateMap)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot updateItems:(id)items assertForInvalidUpdates:(BOOL)updates;
- (id)_findUpdateForIdentifier:(id)identifier;
- (id)_mapUpdateForCollectionUpdateItem:(id)item snapshot:(id)snapshot;
- (id)_newGlobalItemMapDescription;
- (id)_newSectionMapDescription;
- (id)_oldGlobalItemMapDescription;
- (id)_oldSectionMapDescription;
- (id)_rebasedUpdatesForUpdate:(id)update;
- (id)_transformIndexPath:(id)path applyingUpdateItem:(id)item withSnapshot:(id)snapshot;
- (id)_updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:(id)identifier;
- (id)description;
- (id)finalIndexPathForIndexPath:(id)path startingAtUpdateWithIdentifier:(id)identifier;
- (id)finalIndexPathForInitialIndexPath:(id)path;
- (id)finalUpdateForInitialUpdate:(id)update;
- (id)initialIndexPathForFinalIndexPath:(id)path;
- (id)initialIndexPathForIndexPath:(id)path beforeUpdateWithIdentifier:(id)identifier;
- (id)initialUpdateForFinalUpdate:(id)update;
- (id)initialUpdateForUpdateIdentifier:(id)identifier;
- (id)rebasedMapFromNewBaseMap:(id)map;
- (id)submapAfterUpdate:(id)update;
- (id)submapBeforeUpdate:(id)update;
- (id)updateMapByRevertingUpdateWithIdentifier:(id)identifier;
- (int64_t)_transformSectionIndex:(int64_t)index applyingUpdateItem:(id)item withSnapshot:(id)snapshot;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index;
- (void)_computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:(id)items;
- (void)_performAppendingInsertsFixups;
- (void)_updateSnapshot:(id)snapshot forUpdateItem:(id)item;
@end

@implementation _UIDataSourceUpdateMap

- (_UIDataSourceUpdateMap)initWithInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot updateItems:(id)items assertForInvalidUpdates:(BOOL)updates
{
  updatesCopy = updates;
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = _UIDataSourceUpdateMap;
  v14 = [(_UIDataSourceUpdateMap *)&v21 init];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:itemsCopy copyItems:1];
  originalUpdateItems = v14->_originalUpdateItems;
  v14->_originalUpdateItems = v15;

  objc_storeStrong(&v14->_initialSnapshot, snapshot);
  objc_storeStrong(&v14->_finalSnapshot, finalSnapshot);
  if (!finalSnapshotCopy)
  {
    [(_UIDataSourceUpdateMap *)v14 _computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:itemsCopy];
    goto LABEL_6;
  }

  v17 = [[_UIDataSourceBatchUpdateMapHelper alloc] initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy updates:itemsCopy assertingForInvalidUpdates:updatesCopy];
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

+ (id)mapForInitialSnapshot:(id)snapshot orderedUpdateItems:(id)items
{
  itemsCopy = items;
  snapshotCopy = snapshot;
  v8 = [[self alloc] initWithInitialSnapshot:snapshotCopy finalSnapshot:0 updateItems:itemsCopy assertForInvalidUpdates:1];

  return v8;
}

+ (id)mapForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot batchUpdateItems:(id)items
{
  itemsCopy = items;
  finalSnapshotCopy = finalSnapshot;
  snapshotCopy = snapshot;
  v11 = [[self alloc] initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy updateItems:itemsCopy assertForInvalidUpdates:1];

  return v11;
}

+ (id)validatedMapForInitialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot batchUpdateItems:(id)items
{
  itemsCopy = items;
  finalSnapshotCopy = finalSnapshot;
  snapshotCopy = snapshot;
  v11 = [[self alloc] initWithInitialSnapshot:snapshotCopy finalSnapshot:finalSnapshotCopy updateItems:itemsCopy assertForInvalidUpdates:0];

  return v11;
}

- (id)finalIndexPathForInitialIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if ([pathCopy section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "item") == 0x7FFFFFFFFFFFFFFFLL)
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
  updateItems = [(_UIDataSourceUpdateMap *)self updateItems];
  v12 = [updateItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(updateItems);
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
        v13 = [updateItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)initialIndexPathForFinalIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if ([pathCopy section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "item") == 0x7FFFFFFFFFFFFFFFLL)
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
  reverseUpdateItems = [(_UIDataSourceUpdateMap *)self reverseUpdateItems];
  v12 = [reverseUpdateItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(reverseUpdateItems);
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
        v13 = [reverseUpdateItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = index;
    batchUpdateMapHelper = self->_batchUpdateMapHelper;
    if (batchUpdateMapHelper)
    {

      return [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper finalSectionIndexForInitialSectionIndex:index];
    }

    else
    {
      if (index < 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      numberOfSections = [initialSnapshot numberOfSections];

      if (numberOfSections <= indexCopy)
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
        updateItems = [(_UIDataSourceUpdateMap *)self updateItems];
        v11 = [updateItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(updateItems);
              }

              v15 = *(*(&v16 + 1) + 8 * i);
              if ([v15 isSectionUpdate])
              {
                indexCopy = [(_UIDataSourceUpdateMap *)self _transformSectionIndex:indexCopy applyingUpdateItem:v15 withSnapshot:v9];
                [(_UIDataSourceUpdateMap *)self _updateSnapshot:v9 forUpdateItem:v15];
                if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
                {
                  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_20;
                }
              }
            }

            v12 = [updateItems countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        return indexCopy;
      }
    }
  }

  return result;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = index;
    batchUpdateMapHelper = self->_batchUpdateMapHelper;
    if (batchUpdateMapHelper)
    {

      return [(_UIDataSourceBatchUpdateMapHelper *)batchUpdateMapHelper initialSectionIndexForFinalSectionIndex:index];
    }

    else
    {
      if (index < 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      finalSnapshot = [(_UIDataSourceUpdateMap *)self finalSnapshot];
      numberOfSections = [finalSnapshot numberOfSections];

      if (numberOfSections <= indexCopy)
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
        reverseUpdateItems = [(_UIDataSourceUpdateMap *)self reverseUpdateItems];
        v11 = [reverseUpdateItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(reverseUpdateItems);
              }

              v15 = *(*(&v16 + 1) + 8 * i);
              if ([v15 isSectionUpdate])
              {
                indexCopy = [(_UIDataSourceUpdateMap *)self _transformSectionIndex:indexCopy applyingUpdateItem:v15 withSnapshot:v9];
                [(_UIDataSourceUpdateMap *)self _updateSnapshot:v9 forUpdateItem:v15];
                if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
                {
                  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_20;
                }
              }
            }

            v12 = [reverseUpdateItems countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        return indexCopy;
      }
    }
  }

  return result;
}

- (id)rebasedMapFromNewBaseMap:(id)map
{
  v72[2] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  initialSnapshot = [mapCopy initialSnapshot];
  initialSnapshot2 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v8 = [initialSnapshot isEqual:initialSnapshot2];

  if (v8)
  {
    if (!mapCopy)
    {
      goto LABEL_53;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:213 description:@"Initial snapshots must start at the same place. They dont."];

    if (!mapCopy)
    {
      goto LABEL_53;
    }
  }

  updates = [mapCopy updates];
  v10 = [updates count];

  if (v10)
  {
    if (![mapCopy isBatchUpdateMap])
    {
      updates2 = [mapCopy updates];
      firstObject = [updates2 firstObject];
      v31 = [(_UIDataSourceUpdateMap *)self _rebasedUpdatesForUpdate:firstObject];

      finalSnapshot = [mapCopy finalSnapshot];
      v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot orderedUpdateItems:v31];

LABEL_38:
      [v28 _performAppendingInsertsFixups];
      selfCopy3 = v28;
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

          v38 = [mapCopy finalUpdateForInitialUpdate:v37];
          if (!v38)
          {
            v50 = *(__UILogGetCategoryCachedImpl("UICollectionView", &_MergedGlobals_1047) + 8);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              selfCopy2 = self;
              v67 = 2112;
              v68 = v37;
              v69 = 2112;
              v70 = mapCopy;
              _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_ERROR, "Data source update map could not compute initial update value after shadow updates. Map: %@, update: %@, newBaseMap: %@", buf, 0x20u);
            }

            goto LABEL_47;
          }

          if ([v12 count])
          {
            finalSnapshot2 = [mapCopy finalSnapshot];
            v40 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot2 orderedUpdateItems:v12];

            v41 = [v40 finalUpdateForInitialUpdate:v38];
            if (!v41)
            {
              v55 = *(__UILogGetCategoryCachedImpl("UICollectionView", &qword_1ED49D718) + 8);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                selfCopy2 = self;
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

          finalSnapshot3 = [mapCopy finalSnapshot];
          v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot3 orderedUpdateItems:v12];

          goto LABEL_37;
        }
      }
    }

    updates3 = [(_UIDataSourceUpdateMap *)self updates];
    v12 = [updates3 objectAtIndexedSubscript:0];

    updates4 = [(_UIDataSourceUpdateMap *)self updates];
    v14 = [updates4 objectAtIndexedSubscript:1];

    v15 = [mapCopy finalUpdateForInitialUpdate:v12];
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

      indexPathAfterUpdate = [v14 indexPathAfterUpdate];
      v20 = [mapCopy finalIndexPathForInitialIndexPath:indexPathAfterUpdate];

      if (v20)
      {
LABEL_10:
        v21 = [UICollectionViewUpdateItem alloc];
        indexPathAfterUpdate2 = [v16 indexPathAfterUpdate];
        v23 = [(UICollectionViewUpdateItem *)v21 initWithInitialIndexPath:indexPathAfterUpdate2 finalIndexPath:v20 updateAction:3];

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

        finalSnapshot4 = [mapCopy finalSnapshot];
        v72[0] = v16;
        v72[1] = v23;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
        v28 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot4 orderedUpdateItems:v27];

LABEL_37:
        goto LABEL_38;
      }

      finalSnapshot5 = [mapCopy finalSnapshot];
      indexPathAfterUpdate3 = [v14 indexPathAfterUpdate];
      v53 = [finalSnapshot5 indexPathIsSectionAppendingInsert:indexPathAfterUpdate3];

      if (v53)
      {
        indexPathAfterUpdate4 = [v14 indexPathAfterUpdate];
        if (indexPathAfterUpdate4)
        {
          v20 = indexPathAfterUpdate4;
          goto LABEL_10;
        }
      }
    }

LABEL_50:
    selfCopy3 = 0;
    goto LABEL_51;
  }

LABEL_53:
  selfCopy3 = self;
LABEL_54:

  return selfCopy3;
}

- (id)updateMapByRevertingUpdateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  updates = [(_UIDataSourceUpdateMap *)self updates];
  v7 = [updates count];

  if (v7)
  {
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"updateIdentifier != nil"}];
    }

    updates2 = [(_UIDataSourceUpdateMap *)self updates];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67___UIDataSourceUpdateMap_updateMapByRevertingUpdateWithIdentifier___block_invoke;
    v33[3] = &unk_1E7100650;
    v34 = identifierCopy;
    v9 = [updates2 indexOfObjectPassingTest:v33];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:302 description:@"Internal error: could not find specified update by identifier."];
    }

    updates3 = [(_UIDataSourceUpdateMap *)self updates];
    v11 = [updates3 objectAtIndexedSubscript:v9];

    updates4 = [(_UIDataSourceUpdateMap *)self updates];
    v13 = [updates4 subarrayWithRange:{0, v9 + 1}];

    initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v15 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:v13];
    finalSnapshot = [v15 finalSnapshot];

    updates5 = [(_UIDataSourceUpdateMap *)self updates];
    v18 = [updates5 count] - (v9 + 1);

    updates6 = [(_UIDataSourceUpdateMap *)self updates];
    v20 = [updates6 subarrayWithRange:{v9 + 1, v18}];

    v21 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot orderedUpdateItems:v20];
    v22 = [v21 finalUpdateForInitialUpdate:v11];
    revertedUpdate = [(UICollectionViewUpdateItem *)v22 revertedUpdate];

    v24 = [(_UIDataSourceUpdateMap *)self _rebasedUpdatesForUpdate:revertedUpdate];
    v25 = [v24 mutableCopy];

    [v25 removeObjectAtIndex:v9];
    initialSnapshot2 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v27 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot2 orderedUpdateItems:v25];

    [v27 _performAppendingInsertsFixups];
  }

  else
  {
    initialSnapshot3 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    updates7 = [(_UIDataSourceUpdateMap *)self updates];
    v27 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot3 orderedUpdateItems:updates7];
  }

  return v27;
}

- (id)initialUpdateForUpdateIdentifier:(id)identifier
{
  v4 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:identifier];
  if (v4 && (-[_UIDataSourceUpdateMap updates](self, "updates"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 indexOfObjectIdenticalTo:v4], v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    updates = [(_UIDataSourceUpdateMap *)self updates];
    v9 = [updates subarrayWithRange:{0, v6 + 1}];

    initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v11 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:v9];

    v12 = v4[11];
    v13 = [v11 _updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:v12];

    updates2 = [v13 updates];
    firstObject = [updates2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)finalIndexPathForIndexPath:(id)path startingAtUpdateWithIdentifier:(id)identifier
{
  pathCopy = path;
  v7 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:identifier];
  if (v7)
  {
    v8 = [(_UIDataSourceUpdateMap *)self submapAfterUpdate:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 finalIndexPathForInitialIndexPath:pathCopy];
    }

    else
    {
      v10 = pathCopy;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initialIndexPathForIndexPath:(id)path beforeUpdateWithIdentifier:(id)identifier
{
  pathCopy = path;
  if (!pathCopy)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v8 = [(_UIDataSourceUpdateMap *)self _findUpdateForIdentifier:identifier];
  if (v8)
  {
    v9 = [(_UIDataSourceUpdateMap *)self submapBeforeUpdate:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 initialIndexPathForFinalIndexPath:pathCopy];
      if (v11)
      {
        v12 = v11;
LABEL_11:

        goto LABEL_12;
      }

      if (!*(v8 + 80) && (*(v8 + 56) & 1) != 0)
      {
        initialSnapshot = [v10 initialSnapshot];
        _indexPath = [(UICollectionViewUpdateItem *)v8 _indexPath];
        v12 = [initialSnapshot indexPathForAppendingInsertInSection:{objc_msgSend(_indexPath, "section")}];

        if (v12)
        {
          goto LABEL_11;
        }
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:383 description:@"Could not determine the intialIndexPath before shadow update"];

    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (id)finalUpdateForInitialUpdate:(id)update
{
  updateCopy = update;
  indexPathBeforeUpdate = [updateCopy indexPathBeforeUpdate];
  v6 = [(_UIDataSourceUpdateMap *)self finalIndexPathForInitialIndexPath:indexPathBeforeUpdate];

  indexPathAfterUpdate = [updateCopy indexPathAfterUpdate];
  v8 = [(_UIDataSourceUpdateMap *)self finalIndexPathForInitialIndexPath:indexPathAfterUpdate];

  if (v8)
  {
    goto LABEL_2;
  }

  if (updateCopy && updateCopy[10])
  {
    v10 = [UICollectionViewUpdateItem alloc];
    v9 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  _indexPath = [(UICollectionViewUpdateItem *)updateCopy _indexPath];
  v19 = [initialSnapshot indexPathIsSectionAppendingInsert:_indexPath];

  if (!v19)
  {
    v8 = 0;
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  finalSnapshot = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  _indexPath2 = [(UICollectionViewUpdateItem *)updateCopy _indexPath];
  v8 = [finalSnapshot indexPathForAppendingInsertInSection:{objc_msgSend(_indexPath2, "section")}];

  v9 = 1;
LABEL_3:
  v10 = [UICollectionViewUpdateItem alloc];
  if (!updateCopy)
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v11 = updateCopy[10];
LABEL_9:
  v12 = [(UICollectionViewUpdateItem *)v10 initWithInitialIndexPath:v6 finalIndexPath:v8 updateAction:v11];
  v13 = v12;
  if (v12)
  {
    *&v12->_updateItemFlags = *&v12->_updateItemFlags & 0xFE | v9;
  }

  indexPathBeforeUpdate2 = [(UICollectionViewUpdateItem *)v12 indexPathBeforeUpdate];
  if (indexPathBeforeUpdate2)
  {
    goto LABEL_12;
  }

  indexPathAfterUpdate2 = [(UICollectionViewUpdateItem *)v13 indexPathAfterUpdate];

  if (!indexPathAfterUpdate2)
  {
    indexPathBeforeUpdate2 = v13;
    v13 = 0;
LABEL_12:
  }

  return v13;
}

- (id)initialUpdateForFinalUpdate:(id)update
{
  updateCopy = update;
  indexPathBeforeUpdate = [updateCopy indexPathBeforeUpdate];
  v6 = [(_UIDataSourceUpdateMap *)self initialIndexPathForFinalIndexPath:indexPathBeforeUpdate];

  indexPathAfterUpdate = [updateCopy indexPathAfterUpdate];
  v8 = [(_UIDataSourceUpdateMap *)self initialIndexPathForFinalIndexPath:indexPathAfterUpdate];

  v9 = [UICollectionViewUpdateItem alloc];
  if (updateCopy)
  {
    v10 = updateCopy[10];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UICollectionViewUpdateItem *)v9 initWithInitialIndexPath:v6 finalIndexPath:v8 updateAction:v10];
  indexPathAfterUpdate2 = [(UICollectionViewUpdateItem *)v11 indexPathAfterUpdate];
  if (indexPathAfterUpdate2)
  {
    goto LABEL_4;
  }

  indexPathBeforeUpdate2 = [(UICollectionViewUpdateItem *)v11 indexPathBeforeUpdate];

  if (!indexPathBeforeUpdate2)
  {
    indexPathAfterUpdate2 = v11;
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
  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  finalSnapshot = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  updates = [(_UIDataSourceUpdateMap *)self updates];
  v9 = [v3 stringWithFormat:@"<%@: %p intialSnapshot = %@; finalSnapshot = %@; updates = %@>", v5, self, initialSnapshot, finalSnapshot, updates];;

  return v9;
}

- (id)_oldSectionMapDescription
{
  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  numberOfSections = [initialSnapshot numberOfSections];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIDataSourceUpdateMap__oldSectionMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(numberOfSections, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_newSectionMapDescription
{
  finalSnapshot = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  numberOfSections = [finalSnapshot numberOfSections];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIDataSourceUpdateMap__newSectionMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(numberOfSections, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_oldGlobalItemMapDescription
{
  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  numberOfItems = [initialSnapshot numberOfItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___UIDataSourceUpdateMap__oldGlobalItemMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(numberOfItems, v8);
  v6 = [v5 description];

  return v6;
}

- (id)_newGlobalItemMapDescription
{
  finalSnapshot = [(_UIDataSourceUpdateMap *)self finalSnapshot];
  numberOfItems = [finalSnapshot numberOfItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___UIDataSourceUpdateMap__newGlobalItemMapDescription__block_invoke;
  v8[3] = &unk_1E70FA518;
  v8[4] = self;
  v5 = _mapAsArray(numberOfItems, v8);
  v6 = [v5 description];

  return v6;
}

- (BOOL)_isSectionOnlyIndexPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy length] == 1 || objc_msgSend(pathCopy, "item") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)_mapIsSimpleInsertMoveSequence
{
  updates = [(_UIDataSourceUpdateMap *)self updates];
  v4 = [updates count];

  if (v4 == 2)
  {
    updates2 = [(_UIDataSourceUpdateMap *)self updates];
    v6 = [updates2 objectAtIndexedSubscript:0];

    updates3 = [(_UIDataSourceUpdateMap *)self updates];
    v8 = [updates3 objectAtIndexedSubscript:1];

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
      indexPathAfterUpdate = [v6 indexPathAfterUpdate];
      indexPathBeforeUpdate = [v8 indexPathBeforeUpdate];
      v9 = [indexPathAfterUpdate isEqual:indexPathBeforeUpdate];

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
  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  v4 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:MEMORY[0x1E695E0F0]];

  updates = [(_UIDataSourceUpdateMap *)self updates];
  v6 = [updates count];

  if (v6)
  {
    v7 = 0;
    do
    {
      updates2 = [(_UIDataSourceUpdateMap *)self updates];
      v9 = [updates2 objectAtIndexedSubscript:v7];

      if (!v9 || !*(v9 + 80))
      {
        finalSnapshot = [v4 finalSnapshot];
        _indexPath = [(UICollectionViewUpdateItem *)v9 _indexPath];
        v12 = [finalSnapshot indexPathIsSectionAppendingInsert:_indexPath];

        if (v9)
        {
          *(v9 + 56) = *(v9 + 56) & 0xFE | v12;
        }
      }

      finalSnapshot2 = [v4 finalSnapshot];
      v18[0] = v9;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot2 orderedUpdateItems:v14];

      ++v7;
      updates3 = [(_UIDataSourceUpdateMap *)self updates];
      v17 = [updates3 count];

      v4 = v15;
    }

    while (v7 < v17);
  }

  else
  {
    v15 = v4;
  }
}

- (id)_findUpdateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  updates = [(_UIDataSourceUpdateMap *)self updates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51___UIDataSourceUpdateMap__findUpdateForIdentifier___block_invoke;
  v9[3] = &unk_1E70FD008;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [updates enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)submapBeforeUpdate:(id)update
{
  updateCopy = update;
  originalUpdateItems = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45___UIDataSourceUpdateMap_submapBeforeUpdate___block_invoke;
  v13[3] = &unk_1E7100650;
  v6 = updateCopy;
  v14 = v6;
  v7 = [originalUpdateItems indexOfObjectPassingTest:v13];

  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
      goto LABEL_7;
    }

    originalUpdateItems2 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
    initialSnapshot2 = [originalUpdateItems2 subarrayWithRange:{0, v7}];

    initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:initialSnapshot2];
  }

  else
  {
    initialSnapshot2 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
    v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot2 orderedUpdateItems:MEMORY[0x1E695E0F0]];
  }

LABEL_7:

  return v8;
}

- (id)submapAfterUpdate:(id)update
{
  updateCopy = update;
  originalUpdateItems = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44___UIDataSourceUpdateMap_submapAfterUpdate___block_invoke;
  v21[3] = &unk_1E7100650;
  v6 = updateCopy;
  v22 = v6;
  v7 = [originalUpdateItems indexOfObjectPassingTest:v21];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    originalUpdateItems2 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
    v10 = [originalUpdateItems2 count];

    if ((v10 - v7) < 1)
    {
      initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:MEMORY[0x1E695E0F0]];
    }

    else
    {
      originalUpdateItems3 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
      v12 = [originalUpdateItems3 subarrayWithRange:{0, v7 + 1}];

      initialSnapshot2 = [(_UIDataSourceUpdateMap *)self initialSnapshot];
      v14 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot2 orderedUpdateItems:v12];

      initialSnapshot = [v14 finalSnapshot];

      originalUpdateItems4 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
      v17 = [originalUpdateItems4 count];

      if (v10 <= v17)
      {
        originalUpdateItems5 = [(_UIDataSourceUpdateMap *)self originalUpdateItems];
        v18 = [originalUpdateItems5 subarrayWithRange:{v7 + 1, v10 - v7 - 1}];
      }

      else
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:v18];
    }
  }

  return v8;
}

- (id)_updateMapByRevertingAllUpdatesExceptUpdateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(_UIDataSourceUpdateMap *)self isBatchUpdateMap])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:585 description:@"Cannot revert for a batch updates map."];
  }

  initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
  updates = [(_UIDataSourceUpdateMap *)self updates];
  v8 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:updates];

  updates2 = [v8 updates];
  v10 = [updates2 count];

  if (v10 >= 2)
  {
    v11 = 0;
    do
    {
      updates3 = [v8 updates];
      v13 = [updates3 count];

      if (v13)
      {
        v14 = 0;
        while (1)
        {
          updates4 = [v8 updates];
          v16 = [updates4 objectAtIndexedSubscript:v14];

          v17 = v16 ? v16[11] : 0;
          v18 = v17;
          v19 = [v18 isEqual:identifierCopy];

          if ((v19 & 1) == 0)
          {
            break;
          }

          ++v14;
          updates5 = [v8 updates];
          v21 = [updates5 count];

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
      updates6 = [(_UIDataSourceUpdateMap *)self updates];
      v26 = [updates6 count];

      if (v11 > v26)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = NSStringFromSelector(a2);
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:600 description:{@"ERROR: failed to revert intermediate update; failing to create map for %@", v28}];
      }

      ++v11;
      updates7 = [v8 updates];
      v30 = [updates7 count];
    }

    while (v30 > 1);
  }

  updates8 = [v8 updates];
  v32 = [updates8 count];

  if (v32 != 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = NSStringFromSelector(a2);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:603 description:{@"Resultant map does not have exactly 1 item in it; failing to create map for %@", v36}];
  }

  return v8;
}

- (id)_rebasedUpdatesForUpdate:(id)update
{
  v36[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (updateCopy)
  {
    updates7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updates = [(_UIDataSourceUpdateMap *)self updates];
    v6 = [updates count];

    if (v6)
    {
      v32 = a2;
      v7 = 0;
      v8 = -1;
      do
      {
        updates2 = [(_UIDataSourceUpdateMap *)self updates];
        v10 = [updates2 objectAtIndexedSubscript:v7];

        updates3 = [(_UIDataSourceUpdateMap *)self updates];
        v12 = [updates3 subarrayWithRange:{0, v7}];

        initialSnapshot = [(_UIDataSourceUpdateMap *)self initialSnapshot];
        v35 = v12;
        v14 = [_UIDataSourceUpdateMap mapForInitialSnapshot:initialSnapshot orderedUpdateItems:v12];

        finalSnapshot = [v14 finalSnapshot];

        v36[0] = v10;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        v17 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot orderedUpdateItems:v16];

        ++v7;
        updates4 = [(_UIDataSourceUpdateMap *)self updates];
        v19 = [updates4 count];

        updates5 = [(_UIDataSourceUpdateMap *)self updates];
        v21 = [updates5 subarrayWithRange:{v7, v19 + v8}];
        v22 = [v21 arrayByAddingObject:updateCopy];

        finalSnapshot2 = [v17 finalSnapshot];
        v24 = [_UIDataSourceUpdateMap mapForInitialSnapshot:finalSnapshot2 orderedUpdateItems:v22];

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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v32 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:645 description:@"Failed to rebase update."];
        }

        [updates7 addObject:v25];

        updates6 = [(_UIDataSourceUpdateMap *)self updates];
        v29 = [updates6 count];

        --v8;
      }

      while (v7 < v29);
    }
  }

  else
  {
    updates7 = [(_UIDataSourceUpdateMap *)self updates];
  }

  return updates7;
}

- (void)_computeFinalSnapshotAndReverseUpdateItemsForCollectionViewUpdateItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [(_UIDataSourceSnapshotter *)self->_initialSnapshot copy];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = itemsCopy;
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
        reverseUpdateItem = [v13 reverseUpdateItem];
        if (reverseUpdateItem)
        {
          [array addObject:v13];
          [array2 insertObject:reverseUpdateItem atIndex:0];
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
  [(_UIDataSourceUpdateMap *)self setUpdateItems:array];
  [(_UIDataSourceUpdateMap *)self setReverseUpdateItems:array2];
}

- (id)_mapUpdateForCollectionUpdateItem:(id)item snapshot:(id)snapshot
{
  itemCopy = item;
  snapshotCopy = snapshot;
  if (itemCopy)
  {
    v7 = itemCopy[10];
    if (v7)
    {
      if (v7 == 3)
      {
        v16 = itemCopy[6];
        indexPathBeforeUpdate = [itemCopy indexPathBeforeUpdate];
        _indexPath2 = indexPathBeforeUpdate;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [snapshotCopy rangeForSection:{objc_msgSend(indexPathBeforeUpdate, "section")}];
          v20 = v19;

          _indexPath2 = [snapshotCopy copy];
          indexPathBeforeUpdate2 = [itemCopy indexPathBeforeUpdate];
          [_indexPath2 _deleteSection:{objc_msgSend(indexPathBeforeUpdate2, "section")}];

          v22 = [_indexPath2 rangeForSection:itemCopy[3]];
          indexPathBeforeUpdate3 = [itemCopy indexPathBeforeUpdate];
          v24 = +[_MapUpdate itemMoveSection:toSection:fromRange:toRange:](_MapUpdate, "itemMoveSection:toSection:fromRange:toRange:", [indexPathBeforeUpdate3 section], itemCopy[3], v18, v20, v22, v20);
        }

        else
        {
          indexPathAfterUpdate = [itemCopy indexPathAfterUpdate];
          v24 = +[_MapUpdate itemMoveFromIndexIndexPath:toIndexPath:fromIndex:toIndex:](_MapUpdate, "itemMoveFromIndexIndexPath:toIndexPath:fromIndex:toIndex:", _indexPath2, indexPathAfterUpdate, [snapshotCopy globalIndexForIndexPath:_indexPath2], objc_msgSend(snapshotCopy, "globalIndexForIndexPath:", indexPathAfterUpdate));
        }

        goto LABEL_21;
      }

      if (v7 == 1)
      {
        v8 = itemCopy[6];
        _indexPath = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
        v10 = _indexPath;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [snapshotCopy rangeForSection:{objc_msgSend(_indexPath, "section")}];
          v13 = v12;

          _indexPath2 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
          +[_MapUpdate itemDeleteSection:deleteRange:](_MapUpdate, "itemDeleteSection:deleteRange:", [_indexPath2 section], v11, v13);
        }

        else
        {
          v30 = [snapshotCopy globalIndexForIndexPath:_indexPath];

          _indexPath2 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
          [_MapUpdate itemDeleteItemAtIndexPath:_indexPath2 index:v30];
        }
        v15 = ;
        goto LABEL_20;
      }

LABEL_18:
      v24 = 0;
      goto LABEL_22;
    }

    v25 = itemCopy[6];
    _indexPath3 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
    _indexPath4 = _indexPath3;
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [snapshotCopy rangeForSection:{objc_msgSend(_indexPath3, "section")}];

      _indexPath2 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
      v15 = +[_MapUpdate itemInsertSection:insertRange:](_MapUpdate, "itemInsertSection:insertRange:", [_indexPath2 section], v28, 0);
      goto LABEL_20;
    }
  }

  else
  {
    _indexPath4 = [(UICollectionViewUpdateItem *)0 _indexPath];
  }

  v31 = [snapshotCopy globalIndexForIndexPath:_indexPath4];

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _indexPath5 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
    v33 = [snapshotCopy indexPathIsSectionAppendingInsert:_indexPath5];

    if (!v33)
    {
      goto LABEL_18;
    }

    _indexPath6 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
    v35 = [snapshotCopy rangeForSection:{objc_msgSend(_indexPath6, "section")}];
    v31 = v35 + v36;

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  _indexPath2 = [(UICollectionViewUpdateItem *)itemCopy _indexPath];
  v15 = [_MapUpdate itemInsertItemAtIndexPath:_indexPath2 index:v31];
LABEL_20:
  v24 = v15;
LABEL_21:

LABEL_22:

  return v24;
}

- (id)_transformIndexPath:(id)path applyingUpdateItem:(id)item withSnapshot:(id)snapshot
{
  pathCopy = path;
  itemCopy = item;
  snapshotCopy = snapshot;
  v11 = snapshotCopy;
  if (!pathCopy)
  {
    goto LABEL_16;
  }

  v12 = [snapshotCopy globalIndexForIndexPath:pathCopy];
  if ([itemCopy isMove])
  {
    if ([itemCopy isSectionUpdate])
    {
      section = [pathCopy section];
      if ([itemCopy moveFromSection] == section)
      {
        v14 = MEMORY[0x1E696AC88];
        item = [pathCopy item];
        moveToSection = [itemCopy moveToSection];
        v17 = v14;
        item2 = item;
LABEL_30:
        moveToIndexPath = [v17 indexPathForItem:item2 inSection:moveToSection];
LABEL_31:
        v19 = moveToIndexPath;
        if (moveToIndexPath)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      section2 = section - ([itemCopy moveFromSection] < section);
      if ([itemCopy moveToSection] <= section2)
      {
        ++section2;
      }

      v27 = MEMORY[0x1E696AC88];
      item2 = [pathCopy item];
      v17 = v27;
    }

    else
    {
      moveFromIndexPath = [itemCopy moveFromIndexPath];
      v22 = [pathCopy isEqual:moveFromIndexPath];

      if (v22)
      {
        moveToIndexPath = [itemCopy moveToIndexPath];
        goto LABEL_31;
      }

      section2 = [pathCopy section];
      item3 = [pathCopy item];
      moveFromIndexPath2 = [itemCopy moveFromIndexPath];
      section3 = [moveFromIndexPath2 section];

      moveToIndexPath2 = [itemCopy moveToIndexPath];
      section4 = [moveToIndexPath2 section];

      if (section2 != section4 && section2 != section3)
      {
        v19 = pathCopy;
        goto LABEL_37;
      }

      if (section2 == section3)
      {
        moveFromIndexPath3 = [itemCopy moveFromIndexPath];
        v34 = [moveFromIndexPath3 item] < item3;

        item3 -= v34;
      }

      if (section2 == section4)
      {
        moveToIndexPath3 = [itemCopy moveToIndexPath];
        item4 = [moveToIndexPath3 item];

        if (item4 <= item3)
        {
          ++item3;
        }
      }

      v17 = MEMORY[0x1E696AC88];
      item2 = item3;
    }

    moveToSection = section2;
    goto LABEL_30;
  }

  if ([itemCopy isInsert])
  {
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([itemCopy insertRange] <= v12)
      {
        [itemCopy insertRange];
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
  if ([itemCopy isDelete] && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    deleteRange = [itemCopy deleteRange];
    if (v12 >= deleteRange && v12 - deleteRange < v25)
    {
      goto LABEL_16;
    }

    deleteRange2 = [itemCopy deleteRange];
    if (v12 < deleteRange2 + v38)
    {
LABEL_34:
      v19 = 0;
      goto LABEL_35;
    }

    [itemCopy deleteRange];
    v19 = 0;
    v12 -= v41;
  }

LABEL_35:
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = [v11 copy];
    [(_UIDataSourceUpdateMap *)self _updateSnapshot:v39 forUpdateItem:itemCopy];
    v19 = [v39 indexPathForGlobalIndex:v12];
  }

LABEL_37:

  return v19;
}

- (int64_t)_transformSectionIndex:(int64_t)index applyingUpdateItem:(id)item withSnapshot:(id)snapshot
{
  itemCopy = item;
  snapshotCopy = snapshot;
  if (!snapshotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:825 description:{@"Invalid parameter not satisfying: %@", @"snapshot != nil"}];

    if (itemCopy)
    {
      goto LABEL_3;
    }

LABEL_20:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDataSourceUpdateMap.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"updateItem != nil"}];

    goto LABEL_3;
  }

  if (!itemCopy)
  {
    goto LABEL_20;
  }

LABEL_3:
  indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (![itemCopy isSectionUpdate])
  {
    goto LABEL_17;
  }

  if ([itemCopy isMove])
  {
    if ([itemCopy moveFromSection] == index)
    {
      indexCopy2 = [itemCopy moveToSection];
      goto LABEL_18;
    }

    index -= [itemCopy moveFromSection] < index;
    moveToSection = [itemCopy moveToSection];
    goto LABEL_11;
  }

  if ([itemCopy isInsert])
  {
    moveToSection = [itemCopy section];
LABEL_11:
    if (moveToSection > index)
    {
      indexCopy2 = index;
    }

    else
    {
      indexCopy2 = index + 1;
    }

    goto LABEL_18;
  }

  if (![itemCopy isDelete])
  {
LABEL_17:
    indexCopy2 = index;
    goto LABEL_18;
  }

  if ([itemCopy section] != index)
  {
    indexCopy2 = index - ([itemCopy section] < index);
  }

LABEL_18:

  return indexCopy2;
}

- (void)_updateSnapshot:(id)snapshot forUpdateItem:(id)item
{
  snapshotCopy = snapshot;
  itemCopy = item;
  if (![itemCopy isDelete])
  {
    if ([itemCopy isMove])
    {
      isSectionUpdate = [itemCopy isSectionUpdate];
      moveFromSection = [itemCopy moveFromSection];
      if (!isSectionUpdate)
      {
        [snapshotCopy _decrementSectionCount:moveFromSection];
        [snapshotCopy _incrementSectionCount:{objc_msgSend(itemCopy, "moveToSection")}];
        goto LABEL_14;
      }

      [snapshotCopy _deleteSection:moveFromSection];
      moveToSection = [itemCopy moveToSection];
      [itemCopy moveToRange];
      v11 = snapshotCopy;
      section = moveToSection;
      v14 = v13;
    }

    else
    {
      if (![itemCopy isInsert])
      {
        goto LABEL_14;
      }

      if (![itemCopy isSectionUpdate])
      {
        indexPath = [itemCopy indexPath];
        [snapshotCopy _incrementSectionCount:{objc_msgSend(indexPath, "section")}];

        goto LABEL_14;
      }

      section = [itemCopy section];
      v11 = snapshotCopy;
      v14 = 0;
    }

    [v11 _insertSection:section withInitialCount:v14];
    goto LABEL_14;
  }

  isSectionUpdate2 = [itemCopy isSectionUpdate];
  section2 = [itemCopy section];
  if (isSectionUpdate2)
  {
    [snapshotCopy _deleteSection:section2];
  }

  else
  {
    [snapshotCopy _decrementSectionCount:section2];
  }

LABEL_14:
}

@end