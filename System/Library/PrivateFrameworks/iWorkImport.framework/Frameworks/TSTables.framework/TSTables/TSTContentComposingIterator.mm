@interface TSTContentComposingIterator
- (TSTContentComposingIterator)init;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
- (id).cxx_construct;
- (vector<TSUCellCoord,)cursorCellIDs;
- (void)addIterator:(id)a3;
- (void)setCursorCellIDs:()vector<TSUCellCoord;
- (void)terminate;
- (void)updateCellData:(id)a3;
- (void)updateFormulaForCellData:(id)a3;
@end

@implementation TSTContentComposingIterator

- (TSTContentComposingIterator)init
{
  v7.receiver = self;
  v7.super_class = TSTContentComposingIterator;
  v2 = [(TSTContentComposingIterator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_minCursorCellID = 0x7FFF7FFFFFFFLL;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    iterators = v3->_iterators;
    v3->_iterators = v4;
  }

  return v3;
}

- (void)addIterator:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_msgSend_addObject_(self->_iterators, v4, v7, v5, v6);
  }
}

- (void)updateCellData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_iterators;
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

        objc_msgSend_updateCellData_(*(*(&v13 + 1) + 8 * v12++), v7, v4, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)updateFormulaForCellData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_iterators;
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

        objc_msgSend_updateFormulaForCellData_(*(*(&v13 + 1) + 8 * v12++), v7, v4, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (TSUCellCoord)getNext
{
  v55 = *MEMORY[0x277D85DE8];
  p_cursorCellIDs = &self->_cursorCellIDs;
  if (self->_cursorCellIDs.__end_ == self->_cursorCellIDs.__begin_)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v25 = self->_iterators;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v50, v54, 16);
    if (v31)
    {
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v25);
          }

          Next = objc_msgSend_getNext(*(*(&v50 + 1) + 8 * i), v27, v28, v29, v30, v50);
          v35 = Next;
          end = self->_cursorCellIDs.__end_;
          cap = self->_cursorCellIDs.__cap_;
          if (end >= cap)
          {
            v39 = end - p_cursorCellIDs->__begin_;
            if ((v39 + 1) >> 61)
            {
              sub_22107C148();
            }

            v40 = cap - p_cursorCellIDs->__begin_;
            v41 = v40 >> 2;
            if (v40 >> 2 <= (v39 + 1))
            {
              v41 = v39 + 1;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v41;
            }

            if (v42)
            {
              sub_2210874C4(p_cursorCellIDs, v42);
            }

            *(8 * v39) = Next;
            v38 = (8 * v39 + 8);
            begin = self->_cursorCellIDs.__begin_;
            v44 = (self->_cursorCellIDs.__end_ - begin);
            v45 = (8 * v39 - v44);
            memcpy(v45, begin, v44);
            v46 = self->_cursorCellIDs.__begin_;
            self->_cursorCellIDs.__begin_ = v45;
            self->_cursorCellIDs.__end_ = v38;
            self->_cursorCellIDs.__cap_ = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *end = Next;
            v38 = end + 1;
          }

          self->_cursorCellIDs.__end_ = v38;
          minCursorCellID = self->_minCursorCellID;
          if (minCursorCellID.row >= v35 && (minCursorCellID.column >= WORD2(v35) || minCursorCellID.row != v35))
          {
            minCursorCellID = v35;
          }

          self->_minCursorCellID = minCursorCellID;
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v50, v54, 16);
      }

      while (v31);
    }

    return self->_minCursorCellID;
  }

  else
  {
    v7 = 0x7FFF7FFFFFFFLL;
    if (objc_msgSend_count(self->_iterators, a2, v2, v3, v4))
    {
      v12 = 0;
      do
      {
        v13 = &self->_cursorCellIDs.__begin_[v12];
        row = self->_minCursorCellID.row;
        if (v13->row < row || v13->row == row && v13->column < self->_minCursorCellID.column || ((v20 = *v13, v21 = self->_minCursorCellID, v23 = v20.row == v21.row, v22 = (*&v21 ^ *&v20) & 0x101FFFF00000000, v23) ? (v23 = v22 == 0) : (v23 = 0), v23))
        {
          v15 = objc_msgSend_objectAtIndexedSubscript_(self->_iterators, v8, v12, v10, v11);
          p_cursorCellIDs->__begin_[v12] = objc_msgSend_getNext(v15, v16, v17, v18, v19);

          v20 = p_cursorCellIDs->__begin_[v12];
        }

        if (v20.row <= v7.row && (v7.column >= v20.column || v20.row != v7.row))
        {
          v7 = v20;
        }

        ++v12;
      }

      while (v12 < objc_msgSend_count(self->_iterators, v8, v9, v10, v11));
    }

    self->_minCursorCellID = v7;
  }

  return v7;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3
{
  v7 = 0x7FFF7FFFFFFFLL;
  if (objc_msgSend_count(self->_iterators, a2, *&a3, v3, v4))
  {
    v12 = 0;
    do
    {
      begin = self->_cursorCellIDs.__begin_;
      v14 = &begin[v12];
      if (v14->row < a3.row || v14->row == a3.row && v14->column < a3.column)
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(self->_iterators, v8, v12, v10, v11);
        objc_msgSend_advanceToCellID_(v15, v16, *&a3, v17, v18);
        self->_cursorCellIDs.__begin_[v12] = objc_msgSend_getNext(v15, v19, v20, v21, v22);

        begin = self->_cursorCellIDs.__begin_;
      }

      v23 = begin[v12];
      if (v7.column < v23.column && v7.row == v23.row)
      {
        v25 = v7;
      }

      else
      {
        v25 = v23;
      }

      if (v7.row >= v23.row)
      {
        v7 = v25;
      }

      ++v12;
    }

    while (v12 < objc_msgSend_count(self->_iterators, v8, v9, v10, v11));
  }

  self->_minCursorCellID = v7;
  return v7;
}

- (void)terminate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_iterators;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_terminate(*(*(&v11 + 1) + 8 * v10++), v4, v5, v6, v7, v11);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
    }

    while (v8);
  }
}

- (vector<TSUCellCoord,)cursorCellIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_2211230D4(retstr, self->_cursorCellIDs.__begin_, self->_cursorCellIDs.__end_, self->_cursorCellIDs.__end_ - self->_cursorCellIDs.__begin_);
}

- (void)setCursorCellIDs:()vector<TSUCellCoord
{
  p_cursorCellIDs = &self->_cursorCellIDs;
  if (p_cursorCellIDs != a3)
  {
    sub_22128026C(p_cursorCellIDs, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end