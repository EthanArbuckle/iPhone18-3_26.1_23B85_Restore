@interface TSTConcurrentCellList
+ (id)cellListWithContext:(id)a3 cellUIDRange:(TSKUIDStructTract *)a4 repeatCellVectorPattern:(const void *)a5 patternDirection:(int64_t)a6;
- (TSKUIDStructTract)cellUIDRange;
- (TSTConcurrentCellList)initWithContext:(id)a3 cellUIDRange:(TSKUIDStructTract *)a4;
- (TSTConcurrentCellList)initWithContext:(id)a3 viewCellRect:(TSUViewCellRect)a4;
- (TSTConcurrentCellList)initWithContext:(id)a3 viewCellRect:(TSUViewCellRect)a4 cellUIDRange:(TSKUIDStructTract *)a5;
- (TSUViewCellRect)viewCellRect;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getCellAtIndex:(unint64_t)a3;
- (id)getCellAtViewCellCoord:(TSUViewCellCoord)a3;
- (id)p_baseColumnIndexes;
- (id)p_baseRowIndexes;
- (unsigned)rowCount;
- (void)addCell:(id)a3 atIndex:(unint64_t)a4;
- (void)addCell:(id)a3 atViewCellCoord:(TSUViewCellCoord)a4;
- (void)enumerateSeriallyByIndexUsingBlock:(id)a3;
- (void)enumerateSeriallyByViewCellCoordUsingBlock:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)a3 accumulateCellsConcurrentlyUsingBlock:(id)a4;
- (void)p_clearDataListIDs;
- (void)p_convertToInverseCellMap;
- (void)p_convertToUuidBasedCellListUsingTableInfo:(id)a3 pruneCategorizedCells:(BOOL)a4;
- (void)p_enumerateCellsAddedAndRemovedForFormatsUsingBlock:(id)a3;
- (void)p_enumerateCellsAddedAndRemovedOfType:(unint64_t)a3 usingBlock:(id)a4;
- (void)p_enumerateCellsAddedOfType:(unint64_t)a3 usingBlock:(id)a4;
- (void)p_enumerateColumnCellCountDiffUsingBlock:(id)a3;
- (void)p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)a3;
- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)a3;
- (void)p_enumerateRowCellCountDiffUsingBlock:(id)a3;
- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)a3;
- (void)p_gatherRowState:(id)a3;
- (void)p_invokeBlock:(id)a3;
- (void)p_pruneCellsAtColumn:(unint64_t)a3 rowsSize:(unint64_t)a4 columnsSize:(unint64_t)a5;
- (void)p_pruneToBaseWithBaseMap:(id)a3 viewMap:(id)a4;
- (void)p_setObjectLocale:(id)a3;
- (void)p_setupInterestingCells:(void *)a3 interestingCellIndexes:(id)a4 forAdding:(BOOL)a5;
- (void)p_simpleInvokeBlock:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setCellUIDRange:(TSKUIDStructTract *)a3;
@end

@implementation TSTConcurrentCellList

- (TSTConcurrentCellList)initWithContext:(id)a3 viewCellRect:(TSUViewCellRect)a4 cellUIDRange:(TSKUIDStructTract *)a5
{
  rect = a4._rect;
  v7 = a3;
  v15.receiver = self;
  v15.super_class = TSTConcurrentCellList;
  v8 = [(TSTConcurrentCellList *)&v15 initWithContext:v7];
  if (v8)
  {
    if (TSUCellRect::isValid(&rect))
    {
      v8->_uidBased = 0;
      v8->_viewCellRect._rect = rect;
      p_cellUIDRange = &v8->_cellUIDRange;
      begin = v8->_cellUIDRange._colIdList.__begin_;
      if (begin)
      {
        v8->_cellUIDRange._colIdList.__end_ = begin;
        operator delete(begin);
        p_cellUIDRange->_colIdList.__begin_ = 0;
        v8->_cellUIDRange._colIdList.__end_ = 0;
        v8->_cellUIDRange._colIdList.__cap_ = 0;
      }

      p_rowIdList = &v8->_cellUIDRange._rowIdList;
      v11 = v8->_cellUIDRange._rowIdList.__begin_;
      p_cellUIDRange->_colIdList.__begin_ = 0;
      v8->_cellUIDRange._colIdList.__end_ = 0;
      v8->_cellUIDRange._colIdList.__cap_ = 0;
      if (v11)
      {
        v8->_cellUIDRange._rowIdList.__end_ = v11;
        operator delete(v11);
        p_rowIdList->__begin_ = 0;
        v8->_cellUIDRange._rowIdList.__end_ = 0;
        v8->_cellUIDRange._rowIdList.__cap_ = 0;
      }

      p_rowIdList->__begin_ = 0;
      v8->_cellUIDRange._rowIdList.__end_ = 0;
      v8->_cellUIDRange._rowIdList.__cap_ = 0;
      v13 = rect.size.numberOfColumns * rect.size.numberOfRows;
    }

    else
    {
      v8->_uidBased = 1;
      v8->_viewCellRect = xmmword_2217E0544;
      if (&v8->_cellUIDRange != a5)
      {
        sub_2210BD068(&v8->_cellUIDRange._colIdList.__begin_, a5->_colIdList.__begin_, a5->_colIdList.__end_, a5->_colIdList.__end_ - a5->_colIdList.__begin_);
        sub_2210BD068(&v8->_cellUIDRange._rowIdList.__begin_, a5->_rowIdList.__begin_, a5->_rowIdList.__end_, a5->_rowIdList.__end_ - a5->_rowIdList.__begin_);
      }

      v13 = (a5->_rowIdList.__end_ - a5->_rowIdList.__begin_) * (a5->_colIdList.__end_ - a5->_colIdList.__begin_);
    }

    sub_2211389A0(&v8->_cells.__begin_, v13);
  }

  return v8;
}

- (TSTConcurrentCellList)initWithContext:(id)a3 viewCellRect:(TSUViewCellRect)a4
{
  *__p = 0u;
  v8 = 0u;
  *v6 = 0u;
  v4 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(self, a2, a3, *&a4._rect.origin, *&a4._rect.size, v6);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v4;
}

- (TSTConcurrentCellList)initWithContext:(id)a3 cellUIDRange:(TSKUIDStructTract *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_221086EBC(&v10, a4->_colIdList.__begin_, a4->_colIdList.__end_, a4->_colIdList.__end_ - a4->_colIdList.__begin_);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_221086EBC(&__p, a4->_rowIdList.__begin_, a4->_rowIdList.__end_, a4->_rowIdList.__end_ - a4->_rowIdList.__begin_);
  v8 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(self, v7, v6, 0x7FFF7FFFFFFFLL, 0, &v10);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v8;
}

+ (id)cellListWithContext:(id)a3 cellUIDRange:(TSKUIDStructTract *)a4 repeatCellVectorPattern:(const void *)a5 patternDirection:(int64_t)a6
{
  v83 = a3;
  v9 = [TSTConcurrentCellList alloc];
  v90 = 0;
  v91 = 0;
  v92 = 0;
  sub_221086EBC(&v90, a4->_colIdList.__begin_, a4->_colIdList.__end_, a4->_colIdList.__end_ - a4->_colIdList.__begin_);
  __p = 0;
  v94 = 0;
  v95 = 0;
  sub_221086EBC(&__p, a4->_rowIdList.__begin_, a4->_rowIdList.__end_, a4->_rowIdList.__end_ - a4->_rowIdList.__begin_);
  v15 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(v9, v10, v83, 0x7FFF7FFFFFFFLL, 0, &v90);
  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v16 = *a5;
  v17 = *(a5 + 1);
  v18 = (v17 - *a5) >> 3;
  if (a6)
  {
    if (v18 != (v15[14] - v15[13]) >> 4)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSTConcurrentCellList cellListWithContext:cellUIDRange:repeatCellVectorPattern:patternDirection:]", v13, v14);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 995, 0, "expected a pattern for a column of cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      v16 = *a5;
      v17 = *(a5 + 1);
    }

    if (v17 != v16)
    {
      v30 = 0;
      v31 = 0;
      v32 = v15[11];
      v85 = v15[10];
      v86 = v32;
      v33 = (v32 - v85) >> 4;
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = (v32 - v85) >> 4;
      }

      v84 = v34;
      v35 = 8 * v33;
      do
      {
        v40 = *(v16 + 8 * v31);
        v41 = v30;
        v42 = v84;
        if (v86 != v85)
        {
          do
          {
            if ((objc_msgSend_hasCellSpec(v40, v36, v37, v38, v39, v83) & 1) != 0 || objc_msgSend_hasConditionalStyle(v40, v43, v44, v45, v46))
            {
              v47 = objc_msgSend_copy(v40, v43, v44, v45, v46);
              v48 = v15[18];
              v49 = *(v48 + v41);
              *(v48 + v41) = v47;
            }

            else
            {
              v50 = v15[18];
              v51 = v40;
              v49 = *(v50 + v41);
              *(v50 + v41) = v51;
            }

            v41 += 8;
            --v42;
          }

          while (v42);
        }

        ++v31;
        v16 = *a5;
        v30 += v35;
      }

      while (v31 < (*(a5 + 1) - *a5) >> 3);
    }
  }

  else
  {
    if (v18 != (v15[11] - v15[10]) >> 4)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSTConcurrentCellList cellListWithContext:cellUIDRange:repeatCellVectorPattern:patternDirection:]", v13, v14);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v56, v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 980, 0, "expected a pattern for a row of cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    v64 = 0;
    for (i = 0; ; ++i)
    {
      objc_msgSend_cellUIDRange(v15, v11, v12, v13, v14, v83);
      v66 = v89;
      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }

      if (v87)
      {
        operator delete(v87);
      }

      if (i >= (v66 - v88) >> 4)
      {
        break;
      }

      v67 = *a5;
      if (*(a5 + 1) != *a5)
      {
        v68 = 0;
        do
        {
          v69 = *(v67 + 8 * v68);
          if ((objc_msgSend_hasCellSpec(v69, v70, v71, v72, v73) & 1) != 0 || objc_msgSend_hasConditionalStyle(v69, v74, v75, v76, v77))
          {
            v78 = objc_msgSend_copy(v69, v74, v75, v76, v77);
            v79 = v15[18] + v64 * ((*(a5 + 1) - *a5) >> 3);
            v80 = *(v79 + 8 * v68);
            *(v79 + 8 * v68) = v78;
          }

          else
          {
            v81 = v15[18] + v64 * ((*(a5 + 1) - *a5) >> 3);
            v82 = v69;
            v80 = *(v81 + 8 * v68);
            *(v81 + 8 * v68) = v82;
          }

          ++v68;
          v67 = *a5;
        }

        while (v68 < (*(a5 + 1) - *a5) >> 3);
      }

      v64 += 8;
    }
  }

  return v15;
}

- (void)addCell:(id)a3 atViewCellCoord:(TSUViewCellCoord)a4
{
  v9 = a3;
  if (self->_uidBased)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atViewCellCoord:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1016, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  viewCellRect = self->_viewCellRect;
  origin = viewCellRect.origin;
  v24 = (a4._coord.row - origin.row) * TSUCellRect::numColumns(&viewCellRect) + (((*&a4 & 0xFFFF00000000) - (*&origin & 0xFFFF00000000)) >> 32);
  if (v24 >= (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) && v24 >= self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTConcurrentCellList addCell:atViewCellCoord:]", v22, v23);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 1018, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  begin = self->_cells.__begin_;
  v37 = begin[v24];
  begin[v24] = v9;
}

- (void)addCell:(id)a3 atIndex:(unint64_t)a4
{
  v9 = a3;
  if (!self->_uidBased)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atIndex:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1023, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) <= a4 && self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows <= a4)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atIndex:]", v7, v8);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1024, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  begin = self->_cells.__begin_;
  v33 = begin[a4];
  begin[a4] = v9;
}

- (id)getCellAtViewCellCoord:(TSUViewCellCoord)a3
{
  if (self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtViewCellCoord:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1029, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  viewCellRect = self->_viewCellRect;
  v18 = *&viewCellRect._rect.origin & 0xFFFF00000000;
  v19 = a3._coord.row - viewCellRect._rect.origin.row;
  v23 = v19 * TSUCellRect::numColumns(&viewCellRect._rect) + (((*&a3 & 0xFFFF00000000) - v18) >> 32);
  if (v23 >= (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) && v23 >= self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentCellList getCellAtViewCellCoord:]", v21, v22);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1031, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = self->_cells.__begin_[v23];

  return v35;
}

- (id)getCellAtIndex:(unint64_t)a3
{
  if (!self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtIndex:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1036, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) <= a3 && self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows <= a3)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtIndex:]", v3, v4);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 1037, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = self->_cells.__begin_[a3];

  return v29;
}

- (void)enumerateSeriallyByViewCellCoordUsingBlock:(id)a3
{
  v7 = a3;
  if (self->_uidBased)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList enumerateSeriallyByViewCellCoordUsingBlock:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1042, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = self->_cells.var0 - self->_cells.__begin_;
  if (v19)
  {
    v20 = 0;
    v21 = v19 >> 3;
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    do
    {
      viewCellRect = self->_viewCellRect;
      origin = viewCellRect.origin;
      v23 = TSUCellRect::numColumns(&viewCellRect);
      v7[2](v7, (*&origin + ((v20 % v23) << 32)) & 0xFFFF00000000 | ((v20 / v23) + origin.row), self->_cells.__begin_[v20]);
      ++v20;
    }

    while (v22 != v20);
  }
}

- (void)enumerateSeriallyByIndexUsingBlock:(id)a3
{
  v23 = a3;
  if (!self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList enumerateSeriallyByIndexUsingBlock:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1049, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  p_cells = &self->_cells;
  v19 = self->_cells.var0 - self->_cells.__begin_;
  if (v19)
  {
    v20 = 0;
    v21 = v19 >> 3;
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    do
    {
      v23[2](v23, v20, p_cells->__begin_[v20]);
      ++v20;
    }

    while (v22 != v20);
  }
}

- (unsigned)rowCount
{
  if (self->_uidBased)
  {
    return (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) >> 4;
  }

  else
  {
    LODWORD(self) = self->_viewCellRect._rect.size.numberOfRows;
  }

  return self;
}

- (void)p_convertToUuidBasedCellListUsingTableInfo:(id)a3 pruneCategorizedCells:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = v6;
  p_viewCellRect = &self->_viewCellRect;
  if (v6)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v6, v7, *p_viewCellRect, *&self->_viewCellRect._rect.size, v10);
  }

  else
  {
    memset(v70, 0, 48);
  }

  p_cellUIDRange = &self->_cellUIDRange;
  begin = self->_cellUIDRange._colIdList.__begin_;
  if (begin)
  {
    self->_cellUIDRange._colIdList.__end_ = begin;
    operator delete(begin);
    *p_cellUIDRange = 0;
    self->_cellUIDRange._colIdList.__end_ = 0;
    self->_cellUIDRange._colIdList.__cap_ = 0;
  }

  *p_cellUIDRange = *v70;
  self->_cellUIDRange._colIdList.__cap_ = *&v70[16];
  memset(v70, 0, 24);
  p_rowIdList = &self->_cellUIDRange._rowIdList;
  v15 = self->_cellUIDRange._rowIdList.__begin_;
  if (v15)
  {
    self->_cellUIDRange._rowIdList.__end_ = v15;
    operator delete(v15);
    p_rowIdList->__begin_ = 0;
    self->_cellUIDRange._rowIdList.__end_ = 0;
    self->_cellUIDRange._rowIdList.__cap_ = 0;
    v15 = *v70;
  }

  *&self->_cellUIDRange._rowIdList.__begin_ = *&v70[24];
  self->_cellUIDRange._rowIdList.__cap_ = *&v70[40];
  memset(&v70[24], 0, 24);
  if (v15)
  {
    *&v70[8] = v15;
    operator delete(v15);
  }

  if (v4 && objc_msgSend_isCategorized(v11, v7, v8, v9, v10))
  {
    Column = TSUCellRect::firstColumn(&self->_viewCellRect._rect);
    Row = TSUCellRect::firstRow(&self->_viewCellRect._rect);
    v56 = objc_msgSend_regionFromViewCellRect_(TSTCellRegion, v19, *p_viewCellRect, *&self->_viewCellRect._rect.size, v20);
    *v70 = 0;
    *&v70[8] = v70;
    *&v70[16] = 0x4812000000;
    *&v70[24] = sub_221165954;
    *&v70[32] = sub_221165978;
    *&v70[40] = 0u;
    v71 = 0u;
    sub_221086EBC(&v70[48], self->_cellUIDRange._rowIdList.__begin_, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_);
    v54 = Column;
    v63 = 0;
    v64 = &v63;
    v65 = 0x4812000000;
    v66 = sub_221165954;
    v67 = sub_221165978;
    v68 = 0u;
    v69 = 0u;
    sub_221086EBC(&v68 + 8, *p_cellUIDRange, self->_cellUIDRange._colIdList.__end_, (self->_cellUIDRange._colIdList.__end_ - *p_cellUIDRange) >> 4);
    v21 = *(*&v70[8] + 48);
    v22 = *(*&v70[8] + 56);
    v24 = v64[6];
    v23 = v64[7];
    v28 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(v11, v25, v56, v26, v27);
    v62[0] = MEMORY[0x277D85DD0];
    v29 = (v23 - v24) >> 4;
    v62[1] = 3221225472;
    v62[2] = sub_221165990;
    v62[3] = &unk_27845FE00;
    v62[4] = self;
    v62[5] = v70;
    v62[6] = Row;
    v62[7] = (v22 - v21) >> 4;
    v62[8] = v29;
    v55 = v28;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v28, v30, 2, v62, v31);
    v33 = *(*&v70[8] + 48);
    v32 = *(*&v70[8] + 56);
    v37 = objc_msgSend_indexesForCategoryColumnsInRegion_(v11, v34, v56, v35, v36);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_221165A10;
    v61[3] = &unk_27845FE00;
    v61[4] = self;
    v61[5] = &v63;
    v61[6] = v54;
    v61[7] = (v32 - v33) >> 4;
    v61[8] = v29;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v37, v38, 2, v61, v39);
    sub_2210BBBE8(__p, v64 + 6, (*&v70[8] + 48));
    v40 = *p_cellUIDRange;
    if (*p_cellUIDRange)
    {
      self->_cellUIDRange._colIdList.__end_ = v40;
      operator delete(v40);
      *p_cellUIDRange = 0;
      self->_cellUIDRange._colIdList.__end_ = 0;
      self->_cellUIDRange._colIdList.__cap_ = 0;
    }

    *p_cellUIDRange = *__p;
    self->_cellUIDRange._colIdList.__cap_ = v58;
    __p[1] = 0;
    v58 = 0;
    __p[0] = 0;
    v41 = self->_cellUIDRange._rowIdList.__begin_;
    if (v41)
    {
      self->_cellUIDRange._rowIdList.__end_ = v41;
      operator delete(v41);
      p_rowIdList->__begin_ = 0;
      self->_cellUIDRange._rowIdList.__end_ = 0;
      self->_cellUIDRange._rowIdList.__cap_ = 0;
      v41 = __p[0];
    }

    *&self->_cellUIDRange._rowIdList.__begin_ = v59;
    self->_cellUIDRange._rowIdList.__cap_ = v60;
    v60 = 0;
    v59 = 0uLL;
    if (v41)
    {
      __p[1] = v41;
      operator delete(v41);
    }

    _Block_object_dispose(&v63, 8);
    if (*(&v68 + 1))
    {
      *&v69 = *(&v68 + 1);
      operator delete(*(&v68 + 1));
    }

    _Block_object_dispose(v70, 8);
    if (*&v70[48])
    {
      *&v71 = *&v70[48];
      operator delete(*&v70[48]);
    }
  }

  p_cells = &self->_cells;
  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) != self->_cells.var0 - self->_cells.__begin_)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConcurrentCellList p_convertToUuidBasedCellListUsingTableInfo:pruneCategorizedCells:]", v9, v10);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 1113, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, ((p_cellUIDRange[4] - p_cellUIDRange[3]) >> 4) * ((p_cellUIDRange[1] - *p_cellUIDRange) >> 4));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  *p_viewCellRect = xmmword_2217E0544;
}

- (void)p_setObjectLocale:(id)a3
{
  v25 = a3;
  if (!v25)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_setObjectLocale:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1118, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  var0 = p_cells->var0;
  while (begin != var0)
  {
    v21 = *begin;
    objc_msgSend_setLocale_(v21, v22, v25, v23, v24);

    ++begin;
  }
}

- (void)p_clearDataListIDs
{
  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v4 = *begin;
    v9 = v4;
    if (v4)
    {
      objc_msgSend_clearDataListIDs(v4, v5, v6, v7, v8);
    }

    ++begin;
  }
}

- (void)p_pruneCellsAtColumn:(unint64_t)a3 rowsSize:(unint64_t)a4 columnsSize:(unint64_t)a5
{
  if (a4)
  {
    v8 = 0;
    p_cells = &self->_cells;
    var0 = self->_cells.var0;
    do
    {
      v11 = &p_cells->__begin_[(~v8 + a4) * a5 + 1] + a3;
      if (v11 == var0)
      {
        v13 = var0;
        var0 = &p_cells->__begin_[a3] + (~v8 + a4) * a5;
      }

      else
      {
        do
        {
          v12 = *(v11 - 1);
          *(v11 - 1) = *v11;
          *v11 = 0;

          ++v11;
        }

        while (v11 != var0);
        v13 = p_cells->var0;
        var0 = v11 - 1;
      }

      while (v13 != var0)
      {
        v14 = *--v13;
      }

      p_cells->var0 = var0;
      ++v8;
    }

    while (v8 != a4);
  }
}

- (void)p_pruneToBaseWithBaseMap:(id)a3 viewMap:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  p_cellUIDRange = &self->_cellUIDRange;
  p_rowIdList = &self->_cellUIDRange._rowIdList;
  begin = self->_cellUIDRange._rowIdList.__begin_;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  sub_221086EBC(&v85, begin, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - begin);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v75 = p_cellUIDRange;
  sub_221086EBC(&v82, *p_cellUIDRange, p_cellUIDRange[1], (p_cellUIDRange[1] - *p_cellUIDRange) >> 4);
  v74 = p_rowIdList;
  v9 = v85;
  v8 = v86;
  v10 = (v86 - v85) >> 4;
  v12 = v82;
  v11 = v83;
  sub_2211663C4(&self->_baseRows.__begin_, v10);
  v76 = v12;
  v77 = v11;
  v15 = (v11 - v12) >> 4;
  if (v8 != v9)
  {
    if (v10 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10;
    }

    v17 = 16 * v10 - 16;
    v18 = -1;
    v19 = -16 * v10;
    do
    {
      v20 = *(v85 + v17);
      v21 = *(v85 + v17 + 8);
      LODWORD(__p[0]) = 0;
      LODWORD(__p[0]) = objc_msgSend_rowIndexForRowUID_(a3, v13, v20, v21, v14);
      if (LODWORD(__p[0]) == 0x7FFFFFFF)
      {
        v22 = v85 + v17;
        v23 = v85 + v17 + 16;
        v24 = v19 + v86 - v85;
        if (v23 != v86)
        {
          memmove(v85 + v17, v23, v19 + v86 - v85);
        }

        v86 = &v22[v24];
        objc_msgSend_p_pruneCellsAtRow_rowsSize_columnsSize_(self, v23, v10 + v18, v10, v15);
      }

      else
      {
        sub_221166464(&self->_baseRows.__begin_, self->_baseRows.__begin_, __p);
        if (a4)
        {
          v81 = 0;
          v81 = objc_msgSend_rowIndexForRowUID_(a4, v13, v20, v21, v14);
          sub_221166638(&self->_viewRows.__begin_, self->_viewRows.__begin_, &v81);
        }
      }

      v17 -= 16;
      v19 += 16;
      --v18;
      --v16;
    }

    while (v16);
  }

  v26 = v85;
  v25 = v86;
  sub_22116680C(&self->_baseColumns.__begin_, v15);
  if (v77 != v76)
  {
    v78 = (v25 - v26) >> 4;
    if (v15 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v15;
    }

    v30 = 16 * v15 - 16;
    v31 = -1;
    v32 = -16 * v15;
    do
    {
      v33 = *(v82 + v30);
      v34 = *(v82 + v30 + 8);
      LOWORD(__p[0]) = 0;
      v35 = objc_msgSend_columnIndexForColumnUID_(a3, v27, v33, v34, v28);
      LOWORD(__p[0]) = v35;
      if (v35 == 0x7FFF)
      {
        v36 = v82 + v30;
        v37 = v82 + v30 + 16;
        v38 = v32 + v83 - v82;
        if (v37 != v83)
        {
          memmove(v82 + v30, v37, v32 + v83 - v82);
        }

        v83 = &v36[v38];
        objc_msgSend_p_pruneCellsAtColumn_rowsSize_columnsSize_(self, v37, v15 + v31, v78, v15);
      }

      else
      {
        sub_2211668A8(&self->_baseColumns.__begin_, self->_baseColumns.__begin_, __p);
        if (a4)
        {
          LOWORD(v81) = 0;
          LOWORD(v81) = objc_msgSend_columnIndexForColumnUID_(a4, v27, v33, v34, v28);
          sub_221166A78(&self->_viewColumns.__begin_, self->_viewColumns.__begin_, &v81);
        }
      }

      v30 -= 16;
      v32 += 16;
      --v31;
      --v29;
    }

    while (v29);
  }

  sub_2210BBBE8(__p, &v82, &v85);
  v43 = *v75;
  if (*v75)
  {
    v75[1] = v43;
    operator delete(v43);
    *v75 = 0;
    v75[1] = 0;
    v75[2] = 0;
  }

  *v75 = *__p;
  v75[2] = *&v89[0];
  __p[1] = 0;
  *&v89[0] = 0;
  __p[0] = 0;
  v44 = v75[3];
  if (v44)
  {
    v75[4] = v44;
    operator delete(v44);
    v74->__begin_ = 0;
    v74->__end_ = 0;
    v74->__cap_ = 0;
    v44 = __p[0];
  }

  *(v75 + 3) = *(v89 + 8);
  v75[5] = *(&v89[1] + 1);
  memset(v89 + 8, 0, 24);
  if (v44)
  {
    __p[1] = v44;
    operator delete(v44);
  }

  p_cells = &self->_cells;
  v46 = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (v46 != var0)
  {
    objc_msgSend_validateAndRepair(*v46++, v39, v40, v41, v42);
  }

  v48 = 0;
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  *__p = 0u;
  do
  {
    v49 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v39, v40, v41, v42);
    v50 = __p[v48];
    __p[v48] = v49;

    ++v48;
  }

  while (v48 != 13);
  v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, __p, 13, v42);
  interestingCells = self->_interestingCells;
  self->_interestingCells = v51;

  v57 = objc_msgSend_p_interestingCellIndexes(self, v53, v54, v55, v56);
  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v58, &self->_cells, v57, 1);

  if (((v75[4] - v75[3]) >> 4) * ((v75[1] - *v75) >> 4) != self->_cells.var0 - self->_cells.__begin_)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TSTConcurrentCellList p_pruneToBaseWithBaseMap:viewMap:]", v60, v61);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v65, v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v63, v67, 1211, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, ((v75[4] - v75[3]) >> 4) * ((v75[1] - *v75) >> 4));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
  }

  for (i = 12; i != -1; --i)
  {
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

- (void)p_setupInterestingCells:(void *)a3 interestingCellIndexes:(id)a4 forAdding:(BOOL)a5
{
  v200 = a5;
  v210 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1) - *a3 != self->_cells.var0 - self->_cells.__begin_)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList p_setupInterestingCells:interestingCellIndexes:forAdding:]", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1215, 0, "cell lists size mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  if (v200)
  {
    v17 = &OBJC_IVAR___TSTConcurrentCellList__formatsAdded;
  }

  else
  {
    v17 = &OBJC_IVAR___TSTConcurrentCellList__formatsRemoved;
  }

  v18 = 0x277D812B8;
  if (!v200)
  {
    v18 = 0x277CBEB38;
  }

  v19 = objc_msgSend_dictionary(*v18, a2, a3, a4, a5);
  v20 = *v17;
  v21 = *(&self->super.super.isa + v20);
  *(&self->super.super.isa + v20) = v19;

  v199 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v22, 0, v23, v24);
  v190 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v25, 1, v26, v27);
  v198 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v28, 2, v29, v30);
  v201 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v31, 3, v32, v33);
  v197 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v34, 4, v35, v36);
  v196 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v37, 5, v38, v39);
  v195 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v40, 6, v41, v42);
  v194 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v43, 7, v44, v45);
  v193 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v46, 8, v47, v48);
  v192 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v49, 9, v50, v51);
  v191 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v52, 10, v53, v54);
  v202 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v55, 11, v56, v57);
  v203 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v58, 12, v59, v60);
  v61 = *a3;
  if (*(a3 + 1) != *a3)
  {
    for (i = 0; i < (*(a3 + 1) - *a3) >> 3; ++i)
    {
      v67 = *(v61 + 8 * i);
      if (a4)
      {
        v68 = objc_msgSend_containsIndex_(a4, v63, i, v65, v66);
        if (v67)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        if (v69)
        {
LABEL_17:
          if (objc_msgSend_valueType(v67, v63, v64, v65, v66) == 3)
          {
            objc_msgSend_addIndex_(v199, v70, i, v72, v73);
          }

          if (objc_msgSend_hasAnyFormats(v67, v70, v71, v72, v73))
          {
            v209[0] = objc_msgSend_numberFormat(v67, v74, v75, v76, v77);
            v209[1] = objc_msgSend_dateFormat(v67, v78, v79, v80, v81);
            v209[2] = objc_msgSend_durationFormat(v67, v82, v83, v84, v85);
            v209[3] = objc_msgSend_currencyFormat(v67, v86, v87, v88, v89);
            v209[4] = objc_msgSend_textFormat(v67, v90, v91, v92, v93);
            v209[5] = objc_msgSend_BOOLeanFormat(v67, v94, v95, v96, v97);
            v207 = 0;
            v208 = 0;
            __p = 0;
            sub_22116CEC0(&__p, v209, &v210, 6uLL);
            v103 = __p;
            v102 = v207;
            if (v200)
            {
              while (v103 != v102)
              {
                v104 = *v103;
                if (*v103)
                {
                  v105 = objc_msgSend_objectForKey_(self->_formatsAdded, v98, *v103, v100, v101);
                  v109 = v105;
                  if (v105)
                  {
                    objc_msgSend_addIndex_(v105, v106, i, v107, v108);
                  }

                  else
                  {
                    formatsAdded = self->_formatsAdded;
                    v111 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAB58], v106, i, v107, v108);
                    objc_msgSend_setObject_forKey_(formatsAdded, v112, v111, v104, v113);
                  }
                }

                ++v103;
              }
            }

            else
            {
              while (v103 != v102)
              {
                if (*v103)
                {
                  v114 = objc_msgSend_formatType(*v103, v98, v99, v100, v101);
                  v115 = sub_22121E75C(v114);
                  v116 = sub_221143624(v115);
                  v120 = objc_msgSend_formatIDForStorageFlag_(v67, v117, v116, v118, v119);
                  formatsRemoved = self->_formatsRemoved;
                  v125 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v122, v120, v123, v124);
                  v129 = objc_msgSend_objectForKey_(formatsRemoved, v126, v125, v127, v128);

                  if (v129)
                  {
                    objc_msgSend_addIndex_(v129, v130, i, v131, v132);
                  }

                  else
                  {
                    v133 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAB58], v130, i, v131, v132);
                    v134 = self->_formatsRemoved;
                    v138 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v135, v120, v136, v137);
                    objc_msgSend_setObject_forKey_(v134, v139, v133, v138, v140);

                    v129 = v133;
                  }
                }

                ++v103;
              }
            }

            objc_msgSend_addIndex_(v190, v98, i, v100, v101);
            if (__p)
            {
              v207 = __p;
              operator delete(__p);
            }
          }

          if (objc_msgSend_hasFormula(v67, v74, v75, v76, v77))
          {
            objc_msgSend_addIndex_(v198, v141, i, v143, v144);
            objc_msgSend_addIndex_(v203, v145, i, v146, v147);
          }

          if ((objc_msgSend_hasTextStyle(v67, v141, v142, v143, v144) & 1) != 0 || objc_msgSend_hasCellStyle(v67, v148, v149, v150, v151))
          {
            objc_msgSend_addIndex_(v201, v148, i, v150, v151);
          }

          if (objc_msgSend_hasFormulaAnyError(v67, v148, v152, v150, v151))
          {
            objc_msgSend_addIndex_(v197, v153, i, v155, v156);
          }

          if (objc_msgSend_hasRichText(v67, v153, v154, v155, v156))
          {
            objc_msgSend_addIndex_(v196, v157, i, v159, v160);
          }

          if (objc_msgSend_hasConditionalStyle(v67, v157, v158, v159, v160))
          {
            objc_msgSend_addIndex_(v195, v161, i, v163, v164);
            objc_msgSend_addIndex_(v203, v165, i, v166, v167);
          }

          if (objc_msgSend_hasCommentStorage(v67, v161, v162, v163, v164))
          {
            objc_msgSend_addIndex_(v194, v168, i, v170, v171);
          }

          if (objc_msgSend_hasImportWarningSet(v67, v168, v169, v170, v171))
          {
            objc_msgSend_addIndex_(v193, v172, i, v174, v175);
          }

          if (objc_msgSend_hasControl(v67, v172, v173, v174, v175))
          {
            objc_msgSend_addIndex_(v192, v176, i, v178, v179);
          }

          if (objc_msgSend_hasAnyCustomFormat(v67, v176, v177, v178, v179))
          {
            objc_msgSend_addIndex_(v191, v180, i, v182, v183);
          }

          if ((objc_msgSend_hasTextStyle(v67, v180, v181, v182, v183) & 1) != 0 || (objc_msgSend_hasCellStyle(v67, v184, v185, v186, v187) & 1) != 0 || (objc_msgSend_hasRichText(v67, v184, v188, v186, v187) & 1) != 0 || objc_msgSend_hasFormulaAnyError(v67, v184, v189, v186, v187))
          {
            objc_msgSend_addIndex_(v202, v184, i, v186, v187);
          }
        }
      }

      else if (v67)
      {
        goto LABEL_17;
      }

      v61 = *a3;
    }
  }
}

- (void)p_invokeBlock:(id)a3
{
  v83 = a3;
  v79 = self;
  p_baseRows = &self->_baseRows;
  v7 = 0x277D81000uLL;
  v8 = 0x277CCA000uLL;
  if (self->_baseRows.__end_ - self->_baseRows.__begin_ != self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5, v6);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1334, 0, "base rows needs to match uids");

    v7 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  p_baseColumns = &self->_baseColumns;
  v21 = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  if (v21 != self->_baseColumns.__end_ - self->_baseColumns.__begin_)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5, v6);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1335, 0, "base cols needs to match uids");

    v7 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    v21 = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * v21 != self->_cells.var0 - self->_cells.__begin_)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5, v6);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1336, 0, "cells size needs to match area range");

    v7 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  begin = p_baseRows->__begin_;
  if (self->_baseRows.__end_ != self->_baseRows.__begin_)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      row = begin[v46]._row;
      var0 = row;
      if (v79->_viewRows.__end_ != v79->_viewRows.__begin_)
      {
        var0 = v79->_viewRows.__begin_[v46].var0;
      }

      if (var0 == 0x7FFFFFFF)
      {
        v49 = *(v7 + 336);
        v81 = objc_msgSend_stringWithUTF8String_(*(v8 + 3240), v4, "[TSTConcurrentCellList p_invokeBlock:]", v5, v6);
        v50 = v8;
        v51 = v7;
        v52 = v50;
        v56 = objc_msgSend_stringWithUTF8String_(*(v50 + 3240), v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v54, v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v57, v81, v56, 1344, 0, "only valid viewRowIndexes should remain");

        v7 = v51;
        objc_msgSend_logBacktraceThrottled(*(v51 + 336), v58, v59, v60, v61);
        v8 = v52;
      }

      if (row == 0x7FFFFFFF)
      {
        v62 = *(v7 + 336);
        v63 = objc_msgSend_stringWithUTF8String_(*(v8 + 3240), v4, "[TSTConcurrentCellList p_invokeBlock:]", v5, v6);
        v64 = v7;
        v68 = objc_msgSend_stringWithUTF8String_(*(v8 + 3240), v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v66, v67);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v63, v68, 1345, 0, "only valid baseRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v64 + 336), v70, v71, v72, v73);
      }

      v82 = v46;
      v74 = p_baseColumns->__begin_;
      if (p_baseColumns->__end_ != p_baseColumns->__begin_)
      {
        v75 = 0;
        v76 = 0;
        do
        {
          column = v74[v76]._column;
          v78 = column;
          if (v79->_viewColumns.__end_ != v79->_viewColumns.__begin_)
          {
            v78 = v79->_viewColumns.__begin_[v76].var0;
          }

          memset(v84, 0, sizeof(v84));
          TSTMakeCellUID(v84);
          v83[2](v83, v84, var0 | (v78 << 32), row | (column << 32), v79->_cells.__begin_[v45++]);
          ++v76;
          v74 = p_baseColumns->__begin_;
          v75 += 16;
        }

        while (v76 < p_baseColumns->__end_ - p_baseColumns->__begin_);
      }

      v46 = v82 + 1;
      begin = p_baseRows->__begin_;
      v7 = 0x277D81000;
      v8 = 0x277CCA000;
    }

    while (v82 + 1 < (p_baseRows->__end_ - p_baseRows->__begin_));
  }
}

- (void)p_simpleInvokeBlock:(id)a3
{
  v4 = a3;
  p_baseRows = &self->_baseRows;
  p_viewRows = &self->_viewRows;
  numberOfRows = self->_viewCellRect._rect.size.numberOfRows;
  begin = self->_cellUIDRange._rowIdList.__begin_;
  if (self->_cellUIDRange._rowIdList.__end_ - begin > numberOfRows)
  {
    numberOfRows = self->_cellUIDRange._rowIdList.__end_ - begin;
  }

  v7 = self->_viewRows.__end_ - self->_viewRows.__begin_;
  p_viewColumns = &self->_viewColumns;
  v9 = self->_viewColumns.__begin_;
  end = self->_viewColumns.__end_;
  v11 = self->_viewRows.__end_ != self->_viewRows.__begin_ && end != v9;
  v39 = v11;
  if (v7 <= numberOfRows)
  {
    v7 = numberOfRows;
  }

  v12 = self->_baseRows.__end_ - self->_baseRows.__begin_;
  v41 = self;
  p_baseColumns = &self->_baseColumns;
  v14 = self->_baseColumns.__begin_;
  v13 = self->_baseColumns.__end_;
  v16 = self->_baseRows.__end_ != self->_baseRows.__begin_ && v13 != v14;
  v44 = v16;
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v35 = v12;
  v17 = v13 - v14;
  v18 = end - v9;
  numberOfColumns_low = LOWORD(self->_viewCellRect._rect.size.numberOfColumns);
  if (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_ > numberOfColumns_low)
  {
    numberOfColumns_low = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  }

  if (v18 <= numberOfColumns_low)
  {
    v18 = numberOfColumns_low;
  }

  if (v17 <= v18)
  {
    v17 = v18;
  }

  v42 = v17;
  p_viewCellRect = &self->_viewCellRect;
  isValid = TSUCellRect::isValid(&self->_viewCellRect._rect);
  if (v35)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = &dword_2217E0554;
      if (v44)
      {
        v22 = &p_baseRows->__begin_[v21];
      }

      v23 = *v22;
      if (isValid)
      {
        v24 = TSUCellRect::firstRow(&p_viewCellRect->_rect) + v21;
      }

      else
      {
        v25 = &dword_2217E0558;
        if (v39)
        {
          v25 = &p_viewRows->__begin_[v21];
        }

        v24 = *v25;
      }

      v36 = v21;
      if (v42)
      {
        v26 = 0;
        v27 = 0;
        v28 = v24;
        do
        {
          v29 = &word_2217E055C;
          if (v44)
          {
            v29 = &p_baseColumns->__begin_[v26];
          }

          v30 = *v29;
          if (isValid)
          {
            v31 = TSUCellRect::firstColumn(&p_viewCellRect->_rect) + v27;
          }

          else
          {
            v32 = &word_2217E055E;
            if (v39)
            {
              v32 = &p_viewColumns->__begin_[v26];
            }

            v31 = *v32;
          }

          memset(v45, 0, sizeof(v45));
          TSTMakeCellUID(v45);
          v4[2](v4, v45, v28 | (v31 << 32), v23 | (v30 << 32), v41->_cells.__begin_[v20++]);
          ++v27;
          ++v26;
        }

        while (v42 != v27);
      }

      v21 = v36 + 1;
    }

    while (v36 + 1 != v35);
  }
}

- (void)p_convertToInverseCellMap
{
  p_oldCells = &self->_oldCells;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  p_cells = &self->_cells;
  if (var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList p_convertToInverseCellMap]", v2, v3);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1401, 0, "oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    begin = p_oldCells->__begin_;
    var0 = p_oldCells->var0;
  }

  sub_22116CF34(p_cells, begin, var0, var0 - begin);
  v21 = p_oldCells->__begin_;
  for (i = p_oldCells->var0; i != v21; --i)
  {
    v22 = *(i - 1);
  }

  p_oldCells->var0 = v21;
  self->_baseRows.__end_ = self->_baseRows.__begin_;
  self->_baseColumns.__end_ = self->_baseColumns.__begin_;
  self->_viewRows.__end_ = self->_viewRows.__begin_;
  self->_viewColumns.__end_ = self->_viewColumns.__begin_;
  self->_cellCountDiffsPerRow.__end_ = self->_cellCountDiffsPerRow.__begin_;
  self->_cellCountDiffsPerColumn.__end_ = self->_cellCountDiffsPerColumn.__begin_;
  tilesPerRow = self->_tilesPerRow;
  self->_tilesPerRow = 0;

  rowInfosPerRow = self->_rowInfosPerRow;
  self->_rowInfosPerRow = 0;
}

- (void)p_gatherRowState:(id)a3
{
  v48 = a3;
  if (self->_baseRows.__end_ - self->_baseRows.__begin_ != self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_gatherRowState:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1418, 0, "base rows needs to match uids");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  tilesPerRow = self->_tilesPerRow;
  self->_tilesPerRow = v19;

  v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22, v23, v24);
  rowInfosPerRow = self->_rowInfosPerRow;
  self->_rowInfosPerRow = v25;

  begin = self->_baseRows.__begin_;
  for (i = self->_baseRows.__end_; begin != i; ++begin)
  {
    v29 = v48[2](v48, begin->_row);
    v30 = self->_tilesPerRow;
    v35 = objc_msgSend_first(v29, v31, v32, v33, v34);
    objc_msgSend_addObject_(v30, v36, v35, v37, v38);

    v39 = self->_rowInfosPerRow;
    v44 = objc_msgSend_second(v29, v40, v41, v42, v43);
    objc_msgSend_addObject_(v39, v45, v44, v46, v47);
  }
}

- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)a3 accumulateCellsConcurrentlyUsingBlock:(id)a4
{
  v73 = a3;
  v72 = a4;
  if (!self->_tilesPerRow)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1432, 0, "invalid nil value for '%{public}s'", "_tilesPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (!self->_rowInfosPerRow)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v8, v9);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1433, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  p_baseRows = &self->_baseRows;
  if (objc_msgSend_count(self->_tilesPerRow, v6, v7, v8, v9) != self->_baseRows.__end_ - self->_baseRows.__begin_)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v34, v35);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 1434, 0, "_tilesPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_count(self->_rowInfosPerRow, v32, v33, v34, v35);
  begin = p_baseRows->__begin_;
  end = self->_baseRows.__end_;
  if (v48 != end - p_baseRows->__begin_)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v50, v51);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v57, v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v59, 1435, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
    begin = p_baseRows->__begin_;
    end = self->_baseRows.__end_;
  }

  if (end != begin)
  {
    v65 = 0;
    do
    {
      v66 = objc_msgSend_objectAtIndexedSubscript_(self->_tilesPerRow, v49, v65, v50, v51);
      v70 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v67, v65, v68, v69);
      v73[2](v76);
      (v72)[2](&v74);
      sub_22116D0D8(&self->_oldCells, self->_oldCells.var0, v74, v75, v75 - v74);
      v77 = &v74;
      sub_22107C2C0(&v77);
      v74 = v76;
      sub_22107C2C0(&v74);

      ++v65;
    }

    while (v65 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }

  sub_2211389A0(&self->_oldCells.__begin_, self->_cells.var0 - self->_cells.__begin_);
  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v71, &self->_oldCells, 0, 0);
}

- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)a3
{
  v8 = a3;
  rowInfosPerRow = self->_rowInfosPerRow;
  if (!rowInfosPerRow)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6, v7);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1454, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    rowInfosPerRow = self->_rowInfosPerRow;
  }

  if (objc_msgSend_count(rowInfosPerRow, v4, v5, v6, v7) != self->_baseRows.__end_ - self->_baseRows.__begin_)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1455, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v22, v23);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 1456, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  sub_2211687C4(&self->_cellCountDiffsPerRow.__begin_, self->_baseRows.__end_ - self->_baseRows.__begin_);
  p_cellCountDiffsPerColumn = &self->_cellCountDiffsPerColumn;
  sub_2211576E4(&self->_cellCountDiffsPerColumn.__begin_, self->_baseColumns.__end_ - self->_baseColumns.__begin_);
  sub_22116D2A8(location, self->_baseColumns.__end_ - self->_baseColumns.__begin_);
  if (self->_baseRows.__end_ != self->_baseRows.__begin_)
  {
    v52 = 0;
    do
    {
      v53 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v49, v52, v50, v51);
      v54 = self->_baseColumns.__end_ - self->_baseColumns.__begin_;
      v55 = v52 + 1;
      sub_22116D07C(&__p, &self->_cells.__begin_[v52 * v54], &self->_cells.__begin_[(v52 + 1) * v54], location[0]);
      v8[2](&__p, v8, v53, location, &self->_baseColumns);
      v56 = __p;
      if (__p == v67)
      {
        v59 = 0;
      }

      else
      {
        v57 = 0;
        do
        {
          v58 = *v56;
          v56 += 2;
          v57 += v58;
        }

        while (v56 != v67);
        v59 = v57;
      }

      v65 = v59;
      sub_2211531C0(&self->_cellCountDiffsPerRow.__begin_, &v65);
      v60 = p_cellCountDiffsPerColumn->__begin_;
      end = self->_cellCountDiffsPerColumn.__end_;
      v62 = __p;
      if (p_cellCountDiffsPerColumn->__begin_ != end)
      {
        v63 = __p;
        do
        {
          v64 = *v63++;
          *v60++ += v64;
        }

        while (v60 != end);
      }

      if (v62)
      {
        v67 = v62;
        operator delete(v62);
      }

      ++v52;
    }

    while (v55 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }

  __p = location;
  sub_22107C2C0(&__p);
}

- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)a3
{
  v27 = a3;
  p_oldCells = &self->_oldCells;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateNewAndOldCellsSeriallyUsingBlock:]", v5, v6);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1488, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  p_cells = &self->_cells;
  v22 = self->_cells.__begin_;
  if (self->_cells.var0 != v22)
  {
    v23 = 0;
    do
    {
      v24 = v22[v23];
      if (p_oldCells->__begin_ == p_oldCells->var0)
      {
        v25 = 0;
      }

      else
      {
        v25 = p_oldCells->__begin_[v23];
      }

      v26 = v25;
      if (v24 | v26)
      {
        v27[2](v27, v24, v26);
      }

      ++v23;
      v22 = p_cells->__begin_;
    }

    while (v23 < p_cells->var0 - p_cells->__begin_);
  }
}

- (void)p_enumerateCellsAddedAndRemovedOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v9 = a4;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedAndRemovedOfType:usingBlock:]", v7, v8);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1501, 0, "_oldCells size:%lu does not match _cells size:%lu in cellList", self->_oldCells.var0 - self->_oldCells.__begin_, self->_cells.var0 - self->_cells.__begin_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  interestingCells = self->_interestingCells;
  if (!interestingCells)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedAndRemovedOfType:usingBlock:]", v7, v8);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1503, 0, "invalid nil value for '%{public}s'", "_interestingCells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    interestingCells = self->_interestingCells;
  }

  v35 = objc_msgSend_objectAtIndexedSubscript_(interestingCells, v6, a3, v7, v8);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_221168C88;
  v40[3] = &unk_27845FE28;
  v40[4] = self;
  v36 = v9;
  v41 = v36;
  objc_msgSend_enumerateIndexesUsingBlock_(v35, v37, v40, v38, v39);
}

- (void)p_enumerateCellsAddedOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v9 = a4;
  interestingCells = self->_interestingCells;
  if (!interestingCells)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedOfType:usingBlock:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1530, 0, "invalid nil value for '%{public}s'", "_interestingCells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    interestingCells = self->_interestingCells;
  }

  v22 = objc_msgSend_objectAtIndexedSubscript_(interestingCells, v6, a3, v7, v8);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_221168F38;
  v27[3] = &unk_27845FE28;
  v27[4] = self;
  v23 = v9;
  v28 = v23;
  objc_msgSend_enumerateIndexesUsingBlock_(v22, v24, v27, v25, v26);
}

- (void)p_enumerateCellsAddedAndRemovedForFormatsUsingBlock:(id)a3
{
  v4 = a3;
  formatsAdded = self->_formatsAdded;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221169168;
  v17[3] = &unk_27845FE50;
  v6 = v4;
  v17[4] = self;
  v18 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsAdded, v7, v17, v8, v9);
  formatsRemoved = self->_formatsRemoved;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221169198;
  v15[3] = &unk_27845FE78;
  v11 = v6;
  v15[4] = self;
  v16 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsRemoved, v12, v15, v13, v14);
}

- (void)p_enumerateColumnCellCountDiffUsingBlock:(id)a3
{
  v23 = a3;
  p_baseColumns = &self->_baseColumns;
  begin = self->_baseColumns.__begin_;
  end = self->_baseColumns.__end_;
  p_cellCountDiffsPerColumn = &self->_cellCountDiffsPerColumn;
  if (end - begin != self->_cellCountDiffsPerColumn.__end_ - self->_cellCountDiffsPerColumn.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateColumnCellCountDiffUsingBlock:]", v5, v6);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1567, 0, "_baseColumns and _cellCountDiffsPerColumn sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    begin = p_baseColumns->__begin_;
    end = p_baseColumns->__end_;
  }

  if (end != begin)
  {
    v22 = 0;
    do
    {
      v23[2](v23, begin[v22]._column, p_cellCountDiffsPerColumn->__begin_[v22]);
      ++v22;
      begin = p_baseColumns->__begin_;
    }

    while (v22 < p_baseColumns->__end_ - p_baseColumns->__begin_);
  }
}

- (void)p_enumerateRowCellCountDiffUsingBlock:(id)a3
{
  v4 = a3;
  p_baseRows = &self->_baseRows;
  begin = self->_baseRows.__begin_;
  end = self->_baseRows.__end_;
  v64 = v4;
  if (end - begin != self->_cellCountDiffsPerRow.__end_ - self->_cellCountDiffsPerRow.__begin_)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v7, v8);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1577, 0, "_baseRows and _cellCountDiffsPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    begin = p_baseRows->__begin_;
    end = self->_baseRows.__end_;
  }

  if (objc_msgSend_count(self->_tilesPerRow, v5, v6, v7, v8, &self->_cellCountDiffsPerRow) != end - begin)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v25, v26);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 1578, 0, "_baseRows and _tilesPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v39 = p_baseRows->__begin_;
  v38 = self->_baseRows.__end_;
  if (objc_msgSend_count(self->_rowInfosPerRow, v23, v24, v25, v26) != v38 - v39)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v41, v42);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 1579, 0, "_baseRows and _rowInfosPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  v54 = p_baseRows->__begin_;
  if (self->_baseRows.__end_ != p_baseRows->__begin_)
  {
    v55 = 0;
    do
    {
      row = v54[v55]._row;
      v57 = *(*v63 + 8 * v55);
      v58 = objc_msgSend_objectAtIndexedSubscript_(self->_tilesPerRow, v40, v55, v41, v42);
      v62 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v59, v55, v60, v61);
      v64[2](v64, row, v57, v58, v62);

      ++v55;
      v54 = p_baseRows->__begin_;
    }

    while (v55 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }
}

- (void)p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_221169B4C;
  v79 = sub_221169B5C;
  v80 = 0;
  formatsAdded = self->_formatsAdded;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_221169B64;
  v72[3] = &unk_27845FEA0;
  v64 = v4;
  v73 = v64;
  v74 = &v75;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsAdded, v6, v72, v7, v8);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v76[5];
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v68, v81, 16);
  if (v14)
  {
    v15 = *v69;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v68 + 1) + 8 * i);
        v18 = objc_msgSend_first(v17, v10, v11, v12, v13);
        v26 = objc_msgSend_second(v17, v19, v20, v21, v22);
        if (!v18)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]", v24, v25);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v30, v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 1611, 0, "customFormatToRemove can not be nil.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        if (v26)
        {
          v38 = objc_msgSend_objectForKey_(self->_formatsAdded, v23, v18, v24, v25);
          objc_msgSend_removeObjectForKey_(self->_formatsAdded, v39, v18, v40, v41);
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = sub_221169D18;
          v66[3] = &unk_27845DE60;
          v66[4] = self;
          v42 = v26;
          v67 = v42;
          objc_msgSend_enumerateIndexesUsingBlock_(v38, v43, v66, v44, v45);
          v52 = objc_msgSend_objectForKey_(self->_formatsAdded, v46, v42, v47, v48);
          if (v52)
          {
            objc_msgSend_addIndexes_(v38, v49, v52, v50, v51);
          }

          if (v38)
          {
            objc_msgSend_setObject_forKey_(self->_formatsAdded, v49, v38, v42, v51);
          }
        }

        else
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]", v24, v25);
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v56, v57);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 1612, 0, "replacementCustomFormat can not be nil.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v68, v81, 16);
    }

    while (v14);
  }

  _Block_object_dispose(&v75, 8);
}

- (id)p_baseColumnIndexes
{
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  p_baseColumns = &self->_baseColumns;
  begin = self->_baseColumns.__begin_;
  end = p_baseColumns->__end_;
  while (begin != end)
  {
    objc_msgSend_addIndex_(v9, v6, begin->_column, v7, v8);
    ++begin;
  }

  return v9;
}

- (id)p_baseRowIndexes
{
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  p_baseRows = &self->_baseRows;
  begin = self->_baseRows.__begin_;
  end = p_baseRows->__end_;
  while (begin != end)
  {
    objc_msgSend_addIndex_(v9, v6, begin->_row, v7, v8);
    ++begin;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[114], v6, v7);

  v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11, v12);
  sub_22116A0A0(&self->_cells.__begin_, *(v8 + 32));
  v14 = *(v8 + 40);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v8 + 32);
  if (v16)
  {
    v17 = 8 * v16;
    do
    {
      TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(__p, *v15);
      v34 = 0;
      if (v31)
      {
        v18 = [TSTCell alloc];
        v22 = objc_msgSend_initWithLocale_(v18, v19, v13, v20, v21);
        v23 = v34;
        v34 = v22;

        if (v32)
        {
          v24 = v32;
        }

        else
        {
          v24 = &TST::_Cell_default_instance_;
        }

        sub_221123AF0(v24, v34, v4);
      }

      sub_22116A130(&self->_cells.__begin_, &v34);

      TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(__p);
      ++v15;
      v17 -= 8;
    }

    while (v17);
  }

  v25 = *(v8 + 16);
  if ((v25 & 2) != 0)
  {
    self->_viewCellRect._rect.origin = sub_22112397C(*(v8 + 56));
    self->_viewCellRect._rect.size = v26;
    v25 = *(v8 + 16);
  }

  if (v25)
  {
    MEMORY[0x223D9F8B0](__p, *(v8 + 48));
    p_cellUIDRange = &self->_cellUIDRange;
    begin = p_cellUIDRange->_colIdList.__begin_;
    if (p_cellUIDRange->_colIdList.__begin_)
    {
      p_cellUIDRange->_colIdList.__end_ = begin;
      operator delete(begin);
      p_cellUIDRange->_colIdList.__begin_ = 0;
      p_cellUIDRange->_colIdList.__end_ = 0;
      p_cellUIDRange->_colIdList.__cap_ = 0;
    }

    *&p_cellUIDRange->_colIdList.__begin_ = *__p;
    p_cellUIDRange->_colIdList.__cap_ = v31;
    __p[1] = 0;
    v31 = 0;
    __p[0] = 0;
    v29 = p_cellUIDRange->_rowIdList.__begin_;
    if (v29)
    {
      p_cellUIDRange->_rowIdList.__end_ = v29;
      operator delete(v29);
      p_cellUIDRange->_rowIdList.__begin_ = 0;
      p_cellUIDRange->_rowIdList.__end_ = 0;
      p_cellUIDRange->_rowIdList.__cap_ = 0;
      v29 = __p[0];
    }

    *&p_cellUIDRange->_rowIdList.__begin_ = v32;
    p_cellUIDRange->_rowIdList.__cap_ = v33;
    v33 = 0;
    v32 = 0uLL;
    if (v29)
    {
      __p[1] = v29;
      operator delete(v29);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ((objc_msgSend_isMemberOfClass_(self, v6, v5, v7, v8) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTConcurrentCellList saveToArchiver:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1692, 0, "Archiving is not correctly implemented for subclasses.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v45 = v4;
  google::protobuf::internal::AssignDescriptors();
  v25 = objc_msgSend_messageWithNewFunction_descriptor_(v45, v23, sub_22116D328, off_2812E4498[114], v24);

  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v28 = *begin;
    v29 = v28;
    v30 = *(v25 + 40);
    if (!v30)
    {
      goto LABEL_11;
    }

    v31 = *(v25 + 32);
    v32 = *v30;
    if (v31 < *v30)
    {
      *(v25 + 32) = v31 + 1;
      v33 = *&v30[2 * v31 + 2];
      if (!v28)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v32 == *(v25 + 36))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v25 + 24));
      v30 = *(v25 + 40);
      v32 = *v30;
    }

    *v30 = v32 + 1;
    v33 = google::protobuf::Arena::CreateMaybeMessage<TST::ConcurrentCellListArchive_OptionalCell>(*(v25 + 24));
    v34 = *(v25 + 32);
    v35 = *(v25 + 40) + 8 * v34;
    *(v25 + 32) = v34 + 1;
    *(v35 + 8) = v33;
    if (!v29)
    {
      goto LABEL_18;
    }

LABEL_13:
    *(v33 + 16) |= 1u;
    v36 = *(v33 + 24);
    if (!v36)
    {
      v37 = *(v33 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v37);
      *(v33 + 24) = v36;
    }

    sub_2211243E4(v29, v36, v45);
LABEL_18:

    ++begin;
  }

  p_origin = &self->_viewCellRect._rect.origin;
  if (TSUCellRect::isValid(&self->_viewCellRect._rect))
  {
    v39 = *p_origin;
    v40 = p_origin[1];
    *(v25 + 16) |= 2u;
    v41 = *(v25 + 56);
    if (!v41)
    {
      v42 = *(v25 + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v42);
      *(v25 + 56) = v41;
    }

    sub_2211239EC(v39, v40, v41);
  }

  else
  {
    *(v25 + 16) |= 1u;
    v43 = *(v25 + 48);
    if (!v43)
    {
      v44 = *(v25 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x223DA0320](v44);
      *(v25 + 48) = v43;
    }

    TSKUIDStructTract::saveToMessage(&self->_cellUIDRange, v43);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_context(self, v10, v11, v12, v13);
  origin = self->_viewCellRect._rect.origin;
  size = self->_viewCellRect._rect.size;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_221086EBC(&v30, self->_cellUIDRange._colIdList.__begin_, self->_cellUIDRange._colIdList.__end_, self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_);
  __p = 0;
  v34 = 0;
  v35 = 0;
  sub_221086EBC(&__p, self->_cellUIDRange._rowIdList.__begin_, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_);
  v18 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(v9, v17, v14, origin, size, &v30);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  p_cells = &self->_cells;
  sub_2211389A0(v18 + 18, p_cells->var0 - p_cells->__begin_);
  begin = p_cells->__begin_;
  if (p_cells->var0 != p_cells->__begin_)
  {
    v25 = 0;
    do
    {
      v26 = objc_msgSend_copy(begin[v25], v20, v21, v22, v23);
      v27 = v18[18];
      v28 = *(v27 + 8 * v25);
      *(v27 + 8 * v25) = v26;

      ++v25;
      begin = p_cells->__begin_;
    }

    while (v25 < p_cells->var0 - p_cells->__begin_);
  }

  return v18;
}

- (TSUViewCellRect)viewCellRect
{
  p_viewCellRect = &self->_viewCellRect;
  origin = self->_viewCellRect._rect.origin;
  size = p_viewCellRect->_rect.size;
  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSKUIDStructTract)cellUIDRange
{
  p_cellUIDRange = &self->_cellUIDRange;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_cellUIDRange._colIdList.__begin_, self->_cellUIDRange._colIdList.__end_, self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_cellUIDRange->_rowIdList.__begin_, p_cellUIDRange->_rowIdList.__end_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);
}

- (void)setCellUIDRange:(TSKUIDStructTract *)a3
{
  p_cellUIDRange = &self->_cellUIDRange;
  if (&self->_cellUIDRange != a3)
  {
    sub_2210BD068(&self->_cellUIDRange._colIdList.__begin_, a3->_colIdList.__begin_, a3->_colIdList.__end_, a3->_colIdList.__end_ - a3->_colIdList.__begin_);
    begin = a3->_rowIdList.__begin_;
    end = a3->_rowIdList.__end_;

    sub_2210BD068(&p_cellUIDRange->_rowIdList.__begin_, begin, end, (end - begin) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

@end