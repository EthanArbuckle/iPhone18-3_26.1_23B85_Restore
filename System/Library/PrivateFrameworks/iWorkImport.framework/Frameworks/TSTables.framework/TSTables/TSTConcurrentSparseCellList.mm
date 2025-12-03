@interface TSTConcurrentSparseCellList
- (TSTConcurrentSparseCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getCellAtUidOffset:(TSUColumnRowOffset)offset;
- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord;
- (void)addCell:(id)cell atUidOffset:(TSUColumnRowOffset)offset;
- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord;
- (void)appendCellUIDRange:(TSKUIDStructTract *)range;
- (void)enumerateSeriallyByUidOffsetUsingBlock:(id)block;
- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock;
- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block;
- (void)p_invokeBlock:(id)block;
- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize;
- (void)p_pruneCellsAtRow:(unint64_t)row rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize;
@end

@implementation TSTConcurrentSparseCellList

- (TSTConcurrentSparseCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range
{
  size = rect._rect.size;
  origin = rect._rect.origin;
  contextCopy = context;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_221086EBC(&v19, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_221086EBC(&__p, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
  v18.receiver = self;
  v18.super_class = TSTConcurrentSparseCellList;
  v14 = [(TSTConcurrentCellList *)&v18 initWithContext:contextCopy viewCellRect:origin cellUIDRange:size, &v19];
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v14)
  {
    v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v10, v11, v12, v13);
    validCells = v14->_validCells;
    v14->_validCells = v15;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSTConcurrentSparseCellList;
  v4 = [(TSTConcurrentCellList *)&v12 copyWithZone:zone];
  v9 = objc_msgSend_mutableCopy(self->_validCells, v5, v6, v7, v8);
  v10 = v4[46];
  v4[46] = v9;

  return v4;
}

- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord
{
  cellCopy = cell;
  viewCellRect = self->super._viewCellRect;
  v22 = viewCellRect;
  v10 = (coord._coord.row - v22.origin.row) * TSUCellRect::numColumns(&viewCellRect) + (((*&coord & 0xFFFF00000000) - (*&v22.origin & 0xFFFF00000000)) >> 32);
  if (v10 >= (self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_) * (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) && v10 >= self->super._viewCellRect._rect.size.numberOfColumns * self->super._viewCellRect._rect.size.numberOfRows)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConcurrentSparseCellList addCell:atViewCellCoord:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1848, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  objc_msgSend_addIndex_(self->_validCells, v7, v10, v8, v9, v22);
  v23.receiver = self;
  v23.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v23 addCell:cellCopy atViewCellCoord:coord];
}

- (void)addCell:(id)cell atUidOffset:(TSUColumnRowOffset)offset
{
  cellCopy = cell;
  v7 = (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) * (*&offset >> 32) + offset.var0;
  objc_msgSend_addIndex_(self->_validCells, v8, v7, v9, v10);
  v11.receiver = self;
  v11.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v11 addCell:cellCopy atIndex:v7];
}

- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord
{
  p_viewCellRect = &self->super._viewCellRect;
  viewCellRect = self->super._viewCellRect;
  v6 = *&viewCellRect.origin & 0xFFFF00000000;
  v7 = coord._coord.row - viewCellRect.origin.row;
  v11 = v7 * TSUCellRect::numColumns(&viewCellRect) + (((*&coord & 0xFFFF00000000) - v6) >> 32);
  if (v11 >= (self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_) * (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) && v11 >= p_viewCellRect->_rect.size.numberOfColumns * p_viewCellRect->_rect.size.numberOfRows)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConcurrentSparseCellList getCellAtViewCellCoord:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1861, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v25.receiver = self;
  v25.super_class = TSTConcurrentSparseCellList;
  v23 = [(TSTConcurrentCellList *)&v25 getCellAtViewCellCoord:coord];

  return v23;
}

- (id)getCellAtUidOffset:(TSUColumnRowOffset)offset
{
  v3 = (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) * offset.var1 + offset.var0;
  v6.receiver = self;
  v6.super_class = TSTConcurrentSparseCellList;
  v4 = [(TSTConcurrentCellList *)&v6 getCellAtIndex:v3];

  return v4;
}

- (void)enumerateSeriallyByUidOffsetUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22116B1C8;
  v7[3] = &unk_27845FEC8;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = TSTConcurrentSparseCellList;
  v5 = blockCopy;
  [(TSTConcurrentCellList *)&v6 enumerateSeriallyByIndexUsingBlock:v7];
}

- (void)appendCellUIDRange:(TSKUIDStructTract *)range
{
  p_cellUIDRange = &self->super._cellUIDRange;
  p_rowIdList = &self->super._cellUIDRange._rowIdList;
  if (self->super._cellUIDRange._rowIdList.__end_ == self->super._cellUIDRange._rowIdList.__begin_)
  {
    if (p_cellUIDRange != range)
    {
      sub_2210BD068(&self->super._cellUIDRange._colIdList.__begin_, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
      sub_2210BD068(p_rowIdList, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
    }

    v28 = (range->_rowIdList.__end_ - range->_rowIdList.__begin_) * (range->_colIdList.__end_ - range->_colIdList.__begin_);

    sub_2211389A0(&self->super._cells.__begin_, v28);
  }

  else
  {
    begin = p_cellUIDRange->_colIdList.__begin_;
    end = self->super._cellUIDRange._colIdList.__end_;
    v11 = end - p_cellUIDRange->_colIdList.__begin_;
    if (v11 != range->_colIdList.__end_ - range->_colIdList.__begin_)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], begin, "[TSTConcurrentSparseCellList appendCellUIDRange:]", v3, v4);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1887, 0, "appending cellUIDRanges must have the same set of columns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
      begin = p_cellUIDRange->_colIdList.__begin_;
      end = p_cellUIDRange->_colIdList.__end_;
      v11 = end - p_cellUIDRange->_colIdList.__begin_;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_221086EBC(&v36, begin, end, v11 >> 4);
    v33 = 0;
    __dst = 0;
    v35 = 0;
    sub_221086EBC(&v33, p_cellUIDRange->_rowIdList.__begin_, p_cellUIDRange->_rowIdList.__end_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);
    sub_2210F0C88(&v33, __dst, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
    sub_2210BBBE8(__p, &v36, &v33);
    v23 = p_cellUIDRange->_colIdList.__begin_;
    if (p_cellUIDRange->_colIdList.__begin_)
    {
      p_cellUIDRange->_colIdList.__end_ = v23;
      operator delete(v23);
      p_cellUIDRange->_colIdList.__begin_ = 0;
      p_cellUIDRange->_colIdList.__end_ = 0;
      p_cellUIDRange->_colIdList.__cap_ = 0;
    }

    *&p_cellUIDRange->_colIdList.__begin_ = *__p;
    p_cellUIDRange->_colIdList.__cap_ = v30;
    __p[1] = 0;
    v30 = 0;
    __p[0] = 0;
    v24 = p_cellUIDRange->_rowIdList.__begin_;
    if (v24)
    {
      p_cellUIDRange->_rowIdList.__end_ = v24;
      operator delete(v24);
      p_rowIdList->__begin_ = 0;
      p_rowIdList->__end_ = 0;
      p_rowIdList->__cap_ = 0;
      v24 = __p[0];
    }

    v25 = v31;
    p_cellUIDRange->_rowIdList.__begin_ = v31;
    v26 = v32;
    *&p_cellUIDRange->_rowIdList.__end_ = v32;
    v32 = 0uLL;
    v31 = 0;
    if (v24)
    {
      __p[1] = v24;
      operator delete(v24);
      v25 = p_cellUIDRange->_rowIdList.__begin_;
      v27 = p_cellUIDRange->_rowIdList.__end_;
    }

    else
    {
      v27 = v26;
    }

    sub_2211389A0(&self->super._cells.__begin_, (v27 - v25) * (p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_));
    if (v33)
    {
      __dst = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

- (void)p_invokeBlock:(id)block
{
  v104[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v100 = blockCopy;
  p_cellUIDRange = &self->super._cellUIDRange;
  selfCopy = self;
  p_baseRows = &self->super._baseRows;
  v9 = self->super._baseRows.__end_ - self->super._baseRows.__begin_;
  v10 = self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_;
  v11 = 0x277D81000uLL;
  v12 = 0x277CCA000uLL;
  if (v9 != v10 >> 4)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6, v7);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1905, 0, "baseRows size:%lu needs to match row uids size:%lu", p_baseRows->__end_ - p_baseRows->__begin_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  p_baseColumns = &selfCopy->super._baseColumns;
  v24 = p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_;
  if (v24 != selfCopy->super._baseColumns.__end_ - selfCopy->super._baseColumns.__begin_)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6, v7);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 1906, 0, "baseColumns size:%lu needs to match column uids size:%lu", p_baseColumns->__end_ - p_baseColumns->__begin_, p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_);

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    v24 = p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_;
  }

  p_cells = &selfCopy->super._cells;
  if ((p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_) * v24 != selfCopy->super._cells.var0 - selfCopy->super._cells.__begin_)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6, v7);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1907, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, (p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_) * (p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_));

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v90[1] = v90;
  MEMORY[0x28223BE20](blockCopy);
  v94 = (v90 - v51);
  begin = p_baseRows->__begin_;
  if (p_baseRows->__end_ != p_baseRows->__begin_)
  {
    v53 = 0;
    v91 = v50 >> 1;
    p_viewRows = &selfCopy->super._viewRows;
    v97 = v100 + 16;
    do
    {
      row = begin[v53]._row;
      var0 = row;
      if (p_viewRows->__end_ != p_viewRows->__begin_)
      {
        var0 = p_viewRows->__begin_[v53].var0;
      }

      v56 = &p_cellUIDRange->_rowIdList.__begin_[v53];
      lower = v56->_lower;
      upper = v56->_upper;
      v102 = lower;
      if (var0 == 0x7FFFFFFF)
      {
        v58 = *(v11 + 336);
        v59 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v47, "[TSTConcurrentSparseCellList p_invokeBlock:]", v48, v49);
        v63 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v61, v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 1919, 0, "only valid viewRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v11 + 336), v65, v66, v67, v68);
      }

      if (row == 0x7FFFFFFF)
      {
        v69 = *(v11 + 336);
        v70 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v47, "[TSTConcurrentSparseCellList p_invokeBlock:]", v48, v49);
        v74 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v72, v73);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 1920, 0, "only valid baseRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v11 + 336), v76, v77, v78, v79);
      }

      v80 = p_cellUIDRange;
      v96 = v53;
      v81 = v53 * v91;
      v104[0] = v53 * v91;
      v104[1] = v91;
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(selfCopy->_validCells, v47, v94, v91, v104);
      if (Indexes_maxCount_inIndexRange)
      {
        v83 = v94;
        p_viewColumns = &selfCopy->super._viewColumns;
        do
        {
          v86 = *v83++;
          v85 = v86;
          v87 = v86 - v81;
          column = p_baseColumns->__begin_[v86 - v81]._column;
          v89 = column;
          if (p_viewColumns->__end_ != p_viewColumns->__begin_)
          {
            v89 = p_viewColumns->__begin_[v87].var0;
          }

          memset(v103, 0, sizeof(v103));
          TSTMakeCellUID(v103);
          (*(v100 + 2))(v100, v103, var0 | (v89 << 32), row | (column << 32), p_cells->__begin_[v85]);
          --Indexes_maxCount_inIndexRange;
        }

        while (Indexes_maxCount_inIndexRange);
      }

      v53 = v96 + 1;
      begin = p_baseRows->__begin_;
      p_cellUIDRange = v80;
      v11 = 0x277D81000;
      v12 = 0x277CCA000;
    }

    while (v96 + 1 < (p_baseRows->__end_ - p_baseRows->__begin_));
  }
}

- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock
{
  usingBlockCopy = usingBlock;
  blockCopy = block;
  v95[1] = *MEMORY[0x277D85DE8];
  v88 = 128;
  if (!self->super._tilesPerRow)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", usingBlock, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1945, 0, "invalid nil value for '%{public}s'", "_tilesPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  v87 = 136;
  if (!self->super._rowInfosPerRow)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", usingBlock, v4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1946, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_count(*(&self->super.super.super.isa + v88), a2, block, usingBlock, v4);
  p_baseRows = &self->super._baseRows;
  if (v28 != self->super._baseRows.__end_ - self->super._baseRows.__begin_)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v31, v32);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1947, 0, "_tilesPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  if (objc_msgSend_count(*(&self->super.super.super.isa + v87), v29, v30, v31, v32) != p_baseRows->__end_ - p_baseRows->__begin_)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v45, v46);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 1948, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  sub_2211389A0(&self->super._oldCells.__begin_, self->super._cells.var0 - self->super._cells.__begin_);
  p_baseColumns = &self->super._baseColumns;
  MEMORY[0x28223BE20](v58);
  v60 = &v81 - v59;
  v86 = v61;
  sub_22116D394(v94, v61);
  v65 = 0x27CFB0000uLL;
  if (p_baseRows->__end_ == p_baseRows->__begin_)
  {
    v73 = 368;
  }

  else
  {
    v66 = 0;
    v82 = blockCopy + 16;
    v81 = (usingBlockCopy + 2);
    do
    {
      v90 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v88), v62, v66, v63, v64, v81, v82);
      v70 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v87), v67, v66, v68, v69);
      v71 = v66 * v86;
      v93[0] = v66 * v86;
      v93[1] = v86;
      v72 = v65;
      v73 = *(v65 + 2320);
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(*(&self->super.super.super.isa + v73), v74, v60, v86, v93);
      v76 = Indexes_maxCount_inIndexRange;
      if (Indexes_maxCount_inIndexRange)
      {
        v77 = 0;
        begin = p_baseColumns->__begin_;
        v79 = v94[0];
        do
        {
          v79[v77] = begin[*&v60[8 * v77] - v71]._column;
          ++v77;
        }

        while (Indexes_maxCount_inIndexRange != v77);
        (*(blockCopy + 2))(v92);
        usingBlockCopy[2](v91);
        v80 = 0;
        do
        {
          objc_storeStrong(&self->super._oldCells.__begin_[*&v60[8 * v80]], v91[0][v80]);
          ++v80;
        }

        while (v76 != v80);
        v95[0] = v91;
        sub_22107C2C0(v95);
        v91[0] = v92;
        sub_22107C2C0(v91);
      }

      ++v66;
      v65 = v72;
    }

    while (v66 < p_baseRows->__end_ - p_baseRows->__begin_);
  }

  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v62, &self->super._oldCells, *(&self->super.super.super.isa + v73), 0);
  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }
}

- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block
{
  v107[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v97 = 136;
  rowInfosPerRow = self->super._rowInfosPerRow;
  if (!rowInfosPerRow)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1989, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    rowInfosPerRow = *(&self->super.super.super.isa + v97);
  }

  p_baseRows = &self->super._baseRows;
  if (objc_msgSend_count(rowInfosPerRow, v4, v5, v6, v7) != self->super._baseRows.__end_ - self->super._baseRows.__begin_)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v21, v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 1990, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  p_cells = &self->super._cells;
  if (self->super._oldCells.var0 - self->super._oldCells.__begin_ != self->super._cells.var0 - self->super._cells.__begin_)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v21, v22);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 1991, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v46 = p_baseRows->__end_ - p_baseRows->__begin_;
  v96 = 264;
  sub_2211687C4(&self->super._cellCountDiffsPerRow.__begin_, v46);
  p_baseColumns = &self->super._baseColumns;
  v48 = self->super._baseColumns.__end_ - self->super._baseColumns.__begin_;
  v91 = 288;
  sub_2211576E4(&self->super._cellCountDiffsPerColumn.__begin_, v48);
  v90[0] = v90;
  MEMORY[0x28223BE20](v49);
  v55 = v90 - v54;
  if (p_baseRows->__end_ != p_baseRows->__begin_)
  {
    v56 = 0;
    v95 = v53 >> 1;
    v90[1] = blockCopy + 2;
    v93 = v90 - v54;
    selfCopy = self;
    while (1)
    {
      v57 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v97), v50, v56, v51, v52);
      v99 = v56;
      v100 = v57;
      memset(v107, 0, 24);
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v58 = v56 * v95;
      v103[0] = v56 * v95;
      v103[1] = v95;
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(self->_validCells, v59, v55, v95, v103);
      v61 = v55;
      v62 = Indexes_maxCount_inIndexRange;
      if (Indexes_maxCount_inIndexRange)
      {
        do
        {
          v63 = *v61++;
          sub_22116A130(v107, &p_cells->__begin_[v63]);
          v64 = v63 - v58;
          begin = p_baseColumns->__begin_;
          v66 = v105;
          if (v105 >= v106)
          {
            v68 = v104;
            v69 = v105 - v104;
            v70 = (v105 - v104) >> 1;
            if (v70 <= -2)
            {
              sub_22107C148();
            }

            if (v106 - v104 <= v70 + 1)
            {
              v71 = v70 + 1;
            }

            else
            {
              v71 = v106 - v104;
            }

            v72 = 0x7FFFFFFFFFFFFFFFLL;
            if (v106 - v104 < 0x7FFFFFFFFFFFFFFELL)
            {
              v72 = v71;
            }

            if (v72)
            {
              sub_22115DB94(&v104, v72);
            }

            v73 = (2 * v70);
            column = begin[v64]._column;
            v75 = &v73[-((v105 - v104) >> 1)];
            *v73 = column;
            v67 = (v73 + 1);
            memcpy(v75, v68, v69);
            v76 = v104;
            v104 = v75;
            v105 = v67;
            v106 = 0;
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v105 = begin[v64];
            v67 = (v66 + 2);
          }

          v105 = v67;
          --v62;
        }

        while (v62);
      }

      else
      {
        v67 = v105;
      }

      if (v104 == v67)
      {
        v78 = 0;
        v82 = 0;
        v55 = v93;
        self = selfCopy;
        v77 = v100;
      }

      else
      {
        v77 = v100;
        blockCopy[2](&v101);
        v78 = v101;
        v55 = v93;
        self = selfCopy;
        if (v101 == v102)
        {
          v82 = 0;
        }

        else
        {
          v79 = 0;
          v80 = v101;
          do
          {
            v81 = *v80;
            v80 += 2;
            v79 += v81;
          }

          while (v80 != v102);
          v82 = v79;
        }
      }

      v101 = v82;
      sub_2211531C0((&self->super.super.super.isa + v96), &v101);
      if (Indexes_maxCount_inIndexRange)
      {
        break;
      }

      if (v78)
      {
        goto LABEL_37;
      }

LABEL_38:
      v89 = v99;
      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }

      v104 = v107;
      sub_22107C2C0(&v104);

      v56 = v89 + 1;
      if (v56 >= p_baseRows->__end_ - p_baseRows->__begin_)
      {
        goto LABEL_41;
      }
    }

    v83 = *(&self->super.super.super.isa + v91);
    v84 = v78;
    v85 = v55;
    do
    {
      v87 = *v85++;
      v86 = v87;
      v88 = *v84++;
      *(v83 + 8 * (v86 - v58)) += v88;
      --Indexes_maxCount_inIndexRange;
    }

    while (Indexes_maxCount_inIndexRange);
LABEL_37:
    operator delete(v78);
    goto LABEL_38;
  }

LABEL_41:
}

- (void)p_pruneCellsAtRow:(unint64_t)row rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize
{
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_validCells, a2, columnsSize + columnsSize * row, -columnsSize, columnsSize);
  v9.receiver = self;
  v9.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v9 p_pruneCellsAtRow:row rowsSize:size columnsSize:columnsSize];
}

- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize
{
  if (size)
  {
    v9 = column + columnsSize * (size - 1) + 1;
    sizeCopy = size;
    do
    {
      objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_validCells, a2, v9, -1, columnsSize);
      v9 -= columnsSize;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  v11.receiver = self;
  v11.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v11 p_pruneCellsAtColumn:column rowsSize:size columnsSize:columnsSize];
}

@end