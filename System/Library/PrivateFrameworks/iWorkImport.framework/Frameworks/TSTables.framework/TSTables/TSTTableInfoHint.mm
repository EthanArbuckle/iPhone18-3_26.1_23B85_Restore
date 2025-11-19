@interface TSTTableInfoHint
- (BOOL)containsStyleNetworkIndex:(unint64_t)a3;
- (BOOL)hasStylesInCells;
- (BOOL)hasTableStyles;
- (CGSize)maximumSize;
- (TSTTableInfoHint)init;
- (id).cxx_construct;
- (vector<unsigned)cellFlags;
- (void)addCellUID:(const TSKUIDStructCoord *)a3 flags:(unint64_t)a4 addingMaximumSize:(CGSize)a5;
- (void)addTableStyleIndex:(unint64_t)a3;
- (void)enumerateCellUIDsUsingBlock:(id)a3;
- (void)enumerateTableStylesUsingBlock:(id)a3;
@end

@implementation TSTTableInfoHint

- (TSTTableInfoHint)init
{
  v3.receiver = self;
  v3.super_class = TSTTableInfoHint;
  result = [(TSTTableInfoHint *)&v3 init];
  if (result)
  {
    result->_maximumSize = *MEMORY[0x277CBF3A8];
  }

  return result;
}

- (void)addTableStyleIndex:(unint64_t)a3
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (!tableStyleIndexes)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v9 = self->_tableStyleIndexes;
    self->_tableStyleIndexes = v8;

    tableStyleIndexes = self->_tableStyleIndexes;
  }

  objc_msgSend_addIndex_(tableStyleIndexes, a2, a3, v3, v4);
  TSUSizeMax();
  self->_maximumSize.width = v10;
  self->_maximumSize.height = v11;
}

- (BOOL)hasTableStyles
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (tableStyleIndexes)
  {
    LOBYTE(tableStyleIndexes) = objc_msgSend_count(tableStyleIndexes, a2, v2, v3, v4) != 0;
  }

  return tableStyleIndexes;
}

- (BOOL)containsStyleNetworkIndex:(unint64_t)a3
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (tableStyleIndexes)
  {
    LOBYTE(tableStyleIndexes) = objc_msgSend_containsIndex_(tableStyleIndexes, a2, a3, v3, v4);
  }

  return tableStyleIndexes;
}

- (void)enumerateTableStylesUsingBlock:(id)a3
{
  v4 = a3;
  tableStyleIndexes = self->_tableStyleIndexes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211E5CF4;
  v10[3] = &unk_278461298;
  v11 = v4;
  v6 = v4;
  objc_msgSend_enumerateIndexesUsingBlock_(tableStyleIndexes, v7, v10, v8, v9);
}

- (void)addCellUID:(const TSKUIDStructCoord *)a3 flags:(unint64_t)a4 addingMaximumSize:(CGSize)a5
{
  if (a4)
  {
    cellUIDs = self->_cellUIDs;
    if (!cellUIDs)
    {
      v10 = objc_alloc_init(TSTCellUIDList);
      v11 = self->_cellUIDs;
      self->_cellUIDs = v10;

      cellUIDs = self->_cellUIDs;
    }

    objc_msgSend_addCellUID_(cellUIDs, a2, a3, a4, v5, a5.width, a5.height);
    end = self->_cellFlags.__end_;
    cap = self->_cellFlags.__cap_;
    if (end >= cap)
    {
      begin = self->_cellFlags.__begin_;
      v16 = end - begin;
      v17 = end - begin;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_22107C148();
      }

      v19 = cap - begin;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
      v21 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        sub_2210874C4(&self->_cellFlags, v21);
      }

      v22 = end - begin;
      v23 = (8 * v17);
      v24 = (8 * v17 - 8 * v22);
      *v23 = a4;
      v14 = v23 + 1;
      memcpy(v24, begin, v16);
      v25 = self->_cellFlags.__begin_;
      self->_cellFlags.__begin_ = v24;
      self->_cellFlags.__end_ = v14;
      self->_cellFlags.__cap_ = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *end = a4;
      v14 = end + 1;
    }

    self->_cellFlags.__end_ = v14;
    TSUSizeMax();
    self->_maximumSize.width = v26;
    self->_maximumSize.height = v27;
  }
}

- (BOOL)hasStylesInCells
{
  cellUIDs = self->_cellUIDs;
  if (cellUIDs)
  {
    LOBYTE(cellUIDs) = objc_msgSend_count(cellUIDs, a2, v2, v3, v4) != 0;
  }

  return cellUIDs;
}

- (void)enumerateCellUIDsUsingBlock:(id)a3
{
  v4 = a3;
  cellUIDs = self->_cellUIDs;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211E5F18;
  v10[3] = &unk_2784612C0;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDs, v7, v10, v8, v9);
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (vector<unsigned)cellFlags
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_2211E62A0(retstr, self->_cellFlags.__begin_, self->_cellFlags.__end_, self->_cellFlags.__end_ - self->_cellFlags.__begin_);
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end