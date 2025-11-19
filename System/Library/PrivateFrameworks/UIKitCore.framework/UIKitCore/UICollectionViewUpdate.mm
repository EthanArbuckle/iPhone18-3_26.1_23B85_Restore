@interface UICollectionViewUpdate
- (NSString)description;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3;
- (id)finalIndexPathForInitialIndexPath:(id)a3;
- (id)initWithCollectionView:(void *)a3 updateItems:(void *)a4 moveItemSourceIndexPaths:(void *)a5 moveItemDestinationIndexPaths:(void *)a6 oldModel:(void *)a7 newModel:(double)a8 oldContentOffset:(double)a9 newContentOffset:(double)a10;
- (id)initialIndexPathForFinalIndexPath:(id)a3;
- (id)newIndexPathForSupplementaryElementOfKind:(void *)a3 oldIndexPath:;
- (id)validatedNewIndexPathForSupplementaryElementOfKind:(void *)a3 oldIndexPath:;
- (id)validatedOldIndexPathForSupplementaryElementOfKind:(void *)a3 newIndexPath:;
- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)a3;
- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3;
- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)a3;
- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3;
- (uint64_t)hasDeletedAuxiliaryElementOfKind:(void *)a3 atIndexPath:;
- (uint64_t)hasInsertedAuxiliaryElementOfKind:(void *)a3 atIndexPath:;
- (uint64_t)hasMovedItemWithDestinationIndexPath:(uint64_t)a1;
- (uint64_t)hasMovedItemWithSourceIndexPath:(uint64_t)a1;
- (void)_computeAuxiliaryUpdates;
- (void)_generateUpdateMaps;
- (void)_processDeletedAuxiliaryOfKind:(void *)a3 atIndexPath:(int)a4 isSupplementary:;
- (void)_processInsertedAuxiliaryOfKind:(void *)a3 atIndexPath:(int)a4 isSupplementary:;
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
  v4 = [(UICollectionViewData *)v3 numberOfSections];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v5 = v4;
  if (HIDWORD(v4))
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v34 handleFailureInFunction:v35 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v5}];

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
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
      [v32 handleFailureInFunction:v33 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", totalItemCount}];

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
  v11 = [(UICollectionViewData *)v10 numberOfSections];
  v12 = v11;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (HIDWORD(v11))
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v36 handleFailureInFunction:v37 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v12}];

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

  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
  [v38 handleFailureInFunction:v39 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v13}];

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
  if (a1)
  {
    v2 = [(UICollectionViewData *)*(a1 + 16) numberOfSections];
    v3 = [(UICollectionViewData *)*(a1 + 24) numberOfSections];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(a1 + 96);
    *(a1 + 96) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1 + 104);
    *(a1 + 104) = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v9 = *(a1 + 80);
    *(a1 + 80) = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    v11 = *(a1 + 88);
    *(a1 + 88) = v10;

    if (v2 >= 1)
    {
      do
      {
        v12 = *(a1 + 80);
        v13 = [MEMORY[0x1E695DF90] dictionary];
        [v12 addObject:v13];

        --v2;
      }

      while (v2);
    }

    if (v3 >= 1)
    {
      do
      {
        v14 = *(a1 + 88);
        v15 = [MEMORY[0x1E695DF90] dictionary];
        [v14 addObject:v15];

        --v3;
      }

      while (v3);
    }

    v48 = objc_opt_new();
    v16 = [(UICollectionViewData *)*(a1 + 16) knownSupplementaryElementKinds];
    v17 = [(UICollectionViewData *)*(a1 + 24) knownSupplementaryElementKinds];
    if (v16)
    {
      v18 = [v16 setByAddingObjectsFromSet:v17];

      v17 = v18;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 128));
    v20 = [WeakRetained collectionViewLayout];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v17;
    v52 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v52)
    {
      v50 = *v70;
      v51 = v20;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v70 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v69 + 1) + 8 * i);
          if ([v20 _anchorForAuxiliaryElementOfKind:v22] == 3)
          {
            [v48 addObject:v22];
          }

          v23 = [v20 indexPathsToDeleteForSupplementaryViewOfKind:v22];
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

                [(UICollectionViewUpdate *)a1 _processDeletedAuxiliaryOfKind:v22 atIndexPath:*(*(&v65 + 1) + 8 * j) isSupplementary:1];
              }

              v25 = [v23 countByEnumeratingWithState:&v65 objects:v76 count:16];
            }

            while (v25);
          }

          v28 = [v20 indexPathsToDeleteForDecorationViewOfKind:v22];
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

                [(UICollectionViewUpdate *)a1 _processDeletedAuxiliaryOfKind:v22 atIndexPath:*(*(&v61 + 1) + 8 * k) isSupplementary:0];
              }

              v34 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
            }

            while (v34);
          }

          v37 = [v20 indexPathsToInsertForSupplementaryViewOfKind:v22];
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

                [(UICollectionViewUpdate *)a1 _processInsertedAuxiliaryOfKind:v22 atIndexPath:*(*(&v57 + 1) + 8 * m) isSupplementary:1];
              }

              v39 = [v37 countByEnumeratingWithState:&v57 objects:v74 count:16];
            }

            while (v39);
          }

          v42 = [v20 indexPathsToInsertForDecorationViewOfKind:v22];
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

                [(UICollectionViewUpdate *)a1 _processInsertedAuxiliaryOfKind:v22 atIndexPath:*(*(&v53 + 1) + 8 * n) isSupplementary:0];
              }

              v44 = [v42 countByEnumeratingWithState:&v53 objects:v73 count:16];
            }

            while (v44);
          }

          v20 = v51;
        }

        v52 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v52);
    }

    v47 = *(a1 + 136);
    *(a1 + 136) = v48;
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

- (id)initWithCollectionView:(void *)a3 updateItems:(void *)a4 moveItemSourceIndexPaths:(void *)a5 moveItemDestinationIndexPaths:(void *)a6 oldModel:(void *)a7 newModel:(double)a8 oldContentOffset:(double)a9 newContentOffset:(double)a10
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  if (a1)
  {
    v35.receiver = a1;
    v35.super_class = UICollectionViewUpdate;
    v27 = objc_msgSendSuper2(&v35, sel_init);
    a1 = v27;
    if (v27)
    {
      objc_storeWeak(v27 + 16, v21);
      objc_storeStrong(a1 + 1, a3);
      objc_storeStrong(a1 + 2, a6);
      objc_storeStrong(a1 + 3, a7);
      *(a1 + 4) = a8;
      *(a1 + 5) = a9;
      *(a1 + 6) = a10;
      *(a1 + 7) = a11;
      v28 = [MEMORY[0x1E696AFB0] UUID];
      v29 = a1[29];
      a1[29] = v28;

      v30 = [v23 copy];
      v31 = a1[18];
      a1[18] = v30;

      v32 = [v24 copy];
      v33 = a1[19];
      a1[19] = v32;

      [a1 _generateUpdateMaps];
    }
  }

  return a1;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@ - %p: old:%@ new%@ items:<%@>]", v5, self, self->_oldModel, self->_newModel, self->_updateItems];

  return v6;
}

- (void)_processDeletedAuxiliaryOfKind:(void *)a3 atIndexPath:(int)a4 isSupplementary:
{
  v18 = a3;
  v7 = [v18 length];
  if (v7 == 1)
  {
    v8 = *(a1 + 96);
  }

  else
  {
    v9 = [v18 section];
    if ((v9 & 0x8000000000000000) != 0 || v9 >= [*(a1 + 80) count])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      if (a4)
      {
        v14 = @"indexPathsToDeleteForSupplementaryViewOfKind:";
      }

      else
      {
        v14 = @"indexPathsToDeleteForDecorationViewOfKind:";
      }

      v15 = [v18 _ui_shortDescription];
      v16 = [(UICollectionViewData *)*(a1 + 16) numberOfSections];
      WeakRetained = objc_loadWeakRetained((a1 + 128));
      [v13 handleFailureInMethod:sel__processDeletedAuxiliaryOfKind_atIndexPath_isSupplementary_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:216 description:{@"UICollectionView received an index path with an invalid section from %@. Element kind: %@; index path: %@; number of sections before update: %ld; collection view: %@", v14, a2, v15, v16, WeakRetained}];
    }

    v8 = [*(a1 + 80) objectAtIndexedSubscript:v9];
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
    v12 = [v18 indexAtPosition:0];
  }

  else
  {
    v12 = [v18 item];
  }

  [v11 addIndex:v12];
}

- (void)_processInsertedAuxiliaryOfKind:(void *)a3 atIndexPath:(int)a4 isSupplementary:
{
  v18 = a3;
  v7 = [v18 length];
  if (v7 == 1)
  {
    v8 = *(a1 + 104);
  }

  else
  {
    v9 = [v18 section];
    if ((v9 & 0x8000000000000000) != 0 || v9 >= [*(a1 + 88) count])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      if (a4)
      {
        v14 = @"indexPathsToInsertForSupplementaryViewOfKind:";
      }

      else
      {
        v14 = @"indexPathsToInsertForDecorationViewOfKind:";
      }

      v15 = [v18 _ui_shortDescription];
      v16 = [(UICollectionViewData *)*(a1 + 24) numberOfSections];
      WeakRetained = objc_loadWeakRetained((a1 + 128));
      [v13 handleFailureInMethod:sel__processInsertedAuxiliaryOfKind_atIndexPath_isSupplementary_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:244 description:{@"UICollectionView received an index path with an invalid section from %@. Element kind: %@; index path: %@; number of sections after update: %ld, collection view: %@", v14, a2, v15, v16, WeakRetained}];
    }

    v8 = [*(a1 + 88) objectAtIndexedSubscript:v9];
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
    v12 = [v18 indexAtPosition:0];
  }

  else
  {
    v12 = [v18 item];
  }

  [v11 addIndex:v12];
}

- (id)newIndexPathForSupplementaryElementOfKind:(void *)a3 oldIndexPath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(a1 + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(a1 + 88))
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *v30 = 0;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v30, 2u);
        }
      }
    }

    else if (!v8 || !*(a1 + 88))
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &newIndexPathForSupplementaryElementOfKind_oldIndexPath____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    v9 = [v6 item];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      if (![*(a1 + 136) containsObject:v5])
      {
        v12 = [v6 section];
        v13 = *(a1 + 160);
        v14 = *(a1 + 176);
        if (!v14)
        {
          v27 = *(a1 + 160);
          v28 = v12;
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [v25 handleFailureInFunction:v26 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];

          v13 = v27;
          v12 = v28;
        }

        if (v12 > 0x7FFFFFFFFFFFFFFELL || v12 >= v13 || (v15 = *(v14 + 4 * v12), v15 == -1))
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = [*(a1 + 80) objectAtIndexedSubscript:?];
        v17 = [v16 valueForKey:v5];
        v18 = v11 - [v17 countOfIndexesInRange:{0, v11}];

        v19 = [*(a1 + 88) objectAtIndexedSubscript:v15];
        v20 = [v19 valueForKey:v5];
        v21 = [v20 countOfIndexesInRange:{0, v18 + 1}];

        v10 = [MEMORY[0x1E696AC88] indexPathForItem:v21 + v18 inSection:v15];
        goto LABEL_17;
      }

      a1 = [a1 finalIndexPathForInitialIndexPath:v6];
      if (a1)
      {
        goto LABEL_18;
      }
    }

    v10 = v6;
LABEL_17:
    a1 = v10;
  }

LABEL_18:

  return a1;
}

- (id)validatedNewIndexPathForSupplementaryElementOfKind:(void *)a3 oldIndexPath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(a1 + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(a1 + 88))
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *v22 = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v22, 2u);
        }
      }
    }

    else if (!v8 || !*(a1 + 88))
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &validatedNewIndexPathForSupplementaryElementOfKind_oldIndexPath____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    if ([v6 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      a1 = 0;
      goto LABEL_9;
    }

    if (![*(a1 + 136) containsObject:v5])
    {
      v10 = [v6 section];
      if (v10 < [*(a1 + 80) count])
      {
        v11 = *(a1 + 160);
        v12 = *(a1 + 176);
        if (!v12)
        {
          v20 = *(a1 + 160);
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [v18 handleFailureInFunction:v19 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];

          v11 = v20;
          v12 = 0;
        }

        if (v10 > 0x7FFFFFFFFFFFFFFELL || v10 >= v11 || (v13 = *(v12 + 4 * v10), v13 == -1))
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v13 < [*(a1 + 88) count])
        {
          v14 = [*(a1 + 80) objectAtIndexedSubscript:v10];
          v15 = [v14 objectForKey:v5];

          if ([v15 containsIndex:{objc_msgSend(v6, "item")}])
          {
            a1 = 0;
          }

          else
          {
            a1 = [(UICollectionViewUpdate *)a1 newIndexPathForSupplementaryElementOfKind:v5 oldIndexPath:v6];
          }

          goto LABEL_9;
        }
      }

      goto LABEL_6;
    }

    a1 = [a1 finalIndexPathForInitialIndexPath:v6];
  }

LABEL_9:

  return a1;
}

- (id)validatedOldIndexPathForSupplementaryElementOfKind:(void *)a3 newIndexPath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = *(a1 + 80);
    if (has_internal_diagnostics)
    {
      if (!v8 || !*(a1 + 88))
      {
        v36 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *v46 = 0;
          _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v46, 2u);
        }
      }
    }

    else if (!v8 || !*(a1 + 88))
    {
      v35 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D668) + 8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", buf, 2u);
      }
    }

    if ([v6 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    if ([*(a1 + 136) containsObject:v5])
    {
      a1 = [a1 initialIndexPathForFinalIndexPath:v6];
      goto LABEL_38;
    }

    v9 = [v6 section];
    if (v9 >= [*(a1 + 88) count])
    {
LABEL_6:
      a1 = 0;
      goto LABEL_38;
    }

    v10 = [*(a1 + 88) objectAtIndexedSubscript:v9];
    v11 = [v10 objectForKey:v5];

    if (v11 && ([v11 containsIndex:{objc_msgSend(v6, "item")}] & 1) != 0)
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 164);
    v13 = *(a1 + 184);
    if (!v13)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v37 handleFailureInFunction:v38 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
    }

    if (v9 > 0x7FFFFFFFFFFFFFFELL || v9 >= v12 || (v14 = *(v13 + 4 * v9), v14 == -1))
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v14 >= [*(a1 + 80) count])
    {
LABEL_24:
      a1 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v15 = v5;
    v16 = v6;
    v17 = os_variant_has_internal_diagnostics();
    v18 = *(a1 + 80);
    if (v17)
    {
      if (!v18 || !*(a1 + 88))
      {
        v40 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          *v48 = 0;
          _os_log_fault_impl(&dword_188A29000, v40, OS_LOG_TYPE_FAULT, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v48, 2u);
        }
      }
    }

    else if (!v18 || !*(a1 + 88))
    {
      v39 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1041) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *v47 = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "UICollectionView internal inconsistency: _computeAuxiliaryUpdates must be called by the layout first", v47, 2u);
      }
    }

    v19 = [v16 item];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v19;
      if (![*(a1 + 136) containsObject:v15])
      {
        v22 = [v16 section];
        v23 = *(a1 + 164);
        v24 = *(a1 + 184);
        if (!v24)
        {
          v44 = v22;
          v41 = [MEMORY[0x1E696AAA8] currentHandler];
          v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
          [v41 handleFailureInFunction:v42 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];

          v22 = v44;
        }

        if (v22 > 0x7FFFFFFFFFFFFFFELL || v22 >= v23 || (v25 = *(v24 + 4 * v22), v25 == -1))
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v43 = v25;
        v26 = [*(a1 + 88) objectAtIndexedSubscript:?];
        v27 = [v26 valueForKey:v15];
        v28 = v15;
        v29 = v21 - [v27 countOfIndexesInRange:{0, v21}];

        v30 = [*(a1 + 80) objectAtIndexedSubscript:v43];
        v31 = [v30 valueForKey:v28];
        v32 = [v31 countOfIndexesInRange:{0, v29 + 1}];

        v33 = v32 + v29;
        v15 = v28;
        v20 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:v43];
        goto LABEL_35;
      }

      a1 = [a1 initialIndexPathForFinalIndexPath:v16];
      if (a1)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    v20 = v16;
LABEL_35:
    a1 = v20;
    goto LABEL_36;
  }

LABEL_38:

  return a1;
}

- (uint64_t)hasInsertedAuxiliaryElementOfKind:(void *)a3 atIndexPath:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_13;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = *(a1 + 88);
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

  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:sel_hasInsertedAuxiliaryElementOfKind_atIndexPath_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  if ([v6 length] == 1)
  {
    v9 = [*(a1 + 104) objectForKeyedSubscript:v5];
    v10 = [v6 indexAtPosition:0];
    goto LABEL_11;
  }

  v11 = [v6 section];
  if (v11 >= [*(a1 + 88) count])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = [*(a1 + 88) objectAtIndexedSubscript:v11];
  v9 = [v12 objectForKey:v5];

  if (!v9)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v10 = [v6 item];
LABEL_11:
  v13 = [v9 containsIndex:v10];
LABEL_12:

LABEL_14:
  return v13;
}

- (uint64_t)hasDeletedAuxiliaryElementOfKind:(void *)a3 atIndexPath:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:sel_hasDeletedAuxiliaryElementOfKind_atIndexPath_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = *(a1 + 80);
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
    v10 = [*(a1 + 96) objectForKeyedSubscript:v5];
    v11 = [v7 indexAtPosition:0];
    goto LABEL_11;
  }

  v12 = [v7 section];
  if (v12 >= [*(a1 + 80) count])
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v13 = [*(a1 + 80) objectAtIndexedSubscript:v12];
  v10 = [v13 objectForKey:v5];

  if (!v10)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = [v7 item];
LABEL_11:
  v14 = [v10 containsIndex:v11];
LABEL_12:

LABEL_14:
  return v14;
}

- (uint64_t)hasMovedItemWithSourceIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_hasMovedItemWithSourceIndexPath_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"sourceIndexPath != nil"}];
    }

    v5 = [a1 finalIndexPathForInitialIndexPath:v4];

    if (v5)
    {
      v6 = *(a1 + 144);
      if (v6)
      {
        if ([v6 containsObject:v4])
        {
          a1 = 1;
          goto LABEL_10;
        }

        if ([v4 item] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:{objc_msgSend(v4, "section")}];
          a1 = [*(a1 + 144) containsObject:v8];

          goto LABEL_10;
        }
      }
    }

    a1 = 0;
  }

LABEL_10:

  return a1;
}

- (uint64_t)hasMovedItemWithDestinationIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_hasMovedItemWithDestinationIndexPath_ object:a1 file:@"UICollectionViewUpdate.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"destinationIndexPath != nil"}];
    }

    v5 = [a1 initialIndexPathForFinalIndexPath:v4];

    if (v5)
    {
      v6 = *(a1 + 152);
      if (v6)
      {
        if ([v6 containsObject:v4])
        {
          a1 = 1;
          goto LABEL_10;
        }

        if ([v4 item] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:{objc_msgSend(v4, "section")}];
          a1 = [*(a1 + 152) containsObject:v8];

          goto LABEL_10;
        }
      }
    }

    a1 = 0;
  }

LABEL_10:

  return a1;
}

- (int64_t)finalGlobalIndexForInitialGlobalIndex:(int64_t)a3
{
  oldGlobalItemCount = self->_updateMaps.oldGlobalItemCount;
  oldGlobalItemMap = self->_updateMaps.oldGlobalItemMap;
  if (!oldGlobalItemMap)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewGlobalItemForOldGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldGlobalItemMap != NULL"}];
  }

  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (oldGlobalItemCount <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = oldGlobalItemMap[a3];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)initialGlobalIndexForFinalGlobalIndex:(int64_t)a3
{
  newGlobalItemCount = self->_updateMaps.newGlobalItemCount;
  newGlobalItemMap = self->_updateMaps.newGlobalItemMap;
  if (!newGlobalItemMap)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldGlobalItemForNewGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newGlobalItemMap != NULL"}];
  }

  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (newGlobalItemCount <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = newGlobalItemMap[a3];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)finalIndexPathForInitialIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = [(UICollectionViewUpdate *)self finalGlobalIndexForInitialGlobalIndex:[(UICollectionViewData *)self->_oldModel validatedGlobalIndexForItemAtIndexPath:v4]], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(UICollectionViewData *)self->_newModel validatedIndexPathForItemAtGlobalIndex:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initialIndexPathForFinalIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = [(UICollectionViewUpdate *)self initialGlobalIndexForFinalGlobalIndex:[(UICollectionViewData *)self->_newModel validatedGlobalIndexForItemAtIndexPath:v4]], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(UICollectionViewData *)self->_oldModel validatedIndexPathForItemAtGlobalIndex:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)finalSectionIndexForInitialSectionIndex:(int64_t)a3
{
  oldSectionCount = self->_updateMaps.oldSectionCount;
  oldSectionMap = self->_updateMaps.oldSectionMap;
  if (!oldSectionMap)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];
  }

  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (oldSectionCount <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = oldSectionMap[a3];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)initialSectionIndexForFinalSectionIndex:(int64_t)a3
{
  newSectionCount = self->_updateMaps.newSectionCount;
  newSectionMap = self->_updateMaps.newSectionMap;
  if (!newSectionMap)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
  }

  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (newSectionCount <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = newSectionMap[a3];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v5 = [(UICollectionViewData *)self->_oldModel numberOfSections];
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    v7 = [(UICollectionViewData *)self->_oldModel numberOfItemsBeforeSection:a3];
    v6 = [(UICollectionViewData *)self->_oldModel numberOfItemsInSection:a3];
  }

  v8 = v7;
  result.length = v6;
  result.location = v8;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v5 = [(UICollectionViewData *)self->_newModel numberOfSections];
  v6 = 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    v7 = [(UICollectionViewData *)self->_newModel numberOfItemsBeforeSection:a3];
    v6 = [(UICollectionViewData *)self->_newModel numberOfItemsInSection:a3];
  }

  v8 = v7;
  result.length = v6;
  result.location = v8;
  return result;
}

@end