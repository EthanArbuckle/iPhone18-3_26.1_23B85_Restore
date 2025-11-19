uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t TSTMasterLayoutInvalidateStrokeRange(TSTMasterLayout *a1, uint64_t a2)
{
  TSTMasterLayoutStrokesArrayRangeUpdate(a1);
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
  v6 = a2;
  if ((a2 + HIWORD(a2) - 1) >= (TableNumberOfRows - 1))
  {
    v7 = (TableNumberOfRows - 1);
  }

  else
  {
    v7 = (a2 + HIWORD(a2) - 1);
  }

  v8 = BYTE2(a2);
  if ((TableNumberOfColumns - 1) >= (BYTE4(a2) + BYTE2(a2) - 1))
  {
    v9 = (BYTE4(a2) + BYTE2(a2) - 1);
  }

  else
  {
    v9 = (TableNumberOfColumns - 1);
  }

  HIDWORD(v32) = HIDWORD(a2) + WORD1(a2) + 255;
  LODWORD(v32) = TableNumberOfColumns - 1;
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  v35 = v7 + 1;
  if (a2 <= v7 + 1)
  {
    v10 = a2;
    do
    {
      if ((TSTMasterLayoutIsGridRowHidden(a1, v10) & 1) == 0)
      {
        if (v10 <= v7)
        {
          v36 = v10;
          if (TSTMasterLayoutStrokeAdjustGridRowForVisibility(a1, 1, &v36))
          {
            objc_opt_class();
            v11 = v36;
            [(NSMutableArray *)a1->mTopRowStrokes objectAtIndex:v36];
            v12 = TSUDynamicCast();
            if (v12)
            {
              v13 = v12;
              TSTStrokeRunArrayWriteLock(v12);
              DefaultStrokesForGridRow = TSTMasterLayoutGetDefaultStrokesForGridRow(a1, v11, 1);
              TSTStrokeRunArrayResetRange(v13, DefaultStrokesForGridRow, BYTE2(a2), v9 + 1);
              TSTStrokeRunArrayUnlock(v13);
              TSTStrokeRunArrayUnlock(DefaultStrokesForGridRow);
            }
          }
        }

        if (v10 > a2)
        {
          v36 = v10;
          if (TSTMasterLayoutStrokeAdjustGridRowForVisibility(a1, 0, &v36))
          {
            objc_opt_class();
            v15 = v36;
            [(NSMutableArray *)a1->mBottomRowStrokes objectAtIndex:v36];
            v16 = TSUDynamicCast();
            if (v16)
            {
              v17 = v16;
              TSTStrokeRunArrayWriteLock(v16);
              v18 = TSTMasterLayoutGetDefaultStrokesForGridRow(a1, v15, 0);
              TSTStrokeRunArrayResetRange(v17, v18, BYTE2(a2), v9 + 1);
              TSTStrokeRunArrayUnlock(v17);
              TSTStrokeRunArrayUnlock(v18);
            }
          }
        }
      }

      ++v10;
    }

    while (v7 + 2 != v10);
  }

  if (BYTE2(a2) <= v9 + 1)
  {
    v19 = v34;
    if (v34 >= v33)
    {
      v19 = v33;
    }

    v20 = v19 + 2;
    v21 = BYTE2(a2);
    do
    {
      if ((TSTMasterLayoutIsGridColumnHidden(a1, v21) & 1) == 0)
      {
        if (v21 <= v9)
        {
          v36 = v21;
          if (TSTMasterLayoutStrokeAdjustGridColumnForVisibility(a1, 1, &v36))
          {
            objc_opt_class();
            v22 = v36;
            [(NSMutableArray *)a1->mLeftColumnStrokes objectAtIndex:v36];
            v23 = TSUDynamicCast();
            if (v23)
            {
              v24 = v23;
              TSTStrokeRunArrayWriteLock(v23);
              DefaultStrokesForGridColumn = TSTMasterLayoutGetDefaultStrokesForGridColumn(a1, v22, 1);
              TSTStrokeRunArrayResetRange(v24, DefaultStrokesForGridColumn, v6, v35);
              TSTStrokeRunArrayUnlock(v24);
              TSTStrokeRunArrayUnlock(DefaultStrokesForGridColumn);
            }
          }
        }

        if (v21 > v8)
        {
          v36 = v21;
          if (TSTMasterLayoutStrokeAdjustGridColumnForVisibility(a1, 0, &v36))
          {
            objc_opt_class();
            v26 = v36;
            [(NSMutableArray *)a1->mRightColumnStrokes objectAtIndex:v36];
            v27 = TSUDynamicCast();
            if (v27)
            {
              v28 = v27;
              TSTStrokeRunArrayWriteLock(v27);
              v29 = TSTMasterLayoutGetDefaultStrokesForGridColumn(a1, v26, 0);
              TSTStrokeRunArrayResetRange(v28, v29, v6, v35);
              TSTStrokeRunArrayUnlock(v28);
              TSTStrokeRunArrayUnlock(v29);
            }
          }
        }
      }

      ++v21;
    }

    while (v20 != v21);
  }

  mStrokesLock = a1->mStrokesLock;

  return [(NSRecursiveLock *)mStrokesLock unlock];
}

uint64_t TSTMasterLayoutSetRange(_WORD *a1)
{
  a1[84] = [objc_msgSend(a1 "tableModel")];
  a1[92] = [objc_msgSend(a1 "tableModel")];
  result = [objc_msgSend(a1 "tableModel")];
  a1[93] = result;
  return result;
}

uint64_t TSTMasterLayoutInvalidateStrokeDefaults(uint64_t a1)
{
  [a1 invalidateBandedFill];
  [*(a1 + 240) lock];
  v2 = *(a1 + 200);
  if (v2)
  {
    TSTTableStrokeDefaultsRelease(v2);
    *(a1 + 200) = 0;
  }

  v3 = *(a1 + 240);

  return [v3 unlock];
}

uint64_t TSTMasterLayoutGetTableNumberOfHeaderRows(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0;
  }

  else
  {
    return a1[92];
  }
}

uint64_t TSTMasterLayoutGetTableNumberOfHeaderColumns(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0;
  }

  else
  {
    return a1[84];
  }
}

uint64_t TSTMasterLayoutGetTableNumberOfFooterRows(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0;
  }

  else
  {
    return a1[93];
  }
}

uint64_t TSTMasterLayoutGetTableNumberOfColumns(uint64_t a1)
{
  if ([a1 emptyFilteredTable])
  {
    LOWORD(v2) = 1;
  }

  else
  {
    v3 = [a1 isDynamicallyChangingRowOrColumnCount];
    v4 = [objc_msgSend(a1 "tableModel")];
    LOWORD(v2) = v4;
    if (v3)
    {
      v2 = *(a1 + 364) + v4;
      if (v2 < 1 || ([a1 emptyFilteredTable] & 1) == 0 && v2 <= *(a1 + 168))
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnRowCount TSTMasterLayoutGetTableNumberOfColumns(TSTMasterLayout *)"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 799, @"Size invariants violated by dynamic add/remove"}];
      }
    }
  }

  return v2;
}

uint64_t TSTMasterLayoutGetTableNumberOfRows(uint64_t a1)
{
  if ([a1 emptyFilteredTable])
  {
    LOWORD(v2) = 1;
  }

  else
  {
    v3 = [a1 isDynamicallyChangingRowOrColumnCount];
    v4 = [objc_msgSend(a1 "tableModel")];
    LOWORD(v2) = v4;
    if (v3)
    {
      v2 = *(a1 + 508) + v4;
      if (v2 < 1 || (([a1 emptyFilteredTable] & 1) == 0 ? (v5 = *(a1 + 184)) : (v5 = 0), (objc_msgSend(a1, "emptyFilteredTable") & 1) == 0 ? (v6 = *(a1 + 186)) : (v6 = 0), v2 <= (v6 + v5)))
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUColumnRowCount TSTMasterLayoutGetTableNumberOfRows(TSTMasterLayout *)"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 823, @"Size invariants violated by dynamic add/remove"}];
      }
    }
  }

  return v2;
}

double TSTMasterLayoutHeightOfRow(TSTMasterLayout *a1, uint64_t a2, char a3, BOOL *a4, int a5, int a6)
{
  v12 = [(TSTMasterLayout *)a1 tableModel];
  v13 = TSTTableDefaultRowHeight(v12);
  v14 = [(TSTMasterLayout *)a1 tableRowsBehavior];
  if (a6)
  {
    v15 = 0.0;
    if ([(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] isRowHidden:a2])
    {
      return v15;
    }
  }

  if ((a3 & 1) == 0)
  {
    mDynamicRowSwapDelegate = a1->mDynamicRowSwapDelegate;
    if (mDynamicRowSwapDelegate)
    {
      a2 = [(TSTLayoutDynamicRowSwapProtocol *)mDynamicRowSwapDelegate rowForRowID:a2];
    }
  }

  v17 = TSTMasterLayoutStrokeHeightOfGridRow(a1, a2, 0, 0xFFFFFFFF) * 0.5;
  v18 = TSTMasterLayoutStrokeHeightOfGridRow(a1, a2 + 1, 0, 0xFFFFFFFF) * 0.5;
  v19 = [(TSTMasterLayout *)a1 emptyFilteredTable];
  if (!a2 && v19)
  {
    if (a4)
    {
      *a4 = 1;
    }

    return v18 + v17 + a1->mTableDefaultFontHeightForArea[0];
  }

  if (![(TSTMasterLayout *)a1 isDynamicallyChangingRowOrColumnCount]|| !a1->mDynamicResizingRows || ((TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1), ![(TSTMasterLayout *)a1 emptyFilteredTable]) ? (mCachedNumberOfFooterRows = a1->mCachedNumberOfFooterRows) : (mCachedNumberOfFooterRows = 0), TableNumberOfRows - mCachedNumberOfFooterRows - a1->mDynamicRowAdjustment > a2 || ((v22 = TSTMasterLayoutGetTableNumberOfRows(a1), ![(TSTMasterLayout *)a1 emptyFilteredTable]) ? (v23 = a1->mCachedNumberOfFooterRows) : (v23 = 0), v22 - v23 <= a2)))
  {
    v29 = [(TSTMasterLayout *)a1 tableInfo];
    v45 = 0;
    [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] getModelHeightForRow:a2];
    if (v30 == 0.0)
    {
      v31 = TSTTableHeightOfRow(v12, a2, &v45);
      if ((v45 & (v14 == 3)) != 0)
      {
        v32 = -1.0;
      }

      else
      {
        v32 = v31;
      }

      [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] setModelHeight:a2 forRow:v32];
    }

    else
    {
      v32 = -1.0;
      if (v30 == -1.0)
      {
        v45 = 1;
      }

      else
      {
        v32 = v30;
      }
    }

    [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] getFitHeightForRow:a2];
    if (v14 == 1)
    {
      if (v33 == 0.0)
      {
        TSTTableComputeDefaultFontHeight(v12, 0);
      }

      v27 = v32 == v13;
      if (v33 >= v32 - (v17 + v18))
      {
        v34 = 1;
        mDynamicAddOrRemoveRowElementSize = v33;
        v27 = 1;
        goto LABEL_53;
      }

      v34 = 0;
    }

    else
    {
      if (v14 == 3)
      {
        v34 = v32 == -1.0;
        if (v32 == -1.0)
        {
          mDynamicAddOrRemoveRowElementSize = v33;
        }

        else
        {
          mDynamicAddOrRemoveRowElementSize = v32;
        }

        v27 = v32 == -1.0;
        goto LABEL_53;
      }

      if (v33 == 0.0)
      {
        TSTTableComputeDefaultFontHeight(v12, 0);
      }

      v34 = 0;
      v27 = 0;
    }

    mDynamicAddOrRemoveRowElementSize = v32;
LABEL_53:
    v35 = vabdd_f64(v18 + v17 + v33, v32) < 0.01;
    if ([(TSTMasterLayout *)a1 isDynamicallyResizing:0 rowColIndex:a2])
    {
      mDynamicAddOrRemoveRowElementSize = mDynamicAddOrRemoveRowElementSize + a1->mDynamicResizingRowAdjustment;
    }

    v25 = v35 || v34;
    v28 = 1.0;
    if ([(TSTTableInfo *)v29 partitioner]&& [(TSTTablePartitioner *)[(TSTTableInfo *)v29 partitioner] scaleIsValid])
    {
      [(TSTTablePartitioner *)[(TSTTableInfo *)v29 partitioner] scaleToFit];
      v28 = v36;
    }

    goto LABEL_58;
  }

  mDynamicAddOrRemoveRowElementSize = a1->mDynamicAddOrRemoveRowElementSize;
  if ([(TSTMasterLayout *)a1 isDynamicallyResizing:0 rowColIndex:a2])
  {
    mDynamicAddOrRemoveRowElementSize = mDynamicAddOrRemoveRowElementSize + a1->mDynamicResizingRowAdjustment;
  }

  v25 = 0;
  v27 = mDynamicAddOrRemoveRowElementSize == v13 && v14 != 2;
  v28 = 1.0;
LABEL_58:
  v37 = v17 + v18 + mDynamicAddOrRemoveRowElementSize;
  if ((a5 & v27) == 0)
  {
    v37 = mDynamicAddOrRemoveRowElementSize;
  }

  if (a4)
  {
    *a4 = v25;
  }

  v15 = v28 * v37;
  [(TSTMasterLayout *)a1 maximumPartitionSize];
  if (v39 != *MEMORY[0x277CBF3A8] || v38 != *(MEMORY[0x277CBF3A8] + 8))
  {
    [(TSTMasterLayout *)a1 maximumPartitionSize];
    v41 = v40;
    if ([(TSTMasterLayout *)a1 emptyFilteredTable])
    {
      mCachedNumberOfHeaderRows = 0;
    }

    else
    {
      mCachedNumberOfHeaderRows = a1->mCachedNumberOfHeaderRows;
    }

    if (a1->mHeaderRowsRepeat && a2 > (mCachedNumberOfHeaderRows - 1))
    {
      v43 = 0;
      do
      {
        v41 = v41 - TSTMasterLayoutHeightOfRow(a1, v43++, 0, 0, 1, 1);
      }

      while (mCachedNumberOfHeaderRows > v43);
    }

    if (v41 <= v15)
    {
      return v41;
    }
  }

  return v15;
}

double TSTMasterLayoutWidthOfColumn(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, int a5)
{
  v22 = 0;
  v10 = [a1 tableInfo];
  v11 = [a1 tableModel];
  v12 = [a1 emptyFilteredTable];
  if (!a2 && v12)
  {
    if (![objc_msgSend(a1 "tableModel")])
    {
      return 0.0;
    }

    v13 = 0;
    v14 = 0.0;
    do
    {
      v21 = 0;
      if (!TSTTableIsColumnHidden([a1 tableModel], v13))
      {
        v14 = v14 + TSTTableWidthOfColumn([a1 tableModel], v13, &v21);
      }

      ++v13;
    }

    while ([objc_msgSend(a1 "tableModel")] > v13);
    return v14;
  }

  if (a5)
  {
    v14 = 0.0;
    if ([objc_msgSend(a1 "hiddenRowsColumnsCache")])
    {
      return v14;
    }
  }

  if ((a3 & 1) == 0)
  {
    v15 = *(a1 + 368);
    if (v15)
    {
      a2 = [v15 columnForColumnID:a2];
    }
  }

  if (![a1 isDynamicallyChangingRowOrColumnCount] || *(a1 + 450) != 1 || (TSTMasterLayoutGetTableNumberOfColumns(a1) - *(a1 + 364)) > a2)
  {
    [objc_msgSend(a1 "widthHeightCache")];
    v17 = v16;
    if (v16 <= 0.0)
    {
      v17 = TSTTableWidthOfColumn(v11, a2, &v22);
      [objc_msgSend(a1 "widthHeightCache")];
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (![a1 isDynamicallyResizing:1 rowColIndex:a2])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v17 = *(a1 + 344);
  if ([a1 isDynamicallyResizing:1 rowColIndex:a2])
  {
LABEL_22:
    v17 = v17 + *(a1 + 464);
  }

LABEL_23:
  v18 = 1.0;
  if ([v10 partitioner] && objc_msgSend(objc_msgSend(v10, "partitioner"), "scaleIsValid"))
  {
    [objc_msgSend(v10 "partitioner")];
    v18 = v19;
  }

  return v17 * v18;
}

uint64_t TSTMasterLayoutGetRangeForHint(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellRange TSTMasterLayoutGetRangeForHint(TSTMasterLayout *, TSTLayoutHint *)"}];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 553, @"invalid nil value for '%s'", "layoutHint"}];
  }

  return [a2 cellRange];
}

uint64_t TSTMasterLayoutGetHeaderColumnsFrozen(_BYTE *a1)
{
  if (([a1 isDynamicallyRepressingFrozenHeaders] & 1) != 0 || a1[120] != 1)
  {
    return 0;
  }

  else
  {
    return [a1 dynamicRepResize] ^ 1;
  }
}

uint64_t TSTMasterLayoutGetHeaderRowsFrozen(_BYTE *a1)
{
  if (([a1 isDynamicallyRepressingFrozenHeaders] & 1) != 0 || a1[121] != 1)
  {
    return 0;
  }

  else
  {
    return [a1 dynamicRepResize] ^ 1;
  }
}

uint64_t TSTMasterLayoutSetTableNameEnabled(uint64_t result, int a2)
{
  if (*(result + 124) != a2)
  {
    *(result + 124) = a2;
  }

  return result;
}

uint64_t TSTMasterLayoutGetTableNumberOfNonHiddenFooterRows(_WORD *a1)
{
  if (([a1 emptyFilteredTable] & 1) != 0 || !a1[93])
  {
    return 0;
  }

  else
  {
    v2 = a1[93];
    return (v2 - [objc_msgSend(a1 "hiddenRowsColumnsCache")]);
  }
}

uint64_t TSTMasterLayoutGetEntireFooterRowsCellRange(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0xFFFFFFLL;
  }

  v2 = a1[93];
  if (!a1[93])
  {
    return 0xFFFFFFLL;
  }

  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  return (v2 << 48) | (TableNumberOfColumns << 32) | (TSTMasterLayoutGetTableNumberOfRows(a1) - v2);
}

uint64_t TSTMasterLayoutGetEntireHeaderColumnsCellRange(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0xFFFFFFLL;
  }

  v2 = a1[84];
  if (!a1[84])
  {
    return 0xFFFFFFLL;
  }

  TSTMasterLayoutGetTableNumberOfColumns(a1);
  return (v2 << 32) | (TSTMasterLayoutGetTableNumberOfRows(a1) << 48);
}

uint64_t TSTMasterLayoutGetEntireHeaderRowsCellRange(unsigned __int16 *a1)
{
  if ([a1 emptyFilteredTable])
  {
    return 0xFFFFFFLL;
  }

  v2 = a1[92];
  if (!a1[92])
  {
    return 0xFFFFFFLL;
  }

  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  TSTMasterLayoutGetTableNumberOfRows(a1);
  return (v2 << 48) | (TableNumberOfColumns << 32);
}

unint64_t TSTMasterLayoutExpandCellRangeToCoverMergedCells(void *a1, unint64_t a2)
{
  if ([a1 emptyFilteredTable])
  {
    return a2;
  }

  v5 = [a1 tableModel];

  return TSTTableExpandCellRangeToCoverMergedCells(v5, a2);
}

uint64_t TSTMasterLayoutIsColumnHidden(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 isColumnHidden:a2];
}

uint64_t TSTMasterLayoutIsRowHidden(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 isRowHidden:a2];
}

double TSTMasterLayoutStrokeHeightOfGridRow(TSTMasterLayout *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  StrokesForGridRow = TSTMasterLayoutGetStrokesForGridRow(a1, a2, 1, 0);
  v9 = TSTMasterLayoutGetStrokesForGridRow(a1, a2, 0, 0);
  v10 = TSTStrokeRunArrayMaxWidthForMergedHorizontalStrokes(StrokesForGridRow, v9, a3, a4);
  if (StrokesForGridRow)
  {
    TSTStrokeRunArrayUnlock(StrokesForGridRow);
  }

  if (v9)
  {
    TSTStrokeRunArrayUnlock(v9);
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v10;
}

uint64_t TSTMasterLayoutFittingHeightOfRow(void *a1, uint64_t a2)
{
  v3 = [a1 widthHeightCache];

  return [v3 getFitHeightForRow:a2];
}

double TSTMasterLayoutHeightOfRowIgnoringFitting(TSTMasterLayout *a1, uint64_t a2, unint64_t TableNumberOfRows)
{
  v8 = [(TSTMasterLayout *)a1 tableModel];
  v9 = [(TSTMasterLayout *)a1 tableRowsBehavior];
  mDynamicRowSwapDelegate = a1->mDynamicRowSwapDelegate;
  if (mDynamicRowSwapDelegate)
  {
    a2 = [(TSTLayoutDynamicRowSwapProtocol *)mDynamicRowSwapDelegate rowForRowID:a2];
  }

  v49 = 0.0;
  v50 = 0.0;
  if (TableNumberOfRows)
  {
    v49 = TSTMasterLayoutStrokeHeightOfGridRow(a1, a2, 0, 0xFFFFFFFF) * 0.5;
    v50 = TSTMasterLayoutStrokeHeightOfGridRow(a1, a2 + 1, 0, 0xFFFFFFFF) * 0.5;
  }

  if ([(TSTMasterLayout *)a1 isDynamicallyChangingRowOrColumnCount]&& a1->mDynamicResizingRows)
  {
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
    v11 = [(TSTMasterLayout *)a1 emptyFilteredTable]? 0 : a1->mCachedNumberOfFooterRows;
    if (TableNumberOfRows - v11 - a1->mDynamicRowAdjustment <= a2)
    {
      mDynamicAddOrRemoveRowElementSize = a1->mDynamicAddOrRemoveRowElementSize;
      v16 = 1.0;
      goto LABEL_55;
    }
  }

  v53 = 0;
  [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] getModelHeightForRow:a2];
  if (v12 == 0.0)
  {
    v13 = TSTTableHeightOfRow(v8, a2, &v53);
    if ((v53 & (v9 == 3)) != 0)
    {
      v14 = -1.0;
    }

    else
    {
      v14 = v13;
    }

    if ((v53 & (v9 == 3)) != 0)
    {
      mDynamicAddOrRemoveRowElementSize = 0.0;
    }

    else
    {
      mDynamicAddOrRemoveRowElementSize = v13;
    }

    [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] setModelHeight:a2 forRow:v14];
  }

  else
  {
    mDynamicAddOrRemoveRowElementSize = v12;
    v14 = -1.0;
    if (v12 == -1.0)
    {
      v53 = 1;
      mDynamicAddOrRemoveRowElementSize = 0.0;
    }

    else
    {
      v14 = v12;
    }
  }

  v17 = [(TSTMasterLayout *)a1 tableInfo];
  v16 = 1.0;
  if ([(TSTTableInfo *)v17 partitioner]&& [(TSTTablePartitioner *)[(TSTTableInfo *)v17 partitioner] scaleIsValid])
  {
    [(TSTTablePartitioner *)[(TSTTableInfo *)v17 partitioner] scaleToFit];
    v16 = v18;
  }

  if (v14 == -1.0)
  {
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
    if (TableNumberOfColumns >= 0xFF)
    {
      v20 = 255;
    }

    else
    {
      v20 = TableNumberOfColumns;
    }

    v21 = [[TSTLayoutCellIterator alloc] initWithMasterLayout:a1 range:a2 | (v20 << 32) | 0x1000000000000 flags:16];
    if (!TSTLayoutCellIteratorGetNextCell(v21, &v51))
    {

      goto LABEL_54;
    }

    v48 = v16;
    mDynamicAddOrRemoveRowElementSize = 0.0;
    while (1)
    {
      TableNumberOfRows = TableNumberOfRows & 0xFFFFFFFF00000000 | HIDWORD(v51);
      [(TSTMasterLayout *)a1 defaultPaddingForCellID:TableNumberOfRows];
      v23 = v22;
      v25 = v24;
      v4 = v4 & 0xFFFFFFFF00000000 | HIDWORD(v51);
      [(TSTMasterLayout *)a1 paddingForCellID:v4];
      v29 = v28;
      v31 = v30;
      v32 = v23 + v25;
      v33 = v28 + v26;
      v34 = v33 <= v32 ? 0.0 : v33 - v32;
      if (!v52)
      {
        break;
      }

      if (*(v52 + 9) << 8 != 1536)
      {
        v42 = *(v52 + 56);
LABEL_42:
        if ([v42 isVariation])
        {
          if (v52)
          {
            v43 = *(v52 + 56);
          }

          else
          {
            v43 = 0;
          }

          [(TSTMasterLayout *)a1 fontHeightOfParagraphStyle:v43];
          v44 = v32 + v45;
        }

        else
        {
          v44 = a1->mTableDefaultFontHeightForArea[0];
        }

        v46 = v50 + v49 + v34 + v44;
        if (mDynamicAddOrRemoveRowElementSize <= v46)
        {
          mDynamicAddOrRemoveRowElementSize = v46;
        }

        goto LABEL_50;
      }

      v35 = v26;
      v36 = v27;
      v3 = v3 & 0xFFFFFFFF00000000 | HIDWORD(v51);
      v37 = [TSTMasterLayout newTextEngineForCell:a1 atCellID:"newTextEngineForCell:atCellID:"];
      v38 = [[TSTTextEngineDelegate alloc] initWithPadding:0 verticalAlignment:v29, v31, v35, v36];
      [v37 setDelegate:v38];
      v39 = [v37 layoutText:@"X" kind:5 minSize:15 maxSize:8.0 anchor:8.0 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      [v37 setDelegate:0];
      [v39 typographicBoundsForCell];
      [v39 frameBounds];
      if (mDynamicAddOrRemoveRowElementSize <= v50 + v49 + v34 + v32 + v40)
      {
        [v39 typographicBoundsForCell];
        [v39 frameBounds];
        mDynamicAddOrRemoveRowElementSize = v50 + v49 + v34 + v32 + v41;
      }

LABEL_50:
      if (!TSTLayoutCellIteratorGetNextCell(v21, &v51))
      {

        v16 = v48;
        if (mDynamicAddOrRemoveRowElementSize != 0.0)
        {
          goto LABEL_55;
        }

LABEL_54:
        mDynamicAddOrRemoveRowElementSize = v50 + v49 + a1->mTableDefaultFontHeightForArea[0];
        goto LABEL_55;
      }
    }

    v42 = 0;
    goto LABEL_42;
  }

LABEL_55:
  if ([(TSTMasterLayout *)a1 isDynamicallyResizing:0 rowColIndex:a2])
  {
    mDynamicAddOrRemoveRowElementSize = mDynamicAddOrRemoveRowElementSize + a1->mDynamicResizingRowAdjustment;
  }

  return v16 * mDynamicAddOrRemoveRowElementSize;
}

double TSTMasterLayoutSizeOfTextInColumn(void *a1)
{
  [a1 typographicBoundsForCell];
  v3 = v2;
  [a1 frameBounds];
  return v3;
}

void TSTMasterLayoutFittingWidthForColumnDirect(TSTMasterLayout *a1, uint64_t a2)
{
  [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] getFitWidthForCol:a2];
  v5 = v4;
  if (v4 == -1.0)
  {
    [(TSTWidthHeightCache *)[(TSTMasterLayout *)a1 widthHeightCache] resetColWidthsStartingWith:a2 andEndingWith:a2];
    TSTMasterLayoutGetTableNumberOfColumns(a1);
    [(TSTMasterLayout *)a1 addChangeDescriptorWithType:19 andCellRange:(a2 << 16) | (TSTMasterLayoutGetTableNumberOfRows(a1) << 48) | 0x100000000];
  }

  if (v5 > 0.0)
  {
    v6 = v5 + TSTMasterLayoutStrokeWidthOfGridColumn(a1, a2, 0, 0xFFFFFFFF) * 0.5;
    ceil(v6 + TSTMasterLayoutStrokeWidthOfGridColumn(a1, a2 + 1, 0, 0xFFFFFFFF) * 0.5);
  }
}

uint64_t TSTMasterLayoutRemoveFittingWidthForColumnRange(void *a1, unsigned __int8 a2, char a3)
{
  v5 = [a1 widthHeightCache];

  return [v5 resetColWidthsStartingWith:a2 andEndingWith:(a2 + a3 - 1)];
}

double TSTMasterLayoutStrokeWidthOfGridColumn(TSTMasterLayout *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  StrokesForGridColumn = TSTMasterLayoutGetStrokesForGridColumn(a1, a2, 1, 0);
  v9 = TSTMasterLayoutGetStrokesForGridColumn(a1, a2, 0, 0);
  v10 = TSTStrokeRunArrayMaxWidthForMergedVerticalStrokes(StrokesForGridColumn, v9, a3, a4);
  if (StrokesForGridColumn)
  {
    TSTStrokeRunArrayUnlock(StrokesForGridColumn);
  }

  if (v9)
  {
    TSTStrokeRunArrayUnlock(v9);
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v10;
}

uint64_t TSTMasterLayoutPurgeFittingWidths(void *a1)
{
  v1 = [a1 widthHeightCache];

  return [v1 resetAllCol];
}

BOOL TSTMasterLayoutFittingWidthOfColumn(TSTMasterLayout *a1, uint64_t a2, double *a3)
{
  TSTMasterLayoutFittingWidthForColumnDirect(a1, a2);
  if (a3 && v4 > 0.0)
  {
    *a3 = v4;
  }

  return v4 > 0.0;
}

uint64_t TSTMasterLayoutRemoveFittingHeightForRow(void *a1, uint64_t a2)
{
  v3 = [a1 widthHeightCache];

  return [v3 resetRowHeightsStartingWith:a2 andEndingWith:a2];
}

TSTStrokeRunArray *TSTMasterLayoutSetStrokeForGridColumn(TSTMasterLayout *a1, TSDStroke *a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6)
{
  result = TSTMasterLayoutGetStrokesForGridColumn(a1, a3, a4, 1);
  if (result)
  {
    v10 = result;
    TSTStrokeRunArrayInsertCustomStroke(result, a5, a6, a2);

    return TSTStrokeRunArrayUnlock(v10);
  }

  return result;
}

TSTStrokeRunArray *TSTMasterLayoutGetStrokesForGridColumn(TSTMasterLayout *a1, unsigned int a2, int a3, int a4)
{
  v13 = a2;
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  v7 = 232;
  if (a3)
  {
    v7 = 224;
  }

  v8 = *(&a1->super.isa + v7);
  if (TSTMasterLayoutStrokeAdjustGridColumnForVisibility(a1, a3, &v13))
  {
    v9 = v13;
    v10 = [v8 objectAtIndex:v13];
    if (v10 == [MEMORY[0x277CBEB68] null])
    {
      DefaultStrokesForGridColumn = TSTMasterLayoutGetDefaultStrokesForGridColumn(a1, v9, a3);
      v10 = TSTStrokeRunArrayCopy(DefaultStrokesForGridColumn);
      TSTStrokeRunArrayUnlock(DefaultStrokesForGridColumn);
      [v8 replaceObjectAtIndex:v9 withObject:v10];
    }

    if (v10)
    {
      if (a4)
      {
        TSTStrokeRunArrayWriteLock(v10);
      }

      else
      {
        TSTStrokeRunArrayReadLock(v10);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v10;
}

uint64_t TSTMasterLayoutStrokeAdjustGridColumnForVisibility(TSTMasterLayout *a1, int a2, unsigned int *a3)
{
  v6 = *a3;
  v7 = 232;
  if (a2)
  {
    v7 = 224;
  }

  v8 = *(&a1->super.isa + v7);
  if (a2)
  {
    if ([*(&a1->super.isa + v7) count] > v6 && -[TSTHiddenRowsColumnsCache isColumnHidden:](-[TSTMasterLayout hiddenRowsColumnsCache](a1, "hiddenRowsColumnsCache"), "isColumnHidden:", v6))
    {
      LODWORD(v6) = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] nextVisibleColumn:v6];
    }

    v9 = 255;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    if ([(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] isColumnHidden:(v6 - 1)])
    {
      LODWORD(v6) = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] previousVisibleColumn:(v6 - 1)]+ 1;
    }

    v9 = 256;
  }

  if (v6 >= v9)
  {
    return 0;
  }

LABEL_13:
  v10 = [v8 count];
  result = 0;
  v12 = a2 ^ 1;
  if (v6)
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0 && v10 > v6)
  {
    if (a2 && [v8 count] - 1 == v6)
    {
      return 0;
    }

    *a3 = v6;
    return 1;
  }

  return result;
}

TSTStrokeRunArray *TSTMasterLayoutGetDefaultStrokesForGridColumn(TSTMasterLayout *a1, unsigned int a2, int a3)
{
  StrokeDefaults = TSTMasterLayoutGetStrokeDefaults(a1);
  if (![(TSTMasterLayout *)a1 emptyFilteredTable]&& a1->mCachedNumberOfHeaderColumns && (![(TSTMasterLayout *)a1 emptyFilteredTable]? (mCachedNumberOfHeaderColumns = a1->mCachedNumberOfHeaderColumns) : (mCachedNumberOfHeaderColumns = 0), mCachedNumberOfHeaderColumns == a2))
  {
    v8 = TSTTableStrokeDefaultsForColumn(StrokeDefaults, a3 + a2);
    v9 = v8;
    if ((a3 & 1) == 0)
    {
      TSTStrokeRunArrayWriteLock(v8);
      TSTStrokeRunArraySetEntireCustom(v9);
      TSTStrokeRunArrayUnlock(v9);
    }
  }

  else
  {
    v9 = TSTTableStrokeDefaultsForColumn(StrokeDefaults, a2);
  }

  TSTStrokeRunArrayReadLock(v9);
  return v9;
}

TSTStrokeRunArray *TSTMasterLayoutGetMergedStrokesForGridColumn(TSTMasterLayout *a1, unsigned int a2)
{
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  StrokesForGridColumn = TSTMasterLayoutGetStrokesForGridColumn(a1, a2, 1, 0);
  v5 = TSTMasterLayoutGetStrokesForGridColumn(a1, a2, 0, 0);
  v6 = TSTStrokeRunArrayMergeVerticalStrokes(StrokesForGridColumn, v5);
  if (StrokesForGridColumn)
  {
    TSTStrokeRunArrayUnlock(StrokesForGridColumn);
  }

  if (v5)
  {
    TSTStrokeRunArrayUnlock(v5);
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v6;
}

TSTStrokeRunArray *TSTMasterLayoutSetStrokeForGridRow(TSTMasterLayout *a1, TSDStroke *a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6)
{
  result = TSTMasterLayoutGetStrokesForGridRow(a1, a3, a4, 1);
  if (result)
  {
    v10 = result;
    TSTStrokeRunArrayInsertCustomStroke(result, a5, a6, a2);

    return TSTStrokeRunArrayUnlock(v10);
  }

  return result;
}

TSTStrokeRunArray *TSTMasterLayoutGetStrokesForGridRow(TSTMasterLayout *a1, unsigned int a2, int a3, int a4)
{
  v13 = a2;
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  v7 = 216;
  if (a3)
  {
    v7 = 208;
  }

  v8 = *(&a1->super.isa + v7);
  if (TSTMasterLayoutStrokeAdjustGridRowForVisibility(a1, a3, &v13))
  {
    v9 = v13;
    v10 = [v8 objectAtIndex:v13];
    if (v10 == [MEMORY[0x277CBEB68] null])
    {
      DefaultStrokesForGridRow = TSTMasterLayoutGetDefaultStrokesForGridRow(a1, v9, a3);
      v10 = TSTStrokeRunArrayCopy(DefaultStrokesForGridRow);
      TSTStrokeRunArrayUnlock(DefaultStrokesForGridRow);
      [v8 replaceObjectAtIndex:v9 withObject:v10];
    }

    if (v10)
    {
      if (a4)
      {
        TSTStrokeRunArrayWriteLock(v10);
      }

      else
      {
        TSTStrokeRunArrayReadLock(v10);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v10;
}

uint64_t TSTMasterLayoutStrokeAdjustGridRowForVisibility(TSTMasterLayout *a1, int a2, unsigned int *a3)
{
  v6 = *a3;
  v7 = 216;
  if (a2)
  {
    v7 = 208;
  }

  v8 = *(&a1->super.isa + v7);
  if (a2)
  {
    if ([*(&a1->super.isa + v7) count] > v6 && -[TSTHiddenRowsColumnsCache isRowHidden:](-[TSTMasterLayout hiddenRowsColumnsCache](a1, "hiddenRowsColumnsCache"), "isRowHidden:", v6))
    {
      LODWORD(v6) = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] nextVisibleRow:v6];
    }

    v9 = 0xFFFF;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    if ([(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] isRowHidden:(v6 - 1)])
    {
      LODWORD(v6) = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] previousVisibleRow:(v6 - 1)]+ 1;
    }

    v9 = 0x10000;
  }

  if (v6 >= v9)
  {
    return 0;
  }

LABEL_13:
  v10 = [v8 count];
  result = 0;
  v12 = a2 ^ 1;
  if (v6)
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0 && v10 > v6)
  {
    if (a2 && [v8 count] - 1 == v6)
    {
      return 0;
    }

    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t TSTMasterLayoutGetDefaultStrokesForGridRow(TSTMasterLayout *a1, unsigned int a2, int a3)
{
  StrokeDefaults = TSTMasterLayoutGetStrokeDefaults(a1);
  if ([(TSTMasterLayout *)a1 emptyFilteredTable]|| !a1->mCachedNumberOfHeaderRows)
  {
    v8 = 0;
  }

  else
  {
    if ([(TSTMasterLayout *)a1 emptyFilteredTable])
    {
      mCachedNumberOfHeaderRows = 0;
    }

    else
    {
      mCachedNumberOfHeaderRows = a1->mCachedNumberOfHeaderRows;
    }

    if (mCachedNumberOfHeaderRows == a2)
    {
      v8 = a3 ^ 1;
    }

    else
    {
      v8 = 0;
    }

    if (mCachedNumberOfHeaderRows == a2)
    {
      a2 += a3;
    }
  }

  if (![(TSTMasterLayout *)a1 emptyFilteredTable]&& a1->mCachedNumberOfFooterRows)
  {
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
    v10 = [(TSTMasterLayout *)a1 emptyFilteredTable]? 0 : a1->mCachedNumberOfFooterRows;
    if (a2 == TableNumberOfRows - v10)
    {
      a2 -= a3 ^ 1;
    }
  }

  v11 = TSTTableStrokeDefaultsForRow(StrokeDefaults, a2);
  v12 = v11;
  if (v8)
  {
    TSTStrokeRunArrayWriteLock(v11);
    TSTStrokeRunArraySetEntireCustom(v12);
    TSTStrokeRunArrayUnlock(v12);
  }

  TSTStrokeRunArrayReadLock(v12);
  return v12;
}

TSTStrokeRunArray *TSTMasterLayoutGetMergedStrokesForGridRow(TSTMasterLayout *a1, unsigned int a2)
{
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  StrokesForGridRow = TSTMasterLayoutGetStrokesForGridRow(a1, a2, 1, 0);
  v5 = TSTMasterLayoutGetStrokesForGridRow(a1, a2, 0, 0);
  v6 = TSTStrokeRunArrayMergeHorizontalStrokes(StrokesForGridRow, v5);
  if (StrokesForGridRow)
  {
    TSTStrokeRunArrayUnlock(StrokesForGridRow);
  }

  if (v5)
  {
    TSTStrokeRunArrayUnlock(v5);
  }

  [(NSRecursiveLock *)a1->mStrokesLock unlock];
  return v6;
}

TSTStrokeRunArray *TSTMasterLayoutSetStrokesForCellID(TSTMasterLayout *a1, unint64_t a2, TSDStroke *a3, TSDStroke *a4, TSDStroke *a5, TSDStroke *a6)
{
  v10 = a2;
  v12 = a2 >> 16;
  result = [MEMORY[0x277CBEB68] null];
  v14 = result;
  if (result != a3)
  {
    result = TSTMasterLayoutSetStrokeForGridRow(a1, a3, v10, 1, v12, v12 + 1);
  }

  if (v14 != a4)
  {
    result = TSTMasterLayoutSetStrokeForGridRow(a1, a4, v10 + 1, 0, v12, v12 + 1);
  }

  if (v14 != a6)
  {
    result = TSTMasterLayoutSetStrokeForGridColumn(a1, a6, v12, 1, v10, v10 + 1);
  }

  if (v14 != a5)
  {

    return TSTMasterLayoutSetStrokeForGridColumn(a1, a5, v12 + 1, 0, v10, v10 + 1);
  }

  return result;
}

uint64_t TSTMasterLayoutSetStrokesValidForRange(TSTMasterLayout *a1, unint64_t a2)
{
  v4 = BYTE2(a2);
  v5 = HIDWORD(a2);
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  v6 = [(NSMutableArray *)a1->mTopRowStrokes count];
  v24 = [(NSMutableArray *)a1->mLeftColumnStrokes count];
  v25 = a2;
  v7 = BYTE2(a2);
  v8 = (v5 + BYTE2(a2) - 1);
  v9 = HIWORD(a2);
  if (v8 >= v4)
  {
    v10 = 0;
    v11 = a2;
    do
    {
      if ((TSTMasterLayoutIsGridRowHidden(a1, v11 + v10) & 1) == 0 && v6 > v11 + v10)
      {
        if (v10 < v9)
        {
          StrokesForGridRow = TSTMasterLayoutGetStrokesForGridRow(a1, v11 + v10, 1, 1);
          if (StrokesForGridRow)
          {
            v13 = StrokesForGridRow;
            TSTStrokeRunArraySetValid(StrokesForGridRow, v7, v8 + 1);
            TSTStrokeRunArrayUnlock(v13);
          }
        }

        if (v10)
        {
          v14 = TSTMasterLayoutGetStrokesForGridRow(a1, v11 + v10, 0, 1);
          if (v14)
          {
            v15 = v14;
            TSTStrokeRunArraySetValid(v14, v7, v8 + 1);
            TSTStrokeRunArrayUnlock(v15);
          }
        }
      }

      ++v10;
    }

    while (v9 + 1 != v10);
  }

  v16 = (v25 + v9 - 1);
  if (v16 >= v25)
  {
    v17 = 0;
    do
    {
      if ((TSTMasterLayoutIsGridColumnHidden(a1, v7 + v17) & 1) == 0 && v24 > v7 + v17)
      {
        if (v17 < WORD2(v25))
        {
          StrokesForGridColumn = TSTMasterLayoutGetStrokesForGridColumn(a1, v7 + v17, 1, 1);
          if (StrokesForGridColumn)
          {
            v19 = StrokesForGridColumn;
            TSTStrokeRunArraySetValid(StrokesForGridColumn, v25, v16 + 1);
            TSTStrokeRunArrayUnlock(v19);
          }
        }

        if (v17)
        {
          v20 = TSTMasterLayoutGetStrokesForGridColumn(a1, v7 + v17, 0, 1);
          if (v20)
          {
            v21 = v20;
            TSTStrokeRunArraySetValid(v20, v25, v16 + 1);
            TSTStrokeRunArrayUnlock(v21);
          }
        }
      }

      ++v17;
    }

    while (WORD2(v25) + 1 != v17);
  }

  mStrokesLock = a1->mStrokesLock;

  return [(NSRecursiveLock *)mStrokesLock unlock];
}

uint64_t TSTMasterLayoutIsGridRowHidden(void *a1, unsigned int a2)
{
  TSTMasterLayoutGetTableNumberOfColumns(a1);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
  if (a2)
  {
    v5 = [objc_msgSend(a1 "hiddenRowsColumnsCache")];
  }

  else
  {
    v5 = 1;
  }

  if (a2 <= (TableNumberOfRows - 1))
  {
    v6 = [objc_msgSend(a1 "hiddenRowsColumnsCache")];
  }

  else
  {
    v6 = 1;
  }

  return v5 & v6;
}

uint64_t TSTMasterLayoutIsGridColumnHidden(void *a1, unsigned int a2)
{
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  TSTMasterLayoutGetTableNumberOfRows(a1);
  if (a2)
  {
    v5 = [objc_msgSend(a1 "hiddenRowsColumnsCache")];
  }

  else
  {
    v5 = 1;
  }

  if (a2 <= (TableNumberOfColumns - 1))
  {
    v6 = [objc_msgSend(a1 "hiddenRowsColumnsCache")];
  }

  else
  {
    v6 = 1;
  }

  return v5 & v6;
}

TSTMasterLayout *TSTMasterLayoutGetStrokesForCellID(TSTMasterLayout *result, unint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v9 = a2;
  v10 = result;
  v11 = a2 >> 16;
  if (a3)
  {
    MergedStrokesForGridRow = TSTMasterLayoutGetMergedStrokesForGridRow(result, a2);
    v14 = TSTStrokeRunArrayLookupStroke(MergedStrokesForGridRow, v11);
    if (v14)
    {
      *a3 = *(v14 + 1);
    }

    result = TSTStrokeRunArrayUnlock(MergedStrokesForGridRow);
  }

  if (a5)
  {
    v15 = TSTMasterLayoutGetMergedStrokesForGridRow(v10, v9 + 1);
    v16 = TSTStrokeRunArrayLookupStroke(v15, v11);
    if (v16)
    {
      *a5 = *(v16 + 1);
    }

    result = TSTStrokeRunArrayUnlock(v15);
  }

  if (a4)
  {
    MergedStrokesForGridColumn = TSTMasterLayoutGetMergedStrokesForGridColumn(v10, v11);
    v18 = TSTStrokeRunArrayLookupStroke(MergedStrokesForGridColumn, v9);
    if (v18)
    {
      *a4 = *(v18 + 1);
    }

    result = TSTStrokeRunArrayUnlock(MergedStrokesForGridColumn);
  }

  if (a6)
  {
    v19 = TSTMasterLayoutGetMergedStrokesForGridColumn(v10, v11 + 1);
    v20 = TSTStrokeRunArrayLookupStroke(v19, v9);
    if (v20)
    {
      *a6 = *(v20 + 1);
    }

    return TSTStrokeRunArrayUnlock(v19);
  }

  return result;
}

uint64_t TSTMasterLayoutGetStrokesForCellRange(TSTMasterLayout *a1, unint64_t a2, id *a3, id *a4, id *a5, id *a6)
{
  if (HIDWORD(a2) != 65537 || a2 == 0xFFFFLL || (a2 & 0xFF0000) == 0xFF0000)
  {
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    TSTMasterLayoutGetStrokesForCellID(a1, a2 & 0xFFFFFF, a3, a4, 0, 0);
    v13 = (a2 + ((a2 >> 16) & 0xFF0000) + 16711680) & 0xFF0000;
    result = TSTMasterLayoutGetStrokesForCellID(a1, v13 | (a2 + HIWORD(a2) - 1), 0, 0, a5, a6);
    if (a3 | a6)
    {
      result = TSTMasterLayoutGetStrokesForCellID(a1, v13 | a2, &v33, 0, 0, &v30);
    }

    if (a4 | a5)
    {
      result = TSTMasterLayoutGetStrokesForCellID(a1, (a2 + HIWORD(a2) - 1) | a2 & 0xFF0000, 0, &v32, &v31, 0);
    }

    if (a3 && v33)
    {
      v14 = 0.0;
      v15 = 0.0;
      if (*a3 && ([*a3 empty] & 1) == 0)
      {
        [*a3 width];
        v15 = v16;
      }

      result = [v33 empty];
      if ((result & 1) == 0)
      {
        result = [v33 width];
        v14 = v17;
      }

      if (v15 < v14)
      {
        *a3 = v33;
      }
    }

    if (a4 && v32)
    {
      v18 = 0.0;
      v19 = 0.0;
      if (*a4 && ([*a4 empty] & 1) == 0)
      {
        [*a4 width];
        v19 = v20;
      }

      result = [v32 empty];
      if ((result & 1) == 0)
      {
        result = [v32 width];
        v18 = v21;
      }

      if (v19 < v18)
      {
        *a4 = v32;
      }
    }

    if (a5 && v31)
    {
      v22 = 0.0;
      v23 = 0.0;
      if (*a5 && ([*a5 empty] & 1) == 0)
      {
        [*a5 width];
        v23 = v24;
      }

      result = [v31 empty];
      if ((result & 1) == 0)
      {
        result = [v31 width];
        v22 = v25;
      }

      if (v23 < v22)
      {
        *a5 = v31;
      }
    }

    if (a6 && v30)
    {
      v26 = 0.0;
      v27 = 0.0;
      if (*a6 && ([*a6 empty] & 1) == 0)
      {
        [*a6 width];
        v27 = v28;
      }

      result = [v30 empty];
      if ((result & 1) == 0)
      {
        result = [v30 width];
        v26 = v29;
      }

      if (v27 < v26)
      {
        *a6 = v30;
      }
    }
  }

  else
  {

    return TSTMasterLayoutGetStrokesForCellID(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

double TSTMasterLayoutContentSizeForCellRange(TSTMasterLayout *a1, unint64_t a2, char a3)
{
  v6 = 0.0;
  if ((a2 & 0xFFFF00000000) != 0)
  {
    v6 = TSTMasterLayoutContentWidthForCellRange(a1, a2, a3);
  }

  if (HIWORD(a2))
  {
    TSTMasterLayoutContentHeightForCellRange(a1, a2, a3);
  }

  return v6;
}

double TSTMasterLayoutContentWidthForCellRange(TSTMasterLayout *a1, unint64_t a2, char a3)
{
  v5 = HIDWORD(a2) + WORD1(a2) + 255;
  v6 = 0.0;
  if (BYTE2(a2) <= (BYTE4(a2) + BYTE2(a2) - 1))
  {
    v8 = a2 >> 16;
    do
    {
      v6 = v6 + TSTMasterLayoutWidthOfColumn(a1, v8, a3, 0, 1);
      LODWORD(v8) = v8 + 1;
    }

    while (v8 <= v5);
  }

  v9 = (a2 + HIWORD(a2) - 1);
  v10 = TSTMasterLayoutStrokeWidthOfGridColumn(a1, BYTE2(a2), a2, v9 + 1);
  TableNumberOfColumns = v5 + 1;
  if (TableNumberOfColumns >= TSTMasterLayoutGetTableNumberOfColumns(a1))
  {
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  }

  return fmax(v6 - v10 * 0.5 - TSTMasterLayoutStrokeWidthOfGridColumn(a1, TableNumberOfColumns, a2, v9 + 1) * 0.5, 0.0);
}

double TSTMasterLayoutContentHeightForCellRange(TSTMasterLayout *a1, unint64_t a2, char a3)
{
  v5 = a2 + HIWORD(a2) - 1;
  v6 = (a2 + HIWORD(a2) - 1);
  v7 = 0.0;
  if (v6 >= a2)
  {
    v9 = a2;
    do
    {
      v7 = v7 + TSTMasterLayoutHeightOfRow(a1, v9++, a3, 0, 1, 1);
    }

    while (v9 <= v5);
  }

  v10 = BYTE2(a2);
  if (BYTE2(a2) <= (BYTE4(a2) + BYTE2(a2) - 1))
  {
    v11 = (BYTE4(a2) + BYTE2(a2) - 1);
  }

  else
  {
    v11 = BYTE2(a2);
  }

  v12 = TSTMasterLayoutStrokeHeightOfGridRow(a1, a2, BYTE2(a2), v11 + 1);
  TableNumberOfRows = v6 + 1;
  if (v6 + 1 >= TSTMasterLayoutGetTableNumberOfRows(a1))
  {
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
  }

  return fmax(v7 - v12 * 0.5 - TSTMasterLayoutStrokeHeightOfGridRow(a1, TableNumberOfRows, v10, v11 + 1) * 0.5, 0.0);
}

uint64_t TSTMasterLayoutUpdateStrokesForCell(TSTMasterLayout *a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  v7 = [(TSTMasterLayout *)a1 modelCellIDForStrokesOfLayoutCellID:a3];
  result = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] isRowHidden:a3];
  if ((result & 1) == 0)
  {
    result = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)a1 hiddenRowsColumnsCache] isColumnHidden:BYTE2(a3)];
    if ((result & 1) == 0)
    {
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = 0;
      v9 = TSTTableMergeRangeAtCellID([(TSTMasterLayout *)a1 tableModel], v7);
      if (![(TSTMasterLayout *)a1 isDynamicallyChangingRowCount])
      {
        goto LABEL_36;
      }

      v10 = [(TSTTableModel *)[(TSTMasterLayout *)a1 tableModel] bodyRowRange];
      if (!HIWORD(v10))
      {
        goto LABEL_36;
      }

      if ((v10 & 0xFFFF00000000) == 0)
      {
        goto LABEL_36;
      }

      if (!HIWORD(v9))
      {
        goto LABEL_36;
      }

      if ((v9 & 0xFFFF00000000) == 0)
      {
        goto LABEL_36;
      }

      if (v10 > v9)
      {
        goto LABEL_36;
      }

      if ((v10 + HIWORD(v10) - 1) < v9)
      {
        goto LABEL_36;
      }

      if (BYTE2(v10) > BYTE2(v9))
      {
        goto LABEL_36;
      }

      v11 = (BYTE4(v10) + BYTE2(v10) - 1);
      if (v11 < BYTE2(v9) || v11 < (BYTE4(v9) + BYTE2(v9) - 1) || (v10 + HIWORD(v10) - 1) < (v9 + HIWORD(v9) - 1))
      {
        goto LABEL_36;
      }

      v12 = [(TSTTableModel *)[(TSTMasterLayout *)a1 tableModel] bodyRowRange];
      v13 = [(TSTMasterLayout *)a1 dynamicRowAdjustment];
      v14 = 0;
      v15 = 16711680;
      v16 = 0xFFFFLL;
      if (v9 != 0xFFFF)
      {
        v17 = 0;
        if ((v9 & 0xFF0000) == 0xFF0000)
        {
          goto LABEL_35;
        }

        v14 = 0;
        v15 = 16711680;
        v16 = 0xFFFFLL;
        if (v12 != 0xFFFF)
        {
          v17 = 0;
          if ((v12 & 0xFF0000) != 0xFF0000)
          {
            v14 = 0;
            v15 = 16711680;
            v16 = 0xFFFFLL;
            if ((v12 & 0xFFFF00000000) != 0)
            {
              v18 = v13 + HIWORD(v12);
              v17 = 0;
              if (v13 + HIWORD(v12))
              {
                v16 = 0;
                v19 = BYTE2(v12);
                if (BYTE2(v9) > BYTE2(v12))
                {
                  v19 = BYTE2(v9);
                }

                if (v9 <= v12)
                {
                  v20 = v12;
                }

                else
                {
                  v20 = v9;
                }

                if ((BYTE4(v9) + BYTE2(v9) - 1) >= (BYTE4(v12) + BYTE2(v12) - 1))
                {
                  v21 = (BYTE4(v12) + BYTE2(v12) - 1);
                }

                else
                {
                  v21 = (BYTE4(v9) + BYTE2(v9) - 1);
                }

                if ((v9 + HIWORD(v9) - 1) >= (v12 + v18 - 1))
                {
                  v22 = (v12 + v18 - 1);
                }

                else
                {
                  v22 = (v9 + HIWORD(v9) - 1);
                }

                v15 = 0;
                v14 = 0;
                v17 = 0;
                if (v20 <= v22 && v19 <= v21)
                {
                  v17 = ((v22 - v20) << 48) + 0x1000000000000;
                  v14 = (((v21 - v19) << 32) + 0x100000000) & 0xFFFF00000000;
                  v15 = v19 << 16;
                  v16 = v20;
                }
              }

              goto LABEL_35;
            }

            goto LABEL_34;
          }

LABEL_35:
          v9 = v15 | v16 | v14 | v17;
LABEL_36:
          TSTTableGetStrokesForCellIDWithMergeRange([(TSTMasterLayout *)a1 tableModel], v7, v9, &v26, &v24, &v25, &v23, a2);
          return TSTMasterLayoutSetStrokesForCellID(a1, v6, v26, v25, v23, v24);
        }
      }

LABEL_34:
      v17 = 0;
      goto LABEL_35;
    }
  }

  return result;
}

uint64_t TSTMasterLayoutPreviousVisibleRow(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 previousVisibleRow:a2];
}

uint64_t TSTMasterLayoutPreviousVisibleColumn(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 previousVisibleColumn:a2];
}

uint64_t TSTMasterLayoutMergeRangeAtCellID(void *a1, unsigned int a2)
{
  v5 = 0xFFFFFFLL;
  if ([a1 dynamicContentDelegate] && (objc_msgSend(a1, "dynamicContentDelegate"), (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend(objc_msgSend(a1, "dynamicContentDelegate"), "mergeRange:forCellID:", &v5, a2))
  {
    return v5;
  }

  else
  {
    return TSTTableMergeRangeAtCellID([a1 tableModel], a2);
  }
}

uint64_t TSTMasterLayoutIsRowHiddenWorker(void *a1, uint64_t a2)
{
  if ([a1 isDynamicallyRevealingRowsCols:0 rowColIndex:a2])
  {
    return 0;
  }

  if ([a1 isDynamicallyHidingRowsCols:0 rowColIndex:a2])
  {
    return 1;
  }

  v5 = [a1 emptyFilteredTable];
  if (!a2 && (v5 & 1) != 0 || ([a1 processHiddenRowsForExport] & 1) != 0)
  {
    return 0;
  }

  v6 = [a1 tableModel];

  return TSTHidingActionForRow(v6, a2);
}

uint64_t TSTMasterLayoutIsRowUserHidden(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 isRowUserHidden:a2];
}

uint64_t TSTMasterLayoutIsColumnHiddenWorker(void *a1, uint64_t a2)
{
  if ([a1 isDynamicallyRevealingRowsCols:1 rowColIndex:a2])
  {
    return 0;
  }

  v4 = 1;
  if ([a1 isDynamicallyHidingRowsCols:1 rowColIndex:a2])
  {
    return v4;
  }

  v6 = [a1 tableModel];

  return TSTHidingActionForColumn(v6, a2);
}

uint64_t TSTMasterLayoutIsAnyPartOfCellRangeHidden(void *a1, unint64_t a2)
{
  result = 0;
  if (a2 != 0xFFFF && (a2 & 0xFF0000) != 0xFF0000)
  {
    result = 0;
    if (HIWORD(a2))
    {
      if ((a2 & 0xFFFF00000000) != 0)
      {
        if ([objc_msgSend(a1 "hiddenRowsColumnsCache")])
        {
          return 1;
        }

        else
        {
          v5 = [a1 hiddenRowsColumnsCache];

          return [v5 anyColumnsHiddenInCellRange:a2];
        }
      }
    }
  }

  return result;
}

uint64_t TSTMasterLayoutIsRowHiddenInCellRange(void *a1, unint64_t a2)
{
  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000 || !HIWORD(a2) || (a2 & 0xFFFF00000000) == 0)
  {
    return 0;
  }

  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 anyRowsHiddenInCellRange:a2];
}

uint64_t TSTMasterLayoutIsRowUserHiddenInCellRange(void *a1, unint64_t a2)
{
  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000 || !HIWORD(a2) || (a2 & 0xFFFF00000000) == 0)
  {
    return 0;
  }

  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 anyRowsUserHiddenInCellRange:a2];
}

uint64_t TSTMasterLayoutIsColumnHiddenInCellRange(void *a1, unint64_t a2)
{
  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000 || !HIWORD(a2) || (a2 & 0xFFFF00000000) == 0)
  {
    return 0;
  }

  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 anyColumnsHiddenInCellRange:a2];
}

uint64_t TSTMasterLayoutNextVisibleRow(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 nextVisibleRow:a2];
}

uint64_t TSTMasterLayoutNextVisibleColumn(void *a1, uint64_t a2)
{
  v3 = [a1 hiddenRowsColumnsCache];

  return [v3 nextVisibleColumn:a2];
}

double TSTMasterLayoutDynamicResizeSave(uint64_t a1, _BYTE *a2, void *a3, void *a4, _BYTE *a5, void *a6, double *a7)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3949, @"invalid nil value for '%s'", "resizingColumns"}];
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277D6C290] currentHandler];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
  [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3946, @"invalid nil value for '%s'", "masterLayout"}];
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_13:
  v22 = [MEMORY[0x277D6C290] currentHandler];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
  [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3950, @"invalid nil value for '%s'", "resizeColumnRange"}];
LABEL_4:
  if (!a4)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3951, @"invalid nil value for '%s'", "resizeColumnAdjustment"}];
  }

  *a2 = *(a1 + 450);
  *a3 = *(a1 + 452);
  *a4 = *(a1 + 464);
  if (!a5)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3957, @"invalid nil value for '%s'", "resizingRows"}];
  }

  if (!a6)
  {
    v24 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3958, @"invalid nil value for '%s'", "resizeRowRange"}];
    if (a7)
    {
      goto LABEL_10;
    }

LABEL_15:
    v26 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeSave(TSTMasterLayout *, BOOL *, TSTCellRange *, CGFloat *, BOOL *, TSTCellRange *, CGFloat *)"}];
    [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3959, @"invalid nil value for '%s'", "resizeRowAdjustment"}];
    goto LABEL_10;
  }

  if (!a7)
  {
    goto LABEL_15;
  }

LABEL_10:
  *a5 = *(a1 + 472);
  *a6 = *(a1 + 474);
  result = *(a1 + 488);
  *a7 = result;
  return result;
}

uint64_t TSTMasterLayoutDynamicResizeRestore(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7)
{
  v13 = result;
  v14 = (result + 452);
  if (!result)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTMasterLayoutDynamicResizeRestore(TSTMasterLayout *, BOOL, TSTCellRange, CGFloat, BOOL, TSTCellRange, CGFloat)"}];
    result = [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 3970, @"invalid nil value for '%s'", "masterLayout"}];
  }

  *(v13 + 450) = a2;
  *v14 = a3;
  *(v13 + 464) = a6;
  *(v13 + 472) = a4;
  *(v14 + 22) = a5;
  *(v13 + 488) = a7;
  return result;
}

uint64_t TSTMasterLayoutStrokesArrayRangeUpdate(TSTMasterLayout *a1)
{
  [(NSRecursiveLock *)a1->mStrokesLock lock];
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
  v3 = TableNumberOfColumns + 1;
  v4 = [(NSMutableArray *)a1->mLeftColumnStrokes count];
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
  v6 = TableNumberOfRows + 1;
  v7 = [(NSMutableArray *)a1->mTopRowStrokes count];
  mDefaultStrokes = a1->mDefaultStrokes;
  if (mDefaultStrokes)
  {
    if (v3 != v4 || v6 != v7)
    {
      TSTTableStrokeDefaultsRelease(mDefaultStrokes);
      a1->mDefaultStrokes = 0;
    }
  }

  if (TableNumberOfColumns >= v4)
  {
    if (v3 - v4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v3 - v4;
    }

    do
    {
      -[NSMutableArray addObject:](a1->mLeftColumnStrokes, "addObject:", [MEMORY[0x277CBEB68] null]);
      -[NSMutableArray addObject:](a1->mRightColumnStrokes, "addObject:", [MEMORY[0x277CBEB68] null]);
      --v12;
    }

    while (v12);
    v13 = TSTMasterLayoutGetTableNumberOfColumns(a1);
    v34 = 0;
    v35 = TSTMasterLayoutGetTableNumberOfRows(a1) << 48;
    v10 = (v13 - (v4 - 1)) << 32;
    v11 = (v4 - 1) << 16;
  }

  else
  {
    v10 = 0;
    v11 = 16711680;
    v34 = 0xFFFFLL;
    v35 = 0;
  }

  v37 = v11;
  v38 = v10;
  if (TableNumberOfRows >= v7)
  {
    if (v6 - v7 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v6 - v7;
    }

    do
    {
      -[NSMutableArray addObject:](a1->mTopRowStrokes, "addObject:", [MEMORY[0x277CBEB68] null]);
      -[NSMutableArray addObject:](a1->mBottomRowStrokes, "addObject:", [MEMORY[0x277CBEB68] null]);
      --v17;
    }

    while (v17);
    v15 = TSTMasterLayoutGetTableNumberOfColumns(a1) << 32;
    v14 = (TSTMasterLayoutGetTableNumberOfRows(a1) - (v7 - 1)) << 48;
    v16 = (v7 - 1);
  }

  else
  {
    v14 = 0;
    v15 = 16711680;
    v16 = 0xFFFFLL;
  }

  v36 = v16;
  if (v3 < v4)
  {
    v32 = v14;
    v33 = v15;
    v18 = 0;
    do
    {
      objc_opt_class();
      [(NSMutableArray *)a1->mTopRowStrokes objectAtIndex:v18];
      v19 = TSUDynamicCast();
      if (v19)
      {
        v20 = v19;
        TSTStrokeRunArrayWriteLock(v19);
        TSTStrokeRunArrayTruncate(v20, TableNumberOfColumns);
        TSTStrokeRunArrayUnlock(v20);
      }

      objc_opt_class();
      [(NSMutableArray *)a1->mBottomRowStrokes objectAtIndex:v18];
      v21 = TSUDynamicCast();
      if (v21)
      {
        v22 = v21;
        TSTStrokeRunArrayWriteLock(v21);
        TSTStrokeRunArrayTruncate(v22, TableNumberOfColumns);
        TSTStrokeRunArrayUnlock(v22);
      }

      ++v18;
    }

    while (v6 != v18);
    if (v4 - v3 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v4 - v3;
    }

    v14 = v32;
    v15 = v33;
    do
    {
      [(NSMutableArray *)a1->mLeftColumnStrokes removeLastObject];
      [(NSMutableArray *)a1->mRightColumnStrokes removeLastObject];
      --v23;
    }

    while (v23);
  }

  if (v6 < v7)
  {
    v24 = 0;
    do
    {
      objc_opt_class();
      [(NSMutableArray *)a1->mLeftColumnStrokes objectAtIndex:v24];
      v25 = TSUDynamicCast();
      if (v25)
      {
        v26 = v25;
        TSTStrokeRunArrayWriteLock(v25);
        TSTStrokeRunArrayTruncate(v26, TableNumberOfRows);
        TSTStrokeRunArrayUnlock(v26);
      }

      objc_opt_class();
      [(NSMutableArray *)a1->mRightColumnStrokes objectAtIndex:v24];
      v27 = TSUDynamicCast();
      if (v27)
      {
        v28 = v27;
        TSTStrokeRunArrayWriteLock(v27);
        TSTStrokeRunArrayTruncate(v28, TableNumberOfRows);
        TSTStrokeRunArrayUnlock(v28);
      }

      ++v24;
    }

    while (v3 != v24);
    if (v7 - v6 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v7 - v6;
    }

    do
    {
      [(NSMutableArray *)a1->mTopRowStrokes removeLastObject];
      [(NSMutableArray *)a1->mBottomRowStrokes removeLastObject];
      --v29;
    }

    while (v29);
  }

  result = [(NSRecursiveLock *)a1->mStrokesLock unlock];
  if ((~v37 & 0xFF0000) != 0)
  {
    v31 = v34 | v35 | v38;
    if ((v31 | v37) != 0xFFFFLL && (v38 & 0xFFFF00000000) != 0 && HIWORD(v31))
    {
      result = TSTMasterLayoutInvalidateStrokeRange(a1);
    }
  }

  if (v36 != 0xFFFF && ((v14 | v15 | v36) & 0xFF0000) != 0xFF0000 && (v15 & 0xFFFF00000000) != 0 && (v14 | v15) >> 48)
  {

    return TSTMasterLayoutInvalidateStrokeRange(a1);
  }

  return result;
}

TSTTableStrokeDefaults *TSTMasterLayoutGetStrokeDefaults(TSTMasterLayout *a1)
{
  result = a1->mDefaultStrokes;
  if (!result)
  {
    v3 = [(TSTMasterLayout *)a1 tableModel];
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(a1);
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(a1);
    if ([(TSTMasterLayout *)a1 emptyFilteredTable])
    {
      mCachedNumberOfHeaderColumns = 0;
    }

    else
    {
      mCachedNumberOfHeaderColumns = a1->mCachedNumberOfHeaderColumns;
    }

    if ([(TSTMasterLayout *)a1 emptyFilteredTable])
    {
      mCachedNumberOfHeaderRows = 0;
    }

    else
    {
      mCachedNumberOfHeaderRows = a1->mCachedNumberOfHeaderRows;
    }

    if ([(TSTMasterLayout *)a1 emptyFilteredTable])
    {
      mCachedNumberOfFooterRows = 0;
    }

    else
    {
      mCachedNumberOfFooterRows = a1->mCachedNumberOfFooterRows;
    }

    result = TSTTableStrokeDefaultsCreate(v3, TableNumberOfColumns, TableNumberOfRows, mCachedNumberOfHeaderColumns, mCachedNumberOfHeaderRows, mCachedNumberOfFooterRows);
    a1->mDefaultStrokes = result;
  }

  return result;
}

id TSTCellCopy(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    memcpy((a2 + 8), (a1 + 8), 0x110uLL);
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v3 = *(a2 + 9);
    if (v3 == 3)
    {
      v4 = 24;
    }

    else
    {
      if (v3 != 5)
      {
LABEL_10:
        v6 = 0;
        goto LABEL_11;
      }

      v4 = 16;
    }

    v5 = *(a2 + v4);
    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  result = TSUFormatStructRetain();
  if ((v6 & 1) == 0)
  {
    v12 = *(a2 + 152);
    v13 = *(a2 + 168);
    v14 = *(a2 + 200);
    v15 = *(a2 + 184);
    v16 = *(a2 + 248);
    v17 = *(a2 + 232);
    v18 = *(a2 + 216);
    return *(a2 + 264);
  }

  return result;
}

double TSTCellClear(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if ((v2 & 0xFF00) == 0x300)
    {

      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      v2 = *(a1 + 8);
    }

    if ((v2 & 0xFF00) == 0x500)
    {

      *(a1 + 16) = 0;
    }
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {

    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {

    *(a1 + 56) = 0;
  }

  TSUFormatStructRelease();

  *(a1 + 152) = 0;
  *(a1 + 144) = 0;

  *(a1 + 168) = 0;
  *(a1 + 160) = 0;

  *(a1 + 200) = 0;
  *(a1 + 192) = 0;

  *(a1 + 184) = 0;
  *(a1 + 176) = 0;

  *(a1 + 216) = 0;
  *(a1 + 208) = 0;

  *(a1 + 248) = 0;
  *(a1 + 240) = 0;

  *(a1 + 232) = 0;
  *(a1 + 224) = 0;

  result = 0.0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  v8[16] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[1] = 0u;
  return result;
}

void TSTCellInflateFromStorageRef(uint64_t a1, unsigned __int8 *a2, id *a3)
{
  TSTCellClear(a1);
  TSTCellStorageToCell(a2, a1);
  if (a3)
  {

    TSTTableDataStoreResolveCellDataIDs(a3, a1);
  }
}

{
  TSTCellInflateFromStorageRef(a1, a2, a3);
}

uint64_t TSUEqualFormatStructs(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v24 = v3;
  v25 = v2;
  result = 1;
  if (v8 > 262)
  {
    if (v8 > 267)
    {
      if ((v8 - 270) >= 3)
      {
        if (v8 == 268)
        {
          if (*(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
          {
            return 0;
          }

          v18 = *(a1 + 8);
          v19 = *(a2 + 8);
        }

        else
        {
          if (v8 != 269)
          {
LABEL_34:
            v21 = [MEMORY[0x277D6C290] currentHandler];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUEqualFormatStructs(TSUFormatStruct, TSUFormatStruct)"}];
            [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatUtilities.h"), 191, @"We should have dealt with any types earlier."}];
            return 0;
          }

          if (*(a1 + 8) != *(a2 + 8))
          {
            return 0;
          }

          v18 = *(a1 + 10);
          v19 = *(a2 + 10);
        }

        return ((v19 ^ v18) & 1) == 0;
      }

      v16 = *(a1 + 8);
      v17 = *(a2 + 8);
      return v16 == v17;
    }

    if (v8 > 265)
    {
      if (v8 != 266)
      {
        return result;
      }

      if (*(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }

      v16 = *(a1 + 12);
      v17 = *(a2 + 12);
      return v16 == v17;
    }

    if ((v8 - 264) >= 2)
    {
      if (v8 == 263)
      {
        return result;
      }

      goto LABEL_34;
    }

    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    v13 = *(a2 + 36) ^ *(a1 + 36);
    v14 = (v13 & 0xC) == 0;
    v15 = (v13 & 3) == 0;
    return v15 && v14;
  }

  if (v8 > 259)
  {
    if (v8 == 260)
    {
      return result;
    }

    if (v8 != 261)
    {
      v16 = *(a1 + 8);
      v17 = *(a2 + 8);
      return v16 == v17;
    }

    result = [*(a1 + 16) isEqualToString:*(a2 + 16)];
    if (!result)
    {
      return result;
    }

    v23 = *(a2 + 8) ^ *(a1 + 8);
    v14 = (v23 & 2) == 0;
    v15 = (v23 & 1) == 0;
    return v15 && v14;
  }

  if ((v8 - 256) >= 4)
  {
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 254)
    {
      return 1;
    }

    goto LABEL_34;
  }

  v12 = *(a1 + 8);
  if (v12 == *(a2 + 8))
  {
    return ((*(a2 + 16) ^ *(a1 + 16)) & 0x1FFF) == 0;
  }

  result = [v12 isEqualToString:?];
  if (result)
  {
    return ((*(a2 + 16) ^ *(a1 + 16)) & 0x1FFF) == 0;
  }

  return result;
}

double TSTCellDoubleValue(TSTCell *a1)
{
  if (a1)
  {
    mPrivate = a1->mPrivate;
    if ((mPrivate & 0xFB00) == 0x200 || BYTE1(mPrivate) == 7)
    {
      mDate = a1->mPrivate.mValue.mDate;
    }

    else
    {
      mDate = 0;
      if (BYTE1(mPrivate))
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 889, @"invalid nil value for '%s'", "cell"}];
    mDate = 0;
  }

  return *&mDate;
}

uint64_t TSTCellDateValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 9))
    {
      if (*(result + 9) == 5)
      {
        return *(result + 16);
      }

      v2 = [MEMORY[0x277D6C290] currentHandler];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
      [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", v1}];
    }

    return 0;
  }

  return result;
}

void *TSTCellIsEqualForValidation(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return (a1 == a2);
  }

  result = [a2 isCellContentsEqualToCell:a1];
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 8) ^ *(a2 + 8)) > 0xFF)
  {
    return 0;
  }

  if ((*(a2 + 104) - 1) < 0xFFFFFFFE || *(a2 + 100))
  {
    if ((*(a1 + 104) - 1) >= 0xFFFFFFFE && !*(a1 + 100))
    {
      return 0;
    }

    v5 = *(a1 + 120);
    v43 = *(a1 + 104);
    v44 = v5;
    v45 = *(a1 + 136);
    v6 = *(a2 + 120);
    v40 = *(a2 + 104);
    v41 = v6;
    v42 = *(a2 + 136);
    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 104) - 1) < 0xFFFFFFFE || *(a1 + 100))
  {
    return 0;
  }

  v7 = *(a2 + 152);
  if (v7 && ([v7 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 152);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v8 = *(a1 + 152);
    if (v8)
    {
      [v8 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v25 = *(a2 + 152);
    if (v25)
    {
      [v25 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 152);
    if (v10)
    {
      [v10 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v11 = *(a2 + 168);
  if (v11 && ([v11 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 168);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v12 = *(a1 + 168);
    if (v12)
    {
      [v12 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v29 = *(a2 + 168);
    if (v29)
    {
      [v29 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v13 = *(a1 + 168);
    if (v13)
    {
      [v13 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v14 = *(a2 + 200);
  if (v14 && ([v14 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 200);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v15 = *(a1 + 200);
    if (v15)
    {
      [v15 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v33 = *(a2 + 200);
    if (v33)
    {
      [v33 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *(a1 + 200);
    if (v16)
    {
      [v16 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v17 = *(a2 + 184);
  if (v17 && ([v17 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 184);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v18 = *(a1 + 184);
    if (v18)
    {
      [v18 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v35 = *(a2 + 184);
    if (v35)
    {
      [v35 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a1 + 184);
    if (v19)
    {
      [v19 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v20 = *(a2 + 216);
  if (v20 && ([v20 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 216);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v21 = *(a1 + 216);
    if (v21)
    {
      [v21 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v36 = *(a2 + 216);
    if (v36)
    {
      [v36 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v22 = *(a1 + 216);
    if (v22)
    {
      [v22 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v23 = *(a2 + 232);
  if (v23 && ([v23 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 232);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v24 = *(a1 + 232);
    if (v24)
    {
      [v24 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v37 = *(a2 + 232);
    if (v37)
    {
      [v37 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(a1 + 232);
    if (v26)
    {
      [v26 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v27 = *(a2 + 248);
  if (v27 && ([v27 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 248);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v28 = *(a1 + 248);
    if (v28)
    {
      [v28 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v38 = *(a2 + 248);
    if (v38)
    {
      [v38 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v30 = *(a1 + 248);
    if (v30)
    {
      [v30 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  v31 = *(a2 + 264);
  if (v31 && ([v31 getFormatStruct], (v43 - 1) <= 0xFFFFFFFD))
  {
    result = *(a1 + 264);
    if (!result)
    {
      return result;
    }

    [result getFormatStruct];
    if ((v43 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v32 = *(a1 + 264);
    if (v32)
    {
      [v32 getFormatStruct];
    }

    else
    {
      v45 = 0;
      v43 = TSUInvalidFormat;
      v44 = unk_26CA67C28;
    }

    v39 = *(a2 + 264);
    if (v39)
    {
      [v39 getFormatStruct];
    }

    else
    {
      v42 = 0;
      v40 = TSUInvalidFormat;
      v41 = unk_26CA67C28;
    }

    if ((TSUEqualFormatStructs(&v43, &v40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = *(a1 + 264);
    if (v34)
    {
      [v34 getFormatStruct];
      if ((v43 - 1) < 0xFFFFFFFE)
      {
        return 0;
      }
    }
  }

  if (*(a2 + 96) != *(a1 + 96))
  {
    return 0;
  }

  return (*(a1 + 272) == *(a2 + 272));
}

void TSTCellClearValue(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if ((v2 & 0xFF00) == 0x300)
    {

      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      v2 = *(a1 + 8);
    }

    if ((v2 & 0xFF00) == 0x500)
    {

      *(a1 + 16) = 0;
      v2 = *(a1 + 8);
    }

    if ((v2 & 0xFF00) == 0x900)
    {
      v3 = *(a1 + 72);
      if (v3)
      {

        *(a1 + 72) = 0;
      }

      *(a1 + 64) = 0;
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t TSTCellClearAllFormats(uint64_t a1)
{
  if (a1)
  {

    *(a1 + 152) = 0;
    *(a1 + 144) = 0;

    *(a1 + 168) = 0;
    *(a1 + 160) = 0;

    *(a1 + 200) = 0;
    *(a1 + 192) = 0;

    *(a1 + 184) = 0;
    *(a1 + 176) = 0;

    *(a1 + 216) = 0;
    *(a1 + 208) = 0;

    *(a1 + 248) = 0;
    *(a1 + 240) = 0;

    *(a1 + 232) = 0;
    *(a1 + 224) = 0;

    *(a1 + 264) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 96) = 0;

  return TSTCellSetImplicitFormat(a1, &TSUNotSetFormat);
}

uint64_t TSTCellSetImplicitFormat(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v9 = *(a2 + 4);
  TSTCellSetFormatClearingID(a1, &v7, 1);
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  v9 = *(a2 + 4);
  return TSTCellSetFormatFlagsFromFormat(a1, &v7, 0, 1);
}

id TSTCellCopyJustStyleAndStrokes(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
  }

  v5 = *(a2 + 56);
  if (v5)
  {
  }

  *(a2 + 10) = (*(a1 + 8) & 0x8F00000u) >> 16;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 56);
  *(a2 + 56) = result;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 272) = *(a1 + 272);
  return result;
}

uint64_t TSTCellCopyAllFormats(uint64_t a1, uint64_t a2)
{
  TSTCellClearAllFormats(a2);
  if (!a1)
  {
    goto LABEL_90;
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    [v4 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v5 = *(a1 + 248);
      if (v5)
      {
        [v5 getFormatStruct];
        if (!a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_13;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v6 = *(a2 + 248);
      if (v6)
      {
        [v6 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v7 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 248) = [v7 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 240) = 0;
      }
    }
  }

LABEL_13:
  v8 = *(a1 + 216);
  if (v8)
  {
    [v8 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v9 = *(a1 + 216);
      if (v9)
      {
        [v9 getFormatStruct];
        if (!a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_24;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v10 = *(a2 + 216);
      if (v10)
      {
        [v10 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v11 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 216) = [v11 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 208) = 0;
      }
    }
  }

LABEL_24:
  v12 = *(a1 + 168);
  if (v12)
  {
    [v12 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v13 = *(a1 + 168);
      if (v13)
      {
        [v13 getFormatStruct];
        if (!a2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_35;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v14 = *(a2 + 168);
      if (v14)
      {
        [v14 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v15 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 168) = [v15 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 160) = 0;
      }
    }
  }

LABEL_35:
  v16 = *(a1 + 232);
  if (v16)
  {
    [v16 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v17 = *(a1 + 232);
      if (v17)
      {
        [v17 getFormatStruct];
        if (!a2)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_46;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v18 = *(a2 + 232);
      if (v18)
      {
        [v18 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v19 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 232) = [v19 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 224) = 0;
      }
    }
  }

LABEL_46:
  v20 = *(a1 + 200);
  if (v20)
  {
    [v20 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v21 = *(a1 + 200);
      if (v21)
      {
        [v21 getFormatStruct];
        if (!a2)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_57;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v22 = *(a2 + 200);
      if (v22)
      {
        [v22 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v23 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 200) = [v23 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 192) = 0;
      }
    }
  }

LABEL_57:
  v24 = *(a1 + 184);
  if (v24)
  {
    [v24 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v25 = *(a1 + 184);
      if (v25)
      {
        [v25 getFormatStruct];
        if (!a2)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_68;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v26 = *(a2 + 184);
      if (v26)
      {
        [v26 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v27 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 184) = [v27 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 176) = 0;
      }
    }
  }

LABEL_68:
  v28 = *(a1 + 264);
  if (v28)
  {
    [v28 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v29 = *(a1 + 264);
      if (v29)
      {
        [v29 getFormatStruct];
        if (!a2)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_79;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v30 = *(a2 + 264);
      if (v30)
      {
        [v30 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v31 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 264) = [v31 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 256) = 0;
      }
    }
  }

LABEL_79:
  v32 = *(a1 + 152);
  if (v32)
  {
    [v32 getFormatStruct];
    if ((v46 - 1) <= 0xFFFFFFFD)
    {
      v33 = *(a1 + 152);
      if (v33)
      {
        [v33 getFormatStruct];
        if (!a2)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v42 = 0;
        v40 = TSUInvalidFormat;
        v41 = unk_26CA67C28;
        if (!a2)
        {
          goto LABEL_90;
        }
      }

      v46 = v40;
      v47 = v41;
      v48 = v42;
      v34 = *(a2 + 152);
      if (v34)
      {
        [v34 getFormatStruct];
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      if ((TSUEqualFormatStructs(&v46, &v43) & 1) == 0)
      {

        v35 = objc_alloc(MEMORY[0x277D6C2F0]);
        v46 = v40;
        v47 = v41;
        v48 = v42;
        *(a2 + 152) = [v35 initWithTSUFormatFormatStruct:&v46];
        *(a2 + 144) = 0;
      }
    }
  }

LABEL_90:
  v36 = (a1 + 104);
  if (!a1)
  {
    v36 = &TSUInvalidFormat;
  }

  v37 = v36[1];
  v46 = *v36;
  v47 = v37;
  v48 = *(v36 + 4);
  result = TSTCellSetFormatClearingID(a2, &v46, 1);
  if (a1)
  {
    v39 = *(a1 + 96);
  }

  else
  {
    v39 = 0;
  }

  *(a2 + 96) = v39;
  return result;
}

uint64_t TSTCellSetFormatClearingID(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v12 = *a2;
  v13 = v6;
  v14 = *(a2 + 32);
  TSUFormatStructRetain();
  v7 = *(a1 + 120);
  v12 = *(a1 + 104);
  v13 = v7;
  v14 = *(a1 + 136);
  TSUFormatStructRelease();
  v8 = *a2;
  v9 = *(a2 + 16);
  *(a1 + 136) = *(a2 + 32);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  if (a3)
  {
    *(a1 + 100) = 0;
  }

  v10 = *(a2 + 16);
  v12 = *a2;
  v13 = v10;
  v14 = *(a2 + 32);
  return TSTCellSetCellFormatStructBasedOnType(a1, &v12, a3);
}

uint64_t TSTCellImpliedFormatType(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(a1 + 104);
  if ((result + 1) <= 2)
  {
    v3 = *(a1 + 8);
    if (BYTE1(v3) > 8u)
    {
      return 260;
    }

    else
    {
      return dword_26CA67C60[(v3 >> 8) & 0xF];
    }
  }

  return result;
}

void *TSTCellHasFormatOfType(void *a1, int a2)
{
  result = 0;
  if (a2 > 265)
  {
    if (a2 > 269)
    {
      if ((a2 - 270) >= 3)
      {
        return result;
      }

      if (!a1)
      {
        return 0;
      }

      result = a1[29];
      if (result)
      {
        goto LABEL_37;
      }
    }

    else
    {
      switch(a2)
      {
        case 266:
          if (!a1)
          {
            return 0;
          }

          result = a1[33];
          if (result)
          {
            goto LABEL_37;
          }

          break;
        case 268:
          if (a1)
          {
            result = a1[23];
            if (!result)
            {
              return result;
            }

            goto LABEL_37;
          }

          return 0;
        case 269:
          if (!a1)
          {
            return 0;
          }

          result = a1[31];
          if (result)
          {
            goto LABEL_37;
          }

          break;
        default:
          return result;
      }
    }
  }

  else
  {
    if (a2 > 260)
    {
      if ((a2 - 264) < 2)
      {
        if (!a1)
        {
          return 0;
        }

        result = a1[27];
        if (result)
        {
          goto LABEL_37;
        }

        return result;
      }

      if (a2 == 261)
      {
        if (!a1)
        {
          return 0;
        }

        result = a1[25];
        if (result)
        {
          goto LABEL_37;
        }

        return result;
      }

      if (a2 != 262)
      {
        return result;
      }
    }

    else if ((a2 - 258) >= 2 && a2 != 256)
    {
      if (a2 != 257)
      {
        return result;
      }

      if (a1)
      {
        result = a1[21];
        if (!result)
        {
          return result;
        }

LABEL_37:
        [result getFormatStruct];
        return ((v4 - 1) < 0xFFFFFFFE);
      }

      return 0;
    }

    if (!a1)
    {
      return 0;
    }

    result = a1[19];
    if (result)
    {
      goto LABEL_37;
    }
  }

  return result;
}

unint64_t TSTCellGetFormatOfType(void *a1, int a2, uint64_t a3)
{
  result = 0;
  switch(a2)
  {
    case 254:
    case 260:
    case 263:
    case 267:
      goto LABEL_29;
    case 255:
      return result;
    case 256:
    case 258:
    case 259:
    case 262:
      if (!a1)
      {
        goto LABEL_29;
      }

      v6 = a1[19];
      if (v6)
      {
        [v6 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[19];
      if (result)
      {
        goto LABEL_32;
      }

      return result;
    case 257:
      if (!a1)
      {
        goto LABEL_29;
      }

      v12 = a1[21];
      if (v12)
      {
        [v12 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[21];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 261:
      if (!a1)
      {
        goto LABEL_29;
      }

      v11 = a1[25];
      if (v11)
      {
        [v11 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[25];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 264:
    case 265:
      if (!a1)
      {
        goto LABEL_29;
      }

      v8 = a1[27];
      if (v8)
      {
        [v8 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[27];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 266:
      if (!a1)
      {
        goto LABEL_29;
      }

      v10 = a1[33];
      if (v10)
      {
        [v10 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[33];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 268:
      if (!a1)
      {
        goto LABEL_29;
      }

      v13 = a1[23];
      if (v13)
      {
        [v13 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[23];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 269:
      if (!a1)
      {
        goto LABEL_29;
      }

      v9 = a1[31];
      if (v9)
      {
        [v9 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[31];
      if (!result)
      {
        return result;
      }

      goto LABEL_32;
    case 270:
    case 271:
    case 272:
      if (!a1)
      {
        goto LABEL_29;
      }

      v7 = a1[29];
      if (v7)
      {
        [v7 getFormatStruct];
        *a3 = v14;
        *(a3 + 16) = v15;
        *(a3 + 32) = v16;
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = TSUInvalidFormat;
        *(a3 + 16) = unk_26CA67C28;
      }

      result = a1[29];
      if (!result)
      {
        return result;
      }

LABEL_32:
      [result getFormatStruct];
      result = (v14 - 1) < 0xFFFFFFFE;
      break;
    default:
      if ((a2 + 1) >= 3 && a2 != -999)
      {
        return result;
      }

LABEL_29:
      result = 0;
      *(a3 + 32) = 0;
      *a3 = TSUInvalidFormat;
      *(a3 + 16) = unk_26CA67C28;
      break;
  }

  return result;
}

uint64_t TSTCellSetCellFormatStructBasedOnType(uint64_t result, __int128 *a2, int a3)
{
  v4 = result;
  v5 = *a2;
  if (*a2 > 265)
  {
    if (v5 > 269)
    {
      if ((v5 - 270) < 3)
      {
        v33 = *a2;
        v41 = a2[1];
        v49 = *(a2 + 4);
        if (result)
        {
          v12 = a2[1];
          v57 = *a2;
          v58 = v12;
          v59 = *(a2 + 4);
          v13 = *(result + 232);
          if (v13)
          {
            [v13 getFormatStruct];
          }

          else
          {
            v56 = 0;
            v54 = 0u;
            v55 = 0u;
          }

          result = TSUEqualFormatStructs(&v57, &v54);
          if ((result & 1) == 0)
          {

            v23 = objc_alloc(MEMORY[0x277D6C2F0]);
            v57 = v33;
            v58 = v41;
            v59 = v49;
            result = [v23 initWithTSUFormatFormatStruct:&v57];
            *(v4 + 232) = result;
            if (a3)
            {
              *(v4 + 224) = 0;
            }
          }
        }
      }
    }

    else
    {
      switch(v5)
      {
        case 266:
          v36 = *a2;
          v44 = a2[1];
          v52 = *(a2 + 4);
          if (result)
          {
            v18 = a2[1];
            v57 = *a2;
            v58 = v18;
            v59 = *(a2 + 4);
            v19 = *(result + 264);
            if (v19)
            {
              [v19 getFormatStruct];
            }

            else
            {
              v56 = 0;
              v54 = 0u;
              v55 = 0u;
            }

            result = TSUEqualFormatStructs(&v57, &v54);
            if ((result & 1) == 0)
            {

              v26 = objc_alloc(MEMORY[0x277D6C2F0]);
              v57 = v36;
              v58 = v44;
              v59 = v52;
              result = [v26 initWithTSUFormatFormatStruct:&v57];
              *(v4 + 264) = result;
              if (a3)
              {
                *(v4 + 256) = 0;
              }
            }
          }

          break;
        case 268:
          v37 = *a2;
          v45 = a2[1];
          v53 = *(a2 + 4);
          if (result)
          {
            v20 = a2[1];
            v57 = *a2;
            v58 = v20;
            v59 = *(a2 + 4);
            v21 = *(result + 184);
            if (v21)
            {
              [v21 getFormatStruct];
            }

            else
            {
              v56 = 0;
              v54 = 0u;
              v55 = 0u;
            }

            result = TSUEqualFormatStructs(&v57, &v54);
            if ((result & 1) == 0)
            {

              v28 = objc_alloc(MEMORY[0x277D6C2F0]);
              v57 = v37;
              v58 = v45;
              v59 = v53;
              result = [v28 initWithTSUFormatFormatStruct:&v57];
              *(v4 + 184) = result;
              if (a3)
              {
                *(v4 + 176) = 0;
              }
            }
          }

          break;
        case 269:
          v31 = *a2;
          v39 = a2[1];
          v47 = *(a2 + 4);
          if (result)
          {
            v8 = a2[1];
            v57 = *a2;
            v58 = v8;
            v59 = *(a2 + 4);
            v9 = *(result + 248);
            if (v9)
            {
              [v9 getFormatStruct];
            }

            else
            {
              v56 = 0;
              v54 = 0u;
              v55 = 0u;
            }

            result = TSUEqualFormatStructs(&v57, &v54);
            if ((result & 1) == 0)
            {

              v29 = objc_alloc(MEMORY[0x277D6C2F0]);
              v57 = v31;
              v58 = v39;
              v59 = v47;
              result = [v29 initWithTSUFormatFormatStruct:&v57];
              *(v4 + 248) = result;
              if (a3)
              {
                *(v4 + 240) = 0;
              }
            }
          }

          break;
      }
    }
  }

  else
  {
    if (v5 <= 260)
    {
      if ((v5 - 258) >= 2 && v5 != 256)
      {
        if (v5 == 257)
        {
          v30 = *a2;
          v38 = a2[1];
          v46 = *(a2 + 4);
          if (result)
          {
            v6 = a2[1];
            v57 = *a2;
            v58 = v6;
            v59 = *(a2 + 4);
            v7 = *(result + 168);
            if (v7)
            {
              [v7 getFormatStruct];
            }

            else
            {
              v56 = 0;
              v54 = 0u;
              v55 = 0u;
            }

            result = TSUEqualFormatStructs(&v57, &v54);
            if ((result & 1) == 0)
            {

              v27 = objc_alloc(MEMORY[0x277D6C2F0]);
              v57 = v30;
              v58 = v38;
              v59 = v46;
              result = [v27 initWithTSUFormatFormatStruct:&v57];
              *(v4 + 168) = result;
              if (a3)
              {
                *(v4 + 160) = 0;
              }
            }
          }
        }

        return result;
      }

      goto LABEL_19;
    }

    if ((v5 - 264) < 2)
    {
      v34 = *a2;
      v42 = a2[1];
      v50 = *(a2 + 4);
      if (result)
      {
        v14 = a2[1];
        v57 = *a2;
        v58 = v14;
        v59 = *(a2 + 4);
        v15 = *(result + 216);
        if (v15)
        {
          [v15 getFormatStruct];
        }

        else
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }

        result = TSUEqualFormatStructs(&v57, &v54);
        if ((result & 1) == 0)
        {

          v24 = objc_alloc(MEMORY[0x277D6C2F0]);
          v57 = v34;
          v58 = v42;
          v59 = v50;
          result = [v24 initWithTSUFormatFormatStruct:&v57];
          *(v4 + 216) = result;
          if (a3)
          {
            *(v4 + 208) = 0;
          }
        }
      }
    }

    else
    {
      if (v5 != 261)
      {
        if (v5 != 262)
        {
          return result;
        }

LABEL_19:
        v32 = *a2;
        v40 = a2[1];
        v48 = *(a2 + 4);
        if (result)
        {
          v10 = a2[1];
          v57 = *a2;
          v58 = v10;
          v59 = *(a2 + 4);
          v11 = *(result + 152);
          if (v11)
          {
            [v11 getFormatStruct];
          }

          else
          {
            v56 = 0;
            v54 = 0u;
            v55 = 0u;
          }

          result = TSUEqualFormatStructs(&v57, &v54);
          if ((result & 1) == 0)
          {

            v22 = objc_alloc(MEMORY[0x277D6C2F0]);
            v57 = v32;
            v58 = v40;
            v59 = v48;
            result = [v22 initWithTSUFormatFormatStruct:&v57];
            *(v4 + 152) = result;
            if (a3)
            {
              *(v4 + 144) = 0;
            }
          }
        }

        return result;
      }

      v35 = *a2;
      v43 = a2[1];
      v51 = *(a2 + 4);
      if (result)
      {
        v16 = a2[1];
        v57 = *a2;
        v58 = v16;
        v59 = *(a2 + 4);
        v17 = *(result + 200);
        if (v17)
        {
          [v17 getFormatStruct];
        }

        else
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }

        result = TSUEqualFormatStructs(&v57, &v54);
        if ((result & 1) == 0)
        {

          v25 = objc_alloc(MEMORY[0x277D6C2F0]);
          v57 = v35;
          v58 = v43;
          v59 = v51;
          result = [v25 initWithTSUFormatFormatStruct:&v57];
          *(v4 + 200) = result;
          if (a3)
          {
            *(v4 + 192) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t TSTCellSetFormatFlagsFromFormat(uint64_t result, int *a2, int a3, int a4)
{
  v4 = *a2;
  if (result)
  {
    v5 = *(result + 104);
  }

  else
  {
    v5 = -1;
  }

  if (v4 == v5)
  {
    if (a3)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(result + 96) = *(result + 96) & 0xFFEF | v6;
  }

  switch(v4)
  {
    case 256:
    case 258:
    case 259:
    case 262:
      v7 = *(result + 96) & 0xFFFE | a3;
      *(result + 96) = v7;
      if (a4)
      {
        v8 = v7 & 0xE7FF;
        break;
      }

      return result;
    case 257:
      if (a3)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(result + 96) & 0xFFFD | v18;
      *(result + 96) = v19;
      if (a4)
      {
        v8 = v19 & 0xE7FF | 0x800;
        break;
      }

      return result;
    case 260:
      if (a4)
      {
        v8 = *(result + 96) & 0xBFFF;
        break;
      }

      return result;
    case 261:
      if (a3)
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(result + 96) & 0xFFF7 | v16;
      *(result + 96) = v17;
      if (a4)
      {
        v8 = v17 & 0xDFFF;
        break;
      }

      return result;
    case 264:
    case 265:
      v9 = *(result + 96) & 0xFFBF;
      v10 = a3 == 0;
      v11 = 64;
      goto LABEL_42;
    case 266:
      v9 = *(result + 96) & 0xFBFF;
      v10 = a3 == 0;
      v11 = 1024;
      goto LABEL_42;
    case 268:
      v9 = *(result + 96) & 0xFFFB;
      v10 = a3 == 0;
      v11 = 4;
LABEL_42:
      if (v10)
      {
        v11 = 0;
      }

      v8 = v9 | v11;
      break;
    case 269:
      if (a3)
      {
        v14 = 512;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(result + 96) & 0xFDFF | v14;
      *(result + 96) = v15;
      if (!a4)
      {
        return result;
      }

      v8 = v15 & 0xE7FF | 0x1000;
      break;
    case 270:
      if (a3)
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(result + 96) & 0xFEFF | v12;
      *(result + 96) = v13;
      if (!a4)
      {
        return result;
      }

      v8 = v13 | 0x1800;
      break;
    case 271:
      if (a3)
      {
        v22 = 256;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(result + 96) & 0xFEFF | v22;
      *(result + 96) = v23;
      if (!a4)
      {
        return result;
      }

      v8 = v23 | 0x4000;
      break;
    case 272:
      if (a3)
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(result + 96) & 0xFEFF | v20;
      *(result + 96) = v21;
      if (!a4)
      {
        return result;
      }

      v8 = v21 | 0x2000;
      break;
    default:
      return result;
  }

  *(result + 96) = v8;
  return result;
}

uint64_t TSTCellSetExplicitFormat(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v9 = *(a2 + 4);
  TSTCellSetFormatClearingID(a1, &v7, 1);
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  v9 = *(a2 + 4);
  return TSTCellSetFormatFlagsFromFormat(a1, &v7, 1, 1);
}

uint64_t TSTCellSetImplicitFormatForFormulaResult(uint64_t a1, __int128 *a2, int a3)
{
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  v12 = *(a2 + 4);
  TSTCellSetFormatClearingID(a1, &v10, 1);
  v7 = a2[1];
  v10 = *a2;
  v11 = v7;
  v12 = *(a2 + 4);
  result = TSTCellSetFormatFlagsFromFormat(a1, &v10, 0, 0);
  if (a3)
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 96) = v9 & 0x8000 | *(a1 + 96) & 0x7FFF;
  return result;
}

__CFString *NSStringFromNativeTSTCell(__CFString *result)
{
  p_info = &result[3].info;
  if (!result)
  {
    p_info = &TSUInvalidFormat;
  }

  v2 = p_info[1];
  v41 = *p_info;
  v42 = v2;
  v43 = *(p_info + 4);
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 0;
  v4 = *(v3 + 8);
  if (BYTE1(v4) > 5u)
  {
    if (BYTE1(v4) > 7u)
    {
      if (BYTE1(v4) == 8)
      {
        return result;
      }

      if (BYTE1(v4) != 9)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (BYTE1(v4) != 6)
    {
      if (BYTE1(v4) == 7)
      {
        v17 = *(v3 + 16);
        if (*(v3 + 112))
        {
          TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
          TSUDurationFormatterMaxDurationUnitInUnits();
          TSUDurationFormatterMinDurationUnitInUnits();
        }

        v18 = TSUDurationFormatterFormatFromDurationUnits();
        v19.n128_u64[0] = v17;

        return MEMORY[0x2821D0C90](v18, v19);
      }

      goto LABEL_38;
    }

    if ((*(v3 + 8) & 0xFB00) == 0x200)
    {
      if (*(v3 + 16) != 0.0)
      {
        v13 = TSTBundle();
        v14 = @"TRUE";
        goto LABEL_42;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v3}];
    }

    v13 = TSTBundle();
    v14 = @"FALSE";
LABEL_42:

    return [v13 localizedStringForKey:v14 value:&stru_287D36338 table:@"TSTables"];
  }

  if (BYTE1(v4) > 2u)
  {
    if (BYTE1(v4) != 3)
    {
      if (BYTE1(v4) != 5)
      {
LABEL_38:
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromNativeTSTCell(TSTCell *)"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1081, @"Impossible cell value type reached.", v37}];
        return 0;
      }

      if (v41 != 272)
      {
        if (v41 == 261)
        {
          v5 = v42;
          if ((BYTE8(v41) & 2) != 0)
          {
            v6 = [MEMORY[0x277D6C2C0] datePortionOfDateTimeFormatString:v42];
          }

          else
          {
            if ((BYTE8(v41) & 1) == 0)
            {
              goto LABEL_67;
            }

            v6 = [MEMORY[0x277D6C2C0] timePortionOfDateTimeFormatString:v42];
          }

          v5 = v6;
LABEL_67:
          if (*(v3 + 9))
          {
            if (*(v3 + 9) == 5)
            {
              v20 = *(v3 + 16);
LABEL_72:
              v21 = v5;
              goto LABEL_80;
            }

            v28 = [MEMORY[0x277D6C290] currentHandler];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
            [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", v3}];
          }

          v20 = 0;
          goto LABEL_72;
        }

        goto LABEL_62;
      }

      if (v42 && *(v42 + 8))
      {
        v20 = TSTCellDateValue(v3);
        v21 = *(v42 + 8);
LABEL_80:

        return MEMORY[0x2821D0C48](v20, v21);
      }

      v25 = [MEMORY[0x277D6C290] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromNativeTSTCell(TSTCell *)"];
      [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1044, @"Custom format string has not been populated!"}];
      if (*(v3 + 9))
      {
        if (*(v3 + 9) == 5)
        {
LABEL_62:
          v27 = *(v3 + 16);
LABEL_79:
          v21 = [MEMORY[0x277D6C2C0] defaultDateTimeFormat];
          v20 = v27;
          goto LABEL_80;
        }

        v32 = [MEMORY[0x277D6C290] currentHandler];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
        [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", v3}];
      }

      v27 = 0;
      goto LABEL_79;
    }

    if (v41 != 271)
    {
      return *(v3 + 24);
    }

    if (v42 && *(v42 + 8))
    {
      v10 = *(v3 + 24);

      return MEMORY[0x2821D0D70](v10);
    }

    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromNativeTSTCell(TSTCell *)"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 972, @"Custom format string has not been populated!"}];
    v24 = *(v3 + 9);
    if (!*(v3 + 9))
    {
      return &stru_287D36338;
    }

    if (v24 != 9)
    {
      if (v24 != 3)
      {
        v30 = [MEMORY[0x277D6C290] currentHandler];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
        [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v3}];
        return 0;
      }

      return *(v3 + 24);
    }

LABEL_27:
    v7 = *(v3 + 72);

    return [v7 string];
  }

  if (!BYTE1(v4))
  {
    return result;
  }

  if (BYTE1(v4) != 2)
  {
    goto LABEL_38;
  }

  if (v41 == 262 || (v41 & 0xFFFFFFFC) == 0x100)
  {
    if ((*(v3 + 8) & 0xFB00) != 0x200)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v3}];
    }
  }

  else
  {
    if ((v41 - 264) < 2)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      LODWORD(v38) = -1;
      TSTCellGetFormatOfType(v3, v43, &v38);
    }

    else
    {
      if (v41 == 270)
      {
        if (v42)
        {
          TSTCellDoubleValue(v3);
          return TSUFormatCustomStringFromDouble();
        }

        v34 = [MEMORY[0x277D6C290] currentHandler];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringFromNativeTSTCell(TSTCell *)"];
        [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 985, @"Custom format has not been populated!"}];
      }

      else if (v41 == 269)
      {
        TSTCellDoubleValue(v3);
        return TSUFormatBaseStringFromDouble();
      }

      LODWORD(v38) = 256;
      v36 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
      *(&v38 + 1) = 0;
      *&v39 = v36;
    }

    TSTCellDoubleValue(v3);
  }

  return TSUFormatStructStringFromDouble();
}

__CFString *NSStringForUnderlyingValueWithTSTCell(__CFString *result)
{
  if (result)
  {
    p_info = &result[3].info;
  }

  else
  {
    p_info = &TSUInvalidFormat;
  }

  if (result)
  {
    v2 = result;
    info = result->info;
    if (BYTE1(info))
    {
      if (BYTE1(info) != 2)
      {
        goto LABEL_12;
      }

      v4 = *p_info;
      v5 = *(p_info + 8);
      if ((v4 & 0xFFFFFFFE) != 0x108)
      {
        v5 = v4;
      }

      if ((v5 | 4) == 0x106)
      {
        LODWORD(v8) = 256;
        v9 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        if ((result->info & 0xFB00) != 0x200)
        {
          v6 = [MEMORY[0x277D6C290] currentHandler];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v2, v8, 0, v9}];
        }

        return TSUFormatStructStringFromDouble();
      }

      else
      {
LABEL_12:

        return NSStringForEditingWithTSTCell(result);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *NSStringForEditingWithTSTCell(TSTCell *a1)
{
  p_mCurrentCellFormat = &TSUInvalidFormat;
  if (a1)
  {
    p_mCurrentCellFormat = &a1->mPrivate.mCellFormats.mCurrentCellFormat;
  }

  v3 = *&p_mCurrentCellFormat->var0.mMultipleChoiceListFormatStruct.mData;
  v24 = *&p_mCurrentCellFormat->mFormatType;
  v25 = v3;
  v26 = *(&p_mCurrentCellFormat->var0.mMultipleChoiceListFormatStruct + 3);
  if ((v24 & 0xFFFFFFFE) == 0x108)
  {
    TSTCellGetFormatOfType(a1, v26, &v24);
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  mPrivate = a1->mPrivate;
  if (BYTE1(mPrivate) <= 5u)
  {
    if (BYTE1(mPrivate) <= 2u)
    {
      if (BYTE1(mPrivate))
      {
        if (BYTE1(mPrivate) == 2)
        {
          if (v24 == 256)
          {
            LOWORD(v25) = v25 & 0xF800 | 0xFD;
            if ((mPrivate & 0xFB00) != 0x200)
            {
              v5 = [MEMORY[0x277D6C290] currentHandler];
              v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
            }

            return TSUFormatStructStringFromDouble();
          }

          if ((v24 - 270) <= 2)
          {
            LODWORD(v22) = 256;
            v23 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
            if ((*&a1->mPrivate & 0xFB00) != 0x200)
            {
              v12 = [MEMORY[0x277D6C290] currentHandler];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1, v22, 0, v23}];
            }

            return TSUFormatStructStringFromDouble();
          }

          if (v24 > 258)
          {
            if (v24 == 259 || v24 == 262 || v24 == 269)
            {
              goto LABEL_56;
            }

LABEL_57:
            if ((v24 - 263) > 4)
            {
              v20 = [MEMORY[0x277D6C290] currentHandler];
              v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringForEditingWithTSTCell(TSTCell *)"];
              [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1202, @"Attempting to display unknown number format in editor. Defaulting to decimal type"}];
              goto LABEL_56;
            }

            goto LABEL_27;
          }

          if (v24 == 257)
          {
            v19 = v25 & 0xE800;
          }

          else
          {
            if (v24 != 258)
            {
              goto LABEL_57;
            }

            v19 = v25 & 0xF800;
          }

          LOWORD(v25) = v19 | 0xFD;
LABEL_56:
          TSTCellDoubleValue(a1);
          return TSUFormatStructStringFromDouble();
        }

        goto LABEL_31;
      }

LABEL_13:
      if (v24 == 258)
      {
        return @"%";
      }

      else
      {
        return 0;
      }
    }

    if (BYTE1(mPrivate) == 3)
    {
      return a1->mPrivate.mValue.mString.mString;
    }

    if (BYTE1(mPrivate) == 5)
    {
      mDate = a1->mPrivate.mValue.mDate;
      v9 = TSUShortestCompleteDateTimeFormat();

      return MEMORY[0x2821D0C48](mDate, v9);
    }

LABEL_31:
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *NSStringForEditingWithTSTCell(TSTCell *)"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1243, @"Impossible cell value type reached."}];
    return 0;
  }

  if (BYTE1(mPrivate) > 7u)
  {
    if (BYTE1(mPrivate) == 8)
    {
      return 0;
    }

    if (BYTE1(mPrivate) != 9)
    {
      goto LABEL_31;
    }

LABEL_27:

    return NSStringFromNativeTSTCell(a1);
  }

  if (BYTE1(mPrivate) == 6)
  {
    goto LABEL_27;
  }

  if (BYTE1(mPrivate) != 7)
  {
    goto LABEL_31;
  }

  v14 = a1->mPrivate.mValue.mDate;
  if ((*&a1->mPrivate.mCellFormats & 0x10) != 0)
  {
    v17 = TSUDurationFormatterFormatFromDurationUnits();
    v18.n128_u64[0] = v14;

    return MEMORY[0x2821D0CA0](v17, v18);
  }

  else
  {
    TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
    TSUDurationFormatterMaxDurationUnitInUnits();
    TSUDurationFormatterMinDurationUnitInUnits();
    v15 = TSUDurationFormatterFormatFromDurationUnits();
    v16.n128_u64[0] = v14;

    return MEMORY[0x2821D0C90](v15, v16);
  }
}

uint64_t TSTCellCustomFormatString(uint64_t a1)
{
  v1 = &TSUInvalidFormat;
  if (a1)
  {
    v1 = (a1 + 104);
  }

  if ((*v1 - 270) < 3)
  {
    return *(*(v1 + 2) + 8);
  }

  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellCustomFormatString(TSTCell *)"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1253, @"Can't get a custom format string for a non-custom format."}];
  return 0;
}

id TSTCellRichTextStorageForLayout(uint64_t a1)
{
  if (!a1 || *(a1 + 9) << 8 != 2304)
  {
    return 0;
  }

  v2 = [*(a1 + 72) storage];
  v3 = v2;
  if (*(a1 + 104) == 271)
  {
    v3 = [v2 copyWithContext:{objc_msgSend(v2, "context")}];
    v4 = *(a1 + 120);
    v5 = [*(v4 + 8) rangeOfString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%C", *MEMORY[0x277D6C3A8])}];
    v6 = [*(v4 + 8) substringToIndex:v5];
    v7 = [*(v4 + 8) substringFromIndex:v5 + 1];
    if (v6)
    {
      [v3 insertString:v6 atCharIndex:0 undoTransaction:0];
    }

    if (v7)
    {
      [v3 insertString:v7 atCharIndex:objc_msgSend(v3 undoTransaction:{"length"), 0}];
    }
  }

  return v3;
}

void *TSTCellFormatUsesAccountingStyle(void *result)
{
  v1 = &TSUInvalidFormat;
  if (result)
  {
    v1 = (result + 13);
  }

  v2 = *v1;
  if ((*v1 - 264) >= 2)
  {
    v3 = *(v1 + 2);
    if (v2 == 270)
    {
      if (v3)
      {
        return ((*(v3 + 56) >> 1) & 1);
      }

      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatUseAccountingStyle(const TSUFormatStruct)"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatTypes.h"), 635, @"Custom format is not correctly populated."}];
    }

    else if (v2 == 257)
    {
      return ((v3 >> 12) & 1);
    }

    return 0;
  }

  if (*(v1 + 8) != 257)
  {
    return 0;
  }

  if (result)
  {
    result = result[21];
    if (result)
    {
      [result getFormatStruct];
      return 0;
    }
  }

  return result;
}

void *TSTCellTextProperties(uint64_t a1, void *a2, unsigned int a3, BOOL *a4, _DWORD *a5, _DWORD *a6, uint64_t *a7)
{
  if (a5)
  {
    if (!a1 || (*(a1 + 9) << 8 != 2304 || (v14 = [objc_msgSend(*(a1 + 72) "storage")]) == 0) && (v14 = *(a1 + 56)) == 0)
    {
      v14 = TSTTableDefaultTextStyleForCellID(a2, a3);
    }

    if (a4)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (!a6 && !a7)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (a1 && (CellStyleAtCellID = *(a1 + 40)) != 0 || (CellStyleAtCellID = TSTTableGetCellStyleAtCellID(a2, a3, 0)) != 0)
  {
    if (a6)
    {
      *a6 = 1;
      v16 = [CellStyleAtCellID intValueForProperty:903];
      if (v16 != 0x80000000)
      {
        *a6 = v16;
      }
    }

    if (a4)
    {
      if ((*a4 = 0, a1) && ((v17 = *(a1 + 9), v17 == 3) || v17 == 9) || *(a1 + 100) && *(a1 + 104) == 266)
      {
        v18 = [CellStyleAtCellID intValueForProperty:896];
        if (v18 != 0x80000000)
        {
          *a4 = v18 != 0;
        }
      }
    }

    if (a7)
    {
      v19 = [CellStyleAtCellID valueForProperty:904];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *a7 = v19;
      }
    }
  }

LABEL_29:
  if (a5)
  {
    if (v14)
    {
      *a5 = [objc_msgSend(a2 "tableStyle")] == 1;
      v20 = [v14 intValueForProperty:86];
      if (v20 != 0x80000000)
      {
        *a5 = v20;
        if (v20 == 4)
        {
          v21 = [v14 intValueForProperty:44];
          if (v21 == 1)
          {
            *a5 = 1;
          }

          else if (!v21)
          {
            *a5 = 0;
          }
        }

        else if (v20 == 3 && a4)
        {
          *a4 = 1;
        }
      }
    }
  }

  result = TSTCellFormatUsesAccountingStyle(a1);
  if (result)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return result;
}

uint64_t TSTCellGetCellFill(void *a1)
{
  if (a1)
  {
    a1 = a1[5];
  }

  return [a1 valueForProperty:898];
}

void *TSTCellGetCellFillAndIsDefault(void *a1, void *a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    a1 = a1[5];
  }

  v6 = [a1 valueForProperty:898];
  if (!v6 || (v7 = v6, ([v6 isEqual:a2] & 1) != 0))
  {
    if (!a4)
    {
      return a2;
    }

    v8 = 1;
    v7 = a2;
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = 0;
LABEL_9:
    *a4 = v8;
  }

  return v7;
}

TSTRichTextPayload *TSTCellSetRichTextPayloadClearingIDConvertToPlaintext(TSTRichTextPayload *result, TSTRichTextPayload *a2, int a3, int a4)
{
  v7 = result;
  if (!a2)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetRichTextPayloadClearingIDConvertToPlaintext(TSTCell *, TSTRichTextPayload *, BOOL, BOOL)"}];
    result = [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1907, @"expected rich text payload but didn't get it"}];
  }

  v10 = *(v7 + 8);
  if ((v10 & 0xFF00) != 0x900 || *(v7 + 72) != a2)
  {
    if (!a4)
    {
LABEL_8:
      if ((v10 & 0xFF00) == 0x900)
      {
        v11 = *(v7 + 64);
      }

      else
      {
        v11 = 0;
      }

      TSTCellClearValue(v7);
      *(v7 + 9) = 9;
      result = a2;
      *(v7 + 72) = result;
      if (a3)
      {
        *(v7 + 64) = 0;
      }

      else
      {
        *(v7 + 64) = v11;
      }

      return result;
    }

    if ([(TSTRichTextPayload *)a2 requiresRichText])
    {
      v10 = *(v7 + 8);
      goto LABEL_8;
    }

    TSTCellClearValue(v7);
    *(v7 + 9) = 3;
    TSTCellSetStringValueClearingID(v7, [(TSTRichTextPayload *)a2 string], a3);
    result = [(TSWPStorage *)[(TSTRichTextPayload *)a2 storage] paragraphStyleAtCharIndex:0 effectiveRange:0];
    v12 = *(v7 + 56);
    if (v12 != result)
    {
      v13 = result;

      result = v13;
      *(v7 + 56) = result;
      *(v7 + 48) = 0;
    }
  }

  return result;
}

void TSTCellSetStringValueClearingID(TSTCell *a1, NSString *a2, int a3)
{
  if (!a1 || (mPrivate = a1->mPrivate, (mPrivate & 0xFF00) == 0))
  {
    TSTCellClearValue(a1);
    mPrivate = *&a1->mPrivate & 0xFFFF00FF | 0x300;
    *&a1->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x300)
  {
    mString = a1->mPrivate.mValue.mString.mString;
    if (mString != a2)
    {

      a1->mPrivate.mValue.mString.mString = a2;
      v8 = HIWORD(*&a1->mPrivate);
      v9 = -[NSString rangeOfCharacterFromSet:](a2, "rangeOfCharacterFromSet:", [MEMORY[0x277CCA900] newlineCharacterSet]);
      v10 = v8 | 1;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v8 & 0xFFFE;
      }

      *(&a1->mPrivate + 1) = v10;
      if (a3)
      {
        a1->mPrivate.mValue.mString.mID = 0;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringValueClearingID(TSTCell *, NSString *, BOOL)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1003, @"can't set string on non-string cell: %p", a1}];
  }
}

TSDCommentStorage *TSTCellSetCommentStorageClearingID(TSDCommentStorage *result, TSDCommentStorage *a2, int a3)
{
  v5 = result;
  if (!a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetCommentStorageClearingID(TSTCell *, TSDCommentStorage *, BOOL)"}];
    result = [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1952, @"expected cell comment but didn't get it"}];
  }

  v8 = *(v5 + 11);
  if (v8 != a2)
  {

    result = a2;
    *(v5 + 11) = result;
    if (a3)
    {
      *(v5 + 20) = 0;
    }
  }

  return result;
}

uint64_t TSTCellCoerceCellToFormat(TSTCell *a1, unsigned int a2)
{
  if (a1)
  {
    mPrivate = a1->mPrivate;
    if ((mPrivate & 0xFF00) != 0)
    {
      mFormatType = a1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
      v6 = BYTE1(mPrivate);
      if (v6 > 5)
      {
        if (v6 == 9)
        {
LABEL_19:
          if (mFormatType > 259)
          {
            if (mFormatType == 260 || mFormatType == 271)
            {
              goto LABEL_44;
            }
          }

          else if ((mFormatType + 1) < 3 || mFormatType == -999)
          {
            goto LABEL_44;
          }

          goto LABEL_31;
        }

        if (v6 == 7)
        {
          if (mFormatType != 268)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        if (v6 != 6 || mFormatType == 1 || mFormatType == 263)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 == 5 && mFormatType != 261 && mFormatType != 272)
            {
              goto LABEL_31;
            }

LABEL_44:
            switch(a2)
            {
              case 0x100u:

                result = TSTCellCoerceCellToDecimalFormat(a1);
                break;
              case 0x101u:

                result = TSTCellCoerceCellToCurrencyFormat(a1);
                break;
              case 0x102u:

                result = TSTCellCoerceCellToPercentageFormat(a1);
                break;
              case 0x103u:

                result = TSTCellCoerceCellToScientificFormat(a1);
                break;
              case 0x104u:

                result = TSTCellCoerceCellToTextFormat(a1);
                break;
              case 0x105u:

                result = TSTCellCoerceCellToDateTimeFormat(a1);
                break;
              case 0x106u:

                result = TSTCellCoerceCellToFractionFormat(a1);
                break;
              case 0x107u:

                result = TSTCellCoerceCellToCheckboxFormat(a1);
                break;
              case 0x108u:
                v14 = a1;
                v15 = 264;
                goto LABEL_89;
              case 0x109u:
                v14 = a1;
                v15 = 265;
LABEL_89:

                result = p_TSTCellCoerceCellToControlFormat(v14, v15);
                break;
              case 0x10Bu:

                result = TSTCellCoerceCellToRatingFormat(a1);
                break;
              case 0x10Cu:

                result = TSTCellCoerceCellToDurationFormat(a1);
                break;
              case 0x10Du:

                result = TSTCellCoerceCellToBaseFormat(a1);
                break;
              case 0x10Eu:

                result = TSTCellCoerceCellToCustomNumberFormat(a1);
                break;
              case 0x10Fu:

                result = TSTCellCoerceCellToCustomTextFormat(a1);
                break;
              case 0x110u:

                result = TSTCellCoerceCellToCustomDateTimeFormat(a1);
                break;
              default:
                result = 0;
                break;
            }

            return result;
          }

          goto LABEL_19;
        }

        if ((mFormatType & 0xFFFFFFFC) == 0x100 || (mFormatType - 262) < 6 || (mFormatType - 269) < 2)
        {
          goto LABEL_44;
        }
      }

LABEL_31:
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellCoerceCellToFormat(TSTCell *, TSUFormatType)"}];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 1987, @"Attempting to coerce a cell with mismatched format and value types"}];
      v10 = 0;
      v11 = *(&a1->mPrivate + 1);
      v12 = -1;
      if (v11 > 5)
      {
        if (v11 != 9)
        {
          if (v11 == 7)
          {
            v13 = (*MEMORY[0x277D6C3D8] << 32) | 4;
            v10 = 0x1000000001;
            v12 = 268;
          }

          else
          {
            v13 = 0;
            if (v11 == 6)
            {
              v10 = 0;
              v13 = 0;
              v12 = 1;
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v11 == 2)
        {
          v10 = 0;
          v13 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
          v12 = 256;
          goto LABEL_43;
        }

        if (v11 != 3)
        {
          v13 = 0;
          if (v11 == 5)
          {
            v13 = TSUDefaultDateTimeFormat();
            v10 = 0;
            v12 = 261;
          }

          goto LABEL_43;
        }
      }

      v10 = 0;
      v13 = 0;
      v12 = 260;
LABEL_43:
      *&v16 = v12;
      *(&v16 + 1) = v10;
      v17 = v13;
      v18 = 0;
      v19 = 0;
      TSTCellSetImplicitFormat(a1, &v16);
      goto LABEL_44;
    }
  }

  return TSTCellCoerceEmptyCellToFormat(a1, a2);
}

BOOL TSTCellCoerceEmptyCellToFormat(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v4 = *(a1 + 104);
  }

  else
  {
    v4 = -1;
  }

  if (v4 != a2)
  {
    v5 = 0;
    v6 = 0;
    v19 = 0uLL;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    switch(a2)
    {
      case 0xFEu:
      case 0x104u:
      case 0x10Au:
      case 0x10Eu:
      case 0x10Fu:
      case 0x110u:
        goto LABEL_11;
      case 0xFFu:
        break;
      case 0x100u:
        if (TSTCellCoerceCellToDecimalFormat(a1))
        {
          return v4 != a2;
        }

        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        v7 = 256;
        break;
      case 0x101u:
        if (TSTCellCoerceCellToCurrencyFormat(a1))
        {
          return v4 != a2;
        }

        v13 = TSUDefaultFormatStructCurrency();
        v9 = v14;
        v8 = v13 & 0xFF000000;
        v5 = v13 & 0xFFFFFFFF00000000;
        v6 = v13 & 0xFFFFFF;
        v7 = 257;
        break;
      case 0x102u:
        if (TSTCellCoerceCellToPercentageFormat(a1))
        {
          return v4 != a2;
        }

        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        v7 = 258;
        break;
      case 0x103u:
        if (TSTCellCoerceCellToScientificFormat(a1))
        {
          return v4 != a2;
        }

        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        v7 = 259;
        break;
      case 0x105u:
        v9 = TSUDefaultDateTimeFormat();
        v6 = 0;
        v8 = 0;
        v5 = 0;
        v7 = 261;
        break;
      case 0x106u:
        if (TSTCellCoerceCellToFractionFormat(a1))
        {
          return v4 != a2;
        }

        v8 = 0;
        v5 = 0;
        v9 = 0;
        v6 = *MEMORY[0x277D6C3E0];
        v7 = 262;
        break;
      case 0x107u:
        TSTCellClearValue(a1);
        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = 0;
        *(a1 + 9) = 6;
        *(a1 + 16) = 0;
        v7 = 263;
        break;
      case 0x108u:
      case 0x109u:
        TSTCellClearValue(a1);
        *(a1 + 9) = 2;
        v10 = 50.0;
        if (a2 == 264)
        {
          v10 = 1.0;
        }

        *(a1 + 16) = v10;
        v19 = xmmword_26CA67C50;
        v15[3] = 0;
        v15[4] = 0;
        v11 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        v16 = 0x100uLL;
        v17 = v11;
        v18 = 0uLL;
        TSTCellSetCellFormatStructBasedOnType(a1, &v16, 1);
        v15[0] = 256;
        v15[1] = 0;
        v15[2] = v11;
        TSTCellSetFormatFlagsFromFormat(a1, v15, 1, 1);
        v6 = 0;
        v8 = 0;
        v9 = 0x4059000000000000;
        v5 = 0x3FF0000000000000;
        goto LABEL_12;
      case 0x10Bu:
        TSTCellClearValue(a1);
        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = 0;
        *(a1 + 9) = 2;
        *(a1 + 16) = 0;
        v7 = 267;
        break;
      case 0x10Cu:
        v8 = 0;
        v9 = (*MEMORY[0x277D6C3D8] << 32) | 4;
        v7 = 268;
        v5 = 0x1000000000;
        v6 = 1;
        break;
      case 0x10Du:
        if (TSTCellCoerceCellToBaseFormat(a1))
        {
          return v4 != a2;
        }

        v8 = 0;
        v5 = 0;
        v9 = 0;
        if (*MEMORY[0x277D6C3D0])
        {
          v6 = 65546;
        }

        else
        {
          v6 = 10;
        }

        v7 = 269;
        break;
      default:
        if (a2 + 1 >= 3)
        {
          v8 = 0;
          v9 = 0;
          if (a2 != -999)
          {
            break;
          }
        }

LABEL_11:
        v6 = 0;
        v8 = 0;
        v5 = 0;
        v9 = 0;
LABEL_12:
        v7 = a2;
        break;
    }

    *&v16 = v7;
    *(&v16 + 1) = v5 | v8 | v6;
    v17 = v9;
    v18 = v19;
    TSTCellSetImplicitFormat(a1, &v16);
  }

  return v4 != a2;
}

uint64_t TSTCellCoerceCellToDecimalFormat(uint64_t result)
{
  v28 = 0.0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = (*MEMORY[0x277D6C3E8] & 7) << 8;
  v3 = v2 | 0xFD;
  v4 = *(v1 + 104);
  if (v4 <= 263)
  {
    if (v4 > 259)
    {
      if ((v4 - 262) >= 2)
      {
        if (v4 != 260)
        {
          return result;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v5 = *(v1 + 120);
      switch(v4)
      {
        case 257:
          v3 = v5 & 0xF00 | 0xFD;
          break;
        case 258:
          v3 = v5 & 0xFFF;
          break;
        case 259:
          v3 = *(v1 + 120) | v2;
          break;
        default:
          return result;
      }
    }

    goto LABEL_31;
  }

  if (v4 <= 267)
  {
    if ((v4 - 264) >= 2)
    {
      if (v4 != 267)
      {
        return result;
      }

      v6 = *(v1 + 8);
      if ((v6 & 0xFB00) == 0x200 || (v7 = BYTE1(v6), v7 == 7))
      {
        v21 = *(v1 + 16);
        v28 = v21;
        if (v21 > 5.0)
        {
          v28 = 5.0;
          goto LABEL_37;
        }

        if (v21 >= 0.0)
        {
          goto LABEL_37;
        }
      }

      else if (v7)
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }

      v28 = 0.0;
      goto LABEL_37;
    }

LABEL_31:
    v16 = *(v1 + 8);
    if ((v16 & 0xFB00) == 0x200 || (v17 = BYTE1(v16), v17 == 7))
    {
      v18 = *(v1 + 16);
    }

    else
    {
      v18 = 0.0;
      if (v17)
      {
        v19 = [MEMORY[0x277D6C290] currentHandler];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }
    }

    v28 = v18;
    goto LABEL_37;
  }

  if ((v4 - 269) < 2)
  {
    goto LABEL_31;
  }

  if (v4 != 268)
  {
    if (v4 != 271)
    {
      return result;
    }

LABEL_21:
    v10 = *(v1 + 9);
    if (*(v1 + 9))
    {
      if (v10 == 9)
      {
        [*(v1 + 72) string];
      }

      else if (v10 != 3)
      {
        v22 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
        [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
      }
    }

    LODWORD(v24) = -999;
    if (!TSUGetNumberValueAndTypeFromString())
    {
      return 0;
    }

    v3 = v2 | 0xFD;
    goto LABEL_37;
  }

  v11 = *(v1 + 8);
  if ((v11 & 0xFB00) == 0x200 || (v12 = BYTE1(v11), v12 == 7))
  {
    v13 = *(v1 + 16);
  }

  else
  {
    v13 = 0.0;
    if (v12)
    {
      v14 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
    }
  }

  v28 = v13 / 86400.0;
LABEL_37:
  v24 = 0x100uLL;
  v25 = v3;
  v26 = 0;
  v27 = 0;
  TSTCellSetImplicitFormat(v1, &v24);
  if (*(v1 + 9))
  {
    TSTCellClearValue(v1);
    *(v1 + 9) = 2;
    *(v1 + 16) = v28;
  }

  return 1;
}

uint64_t TSTCellCoerceCellToCurrencyFormat(uint64_t a1)
{
  currencyCode = 0;
  v54 = 0;
  v52 = 0uLL;
  v2 = TSUGetCurrentLocale();
  Value = CFLocaleGetValue(v2, *MEMORY[0x277CBEEA0]);
  if (Value)
  {
    v4 = Value;
  }

  else
  {
    v4 = @"USD";
  }

  LODWORD(defaultFractionDigits) = 0;
  DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v4, &defaultFractionDigits, 0);
  v6 = v4;
  if (DecimalInfoForCurrencyCode)
  {
    v7 = defaultFractionDigits;
  }

  else
  {
    v7 = 2;
  }

  if (!a1)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v9 = *MEMORY[0x277D6C3E8];
  v10 = v7 & 0xF8FF | ((*MEMORY[0x277D6C3E8] & 7) << 8);
  v11 = v6;
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  if (v12 <= 263)
  {
    if (v12 <= 259)
    {
      if (v12 == 256 || v12 == 258)
      {
        v24 = *(a1 + 8);
        if ((v24 & 0xFB00) == 0x200 || (v25 = BYTE1(v24), v25 == 7))
        {
          v26 = *(a1 + 16);
        }

        else
        {
          v26 = 0;
          if (v25)
          {
            v27 = [MEMORY[0x277D6C290] currentHandler];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
            [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
          }
        }

        v54 = v26;
        v10 = v13 & 0xF00 | v7;
        goto LABEL_74;
      }

      if (v12 != 259)
      {
        goto LABEL_77;
      }

      goto LABEL_31;
    }

    if ((v12 - 262) >= 2)
    {
      if (v12 != 260)
      {
        goto LABEL_77;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (v12 > 268)
  {
    if (v12 != 269)
    {
      if (v12 == 270)
      {
        v29 = *(a1 + 8);
        if ((v29 & 0xFB00) == 0x200 || (v30 = BYTE1(v29), v30 == 7))
        {
          v31 = *(a1 + 16);
        }

        else
        {
          v31 = 0;
          if (v30)
          {
            v32 = [MEMORY[0x277D6C290] currentHandler];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
            [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
          }
        }

        v54 = v31;
        if (v13)
        {
          if (*(v13 + 16))
          {
            v11 = *(v13 + 16);
          }

          if (*(v13 + 56))
          {
            v39 = 2048;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39 & 0xEFFF | (((*(v13 + 56) & 2) != 0) << 12);
        }

        else
        {
          v41 = [MEMORY[0x277D6C290] currentHandler];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUFormatGetCustomNumberFormatCurrencyCode(const TSUFormatStruct)"];
          [v41 handleFailureInFunction:v42 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatTypes.h"), 604, @"Custom format is not correctly populated."}];
          v43 = [MEMORY[0x277D6C290] currentHandler];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatUseAccountingStyle(const TSUFormatStruct)"];
          [v43 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatTypes.h"), 635, @"Custom format is not correctly populated."}];
          v45 = [MEMORY[0x277D6C290] currentHandler];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUFormatGetCustomNumberFormatShowThousandsSeparator(const TSUFormatStruct)"];
          [v45 handleFailureInFunction:v46 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatTypes.h"), 625, @"Custom format is not correctly populated."}];
          v40 = 0;
        }

        v10 |= v40;
        goto LABEL_74;
      }

      if (v12 != 271)
      {
        goto LABEL_77;
      }

LABEL_27:
      v18 = *(a1 + 9);
      if (*(a1 + 9))
      {
        if (v18 == 9)
        {
          [*(a1 + 72) string];
        }

        else if (v18 != 3)
        {
          v35 = [MEMORY[0x277D6C290] currentHandler];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
          [v35 handleFailureInFunction:v36 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
        }
      }

      LODWORD(defaultFractionDigits) = -999;
      if (TSUGetNumberValueAndTypeFromString() && (v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && defaultFractionDigits != -999)
      {
        if (defaultFractionDigits == 1)
        {
          v51 = 0;
          v37 = CFNumberFormatterGetDecimalInfoForCurrencyCode(currencyCode, &v51, 0);
          v38 = v51;
          if (v51 >= 0xFF)
          {
            v38 = 255;
          }

          if (!v37)
          {
            v38 = 2;
          }

          v10 = v38 | ((v9 & 7) << 8);
          v11 = currencyCode;
        }

        goto LABEL_74;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_77;
    }

LABEL_31:
    v19 = *(a1 + 8);
    if ((v19 & 0xFB00) == 0x200 || (v20 = BYTE1(v19), v20 == 7))
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = 0;
      if (v20)
      {
        v22 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
      }
    }

    v54 = v21;
    goto LABEL_74;
  }

  if ((v12 - 264) < 2)
  {
    goto LABEL_31;
  }

  if (v12 != 267)
  {
    goto LABEL_77;
  }

  v14 = *(a1 + 8);
  if ((v14 & 0xFB00) != 0x200)
  {
    v15 = BYTE1(v14);
    if (v15 != 7)
    {
      if (v15)
      {
        v16 = [MEMORY[0x277D6C290] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
      }

      goto LABEL_73;
    }
  }

  v34 = *(a1 + 16);
  v54 = *&v34;
  if (v34 <= 5.0)
  {
    if (v34 < 0.0)
    {
LABEL_73:
      v54 = 0;
    }
  }

  else
  {
    v54 = 0x4014000000000000;
  }

LABEL_74:
  *&defaultFractionDigits = 257;
  *(&defaultFractionDigits + 1) = v11;
  v49 = v10;
  v50 = v52;
  TSTCellSetImplicitFormat(a1, &defaultFractionDigits);
  if (*(a1 + 9))
  {
    TSTCellClearValue(a1);
    *(a1 + 9) = 2;
    *(a1 + 16) = v54;
  }

  v8 = 1;
LABEL_77:
  if (currencyCode)
  {
  }

  return v8;
}

uint64_t TSTCellCoerceCellToPercentageFormat(uint64_t result)
{
  v38 = 0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = (*MEMORY[0x277D6C3E8] & 7) << 8;
  v3 = v2 | 0xFD;
  v4 = *(v1 + 104);
  if (v4 <= 263)
  {
    if (v4 <= 259)
    {
      v5 = *(v1 + 120);
      switch(v4)
      {
        case 256:
          v21 = *(v1 + 8);
          if ((v21 & 0xFB00) == 0x200 || BYTE1(v21) == 7)
          {
            v23 = *(v1 + 16);
          }

          else
          {
            v23 = 0;
            if (BYTE1(v21))
            {
              v32 = [MEMORY[0x277D6C290] currentHandler];
              v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
            }
          }

          v38 = v23;
          v3 = v5 & 0xFFF;
          break;
        case 257:
          v24 = *(v1 + 8);
          if ((v24 & 0xFB00) == 0x200 || (v25 = BYTE1(v24), v25 == 7))
          {
            v26 = *(v1 + 16);
          }

          else
          {
            v26 = 0;
            if (v25)
            {
              v27 = [MEMORY[0x277D6C290] currentHandler];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
            }
          }

          v38 = v26;
          v3 = v5 & 0xF00 | 0xFD;
          break;
        case 259:
          v6 = *(v1 + 8);
          if ((v6 & 0xFB00) == 0x200 || (v7 = BYTE1(v6), v7 == 7))
          {
            v8 = *(v1 + 16);
          }

          else
          {
            v8 = 0;
            if (v7)
            {
              v9 = [MEMORY[0x277D6C290] currentHandler];
              v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
            }
          }

          v38 = v8;
          v3 = v5 | v2;
          break;
        default:
          return result;
      }

      goto LABEL_28;
    }

    if ((v4 - 262) >= 2)
    {
      if (v4 != 260)
      {
        return result;
      }

LABEL_33:
      v20 = *(v1 + 9);
      if (*(v1 + 9))
      {
        if (v20 == 9)
        {
          [*(v1 + 72) string];
        }

        else if (v20 != 3)
        {
          v30 = [MEMORY[0x277D6C290] currentHandler];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
          [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
        }
      }

      LODWORD(v34) = -999;
      if ((TSUGetNumberValueAndTypeFromString() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v4 > 268)
  {
    if ((v4 - 269) >= 2)
    {
      if (v4 != 271)
      {
        return result;
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  if ((v4 - 264) < 2)
  {
LABEL_22:
    v15 = *(v1 + 8);
    if ((v15 & 0xFB00) == 0x200 || (v16 = BYTE1(v15), v16 == 7))
    {
      v17 = *(v1 + 16);
    }

    else
    {
      v17 = 0;
      if (v16)
      {
        v18 = [MEMORY[0x277D6C290] currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }
    }

    v38 = v17;
    goto LABEL_28;
  }

  if (v4 != 267)
  {
    return result;
  }

  v11 = *(v1 + 8);
  if ((v11 & 0xFB00) != 0x200)
  {
    v12 = BYTE1(v11);
    if (v12 != 7)
    {
      if (v12)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }

      goto LABEL_62;
    }
  }

  v29 = *(v1 + 16);
  v38 = *&v29;
  if (v29 <= 5.0)
  {
    if (v29 < 0.0)
    {
LABEL_62:
      v38 = 0;
    }
  }

  else
  {
    v38 = 0x4014000000000000;
  }

  v3 = v2;
LABEL_28:
  v34 = 0x102uLL;
  v35 = v3;
  v36 = 0;
  v37 = 0;
  TSTCellSetImplicitFormat(v1, &v34);
  if (*(v1 + 9))
  {
    TSTCellClearValue(v1);
    *(v1 + 9) = 2;
    *(v1 + 16) = v38;
  }

  return 1;
}

uint64_t TSTCellCoerceCellToDurationFormat(uint64_t a1)
{
  v21 = 0.0;
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  if ((*(a1 + 104) - 256) <= 0xF)
  {
    v3 = 1 << *(a1 + 104);
    if ((v3 & 0x4301) != 0)
    {
      v4 = *(a1 + 8);
      if ((v4 & 0xFB00) == 0x200 || BYTE1(v4) == 7)
      {
        v6 = *(a1 + 16) * 86400.0;
      }

      else
      {
        v6 = 0.0;
        if (BYTE1(v4))
        {
          v8 = [MEMORY[0x277D6C290] currentHandler];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
        }
      }

      v21 = v6;
      goto LABEL_18;
    }

    if ((v3 & 0x8010) != 0)
    {
      v7 = *(a1 + 9);
      if (*(a1 + 9))
      {
        if (v7 == 9)
        {
          [*(a1 + 72) string];
        }

        else if (v7 != 3)
        {
          v12 = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
        }
      }

      LODWORD(v15) = 0;
      v20 = 1;
      if (TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit())
      {
        TSUDurationFormatterMaxDurationUnitInUnits();
        TSUDurationFormatterMinDurationUnitInUnits();
LABEL_18:
        v10 = *MEMORY[0x277D6C3D8] << 32;
        v2 = 1;
        TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
        v11 = TSUDurationFormatterMaxDurationUnitInUnits();
        *&v15 = 268;
        *(&v15 + 1) = (TSUDurationFormatterMinDurationUnitInUnits() << 32) | 1;
        v16 = v10 | v11;
        v17 = 0;
        v18 = 0;
        TSTCellSetImplicitFormat(a1, &v15);
        TSTCellClearValue(a1);
        *(a1 + 9) = 7;
        *(a1 + 16) = v21;
        return v2;
      }

      v19 = -999;
      TSUGetNumberValueAndTypeFromString();
      return 0;
    }
  }

  return v2;
}

uint64_t TSTCellCoerceCellToScientificFormat(uint64_t result)
{
  v28 = 0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
  v3 = *(v1 + 104);
  if (v3 <= 263)
  {
    if (v3 <= 259)
    {
      v4 = *(v1 + 120);
      if (v3 == 256)
      {
LABEL_7:
        v5 = (*MEMORY[0x277D6C3E8] & 7) << 8;
        v6 = *(v1 + 8);
        if ((v6 & 0xFB00) == 0x200 || BYTE1(v6) == 7)
        {
          v8 = *(v1 + 16);
        }

        else
        {
          v8 = 0;
          if (BYTE1(v6))
          {
            v19 = [MEMORY[0x277D6C290] currentHandler];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
            [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
          }
        }

        v28 = v8;
        v2 = v4 | v5;
        goto LABEL_47;
      }

      if (v3 != 257)
      {
        if (v3 != 258)
        {
          return result;
        }

        goto LABEL_7;
      }

LABEL_24:
      v13 = *(v1 + 8);
      if ((v13 & 0xFB00) == 0x200 || (v14 = BYTE1(v13), v14 == 7))
      {
        v15 = *(v1 + 16);
      }

      else
      {
        v15 = 0;
        if (v14)
        {
          v16 = [MEMORY[0x277D6C290] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
        }
      }

      v28 = v15;
      goto LABEL_47;
    }

    if ((v3 - 262) < 2)
    {
      goto LABEL_24;
    }

    if (v3 != 260)
    {
      return result;
    }

LABEL_31:
    v18 = *(v1 + 9);
    if (*(v1 + 9))
    {
      if (v18 == 9)
      {
        [*(v1 + 72) string];
      }

      else if (v18 != 3)
      {
        v22 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
        [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
      }
    }

    LODWORD(v24) = -999;
    if ((TSUGetNumberValueAndTypeFromString() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v3 > 268)
  {
    if ((v3 - 269) < 2)
    {
      goto LABEL_24;
    }

    if (v3 != 271)
    {
      return result;
    }

    goto LABEL_31;
  }

  if ((v3 - 264) < 2)
  {
    goto LABEL_24;
  }

  if (v3 != 267)
  {
    return result;
  }

  v9 = *(v1 + 8);
  if ((v9 & 0xFB00) != 0x200)
  {
    v10 = BYTE1(v9);
    if (v10 != 7)
    {
      if (v10)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }

      goto LABEL_46;
    }
  }

  v21 = *(v1 + 16);
  v28 = *&v21;
  if (v21 <= 5.0)
  {
    if (v21 < 0.0)
    {
LABEL_46:
      v28 = 0;
    }
  }

  else
  {
    v28 = 0x4014000000000000;
  }

LABEL_47:
  v24 = 0x103uLL;
  v25 = v2;
  v26 = 0;
  v27 = 0;
  TSTCellSetImplicitFormat(v1, &v24);
  if (*(v1 + 9))
  {
    TSTCellClearValue(v1);
    *(v1 + 9) = 2;
    *(v1 + 16) = v28;
  }

  return 1;
}

uint64_t TSTCellCoerceCellToFractionFormat(uint64_t result)
{
  v22 = 0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  if ((*(v1 + 104) - 256) > 0xF)
  {
    return result;
  }

  if (((1 << *(v1 + 104)) & 0x638F) != 0)
  {
    v2 = *(v1 + 8);
    if ((v2 & 0xFB00) == 0x200 || BYTE1(v2) == 7)
    {
      v4 = *(v1 + 16);
    }

    else
    {
      v4 = 0;
      if (BYTE1(v2))
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }
    }

    v22 = v4;
    goto LABEL_13;
  }

  if (((1 << *(v1 + 104)) & 0x8010) != 0)
  {
    v8 = *(v1 + 9);
    if (*(v1 + 9))
    {
      if (v8 == 9)
      {
        [*(v1 + 72) string];
      }

      else if (v8 != 3)
      {
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
      }
    }

    LODWORD(v16) = -999;
    if ((TSUGetNumberValueAndTypeFromString() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (*(v1 + 104) != 267)
  {
    return result;
  }

  v9 = *(v1 + 8);
  if ((v9 & 0xFB00) != 0x200)
  {
    v10 = BYTE1(v9);
    if (v10 != 7)
    {
      if (v10)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }

      goto LABEL_35;
    }
  }

  v13 = *(v1 + 16);
  v22 = *&v13;
  if (v13 <= 5.0)
  {
    if (v13 < 0.0)
    {
LABEL_35:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0x4014000000000000;
  }

LABEL_13:
  v7 = *MEMORY[0x277D6C3E0];
  v16 = 262;
  v17 = v7;
  v18 = 0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  TSTCellSetImplicitFormat(v1, &v16);
  if (*(v1 + 9))
  {
    TSTCellClearValue(v1);
    *(v1 + 9) = 2;
    *(v1 + 16) = v22;
  }

  return 1;
}

uint64_t TSTCellCoerceCellToRatingFormat(uint64_t result)
{
  v22 = 0.0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  if ((*(v1 + 104) - 256) > 0xF)
  {
    return result;
  }

  if (((1 << *(v1 + 104)) & 0x634F) != 0)
  {
    v2 = *(v1 + 8);
    if ((v2 & 0xFB00) != 0x200 && BYTE1(v2) != 7)
    {
      if (BYTE1(v2))
      {
        v4 = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }

      goto LABEL_19;
    }

    v22 = *(v1 + 16);
    if (v22 <= 5.0)
    {
      if (v22 < 0.0)
      {
LABEL_19:
        v22 = 0.0;
      }
    }

    else
    {
      v22 = 5.0;
    }

LABEL_20:
    v18 = 267;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    TSTCellSetImplicitFormat(v1, &v18);
    if (*(v1 + 9))
    {
      TSTCellClearValue(v1);
      *(v1 + 9) = 2;
      *(v1 + 16) = v22;
    }

    return 1;
  }

  if (((1 << *(v1 + 104)) & 0x8010) == 0)
  {
    if (*(v1 + 104) != 263)
    {
      return result;
    }

    v8 = *(v1 + 8);
    if ((v8 & 0xFB00) == 0x200 || (v9 = BYTE1(v8), v9 == 7))
    {
      v10 = *(v1 + 16);
    }

    else
    {
      v10 = 0.0;
      if (v9)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
      }
    }

    v22 = v10;
    goto LABEL_20;
  }

  v6 = *(v1 + 9);
  if (*(v1 + 9))
  {
    if (v6 == 9)
    {
      v7 = [*(v1 + 72) string];
    }

    else if (v6 == 3)
    {
      v7 = *(v1 + 24);
    }

    else
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
      v7 = 0;
    }
  }

  else
  {
    v7 = &stru_287D36338;
  }

  v18 = -999;
  TSUGetNumberValueAndTypeFromString();
  if ([(__CFString *)v7 length]> 4)
  {
    v15 = 5;
  }

  else
  {
    v15 = [(__CFString *)v7 length];
    if (v15 < 1)
    {
      v16 = 0.0;
LABEL_42:
      v22 = v16;
      goto LABEL_20;
    }
  }

  v17 = 0;
  while ([(__CFString *)v7 characterAtIndex:v17]== 42)
  {
    if (v15 == ++v17)
    {
      v16 = v15;
      goto LABEL_42;
    }
  }

  return 0;
}

uint64_t TSTCellCoerceCellToCheckboxFormat(uint64_t result)
{
  v22 = 0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 104);
  if ((v2 - 256) > 0xF)
  {
    goto LABEL_22;
  }

  v3 = 1 << *(result + 104);
  if ((v3 & 0x6B4F) == 0)
  {
    if ((v3 & 0x8010) != 0)
    {
      v10 = *(result + 9);
      if (*(result + 9))
      {
        if (v10 == 9)
        {
          v11 = [*(result + 72) string];
        }

        else if (v10 == 3)
        {
          v11 = *(result + 24);
        }

        else
        {
          v12 = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
          v11 = 0;
        }
      }

      else
      {
        v11 = &stru_287D36338;
      }

      v14 = [(__CFString *)v11 uppercaseString];
      if ([v14 isEqual:{objc_msgSend(TSTBundle(), "localizedStringForKey:value:table:", @"TRUE", &stru_287D36338, @"TSTables"}])
      {
        v6 = 1;
        goto LABEL_13;
      }

      if ([v14 isEqual:{objc_msgSend(TSTBundle(), "localizedStringForKey:value:table:", @"FALSE", &stru_287D36338, @"TSTables"}])
      {
        goto LABEL_12;
      }

      v15 = *(v1 + 9);
      if (*(v1 + 9))
      {
        if (v15 == 9)
        {
          [*(v1 + 72) string];
        }

        else if (v15 != 3)
        {
          v16 = [MEMORY[0x277D6C290] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
          [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
        }
      }

      v18 = -999;
      TSUGetNumberValueAndTypeFromString();
      return 0;
    }

LABEL_22:
    if (v2 == 1 && *(result + 9) << 8 == 1536)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v4 = *(result + 8);
  if ((v4 & 0xFB00) != 0x200 && BYTE1(v4) != 7)
  {
    if (BYTE1(v4))
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v6 = *(result + 16) != 0.0;
LABEL_13:
  v18 = 263;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  TSTCellSetImplicitFormat(v1, &v18);
  TSTCellClearValue(v1);
  *(v1 + 9) = 6;
  v9 = 0.0;
  if (v6)
  {
    v9 = 1.0;
  }

  *(v1 + 16) = v9;
  return 1;
}

uint64_t TSTCellCoerceCellToTextFormat(TSTCell *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  if ((a1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType - 256) > 0x10)
  {
    return v2;
  }

  if (((1 << LOBYTE(a1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType)) & 0x177EF) != 0)
  {
    mString = NSStringFromNativeTSTCell(a1);
    if (mString)
    {
      goto LABEL_5;
    }

    return 0;
  }

  mPrivate = a1->mPrivate;
  if (a1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 267)
  {
    if ((*&a1->mPrivate & 0xFB00) == 0x200 || BYTE1(mPrivate) == 7)
    {
      mDouble = a1->mPrivate.mValue.mDouble;
      mString = [MEMORY[0x277CCAB68] stringWithString:&stru_287D36338];
      if (mDouble > 0.0)
      {
        v8 = 0.0;
        do
        {
          [(NSString *)mString appendString:@"*"];
          v8 = v8 + 1.0;
        }

        while (v8 < mDouble);
      }

      goto LABEL_5;
    }

    if (BYTE1(mPrivate))
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
    }

    v12 = [MEMORY[0x277CCAB68] stringWithString:&stru_287D36338];
    goto LABEL_30;
  }

  if (a1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType != 271)
  {
    return v2;
  }

  if ((*&a1->mPrivate & 0xFF00) == 0x900)
  {
    goto LABEL_13;
  }

  v9 = BYTE1(mPrivate);
  if (!v9)
  {
    mString = &stru_287D36338;
    goto LABEL_5;
  }

  if (v9 == 9)
  {
    v12 = [(TSTRichTextPayload *)a1->mPrivate.mRichTextPayload string];
LABEL_30:
    mString = v12;
    goto LABEL_5;
  }

  if (v9 != 3)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
LABEL_13:
    mString = 0;
    goto LABEL_5;
  }

  mString = a1->mPrivate.mValue.mString.mString;
LABEL_5:
  v15 = 260;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  TSTCellSetImplicitFormat(a1, &v15);
  if (!mString)
  {
    return 1;
  }

  TSTCellClearValue(a1);
  *(&a1->mPrivate + 1) = 3;
  v2 = 1;
  TSTCellSetStringValueClearingID(a1, mString, 1);
  return v2;
}

uint64_t TSTCellCoerceCellToDateTimeFormat(uint64_t a1)
{
  v20 = 0;
  v18 = 0uLL;
  v2 = TSUDefaultDateTimeFormat();
  v19 = v2;
  if (!a1)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 104);
  if (v3 == 260)
  {
    goto LABEL_5;
  }

  if (v3 == 272)
  {
    v6 = v2;
    if (*(a1 + 9))
    {
      if (*(a1 + 9) == 5)
      {
        v7 = *(a1 + 16);
LABEL_27:
        v8 = v7;
        goto LABEL_28;
      }

      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", a1}];
    }

    v7 = 0;
    goto LABEL_27;
  }

  if (v3 != 271)
  {
    a1 = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_31;
  }

LABEL_5:
  if (TSTCellHasFormatOfType(a1, 261))
  {
    v4 = *(a1 + 200);
    if (v4)
    {
      [v4 getFormatStruct];
    }
  }

  v5 = *(a1 + 9);
  if (*(a1 + 9))
  {
    if (v5 == 9)
    {
      [*(a1 + 72) string];
    }

    else if (v5 != 3)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
    }
  }

  v8 = TSUCreateDateFromStringWithPreferredFormat();
  if (!v8)
  {
    a1 = 0;
    goto LABEL_31;
  }

  if ([v20 length])
  {
    v6 = v20;
    v19 = v20;
  }

  else
  {
    v6 = v19;
  }

LABEL_28:
  v15 = 0x105uLL;
  v16 = v6;
  v17 = v18;
  TSTCellSetImplicitFormat(a1, &v15);
  TSTCellClearValue(a1);
  *(a1 + 9) = 5;
  v13 = *(a1 + 16);
  if (v13 != v8)
  {

    *(a1 + 16) = v8;
  }

  a1 = 1;
LABEL_31:
  if (v20)
  {
  }

  return a1;
}

uint64_t TSTCellCoerceCellToCustomNumberFormat(uint64_t result)
{
  v27 = 0.0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = *(v1 + 104);
  if (v2 > 263)
  {
    if (v2 <= 267)
    {
      if ((v2 - 264) >= 2)
      {
        if (v2 != 267)
        {
          return result;
        }

        v11 = *(v1 + 8);
        if ((v11 & 0xFB00) == 0x200 || (v12 = BYTE1(v11), v12 == 7))
        {
          v20 = *(v1 + 16);
          v27 = v20;
          if (v20 > 5.0)
          {
            v27 = 5.0;
            goto LABEL_26;
          }

          if (v20 >= 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v12)
        {
          v13 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
        }

        v27 = 0.0;
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if ((v2 - 269) < 2)
    {
      goto LABEL_19;
    }

    if (v2 == 268)
    {
      v15 = *(v1 + 8);
      if ((v15 & 0xFB00) == 0x200 || (v16 = BYTE1(v15), v16 == 7))
      {
        v17 = *(v1 + 16);
      }

      else
      {
        v17 = 0.0;
        if (v16)
        {
          v18 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
        }
      }

      v27 = v17 / 86400.0;
      goto LABEL_26;
    }

    if (v2 != 271)
    {
      return result;
    }
  }

  else
  {
    if (v2 <= 259)
    {
      if ((v2 - 256) >= 4)
      {
        return result;
      }

      goto LABEL_19;
    }

    if (v2 != 260)
    {
      if (v2 != 262)
      {
        if (v2 != 263)
        {
          return result;
        }

        v3 = *(v1 + 8);
        if ((v3 & 0xFB00) != 0x200)
        {
          v4 = BYTE1(v3);
          if (v4 != 7)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_24;
      }

LABEL_19:
      v8 = *(v1 + 8);
      v4 = BYTE1(v8);
      if ((v8 & 0xFB00) != 0x200 && BYTE1(v8) != 7)
      {
LABEL_16:
        v5 = 0.0;
        if (v4)
        {
          v6 = [MEMORY[0x277D6C290] currentHandler];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v1}];
        }

        goto LABEL_25;
      }

LABEL_24:
      v5 = *(v1 + 16);
LABEL_25:
      v27 = v5;
LABEL_26:
      v23 = 270;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      TSTCellSetImplicitFormat(v1, &v23);
      if (*(v1 + 9))
      {
        TSTCellClearValue(v1);
        *(v1 + 9) = 2;
        *(v1 + 16) = v27;
      }

      return 1;
    }
  }

  v10 = *(v1 + 9);
  if (*(v1 + 9))
  {
    if (v10 == 9)
    {
      [*(v1 + 72) string];
    }

    else if (v10 != 3)
    {
      v21 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
    }
  }

  v23 = -999;
  if (TSUGetNumberValueAndTypeFromString())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellCoerceCellToCustomTextFormat(__CFString *a1)
{
  if (!a1 || (LODWORD(a1[3].info) - 256) > 0x10)
  {
    return 0;
  }

  if (((1 << LOBYTE(a1[3].info)) & 0x17FEF) != 0)
  {
LABEL_4:
    v2 = NSStringFromNativeTSTCell(a1);
    if (v2)
    {
      length = v2;
      goto LABEL_6;
    }

    return 0;
  }

  v6 = BYTE1(LODWORD(a1->info));
  if (LODWORD(a1[3].info) == 260)
  {
    if (v6 != 9)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (v6 == 9)
  {
LABEL_15:
    length = 0;
    goto LABEL_6;
  }

  if (BYTE1(LODWORD(a1->info)))
  {
    if (v6 != 3)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
      goto LABEL_15;
    }

    length = a1->length;
  }

  else
  {
    length = &stru_287D36338;
  }

LABEL_6:
  v9 = 271;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  TSTCellSetImplicitFormat(a1, &v9);
  if (!length)
  {
    return 1;
  }

  TSTCellClearValue(a1);
  BYTE1(a1->info) = 3;
  v4 = 1;
  TSTCellSetStringValueClearingID(a1, length, 1);
  return v4;
}

uint64_t TSTCellCoerceCellToCustomDateTimeFormat(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = 0;
  v2 = *(v1 + 104);
  if (v2 > 270)
  {
    if (v2 != 271)
    {
      if (v2 != 272)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else if (v2 != 260)
  {
    if (v2 != 261)
    {
      return result;
    }

LABEL_8:
    if (*(v1 + 9))
    {
      if (*(v1 + 9) == 5)
      {
        v3 = 0;
        v4 = *(v1 + 16);
LABEL_21:
        *v11 = 272;
        memset(&v11[4], 0, 36);
        TSTCellSetImplicitFormat(v1, v11);
        TSTCellClearValue(v1);
        *(v1 + 9) = 5;
        v10 = *(v1 + 16);
        if (v10 != v4)
        {

          *(v1 + 16) = v4;
        }

        if (v3)
        {
          CFRelease(v3);
        }

        return 1;
      }

      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", v1}];
    }

    v4 = 0;
    v3 = 0;
    goto LABEL_21;
  }

  v5 = *(v1 + 9);
  if (*(v1 + 9))
  {
    if (v5 == 9)
    {
      [*(v1 + 72) string];
    }

    else if (v5 != 3)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v1}];
    }
  }

  *v11 = 0;
  result = TSUCreateDateFromString();
  v4 = result;
  v3 = result;
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t TSTCellCoerceCellToBaseFormat(uint64_t result)
{
  v22 = 0;
  if (*MEMORY[0x277D6C3D0])
  {
    v1 = 65546;
  }

  else
  {
    v1 = 10;
  }

  if (!result)
  {
    return result;
  }

  v2 = result;
  result = 0;
  if ((*(v2 + 104) - 256) > 0xF)
  {
    return result;
  }

  if (((1 << *(v2 + 104)) & 0x43CF) != 0)
  {
    v3 = *(v2 + 8);
    if ((v3 & 0xFB00) == 0x200 || BYTE1(v3) == 7)
    {
      v5 = *(v2 + 16);
    }

    else
    {
      v5 = 0;
      if (BYTE1(v3))
      {
        v6 = [MEMORY[0x277D6C290] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v2}];
      }
    }

    v8 = 0;
    v22 = v5;
    goto LABEL_16;
  }

  if (((1 << *(v2 + 104)) & 0x8010) != 0)
  {
    v9 = *(v2 + 9);
    if (*(v2 + 9))
    {
      if (v9 == 9)
      {
        [*(v2 + 72) string];
      }

      else if (v9 != 3)
      {
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", v2}];
      }
    }

    LODWORD(v18) = -999;
    if (!TSUGetNumberValueAndTypeFromString())
    {
      return 0;
    }

    v17 = TSUNumberOfDecimalPlacesInNumericString();
    LOBYTE(v8) = v17;
    if (v17 >= *MEMORY[0x277D6C3F0])
    {
      v8 = *MEMORY[0x277D6C3F0];
    }

    v8 = v8;
    goto LABEL_16;
  }

  if (*(v2 + 104) != 267)
  {
    return result;
  }

  v10 = *(v2 + 8);
  if ((v10 & 0xFB00) != 0x200)
  {
    v11 = BYTE1(v10);
    if (v11 != 7)
    {
      if (v11)
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v2}];
      }

LABEL_41:
      v8 = 0;
      v22 = 0;
      goto LABEL_16;
    }
  }

  v14 = *(v2 + 16);
  v22 = *&v14;
  if (v14 <= 5.0)
  {
    if (v14 >= 0.0)
    {
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_41;
  }

  v8 = 0;
  v22 = 0x4014000000000000;
LABEL_16:
  *&v18 = 269;
  WORD4(v18) = v1;
  BYTE10(v18) = BYTE2(v1);
  *(&v18 + 11) = 0;
  HIBYTE(v18) = 0;
  v19 = v8;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  TSTCellSetImplicitFormat(v2, &v18);
  if (*(v2 + 9))
  {
    TSTCellClearValue(v2);
    *(v2 + 9) = 2;
    *(v2 + 16) = v22;
  }

  return 1;
}

__CFString *TSUDefaultFormatStructCurrency(void)
{
  v0 = TSUGetCurrentLocale();
  Value = CFLocaleGetValue(v0, *MEMORY[0x277CBEEA0]);
  if (Value)
  {
    v2 = Value;
  }

  else
  {
    v2 = @"USD";
  }

  defaultFractionDigits = 0;
  CFNumberFormatterGetDecimalInfoForCurrencyCode(v2, &defaultFractionDigits, 0);
  return v2;
}

uint64_t p_TSTCellCoerceCellToControlFormat(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 104);
  if (v5 <= 262)
  {
    if ((v5 - 256) >= 4)
    {
      if (v5 == 260)
      {
        goto LABEL_39;
      }

      if (v5 != 262)
      {
        return v4;
      }
    }

LABEL_13:
    v10 = *(a1 + 8);
    if ((v10 & 0xFB00) == 0x200 || BYTE1(v10) == 7)
    {
      v12 = 0;
      v13 = 0;
      v9 = *(a1 + 16);
    }

    else
    {
      v9 = 0.0;
      if (BYTE1(v10))
      {
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
      }

      v12 = 0;
      v13 = 0;
    }

    goto LABEL_51;
  }

  if (v5 <= 268)
  {
    if ((v5 - 264) >= 2)
    {
      if (v5 != 263)
      {
        if (v5 != 267)
        {
          return v4;
        }

        v6 = *(a1 + 8);
        if ((v6 & 0xFB00) == 0x200 || (v7 = BYTE1(v6), v7 == 7))
        {
          v8 = *(a1 + 16);
          v9 = 5.0;
          if (v8 <= 5.0)
          {
            v9 = *(a1 + 16);
            if (v8 < 0.0)
            {
              v9 = 0.0;
            }
          }

          goto LABEL_46;
        }

        goto LABEL_37;
      }

LABEL_35:
      v23 = *(a1 + 8);
      if ((v23 & 0xFB00) == 0x200 || (v7 = BYTE1(v23), v7 == 7))
      {
        v9 = *(a1 + 16);
LABEL_46:
        v12 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        v13 = 1;
        v30 = 256;
        v5 = 256;
        goto LABEL_52;
      }

LABEL_37:
      v9 = 0.0;
      if (v7)
      {
        v24 = [MEMORY[0x277D6C290] currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
      }

      goto LABEL_46;
    }

    if (v5 != a2)
    {
      v16 = *(a1 + 112);
      v17 = *(a1 + 120);
      v18 = *(a1 + 128);
      v5 = *(a1 + 136);
      v19 = *(a1 + 8);
      if ((v19 & 0xFB00) == 0x200 || (v20 = BYTE1(v19), v20 == 7))
      {
        v13 = 0;
        v12 = 0;
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = 0.0;
        if (v20)
        {
          v21 = [MEMORY[0x277D6C290] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
        }

        v13 = 0;
        v12 = 0;
      }

      v30 = -1;
      goto LABEL_68;
    }

    return 0;
  }

  if (v5 != 271)
  {
    if (v5 == 270)
    {
      goto LABEL_35;
    }

    if (v5 != 269)
    {
      return v4;
    }

    goto LABEL_13;
  }

LABEL_39:
  if (!TSTCellCoerceTextCellToBestNumberFormatUsingSpares(a1, 0))
  {
    return 0;
  }

  v26 = *(a1 + 8);
  if ((v26 & 0xFB00) == 0x200 || (v27 = BYTE1(v26), v27 == 7))
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = 0.0;
    if (v27)
    {
      v28 = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
    }
  }

  v12 = 0;
  v13 = 0;
  v5 = *(a1 + 104);
LABEL_51:
  v30 = -1;
LABEL_52:
  TSTCellClearValue(a1);
  *(a1 + 9) = 2;
  if (v9 <= -1.0)
  {
    v16 = round(v9);
    v17 = 0.0;
    v18 = 1.0;
    v9 = v16;
  }

  else if (v9 >= 0.0)
  {
    v16 = 0.0;
    v18 = 1.0;
    if (v9 == 0.0)
    {
      v17 = 1.0;
      v9 = 1.0;
    }

    else if (v9 <= 0.0 || v9 >= 1.0)
    {
      if (v9 >= 1.0)
      {
        v17 = round(v9);
        v9 = v17;
      }

      else
      {
        v17 = 100.0;
        v16 = 1.0;
      }
    }

    else
    {
      v32 = 2.0;
      if (v5 != 262)
      {
        v32 = TSUNumberOfDecimalPlacesInValue();
      }

      v17 = 1.0;
      v18 = 1.0 / __exp10(v32);
    }
  }

  else
  {
    v31 = 2.0;
    if (v5 != 262)
    {
      v31 = TSUNumberOfDecimalPlacesInValue();
    }

    v16 = -1.0;
    v17 = 0.0;
    v18 = 1.0 / __exp10(v31);
  }

LABEL_68:
  v33 = *(a1 + 8);
  if ((v33 & 0xFF00) == 0)
  {
    TSTCellClearValue(a1);
    v33 = *(a1 + 8) & 0xFFFF00FF | 0x200;
    *(a1 + 8) = v33;
  }

  if ((v33 & 0xFF00) == 0x200)
  {
    *(a1 + 16) = v9;
  }

  else
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
    [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", a1}];
  }

  *&v37 = a2;
  *(&v37 + 1) = v16;
  v38 = v17;
  v39 = v18;
  v40 = v5;
  TSTCellSetImplicitFormat(a1, &v37);
  if (!v13)
  {
    return 1;
  }

  v37 = v30;
  v38 = *&v12;
  v39 = 0.0;
  v40 = 0;
  v4 = 1;
  TSTCellSetCellFormatStructBasedOnType(a1, &v37, 1);
  v37 = v30;
  v38 = *&v12;
  v39 = 0.0;
  v40 = 0;
  TSTCellSetFormatFlagsFromFormat(a1, &v37, 1, 1);
  return v4;
}

uint64_t TSTCellCoerceTextCellToBestNumberFormatUsingSpares(uint64_t a1, unsigned int a2)
{
  if (!a1 || (v4 = *(a1 + 104), v4 != 271) && v4 != 260)
  {
    v7 = 0;
    return v7 | a2;
  }

  v5 = *(a1 + 9);
  if (*(a1 + 9))
  {
    if (v5 == 9)
    {
      v6 = [*(a1 + 72) string];
    }

    else if (v5 == 3)
    {
      v6 = *(a1 + 24);
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
      v6 = 0;
    }
  }

  else
  {
    v6 = &stru_287D36338;
  }

  v10 = -[NSString stringByTrimmingCharactersInSet:](v6, "stringByTrimmingCharactersInSet:", [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet]);
  v42 = -999;
  v40 = 0;
  v41 = 0;
  if (TSTCellHasFormatOfType(a1, 257))
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      [v11 getFormatStruct];
    }
  }

  v7 = TSUGetNumberValueAndTypeFromStringWithCurrencyCode();
  if (v7)
  {
    v12 = TSUFormatTypeFromTSUNumberValueType();
    TSTCellClearValue(a1);
    *(a1 + 9) = 2;
    v13 = v41;
    *(a1 + 16) = v41;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    LODWORD(v37) = -1;
    v14 = *(a1 + 96);
    if (v12 == 257)
    {
      if ((v14 & 2) == 0)
      {
        v15 = TSUGetCurrentLocale();
        Value = CFLocaleGetValue(v15, *MEMORY[0x277CBEEA0]);
        if (Value)
        {
          v17 = Value;
        }

        else
        {
          v17 = @"USD";
        }

        LODWORD(defaultFractionDigits[0]) = 0;
        DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v17, defaultFractionDigits, 0);
        v19 = v17;
        if (DecimalInfoForCurrencyCode)
        {
          v20 = LOBYTE(defaultFractionDigits[0]);
        }

        else
        {
          v20 = 2;
        }

        v21 = v20 & 0xFFFFFFFFFFFFF8FFLL | ((*MEMORY[0x277D6C3E8] & 7) << 8);
        *(&v37 + 1) = v19;
        *&v38 = v21;
        LODWORD(v37) = 257;
        if (v40)
        {
          *(&v37 + 1) = v40;
        }

        TSUGetCurrentLocale();
        if (TSUIsGroupingSeparatorUsedInNumericString())
        {
          LOWORD(v21) = v21 | 0x800;
          LOWORD(v38) = v21;
        }

        if ([(NSString *)v10 characterAtIndex:0]== 40)
        {
          LOWORD(v21) = v21 & 0xF8FF | 0x200;
          LOWORD(v38) = v21;
        }

        if (!a2)
        {
          goto LABEL_59;
        }

        v22 = 253;
        if ((v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          TSUGetCurrentLocale();
          v23 = TSUNumberOfDecimalPlacesInNumericString();
          if (TSUNumberOfDecimalPlacesInValue() == v23)
          {
            v22 = 253;
          }

          else
          {
            v22 = v23;
          }
        }

        v24 = v21 & 0xFF00 | v22;
        goto LABEL_58;
      }

      TSTCellGetFormatOfType(a1, 257, &v37);
      if (v40)
      {
        *(&v37 + 1) = v40;
      }

LABEL_44:
      defaultFractionDigits[0] = v37;
      defaultFractionDigits[1] = v38;
      *&defaultFractionDigits[2] = v39;
      TSTCellSetExplicitFormat(a1, defaultFractionDigits);
      goto LABEL_61;
    }

    if (v14)
    {
      v25 = a1;
      v26 = v12;
      goto LABEL_43;
    }

    if (v12 == 256)
    {
      if ((v14 & 2) != 0)
      {
        v25 = a1;
        v26 = 257;
LABEL_43:
        TSTCellGetFormatOfType(v25, v26, &v37);
        goto LABEL_44;
      }

LABEL_46:
      v27 = (*MEMORY[0x277D6C3E8] & 7) << 8;
      v28 = 253;
      *&v38 = v27 | 0xFD;
      LODWORD(v37) = v12;
      if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        TSUGetCurrentLocale();
        v29 = TSUNumberOfDecimalPlacesInNumericString();
        v30 = TSUNumberOfDecimalPlacesInValue();
        v31 = v30 - 2;
        if (v30 <= 1)
        {
          v31 = 0;
        }

        if (v12 != 258)
        {
          v31 = v30;
        }

        if (v31 == v29)
        {
          v28 = 253;
        }

        else
        {
          v28 = v29;
        }
      }

      v32 = v28 | v27;
      LOWORD(v38) = v28 | v27;
      TSUGetCurrentLocale();
      if (TSUIsGroupingSeparatorUsedInNumericString())
      {
        v32 |= 0x800u;
        LOWORD(v38) = v32;
      }

      if ([(NSString *)v10 characterAtIndex:0]!= 40)
      {
        goto LABEL_59;
      }

      v24 = v32 & 0xF8FF | 0x200;
LABEL_58:
      LOWORD(v38) = v24;
      goto LABEL_59;
    }

    if ((v12 & 0xFFFFFFFC) == 0x100)
    {
      goto LABEL_46;
    }

    if (v12 == 262)
    {
      if (a2)
      {
        TSTCellClearValue(a1);
        *(a1 + 9) = 3;
        TSTCellSetStringValueClearingID(a1, v6, 1);
        memset(defaultFractionDigits + 4, 0, 36);
        LODWORD(defaultFractionDigits[0]) = 260;
        goto LABEL_60;
      }

      DWORD2(v37) = *MEMORY[0x277D6C3E0];
      LODWORD(v37) = 262;
LABEL_59:
      defaultFractionDigits[0] = v37;
      defaultFractionDigits[1] = v38;
      *&defaultFractionDigits[2] = v39;
LABEL_60:
      TSTCellSetImplicitFormat(a1, defaultFractionDigits);
      goto LABEL_61;
    }

    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellCoerceTextCellToBestNumberFormatUsingSpares(TSTCell *, BOOL)"}];
    [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.mm"), 3998, @"unexpected format type"}];
  }

LABEL_61:
  if (v40)
  {
  }

  return v7 | a2;
}

BOOL TSTCellCoerceStepperSliderToRootFormatType(void *a1)
{
  v1 = &TSUInvalidFormat;
  if (a1)
  {
    v1 = (a1 + 13);
  }

  v2 = *v1 & 0xFFFFFFFE;
  if (v2 == 264)
  {
    TSTCellGetFormatOfType(a1, *(v1 + 8), v5);
    TSTCellSetExplicitFormat(a1, v5);
  }

  return v2 == 264;
}

uint64_t TSTCellCoerceControlCellToNonControlType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 104);
    if ((v1 - 263) > 4)
    {
      return 0;
    }

    else
    {
      if ((v1 - 264) < 2)
      {
        TSTCellCoerceStepperSliderToRootFormatType(result);
      }

      else if (v1 == 267)
      {
        TSTCellCoerceCellToDecimalFormat(result);
      }

      else if (v1 == 263)
      {
        TSTCellSetImplicitFormat(result, &TSUNotSetFormat);
      }

      return 1;
    }
  }

  return result;
}

uint64_t TSTCellHasExplicitFormatOfType(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 265)
  {
    if (a2 > 260)
    {
      if ((a2 - 264) < 2)
      {
        if (a1)
        {
          v8 = *(a1 + 216);
          if (v8)
          {
            [v8 getFormatStruct];
            if ((v12 - 1) <= 0xFFFFFFFD)
            {
              return (*(a1 + 96) >> 6) & 1;
            }
          }
        }

        return 0;
      }

      if (a2 == 261)
      {
        if (a1)
        {
          v9 = *(a1 + 200);
          if (v9)
          {
            [v9 getFormatStruct];
            if ((v12 - 1) <= 0xFFFFFFFD)
            {
              return (*(a1 + 96) >> 3) & 1;
            }
          }
        }

        return 0;
      }

      if (a2 != 262)
      {
        return result;
      }
    }

    else if ((a2 - 258) >= 2 && a2 != 256)
    {
      if (a2 != 257)
      {
        return result;
      }

      if (a1)
      {
        v4 = *(a1 + 168);
        if (v4)
        {
          [v4 getFormatStruct];
          if ((v12 - 1) <= 0xFFFFFFFD)
          {
            return (*(a1 + 96) >> 1) & 1;
          }
        }
      }

      return 0;
    }

    if (a1)
    {
      v6 = *(a1 + 152);
      if (v6)
      {
        [v6 getFormatStruct];
        if ((v12 - 1) <= 0xFFFFFFFD)
        {
          return *(a1 + 96) & 1;
        }
      }
    }

    return 0;
  }

  if (a2 > 269)
  {
    if ((a2 - 270) >= 3)
    {
      return result;
    }

    if (a1)
    {
      v7 = *(a1 + 232);
      if (v7)
      {
        [v7 getFormatStruct];
        if ((v12 - 1) <= 0xFFFFFFFD)
        {
          return HIBYTE(*(a1 + 96)) & 1;
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 266:
        if (a1)
        {
          v10 = *(a1 + 264);
          if (v10)
          {
            [v10 getFormatStruct];
            if ((v12 - 1) <= 0xFFFFFFFD)
            {
              return (*(a1 + 96) >> 10) & 1;
            }
          }
        }

        break;
      case 268:
        if (a1)
        {
          v11 = *(a1 + 184);
          if (v11)
          {
            [v11 getFormatStruct];
            if ((v12 - 1) <= 0xFFFFFFFD)
            {
              return (*(a1 + 96) >> 2) & 1;
            }
          }
        }

        break;
      case 269:
        if (a1)
        {
          v5 = *(a1 + 248);
          if (v5)
          {
            [v5 getFormatStruct];
            if ((v12 - 1) <= 0xFFFFFFFD)
            {
              return (*(a1 + 96) >> 9) & 1;
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t TSTCellCoerceCellToFormatUsingSpares(uint64_t a1, unsigned int a2)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v4 = -1;
  LODWORD(v30) = -1;
  if (TSTCellHasFormatOfType(a1, a2))
  {
    TSTCellGetFormatOfType(a1, a2, &v30);
    if (v30 == a2)
    {
      HasExplicitFormatOfType = TSTCellHasExplicitFormatOfType(a1, a2);
      v4 = a2;
    }

    else
    {
      HasExplicitFormatOfType = 0;
      v32 = 0;
      v30 = TSUInvalidFormat;
      v31 = unk_26CA67C28;
    }
  }

  else
  {
    HasExplicitFormatOfType = 0;
  }

  v6 = TSTCellCoerceCellToFormat(a1, a2);
  v7 = v6;
  if (v4 != -1 && v6)
  {
    if ((a2 & 0xFFFFFFFE) != 0x108)
    {
      goto LABEL_34;
    }

    if ((v32 - 256) <= 6 && ((1 << v32) & 0x4D) != 0)
    {
      if (a1 && (v8 = *(a1 + 152)) != 0)
      {
        [v8 getFormatStruct];
        v9 = v27;
      }

      else
      {
        v9 = -1;
      }

      LODWORD(v32) = v9;
    }

    if (a1)
    {
      v10 = *(a1 + 8);
      if ((v10 & 0xFB00) == 0x200 || (v11 = BYTE1(v10), v11 == 7))
      {
        v12 = *(a1 + 16);
      }

      else
      {
        v12 = 0.0;
        if (v11)
        {
          v13 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a1}];
        }
      }
    }

    else
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 889, @"invalid nil value for '%s'", "cell"}];
      v12 = 0.0;
    }

    v17 = *(&v30 + 1);
    v18 = v31;
    if ((v4 & 0xFFFFFFFE) != 0x108)
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"double TSUFormatRecomputedControlValue(double, TSUFormatStruct)"}];
      [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatTypes.h"), 779, @"Expected a stepper or slider format."}];
    }

    if (v17 < v12)
    {
      if (*&v18 <= v12 || (v17 = v17 + *(&v18 + 1) * round((v12 - v17) / *(&v18 + 1)), v17 > *&v18))
      {
        v17 = *&v18;
      }
    }

    if (a1)
    {
      v21 = *(a1 + 8);
      if ((v21 & 0xFF00) == 0)
      {
        TSTCellClearValue(a1);
        v21 = *(a1 + 8) & 0xFFFF00FF | 0x200;
        *(a1 + 8) = v21;
      }

      if ((v21 & 0xFF00) == 0x200)
      {
        *(a1 + 16) = v17;
LABEL_34:
        if (HasExplicitFormatOfType)
        {
LABEL_35:
          v27 = v30;
          v28 = v31;
          v29 = v32;
          TSTCellSetExplicitFormat(a1, &v27);
          return v7;
        }

LABEL_38:
        v27 = v30;
        v28 = v31;
        v29 = v32;
        TSTCellSetImplicitFormat(a1, &v27);
        return v7;
      }
    }

    else
    {
      v22 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
      [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 904, @"invalid nil value for '%s'", "cell"}];
      MEMORY[0x18] = 0;
      MEMORY[0x10] = 0;
      MEMORY[9] = 2;
    }

    v24 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", a1}];
    if (HasExplicitFormatOfType)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  return v7;
}

uint64_t TSTCellCoerceTextCellToNumberFormatWithSeparatorFixing(uint64_t a1, unsigned int a2)
{
  if (a1 && (v4 = *(a1 + 9), *(a1 + 9)))
  {
    if (v4 == 9)
    {
      v5 = [*(a1 + 72) string];
    }

    else if (v4 == 3)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", a1}];
      v5 = 0;
    }
  }

  else
  {
    v5 = &stru_287D36338;
  }

  TSUGetCurrentLocale();
  result = TSUIsGroupingSeparatorUsedInNumericString();
  if (result)
  {
    v9 = TSUGetCurrentLocale();
    v10 = [(__CFString *)v5 stringByReplacingOccurrencesOfString:CFLocaleGetValue(v9 withString:*MEMORY[0x277CBEEC0]), &stru_287D36338];
    v11 = objc_alloc_init(TSTCell);
    TSTCellCopy(a1, v11);
    TSTCellSetStringValueClearingID(v11, v10, 1);
    result = TSTCellCoerceCellToFormat(v11, a2);
    if (result)
    {
      p_mFormatType = &v11->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
      if (!v11)
      {
        p_mFormatType = &TSUInvalidFormat;
      }

      if (*p_mFormatType != 259 && (*p_mFormatType & 0xFFFFFFFC) == 0x100)
      {
        v13 = *(p_mFormatType + 8) | 0x800;
        v14 = *p_mFormatType;
        v15 = v13;
        *v16 = *(p_mFormatType + 18);
        *&v16[14] = *(p_mFormatType + 4);
        TSTCellSetImplicitFormat(v11, &v14);
      }

      TSTCellCopy(v11, a1);
      return 1;
    }
  }

  return result;
}

uint64_t TSTCellCreateWithCellAndSetFormulaError(TSTCell *a1, TSWPStorage *a2)
{
  v3 = objc_alloc_init(TSTCell);
  v4 = v3;
  if (a1)
  {
    TSTCellCopy(a1, v3);
  }

  else
  {
    TSTCellSetImplicitFormat(v3, &TSUNotSetFormat);
  }

  v5 = *(v4 + 72);
  if (v5)
  {

    *(v4 + 72) = 0;
  }

  *(v4 + 64) = 0;
  TSTCellClearValue(v4);
  *(v4 + 9) = 8;
  if ((*(v4 + 104) - 263) <= 4)
  {
    TSTCellSetImplicitFormat(v4, &TSUNotSetFormat);
  }

  return v4;
}

uint64_t TSTCellCreateWithCellAndSetFormula(uint64_t a1)
{
  v2 = objc_alloc_init(TSTCell);
  v3 = v2;
  if (a1)
  {
    TSTCellCopy(a1, v2);
  }

  else
  {
    TSTCellSetImplicitFormat(v2, &TSUNotSetFormat);
  }

  v4 = *(v3 + 72);
  if (v4)
  {

    *(v3 + 72) = 0;
  }

  *(v3 + 64) = 0;
  TSTCellClearValue(v3);
  *(v3 + 8) &= 0xFFFF00FF;
  if ((*(v3 + 104) - 263) <= 4)
  {
    TSTCellSetImplicitFormat(v3, &TSUNotSetFormat);
  }

  return v3;
}

TSTCell *TSTCellCreateWithCellAndSetBoolean(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  v4->mPrivate.mRichTextPayloadID = 0;
  mFormatType = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  TSTCellClearValue(v4);
  mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x600;
  *&v4->mPrivate = mPrivate;
  if (mFormatType != 263)
  {
    v15 = 0;
    v14 = 0u;
    v13 = 0u;
    v12 = 263;
    TSTCellSetImplicitFormat(v4, &v12);
    mPrivate = v4->mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0)
  {
    TSTCellClearValue(v4);
    mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x600;
    *&v4->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x600)
  {
    v8 = 0.0;
    if (a2)
    {
      v8 = 1.0;
    }

    v4->mPrivate.mValue.mDouble = v8;
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetBoolValue(TSTCell *, BOOL)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 939, @"can't set BOOL value to non-BOOL cell: %p", v4}];
  }

  return v4;
}

TSTCell *TSTCellCreateWithCellAndSetDate(uint64_t a1, NSDate *a2)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  v4->mPrivate.mRichTextPayloadID = 0;
  mFormatType = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  if (mFormatType == 272 || mFormatType == 261)
  {
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 5;
    goto LABEL_8;
  }

  mDateFormatRef = v4->mPrivate.mCellFormats.mDateFormatRef;
  if (!mDateFormatRef || ([(TSUFormatReferenceObject *)mDateFormatRef getFormatStruct], (v19 - 1) > 0xFFFFFFFD))
  {
    if (TSTCellCoerceCellToFormat(v4, 0x105u))
    {
      goto LABEL_8;
    }

    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 5;
    v14 = TSUDefaultDateTimeFormat();
    LODWORD(v19) = 261;
    *(&v19 + 1) = 0;
    *&v20 = v14;
    v15 = &v19;
    goto LABEL_24;
  }

  TSTCellClearValue(v4);
  *(&v4->mPrivate + 1) = 5;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v13 = v4->mPrivate.mCellFormats.mDateFormatRef;
  if (v13)
  {
    [(TSUFormatReferenceObject *)v13 getFormatStruct];
  }

  else
  {
    v21 = 0;
    v19 = TSUInvalidFormat;
    v20 = unk_26CA67C28;
  }

  if ((*&v4->mPrivate.mCellFormats & 8) == 0)
  {
    v16 = v19;
    v17 = v20;
    v18 = v21;
    v15 = &v16;
LABEL_24:
    TSTCellSetImplicitFormat(v4, v15);
    goto LABEL_8;
  }

  v16 = v19;
  v17 = v20;
  v18 = v21;
  TSTCellSetExplicitFormat(v4, &v16);
LABEL_8:
  mPrivate = v4->mPrivate;
  if ((mPrivate & 0xFF00) == 0)
  {
    TSTCellClearValue(v4);
    mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x500;
    *&v4->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x500)
  {
    mDate = v4->mPrivate.mValue.mDate;
    if (mDate != a2)
    {

      v4->mPrivate.mValue.mDate = a2;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDateValue(TSTCell *, NSDate *)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1038, @"can't set date value on a non-date cell: %p", v4}];
  }

  return v4;
}