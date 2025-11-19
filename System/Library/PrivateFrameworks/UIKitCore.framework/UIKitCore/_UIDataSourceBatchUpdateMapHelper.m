@interface _UIDataSourceBatchUpdateMapHelper
- (id)description;
- (id)finalIndexPathForInitialIndexPath:(uint64_t)a1;
- (id)initWithInitialSnapshot:(void *)a3 finalSnapshot:(void *)a4 updates:(int)a5 assertingForInvalidUpdates:;
- (id)initialIndexPathForFinalIndexPath:(uint64_t)a1;
- (uint64_t)finalGlobalIndexForInitialGlobalIndex:(uint64_t)result;
- (uint64_t)finalSectionIndexForInitialSectionIndex:(uint64_t)result;
- (uint64_t)initialGlobalIndexForFinalGlobalIndex:(uint64_t)result;
- (uint64_t)initialSectionIndexForFinalSectionIndex:(uint64_t)result;
- (void)dealloc;
@end

@implementation _UIDataSourceBatchUpdateMapHelper

- (id)initWithInitialSnapshot:(void *)a3 finalSnapshot:(void *)a4 updates:(int)a5 assertingForInvalidUpdates:
{
  v73 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v52 = a3;
  v53 = a4;
  if (a1)
  {
    v54.receiver = a1;
    v54.super_class = _UIDataSourceBatchUpdateMapHelper;
    v9 = objc_msgSendSuper2(&v54, sel_init);
    a1 = v9;
    if (!v9)
    {
      goto LABEL_25;
    }

    objc_storeStrong(v9 + 1, a2);
    objc_storeStrong(a1 + 2, a3);
    objc_storeStrong(a1 + 3, a4);
    v10 = a1[1];
    v11 = [v10 numberOfSections];
    v12 = v11;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!HIDWORD(v11))
      {
LABEL_6:
        v13 = [v10 numberOfItems];
        v14 = v13;
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!HIDWORD(v13))
          {
            v15 = v13 << 32;
LABEL_10:
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke;
            aBlock[3] = &unk_1E71001A8;
            v16 = v10;
            v68 = v16;
            v49 = _Block_copy(aBlock);
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_2;
            v65[3] = &unk_1E71001A8;
            v46 = v16;
            v66 = v46;
            v47 = _Block_copy(v65);
            v17 = a1[2];
            v18 = [v17 numberOfSections];
            v19 = v18;
            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (!HIDWORD(v18))
              {
LABEL_13:
                v20 = [v17 numberOfItems];
                v21 = v20;
                if (v20 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (!HIDWORD(v20))
                  {
                    v22 = v20 << 32;
LABEL_17:
                    v63[0] = MEMORY[0x1E69E9820];
                    v63[1] = 3221225472;
                    v63[2] = __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_3;
                    v63[3] = &unk_1E71001A8;
                    v23 = v17;
                    v64 = v23;
                    v48 = _Block_copy(v63);
                    v61[0] = MEMORY[0x1E69E9820];
                    v61[1] = 3221225472;
                    v61[2] = __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_4;
                    v61[3] = &unk_1E71001A8;
                    v24 = v23;
                    v62 = v24;
                    v25 = _Block_copy(v61);
                    v26 = a1[3];
                    v59[0] = MEMORY[0x1E69E9820];
                    v59[1] = 3221225472;
                    v59[2] = __83___UIDataSourceBatchUpdateMapHelper__generateUpdateMapsAssertingForInvalidUpdates___block_invoke_5;
                    v59[3] = &unk_1E71001D0;
                    v27 = v26;
                    v60 = v27;
                    v28 = _Block_copy(v59);
                    v58[0] = v15 | v12;
                    v58[1] = _Block_copy(v49);
                    v58[2] = _Block_copy(v47);
                    v57[0] = v22 | v19;
                    v57[1] = _Block_copy(v48);
                    v57[2] = _Block_copy(v25);
                    v29 = [v27 count];
                    __copy_constructor_8_8_sb0_sb8_sb16_sb24_sb32_sb40(v56, &_UIDataSourceUpdateProcessingCallbacksNULL);
                    v55 = 0;
                    _UIDataSourceGenerateUpdateMaps(v58, v57, v29, v28, v56, &v55, buf);
                    v30 = v55;
                    v31 = v72;
                    v33 = v70;
                    v32 = v71;
                    *(a1 + 2) = *buf;
                    *(a1 + 3) = v33;
                    *(a1 + 4) = v32;
                    a1[10] = v31;
                    if (*(a1 + 80) == 1)
                    {
                      if (a5)
                      {
                        v34 = [MEMORY[0x1E696AAA8] currentHandler];
                        [v34 handleFailureInMethod:sel__generateUpdateMapsAssertingForInvalidUpdates_ object:a1 file:@"_UIDataSourceBatchUpdateMapHelper.m" lineNumber:82 description:{@"%@", v30}];
                      }

                      else
                      {
                        v35 = *(__UILogGetCategoryCachedImpl("UICollectionView", &_generateUpdateMapsAssertingForInvalidUpdates____s_category) + 8);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          *&buf[4] = v30;
                          _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Failed to generate data source update maps: %@", buf, 0xCu);
                        }
                      }
                    }

                    if (a5 & 1) == 0 && (a1[10])
                    {
                      goto LABEL_24;
                    }

LABEL_25:
                    a1 = a1;
                    v36 = a1;
                    goto LABEL_26;
                  }

                  v44 = [MEMORY[0x1E696AAA8] currentHandler];
                  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
                  [v44 handleFailureInFunction:v45 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v21}];
                }

                v22 = 0xFFFFFFFF00000000;
                goto LABEL_17;
              }

              v42 = [MEMORY[0x1E696AAA8] currentHandler];
              v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
              [v42 handleFailureInFunction:v43 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v19}];
            }

            v19 = 0xFFFFFFFFLL;
            goto LABEL_13;
          }

          v40 = [MEMORY[0x1E696AAA8] currentHandler];
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
          [v40 handleFailureInFunction:v41 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v14}];
        }

        v15 = 0xFFFFFFFF00000000;
        goto LABEL_10;
      }

      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
      [v38 handleFailureInFunction:v39 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v12}];
    }

    v12 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

LABEL_24:
  v36 = 0;
LABEL_26:

  return v36;
}

- (uint64_t)initialGlobalIndexForFinalGlobalIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 44);
    v4 = *(result + 72);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldGlobalItemForNewGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newGlobalItemMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)finalGlobalIndexForInitialGlobalIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 40);
    v4 = *(result + 64);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewGlobalItemForOldGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldGlobalItemMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)initialIndexPathForFinalIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "item") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v4;
    }

    else
    {
      v7 = -[_UIDataSourceBatchUpdateMapHelper initialGlobalIndexForFinalGlobalIndex:](a1, [*(a1 + 16) globalIndexForIndexPath:v4]);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
        goto LABEL_10;
      }

      v6 = [*(a1 + 8) indexPathForGlobalIndex:v7];
    }

    v5 = v6;
  }

LABEL_10:

  return v5;
}

- (id)finalIndexPathForInitialIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 section] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "item") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v4;
    }

    else
    {
      v7 = -[_UIDataSourceBatchUpdateMapHelper finalGlobalIndexForInitialGlobalIndex:](a1, [*(a1 + 8) globalIndexForIndexPath:v4]);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
        goto LABEL_10;
      }

      v6 = [*(a1 + 16) indexPathForGlobalIndex:v7];
    }

    v5 = v6;
  }

LABEL_10:

  return v5;
}

- (uint64_t)initialSectionIndexForFinalSectionIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 36);
    v4 = *(result + 56);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)finalSectionIndexForInitialSectionIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 32);
    v4 = *(result + 48);
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (void)dealloc
{
  _UIDataSourceDestroyUpdateMaps(&self->_updateMaps);
  v3.receiver = self;
  v3.super_class = _UIDataSourceBatchUpdateMapHelper;
  [(_UIDataSourceBatchUpdateMapHelper *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@ - %p: initialSnapshot = %@  finalSnapshot= %@; items = %@]", v5, self, self->_initialSnapshot, self->_finalSnapshot, self->_updateItems];;

  return v6;
}

@end