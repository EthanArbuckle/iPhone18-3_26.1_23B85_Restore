@interface TSTWidthHeightCache
- (BOOL)p_insertColumns:(unsigned int)columns atColumn:(unsigned __int16)column;
- (BOOL)p_insertRows:(unsigned int)rows atRow:(unsigned int)row;
- (TSTWidthHeightCache)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTWidthHeightCache)initWithNumRows:(unsigned int)rows andNumColumns:(unsigned int)columns;
- (double)getFitHeightForRow:(unsigned int)row;
- (double)getModelHeightForRow:(unsigned int)row;
- (double)getModelWidthForColumn:(unsigned __int16)column;
- (id).cxx_construct;
- (id)columnToWidthMapFromCollectionArray:(id)array;
- (id)p_deleteColumnsStartingWith:(unsigned __int16)with upToColumn:(unsigned __int16)column;
- (id)p_resetFittingHeightsForRange:(TSUCellRect)range;
- (id)validateChangeDescriptors:(id)descriptors tableInfo:(id)info numberOfRows:(unsigned int)rows numberOfColumns:(unsigned __int16)columns;
- (id)validateRowsNeedingFittingInfo:(id)info validationRegion:(id)region layoutEngine:(id)engine;
- (void)dealloc;
- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info;
- (void)getFitHeight:(double *)height andModelHeight:(double *)modelHeight forRow:(unsigned int)row;
- (void)p_deleteRowsStartingWith:(unsigned int)with upToRow:(unsigned int)row;
- (void)p_moveColumnsFrom:(TSUCellRect)from toColumn:(unsigned __int16)column;
- (void)p_moveRowsFrom:(TSUCellRect)from toRow:(unsigned int)row;
- (void)p_moveRowsUsingShuffleMapping:(id)mapping;
- (void)p_resetToRows:(unsigned int)rows andNumColumns:(unsigned int)columns;
- (void)p_setFittingHeightsFromCollectionWithLock:(id)lock;
- (void)resetFittingRowHeightsStartingWith:(unsigned int)with upToRow:(unsigned int)row;
- (void)resetModelCache;
- (void)resetModelCacheRange:(TSUCellRect)range;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setFitHeight:(double)height forCellID:(TSUCellCoord)d;
- (void)setFittingHeightsFromCollection:(id)collection;
- (void)setFittingHeightsFromCollectionArray:(id)array;
- (void)setModelHeight:(double)height forRow:(unsigned int)row;
- (void)setModelWidth:(double)width forColumn:(unsigned __int16)column;
- (void)willModifyIfNeeded:(id)needed;
- (void)willModifyIfPossible:(id)possible;
@end

@implementation TSTWidthHeightCache

- (TSTWidthHeightCache)initWithNumRows:(unsigned int)rows andNumColumns:(unsigned int)columns
{
  v4 = *&columns;
  v5 = *&rows;
  v11.receiver = self;
  v11.super_class = TSTWidthHeightCache;
  v6 = [(TSTWidthHeightCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    pthread_rwlock_init(&v6->_lock, 0);
    objc_msgSend_p_resetToRows_andNumColumns_(v7, v8, v5, v4, v9);
  }

  return v7;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = TSTWidthHeightCache;
  [(TSTWidthHeightCache *)&v3 dealloc];
}

- (void)p_resetToRows:(unsigned int)rows andNumColumns:(unsigned int)columns
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  self->_rowHeights.__end_ = self->_rowHeights.__begin_;
  self->_columnModelWidths.__end_ = begin;
  sub_2213DD238(v8);
  sub_2213D9A9C(&self->_rowHeights.__begin_, rows, v8);
  v8[0] = 0;
  sub_2213A1E8C(&self->_columnModelWidths.__begin_, columns, v8);
  pthread_rwlock_unlock(&self->_lock);
}

- (void)setFitHeight:(double)height forCellID:(TSUCellCoord)d
{
  column = d.column;
  row = d.row;
  if (d.row != 0x7FFFFFFFLL && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_rowHeights.__begin_;
    if (row < 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3))
    {
      sub_2213DD4E4(begin + 72 * row + 8, column, height);
    }

    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)p_setFittingHeightsFromCollectionWithLock:(id)lock
{
  lockCopy = lock;
  if (objc_msgSend_hasWorkItems(lockCopy, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213D9C50;
    v12[3] = &unk_278464750;
    v12[4] = self;
    objc_msgSend_enumerateFittingHeightsUsingBlock_(lockCopy, v9, v12, v10, v11);
  }
}

- (void)setFittingHeightsFromCollection:(id)collection
{
  collectionCopy = collection;
  if (objc_msgSend_hasWorkItems(collectionCopy, v4, v5, v6, v7))
  {
    pthread_rwlock_wrlock(&self->_lock);
    objc_msgSend_p_setFittingHeightsFromCollectionWithLock_(self, v8, collectionCopy, v9, v10);
    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)setFittingHeightsFromCollectionArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  pthread_rwlock_wrlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = arrayCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_setFittingHeightsFromCollectionWithLock_(self, v7, *(*(&v13 + 1) + 8 * v12++), v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (id)columnToWidthMapFromCollectionArray:(id)array
{
  v27 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v4, v5, v6, v7);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = arrayCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_2213DA044;
        v20[3] = &unk_278464778;
        v21 = v8;
        objc_msgSend_enumerateFittingWidthsUsingBlock_(v14, v15, v20, v16, v17);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v22, v26, 16);
    }

    while (v11);
  }

  return v8;
}

- (double)getFitHeightForRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v6 = 0.0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v7 = &begin[72 * row];
    v6 = 8.0;
    if (!*(v7 + 5))
    {
      v6 = v7[1];
    }
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (void)setModelWidth:(double)width forColumn:(unsigned __int16)column
{
  columnCopy = column;
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  if (columnCopy < (self->_columnModelWidths.__end_ - begin))
  {
    begin[columnCopy] = width;
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)setModelHeight:(double)height forRow:(unsigned int)row
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    begin[9 * row] = height;
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetModelCache
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v4 = self->_rowHeights.__end_ - begin;
  if (v4)
  {
    v5 = 0x8E38E38E38E38E39 * (v4 >> 3);
    v6 = 1;
    do
    {
      *begin = 0;
      begin += 9;
      v7 = v5 > v6++;
    }

    while (v7);
  }

  v8 = self->_columnModelWidths.__begin_;
  v9 = self->_columnModelWidths.__end_ - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = 1;
    do
    {
      *v8++ = 0.0;
      v7 = v10 > v11++;
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetModelCacheRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  pthread_rwlock_wrlock(&self->_lock);
  v6 = (*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF;
  if (v6)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  begin = self->_rowHeights.__begin_;
  v9 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3);
  if (v9 > row)
  {
    if (HIDWORD(*&size))
    {
      v10 = origin.row == 0x7FFFFFFF;
    }

    else
    {
      v10 = 1;
    }

    v11 = size.numberOfRows + origin.row;
    if (v10)
    {
      v11 = 0x80000000;
    }

    if (v11 >= v9)
    {
      v11 = 954437177 * ((self->_rowHeights.__end_ - begin) >> 3);
    }

    v12 = 9 * row;
    v13 = &begin[72 * row];
    v14 = &begin[72 * v11];
    if (v13 < v14)
    {
      v15 = 0;
      v16 = 8 * v12;
      if (v14 <= (v13 + 72))
      {
        v14 = (v13 + 72);
      }

      v17 = (v14 - 72);
      v18 = &begin[v16];
      if (v17 != v13)
      {
        ++v18;
      }

      v19 = v17 - v18;
      if (v17 == v13)
      {
        v20 = v13;
      }

      else
      {
        v20 = v13 + 1;
      }

      v21 = v19 / 0x48;
      if (v17 != v13)
      {
        ++v21;
      }

      v6 = v17 == v13;
      v22 = (v17 - v20) / 0x48uLL;
      if (!v6)
      {
        ++v22;
      }

      v23 = vdupq_n_s64(v22);
      v24 = (v21 + 2) & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v15), xmmword_2217E0F60)));
        if (v25.i8[0])
        {
          *v13 = 0;
        }

        if (v25.i8[4])
        {
          *(v13 + 9) = 0;
        }

        v15 += 2;
        v13 += 144;
      }

      while (v24 != v15);
    }
  }

  if (origin.row != 0x7FFFFFFFLL && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  v28 = self->_columnModelWidths.__begin_;
  v29 = self->_columnModelWidths.__end_ - v28;
  if (column < v29 >> 3)
  {
    v30 = v29 >> 3;
    if (size.numberOfColumns)
    {
      v31 = origin.column == 0x7FFF;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v32 = 0x8000;
    }

    else
    {
      v32 = (LOWORD(size.numberOfColumns) + origin.column - 1) + 1;
    }

    if (v32 >= v30)
    {
      v32 = v30;
    }

    v33 = &v28[column];
    v34 = &v28[v32];
    if (v33 < v34)
    {
      if (v34 <= v33 + 8)
      {
        v34 = v33 + 8;
      }

      bzero(v33, ((v34 + ~v33) & 0xFFFFFFFFFFFFFFF8) + 8);
    }
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (double)getModelHeightForRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v6 = 0.0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v6 = begin[9 * row];
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (double)getModelWidthForColumn:(unsigned __int16)column
{
  columnCopy = column;
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  v6 = 0.0;
  if (columnCopy < (self->_columnModelWidths.__end_ - begin))
  {
    v6 = begin[columnCopy];
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (void)getFitHeight:(double *)height andModelHeight:(double *)modelHeight forRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v10 = 0.0;
  v11 = 0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v12 = &begin[72 * row];
    v11 = *v12;
    v10 = 8.0;
    if (!*(v12 + 5))
    {
      v10 = v12[1];
    }
  }

  pthread_rwlock_unlock(&self->_lock);
  if (height)
  {
    *height = v10;
  }

  if (modelHeight)
  {
    *modelHeight = v11;
  }
}

- (id)p_deleteColumnsStartingWith:(unsigned __int16)with upToColumn:(unsigned __int16)column
{
  if (with >= column)
  {
    v8 = 0;
  }

  else
  {
    columnCopy = column;
    withCopy = with;
    v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, with, column, v4);
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_columnModelWidths.__begin_;
    end = self->_columnModelWidths.__end_;
    v11 = (end - begin) >> 3;
    if (v11 >= withCopy)
    {
      v12 = withCopy;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= columnCopy)
    {
      v13 = columnCopy;
    }

    else
    {
      v13 = v11;
    }

    if (v12 < v13)
    {
      v14 = v13 - v12;
      v15 = &begin[v12];
      v16 = &v15[v14];
      v17 = end - v16;
      if (end != v16)
      {
        memmove(&begin[v12], v16, end - v16);
      }

      self->_columnModelWidths.__end_ = (v15 + v17);
      v18 = self->_rowHeights.__begin_;
      if (self->_rowHeights.__end_ != v18)
      {
        v19 = 0;
        v20 = 1;
        do
        {
          if (sub_2213DA858(v18 + 72 * v19 + 8, v12, v14))
          {
            objc_msgSend_addIndex_(v8, v21, v19, v22, v23);
          }

          v19 = v20;
          v18 = self->_rowHeights.__begin_;
        }

        while (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - v18) >> 3) > v20++);
      }
    }

    pthread_rwlock_unlock(&self->_lock);
  }

  return v8;
}

- (void)p_deleteRowsStartingWith:(unsigned int)with upToRow:(unsigned int)row
{
  if (with < row)
  {
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_rowHeights.__begin_;
    end = self->_rowHeights.__end_;
    v10 = 954437177 * ((end - begin) >> 3);
    if (v10 > with)
    {
      v11 = &begin[72 * with];
      if (v10 >= row)
      {
        rowCopy = row;
      }

      else
      {
        rowCopy = v10;
      }

      v13 = &v11[72 * (rowCopy - with)];
      v14 = end - v13;
      if (end != v13)
      {
        memmove(v11, v13, end - v13);
      }

      self->_rowHeights.__end_ = &v11[v14];
    }

    pthread_rwlock_unlock(&self->_lock);
  }
}

- (BOOL)p_insertColumns:(unsigned int)columns atColumn:(unsigned __int16)column
{
  LODWORD(v5) = column;
  LODWORD(v6) = columns;
  if (column + columns >= 0x3E9)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_insertColumns:atColumn:]", column, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 671, 0, "attempt to insert column range beyond column width cache max columns; truncating");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (v5 >= 0x3E7)
  {
    v5 = 999;
  }

  else
  {
    v5 = v5;
  }

  if (1000 - v5 >= v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = (1000 - v5);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  p_columnModelWidths = &self->_columnModelWidths;
  if (v5 <= self->_columnModelWidths.__end_ - begin)
  {
    v30 = 0;
    sub_2213DAB48(p_columnModelWidths, &begin[v5], v6, &v30);
  }

  else
  {
    v30 = 0;
    sub_2213A1E8C(p_columnModelWidths, (v6 + v5), &v30);
  }

  v22 = self->_rowHeights.__begin_;
  end = self->_rowHeights.__end_;
  v23 = end - v22;
  if (end != v22)
  {
    v24 = 0;
    v25 = 0x8E38E38E38E38E39 * (v23 >> 3);
    v26 = v22 + 16;
    do
    {
      for (i = 0; i != 64; i += 16)
      {
        v28 = *&v26[i];
        if (v28 >= v5)
        {
          *&v26[i] = v28 + v6;
        }
      }

      ++v24;
      v26 += 72;
    }

    while (v25 > v24);
  }

  pthread_rwlock_unlock(&self->_lock);
  return 1;
}

- (BOOL)p_insertRows:(unsigned int)rows atRow:(unsigned int)row
{
  if (row + rows >= 0xF4241)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_insertRows:atRow:]", *&row, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 697, 0, "attempt to insert row range beyond row height cache max rows; truncating");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (row >= 0xF423F)
  {
    rowCopy = 999999;
  }

  else
  {
    rowCopy = row;
  }

  if (1000000 - rowCopy >= rows)
  {
    rowsCopy = rows;
  }

  else
  {
    rowsCopy = (1000000 - rowCopy);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) >= rowCopy)
  {
    v22 = &begin[72 * rowCopy];
    sub_2213DD238(v24);
    sub_2213DAF88(&self->_rowHeights.__begin_, v22, rowsCopy, v24);
  }

  else
  {
    sub_2213DD238(v24);
    sub_2213D9A9C(&self->_rowHeights.__begin_, (rowsCopy + rowCopy), v24);
  }

  pthread_rwlock_unlock(&self->_lock);
  return 1;
}

- (void)p_moveRowsFrom:(TSUCellRect)from toRow:(unsigned int)row
{
  row = from.origin.row;
  if (from.origin.row != row)
  {
    numberOfRows = from.size.numberOfRows;
    v7 = from.size.numberOfRows + from.origin.row;
    if (from.size.numberOfRows + from.origin.row != row)
    {
      if (from.origin.row <= row && v7 >= row)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size, *&row);
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v12, v13);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 727, 0, "destination cannot be within the source range.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
      }

      if (v7 >= 0xF4241)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size, *&row);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 728, 0, "src range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      }

      if (row >= 0xF4241)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size, *&row);
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v34, v35);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 729, 0, "dest range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      }

      pthread_rwlock_wrlock(&self->_lock);
      if (v7 <= row)
      {
        rowCopy = row;
      }

      else
      {
        rowCopy = v7;
      }

      begin = self->_rowHeights.__begin_;
      p_rowHeights = &self->_rowHeights;
      if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) < rowCopy)
      {
        sub_2213DD238(&v51);
        sub_2213D9A9C(&self->_rowHeights.__begin_, rowCopy, &v51);
        begin = p_rowHeights->__begin_;
      }

      rowCopy2 = row;
      v46 = 9 * row;
      v47 = &begin[72 * row];
      v48 = &v47[72 * numberOfRows];
      v51 = 0;
      v52 = 0;
      v53 = 0;
      sub_2213DD5AC(&v51, v47, v48, numberOfRows);
      v49 = &begin[72 * row];
      if (v49 <= v48)
      {
        if (rowCopy2 != row)
        {
          memmove(&v48[-(8 * v46 - 72 * row)], v49, 8 * v46 - 72 * row);
        }
      }

      else
      {
        memmove(v47, &v47[72 * numberOfRows], v49 - v48);
        v49 = p_rowHeights->__begin_ + 72 * (row - numberOfRows);
      }

      v50 = v51;
      if (v52 != v51)
      {
        memmove(v49, v51, v52 - v51);
        v50 = v51;
      }

      if (v50)
      {
        v52 = v50;
        operator delete(v50);
      }

      pthread_rwlock_unlock(&self->_lock);
    }
  }
}

- (void)p_moveColumnsFrom:(TSUCellRect)from toColumn:(unsigned __int16)column
{
  column = from.origin.column;
  if (from.origin.column != column)
  {
    columnCopy = column;
    numberOfColumns = from.size.numberOfColumns;
    v7 = from.origin.column + from.size.numberOfColumns;
    if (v7 != column)
    {
      origin = from.origin;
      if (from.origin.column <= column && v7 >= column)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size, column);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v13, v14);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 777, 0, "destination cannot be within the source range.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      }

      if (v7 >= 0x3E9)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size, column);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 778, 0, "src range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      }

      if (columnCopy >= 0x3E9)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size, column);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 779, 0, "dest range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      }

      v43 = HIDWORD(*&origin);
      pthread_rwlock_wrlock(&self->_lock);
      if (v7 <= columnCopy)
      {
        v44 = columnCopy;
      }

      else
      {
        v44 = v7;
      }

      begin = self->_columnModelWidths.__begin_;
      p_columnModelWidths = &self->_columnModelWidths;
      if (v44 > self->_columnModelWidths.__end_ - begin)
      {
        __p = 0;
        sub_2213A1E8C(&self->_columnModelWidths.__begin_, v44, &__p);
        begin = p_columnModelWidths->__begin_;
      }

      v47 = 8 * v43;
      v48 = &begin[v47 / 8];
      v49 = &begin[v47 / 8 + numberOfColumns];
      __p = 0;
      v56 = 0;
      v57 = 0;
      sub_2212A41CC(&__p, &begin[v47 / 8], v49, numberOfColumns);
      v50 = &begin[columnCopy];
      if (v48 >= v50)
      {
        v51 = 8 * columnCopy;
        if (v47 != v51)
        {
          memmove(&v49[-(v47 - v51)], v50, v47 - v51);
        }
      }

      else
      {
        if (v50 != v49)
        {
          memmove(v48, v49, v50 - v49);
        }

        v50 = &p_columnModelWidths->__begin_[columnCopy - numberOfColumns];
      }

      if (v56 != __p)
      {
        memmove(v50, __p, v56 - __p);
      }

      v52 = self->_rowHeights.__begin_;
      end = self->_rowHeights.__end_;
      while (v52 != end)
      {
        for (i = 8; i != 72; i += 16)
        {
          sub_2213DD770(&v52[i], column, numberOfColumns, columnCopy);
        }

        v52 += 72;
      }

      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }

      pthread_rwlock_unlock(&self->_lock);
    }
  }
}

- (void)p_moveRowsUsingShuffleMapping:(id)mapping
{
  mappingCopy = mapping;
  pthread_rwlock_wrlock(&self->_lock);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0x7FFFFFFF;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x7812000000;
  v9[3] = sub_2213DB9E4;
  v9[4] = nullsub_60;
  v9[5] = &unk_22188E88F;
  sub_2213DD238(&v10);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2213DBA0C;
  v8[3] = &unk_2784647A0;
  v8[4] = self;
  v8[5] = v11;
  v8[6] = v9;
  objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(mappingCopy, v5, v8, v6, v7);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetFittingRowHeightsStartingWith:(unsigned int)with upToRow:(unsigned int)row
{
  if (with > row)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache resetFittingRowHeightsStartingWith:upToRow:]", *&row, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 853, 0, "startRow should be before endRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v20 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3);
  if (v20 > with)
  {
    rowCopy = v20 - 1;
    if (rowCopy >= row)
    {
      rowCopy = row;
    }

    v22 = &begin[72 * rowCopy + 72];
    for (i = &begin[72 * with]; i < v22; i += 72)
    {
      for (j = 0; j != 4; ++j)
      {
        v25 = &v30[j];
        *v25 = 0;
        v25[1] = 0x17FFFFFFFLL;
      }

      for (k = 0; k != 4; ++k)
      {
        v27 = &v30[k];
        *v27 = 0;
        v27[1] = 0x17FFFFFFFLL;
      }

      v28 = v30[1];
      *(i + 8) = v30[0];
      *(i + 24) = v28;
      v29 = v30[3];
      *(i + 40) = v30[2];
      *(i + 56) = v29;
    }
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (id)p_resetFittingHeightsForRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&range.origin, *&range.size, v3, *&range.origin, *&range.size);
  pthread_rwlock_wrlock(&self->_lock);
  v8 = origin.row == 0x7FFFFFFF;
  if (v8 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (!HIDWORD(*&size))
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = origin.row + size.numberOfRows - 1;
  }

  v11 = TSUCellRect::columns(&v23);
  v13 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
  if (v13 > row)
  {
    v14 = v13 - 1;
    if (v10 < v14)
    {
      v14 = v10;
    }

    if (row < v14 + 1)
    {
      v15 = v11;
      v16 = v12;
      v17 = 72 * row + 8;
      v18 = v14 - row + 1;
      do
      {
        if (sub_2213DD7D8(self->_rowHeights.__begin_ + v17, v15, v16, 2))
        {
          objc_msgSend_addIndex_(v7, v19, row, v20, v21);
        }

        ++row;
        v17 += 72;
        --v18;
      }

      while (v18);
    }
  }

  pthread_rwlock_unlock(&self->_lock);

  return v7;
}

- (id)validateChangeDescriptors:(id)descriptors tableInfo:(id)info numberOfRows:(unsigned int)rows numberOfColumns:(unsigned __int16)columns
{
  v119 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  infoCopy = info;
  objc_msgSend_willModifyIfPossible_(self, v8, infoCopy, v9, v10);
  v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = descriptorsCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v114, v118, 16);
  if (v21)
  {
    v22 = *v115;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v115 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v114 + 1) + 8 * i);
        v25 = objc_msgSend_changeDescriptor(v24, v17, v18, v19, v20);
        v30 = objc_msgSend_cellID(v24, v26, v27, v28, v29);
        if (v25 <= 22)
        {
          if (v25 == 2)
          {
            continue;
          }

          if (v25 != 3)
          {
            if (v25 == 4)
            {
              objc_msgSend_hasBeforeAfterCounts(v24, v17, v18, v19, v20);
              v47 = objc_msgSend_cellRegion(v24, v43, v44, v45, v46);
              v107[0] = MEMORY[0x277D85DD0];
              v107[1] = 3221225472;
              v107[2] = sub_2213DC538;
              v107[3] = &unk_27845E1D0;
              v107[4] = self;
              objc_msgSend_enumerateColumnRangesUsingBlock_(v47, v48, v107, v49, v50);

              objc_msgSend_hasBeforeAfterCounts(v24, v51, v52, v53, v54);
              continue;
            }

LABEL_17:
            v67 = objc_msgSend_cellRegion(v24, v17, v18, v19, v20);
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = sub_2213DC544;
            v103[3] = &unk_2784647C8;
            v105 = v25;
            v103[4] = self;
            v106 = v30;
            v104 = v15;
            objc_msgSend_enumerateCellRangesUsingBlock_(v67, v68, v103, v69, v70);

            continue;
          }

          objc_msgSend_hasBeforeAfterCounts(v24, v17, v18, v19, v20);
          v91 = objc_msgSend_cellRegion(v24, v87, v88, v89, v90);
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = sub_2213DC4B8;
          v108[3] = &unk_27845EBE8;
          v108[4] = self;
          v109 = v15;
          objc_msgSend_enumerateColumnRangesInReverseUsingBlock_(v91, v92, v108, v93, v94);

          objc_msgSend_hasBeforeAfterCounts(v24, v95, v96, v97, v98);
        }

        else if (v25 > 24)
        {
          if (v25 != 25)
          {
            if (v25 == 28)
            {
              v55 = objc_msgSend_shuffleMapping(v24, v17, v18, v19, v20);
              objc_msgSend_p_moveRowsUsingShuffleMapping_(self, v56, v55, v57, v58);

              v63 = objc_msgSend_shuffleMapping(v24, v59, v60, v61, v62);
              objc_msgSend_applyMappingToIndexSet_(v63, v64, v15, v65, v66);

              continue;
            }

            goto LABEL_17;
          }

          objc_msgSend_hasBeforeAfterCounts(v24, v17, v18, v19, v20);
          v79 = objc_msgSend_cellRegion(v24, v75, v76, v77, v78);
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = sub_2213DC450;
          v110[3] = &unk_27845EBE8;
          v110[4] = self;
          v111 = v15;
          objc_msgSend_enumerateRowRangesUsingBlock_(v79, v80, v110, v81, v82);

          objc_msgSend_hasBeforeAfterCounts(v24, v83, v84, v85, v86);
        }

        else if (v25 == 23)
        {
          begin = self->_rowHeights.__begin_;
          end = self->_rowHeights.__end_;
          if (end != begin)
          {
            v18 = 0;
            v73 = 1;
            do
            {
              if (begin[18 * v18 + 5])
              {
                objc_msgSend_addIndex_(v15, v17, v18, v19, v20);
                begin = self->_rowHeights.__begin_;
                end = self->_rowHeights.__end_;
              }

              v18 = v73;
            }

            while (0x8E38E38E38E38E39 * ((end - begin) >> 3) > v73++);
          }
        }

        else
        {
          objc_msgSend_hasBeforeAfterCounts(v24, v17, v18, v19, v20);
          v35 = objc_msgSend_cellRegion(v24, v31, v32, v33, v34);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = sub_2213DC3E0;
          v112[3] = &unk_27845EBE8;
          v112[4] = self;
          v113 = v15;
          objc_msgSend_enumerateRowRangesInReverseUsingBlock_(v35, v36, v112, v37, v38);

          objc_msgSend_hasBeforeAfterCounts(v24, v39, v40, v41, v42);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v114, v118, 16);
    }

    while (v21);
  }

  return v15;
}

- (id)validateRowsNeedingFittingInfo:(id)info validationRegion:(id)region layoutEngine:(id)engine
{
  infoCopy = info;
  regionCopy = region;
  engineCopy = engine;
  if (!infoCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTWidthHeightCache validateRowsNeedingFittingInfo:validationRegion:layoutEngine:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1067, 0, "invalid nil value for '%{public}s'", "rowsNeedingFittingInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  if (objc_msgSend_cellCount(regionCopy, v27, v28, v29, v30))
  {
    objc_msgSend_addObject_(v26, v31, regionCopy, v33, v34);
  }

  hasMergeRanges = objc_msgSend_hasMergeRanges(engineCopy, v31, v32, v33, v34);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_2213DCB10;
  v66 = sub_2213DCB20;
  v54 = regionCopy;
  v67 = v54;
  while (objc_msgSend_count(v26, v36, v37, v38, v39))
  {
    v44 = objc_msgSend_tsu_pop(v26, v40, v41, v42, v43);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2213DCB28;
    v56[3] = &unk_2784647F0;
    v56[4] = self;
    v57 = infoCopy;
    v61 = hasMergeRanges;
    v58 = engineCopy;
    v60 = &v62;
    v59 = v26;
    objc_msgSend_enumerateCellRangesUsingBlock_(v44, v45, v56, v46, v47);
  }

  if (objc_msgSend_count(infoCopy, v40, v41, v42, v43))
  {
    pthread_rwlock_wrlock(&self->_lock);
    v50 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_2213DCC84;
    v55[3] = &unk_27845E958;
    v55[4] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(infoCopy, v51, 0, v50, 1, v55);
    pthread_rwlock_unlock(&self->_lock);
  }

  v52 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v48, infoCopy, v63[5], v49);
  _Block_object_dispose(&v62, 8);

  return v52;
}

- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_count(infoCopy, v5, v6, v7, v8))
  {
    pthread_rwlock_wrlock(&self->_lock);
    v9 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2213DCD9C;
    v11[3] = &unk_27845E958;
    v11[4] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(infoCopy, v10, 0, v9, 1, v11);
    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)willModifyIfNeeded:(id)needed
{
  neededCopy = needed;
  v8 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v4, v5, v6, v7);
  v13 = objc_msgSend_supportsAutoResizedTables(v8, v9, v10, v11, v12);

  if ((v13 & 1) == 0 && !self->_needsToBeArchived && objc_msgSend_canModify(neededCopy, v14, v15, v16, v17))
  {
    self->_needsToBeArchived = 1;
    objc_msgSend_willModify(neededCopy, v18, v19, v20, v21);
  }
}

- (void)willModifyIfPossible:(id)possible
{
  possibleCopy = possible;
  v8 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v4, v5, v6, v7);
  v13 = objc_msgSend_supportsAutoResizedTables(v8, v9, v10, v11, v12);

  if ((v13 & 1) == 0)
  {
    if (objc_msgSend_canModify(possibleCopy, v14, v15, v16, v17))
    {
      self->_needsToBeArchived = 1;
      objc_msgSend_willModify(possibleCopy, v18, v19, v20, v21);
    }

    else
    {
      self->_needsToBeArchived = 0;
    }
  }
}

- (TSTWidthHeightCache)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v6 = *(archive + 8);
  v7 = *(archive + 12);
  if (*(archive + 4))
  {
    v8 = v7;
    v9 = objc_msgSend_initWithNumRows_andNumColumns_(self, a2, *(archive + 8), v7, v4);
  }

  else
  {
    v8 = 1;
    v9 = objc_msgSend_initWithNumRows_andNumColumns_(self, a2, *(archive + 8), 1, v4);
  }

  v10 = v9;
  if (v9)
  {
    if (v6)
    {
      v11 = 0;
      v12 = *(archive + 5) + 8;
      v13 = 20;
      do
      {
        v14 = *(v12 + 8 * v11);
        if ((~*(v14 + 16) & 3) == 0)
        {
          v15 = *(v14 + 24);
          if (v15 < v8)
          {
            v16 = *(v14 + 28);
            v17 = *(v9 + 208);
            *(v17 + 72 * v11) = 0;
            v18 = v16;
            v19 = 2 * (v15 == 0x7FFFFFFF);
            v20 = (v17 + v13);
            v21 = 4;
            do
            {
              *(v20 - 3) = v18;
              *(v20 - 1) = v15;
              *v20 = v19;
              v20 += 4;
              v15 = 0x7FFFFFFF;
              v18 = 0.0;
              v19 = 2;
              --v21;
            }

            while (v21);
          }
        }

        ++v11;
        v13 += 72;
      }

      while (v11 != v6);
    }

    v23 = 0;
    sub_2213A1E8C((v9 + 232), v8, &v23);
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  begin = self->_rowHeights.__begin_;
  if (self->_rowHeights.__end_ != begin)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(archive + 5);
      if (!v9)
      {
        goto LABEL_8;
      }

      v10 = *(archive + 8);
      v11 = *v9;
      if (v10 >= *v9)
      {
        break;
      }

      *(archive + 8) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
LABEL_10:
      v15 = &begin[v7];
      if (!*&begin[v7 + 20])
      {
        v16 = *(v12 + 16);
        *(v12 + 24) = *(v15 + 4);
        v17 = *(v15 + 1);
        *(v12 + 16) = v16 | 3;
        *(v12 + 28) = v17;
      }

      ++v8;
      begin = self->_rowHeights.__begin_;
      v7 += 72;
      if (v8 >= 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3))
      {
        goto LABEL_13;
      }
    }

    if (v11 == *(archive + 9))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v9 = *(archive + 5);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCacheFittingEntry>(*(archive + 3));
    v13 = *(archive + 8);
    v14 = *(archive + 5) + 8 * v13;
    *(archive + 8) = v13 + 1;
    *(v14 + 8) = v12;
    goto LABEL_10;
  }

LABEL_13:
  v18 = (self->_columnModelWidths.__end_ - self->_columnModelWidths.__begin_) >> 3;
  *(archive + 4) |= 1u;
  *(archive + 12) = v18;
}

- (id).cxx_construct
{
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 13) = 0u;
  return self;
}

@end