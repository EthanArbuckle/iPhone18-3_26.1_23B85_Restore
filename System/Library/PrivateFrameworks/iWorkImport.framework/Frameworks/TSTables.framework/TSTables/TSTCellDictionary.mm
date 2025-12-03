@interface TSTCellDictionary
- (BOOL)hasCellAtCellID:(TSUCellCoord)d;
- (BOOL)shouldUpgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
- (TSCECellCoordSet)allCellCoords;
- (TSTCellDictionary)init;
- (id).cxx_construct;
- (id)cellAtCellID:(TSUCellCoord)d;
- (id)cellMap;
- (id)concurrentCellMapForTable:(id)table;
- (void)applyBlockToAllCells:(id)cells;
- (void)removeAllCells;
- (void)removeCellAtCellID:(TSUCellCoord)d;
- (void)setCell:(id)cell atCellID:(TSUCellCoord)d;
- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
@end

@implementation TSTCellDictionary

- (TSTCellDictionary)init
{
  v3.receiver = self;
  v3.super_class = TSTCellDictionary;
  result = [(TSTCellDictionary *)&v3 init];
  if (result)
  {
    result->_hasAnyRichTextCells = 0;
    *&result->_lock[0]._os_unfair_lock_opaque = 0u;
    *&result->_lock[4]._os_unfair_lock_opaque = 0u;
    *&result->_lock[8]._os_unfair_lock_opaque = 0u;
    *&result->_lock[12]._os_unfair_lock_opaque = 0u;
    *&result->_lock[16]._os_unfair_lock_opaque = 0u;
    result->_hasRichTextLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)setCell:(id)cell atCellID:(TSUCellCoord)d
{
  v29[0] = d;
  cellCopy = cell;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellDictionary setCell:atCellID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 68, 0, "can't insert an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (cellCopy)
  {
    v22 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
    v23 = (self + 4 * v22);
    os_unfair_lock_lock(v23 + 2);
    v29[2] = v29;
    v24 = sub_221280404(&self->_cellsByCoord[v22].__table_.__bucket_list_.__ptr_, v29);
    objc_storeStrong(v24 + 3, cell);
    os_unfair_lock_unlock(v23 + 2);
    if (!self->_hasAnyRichTextCells && objc_msgSend_valueType(cellCopy, v25, v26, v27, v28) == 9)
    {
      os_unfair_lock_lock(&self->_hasRichTextLock);
      self->_hasAnyRichTextCells = 1;
      os_unfair_lock_unlock(&self->_hasRichTextLock);
    }
  }
}

- (void)removeCellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
    v5 = (self + 4 * v4);
    os_unfair_lock_lock(v5 + 2);
    sub_221087EC8(&self->_cellsByCoord[v4].__table_.__bucket_list_.__ptr_, &dCopy);
    os_unfair_lock_unlock(v5 + 2);
  }
}

- (id)cellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellDictionary cellAtCellID:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 98, 0, "can't look up an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
  v19 = (self + 4 * v18);
  os_unfair_lock_lock(v19 + 2);
  v20 = sub_221087F14(&self->_cellsByCoord[v18].__table_.__bucket_list_.__ptr_, &dCopy);
  if (v20)
  {
    v21 = v20[3];
  }

  else
  {
    v21 = 0;
  }

  os_unfair_lock_unlock(v19 + 2);

  return v21;
}

- (BOOL)hasCellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellDictionary hasCellAtCellID:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 123, 0, "can't look up an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
  v19 = (self + 4 * v18);
  os_unfair_lock_lock(v19 + 2);
  v20 = sub_221087F14(&self->_cellsByCoord[v18].__table_.__bucket_list_.__ptr_, &dCopy) != 0;
  os_unfair_lock_unlock(v19 + 2);
  return v20;
}

- (void)removeAllCells
{
  lock = self->_lock;
  cellCoordsToStyleUpgradeForFormulatext = self->_cellCoordsToStyleUpgradeForFormulatext;
  v5 = 20;
  do
  {
    os_unfair_lock_lock(lock);
    sub_2211A89A4(&cellCoordsToStyleUpgradeForFormulatext[-20]);
    TSCECellCoordSet::clear(cellCoordsToStyleUpgradeForFormulatext);
    os_unfair_lock_unlock(lock);
    ++cellCoordsToStyleUpgradeForFormulatext;
    ++lock;
    --v5;
  }

  while (v5);
  os_unfair_lock_lock(&self->_hasRichTextLock);
  self->_hasAnyRichTextCells = 0;

  os_unfair_lock_unlock(&self->_hasRichTextLock);
}

- (id)cellMap
{
  if (!self->_temporaryContext)
  {
    v3 = objc_alloc_init(MEMORY[0x277D80888]);
    temporaryObjectContextDelegate = self->_temporaryObjectContextDelegate;
    self->_temporaryObjectContextDelegate = v3;

    v5 = objc_alloc(MEMORY[0x277D80878]);
    v9 = objc_msgSend_initWithDelegate_(v5, v6, self->_temporaryObjectContextDelegate, v7, v8);
    temporaryContext = self->_temporaryContext;
    self->_temporaryContext = v9;
  }

  v11 = [TSTCellMap alloc];
  v15 = objc_msgSend_initWithContext_(v11, v12, self->_temporaryContext, v13, v14);
  v16 = 0;
  lock = self->_lock;
  do
  {
    os_unfair_lock_lock(&lock[v16]);
    for (i = self->_cellsByCoord[v16].__table_.__first_node_.__next_; i; i = *i)
    {
      v19 = *(i + 2);
      v20 = *(i + 3);
      objc_msgSend_addCell_andCellID_(v15, v21, v20, v19, v22);
    }

    os_unfair_lock_unlock(&lock[v16++]);
  }

  while (v16 != 20);

  return v15;
}

- (id)concurrentCellMapForTable:(id)table
{
  tableCopy = table;
  objc_msgSend_allCellCoords(self, v5, v6, v7, v8);
  v9 = TSCECellCoordSet::minColumn(&v31);
  v10 = TSCECellCoordSet::maxColumn(&v31);
  TSCECellCoordSet::allRowIndexes(&v31, &v30);
  v11 = TSUIndexSet::asNSIndexSet(&v30);
  TSUIndexSet::~TSUIndexSet(&v30);
  lock = self->_lock;
  for (i = 8; i != 88; i += 4)
  {
    os_unfair_lock_lock((self + i));
  }

  if (TSCECellCoordSet::count(&v31))
  {
    v14 = [TSTConcurrentCellMap alloc];
    v16 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v14, v15, 0, 1, 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2215C439C;
    v24[3] = &unk_2784675C8;
    v27 = v9;
    v28 = v10 - v9 + 1;
    v25 = tableCopy;
    selfCopy = self;
    v29 = v9;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2215C4760;
    v22[3] = &unk_27845DDE8;
    v17 = v16;
    v23 = v17;
    objc_msgSend_tsu_enumerateRangesConcurrentlyUsingBeginBlock_concurrentBlock_finalBlock_(v11, v18, &unk_2834B2088, v24, v22);
  }

  else
  {
    v17 = 0;
  }

  v19 = 20;
  do
  {
    os_unfair_lock_unlock(lock++);
    --v19;
  }

  while (v19);
  v20 = v17;

  sub_22107C860(&v31._rowsPerColumn, v31._rowsPerColumn.__tree_.__end_node_.__left_);

  return v20;
}

- (TSCECellCoordSet)allCellCoords
{
  v4 = 0;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  lock = self->_lock;
  cellsByCoord = self->_cellsByCoord;
  do
  {
    os_unfair_lock_lock(&lock[v4]);
    for (i = cellsByCoord[v4].__table_.__first_node_.__next_; i; i = *i)
    {
      v9 = *(i + 2);
      TSCECellCoordSet::addCellCoord(retstr, &v9);
    }

    os_unfair_lock_unlock(&lock[v4++]);
  }

  while (v4 != 20);
  return result;
}

- (void)applyBlockToAllCells:(id)cells
{
  v4 = 0;
  lock = self->_lock;
  cellsCopy = cells;
  do
  {
    os_unfair_lock_lock(&lock[v4]);
    for (i = self->_cellsByCoord[v4].__table_.__first_node_.__next_; i; i = *i)
    {
      v7 = i[3];
      cellsCopy[2](cellsCopy, v7, (i + 2));
    }

    os_unfair_lock_unlock(&lock[v4++]);
  }

  while (v4 != 20);
}

- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  v5 = (coord->row ^ (coord->column << 8)) % 0x14;
  v6 = (self + 4 * v5);
  os_unfair_lock_lock(v6 + 2);
  TSCECellCoordSet::addCellCoord(&self->_cellCoordsToStyleUpgradeForFormulatext[v5], coord);

  os_unfair_lock_unlock(v6 + 2);
}

- (BOOL)shouldUpgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  coordCopy = coord;
  v5 = (coord->row ^ (coord->column << 8)) % 0x14;
  v6 = (self + 4 * v5);
  os_unfair_lock_lock(v6 + 2);
  LOBYTE(coordCopy) = TSCECellCoordSet::containsCellCoord(&self->_cellCoordsToStyleUpgradeForFormulatext[v5], coordCopy);
  os_unfair_lock_unlock(v6 + 2);
  return coordCopy;
}

- (id).cxx_construct
{
  for (i = 0; i != 800; i += 40)
  {
    v3 = self + i;
    *(v3 + 104) = 0uLL;
    *(v3 + 88) = 0uLL;
    *(v3 + 30) = 1065353216;
  }

  for (j = 912; j != 1712; j += 40)
  {
    v5 = self + j;
    *v5 = 0;
    v5[1] = 0;
    *(v5 - 3) = 0;
    *(v5 - 2) = 0;
    *(v5 - 1) = v5;
  }

  return self;
}

@end