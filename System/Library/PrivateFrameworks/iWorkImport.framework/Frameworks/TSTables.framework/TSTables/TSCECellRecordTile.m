@interface TSCECellRecordTile
+ (int)compareTilesBefore:(id)a3 after:(id)a4;
- (BOOL)applyBlockToRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5;
- (BOOL)applyBlockToSortedRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5;
- (BOOL)insertCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4;
- (BOOL)intersectsRange:(TSCERangeCoordinate)a3;
- (BOOL)replaceCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4;
- (TSCECellRecord)findCellRecord:(TSUCellCoord)a3;
- (TSCECellRecordTile)initWithOwnerId:(unsigned __int16)a3 tileColumnBegin:(unsigned __int16)a4 tileRowBegin:(unsigned int)a5 context:(id)a6;
- (id).cxx_construct;
- (unint64_t)cellRecordIndexInSortedSection:(unsigned __int16)a3 startingRow:(unsigned int)a4 beginIndex:(unint64_t)a5 endIndex:(unint64_t)a6 guessIndex:(unint64_t)a7;
- (unint64_t)memoryUseEstimate;
- (unsigned)tileColumnEnd;
- (unsigned)tileRowEnd;
- (vector<TSCECellRecord)sortedCellRecordVector;
- (void)appendExpandedEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4;
- (void)applyBlockToRecordsInRange:(TSCERangeCoordinate)a3 cellRestrictions:(unint64_t)a4 doWillModify:(BOOL)a5 block:(id)a6;
- (void)collectDependencies:(id)a3 cellDependencies:(id)a4;
- (void)dealloc;
- (void)deleteCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4;
- (void)encodeCellRecordsToArchive:(void *)a3;
- (void)incrementPruningNeededRecords;
- (void)loadFromUnarchiver:(id)a3;
- (void)pruneEmptyRecords:(id)a3;
- (void)removeCellRecord:(TSUCellCoord)a3 cellDependencies:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)sortCellRecords;
- (void)unpackAfterUnarchiveForCellDependencies:(id)a3;
@end

@implementation TSCECellRecordTile

+ (int)compareTilesBefore:(id)a3 after:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_tileRowBegin(v5, v7, v8, v9, v10);
  if (v11 >= objc_msgSend_tileRowBegin(v6, v12, v13, v14, v15))
  {
    v21 = objc_msgSend_tileRowBegin(v5, v16, v17, v18, v19);
    if (v21 > objc_msgSend_tileRowBegin(v6, v22, v23, v24, v25))
    {
      v20 = 1;
      goto LABEL_7;
    }

    v30 = objc_msgSend_tileColumnBegin(v5, v26, v27, v28, v29);
    if (v30 >= objc_msgSend_tileColumnBegin(v6, v31, v32, v33, v34))
    {
      v39 = objc_msgSend_tileColumnBegin(v5, v35, v36, v37, v38);
      v20 = v39 > objc_msgSend_tileColumnBegin(v6, v40, v41, v42, v43);
      goto LABEL_7;
    }
  }

  v20 = -1;
LABEL_7:

  return v20;
}

- (TSCECellRecordTile)initWithOwnerId:(unsigned __int16)a3 tileColumnBegin:(unsigned __int16)a4 tileRowBegin:(unsigned int)a5 context:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = TSCECellRecordTile;
  v11 = [(TSCECellRecordTile *)&v14 initWithContext:v10];
  v12 = v11;
  if (v11)
  {
    v11->_internalOwnerID = a3;
    v11->_tileColumnBegin = a4;
    v11->_tileRowBegin = a5;
    v11->_unsortedCellsSize = 0;
    v11->_pruningNeededRecords = 0;
    sub_22111B7CC(&v11->_cellRecords.__begin_, 0x80uLL);
    v12->_cellsLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v12;
}

- (void)dealloc
{
  begin = self->_cellRecords.__begin_;
  for (i = self->_cellRecords.__end_; begin != i; ++begin)
  {
    if (*begin)
    {
      v5 = sub_2211226F4(*begin);
      MEMORY[0x223DA1450](v5, 0x1020C4012755DA7);
    }
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v7 = *unarchivedCellRecords;
    if (*unarchivedCellRecords)
    {
      unarchivedCellRecords[1] = v7;
      operator delete(v7);
    }

    MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
  }

  self->_unarchivedCellRecords = 0;
  v8.receiver = self;
  v8.super_class = TSCECellRecordTile;
  [(TSCECellRecordTile *)&v8 dealloc];
}

- (unsigned)tileColumnEnd
{
  tileColumnBegin = self->_tileColumnBegin;
  if (tileColumnBegin == 0x7FFF)
  {
    return 0x7FFF;
  }

  else
  {
    return tileColumnBegin + 31;
  }
}

- (unsigned)tileRowEnd
{
  tileRowBegin = self->_tileRowBegin;
  if (tileRowBegin == 0x7FFFFFFF)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return tileRowBegin + 127;
  }
}

- (unint64_t)memoryUseEstimate
{
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  v4 = 40;
  while (begin != end)
  {
    v5 = *begin++;
    v4 += sub_2215C4F5C(v5);
  }

  return v4;
}

- (void)incrementPruningNeededRecords
{
  pruningNeededRecords = self->_pruningNeededRecords;
  if (pruningNeededRecords + 1 < 0x1000)
  {
    v3 = pruningNeededRecords + 1;
  }

  else
  {
    v3 = 4096;
  }

  self->_pruningNeededRecords = v3;
}

- (TSCECellRecord)findCellRecord:(TSUCellCoord)a3
{
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  if (begin == end)
  {
    return 0;
  }

  v5 = end - begin;
  unsortedCellsSize = self->_unsortedCellsSize;
  v7 = ~unsortedCellsSize + (v5 >> 3);
  if (v7 >= 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + (v7 - v8) / 2;
      result = begin[v9];
      var4 = result->var4;
      if (var4 >= a3.row)
      {
        if (var4 > a3.row)
        {
          goto LABEL_9;
        }

        var5 = result->var5;
        if (a3.column <= var5)
        {
          break;
        }
      }

      v8 = v9 + 1;
LABEL_10:
      if (v8 > v7)
      {
        goto LABEL_11;
      }
    }

    if (a3.column >= var5)
    {
      return result;
    }

LABEL_9:
    v7 = v9 - 1;
    goto LABEL_10;
  }

LABEL_11:
  v13 = v5 >> 3;
  if (!unsortedCellsSize || v13 < unsortedCellsSize)
  {
    return 0;
  }

  v15 = v13 - unsortedCellsSize;
  while (1)
  {
    result = begin[v15];
    if (result->var4 == a3.row && result->var5 == a3.column)
    {
      break;
    }

    if (++v15 >= v13)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)cellRecordIndexInSortedSection:(unsigned __int16)a3 startingRow:(unsigned int)a4 beginIndex:(unint64_t)a5 endIndex:(unint64_t)a6 guessIndex:(unint64_t)a7
{
  if (a6 > a5)
  {
    v8 = a7 < a5 || a7 == 0 || a7 >= a6;
    v9 = a5 + ((a6 - a5) >> 1);
    if (!v8)
    {
      v9 = a7;
    }

    begin = self->_cellRecords.__begin_;
    v11 = a6;
    while (1)
    {
      v12 = begin[v9];
      var4 = v12->var4;
      if (var4 >= a4)
      {
        if (var4 > a4)
        {
          a6 = v9;
          goto LABEL_17;
        }

        var5 = v12->var5;
        if (var5 >= a3)
        {
          a6 = v9;
          if (var5 <= a3)
          {
            return v9;
          }

          goto LABEL_17;
        }
      }

      a5 = v9 + 1;
      v9 = v11;
LABEL_17:
      v11 = v9;
      v15 = v9 > a5;
      v9 = a5 + ((v9 - a5) >> 1);
      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  begin = self->_cellRecords.__begin_;
LABEL_20:
  if (a6 >= self->_cellRecords.__end_ - begin - self->_unsortedCellsSize)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = begin - 1;
  do
  {
    v9 = a6;
    if (!a6)
    {
      break;
    }

    v17 = v16[a6];
    if (v17->var4 < a4)
    {
      break;
    }

    --a6;
  }

  while (v17->var5 >= a3);
  return v9;
}

- (BOOL)intersectsRange:(TSCERangeCoordinate)a3
{
  bottomRight = a3._bottomRight;
  column = a3._topLeft.column;
  v7 = *&a3._topLeft & 0xFFFF00000000;
  v8 = *&a3._bottomRight & 0xFFFF00000000;
  if (a3._topLeft.row == 0x7FFFFFFFLL && v7 != 0x7FFF00000000 && v8 != 0x7FFF00000000 && a3._bottomRight.row == 0x7FFFFFFFLL)
  {
    if (objc_msgSend_tileRowEnd(self, a2, *&a3._topLeft, *&a3._bottomRight, v3) >= a3._topLeft.row)
    {
      v13 = objc_msgSend_tileRowBegin(self, v9, v10, v11, v12) > bottomRight.row;
      return !v13;
    }

    return 0;
  }

  if ((a3._topLeft.row == 0x7FFFFFFFLL || v7 != 0x7FFF00000000 || v8 != 0x7FFF00000000 || a3._bottomRight.row == 0x7FFFFFFFLL) && (objc_msgSend_tileRowEnd(self, a2, *&a3._topLeft, *&a3._bottomRight, v3) < a3._topLeft.row || objc_msgSend_tileRowBegin(self, v19, v20, v21, v22) > bottomRight.row) || objc_msgSend_tileColumnEnd(self, a2, *&a3._topLeft, *&a3._bottomRight, v3) < column)
  {
    return 0;
  }

  v13 = objc_msgSend_tileColumnBegin(self, v14, v15, v16, v17) > bottomRight.column;
  return !v13;
}

- (void)applyBlockToRecordsInRange:(TSCERangeCoordinate)a3 cellRestrictions:(unint64_t)a4 doWillModify:(BOOL)a5 block:(id)a6
{
  v7 = a4;
  bottomRight = a3._bottomRight;
  topLeft = a3._topLeft;
  v53 = a6;
  v54 = topLeft;
  v55 = bottomRight;
  if (!objc_msgSend_intersectsRange_(self, v10, topLeft, bottomRight, v11))
  {
    goto LABEL_96;
  }

  v13 = bottomRight;
  v14 = bottomRight & 0xFFFF00000000;
  v16 = (topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v14 != 0x7FFF00000000 && topLeft == 0x7FFFFFFFLL;
  v17 = v16;
  v50 = v17;
  if (v16)
  {
    v56 = 0;
    if (bottomRight == 0x7FFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = topLeft;
    }

    if (bottomRight == 0x7FFFFFFFLL)
    {
      v19 = 0x7FFFFFFFLL;
    }

    else
    {
      v19 = bottomRight;
    }

    goto LABEL_25;
  }

  v56 = 0;
  if (topLeft == 0x7FFFFFFFLL || (topLeft & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v18 = topLeft;
    v19 = bottomRight;
LABEL_25:
    v20 = self;
    goto LABEL_26;
  }

  v18 = topLeft;
  v19 = bottomRight;
  v20 = self;
  if (v14 == 0x7FFF00000000)
  {
    v56 = 1;
    if (v55 != 0x7FFFFFFF)
    {
      LOWORD(v21) = 0;
      LOWORD(v22) = 0x7FFF;
      v18 = v54;
      v19 = v55;
      goto LABEL_27;
    }

    v18 = topLeft;
    v19 = v13;
  }

LABEL_26:
  v21 = HIDWORD(topLeft);
  v22 = HIDWORD(v55);
LABEL_27:
  p_cellRecords = &v20->_cellRecords;
  v24 = v20->_cellRecords.__end_ - v20->_cellRecords.__begin_ - v20->_unsortedCellsSize;
  v29 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(v20, v12, v21, v18, 0, v24, 0);
  v30 = !a5;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v19 != 0x7FFFFFFF && v22 != 0x7FFF)
    {
      v31 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(v20, v25, v22, v19, v29, v24, 0);
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v31 + 1;
      }
    }

    if (v29 < v24)
    {
      v51 = 0;
      do
      {
        v32 = p_cellRecords->__begin_[v29];
        if (v19 != 0x7FFFFFFF && v32->var4 > v19)
        {
          break;
        }

        var5 = v32->var5;
        v34 = v22 != 0x7FFF && var5 > v22;
        v35 = v34;
        if (var5 < v21 || v35)
        {
          if (v35)
          {
            v36 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(v20, v25, v21, v32->var4 + 1, v29, v24, v51 + v29);
            if (v36 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v51 = v36 - v29;
            v29 = v36 - 1;
          }
        }

        else if (((v7 & 2) == 0 || v32->var2) && ((v7 & 1) == 0 || (v32->var6 & 4) != 0) && ((v7 & 4) == 0 || (v32->var6 & 2) == 0))
        {
          if (!v30)
          {
            objc_msgSend_willModify(v20, v25, v26, v27, v28);
          }

          (v53)[2](v53, v32);
          v30 = 1;
        }

        ++v29;
      }

      while (v29 < v24);
    }
  }

  v37 = v20->_cellRecords.__end_ - v20->_cellRecords.__begin_;
  unsortedCellsSize = v20->_unsortedCellsSize;
  if (v37 - unsortedCellsSize < v37)
  {
    v39 = v30;
    if (v55 == 0x7FFFFFFFLL)
    {
      v40 = v50;
    }

    else
    {
      v40 = 0;
    }

    v41 = 8 * v37 - 8 * unsortedCellsSize;
    while (1)
    {
      v42 = *(p_cellRecords->__begin_ + v41);
      v43 = *(v42 + 36);
      v44 = *(v42 + 32);
      if (v56)
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_76;
      }

      if (v43 != 0x7FFF && WORD2(v54) <= v43 && WORD2(v55) >= v43)
      {
LABEL_86:
        if (((v7 & 2) == 0 || *(v42 + 16)) && ((v7 & 1) == 0 || (*(v42 + 38) & 4) != 0) && ((v7 & 4) == 0 || (*(v42 + 38) & 2) == 0))
        {
          if ((v39 & 1) == 0)
          {
            objc_msgSend_willModify(self, v25, v26, v27, v28);
          }

          v53[2](v53, v42);
          v39 = 1;
        }
      }

LABEL_95:
      v41 += 8;
      if (!--unsortedCellsSize)
      {
        goto LABEL_96;
      }
    }

    if (v55 == 0x7FFFFFFFLL)
    {
LABEL_76:
      v45 = WORD2(v54) <= v43 && v44 >= v54 && WORD2(v55) >= v43;
    }

    else
    {
      v45 = v44 != 0x7FFFFFFF && v44 >= v54;
    }

    if (v45 && v44 <= v55)
    {
      goto LABEL_86;
    }

    goto LABEL_95;
  }

LABEL_96:
}

- (BOOL)applyBlockToRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5
{
  v6 = a3;
  v12 = a5;
  v21 = 0;
  v13 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
  if (v13)
  {
    v14 = 0;
    v15 = v13 >> 3;
    v16 = !a4;
    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    do
    {
      v18 = self->_cellRecords.__begin_[v14];
      if (v18 && ((v6 & 2) == 0 || v18->var2) && ((v6 & 1) == 0 || (v18->var6 & 4) != 0) && ((v6 & 4) == 0 || (v18->var6 & 2) == 0))
      {
        if (!v16)
        {
          objc_msgSend_willModify(self, v8, v9, v10, v11);
        }

        v12[2](v12, v18, &v21);
        v16 = 1;
      }

      ++v14;
    }

    while (v17 != v14);
    v19 = v21 ^ 1;
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

- (BOOL)applyBlockToSortedRecords:(unint64_t)a3 doWillModify:(BOOL)a4 block:(id)a5
{
  v6 = a3;
  v8 = a5;
  v24 = 0;
  objc_msgSend_sortedCellRecordVector(self, v9, v10, v11, v12);
  v17 = __p;
  if (__p == v23)
  {
    v20 = 1;
    if (!__p)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = !a4;
  do
  {
    v19 = *v17;
    if (((v6 & 2) == 0 || *(v19 + 16)) && ((v6 & 1) == 0 || (*(v19 + 38) & 4) != 0) && ((v6 & 4) == 0 || (*(v19 + 38) & 2) == 0))
    {
      if (!v18)
      {
        objc_msgSend_willModify(self, v13, v14, v15, v16);
      }

      v8[2](v8, v19, &v24);
      v18 = 1;
    }

    ++v17;
  }

  while (v17 != v23);
  v17 = __p;
  v20 = v24 ^ 1;
  if (__p)
  {
LABEL_14:
    operator delete(v17);
  }

LABEL_15:

  return v20 & 1;
}

- (BOOL)insertCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4
{
  v44 = a3;
  v6 = a4;
  v11 = v6;
  if (a3)
  {
    if (!v6)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECellRecordTile insertCellRecord:cellDependencies:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 434, 0, "invalid nil value for '%{public}s'", "cellDependencies");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    objc_msgSend_willModify(self, v7, v8, v9, v10);
    lock = &self->_cellsLock;
    os_unfair_lock_lock(&self->_cellsLock);
    v43 = 1;
    a3->var1._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    sub_221126E28(&self->_cellRecords, &v44);
    v23 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
    unsortedCellsSize = self->_unsortedCellsSize;
    if (unsortedCellsSize || v23 >= 2 && (end = self->_cellRecords.__end_, v26 = *(end - 2), v27 = *(end - 1), v28 = *(v26 + 32), v29 = *(v27 + 32), v28 >= v29) && (v28 > v29 || *(v26 + 36) > *(v27 + 36)))
    {
      self->_unsortedCellsSize = unsortedCellsSize + 1;
    }

    os_unfair_lock_unlock(lock);
    v43 = 0;
    if (v11)
    {
      objc_msgSend_incrNumCells(v11, v30, v31, v32, v33);
      objc_msgSend_setDirtyInGrid_row_isDirty_(v11, v34, v44->var5, v44->var4, v44->var2 != 0);
      objc_msgSend_setInACycleInGrid_row_inACycle_(v11, v35, v44->var5, v44->var4, (v44->var6 >> 1) & 1);
      objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(v11, v36, v44->var5, v44->var4, (v44->var6 >> 2) & 1);
    }

    if (20 * vcvtps_u32_f32(logf((v23 - self->_unsortedCellsSize))) < self->_unsortedCellsSize)
    {
      objc_msgSend_sortCellRecords(self, v37, v38, v39, v40);
    }

    sub_2212E22F0(&lock);
  }

  return a3 != 0;
}

- (void)removeCellRecord:(TSUCellCoord)a3 cellDependencies:(id)a4
{
  v6 = a4;
  CellRecord = objc_msgSend_findCellRecord_(self, v7, *&a3, v8, v9);
  if (CellRecord)
  {
    objc_msgSend_willModify(self, v10, v11, v12, v13);
    if (*(CellRecord + 16))
    {
      LODWORD(v23) = self->_internalOwnerID;
      v19 = objc_msgSend_dependencyTracker(v6, v15, v16, v17, v18, *&a3 & 0xFFFFFFFFFFFFLL, v23);
      objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(v19, v20, &v22, CellRecord, v21);
    }

    objc_msgSend_deleteCellRecord_cellDependencies_(self, v15, CellRecord, v6, v18);
  }
}

- (BOOL)replaceCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4
{
  v10 = a4;
  v11 = a3->var4 | (a3->var5 << 32);
  internalOwnerID = self->_internalOwnerID;
  v115 = v11;
  v116 = internalOwnerID;
  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v8, v9);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 498, 0, "invalid nil value for '%{public}s'", "cellDependencies");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_dependencyTracker(v10, v6, v7, v8, v9);
  CellRecord = objc_msgSend_findCellRecord_(self, v25, v11, v26, v27);
  v33 = CellRecord;
  v107 = 0;
  v108 = &v107;
  v109 = 0x5812000000;
  v110 = sub_22145C420;
  v111 = sub_22145C42C;
  v112 = &unk_22188E88F;
  memset(v113, 0, sizeof(v113));
  v114 = 1065353216;
  memset(v105, 0, sizeof(v105));
  v106 = 1065353216;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  if (CellRecord)
  {
    v34 = *CellRecord;
    v35 = sub_2215C5B34(CellRecord, v113);
    sub_2212DFCA0((v108 + 6), v35);
    if (!v34)
    {
      v36 = sub_2215C5B9C(v33, v105);
      sub_2212DFCA0(v105, v36);
    }

    sub_2215C5A5C(v33, 0);
  }

  else
  {
    v34 = 0;
  }

  objc_msgSend_willModify(self, v29, v30, v31, v32);
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x3032000000;
  v95[3] = sub_22145C434;
  v95[4] = sub_22145C444;
  v37 = v10;
  v96 = v37;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_22145C44C;
  v87[3] = &unk_278465770;
  v89 = v95;
  v38 = v24;
  v88 = v38;
  v90 = &v107;
  v91 = &v97;
  v94 = v116;
  v92 = &v101;
  v93 = v115;
  sub_2215C574C(a3, v87);
  if (!v33)
  {
    v43 = *(v98 + 6);
    if (v43 >= 2)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v40, v41);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 651, 0, "cellRecord can't handle multiple self references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
      v43 = *(v98 + 6);
    }

    if (v43)
    {
      sub_2215C52D0(a3, &v115, 0);
    }

    sub_2215C4E48();
  }

  if (*(v102 + 24) == 1)
  {
    v33 = objc_msgSend_findCellRecord_(self, v39, v11, v40, v41);
  }

  v42 = *(v33 + 16);
  if (a3->var2)
  {
    if (!v42)
    {
      objc_msgSend_setDirtyInGrid_row_isDirty_(v37, v39, a3->var5, a3->var4, 1);
    }
  }

  else
  {
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v37, v39, a3, v42 != 0, v41);
  }

  objc_msgSend_setInACycleInGrid_row_inACycle_(v37, v39, a3->var5, a3->var4, (a3->var6 >> 1) & 1);
  objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(v37, v55, a3->var5, a3->var4, (a3->var6 >> 2) & 1);
  if (v34)
  {
    sub_2215C5120(a3, v34);
  }

  else
  {
    sub_2215C51E0(a3, v105, 0);
  }

  v59 = *(v98 + 6);
  if (v59 >= 2)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v57, v58);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 637, 0, "cellRecord can't handle multiple self references");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    v59 = *(v98 + 6);
  }

  if (v59)
  {
    sub_2215C52D0(a3, &v115, 0);
  }

  p_cellsLock = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  sub_2215C4EA0(v33, a3);
  os_unfair_lock_unlock(&self->_cellsLock);
  LOBYTE(v86) = 0;
  sub_2212E22F0(&p_cellsLock);
  objc_msgSend_setCurrentCellBeingModified_(v38, v71, v115, v116, v72);
  p_cellsLock = v115;
  v86 = v116;
  v73 = v108;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22145C6D8;
  v78[3] = &unk_2784657C0;
  v81 = v115;
  v82 = v116;
  v79 = v37;
  v74 = v38;
  v80 = v74;
  v83 = p_cellsLock;
  v84 = v86;
  sub_2212E03B0((v73 + 6), v78);
  objc_msgSend_setCurrentCellBeingModified_(v74, v75, 0x7FFF7FFFFFFFLL, 0xFFFFLL, v76);
  a3->var0 = 0;

  _Block_object_dispose(v95, 8);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);
  sub_221122744(v105);
  _Block_object_dispose(&v107, 8);
  sub_221122744(v113);

  return 1;
}

- (void)deleteCellRecord:(TSCECellRecord *)a3 cellDependencies:(id)a4
{
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  p_cellsLock = &self->_cellsLock;
  v25 = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  LOBYTE(v26) = 1;
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  if (begin != end)
  {
    v14 = 0;
    v15 = end - begin;
    v16 = end - begin - 8;
    while (*begin != a3)
    {
      ++v14;
      ++begin;
      v16 -= 8;
      if (begin == end)
      {
        goto LABEL_15;
      }
    }

    unsortedCellsSize = self->_unsortedCellsSize;
    if (unsortedCellsSize && v14 >= (v15 >> 3) - unsortedCellsSize)
    {
      self->_unsortedCellsSize = unsortedCellsSize - 1;
    }

    v18 = begin + 1;
    if (begin + 1 != end)
    {
      memmove(begin, v18, v16);
    }

    self->_cellRecords.__end_ = (begin + v16);
    if (v6)
    {
      if (a3->var2)
      {
        objc_msgSend_setDirtyInGrid_row_isDirty_(v6, v18, a3->var5, a3->var4, 0);
      }

      objc_msgSend_setInACycleInGrid_row_inACycle_(v6, v18, a3->var5, a3->var4, 0, v25, v26);
      objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(v6, v19, a3->var5, a3->var4, 0);
      objc_msgSend_decrNumCells(v6, v20, v21, v22, v23);
      v24 = sub_2211226F4(a3);
      MEMORY[0x223DA1450](v24, 0x1020C4012755DA7);
      p_cellsLock = v25;
    }
  }

LABEL_15:
  os_unfair_lock_unlock(p_cellsLock);
  LOBYTE(v26) = 0;
  sub_2212E22F0(&v25);
}

- (void)pruneEmptyRecords:(id)a3
{
  v8 = a3;
  if (self->_pruningNeededRecords)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    lock = &self->_cellsLock;
    os_unfair_lock_lock(&self->_cellsLock);
    v34 = 1;
    p_cellRecords = &self->_cellRecords;
    begin = self->_cellRecords.__begin_;
    end = self->_cellRecords.__end_;
    if (begin != end)
    {
      v16 = 0;
      do
      {
        v17 = *begin;
        if ((*(*begin + 38) & 4) == 0 && (sub_2215C5AB8(*begin) & 1) == 0 && !sub_2215C5AF0(v17))
        {
          if (*(v17 + 16))
          {
            internalOwnerID = self->_internalOwnerID;
            *&v31 = *(v17 + 32) | (*(v17 + 36) << 32);
            DWORD2(v31) = internalOwnerID;
            v19 = objc_msgSend_dependencyTracker(v8, v9, v10, v11, v12);
            objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(v19, v20, &v31, v17, v21);
          }

          v16 = 1;
        }

        ++begin;
      }

      while (begin != end);
      if (v16)
      {
        v23 = p_cellRecords->__begin_;
        v22 = self->_cellRecords.__end_;
        v24 = v22 - p_cellRecords->__begin_;
        if (p_cellRecords->__begin_ != end)
        {
          v25 = 0;
          v30 = v24 - self->_unsortedCellsSize;
          v26 = p_cellRecords->__begin_;
          do
          {
            v27 = *v23;
            if ((*(*v23 + 38) & 4) != 0 || (sub_2215C5AB8(*v23) & 1) != 0 || sub_2215C5AF0(v27))
            {
              if (v23 != v26)
              {
                *v26 = *v23;
              }

              ++v26;
            }

            else
            {
              if (v25 >= v30)
              {
                --self->_unsortedCellsSize;
              }

              --v24;
              v28 = sub_2211226F4(v27);
              MEMORY[0x223DA1450](v28, 0x1020C4012755DA7);
              *v23 = 0;
            }

            ++v25;
            ++v23;
          }

          while (v23 != end);
          end = p_cellRecords->__begin_;
          v22 = self->_cellRecords.__end_;
        }

        if (v24 != v22 - end)
        {
          sub_22145CCE8(&self->_cellRecords.__begin_, v24);
        }

        if (self->_unsortedCellsSize >= 8)
        {
          objc_msgSend_sortedCellRecordVector(self, v9, v10, v11, v12);
          v29 = p_cellRecords->__begin_;
          if (p_cellRecords->__begin_)
          {
            self->_cellRecords.__end_ = v29;
            operator delete(v29);
            p_cellRecords->__begin_ = 0;
            self->_cellRecords.__end_ = 0;
            self->_cellRecords.__cap_ = 0;
          }

          *&p_cellRecords->__begin_ = v31;
          self->_cellRecords.__cap_ = v32;
          self->_unsortedCellsSize = 0;
        }
      }
    }

    self->_pruningNeededRecords = 0;
    os_unfair_lock_unlock(lock);
    v34 = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)sortCellRecords
{
  if (self->_unsortedCellsSize)
  {
    p_cellRecords = &self->_cellRecords;
    if ((self->_cellRecords.__end_ - self->_cellRecords.__begin_) > 8)
    {
      objc_msgSend_willModify(self, a2, v2, v3, v4);
      p_cellsLock = &self->_cellsLock;
      v15 = &self->_cellsLock;
      os_unfair_lock_lock(&self->_cellsLock);
      v16 = 1;
      objc_msgSend_sortedCellRecordVector(self, v8, v9, v10, v11);
      begin = p_cellRecords->__begin_;
      if (p_cellRecords->__begin_)
      {
        p_cellRecords->__end_ = begin;
        operator delete(begin);
        p_cellRecords->__begin_ = 0;
        p_cellRecords->__end_ = 0;
        p_cellRecords->__cap_ = 0;
        p_cellsLock = v15;
      }

      *&p_cellRecords->__begin_ = v13;
      p_cellRecords->__cap_ = v14;
      self->_unsortedCellsSize = 0;
      os_unfair_lock_unlock(p_cellsLock);
      v16 = 0;
      sub_2212E22F0(&v15);
    }

    else
    {
      self->_unsortedCellsSize = 0;
    }
  }
}

- (vector<TSCECellRecord)sortedCellRecordVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = self + 3;
  begin = self[4].__begin_;
  v8 = ((self[3].__end_ - self[3].__begin_) >> 3) - begin;
  if (v8 >= 1)
  {
    v9 = self;
    for (i = 0; i != v8; ++i)
    {
      v33 = v6->__begin_[i];
      sub_221126E28(retstr, &v33);
    }

    begin = v9[4].__begin_;
  }

  if (begin)
  {
    v11 = (v6->__end_ - v6->__begin_) >> 3;
    if (v8 < v11)
    {
      v12 = v8;
      while (1)
      {
        v13 = v6->__begin_[v12];
        v33 = v13;
        if (v12 >= 1)
        {
          break;
        }

        v16 = v12 - 1;
LABEL_20:
        if (v16 >= v12 - 1)
        {
          sub_221126E28(retstr, &v33);
        }

        else
        {
          self = sub_22145D054(retstr, &retstr->__begin_[v16 + 1], &v33);
        }

        if (++v12 == v11)
        {
          return self;
        }
      }

      v14 = 0;
      var4 = v13->var4;
      v16 = v12 - 1;
      while (1)
      {
        v17 = v14 + (v16 - v14) / 2;
        v18 = retstr->__begin_[v17];
        v19 = v18->var4;
        if (v19 >= var4)
        {
          if (v19 > var4)
          {
            goto LABEL_16;
          }

          var5 = v18->var5;
          v21 = v13->var5;
          if (var5 >= v21)
          {
            break;
          }
        }

        v14 = v17 + 1;
LABEL_17:
        if (v14 > v16)
        {
          goto LABEL_20;
        }
      }

      if (var5 <= v21)
      {
        v22 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCECellRecordTile sortedCellRecordVector]", v3, v4);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v32, v26, 877, 0, "no duplicate cell records permitted, %lu vs %lu", v12, v17);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
        goto LABEL_20;
      }

LABEL_16:
      v16 = v17 - 1;
      goto LABEL_17;
    }
  }

  return self;
}

- (void)appendExpandedEdgeToArchive:(void *)a3 edge:(const TSCEInternalCellReference *)a4
{
  row = a4->coordinate.row;
  column = a4->coordinate.column;
  if (a4->tableID == self->_internalOwnerID)
  {
    v7 = *(a3 + 4);
    if (v7 == *(a3 + 5))
    {
      v8 = v7 + 1;
      sub_2210BBC64(a3 + 4, v7 + 1);
      *(*(a3 + 3) + 4 * v7) = row;
    }

    else
    {
      *(*(a3 + 3) + 4 * v7) = row;
      v8 = v7 + 1;
    }

    v12 = *(a3 + 8);
    *(a3 + 4) = v8;
    if (v12 == *(a3 + 9))
    {
      v13 = v12 + 1;
      sub_2210BBC64(a3 + 8, v12 + 1);
      *(*(a3 + 5) + 4 * v12) = column;
    }

    else
    {
      *(*(a3 + 5) + 4 * v12) = column;
      v13 = v12 + 1;
    }

    *(a3 + 8) = v13;
  }

  else
  {
    v10 = *(a3 + 12);
    if (v10 == *(a3 + 13))
    {
      v11 = v10 + 1;
      sub_2210BBC64(a3 + 12, v10 + 1);
      *(*(a3 + 7) + 4 * v10) = row;
    }

    else
    {
      *(*(a3 + 7) + 4 * v10) = row;
      v11 = v10 + 1;
    }

    v14 = *(a3 + 16);
    *(a3 + 12) = v11;
    if (v14 == *(a3 + 17))
    {
      v15 = v14 + 1;
      sub_2210BBC64(a3 + 16, v14 + 1);
      *(*(a3 + 9) + 4 * v14) = column;
    }

    else
    {
      *(*(a3 + 9) + 4 * v14) = column;
      v15 = v14 + 1;
    }

    v16 = *(a3 + 20);
    *(a3 + 16) = v15;
    tableID = a4->tableID;
    if (v16 == *(a3 + 21))
    {
      v18 = v16 + 1;
      sub_2210BBC64(a3 + 20, v16 + 1);
      *(*(a3 + 11) + 4 * v16) = tableID;
    }

    else
    {
      *(*(a3 + 11) + 4 * v16) = tableID;
      v18 = v16 + 1;
    }

    *(a3 + 20) = v18;
  }
}

- (void)encodeCellRecordsToArchive:(void *)a3
{
  p_cellsLock = &self->_cellsLock;
  v8 = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  v9 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22145D488;
  v7[3] = &unk_27845F240;
  v7[4] = self;
  v7[5] = a3;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, v6, 1, 0, v7);
  os_unfair_lock_unlock(p_cellsLock);
  v9 = 0;
  sub_2212E22F0(&v8);
}

- (void)collectDependencies:(id)a3 cellDependencies:(id)a4
{
  v33 = a3;
  v32 = a4;
  v34 = objc_msgSend_dependencyTracker(v32, v6, v7, v8, v9);
  v10 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
  if (v10)
  {
    v11 = 0;
    v12 = v10 >> 3;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    do
    {
      v14 = self->_cellRecords.__begin_[v11];
      v15 = [TSCECellDependencyRowPrinter alloc];
      v16 = NSStringFromTSUCellCoord();
      v19 = objc_msgSend_initWithCellID_dirtyPrecedentCount_(v15, v17, v16, v14->var2, v18);

      objc_msgSend_setIsFormula_(v19, v20, (v14->var6 >> 2) & 1, v21, v22);
      objc_msgSend_setIsInCycle_(v19, v23, (v14->var6 >> 1) & 1, v24, v25);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_22145D8F0;
      v38[3] = &unk_2784657E8;
      v38[4] = self;
      v26 = v34;
      v39 = v26;
      v27 = v19;
      v40 = v27;
      sub_2215C574C(v14, v38);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22145D9A8;
      v35[3] = &unk_2784657E8;
      v35[4] = self;
      v36 = v26;
      v28 = v27;
      v37 = v28;
      sub_2215C57F8(v14, v35);
      objc_msgSend_addDependencyRow_(v33, v29, v28, v30, v31);

      ++v11;
    }

    while (v13 != v11);
  }
}

- (void)saveToArchiver:(id)a3
{
  v14 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v14, v4, sub_22145E204, off_2812E2AC8[62], v5);

  internalOwnerID = self->_internalOwnerID;
  v8 = v6[4];
  v6[4] = v8 | 3;
  tileColumnBegin = self->_tileColumnBegin;
  v6[12] = internalOwnerID;
  v6[13] = tileColumnBegin;
  tileRowBegin = self->_tileRowBegin;
  v6[4] = v8 | 7;
  v6[14] = tileRowBegin;
  objc_msgSend_encodeCellRecordsToArchive_(self, v11, v6, v12, v13);
}

- (void)loadFromUnarchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v8, v4, off_2812E2AC8[62], v5, v6);

  self->_internalOwnerID = v7[12];
  self->_tileColumnBegin = v7[13];
  self->_tileRowBegin = v7[14];
  self->_unsortedCellsSize = 0;
  self->_pruningNeededRecords = 0;
  sub_22111B7CC(&self->_cellRecords.__begin_, 0x80uLL);
  self->_cellsLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  operator new();
}

- (void)unpackAfterUnarchiveForCellDependencies:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCECellRecordTile unpackAfterUnarchiveForCellDependencies:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1054, 0, "invalid nil value for '%{public}s'", "cellDependencies");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v23 = objc_msgSend_dependencyTracker(v8, v4, v5, v6, v7);
  if (!v23)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCECellRecordTile unpackAfterUnarchiveForCellDependencies:]", v21, v22);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1056, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v36 = *unarchivedCellRecords;
    v37 = unarchivedCellRecords[1];
    if (*unarchivedCellRecords == v37)
    {
      goto LABEL_11;
    }

    do
    {
      v38 = *v36;
      objc_msgSend_replaceCellRecord_cellDependencies_(self, v20, *v36, v8, v22);
      if (*(v38 + 16) == 1)
      {
        internalOwnerID = self->_internalOwnerID;
        v44 = *(v38 + 32) | (*(v38 + 36) << 32);
        v45 = internalOwnerID;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(v23, v39, &v44, 0, v40);
      }

      v42 = sub_2211226F4(v38);
      MEMORY[0x223DA1450](v42, 0x1020C4012755DA7);
      ++v36;
    }

    while (v36 != v37);
    unarchivedCellRecords = self->_unarchivedCellRecords;
    if (unarchivedCellRecords)
    {
LABEL_11:
      v43 = *unarchivedCellRecords;
      if (*unarchivedCellRecords)
      {
        unarchivedCellRecords[1] = v43;
        operator delete(v43);
      }

      MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
    }

    self->_unarchivedCellRecords = 0;
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

@end