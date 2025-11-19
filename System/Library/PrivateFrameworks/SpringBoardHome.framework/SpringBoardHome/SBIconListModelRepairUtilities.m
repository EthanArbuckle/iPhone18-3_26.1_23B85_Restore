@interface SBIconListModelRepairUtilities
+ (BOOL)_findAndRepairEmptyRows:(id)a3 avoidingIcons:(id)a4 gridCellInfo:(id)a5;
+ (BOOL)_findAndRepairIconSizedGaps:(id)a3 gridSizeClassSizes:(id)a4 gridCellInfo:(id)a5;
+ (BOOL)_findAndRepairWidgetSizedGaps:(id)a3 widgetGridSizeClass:(id)a4 widgetGridSize:(SBHIconGridSize)a5 iconLayoutBehavior:(unint64_t)a6 gridCellInfo:(id)a7;
+ (id)_firstIconOfSizeClass:(id)a3 withIcons:(id)a4 inRange:(_NSRange)a5;
+ (id)_performRepairOnIcons:(id)a3 startingGridCellInfo:(id)a4 gridCellInfoProvider:(id)a5 usingRepairBlock:(id)a6;
+ (id)repairModelByEliminatingGapsInIcons:(id)a3 avoidingIcons:(id)a4 gridSize:(SBHIconGridSize)a5 gridSizeClassSizes:(id)a6 iconLayoutBehavior:(unint64_t)a7 fixedIconLocations:(id)a8;
+ (unint64_t)_maxGridCellIndexWithGridCellInfo:(id)a3;
@end

@implementation SBIconListModelRepairUtilities

+ (id)repairModelByEliminatingGapsInIcons:(id)a3 avoidingIcons:(id)a4 gridSize:(SBHIconGridSize)a5 gridSizeClassSizes:(id)a6 iconLayoutBehavior:(unint64_t)a7 fixedIconLocations:(id)a8
{
  v77 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (![v14 count])
  {
    v28 = 0;
    goto LABEL_21;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (!v19)
  {
    v28 = 0;
    goto LABEL_20;
  }

  v20 = v19;
  v44 = a7;
  v45 = a1;
  v46 = v15;
  v47 = v17;
  v21 = a7 & 3;
  v22 = *v73;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v73 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = [*(*(&v72 + 1) + 8 * i) gridSizeClass];
      v25 = v24;
      if (!v24)
      {
        goto LABEL_11;
      }

      v26 = [v24 isEqualToString:@"SBHIconGridSizeClassDefault"];
      v27 = v26;
      if (v21 == 3 && (v26 & 1) == 0)
      {
        if ([v16 gridSizeForGridSizeClass:v25] != 65537)
        {

LABEL_19:
          v43 = [v18 nodes];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke;
          aBlock[3] = &unk_1E8091228;
          v29 = v18;
          v67 = v29;
          v71 = a5;
          v30 = v16;
          v68 = v30;
          v70 = v44;
          v69 = v47;
          v31 = _Block_copy(aBlock);
          v32 = v31[2]();
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke_2;
          v62[3] = &unk_1E8091250;
          v65 = v45;
          v33 = v29;
          v63 = v33;
          v64 = v46;
          v34 = [v45 _performRepairOnIcons:v33 startingGridCellInfo:v32 gridCellInfoProvider:v31 usingRepairBlock:v62];

          LODWORD(v32) = [v30 gridSizeForGridSizeClass:@"SBHIconGridSizeClassLarge"];
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke_3;
          v57[3] = &unk_1E8091278;
          v59 = v45;
          v35 = v33;
          v61 = v32;
          v58 = v35;
          v60 = v44;
          v36 = [v45 _performRepairOnIcons:v35 startingGridCellInfo:v34 gridCellInfoProvider:v31 usingRepairBlock:v57];

          LODWORD(v34) = [v30 gridSizeForGridSizeClass:@"SBHIconGridSizeClassSmall"];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke_4;
          v52[3] = &unk_1E8091278;
          v54 = v45;
          v37 = v35;
          v56 = v34;
          v53 = v37;
          v55 = v44;
          v38 = [v45 _performRepairOnIcons:v37 startingGridCellInfo:v36 gridCellInfoProvider:v31 usingRepairBlock:v52];

          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke_5;
          v48[3] = &unk_1E8091250;
          v51 = v45;
          v39 = v37;
          v49 = v39;
          v50 = v30;
          v40 = [v45 _performRepairOnIcons:v39 startingGridCellInfo:v38 gridCellInfoProvider:v31 usingRepairBlock:v48];

          v41 = [v39 nodes];
          v15 = v46;
          v18 = v43;
          v28 = [SBIconListModel movedIconsWithOriginalOrder:v43 newOrder:v41];

          v17 = v47;
          goto LABEL_20;
        }

LABEL_11:

        continue;
      }

      if (!v27)
      {
        goto LABEL_19;
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v72 objects:v76 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

  v28 = 0;
  v15 = v46;
  v17 = v47;
LABEL_20:

LABEL_21:

  return v28;
}

id __150__SBIconListModelRepairUtilities_repairModelByEliminatingGapsInIcons_avoidingIcons_gridSize_gridSizeClassSizes_iconLayoutBehavior_fixedIconLocations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodes];
  v3 = [SBIconListModel iconGridCellInfoForIcons:v2 gridSize:*(a1 + 64) gridSizeClassSizes:*(a1 + 40) iconLayoutBehavior:*(a1 + 56) referenceIconOrder:v2 fixedIconLocations:*(a1 + 48) options:12];

  return v3;
}

+ (id)_performRepairOnIcons:(id)a3 startingGridCellInfo:(id)a4 gridCellInfoProvider:(id)a5 usingRepairBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 20;
  while (1)
  {
    v14 = [v9 copy];
    if (!v12[2](v12, v10))
    {
      break;
    }

    v15 = v11[2](v11);
    if ([v15 isEqual:v10])
    {
      v16 = SBLogIcon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "List model repair did not change icon order, rolling back and stopping", buf, 2u);
      }

      v17 = [v14 nodes];
      [v9 setNodes:v17];

      v18 = 0;
      v19 = v14;
      v20 = v9;
      v9 = v14;
    }

    else
    {
      if ([v26 containsObject:v15])
      {
        v21 = SBLogIcon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Previous layout detecting when trying to repair list model", v27, 2u);
        }

        v18 = 0;
      }

      else
      {
        [v26 insertObject:v15 atIndex:0];
        if ([v26 count] >= 4)
        {
          [v26 removeLastObject];
        }

        v18 = 1;
      }

      v19 = v15;
      v20 = v10;
      v10 = v15;
    }

    v22 = v19;

    if (!v13)
    {
      goto LABEL_19;
    }

    --v13;
    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v13)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = SBLogIcon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SBIconListModelRepairUtilities _performRepairOnIcons:v23 startingGridCellInfo:? gridCellInfoProvider:? usingRepairBlock:?];
  }

LABEL_22:
LABEL_23:
  v24 = v10;

  return v10;
}

+ (BOOL)_findAndRepairEmptyRows:(id)a3 avoidingIcons:(id)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = [v10 gridSize];
  if ([a1 _maxGridCellIndexWithGridCellInfo:v10] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v23 = v12;
    v14 = v12;
    v15 = [v10 usedGridSize];
    v16 = v15;
    v17 = HIWORD(v15);
    v18 = [v10 isLayoutOutOfBounds];
    v19 = ((v17 < HIWORD(v12)) & v18) + v17;
    if (v19 && v19 == HIWORD(v12))
    {
      LOWORD(v19) = v19 - ((v18 & 1) == 0);
    }

    v40 = 0;
    v41 = 0;
    v39[0] = 0;
    v39[1] = 0;
    SBHIconGridRangeDivide(0, v12, &v40, v39, v19, 1, v12);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__SBIconListModelRepairUtilities__findAndRepairEmptyRows_avoidingIcons_gridCellInfo___block_invoke;
    aBlock[3] = &unk_1E8089C20;
    v38 = v9;
    v20 = _Block_copy(aBlock);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__SBIconListModelRepairUtilities__findAndRepairEmptyRows_avoidingIcons_gridCellInfo___block_invoke_2;
    v24[3] = &unk_1E80912C8;
    v30 = v12;
    v25 = v10;
    v31 = v16;
    v32 = v17;
    v26 = v8;
    v21 = v20;
    v28 = &v33;
    v29 = v11;
    v27 = v21;
    SBHIconGridRangeEnumerateSubranges(v40, v41, v23 | 0x10000, v14, 0, v24);
    v13 = *(v34 + 24);

    _Block_object_dispose(&v33, 8);
  }

  return v13 & 1;
}

void __85__SBIconListModelRepairUtilities__findAndRepairEmptyRows_avoidingIcons_gridCellInfo___block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2 / *(a1 + 72);
  if ([*(a1 + 32) numberOfUsedGridCellsInRow:v6 columnRange:{0, *(a1 + 76)}])
  {
    return;
  }

  v25[0] = 0;
  v25[1] = 0;
  v23 = 0;
  v24 = 0;
  SBHIconGridRangeDivide(0, *(a1 + 72), v25, &v23, v6, 1, *(a1 + 72));
  v7 = [*(a1 + 32) indexOfFirstUsedGridCellInGridRange:{v23, v24}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = SBHIconGridRangeMaxCellIndex(v23, v24, *(a1 + 72));
  if (v8 >= v10)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v11 = [*(a1 + 32) iconIndexForGridCellIndex:v8];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || ([v9 containsIndex:v11] & 1) != 0)
    {
      goto LABEL_8;
    }

    [v9 addIndex:v11];
    v12 = [*(a1 + 40) nodeAtIndex:v11];
    if ((*(*(a1 + 48) + 16))())
    {
      break;
    }

LABEL_8:
    if (v10 == ++v8)
    {
      goto LABEL_11;
    }
  }

  v20[3] = v11;

LABEL_11:
  if (v20[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_12:
    v13 = [*(a1 + 32) indexesOfOutOfBoundsIconInRange:{0, *(a1 + 64)}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__SBIconListModelRepairUtilities__findAndRepairEmptyRows_avoidingIcons_gridCellInfo___block_invoke_3;
    v15[3] = &unk_1E80912A0;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = &v19;
    [v13 enumerateIndexesUsingBlock:v15];

    if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_13:
    v14 = [*(a1 + 40) nodeAtIndex:?];
    [*(a1 + 40) moveNode:v14 toIndex:v20[3] - 1];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  *a4 = 1;
  _Block_object_dispose(&v19, 8);
}

void __85__SBIconListModelRepairUtilities__findAndRepairEmptyRows_avoidingIcons_gridCellInfo___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) nodeAtIndex:a2];
  if ((*(*(a1 + 40) + 16))())
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    *a3 = 1;
  }
}

+ (BOOL)_findAndRepairWidgetSizedGaps:(id)a3 widgetGridSizeClass:(id)a4 widgetGridSize:(SBHIconGridSize)a5 iconLayoutBehavior:(unint64_t)a6 gridCellInfo:(id)a7
{
  v8 = a6;
  v9 = *&a5.columns;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [a1 _maxGridCellIndexWithGridCellInfo:v14];
  v38 = v13;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    v17 = [v12 indexesOfNodesPassingTest:&__block_literal_global_74];
    v18 = [v17 count];

    v19 = [v14 gridSize];
    if (v16)
    {
      v33 = v18;
      v34 = a1;
      v42 = v8;
      v20 = 0;
      v39 = 0;
      v21 = 0;
      v22 = v19;
      v41 = v9;
      v36 = v19;
      v35 = v12;
      while (1)
      {
        v23 = [v14 iconIndexForGridCellIndex:v21];
        if (v23 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v9 & 0xFFFFFFFF00000000 | v41;
          if (_SBIconListIsColumnValidForGridSize(v21 % v22, v22, v9, v42))
          {
            v40 = v40 & 0xFFFFFFFF00000000 | v41;
            if (_SBIconListIsRowValidForGridSize(v21 / v22, v41, [v14 gridSize], v42))
            {
              v46 = 0;
              v47 = &v46;
              v48 = 0x2020000000;
              v49 = 1;
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __131__SBIconListModelRepairUtilities__findAndRepairWidgetSizedGaps_widgetGridSizeClass_widgetGridSize_iconLayoutBehavior_gridCellInfo___block_invoke_2;
              v43[3] = &unk_1E808E400;
              v24 = v14;
              v44 = v24;
              v45 = &v46;
              v37 = v37 & 0xFFFFFFFF00000000 | v36;
              SBHIconGridRangeEnumerateCellIndexes(v21, v41, v36, v43);
              if (*(v47 + 24) == 1)
              {
                v25 = v20 + 1;
                v26 = [v12 count] - (v20 + 1);
                v27 = [v34 _firstIconOfSizeClass:v38 withIcons:v12 inRange:{v20 + 1, v26}];
                v28 = v27;
                if (v39 & 1 | (v27 == 0))
                {
                  if (!v27)
                  {
                    if ((@"SBHIconGridSizeClassLarge" == v38 || -[__CFString isEqualToString:](v38, "isEqualToString:", @"SBHIconGridSizeClassLarge")) && ((v29 = [v24 isLayoutOutOfBounds], v33 < 2) ? (v30 = v29) : (v30 = 0), v30 == 1))
                    {
                      v28 = [v34 _firstIconOfSizeClass:@"SBHIconGridSizeClassExtraLarge" withIcons:v35 inRange:{v20 + 1, v26}];
                      if (!(v39 & 1 | (v28 == 0)))
                      {
                        [v35 moveNode:v28 toIndex:v20];
                        goto LABEL_24;
                      }
                    }

                    else
                    {
                      v28 = 0;
                    }
                  }

                  v31 = 0;
                  v25 = v20;
                }

                else
                {
                  [v35 moveNode:v27 toIndex:v20 + 1];
LABEL_24:
                  v39 = 1;
                  v31 = 1;
                }

                v20 = v25;
                v12 = v35;
              }

              else
              {
                v31 = 1;
              }

              _Block_object_dispose(&v46, 8);
              if ((v31 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else if (v23 > v20)
        {
          v20 = v23;
        }

        if (v16 == ++v21)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v39 = 0;
LABEL_32:

  return v39 & 1;
}

uint64_t __131__SBIconListModelRepairUtilities__findAndRepairWidgetSizedGaps_widgetGridSizeClass_widgetGridSize_iconLayoutBehavior_gridCellInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3 == @"SBHIconGridSizeClassExtraLarge")
  {
    v5 = 1;
  }

  else
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassExtraLarge"];
  }

  return v5;
}

uint64_t __131__SBIconListModelRepairUtilities__findAndRepairWidgetSizedGaps_widgetGridSizeClass_widgetGridSize_iconLayoutBehavior_gridCellInfo___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) iconIndexForGridCellIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

+ (BOOL)_findAndRepairIconSizedGaps:(id)a3 gridSizeClassSizes:(id)a4 gridCellInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _maxGridCellIndexWithGridCellInfo:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = v11;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__SBIconListModelRepairUtilities__findAndRepairIconSizedGaps_gridSizeClassSizes_gridCellInfo___block_invoke;
    v15[3] = &unk_1E8091318;
    v16 = v10;
    v19 = v13;
    v17 = v8;
    v18 = &v20;
    [v9 enumerateGridSizesSortedByAreaWithOptions:2 usingBlock:v15];
    v12 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  return v12 & 1;
}

void __94__SBIconListModelRepairUtilities__findAndRepairIconSizedGaps_gridSizeClassSizes_gridCellInfo___block_invoke(uint64_t a1, void *a2, unsigned int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) indexOfFirstEmptyGridCellRangeOfSize:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v9 = v8;
  if (v8 > *(a1 + 56))
  {
    goto LABEL_17;
  }

  v20 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v11 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v13 = [*(a1 + 32) iconIndexForGridCellIndex:{v11, v20}];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v14 = v13;
    if ([v10 containsIndex:v13])
    {
      goto LABEL_13;
    }

    [v10 addIndex:v14];
    if (v11 <= v9)
    {
      goto LABEL_13;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v14;
    }

    v15 = [*(a1 + 40) nodeAtIndex:v14];
    v16 = [v15 gridSizeClass];
    if ((v16 == v7 || [v7 isEqualToString:v16]) && v12 != v14)
    {
      break;
    }

LABEL_13:
    if (++v11 > *(a1 + 56))
    {
      goto LABEL_14;
    }
  }

  [*(a1 + 40) moveNode:v15 toIndex:v12];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  *v20 = 1;

LABEL_14:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v17 = [*(a1 + 32) indexesOfOutOfBoundsIcons];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__SBIconListModelRepairUtilities__findAndRepairIconSizedGaps_gridSizeClassSizes_gridCellInfo___block_invoke_2;
    v21[3] = &unk_1E80912F0;
    v22 = *(a1 + 40);
    v18 = v7;
    v19 = *(a1 + 48);
    v23 = v18;
    v24 = v19;
    v25 = v12;
    v26 = v20;
    [v17 enumerateIndexesUsingBlock:v21];
  }

LABEL_17:
}

void __94__SBIconListModelRepairUtilities__findAndRepairIconSizedGaps_gridSizeClassSizes_gridCellInfo___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) nodeAtIndex:a2];
  v5 = [v7 gridSizeClass];
  v6 = *(a1 + 40);
  if (v6 == v5 || [v6 isEqualToString:v5])
  {
    [*(a1 + 32) moveNode:v7 toIndex:*(a1 + 56)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
    **(a1 + 64) = 1;
  }
}

+ (id)_firstIconOfSizeClass:(id)a3 withIcons:(id)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a3;
  if (location >= location + length)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v9 = [a4 nodeAtIndex:location];
      v10 = [v9 gridSizeClass];
      v11 = v10;
      if (v10 == v8)
      {
        break;
      }

      v12 = [v9 gridSizeClass];
      v13 = [v12 isEqualToString:v8];

      if (v13)
      {
        goto LABEL_7;
      }

      ++location;
      if (!--length)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_7:

  return v9;
}

+ (unint64_t)_maxGridCellIndexWithGridCellInfo:(id)a3
{
  v3 = a3;
  if ([v3 isLayoutOutOfBounds])
  {
    v4 = [v3 gridSize];

    return SBHIconGridSizeGetArea(v4);
  }

  else
  {
    v6 = [v3 lastUsedGridCellIndex];

    return v6;
  }
}

@end