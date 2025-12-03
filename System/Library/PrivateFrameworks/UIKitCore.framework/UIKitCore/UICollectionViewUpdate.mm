@interface UICollectionViewUpdate
- (NSString)description;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section;
- (id)finalIndexPathForInitialIndexPath:(id)path;
- (id)initWithCollectionView:(void *)view updateItems:(void *)items moveItemSourceIndexPaths:(void *)paths moveItemDestinationIndexPaths:(void *)indexPaths oldModel:(void *)model newModel:(double)newModel oldContentOffset:(double)offset newContentOffset:(double)self0;
- (id)initialIndexPathForFinalIndexPath:(id)path;
- (id)newIndexPathForSupplementaryElementOfKind:(void *)kind oldIndexPath:;
- (id)validatedNewIndexPathForSupplementaryElementOfKind:(void *)kind oldIndexPath:;
- (id)validatedOldIndexPathForSupplementaryElementOfKind:(void *)kind newIndexPath:;
- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)index;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index;
- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)index;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index;
- (uint64_t)hasDeletedAuxiliaryElementOfKind:(void *)kind atIndexPath:;
- (uint64_t)hasInsertedAuxiliaryElementOfKind:(void *)kind atIndexPath:;
- (uint64_t)hasMovedItemWithDestinationIndexPath:(uint64_t)path;
- (uint64_t)hasMovedItemWithSourceIndexPath:(uint64_t)path;
- (void)_computeAuxiliaryUpdates;
- (void)_generateUpdateMaps;
- (void)_processDeletedAuxiliaryOfKind:(void *)kind atIndexPath:(int)path isSupplementary:;
- (void)_processInsertedAuxiliaryOfKind:(void *)kind atIndexPath:(int)path isSupplementary:;
- (void)dealloc;
@end

@implementation UICollectionViewUpdate

- (void)dealloc
{
  _UIDataSourceDestroyUpdateMaps(&self->_updateMaps);
  v3.receiver = self;
  v3.super_class = UICollectionViewUpdate;
  [(UICollectionViewUpdate *)&v3 dealloc];
}

- (void)_generateUpdateMaps
{
  v3 = self->_oldModel;
  numberOfSections = [(UICollectionViewData *)v3 numberOfSections];
  if (numberOfSections == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v5 = numberOfSections;
  if (HIDWORD(numberOfSections))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [currentHandler handleFailureInFunction:v35 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v5}];

LABEL_2:
    v5 = 0xFFFFFFFFLL;
  }

  if (v3)
  {
    if ((*&v3->_collectionViewDataFlags & 2) == 0)
    {
      [(UICollectionViewData *)v3 _updateItemCounts];
    }

    totalItemCount = v3->_totalItemCount;
    if (totalItemCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    if (HIDWORD(totalItemCount))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
      [currentHandler2 handleFailureInFunction:v33 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", totalItemCount}];

LABEL_8:
      v7 = 0xFFFFFFFF00000000;
      goto LABEL_11;
    }
  }

  else
  {
    totalItemCount = 0;
  }

  v7 = totalItemCount << 32;
LABEL_11:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke;
  aBlock[3] = &unk_1E71001A8;
  v8 = v3;
  v67 = v8;
  v44 = _Block_copy(aBlock);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_2;
  v64[3] = &unk_1E71001A8;
  v9 = v8;
  v65 = v9;
  v43 = _Block_copy(v64);
  v10 = self->_newModel;
  numberOfSections2 = [(UICollectionViewData *)v10 numberOfSections];
  v12 = numberOfSections2;
  if (numberOfSections2 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (HIDWORD(numberOfSections2))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [currentHandler3 handleFailureInFunction:v37 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v12}];

    goto LABEL_12;
  }

LABEL_14:
  v40 = v9;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((*&v10->_collectionViewDataFlags & 2) == 0)
  {
    [(UICollectionViewData *)v10 _updateItemCounts];
  }

  v13 = v10->_totalItemCount;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(v13))
  {
LABEL_20:
    v14 = v13 << 32;
    goto LABEL_21;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
  [currentHandler4 handleFailureInFunction:v39 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v13}];

LABEL_18:
  v14 = 0xFFFFFFFF00000000;
LABEL_21:
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_3;
  v62[3] = &unk_1E71001A8;
  v15 = v10;
  v63 = v15;
  v42 = _Block_copy(v62);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_4;
  v60[3] = &unk_1E71001A8;
  v16 = v15;
  v61 = v16;
  v41 = _Block_copy(v60);
  v17 = self->_updateItems;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_5;
  v58[3] = &unk_1E71001D0;
  v18 = v17;
  v59 = v18;
  v19 = _Block_copy(v58);
  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_6;
  v53[3] = &unk_1E71001F8;
  v22 = v20;
  v54 = v22;
  v55[0] = _Block_copy(v53);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_7;
  v51[3] = &unk_1E71001F8;
  v23 = v21;
  v52 = v23;
  v55[1] = _Block_copy(v51);
  v56 = 0u;
  v57 = 0u;
  v48[0] = v7 | v5;
  v48[1] = _Block_copy(v44);
  v48[2] = _Block_copy(v43);
  v47[0] = v14 | v12;
  v47[1] = _Block_copy(v42);
  v47[2] = _Block_copy(v41);
  v24 = [(NSArray *)v18 count];
  __copy_constructor_8_8_sb0_sb8_sb16_sb24_sb32_sb40(v46, v55);
  v45 = 0;
  _UIDataSourceGenerateUpdateMaps(v48, v47, v24, v19, v46, &v45, v49);
  v25 = v45;
  v26 = v49[1];
  *&self->_updateMaps.oldSectionCount = v49[0];
  *&self->_updateMaps.oldSectionMap = v26;
  *&self->_updateMaps.oldGlobalItemMap = v49[2];
  *&self->_updateMaps.updatesAreInvalid = v50;
  deletedSections = self->_deletedSections;
  self->_deletedSections = v22;
  v28 = v22;

  insertedSections = self->_insertedSections;
  self->_insertedSections = v23;
  v30 = v23;

  invalidUpdatesErrorMessage = self->_invalidUpdatesErrorMessage;
  self->_invalidUpdatesErrorMessage = v25;

  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(v55);
}

- (void)_computeAuxiliaryUpdates
{
  v78 = *MEMORY[0x1E69E9840];
  if (self)
  {
    numberOfSections = [(UICollectionViewData *)*(self + 16) numberOfSections];
    numberOfSections2 = [(UICollectionViewData *)*(self + 24) numberOfSections];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(self + 96);
    *(self + 96) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(self + 104);
    *(self + 104) = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSections];
    v9 = *(self + 80);
    *(self + 80) = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSections2];
    v11 = *(self + 88);
    *(self + 88) = v10;

    if (numberOfSections >= 1)
    {
      do
      {
        v12 = *(self + 80);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [v12 addObject:dictionary];

        --numberOfSections;
      }

      while (numberOfSections);
    }

    if (numberOfSections2 >= 1)
    {
      do
      {
        v14 = *(self + 88);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [v14 addObject:dictionary2];

        --numberOfSections2;
      }

      while (numberOfSections2);
    }

    v48 = objc_opt_new();
    knownSupplementaryElementKinds = [(UICollectionViewData *)*(self + 16) knownSupplementaryElementKinds];
    knownSupplementaryElementKinds2 = [(UICollectionViewData *)*(self + 24) knownSupplementaryElementKinds];
    if (knownSupplementaryElementKinds)
    {
      v18 = [knownSupplementaryElementKinds setByAddingObjectsFromSet:knownSupplementaryElementKinds2];

      knownSupplementaryElementKinds2 = v18;
    }

    WeakRetained = objc_loadWeakRetained((self + 128));
    collectionViewLayout = [WeakRetained collectionViewLayout];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = knownSupplementaryElementKinds2;
    v52 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v52)
    {
      v50 = *v70;
      v51 = collectionViewLayout;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v70 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v69 + 1) + 8 * i);
          if ([collectionViewLayout _anchorForAuxiliaryElementOfKind:v22] == 3)
          {
            [v48 addObject:v22];
          }

          v23 = [collectionViewLayout indexPathsToDeleteForSupplementaryViewOfKind:v22];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v66;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v66 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [(UICollectionViewUpdate *)self _processDeletedAuxiliaryOfKind:v22 atIndexPath:*(*(&v65 + 1) + 8 * j) isSupplementary:1];
              }

              v25 = [v23 countByEnumeratingWithState:&v65 objects:v76 count:16];
            }

            while (v25);
          }

          v28 = [collectionViewLayout indexPathsToDeleteForDecorationViewOfKind:v22];
          v29 = v28;
          v30 = MEMORY[0x1E695E0F0];
          if (v28)
          {
            v30 = v28;
          }

          v31 = v30;

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v62;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v62 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                [(UICollectionViewUpdate *)self _processDeletedAuxiliaryOfKind:v22 atIndexPath:*(*(&v61 + 1) + 8 * k) isSupplementary:0];
              }

              v34 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
            }

            while (v34);
          }

          v37 = [collectionViewLayout indexPathsToInsertForSupplementaryViewOfKind:v22];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v57 objects:v74 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v58;
            do
            {
              for (m = 0; m != v39; ++m)
              {
                if (*v58 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                [(UICollectionViewUpdate *)self _processInsertedAuxiliaryOfKind:v22 atIndexPath:*(*(&v57 + 1) + 8 * m) isSupplementary:1];
              }

              v39 = [v37 countByEnumeratingWithState:&v57 objects:v74 count:16];
            }

            while (v39);
          }

          v42 = [collectionViewLayout indexPathsToInsertForDecorationViewOfKind:v22];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v43 = [v42 countByEnumeratingWithState:&v53 objects:v73 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v54;
            do
            {
              for (n = 0; n != v44; ++n)
              {
                if (*v54 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                [(UICollectionViewUpdate *)self _processInsertedAuxiliaryOfKind:v22 atIndexPath:*(*(&v53 + 1) + 8 * n) isSupplementary:0];
              }

              v44 = [v42 countByEnumeratingWithState:&v53 objects:v73 count:16];
            }

            while (v44);
          }

          collectionViewLayout = v51;
        }

        v52 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v52);
    }

    v47 = *(self + 136);
    *(self + 136) = v48;
  }
}

void __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  _UIDataSourceUpdateFromCollectionViewUpdateItem(v4, a3);
}

uint64_t __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_4(uint64_t a1, unsigned int a2)
{
  v2 = [(UICollectionViewData *)*(a1 + 32) numberOfItemsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_3(uint64_t a1, unsigned int a2)
{
  v2 = [(UICollectionViewData *)*(a1 + 32) numberOfItemsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [(UICollectionViewData *)*(a1 + 32) numberOfItemsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __45__UICollectionViewUpdate__generateUpdateMaps__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = [(UICollectionViewData *)*(a1 + 32) numberOfItemsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

- (id)initWithCollectionView:(void *)view updateItems:(void *)items moveItemSourceIndexPaths:(void *)paths moveItemDestinationIndexPaths:(void *)indexPaths oldModel:(void *)model newModel:(double)newModel oldContentOffset:(double)offset newContentOffset:(double)self0
{
  v21 = a2;
  viewCopy = view;
  itemsCopy = items;
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  modelCopy = model;
  if (self)
  {
    v35.receiver = self;
    v35.super_class = UICollectionViewUpdate;
    v27 = objc_msgSendSuper2(&v35, sel_init);
    self = v27;
    if (v27)
    {
      objc_storeWeak(v27 + 16, v21);
      objc_storeStrong(self + 1, view);
      objc_storeStrong(self + 2, indexPaths);
      objc_storeStrong(self + 3, model);
      *(self + 4) = newModel;
      *(self + 5) = offset;
      *(self + 6) = contentOffset;
      *(self + 7) = a11;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v29 = self[29];
      self[29] = uUID;

      v30 = [itemsCopy copy];
      v31 = self[18];
      self[18] = v30;

      v32 = [pathsCopy copy];
      v33 = self[19];
      self[19] = v32;

      [self _generateUpdateMaps];
    }
  }

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@ - %p: old:%@ new%@ items:<%@>]", v5, self, self->_oldModel, self->_newModel, self->_updateItems];

  return v6;
}

- (void)_processDeletedAuxiliaryOfKind:(void *)kind atIndexPath:(int)path isSupplementary:
{
  kindCopy = kind;
  v7 = [kindCopy length];
  if (v7 == 1)
  {
    v8 = *(self + 96);
  }

  else
  {
    section = [kindCopy section];
    if ((section & 0x8000000000000000) != 0 || section >= [*(self + 80) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      if (path)
      {
        v14 = @"indexPathsToDeleteForSupplementaryViewOfKind:";
      }

      else
      {
        v14 = @"indexPathsToDeleteForDecorationViewOfKind:";
      }

      _ui_shortDescription = [kindCopy _ui_shortDescription];
      numberOfSections = [(UICollectionViewData *)*(self + 16) numberOfSections];
      WeakRetained = objc_loadWeakRetained((self + 128));
      [currentHandler handleFailureInMethod:sel__processDeletedAuxiliaryOfKind_atIndexPath_isSupplementary_ object:self file:@"UICollectionViewUpdate.m" lineNumber:216 description:{@"UICollectionView received an index path with an invalid section from %@. Element kind: %@; index path: %@; number of sections before update: %ld; collection view: %@", v14, a2, _ui_shortDescription, numberOfSections, WeakRetained}];
    }

    v8 = [*(self + 80) objectAtIndexedSubscript:section];
  }

  v10 = v8;
  v11 = [v8 objectForKeyedSubscript:a2];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [v10 setObject:v11 forKeyedSubscript:a2];
  }

  if (v7 == 1)
  {
    item = [kindCopy indexAtPosition:0];
  }

  else
  {
    item = [kindCopy item];
  }

  [v11 addIndex:item];
}

- (void)_processInsertedAuxiliaryOfKind:(void *)kind atIndexPath:(int)path isSupplementary:
{
  kindCopy = kind;
  v7 = [kindCopy length];
  if (v7 == 1)
  {
    v8 = *(self + 104);
  }

  else
  {
    section = [kindCopy section];
    if ((section & 0x8000000000000000) != 0 || section >= [*(self + 88) count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      if (path)
      {
        v14 = @"indexPathsToInsertForSupplementaryViewOfKind:";
      }

      else
      {
        v14 = @"indexPathsToInsertForDecorationViewOfKind:";
      }

      _ui_shortDescription = [kindCopy _ui_shortDescription];
      numberOfSections = [(UICollectionViewData *)*(self + 24) numberOfSections];
      WeakRetained = objc_loadWeakRetained((self + 128));
      [currentHandler handleFailureInMethod:sel__processInsertedAuxiliaryOfKind_atIndexPath_isSupplementary_ object:self file:@"UICollectionViewUpdate.m" lineNumber:244 description:{@"UICollectionView received an index path with an invalid section from %@. Element kind: %@; index path: %@; number of sections after update: %ld, collection view: %@", v14, a2, _ui_shortDescription, numberOfSections, WeakRetained}];
    }

    v8 = [*(self + 88) objectAtIndexedSubscript:section];
  }

  v10 = v8;
  v11 = [v8 objectForKeyedSubscript:a2];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [v10 setObject:v11 forKeyedSubscript:a2];
  }

  if (v7 == 1)
  {
    item = [kindCopy indexAtPosition:0];
  }

  else
  {
    item = [kindCopy item];
  }

  [v11 addIndex:item];
}

- (id)newIndexPathForSupplementaryElementOfKind:(void *)kind oldIndexPath:
{
  v5 = a2;
  kindCopy = kind;
  if (self)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(self + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(self + 88))
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *v30 = 0;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v30, 2u);
        }
      }
    }

    else if (!v8 || !*(self + 88))
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &newIndexPathForSupplementaryElementOfKind_oldIndexPath____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    item = [kindCopy item];
    if (item != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = item;
      if (![*(self + 136) containsObject:v5])
      {
        section = [kindCopy section];
        v13 = *(self + 160);
        v14 = *(self + 176);
        if (!v14)
        {
          v27 = *(self + 160);
          v28 = section;
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [currentHandler handleFailureInFunction:v26 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];

          v13 = v27;
          section = v28;
        }

        if (section > 0x7FFFFFFFFFFFFFFELL || section >= v13 || (v15 = *(v14 + 4 * section), v15 == -1))
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = [*(self + 80) objectAtIndexedSubscript:?];
        v17 = [v16 valueForKey:v5];
        v18 = v11 - [v17 countOfIndexesInRange:{0, v11}];

        v19 = [*(self + 88) objectAtIndexedSubscript:v15];
        v20 = [v19 valueForKey:v5];
        v21 = [v20 countOfIndexesInRange:{0, v18 + 1}];

        v10 = [MEMORY[0x1E696AC88] indexPathForItem:v21 + v18 inSection:v15];
        goto LABEL_17;
      }

      self = [self finalIndexPathForInitialIndexPath:kindCopy];
      if (self)
      {
        goto LABEL_18;
      }
    }

    v10 = kindCopy;
LABEL_17:
    self = v10;
  }

LABEL_18:

  return self;
}

- (id)validatedNewIndexPathForSupplementaryElementOfKind:(void *)kind oldIndexPath:
{
  v5 = a2;
  kindCopy = kind;
  if (self)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(self + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(self + 88))
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *v22 = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v22, 2u);
        }
      }
    }

    else if (!v8 || !*(self + 88))
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &validatedNewIndexPathForSupplementaryElementOfKind_oldIndexPath____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    if ([kindCopy item] == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      self = 0;
      goto LABEL_9;
    }

    if (![*(self + 136) containsObject:v5])
    {
      section = [kindCopy section];
      if (section < [*(self + 80) count])
      {
        v11 = *(self + 160);
        v12 = *(self + 176);
        if (!v12)
        {
          v20 = *(self + 160);
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [currentHandler handleFailureInFunction:v19 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];

          v11 = v20;
          v12 = 0;
        }

        if (section > 0x7FFFFFFFFFFFFFFELL || section >= v11 || (v13 = *(v12 + 4 * section), v13 == -1))
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v13 < [*(self + 88) count])
        {
          v14 = [*(self + 80) objectAtIndexedSubscript:section];
          v15 = [v14 objectForKey:v5];

          if ([v15 containsIndex:{objc_msgSend(kindCopy, "item")}])
          {
            self = 0;
          }

          else
          {
            self = [(UICollectionViewUpdate *)self newIndexPathForSupplementaryElementOfKind:v5 oldIndexPath:kindCopy];
          }

          goto LABEL_9;
        }
      }

      goto LABEL_6;
    }

    self = [self finalIndexPathForInitialIndexPath:kindCopy];
  }

LABEL_9:

  return self;
}

- (id)validatedOldIndexPathForSupplementaryElementOfKind:(void *)kind newIndexPath:
{
  v5 = a2;
  kindCopy = kind;
  if (self)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(self + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(self + 88))
      {
        v36 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *v46 = 0;
          _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v46, 2u);
        }
      }
    }

    else if (!v8 || !*(self + 88))
    {
      v35 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D668) + 8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    if ([kindCopy item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    if ([*(self + 136) containsObject:v5])
    {
      self = [self initialIndexPathForFinalIndexPath:kindCopy];
      goto LABEL_38;
    }

    section = [kindCopy section];
    if (section >= [*(self + 88) count])
    {
LABEL_6:
      self = 0;
      goto LABEL_38;
    }

    v10 = [*(self + 88) objectAtIndexedSubscript:section];
    v11 = [v10 objectForKey:v5];

    if (v11 && ([v11 containsIndex:{objc_msgSend(kindCopy, "item")}] & 1) != 0)
    {
      goto LABEL_24;
    }

    v12 = *(self + 164);
    v13 = *(self + 184);
    if (!v13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [currentHandler handleFailureInFunction:v38 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
    }

    if (section > 0x7FFFFFFFFFFFFFFELL || section >= v12 || (v14 = *(v13 + 4 * section), v14 == -1))
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v14 >= [*(self + 80) count])
    {
LABEL_24:
      self = 0;
LABEL_37:

      goto LABEL_38;
    }

    v15 = v5;
    v16 = kindCopy;
    v17 = os_variant_has_internal_diagnostics();
    v18 = *(self + 80);
    if (v17)
    {
      if (!v18 || !*(self + 88))
      {
        v40 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          *v48 = 0;
          _os_log_fault_impl(&dword_188A29000, v40, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v48, 2u);
        }
      }
    }

    else if (!v18 || !*(self + 88))
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1041) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *v47 = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v47, 2u);
      }
    }

    item = [v16 item];
    if (item != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = item;
      if (![*(self + 136) containsObject:v15])
      {
        section2 = [v16 section];
        v23 = *(self + 164);
        v24 = *(self + 184);
        if (!v24)
        {
          v44 = section2;
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [currentHandler2 handleFailureInFunction:v42 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];

          section2 = v44;
        }

        if (section2 > 0x7FFFFFFFFFFFFFFELL || section2 >= v23 || (v25 = *(v24 + 4 * section2), v25 == -1))
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v43 = v25;
        v26 = [*(self + 88) objectAtIndexedSubscript:?];
        v27 = [v26 valueForKey:v15];
        v28 = v15;
        v29 = v21 - [v27 countOfIndexesInRange:{0, v21}];

        v30 = [*(self + 80) objectAtIndexedSubscript:v43];
        v31 = [v30 valueForKey:v28];
        v32 = [v31 countOfIndexesInRange:{0, v29 + 1}];

        v33 = v32 + v29;
        v15 = v28;
        v20 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:v43];
        goto LABEL_35;
      }

      self = [self initialIndexPathForFinalIndexPath:v16];
      if (self)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    v20 = v16;
LABEL_35:
    self = v20;
    goto LABEL_36;
  }

LABEL_38:

  return self;
}

- (uint64_t)hasInsertedAuxiliaryElementOfKind:(void *)kind atIndexPath:
{
  v5 = a2;
  kindCopy = kind;
  if (!self)
  {
    goto LABEL_13;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = *(self + 88);
  if (has_internal_diagnostics)
  {
    if (!v8)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *v19 = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v19, 2u);
      }
    }
  }

  else if (!v8)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &hasInsertedAuxiliaryElementOfKind_atIndexPath____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
    }
  }

  if (!kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_hasInsertedAuxiliaryElementOfKind_atIndexPath_ object:self file:@"UICollectionViewUpdate.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  if ([kindCopy length] == 1)
  {
    v9 = [*(self + 104) objectForKeyedSubscript:v5];
    item = [kindCopy indexAtPosition:0];
    goto LABEL_11;
  }

  section = [kindCopy section];
  if (section >= [*(self + 88) count])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = [*(self + 88) objectAtIndexedSubscript:section];
  v9 = [v12 objectForKey:v5];

  if (!v9)
  {
    v13 = 0;
    goto LABEL_12;
  }

  item = [kindCopy item];
LABEL_11:
  v13 = [v9 containsIndex:item];
LABEL_12:

LABEL_14:
  return v13;
}

- (uint64_t)hasDeletedAuxiliaryElementOfKind:(void *)kind atIndexPath:
{
  v5 = a2;
  kindCopy = kind;
  v7 = kindCopy;
  if (!self)
  {
    goto LABEL_13;
  }

  if (!kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_hasDeletedAuxiliaryElementOfKind_atIndexPath_ object:self file:@"UICollectionViewUpdate.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = *(self + 80);
  if (has_internal_diagnostics)
  {
    if (!v9)
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *v20 = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v20, 2u);
      }
    }
  }

  else if (!v9)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &hasDeletedAuxiliaryElementOfKind_atIndexPath____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
    }
  }

  if ([v7 length] == 1)
  {
    v10 = [*(self + 96) objectForKeyedSubscript:v5];
    item = [v7 indexAtPosition:0];
    goto LABEL_11;
  }

  section = [v7 section];
  if (section >= [*(self + 80) count])
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v13 = [*(self + 80) objectAtIndexedSubscript:section];
  v10 = [v13 objectForKey:v5];

  if (!v10)
  {
    v14 = 0;
    goto LABEL_12;
  }

  item = [v7 item];
LABEL_11:
  v14 = [v10 containsIndex:item];
LABEL_12:

LABEL_14:
  return v14;
}

- (uint64_t)hasMovedItemWithSourceIndexPath:(uint64_t)path
{
  v3 = a2;
  v4 = v3;
  if (path)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_hasMovedItemWithSourceIndexPath_ object:path file:@"UICollectionViewUpdate.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"sourceIndexPath != nil"}];
    }

    v5 = [path finalIndexPathForInitialIndexPath:v4];

    if (v5)
    {
      v6 = *(path + 144);
      if (v6)
      {
        if ([v6 containsObject:v4])
        {
          path = 1;
          goto LABEL_10;
        }

        if ([v4 item] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:{objc_msgSend(v4, "section")}];
          path = [*(path + 144) containsObject:v8];

          goto LABEL_10;
        }
      }
    }

    path = 0;
  }

LABEL_10:

  return path;
}

- (uint64_t)hasMovedItemWithDestinationIndexPath:(uint64_t)path
{
  v3 = a2;
  v4 = v3;
  if (path)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_hasMovedItemWithDestinationIndexPath_ object:path file:@"UICollectionViewUpdate.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"destinationIndexPath != nil"}];
    }

    v5 = [path initialIndexPathForFinalIndexPath:v4];

    if (v5)
    {
      v6 = *(path + 152);
      if (v6)
      {
        if ([v6 containsObject:v4])
        {
          path = 1;
          goto LABEL_10;
        }

        if ([v4 item] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:{objc_msgSend(v4, "section")}];
          path = [*(path + 152) containsObject:v8];

          goto LABEL_10;
        }
      }
    }

    path = 0;
  }

LABEL_10:

  return path;
}

- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)index
{
  oldGlobalItemCount = self->_updateMaps.oldGlobalItemCount;
  oldGlobalItemMap = self->_updateMaps.oldGlobalItemMap;
  if (!oldGlobalItemMap)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewGlobalItemForOldGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [currentHandler handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldGlobalItemMap != NULL"}];
  }

  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (oldGlobalItemCount <= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = oldGlobalItemMap[index];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)index
{
  newGlobalItemCount = self->_updateMaps.newGlobalItemCount;
  newGlobalItemMap = self->_updateMaps.newGlobalItemMap;
  if (!newGlobalItemMap)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldGlobalItemForNewGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [currentHandler handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newGlobalItemMap != NULL"}];
  }

  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (newGlobalItemCount <= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = newGlobalItemMap[index];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)finalIndexPathForInitialIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (v5 = [(UICollectionViewUpdate *)self finalGlobalIndexForInitialGlobalIndex:[(UICollectionViewData *)self->_oldModel validatedGlobalIndexForItemAtIndexPath:pathCopy]], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(UICollectionViewData *)self->_newModel validatedIndexPathForItemAtGlobalIndex:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initialIndexPathForFinalIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (v5 = [(UICollectionViewUpdate *)self initialGlobalIndexForFinalGlobalIndex:[(UICollectionViewData *)self->_newModel validatedGlobalIndexForItemAtIndexPath:pathCopy]], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(UICollectionViewData *)self->_oldModel validatedIndexPathForItemAtGlobalIndex:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)index
{
  oldSectionCount = self->_updateMaps.oldSectionCount;
  oldSectionMap = self->_updateMaps.oldSectionMap;
  if (!oldSectionMap)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [currentHandler handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];
  }

  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (oldSectionCount <= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = oldSectionMap[index];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)index
{
  newSectionCount = self->_updateMaps.newSectionCount;
  newSectionMap = self->_updateMaps.newSectionMap;
  if (!newSectionMap)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [currentHandler handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
  }

  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (newSectionCount <= index)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = newSectionMap[index];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section
{
  numberOfSections = [(UICollectionViewData *)self->_oldModel numberOfSections];
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((section & 0x8000000000000000) == 0 && numberOfSections > section)
  {
    v7 = [(UICollectionViewData *)self->_oldModel numberOfItemsBeforeSection:section];
    v6 = [(UICollectionViewData *)self->_oldModel numberOfItemsInSection:section];
  }

  v8 = v7;
  result.length = v6;
  result.location = v8;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section
{
  numberOfSections = [(UICollectionViewData *)self->_newModel numberOfSections];
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((section & 0x8000000000000000) == 0 && numberOfSections > section)
  {
    v7 = [(UICollectionViewData *)self->_newModel numberOfItemsBeforeSection:section];
    v6 = [(UICollectionViewData *)self->_newModel numberOfItemsInSection:section];
  }

  v8 = v7;
  result.length = v6;
  result.location = v8;
  return result;
}

@end