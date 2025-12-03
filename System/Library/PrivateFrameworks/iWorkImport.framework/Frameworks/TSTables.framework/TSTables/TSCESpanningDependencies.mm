@interface TSCESpanningDependencies
- (BOOL)addReference:(const TSCEInternalCellReference *)reference toColumn:(unsigned int)column rangeContext:(unsigned __int8)context;
- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange;
- (BOOL)coordinateIsInPotentiallyIgnoredHeaderOrFooter:(const TSUCellCoord *)footer;
- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)coord;
- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord;
- (BOOL)isEmpty;
- (TSCERangeCoordinate)bodyRangeOfTable;
- (TSCERangeCoordinate)totalRangeForTable;
- (TSCERangeCoordinate)totalRangeOfTable;
- (TSCESpanningDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD isColumns:(BOOL)columns;
- (TSCESpanningDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD isColumns:(BOOL)columns archive:(const void *)archive;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (id)explainDirtyPrecedentCount:(TSUCellCoord)count cellIsInACycle:(BOOL)cycle;
- (id)precedentsAsString:(TSUCellCoord)string dirtyOnly:(BOOL)only;
- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)precedents cellIsInACycle:(BOOL)cycle;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)applyBlockToCellsReferencingColumn:(unsigned int)column block:(id)block;
- (void)applyBlockToCellsReferencingColumn:(unsigned int)column rangeContext:(unsigned __int8)context block:(id)block;
- (void)applyBlockToCellsReferencingColumnsInRange:(unsigned int)range endIndex:(unsigned int)index block:(id)block;
- (void)applyBlockToCellsReferencingColumnsInRange:(unsigned int)range endIndex:(unsigned int)index rangeContext:(unsigned __int8)context block:(id)block;
- (void)applyBlockToCellsReferencingCoordinate:(TSUCellCoord)coordinate block:(id)block;
- (void)cellRefsForFormulasReferringToIndex:(unsigned int)index outCellRefs:(void *)refs cycleCellsOnly:(BOOL)only;
- (void)cellsReferencingColumn:(unsigned int)column outCells:(id)cells;
- (void)cellsReferencingColumn:(unsigned int)column rangeContext:(unsigned __int8)context outCells:(id)cells;
- (void)cellsReferencingCoordinate:(const TSUCellCoord *)coordinate outCells:(id)cells;
- (void)collectReferencesForFormulasReferencingIndices:(unsigned int)indices endIndex:(unsigned int)index outFormulaCells:(void *)cells;
- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)leaves referencingCellIsInACycle:(BOOL)cycle;
- (void)deleteReferencesFromCell:(const TSUCellCoord *)cell takeLock:(BOOL)lock;
- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)range;
- (void)dirtyAllReferencingFormulas;
- (void)encodeToArchive:(void *)archive;
- (void)encodeToExpandedArchive:(void *)archive;
- (void)findFormulasReferencingColumnsInRange:(TSCERangeCoordinate)range columnIndex:(unsigned int)index shiftedTableUID:(const TSKUIDStruct *)d outCellsToRewrite:(void *)rewrite;
- (void)formulaCellsReferencingIndices:(unsigned int)indices endIndex:(unsigned int)index outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingRangesAffectedByInsertRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingRangesAffectedByMoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingRangesAffectedByRemoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)insertReferringColumnRef:(const TSCEColumnReference *)ref fromCoord:(const TSUCellCoord *)coord;
- (void)processDependentsForDFS:(id)s coord:(const TSUCellCoord *)coord outCells:(void *)cells;
- (void)pushDependents:(const TSUCellCoord *)dependents outDependents:(id)outDependents referencingCellIsInACycle:(BOOL)cycle;
- (void)readFromArchive:(const void *)archive;
- (void)readFromExpandedArchive:(const void *)archive;
- (void)removeAllPrecedents;
- (void)unpackAfterUnarchive;
- (void)updateReferringFormulasForHeaderStateChange;
@end

@implementation TSCESpanningDependencies

- (TSCESpanningDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD isColumns:(BOOL)columns
{
  v12.receiver = self;
  v12.super_class = TSCESpanningDependencies;
  result = [(TSCESpanningDependencies *)&v12 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_ownerUID = *iD;
    result->_internalOwnerID = d;
    result->_isColumns = columns;
    v11 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    result->_totalRangeForTable = v11;
    result->_bodyRangeForTable = v11;
    result->_cellsToReferringColumnRefsMutex._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (TSCESpanningDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD isColumns:(BOOL)columns archive:(const void *)archive
{
  trackerCopy = tracker;
  v20.receiver = self;
  v20.super_class = TSCESpanningDependencies;
  v13 = [(TSCESpanningDependencies *)&v20 init];
  v17 = v13;
  if (v13)
  {
    *(v13 + 1) = trackerCopy;
    *(v13 + 1) = *iD;
    *(v13 + 16) = d;
    v13[34] = columns;
    v18 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    *(v13 + 36) = v18;
    *(v13 + 52) = v18;
    *(v13 + 28) = 0;
    __dmb(0xBu);
    objc_msgSend_readFromArchive_(v13, v14, archive, v15, v16);
  }

  return v17;
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  if (self->_referringColumnsToLocalCells.__table_.__size_)
  {
    os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
    return 0;
  }

  size = self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__size_;
  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
  if (size)
  {
    return 0;
  }

  if (!self->_referringColumnsToRemoteCells.__table_.__size_)
  {
    return 1;
  }

  p_first_node = &self->_referringColumnsToRemoteCells.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    v4 = p_first_node == 0;
  }

  while (p_first_node && sub_2212E0280(&p_first_node[3]));
  return v4;
}

- (BOOL)addReference:(const TSCEInternalCellReference *)reference toColumn:(unsigned int)column rangeContext:(unsigned __int8)context
{
  columnCopy = column;
  contextCopy = context;
  if (reference->tableID == self->_internalOwnerID)
  {
    v27 = &columnCopy;
    v9 = sub_22142D88C(&self->_referringColumnsToLocalCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    TSCECellCoordSet::addCellCoord((v9 + 3), &reference->coordinate);
  }

  else
  {
    v27 = &columnCopy;
    v13 = sub_22142DAFC(&self->_referringColumnsToRemoteCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    sub_2212DFCE8(v13 + 3, reference);
  }

  LODWORD(v27) = column;
  WORD2(v27) = self->_internalOwnerID;
  BYTE6(v27) = context;
  v14 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v10, reference->tableID, v11, v12);
  v19 = v14;
  if (self->_isColumns)
  {
    objc_msgSend_spanningColumnDependencies(v14, v15, v16, v17, v18);
  }

  else
  {
    objc_msgSend_spanningRowDependencies(v14, v15, v16, v17, v18);
  }
  v20 = ;
  v23 = v20;
  if (v20)
  {
    objc_msgSend_insertReferringColumnRef_fromCoord_(v20, v21, &v27, reference, v22);
  }

  return 1;
}

- (void)deleteReferencesFromCell:(const TSUCellCoord *)cell takeLock:(BOOL)lock
{
  lockCopy = lock;
  internalOwnerID = self->_internalOwnerID;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_22142922C;
  v12[4] = sub_22142923C;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_22142922C;
  v10[4] = sub_22142923C;
  v11 = 0;
  if (lock)
  {
    os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221429244;
  v8[3] = &unk_278464F60;
  v9 = internalOwnerID;
  v8[4] = self;
  v8[5] = v12;
  v8[6] = v10;
  v8[7] = cell;
  sub_221428AC0(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, cell, v8);
  sub_22142D840(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, cell);
  if (lockCopy)
  {
    os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
  }

  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);
}

- (BOOL)coordinateIsInPotentiallyIgnoredHeaderOrFooter:(const TSUCellCoord *)footer
{
  if (self->_isColumns)
  {
    v12._topLeft = objc_msgSend_bodyRangeOfTable(self, a2, footer, v3, v4);
    v12._bottomRight = v6;
    isValid = TSCERangeCoordinate::isValid(&v12);
    if (!isValid)
    {
      return isValid;
    }

    v8 = footer->row < v12._topLeft.row || footer->row > v12._bottomRight.row;
    goto LABEL_11;
  }

  if (footer->column > 4u)
  {
    LOBYTE(isValid) = 0;
    return isValid;
  }

  v12._topLeft = objc_msgSend_bodyRangeOfTable(self, a2, footer, v3, v4);
  v12._bottomRight = v9;
  isValid = TSCERangeCoordinate::isValid(&v12);
  if (isValid)
  {
    column = footer->column;
    v8 = column < v12._topLeft.column || column > v12._bottomRight.column;
LABEL_11:
    LOBYTE(isValid) = v8;
  }

  return isValid;
}

- (void)insertReferringColumnRef:(const TSCEColumnReference *)ref fromCoord:(const TSUCellCoord *)coord
{
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  sub_221428A54(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, ref, coord);

  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
}

- (void)applyBlockToCellsReferencingCoordinate:(TSUCellCoord)coordinate block:(id)block
{
  blockCopy = block;
  v10 = objc_msgSend_bodyRangeOfTable(self, v6, v7, v8, v9);
  v12 = v11;
  v16 = objc_msgSend_totalRangeOfTable(self, v11, v13, v14, v15);
  if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000 && v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v16) <= WORD2(v17) && v16 <= v17 && v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000 && v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v10) <= WORD2(v12) && v10 <= v12 && coordinate.column >= WORD2(v16) && coordinate.row >= v16 && coordinate.column <= WORD2(v17) && coordinate.row <= v17)
  {
    if (self->_isColumns)
    {
      objc_msgSend_applyBlockToCellsReferencingColumn_block_(self, v17, coordinate.column, blockCopy, v18);
    }

    else
    {
      objc_msgSend_applyBlockToCellsReferencingColumn_block_(self, v17, coordinate.row, blockCopy, v18);
    }
  }
}

- (void)applyBlockToCellsReferencingColumn:(unsigned int)column block:(id)block
{
  v4 = *&column;
  blockCopy = block;
  objc_msgSend_applyBlockToCellsReferencingColumn_rangeContext_block_(self, v6, v4, 0, blockCopy);
  objc_msgSend_applyBlockToCellsReferencingColumn_rangeContext_block_(self, v7, v4, 1, blockCopy);
  objc_msgSend_applyBlockToCellsReferencingColumn_rangeContext_block_(self, v8, v4, 2, blockCopy);
}

- (void)applyBlockToCellsReferencingColumn:(unsigned int)column rangeContext:(unsigned __int8)context block:(id)block
{
  blockCopy = block;
  if (self->_referringColumnsToLocalCells.__table_.__size_ || self->_referringColumnsToRemoteCells.__table_.__size_)
  {
    columnCopy = column;
    contextCopy = context;
    v9 = sub_22142DDCC(&self->_referringColumnsToLocalCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    v10 = v9;
    if (v9)
    {
      v11 = v9[2];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_221429834;
      v18[3] = &unk_278464F88;
      v18[4] = self;
      v19 = blockCopy;
      v20 = v11;
      TSCECellCoordSet::enumerateCoordsUsingBlock(v10 + 3, v18);
    }

    v12 = sub_22142DDCC(&self->_referringColumnsToRemoteCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    v13 = v12;
    if (v12)
    {
      v14 = v12[2];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_221429858;
      v15[3] = &unk_278464FB0;
      v16 = blockCopy;
      v17 = v14;
      sub_2212DFEC0((v13 + 3), v15);
    }
  }
}

- (void)cellsReferencingCoordinate:(const TSUCellCoord *)coordinate outCells:(id)cells
{
  cellsCopy = cells;
  v10 = objc_msgSend_bodyRangeOfTable(self, v6, v7, v8, v9);
  v12 = v11;
  v16 = objc_msgSend_totalRangeOfTable(self, v11, v13, v14, v15);
  if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000 && v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v16) <= WORD2(v17) && v16 <= v17 && v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000 && v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(v10) <= WORD2(v12) && v10 <= v12)
  {
    column = coordinate->column;
    if (column >= WORD2(v16))
    {
      row = coordinate->row;
      if (coordinate->row >= v16 && column <= WORD2(v17) && row <= v17)
      {
        if (self->_isColumns)
        {
          objc_msgSend_cellsReferencingColumn_outCells_(self, v17, coordinate->column, cellsCopy, v18);
        }

        else
        {
          objc_msgSend_cellsReferencingColumn_outCells_(self, v17, row, cellsCopy, v18);
        }
      }
    }
  }
}

- (void)cellsReferencingColumn:(unsigned int)column outCells:(id)cells
{
  v4 = *&column;
  cellsCopy = cells;
  objc_msgSend_cellsReferencingColumn_rangeContext_outCells_(self, v6, v4, 0, cellsCopy);
  objc_msgSend_cellsReferencingColumn_rangeContext_outCells_(self, v7, v4, 1, cellsCopy);
  objc_msgSend_cellsReferencingColumn_rangeContext_outCells_(self, v8, v4, 2, cellsCopy);
}

- (void)cellsReferencingColumn:(unsigned int)column rangeContext:(unsigned __int8)context outCells:(id)cells
{
  cellsCopy = cells;
  if (self->_referringColumnsToLocalCells.__table_.__size_ || self->_referringColumnsToRemoteCells.__table_.__size_)
  {
    columnCopy = column;
    contextCopy = context;
    v9 = sub_22142DDCC(&self->_referringColumnsToLocalCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    if (v9)
    {
      memset(v17, 0, sizeof(v17));
      v18 = 1065353216;
      sub_2212DFD38(v17, self->_internalOwnerID, (v9 + 3));
      v15 = 0x7FFF7FFFFFFFLL;
      v16 = 0xFFFF;
      objc_msgSend_addCellRefs_fromCellRef_(cellsCopy, v10, v17, &v15, v11);
      sub_221122744(v17);
    }

    v12 = sub_22142DDCC(&self->_referringColumnsToRemoteCells.__table_.__bucket_list_.__ptr_, &columnCopy);
    if (v12)
    {
      *&v17[0] = 0x7FFF7FFFFFFFLL;
      DWORD2(v17[0]) = 0xFFFF;
      objc_msgSend_addCellRefs_fromCellRef_(cellsCopy, v13, (v12 + 3), v17, v14);
    }
  }
}

- (void)applyBlockToCellsReferencingColumnsInRange:(unsigned int)range endIndex:(unsigned int)index block:(id)block
{
  v6 = *&range;
  blockCopy = block;
  if (self->_referringColumnsToRemoteCells.__table_.__size_ + self->_referringColumnsToLocalCells.__table_.__size_ >= index - v6 + 1)
  {
    for (; v6 <= index; v6 = (v6 + 1))
    {
      objc_msgSend_applyBlockToCellsReferencingColumn_block_(self, v8, v6, blockCopy, v9);
    }
  }

  else
  {
    next = self->_referringColumnsToLocalCells.__table_.__first_node_.__next_;
    if (next)
    {
      v12 = MEMORY[0x277D85DD0];
      do
      {
        v13 = next[2];
        v20[0] = v12;
        v20[1] = 3221225472;
        v20[2] = sub_221429D50;
        v20[3] = &unk_278464F88;
        v20[4] = self;
        v21 = blockCopy;
        v22 = v13;
        TSCECellCoordSet::enumerateCoordsUsingBlock(next + 3, v20);

        next = *next;
      }

      while (next);
    }

    v14 = self->_referringColumnsToRemoteCells.__table_.__first_node_.__next_;
    if (v14)
    {
      v15 = MEMORY[0x277D85DD0];
      do
      {
        v16 = v14[2];
        v17[0] = v15;
        v17[1] = 3221225472;
        v17[2] = sub_221429D74;
        v17[3] = &unk_278464FB0;
        v18 = blockCopy;
        v19 = v16;
        sub_2212DFEC0((v14 + 3), v17);

        v14 = *v14;
      }

      while (v14);
    }
  }
}

- (void)applyBlockToCellsReferencingColumnsInRange:(unsigned int)range endIndex:(unsigned int)index rangeContext:(unsigned __int8)context block:(id)block
{
  contextCopy = context;
  v8 = *&range;
  blockCopy = block;
  if (self->_referringColumnsToRemoteCells.__table_.__size_ + self->_referringColumnsToLocalCells.__table_.__size_ >= index - v8 + 1)
  {
    for (; v8 <= index; v8 = (v8 + 1))
    {
      objc_msgSend_applyBlockToCellsReferencingColumn_rangeContext_block_(self, v10, v8, contextCopy, blockCopy);
    }
  }

  else
  {
    for (i = self->_referringColumnsToLocalCells.__table_.__first_node_.__next_; i; i = *i)
    {
      v13 = *(i + 4);
      v14 = i[20];
      v30 = *(i + 21);
      v31 = i[23];
      if (v14 == contextCopy)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_221429FC0;
        v24[3] = &unk_278464F88;
        v24[4] = self;
        v25 = blockCopy;
        v26 = v13;
        v27 = contextCopy;
        v28 = v30;
        v29 = v31;
        TSCECellCoordSet::enumerateCoordsUsingBlock(i + 3, v24);
      }
    }

    for (j = self->_referringColumnsToRemoteCells.__table_.__first_node_.__next_; j; j = *j)
    {
      v16 = *(j + 4);
      v17 = j[20];
      v30 = *(j + 21);
      v31 = j[23];
      if (v17 == contextCopy)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_221429FE4;
        v18[3] = &unk_278464FB0;
        v19 = blockCopy;
        v20 = v16;
        v21 = contextCopy;
        v22 = v30;
        v23 = v31;
        sub_2212DFEC0((j + 24), v18);
      }
    }
  }
}

- (void)pushDependents:(const TSUCellCoord *)dependents outDependents:(id)outDependents referencingCellIsInACycle:(BOOL)cycle
{
  cycleCopy = cycle;
  outDependentsCopy = outDependents;
  v12 = objc_msgSend_coordinateIsInPotentiallyIgnoredHeaderOrFooter_(self, v9, dependents, v10, v11);
  if ((cycleCopy | v12))
  {
    v15 = *dependents;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22142A10C;
    v18[3] = &unk_278464FD8;
    v21 = v12;
    v22 = cycleCopy;
    v18[4] = self;
    v19 = outDependentsCopy;
    dependentsCopy = dependents;
    objc_msgSend_applyBlockToCellsReferencingCoordinate_block_(self, v16, v15, v18, v17);
  }

  else
  {
    objc_msgSend_cellsReferencingCoordinate_outCells_(self, v13, dependents, outDependentsCopy, v14);
  }
}

- (void)findFormulasReferencingColumnsInRange:(TSCERangeCoordinate)range columnIndex:(unsigned int)index shiftedTableUID:(const TSKUIDStruct *)d outCellsToRewrite:(void *)rewrite
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22142A230;
  v6[3] = &unk_278465000;
  v6[4] = self;
  v6[5] = d;
  rangeCopy = range;
  v6[6] = rewrite;
  objc_msgSend_applyBlockToCellsReferencingColumn_block_(self, a2, *&index, v6, *&index);
}

- (void)formulaCellsReferencingRangesAffectedByRemoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_affectedRangeForRemoveRows(v11, v12, v13, v14, v15);
  v18 = v17;
  isRows = objc_msgSend_isRows(v11, v17, v19, v20, v21);
  if (isRows)
  {
    v27 = v18;
  }

  else
  {
    v27 = WORD2(v18);
  }

  v28 = objc_msgSend_tableUID(rowsCopy, v22, v23, v24, v25);
  if (isRows)
  {
    v30 = v16;
  }

  else
  {
    v30 = WORD2(v16);
  }

  v32[0] = v28;
  v32[1] = v29;
  if (v30 <= v27)
  {
    v31 = v27 + 1;
    do
    {
      objc_msgSend_findFormulasReferencingColumnsInRange_columnIndex_shiftedTableUID_outCellsToRewrite_(self, v29, v16, v18, v30, v32, cells);
      v30 = (v30 + 1);
    }

    while (v31 != v30);
  }
}

- (void)formulaCellsReferencingRangesAffectedByInsertRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  inserted = objc_msgSend_affectedRangeForInsertRows(v11, v12, v13, v14, v15);
  v18 = v17;
  isRows = objc_msgSend_isRows(v11, v17, v19, v20, v21);
  if (isRows)
  {
    v27 = v18;
  }

  else
  {
    v27 = WORD2(v18);
  }

  v28 = objc_msgSend_tableUID(rowsCopy, v22, v23, v24, v25);
  if (isRows)
  {
    v30 = inserted;
  }

  else
  {
    v30 = WORD2(inserted);
  }

  v32[0] = v28;
  v32[1] = v29;
  if (v30 <= v27)
  {
    v31 = v27 + 1;
    do
    {
      objc_msgSend_findFormulasReferencingColumnsInRange_columnIndex_shiftedTableUID_outCellsToRewrite_(self, v29, inserted, v18, v30, v32, cells);
      v30 = (v30 + 1);
    }

    while (v31 != v30);
  }
}

- (void)formulaCellsReferencingRangesAffectedByMoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_affectedRangeForMoveRows(v11, v12, v13, v14, v15);
  v18 = v17;
  isRows = objc_msgSend_isRows(v11, v17, v19, v20, v21);
  if (isRows)
  {
    v27 = v18;
  }

  else
  {
    v27 = WORD2(v18);
  }

  v28 = objc_msgSend_tableUID(rowsCopy, v22, v23, v24, v25);
  if (isRows)
  {
    v30 = v16;
  }

  else
  {
    v30 = WORD2(v16);
  }

  v32[0] = v28;
  v32[1] = v29;
  if (v30 <= v27)
  {
    v31 = v27 + 1;
    do
    {
      objc_msgSend_findFormulasReferencingColumnsInRange_columnIndex_shiftedTableUID_outCellsToRewrite_(self, v29, v16, v18, v30, v32, cells);
      v30 = (v30 + 1);
    }

    while (v31 != v30);
  }
}

- (void)formulaCellsReferencingIndices:(unsigned int)indices endIndex:(unsigned int)index outFormulaCells:(void *)cells
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22142A650;
  v5[3] = &unk_278465028;
  indicesCopy = indices;
  indexCopy = index;
  v5[4] = self;
  v5[5] = cells;
  objc_msgSend_applyBlockToCellsReferencingColumnsInRange_endIndex_block_(self, a2, *&indices, *&index, v5);
}

- (void)collectReferencesForFormulasReferencingIndices:(unsigned int)indices endIndex:(unsigned int)index outFormulaCells:(void *)cells
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22142A74C;
  v5[3] = &unk_278465048;
  indicesCopy = indices;
  indexCopy = index;
  v5[4] = cells;
  objc_msgSend_applyBlockToCellsReferencingColumnsInRange_endIndex_block_(self, a2, *&indices, *&index, v5);
}

- (void)dirtyAllReferencingFormulas
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22142A810;
  v2[3] = &unk_278465070;
  v2[4] = self;
  objc_msgSend_applyBlockToCellsReferencingColumnsInRange_endIndex_block_(self, a2, 0, 999999, v2);
}

- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)range
{
  if (range._topLeft.row == 0x7FFFFFFF || (*&range._topLeft & 0xFFFF00000000) == 0x7FFF00000000 || range._bottomRight.row == 0x7FFFFFFF || (*&range._bottomRight & 0xFFFF00000000) == 0x7FFF00000000 || range._topLeft.column > range._bottomRight.column || range._topLeft.row > range._bottomRight.row)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCESpanningDependencies dirtyAllFormulasReferencingRange:]", *&range._bottomRight, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESpanningDependencies.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 940, 0, "invalid input range");

    v18 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v18, v14, v15, v16, v17);
  }

  else
  {
    v4 = !self->_isColumns;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22142A9BC;
    v19[3] = &unk_278465028;
    if (v4)
    {
      row = range._topLeft.row;
    }

    else
    {
      row = range._topLeft.column;
    }

    if (v4)
    {
      column = range._bottomRight.row;
    }

    else
    {
      column = range._bottomRight.column;
    }

    v19[4] = self;
    rangeCopy = range;
    objc_msgSend_applyBlockToCellsReferencingColumnsInRange_endIndex_block_(self, a2, row, column, v19);
  }
}

- (void)removeAllPrecedents
{
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  while (self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__size_)
  {
    v5 = *(self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__first_node_.__next_ + 2);
    objc_msgSend_deleteReferencesFromCell_takeLock_(self, v3, &v5, 0, v4);
  }

  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
}

- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)coord
{
  selfCopy = self;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_coordinateIsInPotentiallyIgnoredHeaderOrFooter_(self, a2, coord, v3, v4);
  v8 = *coord;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22142AB50;
  v12[3] = &unk_278465098;
  v13 = v7;
  v12[4] = &v14;
  objc_msgSend_applyBlockToCellsReferencingCoordinate_block_(selfCopy, v9, v8, v12, v10);
  LOBYTE(selfCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return selfCopy;
}

- (void)processDependentsForDFS:(id)s coord:(const TSUCellCoord *)coord outCells:(void *)cells
{
  sCopy = s;
  v12 = objc_msgSend_coordinateIsInPotentiallyIgnoredHeaderOrFooter_(self, v9, coord, v10, v11);
  v13 = *coord;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22142AC64;
  v17[3] = &unk_2784650C0;
  v20 = v12;
  v14 = sCopy;
  v18 = v14;
  cellsCopy = cells;
  objc_msgSend_applyBlockToCellsReferencingCoordinate_block_(self, v15, v13, v17, v16);
}

- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)leaves referencingCellIsInACycle:(BOOL)cycle
{
  cycleCopy = cycle;
  coordinate = leaves->var0.coordinate;
  v8 = objc_msgSend_coordinateIsInPotentiallyIgnoredHeaderOrFooter_(self, a2, &coordinate, cycle, v4);
  v13 = objc_msgSend_currentCellBeingModified(self->_dependencyTracker, v9, v10, v11, v12);
  v15 = v14;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_22142922C;
  v40[4] = sub_22142923C;
  v16 = leaves->var1;
  v41 = objc_msgSend_cellDependencies(v16, v17, v18, v19, v20);

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22142AF34;
  v37[3] = &unk_2784650E8;
  v37[5] = v40;
  v37[6] = v13;
  v38 = v15;
  v37[4] = self;
  v39 = cycleCopy;
  v21 = MEMORY[0x223DA1C10](v37);
  v22 = v21;
  if ((v8 & 1) != 0 || cycleCopy)
  {
    v29 = coordinate;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22142B114;
    v34[3] = &unk_278465110;
    v36 = v8;
    v35 = v21;
    objc_msgSend_applyBlockToCellsReferencingCoordinate_block_(self, v30, v29, v34, v31);
    v23 = v35;
  }

  else
  {
    v23 = objc_opt_new();
    objc_msgSend_cellsReferencingCoordinate_outCells_(self, v24, &coordinate, v23, v25);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_22142B14C;
    v32[3] = &unk_278465138;
    v33 = v22;
    objc_msgSend_enumerateCellRefsUsingBlock_(v23, v26, v32, v27, v28);
  }

  _Block_object_dispose(v40, 8);
}

- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)precedents cellIsInACycle:(BOOL)cycle
{
  precedentsCopy = precedents;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22142B25C;
  v9[3] = &unk_278465160;
  cycleCopy = cycle;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = precedents;
  sub_221428AC0(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, &precedentsCopy, v9);
  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (id)explainDirtyPrecedentCount:(TSUCellCoord)count cellIsInACycle:(BOOL)cycle
{
  if (self->_isColumns)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"Spanning %@ dependencies:\n", cycle, v4, @"column");
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"Spanning %@ dependencies:\n", cycle, v4, @"row");
  }

  return 0;
}

- (id)precedentsAsString:(TSUCellCoord)string dirtyOnly:(BOOL)only
{
  v4 = MEMORY[0x277CCAB68];
  if (self->_isColumns)
  {
    v5 = @"column";
  }

  else
  {
    v5 = @"row";
  }

  v6 = NSStringFromTSUCellCoord();
  v10 = objc_msgSend_stringWithFormat_(v4, v7, @"Spanning %@ precedents of %@:\n", v8, v9, v5, v6);

  return v10;
}

- (void)updateReferringFormulasForHeaderStateChange
{
  v6 = objc_msgSend_totalRangeOfTable(self, a2, v2, v3, v4);
  if (self->_isColumns)
  {
    v8 = WORD2(v6);
  }

  else
  {
    v8 = v6;
  }

  if (self->_isColumns)
  {
    v9 = WORD2(v7);
  }

  else
  {
    v9 = v7;
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_22142922C;
  v11[4] = sub_22142923C;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22142B6A8;
  v10[3] = &unk_278465188;
  v10[4] = self;
  v10[5] = v11;
  objc_msgSend_applyBlockToCellsReferencingColumnsInRange_endIndex_rangeContext_block_(self, v7, v8, v9, 0, v10);
  _Block_object_dispose(v11, 8);
}

- (void)cellRefsForFormulasReferringToIndex:(unsigned int)index outCellRefs:(void *)refs cycleCellsOnly:(BOOL)only
{
  onlyCopy = only;
  v7 = *&index;
  v9 = objc_opt_new();
  v19 = v9;
  if (onlyCopy)
  {
    objc_msgSend_cellsReferencingColumn_outCells_(self, v9, v7, v9, v10);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22142B8E0;
    v20[3] = &unk_2784651B0;
    v20[4] = self;
    v20[5] = refs;
    objc_msgSend_enumerateCellRefsUsingBlock_(v19, v11, v20, v12, v13);
  }

  else
  {
    objc_msgSend_cellsReferencingColumn_outCells_(self, v9, v7, v9, v10);
    v18 = objc_msgSend_asCellRefSet(v19, v14, v15, v16, v17);
    sub_2212DFD90(refs, v18);
  }
}

- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22142BA20;
  v6[3] = &unk_2784651D8;
  v6[4] = &v7;
  sub_221428AC0(&selfCopy->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, coord, v6);
  os_unfair_lock_unlock(&selfCopy->_cellsToReferringColumnRefsMutex);
  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22142BADC;
  v7[3] = &unk_278465200;
  v7[4] = self;
  v7[5] = set;
  sub_221428AC0(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, coord, v7);
  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22142BC20;
  v6[3] = &unk_278465228;
  v6[5] = &v7;
  v6[6] = cellRange;
  v6[4] = self;
  sub_221428AC0(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, range, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (TSCERangeCoordinate)totalRangeOfTable
{
  totalRangeForTable = self->_totalRangeForTable;
  if (!TSCERangeCoordinate::isValid(&totalRangeForTable))
  {
    dependencyTracker = self->_dependencyTracker;
    if (dependencyTracker)
    {
      v8 = objc_msgSend_calcEngine(dependencyTracker, v3, v4, v5, v6);
      v12 = v8;
      if (v8)
      {
        v13 = objc_msgSend_tableResolverWrapperForTableID_(v8, v9, self->_internalOwnerID, v10, v11);
        if (v13)
        {
          v14 = dispatch_get_global_queue(21, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22142BE40;
          block[3] = &unk_27845E3F8;
          block[4] = self;
          dispatch_async(v14, block);

          self->_totalRangeForTable._topLeft = TSCETableResolverWrapper::tableRangeCoordinate(v13, v15, v16, v17, v18);
          self->_totalRangeForTable._bottomRight = v19;
          v20 = self->_totalRangeForTable;
LABEL_9:
          totalRangeForTable = v20;

          goto LABEL_10;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v20 = xmmword_2217E1C30;
    goto LABEL_9;
  }

  objc_msgSend_assertValidTableRanges(self, v3, v4, v5, v6);
LABEL_10:
  topLeft = totalRangeForTable._topLeft;
  bottomRight = totalRangeForTable._bottomRight;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (TSCERangeCoordinate)bodyRangeOfTable
{
  bodyRangeForTable = self->_bodyRangeForTable;
  if (!TSCERangeCoordinate::isValid(&bodyRangeForTable))
  {
    dependencyTracker = self->_dependencyTracker;
    if (dependencyTracker)
    {
      v8 = objc_msgSend_calcEngine(dependencyTracker, v3, v4, v5, v6);
      v12 = v8;
      if (v8)
      {
        v13 = objc_msgSend_tableResolverWrapperForTableID_(v8, v9, self->_internalOwnerID, v10, v11);
        if (v13)
        {
          v14 = dispatch_get_global_queue(21, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22142BF74;
          block[3] = &unk_27845E3F8;
          block[4] = self;
          dispatch_async(v14, block);

          self->_bodyRangeForTable._topLeft = TSCETableResolverWrapper::bodyRangeCoordinate(v13, v15, v16, v17, v18);
          self->_bodyRangeForTable._bottomRight = v19;
          v20 = self->_bodyRangeForTable;
LABEL_9:
          bodyRangeForTable = v20;

          goto LABEL_10;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v20 = xmmword_2217E1C30;
    goto LABEL_9;
  }

  objc_msgSend_assertValidTableRanges(self, v3, v4, v5, v6);
LABEL_10:
  topLeft = bodyRangeForTable._topLeft;
  bottomRight = bodyRangeForTable._bottomRight;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (void)encodeToArchive:(void *)archive
{
  next = self->_referringColumnsToLocalCells.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v6 = next[4];
      v7 = *(next + 20);
      v8 = *(archive + 12);
      if (!v8)
      {
        goto LABEL_7;
      }

      v9 = *(archive + 22);
      v10 = *v8;
      if (v9 >= *v8)
      {
        break;
      }

      *(archive + 22) = v9 + 1;
      v11 = *&v8[2 * v9 + 2];
LABEL_9:
      v11[4] |= 3u;
      v11[12] = v6;
      v11[13] = v7 != 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_22142C274;
      v28[3] = &unk_27845F2D8;
      v28[4] = v11;
      TSCECellCoordSet::enumerateCoordsUsingBlock(next + 3, v28);
      next = *next;
      if (!next)
      {
        goto LABEL_10;
      }
    }

    if (v10 == *(archive + 23))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 80));
      v8 = *(archive + 12);
      v10 = *v8;
    }

    *v8 = v10 + 1;
    v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells>(*(archive + 10));
    v12 = *(archive + 22);
    v13 = *(archive + 12) + 8 * v12;
    *(archive + 22) = v12 + 1;
    *(v13 + 8) = v11;
    goto LABEL_9;
  }

LABEL_10:
  v14 = self->_referringColumnsToRemoteCells.__table_.__first_node_.__next_;
  if (v14)
  {
    while (1)
    {
      v15 = v14[4];
      v16 = *(v14 + 20);
      v17 = *(archive + 15);
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = *(archive + 28);
      v19 = *v17;
      if (v18 >= *v17)
      {
        break;
      }

      *(archive + 28) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
LABEL_18:
      v20[4] |= 3u;
      v20[12] = v15;
      v20[13] = v16 != 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22142C32C;
      v27[3] = &unk_27845F588;
      v27[4] = v20;
      sub_2212DFEC0((v14 + 6), v27);
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    if (v19 == *(archive + 29))
    {
LABEL_16:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 104));
      v17 = *(archive + 15);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells>(*(archive + 13));
    v21 = *(archive + 28);
    v22 = *(archive + 15) + 8 * v21;
    *(archive + 28) = v21 + 1;
    *(v22 + 8) = v20;
    goto LABEL_18;
  }

LABEL_19:
  *(archive + 4) |= 1u;
  v23 = *(archive + 16);
  if (!v23)
  {
    v24 = *(archive + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v24);
    *(archive + 16) = v23;
  }

  sub_221269844(&self->_totalRangeForTable, v23);
  *(archive + 4) |= 2u;
  v25 = *(archive + 17);
  if (!v25)
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v26);
    *(archive + 17) = v25;
  }

  sub_221269844(&self->_bodyRangeForTable, v25);
}

- (void)readFromArchive:(const void *)archive
{
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_22142C8BC;
  v57[3] = &unk_278465070;
  v57[4] = self;
  v11 = MEMORY[0x223DA1C10](v57, a2);
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    v13 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(dependencyTracker, v7, &self->_ownerUID, v9, v10);
  }

  else
  {
    v13 = -1;
  }

  self->_internalOwnerID = v13;
  v14 = *(archive + 16);
  if (v14 >= 1)
  {
    v15 = 0;
    v4 = &unk_2217E1C40;
    do
    {
      v16 = *(*(archive + 4) + 4 * v15);
      v55._rectRepresentation.origin.row = *(*(archive + 6) + 4 * v15);
      v17 = sub_22142898C(&v55, v7, v8, v9, v10);
      LODWORD(v56) = v16;
      BYTE4(v56) = v17;
      TSCE::CellReferenceArchive::CellReferenceArchive(&v55, *(*(archive + 9) + 8 * v15 + 8));
      sub_221269DB8(&v55, &v52);
      v21 = self->_dependencyTracker;
      if (v21)
      {
        v50 = objc_msgSend_internalCellReferenceForCellRef_(v21, v18, &v52, v19, v20);
        v51 = v22;
      }

      if (v53 == self->_ownerUID._lower && v54 == self->_ownerUID._upper)
      {
        v58 = &v56;
        v23 = sub_22142D88C(&self->_referringColumnsToLocalCells.__table_.__bucket_list_.__ptr_, &v56);
        TSCECellCoordSet::addCellCoord((v23 + 3), &v52);
      }

      else
      {
        v58 = &v56;
        v24 = sub_22142DAFC(&self->_referringColumnsToRemoteCells.__table_.__bucket_list_.__ptr_, &v56);
        sub_2212DFCE8(v24 + 3, &v50);
      }

      v3 = v3 & 0xFFFFFFFF00000000 | v51;
      v11[2](v11, v56, v50, v3);
      TSCE::CellReferenceArchive::~CellReferenceArchive(&v55);
      ++v15;
    }

    while (v14 != v15);
  }

  v49 = *(archive + 22);
  if (v49 >= 1)
  {
    for (i = 0; i != v49; ++i)
    {
      v26 = *(*(archive + 12) + 8 * i + 8);
      BYTE4(v50) = 0;
      v27 = *(v26 + 52);
      LODWORD(v50) = *(v26 + 48);
      v55._rectRepresentation.origin.row = v27;
      BYTE4(v50) = sub_22142898C(&v55, v7, v8, v9, v10);
      v55._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v55._rowsPerColumn.__tree_.__size_ = 0;
      v55._rectRepresentation.origin = 0;
      v55._rectRepresentation.size = 0;
      v55._rowsPerColumn.__tree_.__begin_node_ = &v55._rowsPerColumn.__tree_.__end_node_;
      v28 = *(v26 + 32);
      if (v28 >= 1)
      {
        v29 = 8;
        do
        {
          v52 = 0;
          v52 = sub_2212697C0(*(*(v26 + 40) + v29));
          TSCECellCoordSet::addCellCoord(&v55, &v52);
          v4 = v4 & 0xFFFFFFFF00000000 | self->_internalOwnerID;
          v11[2](v11, v50, *&v52 & 0xFFFFFFFFFFFFLL, v4);
          v29 += 8;
          --v28;
        }

        while (v28);
      }

      v52 = &v50;
      v30 = sub_22142D88C(&self->_referringColumnsToLocalCells.__table_.__bucket_list_.__ptr_, &v50);
      TSCECellCoordSet::operator=((v30 + 3), &v55);
      sub_22107C860(&v55._rowsPerColumn, v55._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  v31 = *(archive + 28);
  if (v31 >= 1)
  {
    for (j = 0; j != v31; ++j)
    {
      v33 = *(*(archive + 15) + 8 * j + 8);
      BYTE4(v50) = 0;
      v34 = *(v33 + 52);
      LODWORD(v50) = *(v33 + 48);
      v55._rectRepresentation.origin.row = v34;
      BYTE4(v50) = sub_22142898C(&v55, v7, v8, v9, v10);
      memset(&v55, 0, 32);
      LODWORD(v55._rowsPerColumn.__tree_.__size_) = 1065353216;
      v35 = *(v33 + 32);
      if (v35 >= 1)
      {
        v36 = 8;
        do
        {
          LODWORD(v53) = 0;
          v52 = 0;
          v52 = sub_2215C3954(*(*(v33 + 40) + v36));
          LODWORD(v53) = v37;
          v41 = self->_dependencyTracker;
          if (v41)
          {
            v42 = objc_msgSend_idMap(v41, v37, v38, v39, v40);
            v43 = v53;
            if (*(v42 + 144))
            {
              v43 = sub_2212602C8(v42, v53);
            }

            LOWORD(v53) = v43;
          }

          sub_2212DFCE8(&v55, &v52);
          v4 = v4 & 0xFFFFFFFF00000000 | v53;
          (v11[2])(v11, v50, v52, v4);
          v36 += 8;
          --v35;
        }

        while (v35);
      }

      v52 = &v50;
      v44 = sub_22142DAFC(&self->_referringColumnsToRemoteCells.__table_.__bucket_list_.__ptr_, &v50);
      sub_2212DFCA0((v44 + 3), &v55);
      sub_221122744(&v55);
    }
  }

  v45 = 0x7FFF7FFFFFFFLL;
  v46 = 0x7FFF7FFFFFFFLL;
  v47 = 0x7FFF7FFFFFFFLL;
  if (*(archive + 16))
  {
    v46 = sub_22126987C(*(archive + 16));
  }

  self->_totalRangeForTable._topLeft = v46;
  self->_totalRangeForTable._bottomRight = v47;
  v48 = 0x7FFF7FFFFFFFLL;
  if ((*(archive + 16) & 2) != 0)
  {
    v45 = sub_22126987C(*(archive + 17));
  }

  self->_bodyRangeForTable._topLeft = v45;
  self->_bodyRangeForTable._bottomRight = v48;
}

- (void)encodeToExpandedArchive:(void *)archive
{
  os_unfair_lock_lock(&self->_cellsToReferringColumnRefsMutex);
  sub_221428428(&self->_cellsToReferringColumnRefs, archive);
  os_unfair_lock_unlock(&self->_cellsToReferringColumnRefsMutex);
  *(archive + 4) |= 1u;
  v5 = *(archive + 6);
  if (!v5)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v6);
    *(archive + 6) = v5;
  }

  sub_221269844(&self->_totalRangeForTable, v5);
  *(archive + 4) |= 2u;
  v7 = *(archive + 7);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v8);
    *(archive + 7) = v7;
  }

  sub_221269844(&self->_bodyRangeForTable, v7);
}

- (void)readFromExpandedArchive:(const void *)archive
{
  v5 = 0x7FFF7FFFFFFFLL;
  v6 = 0x7FFF7FFFFFFFLL;
  v7 = 0x7FFF7FFFFFFFLL;
  if (*(archive + 16))
  {
    v6 = sub_22126987C(*(archive + 6));
  }

  self->_totalRangeForTable._topLeft = v6;
  self->_totalRangeForTable._bottomRight = v7;
  v8 = 0x7FFF7FFFFFFFLL;
  if ((*(archive + 16) & 2) != 0)
  {
    v5 = sub_22126987C(*(archive + 7));
  }

  self->_bodyRangeForTable._topLeft = v5;
  self->_bodyRangeForTable._bottomRight = v8;

  sub_221428848(&self->_cellsToReferringColumnRefs._columnRefsByCellCoord.__table_.__bucket_list_.__ptr_, archive);
}

- (void)unpackAfterUnarchive
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = sub_22142922C;
  v3[4] = sub_22142923C;
  v4 = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22142CD60;
  v2[3] = &unk_278465250;
  v2[4] = self;
  v2[5] = v3;
  sub_221428BC0(&self->_cellsToReferringColumnRefs, v2);
  _Block_object_dispose(v3, 8);
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCERangeCoordinate)totalRangeForTable
{
  bottomRight = self->_totalRangeForTable._bottomRight;
  topLeft = self->_totalRangeForTable._topLeft;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 26) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  return self;
}

@end