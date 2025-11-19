BOOL TSTTableHasColumnHiddenForActionInRange(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 86))
  {
    return 0;
  }

  v4 = BYTE2(a2);
  v6 = a2 >> 16;
  v7 = HIDWORD(a2);
  if (!*(a1 + 90))
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasColumnHiddenForActionInRange(TSTTableModel *, TSTCellRange, TSTHidingAction)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3620, @"mNumberOfUserHiddenColumns should be larger than 0 when mNumberOfHiddenColumns is larger than 0"}];
  }

  v10 = v4 + v7;
  do
  {
    v11 = v10 > v6;
    if (v10 <= v6)
    {
      break;
    }

    v12 = TSTHidingActionForColumn(a1, v6);
    LOBYTE(v6) = v6 + 1;
  }

  while ((v12 & a3) == 0);
  return v11;
}

uint64_t TSTTableHasColumnShownInRange(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 86))
  {
    return 1;
  }

  v2 = BYTE2(a2);
  v4 = a2 >> 16;
  v5 = HIDWORD(a2);
  if (!*(a1 + 90))
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasColumnShownInRange(TSTTableModel *, TSTCellRange)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3636, @"mNumberOfUserHiddenColumns should be larger than 0 when mNumberOfHiddenColumns is larger than 0"}];
  }

  v8 = v2 + v5;
  do
  {
    v9 = v8 > v4;
    if (v8 <= v4)
    {
      break;
    }

    v10 = TSTHidingActionForColumn(a1, v4);
    LOBYTE(v4) = v4 + 1;
  }

  while (v10);
  return v9;
}

uint64_t TSTTableHasCellRangeHidden(_WORD *a1, unint64_t a2)
{
  if (!a1[43] && !a1[42])
  {
    return 0;
  }

  v4 = HIDWORD(a2);
  if (!a1[45] && !a1[44] && !a1[46])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasCellRangeHidden(TSTTableModel *, TSTCellRange)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3654, @"mNumberOfUserHiddenColumns, mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenColumns or mNumberOfHiddenColumns is larger than 0"}];
  }

  if (!v4)
  {
    return 1;
  }

  v7 = a2 >> 16;
  v8 = BYTE2(a2) + v4;
  while (1)
  {
    if (!TSTHidingActionForColumn(a1, v7))
    {
      v9 = a2;
      if (HIWORD(a2))
      {
        break;
      }
    }

LABEL_13:
    LOBYTE(v7) = v7 + 1;
    if (v8 <= v7)
    {
      return 1;
    }
  }

  while (1)
  {
    result = TSTHidingActionForRow(a1, v9);
    if (!result)
    {
      return result;
    }

    if ((HIWORD(a2) + a2) <= ++v9)
    {
      goto LABEL_13;
    }
  }
}

__CFString *TSTTableStringForCellAtCellID(uint64_t a1, __CFString *a2, int a3)
{
  if (a2)
  {

    return NSStringFromNativeTSTCell(a2);
  }

  else
  {
    v5 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
    if (!v5)
    {
      return 0;
    }

    if (v5[2] << 8 != 768)
    {
      v11 = [[TSTCell alloc] initWithStorageRef:v5 dataStore:*(a1 + 48)];
      v12 = NSStringFromNativeTSTCell(v11);

      return v12;
    }

    if ((v5[4] & 0x10) == 0)
    {
      return 0;
    }

    Element = TSTCellStorageGetElement(v5, 16);
    if (!Element)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStringID(TSTCellStorage *)"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 401, @"Can't get string ID storage element!"}];
    }

    v9 = *Element;
    if (!v9)
    {
      return 0;
    }

    v10 = *(a1 + 48);

    return TSTTableDataStoreGetStringForKey(v10, v9);
  }
}

uint64_t TSTTableGetFontColorForCell(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a2 || (TextStyleAtCellID = *(a2 + 56)) == 0)
  {
    TextStyleAtCellID = TSTTableGetTextStyleAtCellID(a1, a3, 0);
  }

  result = [(TSSStyle *)TextStyleAtCellID valueForProperty:18];
  if (!result)
  {
    v5 = MEMORY[0x277D6C2A8];

    return [v5 blackColor];
  }

  return result;
}

unint64_t TSTTableExpandCellRangeToCoverMergedCells(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v4 = a2;
    while (1)
    {
      v5 = [TSTTableDataStoreMergeRangesForCellRange(*(a1 + 48) v2)];
      if ([v5 hasNextMergeRegion])
      {
        break;
      }

LABEL_40:
      v16 = v4 ^ v2;
      v2 = v4;
      if ((v16 & 0xFFFFFFFF00FFFFFFLL) == 0)
      {
        return v4;
      }
    }

    v6 = v2;
    while (1)
    {
      v7 = [v5 nextMergeRegion];
      if (v7 == 0xFFFF || (v7 & 0xFF0000) == 0xFF0000 || (v8 = HIWORD(v7)) == 0 || (v7 & 0xFFFF00000000) == 0)
      {
        v9 = v6 >> 16;
        v10 = HIDWORD(v6);
        LOWORD(v7) = v6;
        v8 = HIWORD(v6);
      }

      else
      {
        if (v6 == 0xFFFF || (v6 & 0xFF0000) == 0xFF0000 || !HIWORD(v6) || (v6 & 0xFFFF00000000) == 0)
        {
          v9 = v7 >> 16;
          v10 = HIDWORD(v7);
        }

        else if (v7 > v6 || (v7 + HIWORD(v7) - 1) < v6 || (v9 = v7 >> 16, BYTE2(v6) < BYTE2(v7)) || (v10 = HIDWORD(v7), v11 = (BYTE4(v7) + BYTE2(v7) - 1), v11 < BYTE2(v6)) || v11 < (BYTE4(v6) + BYTE2(v6) - 1) || (v7 + HIWORD(v7) - 1) < (v6 + HIWORD(v6) - 1))
        {
          if (v6 <= v7 && (v6 + HIWORD(v6) - 1) >= v7 && (v9 = v6 >> 16, BYTE2(v7) >= BYTE2(v6)) && (v10 = HIDWORD(v6), v12 = (BYTE4(v6) + BYTE2(v6) - 1), v12 >= BYTE2(v7)) && v12 >= (BYTE4(v7) + BYTE2(v7) - 1) && (v6 + HIWORD(v6) - 1) >= (v7 + HIWORD(v7) - 1))
          {
            LOWORD(v7) = v6;
            v8 = HIWORD(v6);
          }

          else
          {
            LOWORD(v9) = BYTE2(v7);
            if (BYTE2(v7) >= BYTE2(v6))
            {
              LOWORD(v9) = BYTE2(v6);
            }

            v13 = v7;
            if (v7 >= v6)
            {
              v13 = v6;
            }

            v14 = v7 + HIWORD(v7);
            LOWORD(v7) = v13;
            LODWORD(v10) = (BYTE4(v7) + BYTE2(v7) - 1);
            if (v10 <= (BYTE4(v6) + BYTE2(v6) - 1))
            {
              LOWORD(v10) = (BYTE4(v6) + BYTE2(v6) - 1);
            }

            v15 = (v14 - 1);
            if (v15 <= (v6 + HIWORD(v6) - 1))
            {
              LOWORD(v15) = v6 + HIWORD(v6) - 1;
            }

            LOWORD(v10) = v10 - v9 + 1;
            v8 = (v15 - v13 + 1);
            LODWORD(v6) = 0;
          }

          goto LABEL_37;
        }

        LODWORD(v6) = v7;
      }

LABEL_37:
      v4 = (v10 << 32) | (v8 << 48) | v6 & 0xFF000000 | (v9 << 16) | v7;
      v6 = v4;
      if (([v5 hasNextMergeRegion] & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  v17 = [MEMORY[0x277D6C290] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellRange TSTTableExpandCellRangeToCoverMergedCells(TSTTableModel *, TSTCellRange)"}];
  [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3863, @"No table model!  Aborting expandCellRangeToCoverMergedCells:.  This is a bug in the calling code."}];
  return v2;
}

uint64_t TSTTableGetBodyFill(void *a1)
{
  v1 = [a1 bodyCellStyle];

  return [v1 valueForProperty:898];
}

uint64_t TSTTableGetHeaderColumnsFill(void *a1)
{
  v1 = [a1 headerColumnCellStyle];

  return [v1 valueForProperty:898];
}

uint64_t TSTTableGetHeaderRowsFill(void *a1)
{
  v1 = [a1 headerRowCellStyle];

  return [v1 valueForProperty:898];
}

uint64_t TSTTableGetFooterRowsFill(void *a1)
{
  v1 = [a1 footerRowCellStyle];

  return [v1 valueForProperty:898];
}

uint64_t TSTTableGetRowFill(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  CellStyleAtRow = TSTTableGetCellStyleAtRow(a1, a2, &v4);
  if (v4)
  {
    return 0;
  }

  else
  {
    return [CellStyleAtRow valueForProperty:898];
  }
}

uint64_t TSTTableGetColumnFill(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  CellStyleAtColumn = TSTTableGetCellStyleAtColumn(a1, a2, &v4);
  if (v4)
  {
    return 0;
  }

  else
  {
    return [CellStyleAtColumn valueForProperty:898];
  }
}

id TSTTableGetDefaultHorizontalBorderStroke(TSTTableModel *a1)
{
  if (![(TSSStyle *)[(TSTTableModel *)a1 tableStyle] intValueForProperty:796])
  {
    return 0;
  }

  v2 = [(TSTTableModel *)a1 tableStyle];

  return [(TSSStyle *)v2 valueForProperty:771];
}

id TSTTableGetDefaultVerticalBorderStroke(TSTTableModel *a1)
{
  if (![(TSSStyle *)[(TSTTableModel *)a1 tableStyle] intValueForProperty:796])
  {
    return 0;
  }

  v2 = [(TSTTableModel *)a1 tableStyle];

  return [(TSSStyle *)v2 valueForProperty:772];
}

uint64_t TSTTableGetDefaultBorderStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:771];
}

uint64_t TSTTableGetDefaultBodyColumnStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:774];
}

uint64_t TSTTableGetDefaultBodyRowStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:773];
}

uint64_t TSTTableGetDefaultHeaderColumnBorderStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:778];
}

uint64_t TSTTableGetDefaultHeaderColumnBodyColumnStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:777];
}

uint64_t TSTTableGetDefaultHeaderColumnBodyRowStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:776];
}

uint64_t TSTTableGetDefaultHeaderColumnSeparatorStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:775];
}

uint64_t TSTTableGetDefaultHeaderRowBorderStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:782];
}

uint64_t TSTTableGetDefaultHeaderRowBodyColumnStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:780];
}

uint64_t TSTTableGetDefaultHeaderRowBodyRowStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:781];
}

uint64_t TSTTableGetDefaultHeaderRowSeparatorStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:779];
}

uint64_t TSTTableGetDefaultFooterRowBorderStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:786];
}

uint64_t TSTTableGetDefaultFooterRowBodyColumnStroke(void *a1)
{
  if (![objc_msgSend(a1 "tableStyle")])
  {
    return 0;
  }

  v2 = [a1 tableStyle];

  return [v2 valueForProperty:784];
}

uint64_t TSTTableGetDefaultFooterRowBodyRowStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:785];
}

uint64_t TSTTableGetDefaultFooterRowSeparatorStroke(void *a1)
{
  v1 = [a1 tableStyle];

  return [v1 valueForProperty:783];
}

void *TSTTableGetDefaultStrokesForColumn(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CBEB68] null];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CBEB68] null];
  }

  v10 = 0;
  result = TSTTableGetCellStyleAtColumn(a1, a2, &v10);
  if (result && (v10 & 1) == 0)
  {
    v9 = result;
    if (a3)
    {
      result = [result valueForProperty:901];
      if (result)
      {
        *a3 = result;
      }
    }

    if (a4)
    {
      result = [v9 valueForProperty:902];
      if (result)
      {
        *a4 = result;
      }
    }
  }

  return result;
}

void *TSTTableGetDefaultStrokesForRow(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CBEB68] null];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CBEB68] null];
  }

  v10 = 0;
  result = TSTTableGetCellStyleAtRow(a1, a2, &v10);
  if (result && (v10 & 1) == 0)
  {
    v9 = result;
    if (a3)
    {
      result = [result valueForProperty:899];
      if (result)
      {
        *a3 = result;
      }
    }

    if (a4)
    {
      result = [v9 valueForProperty:900];
      if (result)
      {
        *a4 = result;
      }
    }
  }

  return result;
}

uint64_t p_setStrokeResult(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  v6 = [a3 valueForProperty:a1];
  result = [MEMORY[0x277CBEB68] null];
  if (!a2)
  {
    goto LABEL_6;
  }

  if (v6 == result)
  {
    result = 0;
    goto LABEL_6;
  }

  result = v6;
  if (v6)
  {
LABEL_6:
    *a4 = result;
  }

  return result;
}

uint64_t TSTTableGetStrokesForCellID(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v14 = TSTTableDataStoreMergeRangeAtCellID(*(a1 + 48), a2);

  return TSTTableGetStrokesForCellIDWithMergeRange(a1, a2, v14, a3, a4, a5, a6, a7);
}

uint64_t TSTTableGetStrokesForCellIDWithMergeRange(uint64_t a1, int a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  result = [MEMORY[0x277CBEB68] null];
  if (a8)
  {
    v17 = (a8 + 8);
    v18 = *(a8 + 40);
    if (v18)
    {
      v57 = a5;
      v59 = result;
      v19 = a7;
      v20 = *v17;
      goto LABEL_4;
    }
  }

  else
  {
    v59 = result;
    v32 = *(a1 + 48);
    v33 = TSTTableDataStoreCellStorageRefAtCellID(v32, a2);
    if (v33)
    {
      v34 = v33;
      if ((v33[4] & 2) != 0)
      {
        Element = TSTCellStorageGetElement(v33, 2);
        if (!Element)
        {
          v58 = [MEMORY[0x277D6C290] currentHandler];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStyleID(TSTCellStorage *)"];
          [v58 handleFailureInFunction:v56 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 182, @"Can't get style ID storage element!"}];
        }

        v36 = *Element;
        if (v36)
        {
          StyleForKey = TSTTableDataListGetStyleForKey([*(v32 + 72) object], v36);
          if (StyleForKey)
          {
            v18 = StyleForKey;
            v19 = a7;
            v57 = a5;
            v20 = *(v34 + 1);
LABEL_4:
            v21 = (v20 >> 22) & 1;
            v22 = (v20 >> 21) & 1;
            v23 = (v20 >> 20) & 1;
            v24 = (v20 & 0x8000000) == 0;
            if ((v20 & 0x8000000) != 0)
            {
              v25 = (v20 >> 23) & 1;
            }

            else
            {
              v25 = 1;
            }

            v55 = v25;
            if (v24)
            {
              v26 = 1;
            }

            else
            {
              v26 = v21;
            }

            if (v24)
            {
              v27 = 1;
            }

            else
            {
              v27 = v22;
            }

            if (v24)
            {
              v28 = 1;
            }

            else
            {
              v28 = v23;
            }

            v29 = [v18 valueForProperty:899];
            v30 = [MEMORY[0x277CBEB68] null];
            if (v28)
            {
              if (v29 == v30)
              {
                v30 = 0;
              }

              else
              {
                v30 = v29;
                v31 = v59;
                if (!v29)
                {
LABEL_31:
                  v41 = [v18 valueForProperty:900];
                  v42 = [MEMORY[0x277CBEB68] null];
                  if (v27)
                  {
                    if (v41 == v42)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v41;
                      v39 = v59;
                      if (!v41)
                      {
LABEL_37:
                        v43 = [v18 valueForProperty:901];
                        v44 = [MEMORY[0x277CBEB68] null];
                        if (v26)
                        {
                          if (v43 == v44)
                          {
                            v44 = 0;
                          }

                          else
                          {
                            v44 = v43;
                            v45 = v59;
                            if (!v43)
                            {
LABEL_43:
                              v46 = v45;
                              v47 = [v18 valueForProperty:902];
                              result = [MEMORY[0x277CBEB68] null];
                              v38 = v31;
                              a7 = v19;
                              if (v55)
                              {
                                if (v47 == result)
                                {
                                  result = 0;
                                }

                                else
                                {
                                  result = v47;
                                  if (!v47)
                                  {
                                    a5 = v57;
                                    result = v59;
LABEL_49:
                                    v40 = v46;
                                    goto LABEL_50;
                                  }
                                }
                              }

                              a5 = v57;
                              goto LABEL_49;
                            }
                          }
                        }

                        v45 = v44;
                        goto LABEL_43;
                      }
                    }
                  }

                  v39 = v42;
                  goto LABEL_37;
                }
              }
            }

            v31 = v30;
            goto LABEL_31;
          }
        }
      }
    }

    result = v59;
  }

  v38 = result;
  v39 = result;
  v40 = result;
LABEL_50:
  if (a3 != 0xFFFF && (a3 & 0xFF0000) != 0xFF0000 && HIWORD(a3) && (a3 & 0xFFFF00000000) != 0)
  {
    v48 = a2 & 0xFF0000 | (a2 - 1);
    if (!a2)
    {
      v48 = 0xFFFFFFLL;
    }

    if (a3 <= v48 && (a3 + HIWORD(a3) - 1) >= v48)
    {
      v49 = v48 >> 16;
      if (v49 >= BYTE2(a3) && v49 <= (BYTE4(a3) + BYTE2(a3) - 1))
      {
        v38 = 0;
      }
    }

    v50 = (a2 + 1) | a2 & 0xFF0000u;
    if ((~a2 & 0xFFFE) == 0)
    {
      v50 = 0xFFFFFFLL;
    }

    if (a3 <= v50 && (a3 + HIWORD(a3) - 1) >= v50)
    {
      v51 = v50 >> 16;
      if (v51 >= BYTE2(a3) && v51 <= (BYTE4(a3) + BYTE2(a3) - 1))
      {
        v39 = 0;
      }
    }

    v52 = 0xFFFFFFLL;
    if ((*&a2 & 0xFF0000) != 0)
    {
      v52 = (a2 + 16711680) & 0xFF0000 | a2;
    }

    if (a3 <= v52 && (a3 + HIWORD(a3) - 1) >= v52)
    {
      v53 = v52 >> 16;
      if (v53 >= BYTE2(a3) && v53 <= (BYTE4(a3) + BYTE2(a3) - 1))
      {
        v40 = 0;
      }
    }

    v54 = (a2 + 0x10000) & 0xFF0000 | a2;
    if ((~a2 & 0xFE0000) == 0)
    {
      v54 = 0xFFFFFFLL;
    }

    if (a3 <= v54 && (a3 + HIWORD(a3) - 1) >= v54 && (v54 >> 16) >= BYTE2(a3) && (v54 >> 16) <= (BYTE4(a3) + BYTE2(a3) - 1))
    {
      result = 0;
    }
  }

  if (a4)
  {
    *a4 = v38;
  }

  if (a6)
  {
    *a6 = v39;
  }

  if (a7)
  {
    *a7 = result;
  }

  if (a5)
  {
    *a5 = v40;
  }

  return result;
}

double TSTWidthHeightCache_Private::WHCCol::getMaxWidth(TSTWidthHeightCache_Private::WHCCol *this)
{
  if (*this != *(this + 1))
  {
    return **this;
  }

  result = 0.0;
  if (*(this + 24))
  {
    return -1.0;
  }

  return result;
}

uint64_t TSTWidthHeightCache_Private::WHCCol::setWidth(TSTWidthHeightCache_Private::WHCCol *this, int a2, double a3)
{
  v17.n128_f64[0] = a3;
  v17.n128_u32[2] = a2;
  v5 = *this;
  v4 = *(this + 1);
  if (*this == v4)
  {
LABEL_13:
    if (*(this + 24))
    {
      return 0;
    }

    else
    {
      std::vector<_TSWPCharIndexAndAffinity>::push_back[abi:nn200100](this, &v17);
      return 1;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = (v5 + v7);
      if (*(v5 + v7 + 8) == a2)
      {
        break;
      }

      v7 += 16;
      if ((v5 + v7) == v4)
      {
        goto LABEL_11;
      }
    }

    if (v8 != v4)
    {
      if (*v8 == a3)
      {
        return 1;
      }

      v9 = v4[-1].n128_f64[0];
      v10 = (v5 + v7);
      v11 = (v5 + v7 + 16);
      v12 = v4 - v5 - v7;
      v13 = v12 - 16;
      if (v11 != v4)
      {
        memmove(v10, v11, (v12 - 20));
      }

      v4 = &v13[v10];
      *(this + 1) = &v13[v10];
      if (v9 > a3)
      {
        return 0;
      }
    }

LABEL_11:
    v14 = *this;
    v15 = v4->n128_u64 - *this;
    if (v4[-1].n128_f64[0] <= a3)
    {
      if (v15 == 160)
      {
        *(this + 1) = --v4;
      }

      while (v14 < v4 && v14->n128_f64[0] > a3)
      {
        ++v14;
      }

      std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::insert(this, v14, &v17);
      return 1;
    }

    if (v15 <= 0x9F)
    {
      goto LABEL_13;
    }

    result = 1;
    *(this + 24) = 1;
  }

  return result;
}

__n128 *std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v31 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(a1, v14);
    }

    v28 = 0;
    v29 = 16 * v15;
    v30 = (16 * v15);
    std::__split_buffer<TSTWidthHeightCache_Private::WHCWidthBucket>::emplace_back<TSTWidthHeightCache_Private::WHCWidthBucket const&>(&v28, a3);
    v16 = v29;
    memcpy(v30, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v29;
    *&v30 = v30 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v30;
    *&v30 = v21;
    *(&v30 + 1) = v22;
    v28 = v21;
    v29 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 4);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    v25 = &a3[v24];
    v26 = v25->n128_u64[0];
    v4->n128_u32[2] = v25->n128_u32[2];
    v4->n128_u64[0] = v26;
  }

  return v4;
}

void sub_26C9D005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *TSTWidthHeightCache_Private::WHCCol::resetAfter(uint64_t **this, int a2)
{
  v3 = *this;
  v4 = this[1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN27TSTWidthHeightCache_Private6WHCCol10resetAfterEj_block_invoke;
  v6[3] = &__block_descriptor_36_e28_B16__0r__WHCWidthBucket_dI_8l;
  v7 = a2;
  result = std::remove_if[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCWidthBucket *>,BOOL({block_pointer})(TSTWidthHeightCache_Private::WHCWidthBucket const&)>(v3, v4, v6);
  if (result != this[1])
  {
    this[1] = result;
  }

  return result;
}

uint64_t *std::remove_if[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCWidthBucket *>,BOOL({block_pointer})(TSTWidthHeightCache_Private::WHCWidthBucket const&)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (((*(a3 + 16))(a3, v3) & 1) == 0)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        if (((*(a3 + 16))(a3, i) & 1) == 0)
        {
          v8 = *i;
          *(v3 + 2) = *(i + 2);
          *v3 = v8;
          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t TSTWidthHeightCache_Private::WHCCol::resetAll(uint64_t this)
{
  *(this + 8) = *this;
  *(this + 24) = 0;
  return this;
}

uint64_t *TSTWidthHeightCache_Private::WHCCol::removeRowDataInRange(uint64_t **this, int a2, int a3)
{
  result = *this;
  v6 = this[1];
  if (v6 != result)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN27TSTWidthHeightCache_Private6WHCCol20removeRowDataInRangeEjj_block_invoke;
    v8[3] = &__block_descriptor_40_e28_B16__0r__WHCWidthBucket_dI_8l;
    v9 = a2;
    v10 = a3;
    result = std::remove_if[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCWidthBucket *>,BOOL({block_pointer})(TSTWidthHeightCache_Private::WHCWidthBucket const&)>(result, v6, v8);
    if (result != this[1])
    {
      this[1] = result;
    }
  }

  return result;
}

unint64_t *TSTWidthHeightCache_Private::WHCCol::moveRowIds(unint64_t *this, unsigned int a2, int a3, unsigned int a4)
{
  v4 = a3 + a2;
  v5 = *this;
  v6 = this[1];
  if (a4 <= a2)
  {
    while (v5 < v6)
    {
      v11 = *(v5 + 8);
      if (v11 >= a2 && v11 < v4)
      {
        *(v5 + 8) = a4 - a2 + v11;
      }

      v5 += 16;
    }
  }

  else
  {
    for (; v5 < v6; v5 += 16)
    {
      v7 = *(v5 + 8);
      if (v7 < a2 || v7 >= v4)
      {
        if (v4 > v7 || v7 >= a4)
        {
          continue;
        }

        v10 = v7 - a3;
      }

      else
      {
        v10 = a4 - v4 + v7;
      }

      *(v5 + 8) = v10;
    }
  }

  return this;
}

uint64_t *TSTWidthHeightCache_Private::WHCCol::insertRows(uint64_t *this, int a2, int a3)
{
  v3 = *this;
  v4 = this[1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = ___ZN27TSTWidthHeightCache_Private6WHCCol10insertRowsEjj_block_invoke;
  v7 = &__block_descriptor_40_e27_v16__0__WHCWidthBucket_dI_8l;
  v8 = a3;
  v9 = a2;
  while (v3 != v4)
  {
    this = v6(v5, v3);
    v3 += 16;
  }

  return this;
}

uint64_t ___ZN27TSTWidthHeightCache_Private6WHCCol10insertRowsEjj_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(result + 32))
  {
    *(a2 + 8) = *(result + 36) + v2;
  }

  return result;
}

double TSTWidthHeightCache_Private::WHCRow::getMaxHeight(TSTWidthHeightCache_Private::WHCRow *this)
{
  v1 = *(this + 16);
  if (v1 != *(this + 17))
  {
    return *v1;
  }

  result = -1.0;
  if (!*(this + 160))
  {
    return 0.0;
  }

  return result;
}

uint64_t TSTWidthHeightCache_Private::WHCRow::setHeight(TSTWidthHeightCache_Private::WHCRow *this, unsigned int a2, double a3)
{
  v6 = TSTWidthHeightCache_NibArray::NibArray<8u>::get(this, a2);
  if ((v6 - 16) <= 0xFFFFFFFD)
  {
    v8 = *(this + 16);
    v7 = *(this + 17);
    if (v8 != v7)
    {
      v9 = *(this + 16);
      while (*(v9 + 8) != v6)
      {
        v9 += 16;
        v8 += 16;
        if (v9 == v7)
        {
          v8 = *(this + 17);
          break;
        }
      }
    }

    if (*v8 == a3)
    {
      return 1;
    }

    v10 = *(v8 + 9) - 1;
    *(v8 + 9) = v10;
    if (!v10)
    {
      v11 = *(v8 + 8);
      if (v11 >= 0xE)
      {
        goto LABEL_32;
      }

      *(this + 19) &= ~(1 << v11);
      v12 = v7 - (v8 + 16);
      if (v7 != v8 + 16)
      {
        memmove(v8, (v8 + 16), v12 - 6);
      }

      *(this + 17) = v8 + v12;
    }

    TSTWidthHeightCache_NibArray::NibArray<8u>::set(this, a2, 15);
  }

  v14 = *(this + 16);
  v13 = *(this + 17);
  if (v14 == v13)
  {
    if (!*(this + 160))
    {
      v18 = *(this + 18);
      *(this + 19) |= 1uLL;
      if (v14 >= v18)
      {
        v23 = v18 - v14;
        v24 = (v18 - v14) >> 3;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(this + 128, v25);
      }

      *v13 = a3;
      *(v13 + 8) = 256;
      *(this + 17) = v13 + 16;
      v15 = this;
      v16 = a2;
      v17 = 0;
      goto LABEL_43;
    }

    goto LABEL_27;
  }

  if (*(v13 - 16) <= a3)
  {
    if (v14 >= v13)
    {
      v19 = *(this + 16);
    }

    else
    {
      v19 = *(this + 16);
      while (v19->n128_f64[0] > a3)
      {
        if (++v19 >= v13)
        {
          goto LABEL_29;
        }
      }

      if (v19->n128_f64[0] == a3)
      {
        TSTWidthHeightCache_NibArray::NibArray<8u>::set(this, a2, v19->n128_i8[8]);
        ++v19->n128_u8[9];
        return 1;
      }

      if (v13 - v14 == 224)
      {
        TSTWidthHeightCache_NibArray::NibArray<8u>::setValueToValue(this, *(v13 - 8), 14, *(v13 - 7), 0x100u);
        v27 = *(this + 17);
        v28 = v27 - 16;
        if (v19 == (v27 - 16))
        {
          TSTWidthHeightCache_NibArray::NibArray<8u>::set(this, a2, v19->n128_i8[8]);
          v19->n128_f64[0] = a3;
          v20 = 1;
          v19->n128_u8[9] = 1;
          return v20;
        }

        v29 = *(v27 - 8);
        if (v29 >= 0xE)
        {
          goto LABEL_32;
        }

        *(this + 19) &= ~(1 << v29);
        *(this + 17) = v28;
      }
    }

LABEL_29:
    v21 = 0;
    v22 = *(this + 19);
    while ((v22 & (1 << v21)) != 0)
    {
      if (++v21 == 14)
      {
        goto LABEL_32;
      }
    }

    if (v21 < 0xE)
    {
      *(this + 19) = v22 | (1 << v21);
      v30.n128_f64[0] = a3;
      v30.n128_u8[8] = v21;
      v20 = 1;
      v30.n128_u8[9] = 1;
      std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::insert(this + 16, v19, &v30);
      TSTWidthHeightCache_NibArray::NibArray<8u>::set(this, a2, v21);
      return v20;
    }

LABEL_32:
    abort();
  }

  if (v13 - v14 == 224)
  {
    v15 = this;
    v16 = a2;
    v17 = 14;
LABEL_43:
    TSTWidthHeightCache_NibArray::NibArray<8u>::set(v15, v16, v17);
    return 1;
  }

  v19 = *(this + 17);
  if (!*(this + 160))
  {
    goto LABEL_29;
  }

LABEL_27:
  TSTWidthHeightCache_NibArray::NibArray<8u>::set(this, a2, 14);
  return 0;
}

uint64_t TSTWidthHeightCache_NibArray::NibArray<8u>::get(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a2 >= 0x100)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint8_t TSTWidthHeightCache_NibArray::NibArray<8>::get(uint) [log2NumElements = 8]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 58, @"getting an element past the end of the nibble array."}];
  }

  return (*(a1 + (v2 >> 1)) >> (4 * (v2 & 1))) & 0xF;
}

uint64_t TSTWidthHeightCache_NibArray::NibArray<8u>::set(uint64_t result, unsigned int a2, char a3)
{
  v4 = a2;
  v5 = result;
  if (a2 >= 0x100)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::set(uint, uint8_t) [log2NumElements = 8]"}];
    result = [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 50, @"setting an element past the end of the nibble array."}];
  }

  *(v5 + (v4 >> 1)) = (0xF0u >> (4 * (v4 & 1))) & *(v5 + (v4 >> 1)) | ((a3 & 0xF) << (4 * (v4 & 1)));
  return result;
}

uint64_t TSTWidthHeightCache_NibArray::NibArray<8u>::setValueToValue(uint64_t a1, int a2, char a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 0x101)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint TSTWidthHeightCache_NibArray::NibArray<8>::setValueToValue(uint8_t, uint8_t, uint, uint) [log2NumElements = 8]"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 96, @"hint exceeds array length"}];
    v9 = 256;
  }

  else
  {
    v9 = a5;
    if (!a5)
    {
      return 0;
    }
  }

  v10 = 0;
  v13 = 0;
  while (1)
  {
    if (TSTWidthHeightCache_NibArray::NibArray<8u>::get(a1, v13) == a2)
    {
      TSTWidthHeightCache_NibArray::NibArray<8u>::set(a1, v13, a3);
      v10 = (v10 + 1);
      if (v10 == a4)
      {
        break;
      }
    }

    if (v9 == ++v13)
    {
      return v10;
    }
  }

  return a4;
}

__n128 *std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v28 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(a1, v14);
    }

    v25 = 0;
    v26 = 16 * v15;
    v27 = (16 * v15);
    std::__split_buffer<TSTWidthHeightCache_Private::WHCHeightBucket>::emplace_back<TSTWidthHeightCache_Private::WHCHeightBucket>(&v25, a3);
    v16 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    v25 = v21;
    v26 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 6);
    }

    v23 = a3->n128_u64[0];
    v4->n128_u16[4] = a3->n128_u16[4];
    v4->n128_u64[0] = v23;
  }

  return v4;
}

void sub_26C9D0BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSTWidthHeightCache_Private::WHCRow::getNextInvalid(TSTWidthHeightCache_Private::WHCRow *this, uint64_t a2)
{
  if (a2 <= 0xFF)
  {
    v2 = 4 * a2;
    do
    {
      if (*(this + (a2 >> 1)) >> (v2 & 4) == 14)
      {
        break;
      }

      a2 = (a2 + 1);
      v2 += 4;
    }

    while (a2 != 256);
  }

  return a2;
}

void TSTWidthHeightCache_Private::WHCRow::resetAll(TSTWidthHeightCache_Private::WHCRow *this)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 6) = v2;
  *(this + 7) = v2;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 2) = v2;
  *(this + 3) = v2;
  *this = v2;
  *(this + 1) = v2;
  v3 = this + 152;
  v4 = 0;
  std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v3, 0xEuLL);
  *(this + 17) = *(this + 16);
  *(this + 160) = 0;
}

uint64_t TSTWidthHeightCache_Private::WHCRow::resetAfter(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    v4 = this;
    while (1)
    {
      v5 = a2;
      this = TSTWidthHeightCache_NibArray::NibArray<8u>::get(v4, a2);
      if (this == 14)
      {
        goto LABEL_15;
      }

      if (this != 15)
      {
        break;
      }

LABEL_16:
      LOBYTE(a2) = v5 + 1;
      if (a3 < (v5 + 1))
      {
        return this;
      }
    }

    v7 = v4[16];
    v6 = v4[17];
    if (v7 != v6)
    {
      v8 = v4[16];
      while (v8[8] != this)
      {
        v8 += 16;
        v7 += 16;
        if (v8 == v6)
        {
          v7 = v4[17];
          break;
        }
      }
    }

    v9 = v7[9] - 1;
    v7[9] = v9;
    if (!v9)
    {
      if (this >= 0xE)
      {
        abort();
      }

      v4[19] &= ~(1 << this);
      v10 = v6 - (v7 + 16);
      if (v6 != v7 + 16)
      {
        memmove(v7, v7 + 16, v10 - 6);
      }

      v4[17] = &v7[v10];
    }

LABEL_15:
    this = TSTWidthHeightCache_NibArray::NibArray<8u>::set(v4, v5, 15);
    goto LABEL_16;
  }

  return this;
}

uint64_t TSTWidthHeightCache_Private::WHCRow::resetColDataInRange(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    while (1)
    {
      this = TSTWidthHeightCache_NibArray::NibArray<8u>::get(v5, v4);
      if (this == 14)
      {
        goto LABEL_15;
      }

      if (this != 15)
      {
        break;
      }

LABEL_16:
      if (++v4 == a3)
      {
        return this;
      }
    }

    v7 = v5[16];
    v6 = v5[17];
    if (v7 != v6)
    {
      v8 = v5[16];
      while (v8[8] != this)
      {
        v8 += 16;
        v7 += 16;
        if (v8 == v6)
        {
          v7 = v5[17];
          break;
        }
      }
    }

    v9 = v7[9] - 1;
    v7[9] = v9;
    if (!v9)
    {
      if (this >= 0xE)
      {
        abort();
      }

      v5[19] &= ~(1 << this);
      v10 = v6 - (v7 + 16);
      if (v6 != v7 + 16)
      {
        memmove(v7, v7 + 16, v10 - 6);
      }

      v5[17] = &v7[v10];
    }

LABEL_15:
    this = TSTWidthHeightCache_NibArray::NibArray<8u>::set(v5, v4, 15);
    goto LABEL_16;
  }

  return this;
}

void *TSTWidthHeightCache_NibArray::NibArray<8u>::move(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v9 = a1;
  v37[1] = *MEMORY[0x277D85DE8];
  if (a2 >= 0x100)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::move(uint, uint, uint, uint) [log2NumElements = 8]"}];
    a1 = [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 130, @"src begin index exceeds array "}];
  }

  if (a3 >= 0x100)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::move(uint, uint, uint, uint) [log2NumElements = 8]"}];
    a1 = [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 133, @"src end index exceeds array"}];
  }

  v14 = v8;
  v15 = a3;
  if (a5 >= 0x101)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::move(uint, uint, uint, uint) [log2NumElements = 8]"}];
    a1 = [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 136, @"hint exceeds array length"}];
  }

  if (a5 >= 0x100)
  {
    v18 = 256;
  }

  else
  {
    v18 = a5;
  }

  v19 = v15 - v14;
  if (v19 + a4 >= 0x101)
  {
    v29 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::move(uint, uint, uint, uint) [log2NumElements = 8]"}];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"];

    return [v29 handleFailureInFunction:v30 file:v31 lineNumber:139 description:@"end of destination exceeds array length"];
  }

  else
  {
    v37[0] = v37;
    v20 = MEMORY[0x28223BE20](a1);
    v21 = v37 - ((v18 + 15) & 0x1FFFFFFF0);
    MEMORY[0x28223BE20](v20);
    v23 = v37 - v22;
    if (a5)
    {
      v24 = 0;
      v25 = v21 + 1;
      v26 = v9;
      do
      {
        v27 = *v26++;
        *(v25 - 1) = v27 & 0xF;
        *v25 = v27 >> 4;
        v25 += 2;
        v24 += 2;
      }

      while (v24 < v18);
    }

    memcpy(v23, &v21[v14], v15 - v14);
    if (a4 <= v15)
    {
      v28 = a4;
      memmove(&v21[a4 + v19], &v21[a4], v14 - a4);
    }

    else
    {
      memmove(&v21[v14], &v21[v15], a4 - v15);
      v28 = a4 - v19;
    }

    result = memcpy(&v21[v28], v23, v15 - v14);
    if (a5)
    {
      if (v18 <= 2)
      {
        v33 = 2;
      }

      else
      {
        v33 = v18;
      }

      v34 = v33 - 1;
      v35 = v21 + 1;
      v36 = (v34 & 0xFFFFFFFE) + 2;
      do
      {
        *v9++ = *(v35 - 1) | (16 * *v35);
        v35 += 2;
        v36 -= 2;
      }

      while (v36);
    }
  }

  return result;
}

uint64_t TSTWidthHeightCache_NibArray::NibArray<8u>::insert(uint64_t result, int a2, unsigned int a3, char a4)
{
  v7 = result;
  v8 = a3 + a2;
  if (a3 + a2 > 0xFF)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::insert(uint, uint, uint8_t) [log2NumElements = 8]"}];
    result = [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 184, @"destination exceeds array bounds"}];
    if (!a2)
    {
      return result;
    }

    v8 = 256;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    if ((v8 ^ a3))
    {
      v11 = 255;
      v12 = 255 - a2;
      do
      {
        v13 = TSTWidthHeightCache_NibArray::NibArray<8u>::get(v7, v12);
        TSTWidthHeightCache_NibArray::NibArray<8u>::set(v7, v11--, v13);
        --v12;
      }

      while (v11 >= v8);
    }

    else
    {
      memmove((result + (v8 >> 1)), (result + (a3 >> 1)), (256 - v8) >> 1);
    }
  }

  return TSTWidthHeightCache_NibArray::NibArray<8u>::setRange(v7, a3, v8, a4);
}

void *std::vector<TSTWidthHeightCache_Private::WHCCol>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_26C9D1478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<TSTWidthHeightCache_Private::WHCCol>::__append(a1, v5);
  }
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<TSTWidthHeightCache_Private::WHCRow>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 168 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 40);
      if (v8)
      {
        *(v3 - 32) = v8;
        operator delete(v8);
      }

      v3 -= 168;
    }

    a1[1] = v7;
  }
}

uint64_t std::vector<TSTWidthHeightCache_Private::WHCCol>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v12, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      v8 = *(a1 + 8);
      do
      {
        v10 = *(v8 - 32);
        v8 -= 32;
        v9 = v10;
        if (v10)
        {
          *(v7 - 24) = v9;
          operator delete(v9);
        }

        v7 = v8;
      }

      while (v8 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t std::vector<TSTWidthHeightCache_Private::WHCRow>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v18 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        v10 = v7 + v8;
        v11 = *(v9 + v8);
        v12 = *(v9 + v8 + 16);
        v13 = *(v9 + v8 + 48);
        *(v10 + 32) = *(v9 + v8 + 32);
        *(v10 + 48) = v13;
        *v10 = v11;
        *(v10 + 16) = v12;
        v14 = *(v9 + v8 + 64);
        v15 = *(v9 + v8 + 80);
        v16 = *(v9 + v8 + 112);
        *(v10 + 96) = *(v9 + v8 + 96);
        *(v10 + 112) = v16;
        *(v10 + 64) = v14;
        *(v10 + 80) = v15;
        std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__move_assign(v7 + v8 + 128, (v9 + v8 + 128));
        v17 = *(v9 + v8 + 152);
        *(v10 + 160) = *(v9 + v8 + 160);
        *(v10 + 152) = v17;
        v7 += 168;
        v9 += 168;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v18 = v7 - v6;
    }

    while (v5 != v18)
    {
      v19 = *(v5 - 40);
      if (v19)
      {
        *(v5 - 32) = v19;
        operator delete(v19);
      }

      v5 -= 168;
    }

    a1[1] = v18;
  }

  return a2;
}

void sub_26C9D2024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::vector<TSTWidthHeightCache_Private::WHCCol>::insert(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v9 = a1[1];
    v8 = a1[2];
    if (a3 <= (v8 - v9) >> 5)
    {
      v15 = v9 - a2;
      v16 = a3;
      if (a3 <= (v9 - a2) >> 5)
      {
        goto LABEL_15;
      }

      v16 = v15 >> 5;
      v17 = v9 + 32 * (a3 - (v15 >> 5));
      v18 = 32 * a3 - 32 * (v15 >> 5);
      v19 = a1[1];
      do
      {
        std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](v19, a4);
        *(v19 + 24) = *(a4 + 24);
        v19 += 32;
        v18 -= 32;
      }

      while (v18);
      a1[1] = v17;
      if (v9 != v4)
      {
LABEL_15:
        std::vector<TSTWidthHeightCache_Private::WHCCol>::__move_range(a1, v4, v9, v4 + 32 * a3);
        if (v4 <= a4)
        {
          if (a1[1] <= a4)
          {
            v20 = 0;
          }

          else
          {
            v20 = a3;
          }

          a4 += 32 * v20;
        }

        v21 = v4;
        do
        {
          if (v21 != a4)
          {
            std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCWidthBucket*,TSTWidthHeightCache_Private::WHCWidthBucket*>(v21, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
          }

          *(v21 + 24) = *(a4 + 24);
          v21 += 32;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + ((v9 - *a1) >> 5);
      if (v11 >> 59)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = a2 - v10;
      v13 = v8 - v10;
      if (v13 >> 4 > v11)
      {
        v11 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v29 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>>(a1, v14);
      }

      v22 = 32 * (v12 >> 5);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 32 * a3;
      v24 = v22 + 32 * a3;
      do
      {
        std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](v22, a4);
        *(v22 + 24) = *(a4 + 24);
        v22 += 32;
        v23 -= 32;
      }

      while (v23);
      v27 = v24;
      v4 = std::vector<TSTWidthHeightCache_Private::WHCCol>::__swap_out_circular_buffer(a1, v26, v4);
      std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(v26);
    }
  }

  return v4;
}

void sub_26C9D2214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<double>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_26CA639B0)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_26CA639B0)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 2;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_26CA639B0)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

void sub_26C9D2670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::vector<TSTWidthHeightCache_Private::WHCRow>::insert(void *a1, __int128 *a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v9 = a1[1];
    v8 = a1[2];
    if (0xCF3CF3CF3CF3CF3DLL * ((v8 - v9) >> 3) >= a3)
    {
      v15 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - a2) >> 3);
      v16 = a3;
      if (a3 <= v15)
      {
        goto LABEL_15;
      }

      v16 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - a2) >> 3);
      v17 = v9 + 168 * (a3 - v15);
      v18 = 168 * a3 - 8 * ((v9 - a2) >> 3);
      v19 = a1[1];
      do
      {
        v20 = *a4;
        v21 = *(a4 + 16);
        v22 = *(a4 + 48);
        *(v19 + 32) = *(a4 + 32);
        *(v19 + 48) = v22;
        *v19 = v20;
        *(v19 + 16) = v21;
        v23 = *(a4 + 64);
        v24 = *(a4 + 80);
        v25 = *(a4 + 112);
        *(v19 + 96) = *(a4 + 96);
        *(v19 + 112) = v25;
        *(v19 + 64) = v23;
        *(v19 + 80) = v24;
        std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::vector[abi:nn200100]((v19 + 128), (a4 + 128));
        v26 = *(a4 + 152);
        *(v19 + 160) = *(a4 + 160);
        *(v19 + 152) = v26;
        v19 += 168;
        v18 -= 168;
      }

      while (v18);
      a1[1] = v17;
      if (v9 != v4)
      {
LABEL_15:
        std::vector<TSTWidthHeightCache_Private::WHCRow>::__move_range(a1, v4, v9, v4 + 168 * a3);
        if (v4 <= a4)
        {
          if (a1[1] <= a4)
          {
            v27 = 0;
          }

          else
          {
            v27 = a3;
          }

          a4 += 168 * v27;
        }

        v28 = v4 + 8;
        do
        {
          v29 = *a4;
          v30 = *(a4 + 16);
          v31 = *(a4 + 48);
          *(v28 - 6) = *(a4 + 32);
          *(v28 - 5) = v31;
          *(v28 - 8) = v29;
          *(v28 - 7) = v30;
          v32 = *(a4 + 64);
          v33 = *(a4 + 80);
          v34 = *(a4 + 112);
          *(v28 - 2) = *(a4 + 96);
          *(v28 - 1) = v34;
          *(v28 - 4) = v32;
          *(v28 - 3) = v33;
          if (v28 - 8 != a4)
          {
            std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCHeightBucket*,TSTWidthHeightCache_Private::WHCHeightBucket*>(v28, *(a4 + 128), *(a4 + 136), (*(a4 + 136) - *(a4 + 128)) >> 4);
          }

          v35 = *(a4 + 152);
          *(v28 + 32) = *(a4 + 160);
          *(v28 + 3) = v35;
          v28 = (v28 + 168);
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 - 0x30C30C30C30C30C3 * ((v9 - *a1) >> 3);
      if (v11 > 0x186186186186186)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = a2 - v10;
      v13 = 0xCF3CF3CF3CF3CF3DLL * ((v8 - v10) >> 3);
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v11;
      }

      v50 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>>(a1, v14);
      }

      v36 = 8 * (v12 >> 3);
      v47[0] = 0;
      v47[1] = v36;
      v48 = v36;
      v49 = 0;
      v37 = 168 * a3;
      v38 = v36 + 168 * a3;
      do
      {
        v39 = *a4;
        v40 = *(a4 + 16);
        v41 = *(a4 + 48);
        *(v36 + 32) = *(a4 + 32);
        *(v36 + 48) = v41;
        *v36 = v39;
        *(v36 + 16) = v40;
        v42 = *(a4 + 64);
        v43 = *(a4 + 80);
        v44 = *(a4 + 112);
        *(v36 + 96) = *(a4 + 96);
        *(v36 + 112) = v44;
        *(v36 + 64) = v42;
        *(v36 + 80) = v43;
        std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::vector[abi:nn200100]((v36 + 128), (a4 + 128));
        v45 = *(a4 + 152);
        *(v36 + 160) = *(a4 + 160);
        *(v36 + 152) = v45;
        v36 += 168;
        v37 -= 168;
      }

      while (v37);
      v48 = v38;
      v4 = std::vector<TSTWidthHeightCache_Private::WHCRow>::__swap_out_circular_buffer(a1, v47, v4);
      std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(v47);
    }
  }

  return v4;
}

void sub_26C9D2938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_26C9D2B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<TSTWidthHeightCache_Private::WHCRow>::__destroy_vector::operator()[abi:nn200100](&a14);
  _Unwind_Resume(a1);
}

void sub_26C9D2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a12;
  std::vector<TSTWidthHeightCache_Private::WHCCol>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

void *std::vector<TSTWidthHeightCache_Private::WHCRow>::reserve(void *result, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x186186186186187)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_26C9D3E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

__n128 std::__split_buffer<TSTWidthHeightCache_Private::WHCWidthBucket>::emplace_back<TSTWidthHeightCache_Private::WHCWidthBucket const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v10 - 4);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

__n128 std::__split_buffer<TSTWidthHeightCache_Private::WHCHeightBucket>::emplace_back<TSTWidthHeightCache_Private::WHCHeightBucket>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v10 - 6);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

uint64_t TSTWidthHeightCache_NibArray::NibArray<8u>::setRange(uint64_t result, unsigned int a2, unsigned int a3, char a4)
{
  LOBYTE(v6) = a2;
  v7 = result;
  if (a2 >= 0x100)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::setRange(uint, uint, uint8_t) [log2NumElements = 8]"}];
    result = [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 78, @"begin exceeds array length"}];
  }

  v6 = v6;
  if (a3 >= 0x101)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTWidthHeightCache_NibArray::NibArray<8>::setRange(uint, uint, uint8_t) [log2NumElements = 8]"}];
    result = [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTWidthHeightCache_NibArray.h"), 81, @"end exceeds array length"}];
  }

  if (a3 >= 0x100)
  {
    v12 = 256;
  }

  else
  {
    v12 = a3;
  }

  if (v6 < a3)
  {
    do
    {
      result = TSTWidthHeightCache_NibArray::NibArray<8u>::set(v7, v6++, a4);
    }

    while (v6 < v12);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>,TSTWidthHeightCache_Private::WHCCol*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](a4, v7);
      *(v8 + 24) = *(v7 + 24);
      v7 += 32;
      a4 = v8 + 4;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v9 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v9;
        operator delete(v9);
      }

      v6 += 32;
    }
  }
}

void *std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_TSWPCharIndexAndAffinity>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t *std::vector<TSTWidthHeightCache_Private::WHCCol>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>>(result, v10);
    }

    v13 = 32 * v8;
    v20 = 0;
    v21 = 32 * v8;
    *(&v22 + 1) = 0;
    v14 = 32 * a2;
    v15 = 32 * v8;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    *&v22 = v13 + 32 * a2;
    v16 = result[1];
    v17 = (v13 + *result - v16);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>,TSTWidthHeightCache_Private::WHCCol*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(&v20);
  }

  return result;
}

void sub_26C9D4744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCCol>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3) >= a2)
  {

    std::vector<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0xCF3CF3CF3CF3CF3DLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x186186186186186)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xC30C30C30C30C3)
    {
      v9 = 0x186186186186186;
    }

    else
    {
      v9 = v8;
    }

    v17 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>>(a1, v9);
    }

    v14 = 0;
    v15 = 168 * v6;
    v16 = 168 * v6;
    std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end(&v14, a2);
    v10 = *(a1 + 8);
    v11 = v15 + *a1 - v10;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>,TSTWidthHeightCache_Private::WHCRow*>(a1, *a1, v10, v11);
    v12 = *a1;
    *a1 = v11;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(&v14);
  }
}

void sub_26C9D48B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v3 + 168 * a2;
    v5 = v3 + 152;
    v6 = 168 * a2;
    do
    {
      *(v5 + 8) = 0;
      *(v5 - 8) = 0u;
      *(v5 - 24) = 0u;
      *&v7 = -1;
      *(&v7 + 1) = -1;
      *(v5 - 152) = v7;
      *(v5 - 136) = v7;
      *(v5 - 120) = v7;
      *(v5 - 104) = v7;
      *(v5 - 88) = v7;
      *(v5 - 72) = v7;
      *(v5 - 56) = v7;
      *(v5 - 40) = v7;
      v8 = v5;
      v9 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v8, 0xEuLL);
      v5 += 168;
      v6 -= 168;
    }

    while (v6);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4;
}

void std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = v3 + 168 * a2;
    v5 = v3 + 152;
    v6 = 168 * a2;
    do
    {
      *(v5 + 8) = 0;
      *(v5 - 8) = 0u;
      *(v5 - 24) = 0u;
      *&v7 = -1;
      *(&v7 + 1) = -1;
      *(v5 - 152) = v7;
      *(v5 - 136) = v7;
      *(v5 - 120) = v7;
      *(v5 - 104) = v7;
      *(v5 - 88) = v7;
      *(v5 - 72) = v7;
      *(v5 - 56) = v7;
      *(v5 - 40) = v7;
      v8 = v5;
      v9 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<1ul,14ul>>(&v8, 0xEuLL);
      v5 += 168;
      v6 -= 168;
    }

    while (v6);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  *(a1 + 16) = v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>,TSTWidthHeightCache_Private::WHCRow*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(a4 + 32) = v6[2];
      *(a4 + 48) = v9;
      *a4 = v7;
      *(a4 + 16) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      *(a4 + 96) = v6[6];
      *(a4 + 112) = v12;
      *(a4 + 64) = v10;
      *(a4 + 80) = v11;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = 0;
      *(a4 + 128) = v6[8];
      *(a4 + 144) = *(v6 + 18);
      *(v6 + 16) = 0;
      *(v6 + 17) = 0;
      *(v6 + 18) = 0;
      v13 = *(v6 + 19);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 152) = v13;
      v6 = (v6 + 168);
      a4 += 168;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v14 = *(v5 + 16);
      if (v14)
      {
        *(v5 + 17) = v14;
        operator delete(v14);
      }

      v5 = (v5 + 168);
    }
  }
}

uint64_t std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TSTWidthHeightCache_Private::WHCRow>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 168;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 168;
    }
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCWidthBucket*,TSTWidthHeightCache_Private::WHCWidthBucket*>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCWidthBucket*,TSTWidthHeightCache_Private::WHCWidthBucket*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 4);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 4);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 4);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

__n128 std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::vector<TSTWidthHeightCache_Private::WHCCol>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](v8, v10);
      *(v8 + 24) = *(v10 + 24);
      v10 += 32;
      v8 += 32;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v12, a2, v7, v6);
}

uint64_t std::vector<TSTWidthHeightCache_Private::WHCCol>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>,TSTWidthHeightCache_Private::WHCCol*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>,TSTWidthHeightCache_Private::WHCCol*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      if (v7 != a4)
      {
        std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCWidthBucket*,TSTWidthHeightCache_Private::WHCWidthBucket*>((a4 - 32), *(v7 - 32), *(v7 - 24), (*(v7 - 24) - *(v7 - 32)) >> 4);
      }

      *(a4 - 8) = *(v7 - 8);
      v7 -= 32;
      a4 -= 32;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v10 = v6[3];
      *(v7 + 32) = v6[2];
      *(v7 + 48) = v10;
      *v7 = v8;
      *(v7 + 16) = v9;
      v11 = v6[4];
      v12 = v6[5];
      v13 = v6[7];
      *(v7 + 96) = v6[6];
      *(v7 + 112) = v13;
      *(v7 + 64) = v11;
      *(v7 + 80) = v12;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      *(v7 + 128) = v6[8];
      *(v7 + 144) = *(v6 + 18);
      *(v6 + 16) = 0;
      *(v6 + 17) = 0;
      *(v6 + 18) = 0;
      v14 = *(v6 + 19);
      *(v7 + 160) = *(v6 + 160);
      *(v7 + 152) = v14;
      v6 = (v6 + 168);
      v7 += 168;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v15 = 0;
    v16 = a4 - v4;
    do
    {
      v17 = v4 + v15;
      v18 = *(v5 + v15 - 168);
      v19 = *(v5 + v15 - 152);
      v20 = *(v5 + v15 - 136);
      *(v17 - 120) = *(v5 + v15 - 120);
      *(v17 - 136) = v20;
      *(v17 - 152) = v19;
      *(v17 - 168) = v18;
      v21 = *(v5 + v15 - 104);
      v22 = *(v5 + v15 - 88);
      v23 = *(v5 + v15 - 72);
      *(v17 - 56) = *(v5 + v15 - 56);
      *(v17 - 72) = v23;
      *(v17 - 88) = v22;
      *(v17 - 104) = v21;
      std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__move_assign(v4 + v15 - 40, (v5 + v15 - 40));
      v24 = *(v5 + v15 - 16);
      *(v17 - 8) = *(v5 + v15 - 8);
      *(v17 - 16) = v24;
      v15 -= 168;
    }

    while (v16 != v15);
  }
}

uint64_t std::vector<TSTWidthHeightCache_Private::WHCRow>::__swap_out_circular_buffer(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>,TSTWidthHeightCache_Private::WHCRow*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>,TSTWidthHeightCache_Private::WHCRow*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void *std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,unsigned short>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCHeightBucket*,TSTWidthHeightCache_Private::WHCHeightBucket*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 6);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 6);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 6);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 168)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__assign_with_size[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::__vdeallocate(a1);
    if (a4 <= 0x186186186186186)
    {
      v9 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
      {
        v10 = 0x186186186186186;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TSTWidthHeightCache_Private::WHCRow>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1] - v8;
  if (0xCF3CF3CF3CF3CF3DLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 40);
        if (v15)
        {
          *(v14 - 32) = v15;
          operator delete(v15);
        }

        v14 -= 168;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(&v16, a2, v11 + a2, v8);
    std::vector<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end<std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>>(a1, v11 + a2, a3);
  }
}

void *std::vector<TSTWidthHeightCache_Private::WHCRow>::__construct_at_end<std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCRow*>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == a3)
  {
    v4 = result[1];
  }

  else
  {
    v6 = a2 + 128;
    v4 = result[1];
    do
    {
      v7 = *(v6 - 128);
      v8 = *(v6 - 112);
      v9 = *(v6 - 80);
      *(v4 + 32) = *(v6 - 96);
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = *(v6 - 64);
      v11 = *(v6 - 48);
      v12 = *(v6 - 16);
      *(v4 + 96) = *(v6 - 32);
      *(v4 + 112) = v12;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      result = std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::vector[abi:nn200100]((v4 + 128), v6);
      v13 = v6 - 128;
      v14 = *(v6 + 24);
      *(v4 + 160) = *(v6 + 32);
      *(v4 + 152) = v14;
      v4 += 168;
      v6 += 168;
    }

    while (v13 + 168 != a3);
  }

  v3[1] = v4;
  return result;
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<TSTWidthHeightCache_Private::WHCRow>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<TSTWidthHeightCache_Private::WHCRow>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCRow>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 136;
    do
    {
      v8 = v7 - 136;
      v9 = *(v7 - 136);
      v10 = *(v7 - 120);
      v11 = *(v7 - 88);
      *(a4 + 32) = *(v7 - 104);
      *(a4 + 48) = v11;
      *a4 = v9;
      *(a4 + 16) = v10;
      v12 = *(v7 - 72);
      v13 = *(v7 - 56);
      v14 = *(v7 - 24);
      *(a4 + 96) = *(v7 - 40);
      *(a4 + 112) = v14;
      *(a4 + 64) = v12;
      *(a4 + 80) = v13;
      if (a4 != v7 - 136)
      {
        std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCHeightBucket*,TSTWidthHeightCache_Private::WHCHeightBucket*>((a4 + 128), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 4);
      }

      v15 = *(v7 + 16);
      *(a4 + 160) = *(v7 + 24);
      *(a4 + 152) = v15;
      a4 += 168;
      v7 += 168;
    }

    while (v8 + 168 != a3);
    return a3;
  }

  return result;
}

uint64_t std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *,TSTWidthHeightCache_Private::WHCRow *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 168);
      v9 = *(v7 - 152);
      v10 = *(v7 - 136);
      *(a4 - 120) = *(v7 - 120);
      *(a4 - 136) = v10;
      *(a4 - 152) = v9;
      *(a4 - 168) = v8;
      v11 = *(v7 - 104);
      v12 = *(v7 - 88);
      v13 = *(v7 - 72);
      *(a4 - 56) = *(v7 - 56);
      *(a4 - 72) = v13;
      *(a4 - 88) = v12;
      *(a4 - 104) = v11;
      if (a4 != v7)
      {
        std::vector<TSTWidthHeightCache_Private::WHCHeightBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCHeightBucket*,TSTWidthHeightCache_Private::WHCHeightBucket*>((a4 - 40), *(v7 - 40), *(v7 - 32), (*(v7 - 32) - *(v7 - 40)) >> 4);
      }

      v14 = *(v7 - 16);
      *(a4 - 8) = *(v7 - 8);
      *(a4 - 16) = v14;
      v7 -= 168;
      a4 -= 168;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::__assign_with_size[abi:nn200100]<std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<TSTWidthHeightCache_Private::WHCCol>::__vallocate[abi:nn200100](a1, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(&v19, a2, v12 + a2, v8);
    std::vector<TSTWidthHeightCache_Private::WHCCol>::__construct_at_end<std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>>(a1, v12 + a2, a3);
  }
}

void *std::vector<TSTWidthHeightCache_Private::WHCCol>::__construct_at_end<std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>,std::__wrap_iter<TSTWidthHeightCache_Private::WHCCol*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    v6 = a2;
    result = *(a1 + 8);
    do
    {
      v7 = std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::vector[abi:nn200100](result, v6);
      *(v7 + 24) = *(v6 + 24);
      v6 += 32;
      result = v7 + 4;
    }

    while (v6 != a3);
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<TSTWidthHeightCache_Private::WHCCol>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<TSTWidthHeightCache_Private::WHCCol>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSTWidthHeightCache_Private::WHCCol>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__copy_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *,TSTWidthHeightCache_Private::WHCCol *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      if (a4 != v7)
      {
        std::vector<TSTWidthHeightCache_Private::WHCWidthBucket>::__assign_with_size[abi:nn200100]<TSTWidthHeightCache_Private::WHCWidthBucket*,TSTWidthHeightCache_Private::WHCWidthBucket*>((a4 - 32), *(v7 - 32), *(v7 - 24), (*(v7 - 24) - *(v7 - 32)) >> 4);
      }

      *(a4 - 8) = *(v7 - 8);
      v7 -= 32;
      a4 -= 32;
    }

    while (v7 != a2);
  }

  return a3;
}

void TSTEditingStateSetSelection(TSTEditingState *a1, TSTTableSelection *a2)
{
  [(TSPObject *)a1 willModify];
  mSelection = a1->mSelection;
  if (mSelection != a2)
  {

    a1->mSelection = [(TSTTableSelection *)a2 copy];
    [(TSTEditingState *)a1 setSearchReference:0];
  }

  a1->mSelectionReflectingEditingState = 0;
}

TSTTableSelection *TSTEditingStateGetSelection(TSTEditingState *a1, int a2)
{
  v4 = [(TSTEditingState *)a1 tableModel];
  if ((a2 & 1) == 0)
  {
    v10 = 80;
    return *(&a1->super.super.isa + v10);
  }

  v5 = v4;
  if (a1->mSelectionReflectingEditingState && ![(TSTEditingState *)a1 editingMode])
  {
    v11 = [(TSTTableSelection *)a1->mSelectionReflectingEditingState cellRegion];
    if (![(TSTCellRegion *)v11 isRectangle]|| (v12 = [(TSTCellRegion *)v11 boundingCellRange], (([(TSTTableModel *)v5 range]^ v12) & 0xFFFFFFFF00FFFFFFLL) != 0))
    {

      result = [[TSTTableSelection alloc] initWithTableModel:v5 selectionType:5];
      a1->mSelectionReflectingEditingState = result;
      return result;
    }

    goto LABEL_32;
  }

  result = a1->mSelection;
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (!v7)
  {
    if (!a1->mSelectionReflectingEditingState)
    {
      v8 = [(TSTEditingState *)a1 editingMode];
      if (v8 <= 2)
      {
        if (!v8)
        {
          v9 = [[TSTTableSelection alloc] initWithTableModel:v5 selectionType:5];
          goto LABEL_31;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || !a1->mSelection)
          {
            goto LABEL_32;
          }

          v9 = [[TSTTableSelection alloc] initWithTableModel:v5 startingColumnIndex:([(TSTCellRegion *)[(TSTTableSelection *)a1->mSelection cellRegion] boundingCellRange]>> 16) numberOfColumns:([(TSTCellRegion *)[(TSTTableSelection *)a1->mSelection cellRegion] boundingCellRange]>> 32)];
          goto LABEL_31;
        }

        if (a1->mSelection)
        {
          v9 = [[TSTTableSelection alloc] initWithTableModel:v5 startingRowIndex:[(TSTCellRegion *)[(TSTTableSelection *)a1->mSelection cellRegion] boundingCellRange] numberOfRows:[(TSTCellRegion *)[(TSTTableSelection *)a1->mSelection cellRegion] boundingCellRange]>> 48];
          goto LABEL_31;
        }
      }

      else if (v8 <= 9)
      {
        if (((1 << v8) & 0x38) == 0)
        {
          if (((1 << v8) & 0x180) != 0)
          {
            v9 = [[TSTTableSelection alloc] initWithTableModel:v5 andCellRange:0xFFFFFFLL];
          }

          else
          {
            if (((1 << v8) & 0x240) == 0 || !a1->mSelection)
            {
              goto LABEL_32;
            }

            v9 = [[TSTTableSelection alloc] initWithTableModel:v5 andCellID:[(TSTCellRegion *)[(TSTTableSelection *)a1->mSelection cellRegion] upperLeftCellID]];
          }

          goto LABEL_31;
        }

        if (a1->mSelection)
        {
          v9 = [[TSTTableSelection alloc] initWithTableModel:v5 cellRegion:[(TSTTableSelection *)a1->mSelection cellRegion] anchorCellID:[(TSTTableSelection *)a1->mSelection anchorCellID] cursorCellID:[(TSTTableSelection *)a1->mSelection cursorCellID]];
LABEL_31:
          a1->mSelectionReflectingEditingState = v9;
        }
      }
    }

LABEL_32:
    v10 = 88;
    return *(&a1->super.super.isa + v10);
  }

  return result;
}

unint64_t TSTAnimationSetKind(uint64_t a1, int a2)
{
  *(a1 + 16) = a2;
  result = TSTAnimationGetStageCountForChunkStyle([*(a1 + 8) tableModel], a2);
  *(a1 + 60) = 0;
  v5 = (a1 + 60);
  *(a1 + 40) = result;
  *(a1 + 57) = 0;
  v6 = (a1 + 57);
  *(a1 + 48) = 0;
  *(a1 + 56) = result < 2;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0x10000;
  v7 = (a1 + 58);
  v8 = (a1 + 59);
  switch(a2)
  {
    case 2:
      goto LABEL_17;
    case 3:
      *v6 = 1;
      goto LABEL_12;
    case 4:
      v6 = (a1 + 58);
      goto LABEL_17;
    case 5:
      *v7 = 1;
      goto LABEL_12;
    case 6:
      v6 = (a1 + 59);
      goto LABEL_17;
    case 7:
      *v8 = 1;
      goto LABEL_12;
    case 8:
      *v6 = 1;
      goto LABEL_16;
    case 9:
      *v6 = 1;
      *v5 = 1;
      goto LABEL_12;
    case 10:
      *v7 = 1;
      goto LABEL_16;
    case 11:
      *v7 = 1;
      goto LABEL_7;
    case 12:
      *v8 = 1;
LABEL_16:
      v6 = (a1 + 60);
      goto LABEL_17;
    case 13:
      *v8 = 1;
LABEL_7:
      *v5 = 1;
LABEL_12:
      v6 = (a1 + 63);
      goto LABEL_17;
    case 14:
      v6 = (a1 + 61);
LABEL_17:
      *v6 = 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TSTAnimationGetStageCountForChunkStyle(TSTTableModel *a1, int a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 14:
      return 1;
    case 2:
    case 3:

      return TSTAnimationGetNumberOfColumns(a1);
    case 4:
    case 5:

      return TSTAnimationGetNumberOfRows(a1);
    case 6:
    case 7:

      return TSTAnimationGetNumberOfCells(a1);
    case 8:
    case 9:
      NumberOfColumns = TSTAnimationGetNumberOfColumns(a1);
      goto LABEL_15;
    case 10:
    case 11:
      NumberOfColumns = TSTAnimationGetNumberOfRows(a1);
      goto LABEL_15;
    case 12:
    case 13:
      NumberOfColumns = TSTAnimationGetNumberOfCells(a1);
LABEL_15:
      result = NumberOfColumns + 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t TSTAnimationAddCellRangesForColumnIndex(TSTAnimation *a1, TSTTableModel *a2, uint64_t a3)
{
  v5 = [(TSTTableModel *)a2 numberOfColumns];
  v6 = [(TSTTableModel *)a2 numberOfRows];
  v7 = v6;
  v44 = v5;
  if (!v5)
  {
    v40 = 0;
    v20 = -1;
    v42 = -1;
    if (!v6)
    {
      goto LABEL_63;
    }

LABEL_26:
    v21 = v40 >> 24;
    v23 = (v40 & 0xFFFF00) == 0 || v21 == 0;
    v24 = (v20 << 16) + 0x1000100000000;
    v25 = 0xFFFFFFLL;
    v26 = (v42 + v21 - 1);
    v27 = 0xFFFFFFLL;
    while (1)
    {
      v28 = TSTTableExpandCellRangeToCoverMergedCells(a2, v24);
      v29 = v28;
      if (v28 == 0xFFFF || (v28 & 0xFF0000) == 0xFF0000 || !HIWORD(v28) || (v28 & 0xFFFF00000000) == 0)
      {
        if (v27 == 0xFFFF)
        {
          v27 = v24;
        }

        else
        {
          v31 = v27 & 0xFF0000;
          v32 = (v27 & 0xFFFF00000000) != 0;
          v33 = HIWORD(v27) != 0;
          v34 = !v33 || !v32;
          if (v33 && v32)
          {
            v35 = v27;
          }

          else
          {
            v35 = v24;
          }

          if (v34)
          {
            v36 = v25;
          }

          else
          {
            v36 = v24;
          }

          if (v31 == 16711680)
          {
            v27 = v24;
          }

          else
          {
            v27 = v35;
          }

          if (v31 != 16711680)
          {
            v25 = v36;
          }
        }

        goto LABEL_60;
      }

      [(TSTAnimation *)a1 addCellRange:TSTCellRangeUnionCellRange(v27, v25)];
      v30 = v42 > v29 || v23;
      if (v30)
      {
        goto LABEL_45;
      }

      v27 = 0xFFFFFFLL;
      v25 = 0xFFFFFFLL;
      if (v26 >= v29)
      {
        if (v20 > BYTE2(v29))
        {
          goto LABEL_45;
        }

        v27 = 0xFFFFFFLL;
        v25 = 0xFFFFFFLL;
        if ((v20 + BYTE1(v40) - 1) >= BYTE2(v29))
        {
          break;
        }
      }

LABEL_60:
      ++v24;
      if (!--v7)
      {
        goto LABEL_64;
      }
    }

    [(TSTAnimation *)a1 addCellRange:v29];
LABEL_45:
    v27 = 0xFFFFFFLL;
    v25 = 0xFFFFFFLL;
    goto LABEL_60;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v6 << 16) | 1;
  v43 = v10 << 32;
  v39 = v10 << 8;
  v40 = 0;
  v42 = -1;
  v11 = 255;
  do
  {
    if (!v7)
    {
      v19 = v9;
      v9 = v11;
      goto LABEL_24;
    }

    v45 = v11;
    v12 = 0;
    v13 = v9 << 16;
    while (1)
    {
      v14 = TSTTableExpandCellRangeToCoverMergedCells(a2, v13 | v12 | 0x1000100000000);
      v15 = v14;
      if (v14 == 0xFFFF || ((v14 & 0xFF0000) != 0xFF0000 ? (v16 = HIWORD(v14) == 0) : (v16 = 1), !v16 ? (v17 = (v14 & 0xFFFF00000000) == 0) : (v17 = 1), v17))
      {
        v18 = a2;
        v15 = v43 | (v9 << 16);
      }

      else
      {
        if ((v14 & 0xFFFFFF) != (v13 | v12))
        {
          goto LABEL_20;
        }

        v18 = a2;
      }

      if ((TSTTableHasCellRangeHidden(v18, v15) & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (++v12 >= v7)
      {
        v19 = v9;
        v9 = v45;
        goto LABEL_24;
      }
    }

    if (v8 != a3)
    {
      ++v8;
      v12 = 65534;
      goto LABEL_20;
    }

    v42 = 0;
    v19 = 254;
    v8 = a3;
    v40 = v39;
LABEL_24:
    v20 = v9;
    v11 = v9;
    v9 = (v19 + 1);
  }

  while ((v19 + 1) < v44);
  if (v7)
  {
    goto LABEL_26;
  }

LABEL_63:
  v27 = 0xFFFFFFLL;
  v25 = 0xFFFFFFLL;
LABEL_64:
  v37 = TSTCellRangeUnionCellRange(v27, v25);

  return [(TSTAnimation *)a1 addCellRange:v37];
}

uint64_t TSTAnimationAddCellRangesForRowIndex(TSTAnimation *a1, TSTTableModel *a2, uint64_t a3)
{
  v6 = [(TSTTableModel *)a2 numberOfColumns];
  v33 = a1;
  v35 = [(TSTTableModel *)a2 numberOfRows];
  if (!v35)
  {
    v10 = v6;
    v17 = 0xFFFFLL;
    if (v6)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

  v7 = 0;
  v8 = 0;
  if (v6 >= 0xFF)
  {
    v9 = 255;
  }

  else
  {
    v9 = v6;
  }

  v34 = v9 << 32;
  v10 = v6;
  v32 = -1;
  v36 = (v9 - 1);
  do
  {
    if (!v10)
    {
      v16 = v8;
      goto LABEL_30;
    }

    v11 = 0;
    while (1)
    {
      v12 = TSTTableExpandCellRangeToCoverMergedCells(a2, v8 | (v11 << 16) | 0x1000100000000);
      v13 = v12;
      if (v12 == 0xFFFF || ((v12 & 0xFF0000) != 0xFF0000 ? (v14 = HIWORD(v12) == 0) : (v14 = 1), !v14 ? (v15 = (v12 & 0xFFFF00000000) == 0) : (v15 = 1), v15))
      {
        v13 = v34 | v8 | 0x1000000000000;
      }

      else if (!v6 || v8 != v12 || v36 < BYTE2(v12))
      {
        goto LABEL_21;
      }

      if ((TSTTableHasCellRangeHidden(a2, v13) & 1) == 0)
      {
        break;
      }

LABEL_21:
      if (++v11 >= v6)
      {
        v16 = v8;
        goto LABEL_29;
      }
    }

    if (v7 != a3)
    {
      ++v7;
      v11 = 254;
      goto LABEL_21;
    }

    v16 = 65534;
    v7 = a3;
    v32 = v8;
LABEL_29:
    v10 = v6;
LABEL_30:
    v8 = v16 + 1;
  }

  while (v35 > (v16 + 1));
  v17 = v32;
  if (!v10)
  {
LABEL_63:
    v28 = 0xFFFFFFLL;
    v29 = 0xFFFFFFLL;
    goto LABEL_64;
  }

LABEL_32:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFLL;
  v21 = 0xFFFFFFLL;
  v22 = v10;
  do
  {
    v23 = TSTTableExpandCellRangeToCoverMergedCells(a2, v17 + 0x1000100000000);
    v24 = v23;
    if (v23 == 0xFFFF || ((v23 & 0xFF0000) != 0xFF0000 ? (v25 = HIWORD(v23) == 0) : (v25 = 1), !v25 ? (v26 = (v23 & 0xFFFF00000000) == 0) : (v26 = 1), v26))
    {
      if (v21 == 0xFFFF || (v21 & 0xFF0000) == 0xFF0000)
      {
        v21 = v17;
        v19 = 65537;
      }

      else
      {
        if (v19)
        {
          v27 = (v19 & 0xFFFFFFFFFFFF0000) == 0;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          v19 = 65537;
        }

        if (v27)
        {
          v21 = v17;
        }

        if (!v27)
        {
          v18 = 65537;
          v20 = v17;
        }
      }
    }

    else
    {
      [(TSTAnimation *)v33 addCellRange:TSTCellRangeUnionCellRange(v21 | (v19 << 32), v20 | (v18 << 32))];
      if (v17 == (v24 & 0xFFFFFF))
      {
        [(TSTAnimation *)v33 addCellRange:v24];
      }

      v19 = 0;
      v18 = 0;
      v21 = 0xFFFFFFLL;
      v20 = 0xFFFFFFLL;
    }

    v17 += 0x10000;
    --v22;
  }

  while (v22);
  v28 = v21 | (v19 << 32);
  v29 = v20 | (v18 << 32);
  a1 = v33;
LABEL_64:
  v30 = TSTCellRangeUnionCellRange(v28, v29);

  return [(TSTAnimation *)a1 addCellRange:v30];
}

unint64_t TSTAnimationAddCellRangeForCellIndex(TSTAnimation *a1, TSTTableModel *a2, uint64_t a3)
{
  v5 = [(TSTTableModel *)a2 numberOfColumns];
  result = [(TSTTableModel *)a2 numberOfRows];
  if (!result)
  {
    return result;
  }

  v7 = 0;
  v8 = 0;
  v15 = result;
  while (!v5)
  {
LABEL_21:
    if (++v7 == v15)
    {
      return result;
    }
  }

  v9 = 0;
  while (1)
  {
    v10 = v7 | (v9 << 16);
    result = TSTTableExpandCellRangeToCoverMergedCells(a2, v10 | 0x1000100000000);
    v11 = result;
    if (result != 0xFFFF)
    {
      v12 = (result & 0xFF0000) == 0xFF0000 || HIWORD(result) == 0;
      if (!v12 && (result & 0xFFFF00000000) != 0)
      {
        break;
      }
    }

    result = TSTTableHasCellRangeHidden(a2, v10 | 0x1000100000000);
    if ((result & 1) == 0)
    {
      v11 = v10 | 0x1000100000000;
      goto LABEL_16;
    }

LABEL_20:
    if (++v9 >= v5)
    {
      goto LABEL_21;
    }
  }

  if (v10 != (result & 0xFFFFFF))
  {
    goto LABEL_20;
  }

  result = TSTTableHasCellRangeHidden(a2, result);
  if (result)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v8 != a3)
  {
    ++v8;
    goto LABEL_20;
  }

  return [(TSTAnimation *)a1 addCellRange:v11];
}

uint64_t TSTAnimationGetNumberOfColumns(TSTTableModel *a1)
{
  v2 = [(TSTTableModel *)a1 numberOfColumns];
  v3 = [(TSTTableModel *)a1 numberOfRows];
  v16 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v15 = v3 << 48;
  v7 = (v3 - 1);
  do
  {
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v9 = TSTTableExpandCellRangeToCoverMergedCells(a1, (v5 << 16) & 0xFFFF0000 | i | 0x1000100000000);
        v10 = v15 | (v5 << 16) | 0x100000000;
        if (v9 != 0xFFFF)
        {
          v11 = (v9 & 0xFF0000) == 0xFF0000 || HIWORD(v9) == 0;
          v12 = v11 || (v9 & 0xFFFF00000000) == 0;
          v10 = v15 | (v5 << 16) | 0x100000000;
          if (!v12)
          {
            if (v7 < v9)
            {
              continue;
            }

            v10 = v9;
            if (v5 != BYTE2(v9))
            {
              continue;
            }
          }
        }

        HasCellRangeHidden = TSTTableHasCellRangeHidden(a1, v10);
        if (!HasCellRangeHidden)
        {
          i = -2;
        }

        v6 += HasCellRangeHidden ^ 1u;
      }
    }

    ++v5;
  }

  while (v5 != v16);
  return v6;
}

uint64_t TSTAnimationGetNumberOfRows(TSTTableModel *a1)
{
  v2 = [(TSTTableModel *)a1 numberOfColumns];
  v3 = [(TSTTableModel *)a1 numberOfRows];
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  if (v2 >= 0xFF)
  {
    v6 = 255;
  }

  else
  {
    v6 = v2;
  }

  v15 = v6 << 32;
  v16 = v3;
  v7 = (v6 - 1);
  do
  {
    if (v2)
    {
      v8 = 0;
      do
      {
        v9 = TSTTableExpandCellRangeToCoverMergedCells(a1, v4 | (v8 << 16) | 0x1000100000000);
        v10 = v15 | v4 | 0x1000000000000;
        if (v9 == 0xFFFFLL || ((v9 & 0xFF0000) != 0xFF0000 ? (v11 = HIWORD(v9) == 0) : (v11 = 1), !v11 ? (v12 = (v9 & 0xFFFF00000000) == 0) : (v12 = 1), (v10 = v15 | v4 | 0x1000000000000, v12) || v2 && v4 == v9 && (v10 = v9, v7 >= BYTE2(v9))))
        {
          HasCellRangeHidden = TSTTableHasCellRangeHidden(a1, v10);
          if (!HasCellRangeHidden)
          {
            v8 = -2;
          }

          v5 += HasCellRangeHidden ^ 1u;
        }

        ++v8;
      }

      while (v8 < v2);
    }

    ++v4;
  }

  while (v4 != v16);
  return v5;
}

uint64_t TSTAnimationGetNumberOfCells(TSTTableModel *a1)
{
  v2 = [(TSTTableModel *)a1 numberOfColumns];
  v3 = [(TSTTableModel *)a1 numberOfRows];
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = v2;
  v7 = v3;
  do
  {
    v8 = v6;
    v9 = v4;
    if (v6)
    {
      do
      {
        v10 = v9 + 0x1000100000000;
        v11 = TSTTableExpandCellRangeToCoverMergedCells(a1, v9 + 0x1000100000000);
        if (v11 == 0xFFFF || ((v11 & 0xFF0000) != 0xFF0000 ? (v12 = HIWORD(v11) == 0) : (v12 = 1), !v12 ? (v13 = (v11 & 0xFFFF00000000) == 0) : (v13 = 1), v13 || (v10 = v11, v9 == (v11 & 0xFFFFFF))))
        {
          v5 += TSTTableHasCellRangeHidden(a1, v10) ^ 1;
        }

        v9 += 0x10000;
        --v8;
      }

      while (v8);
    }

    ++v4;
  }

  while (v4 != v7);
  return v5;
}

void TSTTableDumpTileRowInfo(uint64_t a1)
{
  v1 = &OBJC_IVAR___TSTAnimation_mReverse;
  if (!*(a1 + 538))
  {
    NSLog(@"<empty row>");
    return;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 16));
  v28 = objc_alloc_init(TSTCell);
  v4 = 0;
  v5 = 0;
  v6 = 538;
  v7 = a1;
  while (*(a1 + v6) != v5)
  {
    v8 = *(v7 + 24);
    if (v8 != 0xFFFF)
    {
      v9 = &MutableBytePtr[v8];
      TSTCellInflateFromStorageRef(v28, &MutableBytePtr[v8], 0);
      if (v28)
      {
        mPrivate = v28->mPrivate;
        v11 = BYTE1(mPrivate);
        if (BYTE1(mPrivate) > 5u)
        {
          if (BYTE1(mPrivate) > 7u)
          {
            if (BYTE1(mPrivate) == 8)
            {
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"<error>", v21];
            }

            else
            {
              if (BYTE1(mPrivate) != 9)
              {
                goto LABEL_30;
              }

              v17 = MEMORY[0x277CCACA8];
              v23 = [(TSTRichTextPayload *)v28->mPrivate.mRichTextPayload string];
              v18 = v17;
              v1 = &OBJC_IVAR___TSTAnimation_mReverse;
              v14 = [v18 stringWithFormat:@"<rich text: '%@'>", v23];
            }
          }

          else if (BYTE1(mPrivate) == 6)
          {
            v19 = MEMORY[0x277CCACA8];
            if ((*&v28->mPrivate & 0xFB00) == 0x200)
            {
              v20 = @"TRUE";
              if (v28->mPrivate.mValue.mDouble == 0.0)
              {
                v20 = @"FALSE";
              }
            }

            else
            {
              v26 = [MEMORY[0x277D6C290] currentHandler];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v26 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v28}];
              v20 = @"FALSE";
            }

            v14 = [v19 stringWithFormat:@"<BOOL: '%@'>", v20];
LABEL_35:
            v1 = &OBJC_IVAR___TSTAnimation_mReverse;
          }

          else
          {
            if (BYTE1(mPrivate) != 7)
            {
              goto LABEL_30;
            }

            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"<duration: %f>", v28->mPrivate.mValue.mDate];
          }

LABEL_36:
          NSLog(@"cell: column %d cell %p type %d [value %@]", v4, v9, v11, v14);
          ++v5;
          v6 = v1[8];
          goto LABEL_37;
        }

        if (BYTE1(mPrivate) > 2u)
        {
          if (BYTE1(mPrivate) == 3)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"<string: '%@'>", v28->mPrivate.mValue.mString.mString];
          }

          else
          {
            if (BYTE1(mPrivate) != 5)
            {
              goto LABEL_30;
            }

            v15 = MEMORY[0x277CCACA8];
            v22 = [(NSDate *)v28->mPrivate.mValue.mDate description];
            v16 = v15;
            v1 = &OBJC_IVAR___TSTAnimation_mReverse;
            v14 = [v16 stringWithFormat:@"<date: '%@'>", v22];
          }

          goto LABEL_36;
        }

        if (BYTE1(mPrivate))
        {
          if (BYTE1(mPrivate) == 2)
          {
            v12 = MEMORY[0x277CCACA8];
            if ((*&v28->mPrivate & 0xFB00) == 0x200)
            {
              mDate = v28->mPrivate.mValue.mDate;
            }

            else
            {
              mDate = 0;
              v27 = [MEMORY[0x277D6C290] currentHandler];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
              [v27 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", v28}];
            }

            v14 = [v12 stringWithFormat:@"<number: %f>", mDate];
            goto LABEL_35;
          }

LABEL_30:
          v14 = @"<unknown cell type>";
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0;
      }

      v14 = @"<empty>";
      goto LABEL_36;
    }

LABEL_37:
    ++v4;
    v7 += 2;
    if (v4 == 255)
    {
      break;
    }
  }
}

size_t TSTTableTileRowInfoFlushableSize(uint64_t a1)
{
  v2 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v2);
  v4 = *(a1 + 16);
  if (v4)
  {
    InstanceSize += CFDataGetLength(v4);
  }

  return InstanceSize;
}

uint64_t TSTTableTileRowInfoRecalculateMaxTileColumnIndex(uint64_t result)
{
  *(result + 540) = -1;
  v1 = 254;
  while (*(result + 24 + 2 * v1) == -1)
  {
    if (--v1 == -1)
    {
      goto LABEL_6;
    }
  }

  *(result + 540) = v1;
LABEL_6:
  *(result + 541) = 1;
  return result;
}

UInt8 *TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 538))
  {
    return 0;
  }

  v2 = *(a1 + 24 + 2 * a2);
  if (v2 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return &CFDataGetMutableBytePtr(*(a1 + 16))[v2];
  }
}

void TSTTableTileRowInfoSetCell(TSTTableTileRowInfo *a1, unsigned int a2, void *a3)
{
  v5 = a1->mStorageOffsets[a2];
  if (a3)
  {
    [(TSPContainedObject *)a1 willModify];
    if (v5 == 0xFFFF)
    {
      v23 = TSTCellStorageHeaderFlagsForCell(a3);
      v24 = TSTCellStorageFormatFlagsForCell(a3);
      v26 = TSTCellStorageSizeForHeaderFlags(v23, v24, v25);
      v27 = v26;
      v28 = a1->mBufferSize + v26;
      mStorageBuffer = a1->mStorageBuffer;
      if (v28)
      {
        v30 = mStorageBuffer == 0;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        mStorageBuffer = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
        a1->mStorageBuffer = mStorageBuffer;
      }

      if (CFDataGetLength(mStorageBuffer) < v28)
      {
        CFDataSetLength(a1->mStorageBuffer, v28);
        a1->mBufferSize = v28;
      }

      MutableBytePtr = CFDataGetMutableBytePtr(a1->mStorageBuffer);
      v32 = p_OffsetForInsert(a1, a2, MutableBytePtr);
      v33 = v32;
      if (!a1->mMaxTileColumnIndexValid)
      {
        a1->mMaxTileColumnIndex = -1;
        v34 = 254;
        while (a1->mStorageOffsets[v34] == -1)
        {
          if (--v34 == -1)
          {
            goto LABEL_33;
          }
        }

        a1->mMaxTileColumnIndex = v34;
LABEL_33:
        a1->mMaxTileColumnIndexValid = 1;
      }

      mMaxTileColumnIndex = a1->mMaxTileColumnIndex;
      if (a1->mCellCount)
      {
        v36 = mMaxTileColumnIndex > a2;
      }

      else
      {
        v36 = 0;
      }

      if (v36)
      {
        v37 = v32;
        memmove(&MutableBytePtr[v32 + v27], &MutableBytePtr[v32], a1->mBufferSize - ((v27 & ~(v27 >> 31)) + v32));
        v38 = a2 + 1;
        do
        {
          v39 = a1->mStorageOffsets[v38];
          if (v39 != 0xFFFF)
          {
            a1->mStorageOffsets[v38] = v39 + v27;
          }

          ++v38;
        }

        while (mMaxTileColumnIndex >= v38);
      }

      else
      {
        v37 = v32;
      }

      TSTCellWriteStorageRef(a3, &MutableBytePtr[v37]);
      a1->mStorageOffsets[a2] = v33;
      ++a1->mCellCount;
      if (a1->mMaxTileColumnIndexValid)
      {
        v40 = a1->mMaxTileColumnIndex;
        if (v40 == 255 || v40 < a2)
        {
          a1->mMaxTileColumnIndex = a2;
        }
      }
    }

    else
    {
      v7 = CFDataGetMutableBytePtr(a1->mStorageBuffer);
      v8 = a1->mStorageOffsets[a2];
      v9 = &v7[v8];
      TSTCellStorageVersionAssert(&v7[v8]);
      v10 = TSTCellStorageHeaderFlagsForStorage(&v7[v8]);
      v11 = TSTCellStorageFormatFlagsForStorage(&v7[v8]);
      v13 = TSTCellStorageSizeForHeaderFlags(v10, v11, v12);
      v14 = TSTCellStorageHeaderFlagsForCell(a3);
      v15 = TSTCellStorageFormatFlagsForCell(a3);
      v17 = TSTCellStorageSizeForHeaderFlags(v14, v15, v16);
      v18 = v17 - v13;
      if (v17 != v13)
      {
        v19 = v18;
        if (v18 >= 1)
        {
          v20 = a1->mBufferSize + v18;
          Mutable = a1->mStorageBuffer;
          if (!Mutable)
          {
            Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
            a1->mStorageBuffer = Mutable;
          }

          if (CFDataGetLength(Mutable) < v20)
          {
            CFDataSetLength(a1->mStorageBuffer, v20);
            a1->mBufferSize = v20;
          }

          v7 = CFDataGetMutableBytePtr(a1->mStorageBuffer);
        }

        if (!a1->mMaxTileColumnIndexValid)
        {
          a1->mMaxTileColumnIndex = -1;
          v22 = 254;
          while (a1->mStorageOffsets[v22] == -1)
          {
            if (--v22 == -1)
            {
              goto LABEL_51;
            }
          }

          a1->mMaxTileColumnIndex = v22;
LABEL_51:
          a1->mMaxTileColumnIndexValid = 1;
        }

        v42 = a1->mMaxTileColumnIndex;
        if (v42 > a2)
        {
          memmove(&v7[(v13 + v8) + v19], &v7[(v13 + v8)], a1->mBufferSize - ((v19 & ~(v19 >> 31)) + (v13 + v8)));
          v43 = a2 + 1;
          do
          {
            v44 = a1->mStorageOffsets[v43];
            if (v44 != 0xFFFF)
            {
              a1->mStorageOffsets[v43] = v44 + v19;
            }

            ++v43;
          }

          while (v42 >= v43);
        }

        if (v19 < 0)
        {
          v45 = a1->mBufferSize + v19;
          v46 = a1->mStorageBuffer;
          if (v45 >= 1 && v46 == 0)
          {
            v46 = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
            a1->mStorageBuffer = v46;
          }

          if (CFDataGetLength(v46) < v45)
          {
            CFDataSetLength(a1->mStorageBuffer, v45);
            a1->mBufferSize = v45;
          }

          v7 = CFDataGetMutableBytePtr(a1->mStorageBuffer);
        }

        v9 = &v7[v8];
      }

      TSTCellWriteStorageRef(a3, v9);
    }
  }

  else if (v5 != 0xFFFF)
  {

    p_RemoveCell(a1, a2);
  }
}

void p_RemoveCell(TSTTableTileRowInfo *a1, unsigned int a2)
{
  [(TSPContainedObject *)a1 willModify];
  v4 = a1->mStorageOffsets[a2];
  if (v4 != 0xFFFF)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(a1->mStorageBuffer);
    TSTCellStorageVersionAssert(&MutableBytePtr[v4]);
    v6 = TSTCellStorageHeaderFlagsForStorage(&MutableBytePtr[v4]);
    v7 = TSTCellStorageFormatFlagsForStorage(&MutableBytePtr[v4]);
    v9 = TSTCellStorageSizeForHeaderFlags(v6, v7, v8);
    v10 = v9;
    if (!a1->mMaxTileColumnIndexValid)
    {
      a1->mMaxTileColumnIndex = -1;
      v11 = 254;
      while (a1->mStorageOffsets[v11] == -1)
      {
        if (--v11 == -1)
        {
          goto LABEL_8;
        }
      }

      a1->mMaxTileColumnIndex = v11;
LABEL_8:
      a1->mMaxTileColumnIndexValid = 1;
    }

    mMaxTileColumnIndex = a1->mMaxTileColumnIndex;
    if (mMaxTileColumnIndex > a2)
    {
      memmove(&MutableBytePtr[(v9 + v4) + -v9], &MutableBytePtr[(v9 + v4)], a1->mBufferSize - ((-v9 & ~(-v9 >> 31)) + (v9 + v4)));
      v13 = a2 + 1;
      do
      {
        v14 = a1->mStorageOffsets[v13];
        if (v14 != 0xFFFF)
        {
          a1->mStorageOffsets[v13] = v14 - v10;
        }

        ++v13;
      }

      while (mMaxTileColumnIndex >= v13);
    }

    v15 = a1->mBufferSize - v10;
    mStorageBuffer = a1->mStorageBuffer;
    if (v15 >= 1 && mStorageBuffer == 0)
    {
      mStorageBuffer = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
      a1->mStorageBuffer = mStorageBuffer;
    }

    if (CFDataGetLength(mStorageBuffer) < v15)
    {
      CFDataSetLength(a1->mStorageBuffer, v15);
      a1->mBufferSize = v15;
    }

    a1->mStorageOffsets[a2] = -1;
    --a1->mCellCount;
    if (a1->mMaxTileColumnIndexValid && a1->mMaxTileColumnIndex <= a2)
    {
      a1->mMaxTileColumnIndex = -1;
      a1->mMaxTileColumnIndexValid = 0;
    }
  }
}

uint64_t TSTTableTileRowInfoInsertColumns(_BYTE *a1, char a2, int a3, char a4)
{
  result = [a1 willModify];
  v9 = (a4 ^ 1) + a2;
  if (v9 + a3 != 0xFF)
  {
    v10 = a1 + 508;
    v11 = 255;
    do
    {
      *(v10 + 12) = *&v10[-2 * a3 + 24];
      --v11;
      v10 -= 2;
    }

    while (v11 > (v9 + a3));
  }

  if (((a4 ^ 1) + a2) < (v9 + a3))
  {
    v12 = &a1[2 * v9];
    v13 = (v9 + a3) - v9;
    do
    {
      *(v12 + 12) = -1;
      v12 += 2;
      --v13;
    }

    while (v13);
  }

  a1[540] = -1;
  a1[541] = 0;
  return result;
}

void TSTTableTileRowInfoRemoveColumns(TSTTableTileRowInfo *a1, int a2, int a3)
{
  [(TSPContainedObject *)a1 willModify];
  if (a3)
  {
    v6 = a2;
    do
    {
      if (a1->mStorageOffsets[v6] != -1)
      {
        p_RemoveCell(a1, v6);
      }

      ++v6;
    }

    while (a2 + a3 > v6);
  }

  if (254 - a3 >= a2)
  {
    v7 = a2;
    do
    {
      a1->mStorageOffsets[a2++] = a1->mStorageOffsets[v7 + a3];
      v7 = a2;
    }

    while (254 - a3 >= a2);
  }

  if (a3)
  {
    v8 = a1 + 2 * ~a3;
    v9 = ~a3 - 255;
    do
    {
      *(v8 + 12) = -1;
      v8 += 2;
    }

    while (!__CFADD__(v9++, 1));
  }

  a1->mMaxTileColumnIndex = -1;
  a1->mMaxTileColumnIndexValid = 0;
}

void TSTTableTileRowInfoMoveColumns(TSTTableTileRowInfo *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5, char *a6)
{
  [(TSPContainedObject *)a1 willModify];
  v12 = a3;
  if (a3 > a2)
  {
    if (a4 + a2 > a3)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRowInfoMoveColumns(TSTTableTileRowInfo *, TSUColumnIndex, TSUColumnIndex, TSUColumnRowCount, UInt8 *, UInt16 *)"}];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTileRowInfo.mm"), 520, @"Move column ranges cannot overlap!"}];
    }

    v12 = a3 - a4;
  }

  if (a1->mCellCount)
  {
    if (!a1->mMaxTileColumnIndexValid)
    {
      a1->mMaxTileColumnIndex = -1;
      v15 = 254;
      while (a1->mStorageOffsets[v15] == -1)
      {
        if (--v15 == -1)
        {
          goto LABEL_12;
        }
      }

      a1->mMaxTileColumnIndex = v15;
LABEL_12:
      a1->mMaxTileColumnIndexValid = 1;
    }

    mMaxTileColumnIndex = a1->mMaxTileColumnIndex;
    v17 = mMaxTileColumnIndex >= a3 || mMaxTileColumnIndex >= a2;
    if (v17)
    {
      v61 = v12;
      v59 = a2;
      v18 = a2;
      v19 = (a2 + a4 - 1);
      do
      {
        v20 = v18;
        v21 = a1->mStorageOffsets[v18++];
      }

      while (v20 < v19 && v21 == 0xFFFF);
      v57 = a5;
      v58 = a6;
      v56 = a4;
      if (v21 == 0xFFFF)
      {
        v24 = 0;
      }

      else
      {
        v22 = v18 - 1;
        MutableBytePtr = CFDataGetMutableBytePtr(a1->mStorageBuffer);
        if (v19 >= v22)
        {
          v25 = MutableBytePtr;
          v26 = 0;
          do
          {
            v27 = a1->mStorageOffsets[v22];
            if (v27 != 0xFFFF)
            {
              if (v21 + v26 != v27)
              {
                v28 = [MEMORY[0x277D6C290] currentHandler];
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableTileRowInfoRegion p_RegionForColumns(TSTTableTileRowInfo *, TSUColumnIndex, TSUColumnRowCount)"}];
                [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTileRowInfo.mm"), 395, @"Storage region is out of sync!"}];
              }

              TSTCellStorageVersionAssert(&v25[v27]);
              v30 = TSTCellStorageHeaderFlagsForStorage(&v25[v27]);
              v31 = TSTCellStorageFormatFlagsForStorage(&v25[v27]);
              v26 += TSTCellStorageSizeForHeaderFlags(v30, v31, v32);
            }

            ++v22;
          }

          while (v19 >= v22);
          v24 = v26 << 16;
          a5 = v57;
          a4 = v56;
        }

        else
        {
          v24 = 0;
        }
      }

      v33 = CFDataGetMutableBytePtr(a1->mStorageBuffer);
      if (v24)
      {
        v34 = v33;
        v35 = a5;
        if (!a5)
        {
          v35 = malloc_type_malloc(HIWORD(v24), 0x100004077774924uLL);
        }

        memcpy(v35, &v34[v21], HIWORD(v24));
        v36 = a6;
        if (!a6)
        {
          v36 = malloc_type_calloc(2uLL, a4, 0x1000040BDFB0063uLL);
        }

        v37 = v61;
        if (a4)
        {
          v38 = 0;
          v39 = a1 + 2 * v59;
          do
          {
            v40 = *(v39 + 12);
            if (v40 == -1)
            {
              v41 = -1;
            }

            else
            {
              v41 = v40 - v21;
            }

            *&v36[v38] = v41;
            v39 += 2;
            v38 += 2;
          }

          while (2 * a4 != v38);
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = v61;
      }

      TSTTableTileRowInfoRemoveColumns(a1, v59, a4);
      TSTTableTileRowInfoInsertColumns(a1, v37, a4, 1);
      v42 = a4;
      v43 = CFDataGetMutableBytePtr(a1->mStorageBuffer);
      v44 = p_OffsetForInsert(a1, v37, v43);
      if (v35)
      {
        v45 = v44;
        v60 = HIWORD(v24);
        v46 = &v43[v44];
        memmove(&v46[SHIWORD(v24)], v46, a1->mBufferSize - (((v24 >> 16) & ~(v24 >> 31)) + v44));
        memcpy(v46, v35, HIWORD(v24));
        v47 = v42;
        if (v42)
        {
          v48 = a1 + 2 * v61;
          v49 = v36;
          do
          {
            if (*(v48 + 12) != -1)
            {
              v50 = [MEMORY[0x277D6C290] currentHandler];
              v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRowInfoMoveColumns(TSTTableTileRowInfo *, TSUColumnIndex, TSUColumnIndex, TSUColumnRowCount, UInt8 *, UInt16 *)"}];
              [v50 handleFailureInFunction:v51 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTileRowInfo.mm"), 580, @"Overwriting a column in move!"}];
            }

            v52 = *v49;
            if (v52 != 0xFFFF)
            {
              *(v48 + 12) = v52 + v45;
              ++a1->mCellCount;
            }

            v48 += 2;
            ++v49;
            --v47;
          }

          while (v47);
        }

        if (v61 + v56 != 0xFF)
        {
          v53 = a1 + 2 * (v61 + v56);
          v54 = (v61 + v56) - 255;
          do
          {
            v55 = *(v53 + 12);
            if (v55 != 0xFFFF)
            {
              *(v53 + 12) = v55 + v60;
            }

            v53 += 2;
            v17 = __CFADD__(v54++, 1);
          }

          while (!v17);
        }

        if (v35 != v57)
        {
          free(v35);
        }

        if (v36 != v58)
        {
          free(v36);
        }
      }

      a1->mMaxTileColumnIndex = -1;
      a1->mMaxTileColumnIndexValid = 0;
    }
  }
}

uint64_t p_OffsetForInsert(TSTTableTileRowInfo *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v4 = a2;
    while (v4 >= 1)
    {
      v5 = *(&a1->mStorageBuffer + v4-- + 3);
      if (v5 != 0xFFFF)
      {
        TSTCellStorageVersionAssert(&a3[v5]);
        v6 = TSTCellStorageHeaderFlagsForStorage(&a3[v5]);
        v7 = TSTCellStorageFormatFlagsForStorage(&a3[v5]);
        return (TSTCellStorageSizeForHeaderFlags(v6, v7, v8) + v5);
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

void SFUtility::ObjcSharedPtr<NSObject>::reset(void **a1, void *a2)
{
  if (*a1 != a2)
  {
    v5 = a2;
    v6 = *a1;
    *a1 = a2;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_26C9DC788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,TSTIntHasher,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::equal_to<unsigned int>,TSTIntHasher,true>,std::allocator<std::__hash_value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

double TSTTableBadgeCheckboxFrame(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, int a7, void *a8, uint64_t a9)
{
  v25 = 0.0;
  v15 = p_TSTTableBadgeCheckboxImageForScale(a7, &v25, a1);
  if (!v15)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSTTableBadgeCheckboxFrame(TSTTableRep *, CGFloat, CGRect, BOOL, TSUImage **, CGSize *)"}];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableBadge.m"), 196, @"No checkbox image for rendering!"}];
  }

  [v15 size];
  v20 = TSDMultiplySizeScalar(v18, v19, v25);
  v22 = v21;
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidY(v27);
  if (a8)
  {
    *a8 = v15;
  }

  if (a9)
  {
    *a9 = v20;
    *(a9 + 8) = v22;
  }

  return MidX - v20 * 0.5;
}

uint64_t p_TSTTableBadgeCheckboxImageForScale(int a1, double *a2, double a3)
{
  if (a1)
  {
    if (a3 > 0.5)
    {
      if (a3 <= 1.0)
      {
        v5 = MEMORY[0x277D6C2F8];
        v6 = TSTBundle();
        v7 = @"TSTiOSCheckboxChecked12";
      }

      else
      {
        v5 = MEMORY[0x277D6C2F8];
        v6 = TSTBundle();
        if (a3 <= 1.5)
        {
          v7 = @"TSTiOSCheckboxChecked18";
        }

        else
        {
          v7 = @"TSTiOSCheckboxChecked24";
        }
      }
    }

    else
    {
      v5 = MEMORY[0x277D6C2F8];
      v6 = TSTBundle();
      v7 = @"TSTiOSCheckboxChecked6";
    }
  }

  else if (a3 > 0.5)
  {
    if (a3 <= 1.0)
    {
      v5 = MEMORY[0x277D6C2F8];
      v6 = TSTBundle();
      v7 = @"TSTiOSCheckboxUnchecked12";
    }

    else
    {
      v5 = MEMORY[0x277D6C2F8];
      v6 = TSTBundle();
      if (a3 <= 1.5)
      {
        v7 = @"TSTiOSCheckboxUnchecked18";
      }

      else
      {
        v7 = @"TSTiOSCheckboxUnchecked24";
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277D6C2F8];
    v6 = TSTBundle();
    v7 = @"TSTiOSCheckboxUnchecked6";
  }

  result = [v5 imageNamed:v7 inBundle:v6];
  if (a2)
  {
    v9 = 2.0;
    if (a3 > 0.5)
    {
      v9 = 1.0;
      if (a3 > 1.0)
      {
        v9 = 0.666666687;
        if (a3 > 1.5)
        {
          v9 = 0.5;
        }
      }
    }

    *a2 = v9;
  }

  return result;
}

BOOL TSTTableBadgeIsDrawingControlCell(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 104) - 263;
    return v1 <= 4 && (v1 & 3) == 0;
  }

  return result;
}

void TSTTableBadgeDrawCellControl(uint64_t a1, CGContext *a2, uint64_t a3, unsigned int a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a3)
  {
    v17 = a1;
    v18 = *(a3 + 104);
    if ((v18 - 263) >= 5)
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableBadgeDrawCellControl(TSTTableRep *, CGContextRef, CGFloat, CGRect, TSTCell *, TSTCellID)"}];
      a1 = [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableBadge.m"), 247, @"Can't render controls on a cell without controls!"}];
      v18 = *(a3 + 104);
    }

    v21 = *(a3 + 9);
    if (v18 == 267)
    {
      FontColorForCell = TSTTableGetFontColorForCell([v17 tableModel], a3, a4);
      v27 = 0.0;
      if (v21 == 2)
      {
        if ((*(a3 + 8) & 0xFB00) == 0x200 || BYTE1(*(a3 + 8)) == 7)
        {
          v27 = *(a3 + 16);
        }

        else if (BYTE1(*(a3 + 8)))
        {
          v47 = [MEMORY[0x277D6C290] currentHandler];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [v47 handleFailureInFunction:v48 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", a3}];
        }
      }

      v49 = llround(v27);

      [TSKStarRatingViewRenderer renderRating:v49 intoContext:a2 rect:0 style:1 showDots:FontColorForCell color:a6, a7, a8, a9];
    }

    else if (v18 == 263)
    {
      v22 = v21 == 6 && *(a3 + 16) != 0.0;
      v54 = 0;
      v53 = *MEMORY[0x277CBF3A8];
      v29 = TSTTableBadgeCheckboxFrame(a5, a6, a7, a8, a9, a1, v22, &v54, &v53);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      memset(&v52, 0, sizeof(v52));
      CGContextGetUserSpaceToDeviceSpaceTransform(&v52, a2);
      v51 = v52;
      v56.origin.x = v29;
      v56.origin.y = v31;
      v56.size.width = v33;
      v56.size.height = v35;
      v57 = CGRectApplyAffineTransform(v56, &v51);
      v58 = CGRectIntegral(v57);
      x = v58.origin.x;
      y = v58.origin.y;
      width = v58.size.width;
      height = v58.size.height;
      v50 = v52;
      CGAffineTransformInvert(&v51, &v50);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v60 = CGRectApplyAffineTransform(v59, &v51);
      v40 = v60.origin.x;
      v41 = v60.origin.y;
      v42 = v60.size.width;
      v43 = v60.size.height;
      CGContextSaveGState(a2);
      v61.origin.x = a6;
      v61.origin.y = a7;
      v61.size.width = a8;
      v61.size.height = a9;
      CGContextClipToRect(a2, v61);
      v62.origin.x = v40;
      v62.origin.y = v41;
      v62.size.width = v42;
      v62.size.height = v43;
      MinX = CGRectGetMinX(v62);
      v63.origin.x = v40;
      v63.origin.y = v41;
      v63.size.width = v42;
      v63.size.height = v43;
      MaxY = CGRectGetMaxY(v63);
      CGContextTranslateCTM(a2, MinX, MaxY);
      CGContextScaleCTM(a2, 1.0, -1.0);
      v46 = [v54 CGImageForSize:a2 inContext:0 orLayer:v53];
      v64.origin.x = TSDRectWithSize();
      CGContextDrawImage(a2, v64, v46);
      CGContextRestoreGState(a2);
    }
  }

  else
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableBadgeDrawCellControl(TSTTableRep *, CGContextRef, CGFloat, CGRect, TSTCell *, TSTCellID)"}];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableBadge.m"];

    [v23 handleFailureInFunction:v24 file:v25 lineNumber:247 description:@"Can't render controls on a cell without controls!"];
  }
}

void TSTTableBadgeCellErrorIndicatorFrame(double a1, double a2, double a3, double a4)
{
  v4 = fmin(a3, a4) * 0.899999976;
  v5 = 2.0;
  if (v4 >= 2.0)
  {
    if (v4 >= 4.0)
    {
      v5 = 4.0;
      if (v4 >= 8.0)
      {
        v5 = 8.0;
        if (v4 >= 16.0)
        {
          v5 = 16.0;
          if (v4 >= 32.0)
          {
            v5 = 32.0;
          }
        }
      }
    }

    v6 = a1 + a3 * 0.5 - v5 * 0.5;
    TSDRoundedSize();
    TSDFlooredPoint(v6);
  }
}

void TSTTableBadgeDrawCellErrorIndicator(CGContext *a1, double a2, double a3, double a4, double a5, double a6)
{
  TSTTableBadgeCellErrorIndicatorFrame(a3, a4, a5, a6);
  tx = v13;
  v15 = v14;
  v16 = v12;
  v18 = v17;
  if (a2 <= 1.0)
  {
    v19 = v12;
    if (a2 <= 0.5)
    {
      v19 = v12 * 0.5;
    }
  }

  else
  {
    v19 = v12 + v12;
  }

  v20 = p_TSTTableBadgeErrorIndicatorImageForSize(v19);
  CGContextSaveGState(a1);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGContextClipToRect(a1, v24);
  CGContextTranslateCTM(a1, tx, v15 + v18);
  memset(&v23, 0, sizeof(v23));
  CGContextGetCTM(&v23, a1);
  v23.tx = ceil(v23.tx) - v23.tx;
  v23.ty = v23.ty - ceil(v23.ty);
  CGContextTranslateCTM(a1, v23.tx, v23.ty);
  CGContextScaleCTM(a1, 1.0, -1.0);
  v21 = [v20 CGImageForSize:a1 inContext:0 orLayer:{v16, v18}];
  v25.origin.x = TSDRectWithSize();
  CGContextDrawImage(a1, v25, v21);
  CGContextRestoreGState(a1);
}

uint64_t p_TSTTableBadgeErrorIndicatorImageForSize(double a1)
{
  if (a1 >= 4.0)
  {
    if (a1 >= 8.0)
    {
      if (a1 >= 16.0)
      {
        if (a1 >= 32.0)
        {
          v2 = MEMORY[0x277D6C2F8];
          v3 = TSTBundle();
          if (a1 >= 64.0)
          {
            v4 = @"TSTErrorMessageIcon-64";
          }

          else
          {
            v4 = @"TSTErrorMessageIcon-32";
          }
        }

        else
        {
          v2 = MEMORY[0x277D6C2F8];
          v3 = TSTBundle();
          v4 = @"TSTErrorMessageIcon-16";
        }
      }

      else
      {
        v2 = MEMORY[0x277D6C2F8];
        v3 = TSTBundle();
        v4 = @"TSTErrorMessageIcon-8";
      }
    }

    else
    {
      v2 = MEMORY[0x277D6C2F8];
      v3 = TSTBundle();
      v4 = @"TSTErrorMessageIcon-4";
    }
  }

  else
  {
    v2 = MEMORY[0x277D6C2F8];
    v3 = TSTBundle();
    v4 = @"TSTErrorMessageIcon-2";
  }

  return [v2 imageNamed:v4 inBundle:v3];
}

CGPath *newTSTTableBadgeCellCommentBadgePath(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetMaxX(*&a1) + -9.0 + -1.0;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  v9 = CGRectGetMinY(v12) + 1.0;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v8, v9);
  CGPathAddLineToPoint(Mutable, 0, v8 + 9.0, v9);
  CGPathAddLineToPoint(Mutable, 0, v8 + 9.0, v9 + 9.0);
  CGPathAddLineToPoint(Mutable, 0, v8, v9);
  return Mutable;
}

void TSTTableBadgeDrawCellOverflowIndicator(CGContext *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if ([+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")])
  {
    v12 = TSDCGContextAssociatedScreenScale(a1);
    if (a2 >= 0.75)
    {
      v14 = v12 * 12.5;
      v15 = v12 * 2.5;
      v16 = v12 * 11.0;
      v17 = v12 * 7.0;
      if (a2 < 1.0)
      {
        v18 = v12 * 5.0;
      }

      else
      {
        v18 = v12 * 7.0;
      }

      if (a2 < 1.0)
      {
        v17 = v12 * 5.0;
      }

      v42 = v17;
      if (a2 < 1.0)
      {
        v16 = v12 * 8.0;
      }

      v43 = v16;
      v44 = v18;
      if (a2 < 1.0)
      {
        v19 = v12 * 3.0;
      }

      else
      {
        v19 = v12 * 4.0;
      }

      if (a2 < 1.0)
      {
        v20 = v12 * 6.0;
      }

      else
      {
        v20 = v12 * 8.0;
      }

      v37 = v19;
      v39 = v20;
      if (a2 < 1.0)
      {
        v13 = v12 * 8.0;
      }

      else
      {
        v13 = v12 * 10.0;
      }

      if (a2 < 1.0)
      {
        v15 = v12 * 1.5;
        v14 = v12 * 9.5;
      }

      v33 = v14;
      v35 = v15;
    }

    else
    {
      v33 = v12 * 7.5;
      v35 = v12 * 1.5;
      v13 = v12 * 6.0;
      v42 = v12 * 4.0;
      v43 = v12 * 6.0;
      v44 = v12 * 3.0;
      v37 = v12 * 3.0;
      v39 = v12 * 5.0;
    }

    v41 = 1.0 / a2;
    CGContextSaveGState(a1);
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    CGContextClipToRect(a1, v48);
    memset(&v47, 0, sizeof(v47));
    CGContextGetCTM(&v47, a1);
    v47.tx = ceil(v47.tx) - v47.tx;
    v47.ty = v47.ty - ceil(v47.ty);
    v45 = v47;
    memset(&v46, 0, sizeof(v46));
    CGAffineTransformInvert(&v46, &v45);
    v45 = v47;
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    v50 = CGRectApplyAffineTransform(v49, &v45);
    y = v50.origin.y;
    width = v12 * v46.c + v46.a * v12;
    v22 = v50.origin.x + v50.size.width;
    v50.origin.x = v50.origin.x + v50.size.width - v33;
    v50.origin.y = v35 + v50.origin.y;
    v45 = v46;
    v50.size.width = v13;
    v50.size.height = v13;
    v51 = CGRectApplyAffineTransform(v50, &v45);
    x = v51.origin.x;
    v24 = v51.origin.y;
    v25 = v51.size.width;
    height = v51.size.height;
    v51.origin.x = v22 - v39;
    v51.origin.y = v37 + y;
    v45 = v46;
    v51.size.width = v12;
    v51.size.height = v44;
    v52 = CGRectApplyAffineTransform(v51, &v45);
    v38 = v52.origin.y;
    v40 = v52.origin.x;
    v34 = v52.size.height;
    v36 = v52.size.width;
    v52.origin.x = v22 - v43;
    v52.origin.y = v42 + y;
    v45 = v46;
    v52.size.width = v44;
    v52.size.height = v12;
    v53 = CGRectApplyAffineTransform(v52, &v45);
    v27 = v53.origin.x;
    v28 = v53.origin.y;
    v29 = v53.size.width;
    v30 = v53.size.height;
    CGContextSetLineWidth(a1, width);
    v31 = TSDCreateRoundRectPathForRectWithRadius(x, v24, v25, height, v41);
    CGContextSaveGState(a1);
    CGContextSetStrokeColorWithColor(a1, [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
    CGContextSetFillColorWithColor(a1, [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")]);
    CGContextAddPath(a1, v31);
    CGContextDrawPath(a1, kCGPathFillStroke);
    CGContextRestoreGState(a1);
    CGContextSaveGState(a1);
    CGContextSetFillColorWithColor(a1, [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
    v54.origin.y = v38;
    v54.origin.x = v40;
    v54.size.height = v34;
    v54.size.width = v36;
    CGContextFillRect(a1, v54);
    v55.origin.x = v27;
    v55.origin.y = v28;
    v55.size.width = v29;
    v55.size.height = v30;
    CGContextFillRect(a1, v55);
    CGContextRestoreGState(a1);
    CGPathRelease(v31);
    CGContextRestoreGState(a1);
  }
}

double TSTTableBadgeCheckboxSizeForScale(int a1, double a2, double a3)
{
  v9 = 0.0;
  v4 = [p_TSTTableBadgeCheckboxImageForScale(a1 &v9];
  if (!v4)
  {
    return *MEMORY[0x277CBF3A8];
  }

  v5 = v4;
  Width = CGImageGetWidth(v4);
  v7 = v9 / a3 * Width;
  CGImageGetHeight(v5);
  return v7;
}

void TSTTableBadgeDrawHorizontalShadow(CGContext *a1, int a2, CGFloat a3, double a4, CGFloat a5, double a6, CGFloat a7)
{
  v14 = TSDCGContextAssociatedScreenScale(a1);
  if (v14 == 1.0)
  {
    v15 = &TSTTableBadgeShadowAlphaValues1x;
  }

  else
  {
    v15 = &TSTTableBadgeShadowAlphaValues2x;
  }

  v16 = a4 + a7 * 0.5;
  v17 = a6 + a7 * 0.5;
  if (v14 == 1.0)
  {
    v18 = 5;
  }

  else
  {
    v18 = 10;
  }

  do
  {
    if (a2 == 2)
    {
      a5 = a5 + a7;
    }

    CGContextSaveGState(a1);
    CGContextBeginPath(a1);
    CGContextMoveToPoint(a1, a3, v16);
    CGContextAddLineToPoint(a1, a5, v17);
    CGContextSetLineWidth(a1, a7);
    v19 = [MEMORY[0x277D6C2A8] blackColor];
    v20 = *v15++;
    CGContextSetStrokeColorWithColor(a1, [objc_msgSend(v19 colorWithAlphaComponent:{v20), "CGColor"}]);
    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);
    v16 = v16 + a7;
    v17 = v17 + a7;
    --v18;
  }

  while (v18);
}

void TSTTableBadgeDrawVerticalShadow(CGContext *a1, int a2, double a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7)
{
  v14 = TSDCGContextAssociatedScreenScale(a1);
  if (v14 == 1.0)
  {
    v15 = &TSTTableBadgeShadowAlphaValues1x;
  }

  else
  {
    v15 = &TSTTableBadgeShadowAlphaValues2x;
  }

  v16 = a3 + a7 * 0.5;
  v17 = a5 + a7 * 0.5;
  if (v14 == 1.0)
  {
    v18 = 5;
  }

  else
  {
    v18 = 10;
  }

  do
  {
    CGContextSaveGState(a1);
    CGContextBeginPath(a1);
    CGContextMoveToPoint(a1, v16, a4);
    CGContextAddLineToPoint(a1, v17, a6);
    CGContextSetLineWidth(a1, a7);
    v19 = [MEMORY[0x277D6C2A8] blackColor];
    v20 = *v15++;
    CGContextSetStrokeColorWithColor(a1, [objc_msgSend(v19 colorWithAlphaComponent:{v20), "CGColor"}]);
    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);
    v16 = v16 + a7;
    v17 = v17 + a7;
    if (a2 == 2)
    {
      a6 = a6 + a7;
    }

    --v18;
  }

  while (v18);
}

uint64_t TSTTableBadgeContentsCenterInfoInit(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = result;
  if (!result)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableBadgeContentsCenterInfoInit(TSTTableBadgeContentsCenterInfo *, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat)"}];
    result = [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableBadge.m"), 738, @"invalid nil value for '%s'", "info"}];
  }

  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  return result;
}

uint64_t TSTTableDataStoreHeaderInfoForColumn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 48) object];

  return [v7 headerForKey:a2 willModify:a3 createIfNotThere:a4];
}

uint64_t privateRemoveIndexedItemsFromStorage(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = result;
    v5 = a3 + a2;
    do
    {
      result = [v4 removeHeaderForKey:v3];
      v3 = (v3 + 1);
    }

    while (v3 < v5);
  }

  return result;
}

uint64_t TSTTableDataStoreRemoveRowHeadersAtIndex(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = *(result + 40);
    v5 = a3 + a2;
    do
    {
      result = [v4 removeHeaderForKey:v3];
      v3 = (v3 + 1);
    }

    while (v3 < v5);
  }

  return result;
}

uint64_t TSTTableDataStoreShiftColumnHeaderIndexes(TSTTableDataStore *a1, uint64_t a2, uint64_t a3)
{
  v5 = [(TSPLazyReference *)a1->mColumnHeaderStorageReference object];

  return [v5 shiftKeysAtIndex:a2 amount:a3];
}

uint64_t TSTTableDataStoreRemoveColumnHeadersAtIndex(uint64_t a1, uint64_t a2, int a3)
{
  result = [*(a1 + 48) object];
  if (a3)
  {
    v6 = result;
    v7 = a3 + a2;
    do
    {
      result = [v6 removeHeaderForKey:a2];
      a2 = (a2 + 1);
    }

    while (a2 < v7);
  }

  return result;
}

uint64_t TSTDataStoreDecrementColumnCellCount(uint64_t result, TSTTableHeaderInfo *a2)
{
  v3 = result;
  mNumberOfCells = a2->mNumberOfCells;
  if (!mNumberOfCells)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTDataStoreDecrementColumnCellCount(TSTTableDataStore *, TSTTableHeaderInfo *)"}];
    result = [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 120, @"Can't drive column cell count below zero!"}];
    mNumberOfCells = a2->mNumberOfCells;
  }

  a2->mNumberOfCells = mNumberOfCells - 1;
  if (*(v3 + 156) == 1)
  {
    v7 = *(v3 + 152);
    if (!v7)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTDataStoreDecrementColumnCellCount(TSTTableDataStore *, TSTTableHeaderInfo *)"}];
      result = [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 124, @"Can't drive cell count below zero!"}];
      v7 = *(v3 + 152);
    }

    *(v3 + 152) = v7 - 1;
  }

  return result;
}

uint64_t TSTDataStoreIncrementColumnCellCount(uint64_t result, TSTTableHeaderInfo *a2)
{
  if (*(result + 156) == 1)
  {
    ++*(result + 152);
  }

  ++a2->mNumberOfCells;
  return result;
}

void TSTDataStoreDecrementRowCellCount(TSTTableDataStore *a1, TSTTableHeaderInfo *a2)
{
  mNumberOfCells = a2->mNumberOfCells;
  if (!mNumberOfCells)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTDataStoreDecrementRowCellCount(TSTTableDataStore *, TSTTableHeaderInfo *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 140, @"Can't drive row cell count below zero!"}];
    mNumberOfCells = a2->mNumberOfCells;
  }

  a2->mNumberOfCells = mNumberOfCells - 1;
}

uint64_t TSTTableDataStoreDecrementCellCounts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 40) headerForKey:a3 willModify:1 createIfNotThere:1];
  v7 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTableDataStoreDecrementCellCounts(TSTTableDataStore *, TSUColumnIndex, TSURowIndex)"}];
    v6 = [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 154, @"invalid nil value for '%s'", "rowInfo"}];
  }

  TSTDataStoreDecrementRowCellCount(v6, v7);
  if (v7->mSize == 0.0 && !v7->mNumberOfCells && !v7->mCellStyle && !v7->mTextStyle && !v7->mHidingState)
  {
    [*(a1 + 40) removeHeaderForKey:a3];
  }

  v10 = [objc_msgSend(*(a1 + 48) "object")];
  TSTDataStoreDecrementColumnCellCount(a1, v10);
  if (v10->mSize == 0.0 && !v10->mNumberOfCells && !v10->mCellStyle && !v10->mTextStyle && !v10->mHidingState)
  {
    [objc_msgSend(*(a1 + 48) "object")];
  }

  return 0;
}

uint64_t TSTTableDataStoreIncrementCellCounts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 40) headerForKey:a3 willModify:1 createIfNotThere:1];
  if (!v5)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTableDataStoreIncrementCellCounts(TSTTableDataStore *, TSUColumnIndex, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 173, @"invalid nil value for '%s'", "rowInfo"}];
  }

  ++*(v5 + 34);
  v8 = [objc_msgSend(*(a1 + 48) "object")];
  if (*(a1 + 156) == 1)
  {
    ++*(a1 + 152);
  }

  ++*(v8 + 34);
  return 0;
}

uint64_t TSTTableDataStoreNumberOfPopulatedCells(uint64_t a1)
{
  if ((*(a1 + 156) & 1) == 0)
  {
    v3 = 0;
    [objc_msgSend(*(a1 + 48) "object")];
    *(a1 + 152) = v3;
    *(a1 + 156) = 1;
  }

  return *(a1 + 152);
}

uint64_t p_findEmptyTiles(uint64_t result, unsigned int a2, void *a3)
{
  if (result)
  {
    v4 = result;
    result = [objc_msgSend(*(*a3 + 32) tileForID:{a2), "numRows"}];
    if (!result)
    {
      v5 = a3[1];

      return [v5 addIndex:v4];
    }
  }

  return result;
}

id TSTDataStoreGetTileForRow(TSTTableDataStore *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = TSTTableRBTreeStripIDForCellIndex(&a1->mRowTileIndex->var0, a2, a3);
  mTileStorage = a1->mTileStorage;

  return [(TSTTileIDKeyDict *)mTileStorage tileForID:v4];
}

uint64_t p_TileForRowIndex(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unsigned int *a4)
{
  v6 = TSTTableRBTreeStripIDForCellIndex(*(a1 + 24), a2, a3);
  result = [*(a1 + 32) tileForID:v6];
  if (a4)
  {
    if (result)
    {
      *a4 = v6;
    }
  }

  return result;
}

id TSTDataStoreGetTileAtOrAfterRow(TSTTableDataStore *a1, unsigned int a2, unsigned __int16 *a3)
{
  v6 = TSTTableRBFirstNodeGreaterThanOrEqualTo(&a1->mRowTileIndex->var0, a2);
  if (a2 && v6 == &TSTTableRBTreeNil)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *v6;
  }

  v8 = v6[1];
  mTileStorage = a1->mTileStorage;

  return [(TSTTileIDKeyDict *)mTileStorage tileForID:v8];
}

TSTTableTile *TSTDataStoreGetRowInfoForRow(TSTTableDataStore *a1, unsigned int a2)
{
  v2 = a2;
  v4 = -1;
  result = [(TSTTileIDKeyDict *)a1->mTileStorage tileForID:TSTTableRBTreeStripIDForCellIndex(&a1->mRowTileIndex->var0, a2, &v4)];
  if (result)
  {
    return TSTTableTileRowInfoForTileRowIndex(result, (v2 - v4), 0);
  }

  return result;
}

uint64_t TSTTableDataStoreIterateTiles(TSTTableDataStore *a1, TSTTableRBTreeNode_s *a2, void *a3, void (*a4)(TSTTableTile *, void *))
{
  do
  {
    var2 = a2->var2;
    if (var2 != &TSTTableRBTreeNil)
    {
      TSTTableDataStoreIterateTiles(a1, var2, a3, a4);
    }

    v9 = [(TSTTileIDKeyDict *)a1->mTileStorage tileForID:a2->var1];
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreIterateTiles(TSTTableDataStore *, TSTTableRBTreeNode *, void *, void (*)(TSTTableTile *, void *))"}];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 411, @"failure while iterating over tiles: error retrieving tile"}];
    }

    result = (a4)(v9, a3);
    a2 = a2->var3;
  }

  while (a2 != &TSTTableRBTreeNil);
  return result;
}

UInt8 *TSTTableDataStoreCellStorageRefAtCellID(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = [*(a1 + 32) tileForID:{TSTTableRBTreeStripIDForCellIndex(*(a1 + 24), a2, &v7)}];
  if (!v3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellStorageRef TSTTableDataStoreCellStorageRefAtCellID(TSTTableDataStore *, TSTCellID)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 431, @"Failed to get tile for cell!"}];
  }

  return TSTTableTileGetCellStorageRef(v3, BYTE2(a2), (a2 - v7));
}

uint64_t TSTTableDataStoreGetCellStyleAtCellID(uint64_t a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = TSTTableDataStoreCellStorageRefAtCellID(a1, a2);
  if (!v5)
  {
    return 1000;
  }

  if ((v5[4] & 2) == 0)
  {
    return 0;
  }

  Element = TSTCellStorageGetElement(v5, 2);
  if (!Element)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStyleID(TSTCellStorage *)"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 182, @"Can't get style ID storage element!"}];
  }

  result = 0;
  if (a3)
  {
    v10 = *Element;
    if (v10)
    {
      StyleForKey = TSTTableDataListGetStyleForKey([*(a1 + 72) object], v10);
      result = 0;
      *a3 = StyleForKey;
    }
  }

  return result;
}

uint64_t TSTTableDataStoreGetTextStyleAtCellID(uint64_t a1, int a2, TSWPParagraphStyle **a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = TSTTableDataStoreCellStorageRefAtCellID(a1, a2);
  if (!v5)
  {
    return 1000;
  }

  v6 = [[TSTCell alloc] initWithStorageRef:v5 dataStore:a1];
  if (a3)
  {
    if (v6)
    {
      mTextStyle = v6->mPrivate.mTextStyle;
    }

    else
    {
      mTextStyle = 0;
    }

    *a3 = mTextStyle;
  }

  return 0;
}

double TSTTableDataStoreGetFormatForFormatTypeAtCellID@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, UInt8 *a4@<X3>, uint64_t a5@<X8>, uint16x8_t a6@<Q0>)
{
  if (!a4)
  {
    a4 = TSTTableDataStoreCellStorageRefAtCellID(a1, a2);
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  v9 = 0;
  switch(a3)
  {
    case 254:
    case 260:
    case 263:
    case 267:
      goto LABEL_22;
    case 255:
      goto LABEL_15;
    case 256:
    case 258:
    case 259:
    case 262:
      v9 = 1;
      break;
    case 257:
      v9 = 8;
      break;
    case 261:
      v9 = 2;
      break;
    case 264:
    case 265:
      v9 = 16;
      break;
    case 266:
      v9 = 128;
      break;
    case 268:
      v9 = 4;
      break;
    case 269:
      v9 = 64;
      break;
    case 270:
    case 271:
    case 272:
      v9 = 32;
      break;
    default:
      if ((a3 + 1) < 3 || a3 == -999)
      {
        goto LABEL_22;
      }

      break;
  }

  if ((v9 & *(a4 + 5)) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  ElementForFormat = TSTCellStorageGetElementForFormat(a4, v9, a6);
  if (!ElementForFormat)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTCellStorageFormatIDForFormatFlag(TSTCellStorage *, TSTCellStorageFormatFlags)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 269, @"Can't get format ID storage element!"}];
  }

  v13 = *ElementForFormat;
  if (v13)
  {
    v14 = [*(a1 + 104) object];

    *&result = TSTTableDataListGetCellFormatForKey(v14, v13, a5).n128_u64[0];
  }

  else
  {
LABEL_22:
    *(a5 + 32) = 0;
    result = *&TSUNotSetFormat;
    *a5 = TSUNotSetFormat;
    *(a5 + 16) = *algn_26CA67B68;
  }

  return result;
}

double TSTTableDataStoreGetFormatAtCellID@<D0>(uint64_t a1@<X0>, int a2@<W1>, BOOL *a3@<X2>, UInt8 *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a4)
  {
    a4 = TSTTableDataStoreCellStorageRefAtCellID(a1, a2);
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  if (a3)
  {
    *a3 = (~*(a4 + 4) & 0x1000000004) != 0;
  }

  if ((a4[4] & 4) == 0)
  {
    goto LABEL_12;
  }

  Element = TSTCellStorageGetElement(a4, 4);
  if (!Element)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormatID(TSTCellStorage *)"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 249, @"Can't get format ID storage element!"}];
  }

  v11 = *Element;
  if (v11)
  {
    v12 = [*(a1 + 104) object];

    *&result = TSTTableDataListGetCellFormatForKey(v12, v11, a5).n128_u64[0];
  }

  else
  {
LABEL_12:
    *(a5 + 32) = 0;
    result = *&TSUNotSetFormat;
    *a5 = TSUNotSetFormat;
    *(a5 + 16) = *algn_26CA67B68;
  }

  return result;
}

__n128 p_TSTCellFormatForFormatFlag@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 7)
  {
    if (a2 <= 31)
    {
      if (a2 == 8)
      {
        if (a1)
        {
          v3 = a1[21];
          if (v3)
          {
            goto LABEL_8;
          }
        }
      }

      else if (a2 == 16)
      {
        if (a1)
        {
          v3 = a1[27];
          if (v3)
          {
            goto LABEL_8;
          }
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 32:
          if (a1)
          {
            v3 = a1[29];
            if (v3)
            {
              goto LABEL_8;
            }
          }

          break;
        case 64:
          if (a1)
          {
            v3 = a1[31];
            if (v3)
            {
              goto LABEL_8;
            }
          }

          break;
        case 128:
          if (a1)
          {
            v3 = a1[33];
            if (v3)
            {
LABEL_8:
              [v3 getFormatStruct];
              return result;
            }
          }

          break;
      }
    }

    goto LABEL_38;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a1)
      {
        v3 = a1[25];
        if (v3)
        {
          goto LABEL_8;
        }
      }
    }

    else if (a2 == 4)
    {
      if (a1)
      {
        v3 = a1[23];
        if (v3)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_38:
    *(a3 + 32) = 0;
    result.n128_u64[0] = TSUInvalidFormat;
    *a3 = TSUInvalidFormat;
    *(a3 + 16) = *algn_26CA67B90;
    return result;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        v3 = a1[19];
        if (v3)
        {
          goto LABEL_8;
        }
      }
    }

    goto LABEL_38;
  }

  if (a1)
  {
    v5 = (a1 + 13);
  }

  else
  {
    v5 = &TSUInvalidFormat;
  }

  result = *v5;
  v6 = v5[1];
  *a3 = *v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v5 + 4);
  return result;
}

uint64_t p_TSTCellFormatIDForFormatFlag(unsigned int *a1, int a2)
{
  result = 0;
  if (a2 <= 7)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a1)
        {
          return a1[48];
        }

        return 0;
      }

      if (a2 == 4)
      {
        if (a1)
        {
          return a1[44];
        }

        return 0;
      }
    }

    else
    {
      if (!a2)
      {
        if (a1)
        {
          return a1[25];
        }

        return 0;
      }

      if (a2 == 1)
      {
        if (a1)
        {
          return a1[36];
        }

        return 0;
      }
    }
  }

  else if (a2 <= 31)
  {
    if (a2 == 8)
    {
      if (a1)
      {
        return a1[40];
      }

      return 0;
    }

    if (a2 == 16)
    {
      if (a1)
      {
        return a1[52];
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 32:
        if (a1)
        {
          return a1[56];
        }

        return 0;
      case 64:
        if (!a1)
        {
          return 0;
        }

        return a1[60];
      case 128:
        if (a1)
        {
          return a1[64];
        }

        return 0;
    }
  }

  return result;
}

uint64_t p_UpdateDataListsForNewCell(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  if (!a3)
  {
    v11 = 0;
    v7 = 0;
    goto LABEL_13;
  }

  v6 = *(a3 + 4);
  if ((v6 & 0x10) != 0)
  {
    result = TSTCellStorageGetElement(a3, 16);
    v12 = result;
    if (!result)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStringID(TSTCellStorage *)"];
      result = [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 401, @"Can't get string ID storage element!"}];
    }

    v7 = *v12;
    v6 = *(v3 + 4);
    if ((v6 & 0x200) != 0)
    {
LABEL_4:
      result = TSTCellStorageGetElement(v3, 512);
      v8 = result;
      if (!result)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageRichTextPayloadID(TSTCellStorage *)"];
        result = [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 357, @"Can't get formula error ID storage element!"}];
      }

      v11 = *v8;
      if ((*(v3 + 4) & 0x1000) != 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_4;
    }
  }

  v11 = 0;
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  result = TSTCellStorageGetElement(v3, 4096);
  v16 = result;
  if (!result)
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = v11;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageCommentStorageID(TSTCellStorage *)"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
    v21 = v19;
    v11 = v18;
    result = [v17 handleFailureInFunction:v21 file:v20 lineNumber:382 description:@"Can't get cell comment ID storage element!"];
  }

  v15 = *v16;
LABEL_17:
  if (!a2 || *(a2 + 9) << 8 != 768)
  {
    if (v7)
    {
      result = TSTTableDataListRemoveReferenceForKey([v5[8] object], v7);
    }

    if (!a2)
    {
      goto LABEL_68;
    }

    goto LABEL_46;
  }

  v22 = v11;
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  if (v7)
  {
    v25 = v7 == v23;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v82 = v26;
  v27 = &OBJC_IVAR___TSTAnimation_mReverse;
  if (!v23)
  {
LABEL_40:
    result = TSTTableDataListAddString([v5[8] object], v24);
    if (*(a2 + 9) << 8 == 768)
    {
      *(a2 + 16) = result;
    }

    else
    {
      v30 = [MEMORY[0x277D6C290] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringID(TSTCell *, TSTTableDataListKey)"}];
      v27 = &OBJC_IVAR___TSTAnimation_mReverse;
      result = [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 958, @"can't set string ID on non-string cell: %p", a2}];
    }

LABEL_44:
    v11 = v22;
    if ((v82 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  result = TSTTableDataListGetStringForKey([v5[8] object], v23);
  v28 = result;
  if (v24)
  {
    if (result)
    {
      result = [v24 isEqualToString:result];
      if ((result & 1) == 0)
      {
        v81 = [MEMORY[0x277D6C290] currentHandler];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
        v27 = &OBJC_IVAR___TSTAnimation_mReverse;
        result = [v81 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 920, @"Corrupted string keys!"}];
      }

      if (v7 != v23)
      {
        result = TSTTableDataListAddReferenceForKey([v5[8] object], v23);
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (!result)
  {
    v32 = [MEMORY[0x277D6C290] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
    v27 = &OBJC_IVAR___TSTAnimation_mReverse;
    result = [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 930, @"Handed a bad string key!", v80}];
    goto LABEL_44;
  }

LABEL_38:
  v11 = v22;
  if (v82)
  {
LABEL_45:
    result = TSTTableDataListRemoveReferenceForKey([*(v5 + v27[36]) object], v7);
  }

LABEL_46:
  v34 = *(a2 + 72);
  v35 = *(a2 + 64);
  if (!v34)
  {
    if (v35)
    {
      v83 = v11;
      if (v11)
      {
        v40 = v11 == v35;
      }

      else
      {
        v40 = 1;
      }

      v41 = !v40;
      result = TSTTableDataListGetRichTextPayloadForKey([v5[12] object], v35);
      if (result)
      {
        if (v41)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v78 = [MEMORY[0x277D6C290] currentHandler];
        v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
        result = [v78 handleFailureInFunction:v79 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1075, @"Handed a bad text storage key!"}];
        if (v41)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_74;
    }

LABEL_68:
    if (v11)
    {
      result = TSTTableDataListRemoveReferenceForKey([v5[12] object], v11);
    }

    if (!a2)
    {
      goto LABEL_96;
    }

    goto LABEL_74;
  }

  v83 = v11;
  if (v11)
  {
    v36 = v11 == v35;
  }

  else
  {
    v36 = 1;
  }

  v37 = !v36;
  v38 = [v5[12] object];
  if (!v35 || (RichTextPayloadForKey = TSTTableDataListGetRichTextPayloadForKey(v38, v35), v38 = [v5[12] object], !RichTextPayloadForKey))
  {
    result = TSTTableDataListAddRichTextPayload(v38, v34);
    *(a2 + 64) = result;
    if ((v37 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v83 != v35)
  {
    result = TSTTableDataListAddReferenceForKey(&v38->super.super.isa, v35);
    if ((v37 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_73:
    result = TSTTableDataListRemoveReferenceForKey([v5[12] object], v83);
    goto LABEL_74;
  }

  result = [v34 isEqual:{TSTTableDataListGetRichTextPayloadForKey(v38, v83)}];
  if ((result & 1) == 0)
  {
    v63 = [MEMORY[0x277D6C290] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
    result = [v63 handleFailureInFunction:v64 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1070, @"Corrupted rich text storage table!"}];
  }

LABEL_74:
  v42 = *(a2 + 88);
  v43 = *(a2 + 80);
  if (!v42)
  {
    if (v43)
    {
      if (v15)
      {
        v48 = v15 == v43;
      }

      else
      {
        v48 = 1;
      }

      v49 = !v48;
      result = TSTTableDataListGetCommentStorageForKey([v5[15] object], v43);
      if (result)
      {
        if (v49)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v65 = [MEMORY[0x277D6C290] currentHandler];
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
        result = [v65 handleFailureInFunction:v66 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1117, @"Handed a cell comment key!"}];
        if (v49)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_105;
    }

LABEL_96:
    if (v15)
    {
      result = TSTTableDataListRemoveReferenceForKey([v5[15] object], v15);
    }

    if (!a2)
    {
      v50 = 0;
      v51 = 0;
      if (!v3)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if (v15)
  {
    v44 = v15 == v43;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  v46 = [v5[15] object];
  if (!v43)
  {
    v52 = v42;
    goto LABEL_103;
  }

  CommentStorageForKey = TSTTableDataListGetCommentStorageForKey(v46, v43);
  if (!CommentStorageForKey)
  {
    v46 = [v5[15] object];
    v52 = v42;
LABEL_103:
    result = TSTTableDataListAddCommentStorage(v46, v52);
    *(a2 + 80) = result;
    if ((v45 & 1) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (v15 != v43)
  {
    result = TSTTableDataListAddReferenceForKey([v5[15] object], v43);
    if ((v45 & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_104:
    result = TSTTableDataListRemoveReferenceForKey([v5[15] object], v15);
    goto LABEL_105;
  }

  result = [v42 isEqual:CommentStorageForKey];
  if ((result & 1) == 0)
  {
    v61 = [MEMORY[0x277D6C290] currentHandler];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
    result = [v61 handleFailureInFunction:v62 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1112, @"Corrupted cell comment table!"}];
  }

LABEL_105:
  v50 = *(a2 + 40);
  v51 = *(a2 + 32);
  if (!v3)
  {
LABEL_107:
    v53 = 0;
    goto LABEL_111;
  }

LABEL_106:
  if ((*(v3 + 4) & 2) == 0)
  {
    goto LABEL_107;
  }

  result = TSTCellStorageGetElement(v3, 2);
  v54 = result;
  if (!result)
  {
    v55 = [MEMORY[0x277D6C290] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStyleID(TSTCellStorage *)"];
    result = [v55 handleFailureInFunction:v56 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 182, @"Can't get style ID storage element!"}];
  }

  v53 = *v54;
LABEL_111:
  if (v53)
  {
    v57 = v53 == v51;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;
  if (v50 || v51)
  {
    if (!v51)
    {
      goto LABEL_133;
    }

    if (!v50)
    {
      goto LABEL_134;
    }

    StyleForKey = TSTTableDataListGetStyleForKey([v5[9] object], v51);
    if (StyleForKey)
    {
      result = [v50 isEqual:StyleForKey];
      if ((result & 1) == 0)
      {
        v84 = [MEMORY[0x277D6C290] currentHandler];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
        result = [v84 handleFailureInFunction:v60 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1162, @"Corrupted style keys!"}];
      }

      if (v53 != v51)
      {
        result = TSTTableDataListAddReferenceForKey([v5[9] object], v51);
      }
    }

    else
    {
LABEL_133:
      result = TSTTableDataListAddStyle([v5[9] object], v50);
      *(a2 + 32) = result;
    }
  }

LABEL_134:
  if (v58)
  {
    result = TSTTableDataListRemoveReferenceForKey([v5[9] object], v53);
  }

  if (v3)
  {
    if ((*(v3 + 4) & 0x80) != 0)
    {
      result = TSTCellStorageGetElement(v3, 128);
      v69 = result;
      if (!result)
      {
        v70 = [MEMORY[0x277D6C290] currentHandler];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageTextStyleID(TSTCellStorage *)"];
        result = [v70 handleFailureInFunction:v71 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 201, @"Can't get style ID storage element!"}];
      }

      v3 = *v69;
      if (a2)
      {
        goto LABEL_140;
      }

      goto LABEL_144;
    }

    v3 = 0;
  }

  if (a2)
  {
LABEL_140:
    v67 = *(a2 + 48);
    v68 = *(a2 + 56);
    goto LABEL_145;
  }

LABEL_144:
  v67 = 0;
  v68 = 0;
LABEL_145:
  if (v3)
  {
    v72 = v3 == v67;
  }

  else
  {
    v72 = 1;
  }

  v73 = !v72;
  if (v68 || v67)
  {
    if (!v67)
    {
      goto LABEL_164;
    }

    if (!v68)
    {
      goto LABEL_160;
    }

    v74 = TSTTableDataListGetStyleForKey([v5[9] object], v67);
    if (!v74)
    {
LABEL_164:
      result = TSTTableDataListAddStyle([v5[9] object], v68);
      *(a2 + 48) = result;
      if (!v73)
      {
        return result;
      }

      goto LABEL_161;
    }

    result = [v68 isEqual:v74];
    if ((result & 1) == 0)
    {
      v75 = [MEMORY[0x277D6C290] currentHandler];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_UpdateDataListsForNewCell(TSTTableDataStore *, TSTCell *, TSTCellStorageRef, TSTCellID, CFUUIDRef, TSCECalculationEngine *)"}];
      result = [v75 handleFailureInFunction:v76 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1205, @"Corrupted style keys!"}];
    }

    if (v3 != v67)
    {
      result = TSTTableDataListAddReferenceForKey([v5[9] object], v67);
    }
  }

LABEL_160:
  if (!v73)
  {
    return result;
  }

LABEL_161:
  v77 = [v5[9] object];

  return TSTTableDataListRemoveReferenceForKey(v77, v3);
}

uint64_t TSTTableDataStoreSetCellAtCellID(void *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v6 = a3 >> 16;
  v16 = 0;
  v7 = p_TileForRowIndex(a1, a3, &v16, &v15);
  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreSetCellAtCellID(TSTTableDataStore *, TSTCell *, TSTCellID, CFUUIDRef, TSCECalculationEngine *, TSTConditionalStyleFormulaOwner *, BOOL)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1308, @"Failed to get tile for cell!"}];
  }

  v10 = v3 - v16;
  CellStorageRef = TSTTableTileGetCellStorageRef(v7, v6, (v3 - v16));
  p_UpdateDataListsForNewCell(a1, a2, CellStorageRef);
  TSTTableTileSetCell(v7, v6, v10, a2);
  result = TSTTableTileShouldSplitRows(v7);
  if (result)
  {
    v13 = v16;
    [a1 willModify];
    MidpointForRowSplit = TSTTableTileFindMidpointForRowSplit(v7);
    result = p_SplitTileAtRowIndex(a1, v7, v13, MidpointForRowSplit + v13);
  }

  else if (!a2)
  {
    result = TSTTableTileShouldMergeRows(v7);
    if (result)
    {
      result = p_MergeTileRows(a1, v7, v16, v15);
    }

    goto LABEL_11;
  }

  if (a2 && !CellStorageRef)
  {
    return TSTTableDataStoreIncrementCellCounts(a1, v6, v3);
  }

LABEL_11:
  if (!a2)
  {
    if (CellStorageRef)
    {
      return TSTTableDataStoreDecrementCellCounts(a1, v6, v3);
    }
  }

  return result;
}

unsigned __int16 *p_MergeTileRows(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  [a1 willModify];
  if (!TSTTableTileShouldMergeRows(a2))
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_MergeTileRows(TSTTableDataStore *, TSTTableTile *, TSURowIndex, TSTTableTileID)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 269, @"Shouldn't merge a tile that doesn't want to merge!"}];
  }

  result = TSTTableRBFirstNodeGreaterThanOrEqualTo(*(a1 + 24), (a3 + 1));
  if (result)
  {
    v11 = result == &TSTTableRBTreeNil;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = result;
    v13 = *result;
    if ([a2 maxRow] + a3 >= v13)
    {
      v14 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_MergeTileRows(TSTTableDataStore *, TSTTableTile *, TSURowIndex, TSTTableTileID)"}];
      [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 274, @"Tile rbtree is corrupt!"}];
    }

    v16 = *v12;
    v17 = v12[1];
    v18 = [*(a1 + 32) tileForID:v17];
    if (![v18 numRows])
    {
      goto LABEL_12;
    }

    result = TSTTableTilesShouldMergeRowsTogether(a2, v18);
    if (result)
    {
      TSTTableTileMergeRows(a2, v18, (v16 - a3));
LABEL_12:
      *(a1 + 24) = TSTTableRBTreeDelete(*(a1 + 24), v12);
      result = [*(a1 + 32) removeTileForID:v17];
    }
  }

  if (a3)
  {
    result = TSTTableTileShouldMergeRows(a2);
    if (result)
    {
      v25 = a3 - 1;
      v19 = [*(a1 + 32) tileForID:{TSTTableRBTreeStripIDForCellIndex(*(a1 + 24), (a3 - 1), &v25)}];
      result = TSTTableTilesShouldMergeRowsTogether(v19, a2);
      if (result)
      {
        TSTTableTileMergeRows(v19, a2, (a3 - v25));
        v20 = TSTTableRBTreeFind(*(a1 + 24), a3);
        if (*v20 != a3)
        {
          v21 = [MEMORY[0x277D6C290] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_MergeTileRows(TSTTableDataStore *, TSTTableTile *, TSURowIndex, TSTTableTileID)"}];
          [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 310, @"Found the wrong node (bad key)!"}];
        }

        if (v20[1] != a4)
        {
          v23 = [MEMORY[0x277D6C290] currentHandler];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_MergeTileRows(TSTTableDataStore *, TSTTableTile *, TSURowIndex, TSTTableTileID)"}];
          [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 311, @"Found the wrong node (bad value)!"}];
        }

        *(a1 + 24) = TSTTableRBTreeDelete(*(a1 + 24), v20);
        return [*(a1 + 32) removeTileForID:a4];
      }
    }
  }

  return result;
}

uint64_t TSTTableDataStoreSetCellsWithCellMap(void *a1, void *a2)
{
  v20 = -1;
  result = [a2 count];
  v19 = result;
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xFFFF;
    do
    {
      v8 = [a2 cellIDAtIndex:v6];
      v9 = [a2 cellAtIndex:v6];
      if (!v5 || ((v10 = v20, v8 >= v20) ? (v11 = v8 > v7) : (v11 = 1), v11))
      {
        v5 = p_TileForRowIndex(a1, v8, &v20, &v21);
        if (!v5)
        {
          v12 = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreSetCellsWithCellMap(TSTTableDataStore *, id<TSTCellMap>, CFUUIDRef, TSCECalculationEngine *, TSTConditionalStyleFormulaOwner *, BOOL, BOOL)"}];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1378, @"Failed to get a tile while setting a map!"}];
        }

        v7 = [(TSTTableTile *)v5 maxRow];
        v10 = v20;
      }

      v14 = v8 - v10;
      CellStorageRef = TSTTableTileGetCellStorageRef(v5, BYTE2(v8), (v8 - v10));
      TSTTableTileSetCell(v5, BYTE2(v8), v14, v9);
      result = TSTTableTileShouldSplitRows(v5);
      if (result)
      {
        v16 = v20;
        [a1 willModify];
        MidpointForRowSplit = TSTTableTileFindMidpointForRowSplit(v5);
        result = p_SplitTileAtRowIndex(a1, v5, v16, MidpointForRowSplit + v16);
        v5 = 0;
      }

      else if (!v9)
      {
        result = TSTTableTileShouldMergeRows(v5);
        if (result)
        {
          v18 = v18 & 0xFFFFFFFF00000000 | v21;
          result = p_MergeTileRows(a1, v5, v20, v21);
          v5 = 0;
        }

LABEL_20:
        if (!v9)
        {
          if (CellStorageRef)
          {
            result = TSTTableDataStoreDecrementCellCounts(a1, BYTE2(v8), v8);
          }
        }

        goto LABEL_23;
      }

      if (!v9 || CellStorageRef)
      {
        goto LABEL_20;
      }

      result = TSTTableDataStoreIncrementCellCounts(a1, BYTE2(v8), v8);
LABEL_23:
      ++v6;
    }

    while (v19 != v6);
  }

  return result;
}

void *TSTTableDataStorePopulateCustomFormat(void *result, uint64_t a2, double a3)
{
  if ((*a2 - 270) <= 2)
  {
    v5 = result;
    v6 = [result documentRoot];
    if (v6 && (v7 = v6, (objc_opt_respondsToSelector() & 1) != 0) && (result = [objc_msgSend(v7 "customFormatList")]) != 0 || (result = v5[16]) != 0 && (result = objc_msgSend(result, "customFormatForKey:", *(a2 + 8))) != 0)
    {
      if (*a2 == 270)
      {
        result = TSUCustomFormat::formatByEvaluatingConditionsWithDouble(result, a3);
      }

      else
      {
        result = TSUCustomFormat::defaultFormatData(result);
      }

      *(a2 + 16) = result;
    }

    else
    {
      *(a2 + 16) = 0;
    }
  }

  return result;
}

void TSTTableDataStoreResolveCellDataIDs(id *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(a2 + 9) << 8 == 768)
    {
      v4 = *(a2 + 16);
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreResolveCellDataIDs(TSTTableDataStore *, TSTCell *, BOOL, BOOL)"}];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1481, @"String cell has bad string!"}];
      }

      StringForKey = TSTTableDataListGetStringForKey([a1[8] object], v4);
      v8 = *(a2 + 8);
      if ((v8 & 0xFF00) == 0)
      {
        TSTCellClearValue(a2);
        *(a2 + 9) = 3;
        v8 = *(a2 + 8);
      }

      if ((v8 & 0xFF00) == 0x300)
      {
        v9 = *(a2 + 24);
        if (v9 != StringForKey)
        {

          *(a2 + 24) = StringForKey;
          v10 = HIWORD(*(a2 + 8));
          v11 = [StringForKey rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
          v12 = v10 | 1;
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v10 & 0xFFFE;
          }

          *(a2 + 10) = v12;
        }
      }

      else
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringValueClearingID(TSTCell *, NSString *, BOOL)"}];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1003, @"can't set string on non-string cell: %p", a2}];
      }
    }

    v15 = *(a2 + 64);
    if (v15)
    {
      RichTextPayloadForKey = TSTTableDataListGetRichTextPayloadForKey([a1[12] object], v15);
      TSTCellSetRichTextPayloadClearingIDConvertToPlaintext(a2, RichTextPayloadForKey, 0, 1);
    }

    v17 = *(a2 + 80);
    if (v17)
    {
      CommentStorageForKey = TSTTableDataListGetCommentStorageForKey([a1[15] object], v17);
      TSTCellSetCommentStorageClearingID(a2, CommentStorageForKey, 0);
    }

    v19 = *(a2 + 32);
    if (v19)
    {
      StyleForKey = TSTTableDataListGetStyleForKey([a1[9] object], v19);
      v21 = *(a2 + 40);
      if (v21 != StyleForKey)
      {
        v22 = StyleForKey;

        *(a2 + 40) = v22;
      }
    }

    v23 = *(a2 + 48);
    if (v23)
    {
      v24 = TSTTableDataListGetStyleForKey([a1[9] object], v23);
      v25 = *(a2 + 56);
      if (v25 != v24)
      {
        v26 = v24;

        *(a2 + 56) = v26;
      }
    }

    if ((*(a2 + 104) & 0xFFFFFFFE) == 0x108)
    {
      v27 = *(a2 + 120);
      v40 = *(a2 + 104);
      v41 = v27;
      v28 = *(a2 + 136);
      if ((v28 - 256) <= 6 && ((1 << v28) & 0x4D) != 0)
      {
        v30 = *(a2 + 140);
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v31 = *(a2 + 152);
        if (v31)
        {
          [v31 getFormatStruct];
          v32 = v37;
          if (v28 == v37)
          {
            return;
          }
        }

        else
        {
          v39 = 0;
          v37 = TSUInvalidFormat;
          v38 = *algn_26CA67B90;
          v32 = -1;
        }

        if ((*(a2 + 96) & 0x10) != 0)
        {
          v33 = v40;
          v34 = v41;
          v35 = v32;
          v36 = v30;
          TSTCellSetExplicitFormat(a2, &v33);
        }

        else
        {
          v33 = v40;
          v34 = v41;
          v35 = v32;
          v36 = v30;
          TSTCellSetImplicitFormat(a2, &v33);
        }
      }
    }
  }
}

id *TSTTableDataStoreClearDataListEntriesForCellStorageRef(id *result, TSTCellStorage *a2)
{
  if (a2)
  {
    v3 = result;
    if ((*(&a2->var0 + 4) & 0x10) != 0)
    {
      result = TSTCellStorageGetElement(a2, 16);
      v4 = result;
      if (!result)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStringID(TSTCellStorage *)"];
        result = [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 401, @"Can't get string ID storage element!"}];
      }

      v7 = *v4;
      if (v7)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[8] object], v7);
        if ((*(&a2->var0 + 4) & 0x10) != 0)
        {
          result = TSTCellStorageGetElement(a2, 16);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 4) & 8) != 0)
    {
      result = TSTCellStorageGetElement(a2, 8);
      v8 = result;
      if (!result)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormulaID(TSTCellStorage *)"];
        result = [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 319, @"Can't get formula ID storage element!"}];
      }

      v11 = *v8;
      if (v11)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[10] object], v11);
        if ((*(&a2->var0 + 4) & 8) != 0)
        {
          result = TSTCellStorageGetElement(a2, 8);
          *result = 0;
        }
      }
    }

    if (*(&a2->var0 + 5))
    {
      result = TSTCellStorageGetElement(a2, 256);
      v12 = result;
      if (!result)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormulaErrorID(TSTCellStorage *)"];
        result = [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 338, @"Can't get formula error ID storage element!"}];
      }

      v15 = *v12;
      if (v15)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[11] object], v15);
        if (*(&a2->var0 + 5))
        {
          result = TSTCellStorageGetElement(a2, 256);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 5) & 2) != 0)
    {
      result = TSTCellStorageGetElement(a2, 512);
      v16 = result;
      if (!result)
      {
        v17 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageRichTextPayloadID(TSTCellStorage *)"];
        result = [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 357, @"Can't get formula error ID storage element!"}];
      }

      v19 = *v16;
      if (v19)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[12] object], v19);
        if ((*(&a2->var0 + 5) & 2) != 0)
        {
          result = TSTCellStorageGetElement(a2, 512);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 5) & 0x10) != 0)
    {
      result = TSTCellStorageGetElement(a2, 4096);
      v20 = result;
      if (!result)
      {
        v21 = [MEMORY[0x277D6C290] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageCommentStorageID(TSTCellStorage *)"];
        result = [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 382, @"Can't get cell comment ID storage element!"}];
      }

      v23 = *v20;
      if (v23)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[15] object], v23);
        if ((*(&a2->var0 + 5) & 0x10) != 0)
        {
          result = TSTCellStorageGetElement(a2, 4096);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 4) & 2) != 0)
    {
      result = TSTCellStorageGetElement(a2, 2);
      v24 = result;
      if (!result)
      {
        v25 = [MEMORY[0x277D6C290] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStyleID(TSTCellStorage *)"];
        result = [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 182, @"Can't get style ID storage element!"}];
      }

      v27 = *v24;
      if (v27)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[9] object], v27);
        if ((*(&a2->var0 + 4) & 2) != 0)
        {
          result = TSTCellStorageGetElement(a2, 2);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 4) & 0x80) != 0)
    {
      result = TSTCellStorageGetElement(a2, 128);
      v28 = result;
      if (!result)
      {
        v29 = [MEMORY[0x277D6C290] currentHandler];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageTextStyleID(TSTCellStorage *)"];
        result = [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 201, @"Can't get style ID storage element!"}];
      }

      v31 = *v28;
      if (v31)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[9] object], v31);
        if ((*(&a2->var0 + 4) & 0x80) != 0)
        {
          result = TSTCellStorageGetElement(a2, 128);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 4) & 4) != 0)
    {
      result = TSTCellStorageGetElement(a2, 4);
      v32 = result;
      if (!result)
      {
        v33 = [MEMORY[0x277D6C290] currentHandler];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormatID(TSTCellStorage *)"];
        result = [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 249, @"Can't get format ID storage element!"}];
      }

      v35 = *v32;
      if (v35)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[13] object], v35);
        if ((*(&a2->var0 + 4) & 4) != 0)
        {
          result = TSTCellStorageGetElement(a2, 4);
          *result = 0;
        }
      }
    }

    if ((*(&a2->var0 + 4) & 4) != 0)
    {
      result = TSTCellStorageGetElement(a2, 4);
      v36 = result;
      if (!result)
      {
        v37 = [MEMORY[0x277D6C290] currentHandler];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormatID(TSTCellStorage *)"];
        result = [v37 handleFailureInFunction:v38 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"), 249, @"Can't get format ID storage element!"}];
      }

      v39 = *v36;
      if (v39)
      {
        result = TSTTableDataListRemoveReferenceForKey([v3[14] object], v39);
        if ((*(&a2->var0 + 4) & 4) != 0)
        {
          result = TSTCellStorageGetElement(a2, 4);
          *result = 0;
        }
      }
    }
  }

  return result;
}

uint64_t privateGetStorageObjectFromDictionary(const __CFDictionary *a1, int a2, void *a3)
{
  key = a2;
  Value = CFDictionaryGetValue(a1, &key);
  if (!Value)
  {
    return 2;
  }

  v5 = Value;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t TSTTableDataStoreInsertRows(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  [a1 willModify];
  v11 = 0;
  v8 = [*(a1 + 32) tileForID:{TSTTableRBTreeStripIDForCellIndex(*(a1 + 24), a2, &v11)}];
  if (!v8)
  {
    return 2;
  }

  TSTTableTileInsertRows(v8, (a2 - v11), a3, a4);
  v9 = *(a1 + 24);
  if (a4)
  {
    TSTTableRBTreeShiftNodesAfter(v9, a2, a3);
  }

  else
  {
    LOWORD(a2) = a2 + 1;
    TSTTableRBTreeShiftNodesAtOrAfter(v9, a2, a3);
  }

  [*(a1 + 40) shiftKeysAtIndex:a2 amount:a3];
  return 0;
}

uint64_t TSTTableDataStoreInsertColumns(TSTTableDataStore *a1, char a2, uint64_t a3, char a4)
{
  [(TSPContainedObject *)a1 willModify];
  v9[0] = a2;
  v11 = a4;
  v10 = a3;
  TSTTableDataStoreIterateTiles(a1, a1->mRowTileIndex, v9, privateInsertColumnsIntoTile);
  return [-[TSPLazyReference object](a1->mColumnHeaderStorageReference "object")];
}

uint64_t p_updateColumnCellCountsForDeletionGivenTile(TSTTableDataStore *a1, TSTTableTile *a2, unsigned int a3, int a4)
{
  result = [(TSTTableTile *)a2 numRows];
  if (result)
  {
    v9 = 0;
    v10 = [(TSTTableTile *)a2 numRows]- 1;
    v11 = a3 + a4;
    do
    {
      result = TSTTableTileRowInfoForRowArrayIndex(a2, (v10 - v9));
      v12 = *(result + 536);
      if (v12 >= a3 && v11 > v12)
      {
        v14 = result;
        if (*(result + 538))
        {
          if ((*(result + 541) & 1) == 0)
          {
            TSTTableTileRowInfoRecalculateMaxTileColumnIndex(result);
          }

          v15 = 0;
          v16 = *(v14 + 540);
          do
          {
            result = TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(v14, v15);
            if (result)
            {
              result = [-[TSPLazyReference object](a1->mColumnHeaderStorageReference "object")];
              if (result)
              {
                result = TSTDataStoreDecrementColumnCellCount(a1, result);
              }
            }

            ++v15;
          }

          while (v16 >= v15);
        }
      }

      ++v9;
    }

    while (v9 <= v10);
  }

  return result;
}

uint64_t TSTTableDataStoreRemoveRows(TSTTableDataStore *a1, uint64_t a2, int a3)
{
  [(TSPContainedObject *)a1 willModify];
  v6 = a3 + a2;
  v7 = &OBJC_IVAR___TSTAnimation_mReverse;
  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
  if (a3)
  {
    v34 = a3 + a2;
    v35 = a3;
    v9 = a3;
    v37 = a2;
    do
    {
      v40 = -1;
      v10 = v8;
      v11 = TSTTableRBTreeStripIDForCellIndex(*(&a1->super.super.isa + v8[33]), (v6 - 1), &v40);
      v12 = [(TSTTileIDKeyDict *)a1->mTileStorage tileForID:v11];
      if (!v12)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreRemoveRows(TSTTableDataStore *, TSURowIndex, TSUColumnRowCount)"}];
        a2 = v37;
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1841, @"Couldn't find a tile for row %hu!", (v6 - 1)}];
      }

      v15 = v40;
      if (v40 > (v6 - 1))
      {
        v16 = [MEMORY[0x277D6C290] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreRemoveRows(TSTTableDataStore *, TSURowIndex, TSUColumnRowCount)"}];
        a2 = v37;
        [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1842, @"Tile for row deletion doesn't match!"}];
        v15 = v40;
      }

      v18 = v6 - v15;
      if (v15 <= a2)
      {
        v18 = v9;
      }

      v19 = a2 >= v15;
      v20 = a2 - v15;
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v18;
      p_updateColumnCellCountsForDeletionGivenTile(a1, v12, v21, v18);
      TSTTableTileRemoveRows(v12, v21, v22);
      if ([(TSTTableTile *)v12 numRows])
      {
        v8 = v10;
      }

      else
      {
        v8 = v10;
        v23 = TSTTableRBTreeFind(*(&a1->super.super.isa + v10[33]), v40);
        *(&a1->super.super.isa + v10[33]) = TSTTableRBTreeDelete(*(&a1->super.super.isa + v10[33]), v23);
        v36 = v36 & 0xFFFFFFFF00000000 | v11;
        [(TSTTileIDKeyDict *)a1->mTileStorage removeTileForID:?];
      }

      v9 -= v22;
      v6 = v40 + v21;
      TSTTableRBTreeShiftNodesAfter(*(&a1->super.super.isa + v8[33]), v40, -v22);
    }

    while (v9);
    v7 = &OBJC_IVAR___TSTAnimation_mReverse;
    mRowHeaderStorage = a1->mRowHeaderStorage;
    v25 = a2;
    v6 = v34;
    a3 = v35;
    do
    {
      [(TSTTableHeaderStorage *)mRowHeaderStorage removeHeaderForKey:v25];
      v25 = (v25 + 1);
    }

    while (v25 < v34);
  }

  [*(&a1->super.super.isa + v7[27]) shiftKeysAtIndex:v6 amount:-a3];
  if ([(TSTTileIDKeyDict *)a1->mTileStorage tileForID:TSTTableRBTreeStripIDForCellIndex(*(&a1->super.super.isa + v8[33]), 0, 0)])
  {
    if (a2)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = 0xFFFF;
    goto LABEL_24;
  }

  mNextRowStripID = a1->mNextRowStripID;
  a1->mNextRowStripID = mNextRowStripID + 1;
  v29 = [[TSTTableTile alloc] initWithContext:[(TSPObject *)[(TSPContainedObject *)a1 owner] context]];
  v30 = TSTTableRBTreeNewNode(0, mNextRowStripID);
  *(&a1->super.super.isa + v8[33]) = TSTTableRBTreeInsert(*(&a1->super.super.isa + v8[33]), v30);
  [(TSTTileIDKeyDict *)a1->mTileStorage setTile:v29 forID:mNextRowStripID];

  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_20:
  v39 = 0;
  v26 = TSTTableRBTreeStripIDForCellIndex(*(&a1->super.super.isa + v8[33]), (a2 - 1), &v39);
  v27 = [(TSTTileIDKeyDict *)a1->mTileStorage tileForID:v26];
  if (TSTTableTileShouldMergeRows(v27))
  {
    p_MergeTileRows(a1, v27, v39, v26);
  }

LABEL_24:
  v38 = 0;
  result = TSTTableRBTreeStripIDForCellIndex(*(&a1->super.super.isa + v8[33]), a2, &v38);
  if (v26 != result)
  {
    v32 = result;
    v33 = [(TSTTileIDKeyDict *)a1->mTileStorage tileForID:result];
    result = TSTTableTileShouldMergeRows(v33);
    if (result)
    {
      return p_MergeTileRows(a1, v33, v38, v32);
    }
  }

  return result;
}

uint64_t TSTTableDataStoreRemoveColumns(TSTTableDataStore *a1, uint64_t a2, int a3)
{
  [(TSPContainedObject *)a1 willModify];
  v10[0] = a2;
  v12 = 0;
  v11 = a3;
  TSTTableDataStoreIterateTiles(a1, a1->mRowTileIndex, v10, privateRemoveColumnsFromTile);
  v6 = [(TSPLazyReference *)a1->mColumnHeaderStorageReference object];
  v7 = a3 + a2;
  if (a3)
  {
    v8 = v6;
    do
    {
      [v8 removeHeaderForKey:a2];
      a2 = (a2 + 1);
    }

    while (a2 < v7);
  }

  [-[TSPLazyReference object](a1->mColumnHeaderStorageReference "object")];
  a1->mCellCountValid = 0;
  return TSTTableDataStoreNumberOfPopulatedCells(a1);
}

void TSTTableDataStoreMoveRows(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  if (a3 > a2 && a4 + a2 > a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreMoveRows(TSTTableDataStore *, TSURowIndex, TSURowIndex, TSUColumnRowCount)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1978, @"Move row ranges cannot overlap!"}];
  }

  v20 = -1;
  v8 = p_TileForRowIndex(a1, a2, &v20, &v19);
  v9 = a2;
  if (v8)
  {
    if (v20 != a2)
    {
      p_SplitTileAtRowIndex(a1, v8, v20, a2);
      v10 = p_TileForRowIndex(a1, a2, &v20, &v19);
      v9 = a2;
      if (!v10 || v20 != a2)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreMoveRows(TSTTableDataStore *, TSURowIndex, TSURowIndex, TSUColumnRowCount)"}];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 1993, @"Tile tree isn't in the expected state after forced split!"}];
        v9 = a2;
      }
    }
  }

  v16 = a4 + v9;
  v13 = p_TileForRowIndex(a1, (a4 + v9), &v20, &v19);
  if (v13)
  {
    if (v16 != v20)
    {
      p_SplitTileAtRowIndex(a1, v13, v20, v16);
      if (!p_TileForRowIndex(a1, v16, &v20, &v19) || v16 != v20)
      {
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreMoveRows(TSTTableDataStore *, TSURowIndex, TSURowIndex, TSUColumnRowCount)"}];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2002, @"Tile tree isn't in the expected state after forced split!"}];
      }
    }
  }

  [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  operator new();
}

uint64_t p_SplitTileAtRowIndex(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  [a1 willModify];
  v8 = a4 - a3;
  v9 = *(a1 + 136);
  *(a1 + 136) = v9 + 1;
  v10 = TSTTableTileSplitRows(a2, v8);
  v11 = TSTTableRBTreeNewNode(a4, v9);
  *(a1 + 24) = TSTTableRBTreeInsert(*(a1 + 24), v11);
  v12 = *(a1 + 32);

  return [v12 setTile:v10 forID:v9];
}

void p_moveColumnsInTile(unsigned __int16 a1, unsigned int a2, unsigned __int8 *a3)
{
  v4 = [*(*a3 + 32) tileForID:a2];
  v5 = a3[8];
  v6 = a3[9];
  v7 = *(a3 + 5);

  TSTTableTileMoveColumns(v4, v5, v6, v7);
}

void TSTTableDataStoreMoveColumns(void *a1, unsigned int a2, unsigned int a3, int a4)
{
  [a1 willModify];
  if (a3 > a2 && a4 + a2 > a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreMoveColumns(TSTTableDataStore *, TSUColumnIndex, TSUColumnIndex, TSUColumnRowCount)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2178, @"Move column ranges cannot overlap!"}];
  }

  operator new();
}

void TSTTableDataStoreSwapRows(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = -1;
  v19 = -1;
  v6 = p_TileForRowIndex(a1, a2, &v20, &v18);
  v7 = p_TileForRowIndex(a1, a3, &v19, &v17);
  v8 = v7;
  if (!v6 || !v7)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataStoreSwapRows(TSTTableDataStore *, TSURowIndex, TSURowIndex)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2229, @"Can't get tiles for rows in swap!"}];
  }

  v11 = TSTTableTileYankRow(v6, (a2 - v20));
  v12 = TSTTableTileYankRow(v8, (a3 - v19));
  if (v11)
  {
    [(TSPContainedObject *)v11 setOwner:v8];
    v13 = a3 - v19;
    [(TSPContainedObject *)v11 willModify];
    v11->mTileRowIndex = v13;
    TSTTableTileSpliceRow(v8, (a3 - v19), v11);
  }

  if (v12)
  {
    [(TSPContainedObject *)v12 setOwner:v6];
    v14 = a2 - v20;
    [(TSPContainedObject *)v12 willModify];
    v12->mTileRowIndex = v14;
    TSTTableTileSpliceRow(v6, (a2 - v20), v12);
  }

  v15 = [*(a1 + 40) headerForKey:a2 willModify:0 createIfNotThere:0];
  v16 = [*(a1 + 40) headerForKey:a3 willModify:0 createIfNotThere:0];
  [*(a1 + 40) removeHeaderForKey:a2];
  [*(a1 + 40) removeHeaderForKey:a3];
  if (v15)
  {
    [*(a1 + 40) setHeader:v15 forKey:a3];
  }

  if (v16)
  {
    [*(a1 + 40) setHeader:v16 forKey:a2];
  }
}

uint64_t TSTTableDataStoreGetReorganizeValuesForColumn(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  v6 = a3;
  return TSTTableRBTreeApply(*(a1 + 24), p_ReorganizeValuesForTile, &v4);
}

uint64_t p_ReorganizeValuesForTile(unsigned int a1, unsigned int a2, _BYTE *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = [*(*a3 + 32) tileForID:a2];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [v5 rowInfos];
  result = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (result)
  {
    v7 = result;
    v88 = a1;
    v8 = &OBJC_IVAR___TSTAnimation_mReverse;
    v9 = *v92;
    do
    {
      v10 = 0;
      do
      {
        if (*v92 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v91 + 1) + 8 * v10);
        v12 = *(*a3 + v8[42]);
        if (!v12 || (v13 = [v12 mergedRangeForCellID:*(v11 + 536) | (a3[8] << 16)], v13 == 0xFFFF) || ((v13 & 0xFF0000) != 0xFF0000 ? (v14 = HIWORD(v13) == 0) : (v14 = 1), !v14 ? (v15 = (v13 & 0xFFFF00000000) == 0) : (v15 = 1), v15))
        {
          LOBYTE(v23) = a3[8];
        }

        else
        {
          v23 = v13 >> 16;
        }

        v16 = TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(v11, v23);
        if (v16)
        {
          v17 = v16;
          v18 = *(a3 + 2) + 24 * v88 + 24 * *(v11 + 536);
          v19 = HIBYTE(*(v16 + 1));
          LOBYTE(v20) = HIBYTE(*(v16 + 1));
          *v18 = HIBYTE(*(v16 + 1)) | (*(v18 + 1) << 8);
          if (v19 == 2)
          {
            if ((v16[4] & 4) != 0)
            {
              Element = TSTCellStorageGetElement(v16, 4);
              if (!Element)
              {
                v25 = [MEMORY[0x277D6C290] currentHandler];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageFormatID(TSTCellStorage *)"];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                v28 = v26;
                v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                [v25 handleFailureInFunction:v28 file:v27 lineNumber:249 description:@"Can't get format ID storage element!"];
              }

              v21 = *Element;
            }

            else
            {
              v21 = 0;
            }

            v90 = 0;
            memset(v89, 0, sizeof(v89));
            TSTTableDataListGetCellFormatForKey([*(*a3 + 104) object], v21, v89);
            if (LODWORD(v89[0]) == 266)
            {
              *v18 = 10;
              v22 = HIDWORD(v89[0]);
            }

            else
            {
              v22 = 0;
            }

            v20 = *v18;
          }

          else
          {
            v22 = 0;
          }

          if (v20 > 5u)
          {
            if (v20 > 8u)
            {
              if (v20 == 9)
              {
                *v18 = 521;
                if ((v17[5] & 2) == 0)
                {
                  goto LABEL_69;
                }

                v61 = TSTCellStorageGetElement(v17, 512);
                if (!v61)
                {
                  v75 = [MEMORY[0x277D6C290] currentHandler];
                  v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageRichTextPayloadID(TSTCellStorage *)"];
                  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v65 = v75;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  v66 = v76;
                  v67 = 357;
                  v68 = @"Can't get formula error ID storage element!";
LABEL_76:
                  [v65 handleFailureInFunction:v66 file:v64 lineNumber:v67 description:v68];
                }

LABEL_77:
                v69 = *v61;
                goto LABEL_78;
              }

              if (v20 != 10)
              {
                goto LABEL_79;
              }

              MultipleChoiceListFormatForKey = TSTTableDataListGetMultipleChoiceListFormatForKey([*(*a3 + 112) object], v22);
              if ((v17[4] & 0x20) != 0)
              {
                v77 = TSTCellStorageGetElement(v17, 32);
                if (!v77)
                {
                  v78 = [MEMORY[0x277D6C290] currentHandler];
                  v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageDoubleValue(TSTCellStorage *)"];
                  v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v81 = v78;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  [v81 handleFailureInFunction:v79 file:v80 lineNumber:420 description:@"Can't get has number storage element!"];
                }

                v55 = *v77;
              }

              else
              {
                v55 = 0;
              }

              v82 = [MultipleChoiceListFormatForKey valueTypeOfItemAtIndex:v55];
              if (v82 <= 1)
              {
                if (!v82)
                {
                  *v18 = 0;
                  goto LABEL_79;
                }

                if (v82 == 1)
                {
                  *v18 = 262;
                  *(v18 + 8) = [MultipleChoiceListFormatForKey BOOLeanAtIndex:v55];
                  goto LABEL_79;
                }
              }

              else
              {
                switch(v82)
                {
                  case 2:
                    *(v18 + 1) = 2;
                    *(v18 + 8) = v22;
                    *(v18 + 16) = v55;
                    goto LABEL_79;
                  case 3:
                    *v18 = 1029;
                    [objc_msgSend(MultipleChoiceListFormatForKey dateAtIndex:{v55), "timeIntervalSinceReferenceDate"}];
                    goto LABEL_55;
                  case 4:
                    *v18 = 1538;
                    [MultipleChoiceListFormatForKey numberAtIndex:v55];
                    goto LABEL_55;
                }
              }

              v83 = [MEMORY[0x277D6C290] currentHandler];
              v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_ReorganizeValuesForTile(TSURowIndex, TSTTableTileStripID, void *)"}];
              v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"];
              v86 = v83;
              v8 = &OBJC_IVAR___TSTAnimation_mReverse;
              [v86 handleFailureInFunction:v84 file:v85 lineNumber:2387 description:@"Unexpected value type found in TSCECellValue"];
            }

            else
            {
              if (v20 != 6)
              {
                if (v20 != 7)
                {
                  goto LABEL_79;
                }

                *v18 = 1287;
                if (v17[2] << 8 != 1792)
                {
                  v37 = [MEMORY[0x277D6C290] currentHandler];
                  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageDurationValue(TSTCellStorage *)"];
                  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v40 = v37;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  [v40 handleFailureInFunction:v38 file:v39 lineNumber:453 description:@"Asked for duration value from non-duration cell."];
                }

                v29 = 0;
                if ((v17[4] & 0x20) == 0)
                {
                  goto LABEL_55;
                }

                v30 = TSTCellStorageGetElement(v17, 32);
                if (v30)
                {
                  goto LABEL_54;
                }

                v41 = [MEMORY[0x277D6C290] currentHandler];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageDurationValue(TSTCellStorage *)"];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                v34 = v41;
                v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                v35 = v42;
                v36 = 458;
LABEL_44:
                v43 = @"Can't get has number storage element!";
                goto LABEL_53;
              }

              *v18 = 262;
              if (v17[2] << 8 != 1536)
              {
                v56 = [MEMORY[0x277D6C290] currentHandler];
                v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSTCellStorageBoolValue(TSTCellStorage *)"];
                v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                v59 = v56;
                v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                [v59 handleFailureInFunction:v57 file:v58 lineNumber:427 description:@"Asked for BOOL value from non-BOOL cell."];
              }

              if ((v17[4] & 0x20) != 0)
              {
                v70 = TSTCellStorageGetElement(v17, 32);
                if (!v70)
                {
                  v71 = [MEMORY[0x277D6C290] currentHandler];
                  v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSTCellStorageBoolValue(TSTCellStorage *)"];
                  v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v74 = v71;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  [v74 handleFailureInFunction:v72 file:v73 lineNumber:432 description:@"Can't get has numbers storage element!"];
                }

                v60 = *v70 != 0.0;
              }

              else
              {
                v60 = 0;
              }

              *(v18 + 8) = v60;
            }
          }

          else
          {
            if (v20 > 2u)
            {
              if (v20 != 3)
              {
                if (v20 != 5)
                {
                  goto LABEL_79;
                }

                *v18 = 1029;
                if (v17[2] << 8 != 1280)
                {
                  v44 = [MEMORY[0x277D6C290] currentHandler];
                  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageRawDateValue(TSTCellStorage *)"];
                  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v47 = v44;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  [v47 handleFailureInFunction:v45 file:v46 lineNumber:439 description:@"Asked for date value from non-date cell."];
                }

                if ((v17[4] & 0x40) == 0)
                {
                  v48 = [MEMORY[0x277D6C290] currentHandler];
                  v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageRawDateValue(TSTCellStorage *)"];
                  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v51 = v48;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  [v51 handleFailureInFunction:v49 file:v50 lineNumber:440 description:@"No date content in date cell."];
                }

                v30 = TSTCellStorageGetElement(v17, 64);
                if (!v30)
                {
                  v52 = [MEMORY[0x277D6C290] currentHandler];
                  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageRawDateValue(TSTCellStorage *)"];
                  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v34 = v52;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  v35 = v53;
                  v36 = 442;
                  v43 = @"Can't get date storage element!";
LABEL_53:
                  [v34 handleFailureInFunction:v35 file:v33 lineNumber:v36 description:v43];
                }

LABEL_54:
                v29 = *v30;
LABEL_55:
                *(v18 + 8) = v29;
                goto LABEL_79;
              }

              *v18 = 515;
              if ((v17[4] & 0x10) != 0)
              {
                v61 = TSTCellStorageGetElement(v17, 16);
                if (!v61)
                {
                  v62 = [MEMORY[0x277D6C290] currentHandler];
                  v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTTableDataListKey TSTCellStorageStringID(TSTCellStorage *)"];
                  v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
                  v65 = v62;
                  v8 = &OBJC_IVAR___TSTAnimation_mReverse;
                  v66 = v63;
                  v67 = 401;
                  v68 = @"Can't get string ID storage element!";
                  goto LABEL_76;
                }

                goto LABEL_77;
              }

LABEL_69:
              v69 = 0;
LABEL_78:
              *(v18 + 8) = v69;
              goto LABEL_79;
            }

            if (v20)
            {
              if (v20 != 2)
              {
                goto LABEL_79;
              }

              *v18 = 1538;
              v29 = 0;
              if ((v17[4] & 0x20) == 0)
              {
                goto LABEL_55;
              }

              v30 = TSTCellStorageGetElement(v17, 32);
              if (v30)
              {
                goto LABEL_54;
              }

              v31 = [MEMORY[0x277D6C290] currentHandler];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellStorageDoubleValue(TSTCellStorage *)"];
              v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStorage.h"];
              v34 = v31;
              v8 = &OBJC_IVAR___TSTAnimation_mReverse;
              v35 = v32;
              v36 = 420;
              goto LABEL_44;
            }

            *v18 = 0;
          }
        }

LABEL_79:
        ++v10;
      }

      while (v7 != v10);
      result = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t privateDumpTile(uint64_t a1, unsigned int a2, id *a3)
{
  NSLog(@"tile at row index %hu", a1);
  v5 = [a3[4] tileForID:a2];

  return [v5 debugDump];
}

uint64_t p_validateTileCB(unsigned __int16 a1, unsigned int a2, id *a3)
{
  result = [a3[4] tileForID:a2];
  if (!result)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_validateTileCB(UInt16, UInt16, void *)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"];

    return [v4 handleFailureInFunction:v5 file:v6 lineNumber:2449 description:@"No tile for valid strip ID!"];
  }

  return result;
}

TSTTableTileRowInfo *privateValidateRowHeader(unsigned __int16 *a1, unsigned __int16 *a2, void *a3)
{
  v12 = 0;
  v4 = *a1;
  v5 = [*(a3 + 4) tileForID:{TSTTableRBTreeStripIDForCellIndex(*(a3 + 3), v4, &v12)}];
  if (!v5)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void privateValidateRowHeader(const void *, const void *, void *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2469, @"tile not found for index %d", v4}];
  }

  result = TSTTableTileRowInfoForTileRowIndex(v5, (v4 - v12), 0);
  if (result)
  {
    v9 = result;
    if (result->mCellCount != a2[17])
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void privateValidateRowHeader(const void *, const void *, void *)"}];
      return [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2477, @"row info (%p) cell count and row header (%p) cell count do not match at row: %d", v9, a2, v4}];
    }
  }

  return result;
}

_BYTE *privateCollectColumnCellCountsInTile(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 numRows];
  result = [a2 numRows];
  if (result)
  {
    v7 = 0;
    v8 = v5 - 1;
    do
    {
      result = TSTTableTileRowInfoForRowArrayIndex(a2, (v8 - v7));
      v9 = *(result + 269);
      if (*(result + 269))
      {
        v10 = result;
        if ((result[541] & 1) == 0)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(result);
        }

        v11 = 0;
        v12 = 0;
        v13 = *(v10 + 540);
        do
        {
          result = TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(v10, v11);
          if (result)
          {
            ++*(a3 + 2 * v11);
            ++v12;
          }

          ++v11;
        }

        while (v13 >= v11 && v9 != v12);
      }

      ++v7;
    }

    while (v7 <= v8);
  }

  return result;
}

uint64_t privateValidateColumnCellCounts(TSTTableDataStore *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, 510);
  [(TSTTileIDKeyDict *)a1->mTileStorage applyFunction:privateCollectColumnCellCountsInTile withState:v7];
  for (i = 0; i != 255; ++i)
  {
    result = [-[TSPLazyReference object](a1->mColumnHeaderStorageReference "object")];
    if (result)
    {
      v4 = result;
      if (*(v7 + i) != *(result + 34))
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void privateValidateColumnCellCounts(TSTTableDataStore *)"];
        result = [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2531, @"info (%p) column counts do not match tile counts in column %d for dataStore %p", v4, i, a1}];
      }
    }
  }

  return result;
}

uint64_t TSTTableDataStoreAddString(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 64) object];

  return TSTTableDataListAddString(v3, a2);
}

uint64_t TSTTableDataStoreGetStringForKey(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 64) object];

  return TSTTableDataListGetStringForKey(v3, a2);
}

uint64_t TSTTableDataStoreAddStringReferenceForKey(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 64) object];

  return TSTTableDataListAddReferenceForKey(v3, a2);
}

uint64_t TSTTableDataStoreRemoveStringReferenceForKey(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 64) object];

  return TSTTableDataListRemoveReferenceForKey(v3, a2);
}

uint64_t TSTTableDataStoreMerge(void *a1, uint64_t a2)
{
  [a1 willModify];
  v4 = a1[18];
  if (!v4)
  {
    v4 = -[TSTMergeRegionMap initWithContext:]([TSTMergeRegionMap alloc], "initWithContext:", [objc_msgSend(a1 "owner")]);
    a1[18] = v4;
  }

  return [(TSTMergeRegionMap *)v4 insert:a2];
}

uint64_t TSTTableDataStoreUnmerge(void *a1, uint64_t a2)
{
  [a1 willModify];
  v4 = a1[18];

  return [v4 remove:a2];
}

uint64_t TSTTableDataStoreApplyRowRemappingToMergeRanges(id *a1, uint64_t a2)
{
  [a1 willModify];
  v4 = a1[18];
  if (v4 && [v4 count])
  {
    v5 = [[TSTMergeRegionMap alloc] initRegionMapFromMap:a1[18] rowRemapping:a2];

    a1[18] = v5;
  }

  return 1;
}

uint64_t TSTTableDataStoreRangeOfTableWithMerges(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    return [v1 unionedMergeRange];
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

uint64_t TSTTableDataStoreMergeRangeAtCellID(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return [v2 mergedRangeForCellID:a2];
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

void *TSTTableDataStoreMergeRangesPartiallyIntersectCellRange(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 144);
  if (result)
  {
    return [result partiallyIntersectsCellRange:a2];
  }

  return result;
}

uint64_t TSTTableDataStoreCreateMergeRangesForCellRange(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 144))
  {
    return 0;
  }

  v4 = [TSTMergeRegionMap alloc];
  v5 = *(a1 + 144);

  return [(TSTMergeRegionMap *)v4 initRegionMapFromMap:v5 intersectingRange:a2];
}

id TSTTableDataStoreMergeRangesForCellRange(uint64_t a1, uint64_t a2)
{
  MergeRangesForCellRange = TSTTableDataStoreCreateMergeRangesForCellRange(a1, a2);

  return MergeRangesForCellRange;
}

uint64_t TSTTableDataStoreCopyAPasteboardCustomFormatToDoc(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || !*(a1 + 128) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [a2 customFormatList];
  v7 = [*(a1 + 128) customFormatForKey:a3];
  if (!v7)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataStoreCopyAPasteboardCustomFormatToDoc(TSTTableDataStore *, TSKDocumentRoot *, TSTTableDataListKey)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataStore.mm"), 2739, @"The pasteboard should have had every custom format."}];
    return 0;
  }

  return [v6 addCustomFormat:v7 withOldKey:a3];
}

uint64_t TSTTableDataStoreAddConditionalStyle(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) object];

  return TSTTableDataListAddConditionalStyleSet(v3, a2);
}

uint64_t TSTTableDataStoreConditionalStyleForKey(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) object];

  return TSTTableDataListGetConditionalStyleSetForKey(v3, a2);
}

uint64_t TSTTableDataStoreConditionalStyleRefCountForKey(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) object];

  return TSTTableDataListRefCountForKey(v3, a2);
}

uint64_t *std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,SFUtility::ObjcSharedPtr<NSObject>>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}