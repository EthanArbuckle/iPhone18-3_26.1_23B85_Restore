@interface TSTCellUIDRegion
+ (id)cellUIDRegionFromRegion:(id)region inTable:(id)table;
+ (id)cellUIDRegionFromRegion:(id)region inTableModel:(id)model;
- (TSTCellUIDRegion)initWithCellUIDRange:(void *)range;
- (TSTCellUIDRegion)initWithCellUIDRangeVector:(const void *)vector;
- (id).cxx_construct;
- (id)cellRegionFromTable:(id)table;
- (id)initFromMessage:(const void *)message;
- (id)pruneAgainstTable:(id)table;
- (unint64_t)cellCount;
- (vector<TSKUIDStructTract,)rowBasedSubRangesOfCellCount:(TSTCellUIDRegion *)self;
- (void)enumerateCellUIDRangesUsingBlock:(id)block;
- (void)enumerateCellUIDUsingBlock:(id)block;
- (void)enumerateColumnUIDUsingBlock:(id)block;
- (void)enumerateRowUIDUsingBlock:(id)block;
- (void)saveToMessage:(void *)message;
@end

@implementation TSTCellUIDRegion

+ (id)cellUIDRegionFromRegion:(id)region inTable:(id)table
{
  regionCopy = region;
  tableCopy = table;
  v8 = objc_alloc_init(self);
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2212D6AB8;
    v13[3] = &unk_278462B70;
    v14 = tableCopy;
    v15 = v8;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v9, v13, v10, v11);
  }

  return v8;
}

+ (id)cellUIDRegionFromRegion:(id)region inTableModel:(id)model
{
  regionCopy = region;
  modelCopy = model;
  v8 = objc_alloc_init(self);
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2212D6CA8;
    v13[3] = &unk_278462B70;
    v14 = modelCopy;
    v15 = v8;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v9, v13, v10, v11);
  }

  return v8;
}

- (TSTCellUIDRegion)initWithCellUIDRange:(void *)range
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_221086EBC(&v11, *range, *(range + 1), (*(range + 1) - *range) >> 4);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_221086EBC(&__p, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
  memset(v10, 0, sizeof(v10));
  sub_2212D8368(v10, &v11, &v17, 1uLL);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v8 = objc_msgSend_initWithCellUIDRangeVector_(self, v5, v10, v6, v7);
  v11 = v10;
  sub_2210BC30C(&v11);
  return v8;
}

- (TSTCellUIDRegion)initWithCellUIDRangeVector:(const void *)vector
{
  v15.receiver = self;
  v15.super_class = TSTCellUIDRegion;
  v4 = [(TSTCellUIDRegion *)&v15 init];
  if (v4)
  {
    v6 = *vector;
    for (i = *(vector + 1); v6 != i; v6 += 6)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      sub_221086EBC(&v9, *v6, v6[1], (v6[1] - *v6) >> 4);
      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_221086EBC(&__p, v6[3], v6[4], (v6[4] - v6[3]) >> 4);
      v7 = __p;
      if (((v13 - __p) >> 4) * ((v10 - v9) >> 4) && (v9 != v10 || __p != v13))
      {
        sub_2210BAF64(v4 + 1, &v9);
        v7 = __p;
      }

      if (v7)
      {
        v13 = v7;
        operator delete(v7);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }
    }
  }

  return v4;
}

- (id)cellRegionFromTable:(id)table
{
  tableCopy = table;
  v8 = &v27;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4812000000;
  v30 = sub_2212D728C;
  v31 = sub_2212D72B0;
  v32 = &unk_22188E88F;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  begin = self->_cellUIDRangeList.__begin_;
  end = self->_cellUIDRangeList.__end_;
  if (begin != end)
  {
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_221086EBC(&v21, *begin, begin[1], (begin[1] - *begin) >> 4);
      __p = 0;
      v25 = 0;
      v26 = 0;
      sub_221086EBC(&__p, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
      v14 = objc_msgSend_cellRegionForUIDRange_(tableCopy, v11, &v21, v12, v13);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2212D72C8;
      v20[3] = &unk_27845DB00;
      v20[4] = &v27;
      objc_msgSend_enumerateCellRangesUsingBlock_(v14, v15, v20, v16, v17);

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      begin += 6;
    }

    while (begin != end);
    v8 = v28;
  }

  v18 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v4, (v8 + 6), v5, v6);
  _Block_object_dispose(&v27, 8);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  return v18;
}

- (id)pruneAgainstTable:(id)table
{
  tableCopy = table;
  memset(v37, 0, sizeof(v37));
  p_cellUIDRangeList = &self->_cellUIDRangeList;
  begin = self->_cellUIDRangeList.__begin_;
  for (i = p_cellUIDRangeList->__end_; begin != i; begin += 6)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    sub_221086EBC(&v31, *begin, begin[1], (begin[1] - *begin) >> 4);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_221086EBC(&v34, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
    if (tableCopy)
    {
      objc_msgSend_prunedColumnUIDsFromColumnUIDs_(tableCopy, v8, &v31, v9, v10);
      objc_msgSend_prunedRowUIDsFromRowUIDs_(tableCopy, v11, &v34, v12, v13);
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }

    sub_2210BBBE8(&v21, &v28, &v25);
    v14 = __p;
    if (((v24 - __p) >> 4) * ((v22 - v21) >> 4))
    {
      sub_2210BAF64(v37, &v21);
      v14 = __p;
    }

    if (v14)
    {
      v24 = v14;
      operator delete(v14);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  v15 = [TSTCellUIDRegion alloc];
  v19 = objc_msgSend_initWithCellUIDRangeVector_(v15, v16, v37, v17, v18);
  v31 = v37;
  sub_2210BC30C(&v31);

  return v19;
}

- (unint64_t)cellCount
{
  begin = self->_cellUIDRangeList.__begin_;
  end = self->_cellUIDRangeList.__end_;
  if (begin != end)
  {
    v4 = 0;
    while (1)
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_221086EBC(&__p, *begin, begin[1], (begin[1] - *begin) >> 4);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      sub_221086EBC(&v14, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
      v6 = __p;
      v5 = v12;
      v7 = v14;
      v8 = v15;
      if (!v14)
      {
        break;
      }

      v15 = v14;
      operator delete(v14);
      v9 = __p;
      if (__p)
      {
        goto LABEL_5;
      }

LABEL_6:
      v4 += ((v8 - v7) >> 4) * ((v5 - v6) >> 4);
      begin += 6;
      if (begin == end)
      {
        return v4;
      }
    }

    v9 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

LABEL_5:
    v12 = v9;
    operator delete(v9);
    goto LABEL_6;
  }

  return 0;
}

- (void)enumerateCellUIDRangesUsingBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  p_cellUIDRangeList = &self->_cellUIDRangeList;
  begin = self->_cellUIDRangeList.__begin_;
  for (i = p_cellUIDRangeList->__end_; begin != i; begin += 6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_221086EBC(&v9, *begin, begin[1], (begin[1] - *begin) >> 4);
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_221086EBC(&__p, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
    blockCopy[2](blockCopy, &v9, &v15);
    v8 = v15;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    if (v8)
    {
      break;
    }
  }
}

- (void)enumerateCellUIDUsingBlock:(id)block
{
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  p_cellUIDRangeList = &self->_cellUIDRangeList;
  begin = self->_cellUIDRangeList.__begin_;
  for (i = p_cellUIDRangeList->__end_; begin != i; begin += 6)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_221086EBC(&v18, *begin, begin[1], (begin[1] - *begin) >> 4);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_221086EBC(&v21, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_221086EBC(&v12, v18, v19, (v19 - v18) >> 4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_221086EBC(&__p, v21, v22, (v22 - v21) >> 4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2212D7A68;
    v9[3] = &unk_278462B98;
    v10 = blockCopy;
    v11 = &v24;
    sub_2211A91F0(&v12, v9);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    v8 = *(v25 + 24);

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v8)
    {
      break;
    }
  }

  _Block_object_dispose(&v24, 8);
}

- (void)enumerateRowUIDUsingBlock:(id)block
{
  blockCopy = block;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  begin = self->_cellUIDRangeList.__begin_;
  end = self->_cellUIDRangeList.__end_;
  if (begin != end)
  {
    while (1)
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_221086EBC(&__p, *begin, begin[1], (begin[1] - *begin) >> 4);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      sub_221086EBC(&v14, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
      v7 = v14;
      v8 = v15;
      if (v14 != v15)
      {
        break;
      }

LABEL_7:
      if (v7)
      {
        v15 = v7;
        operator delete(v7);
      }

      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      begin += 6;
      if (begin == end)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v10 = *v7;
      sub_2210C2B00(v17, &v10);
      if (v9)
      {
        blockCopy[2](blockCopy, &v10, &v19);
        if (v19)
        {
          break;
        }
      }

      if (++v7 == v8)
      {
        v7 = v14;
        goto LABEL_7;
      }
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

LABEL_17:
  sub_2210BDEC0(v17);
}

- (void)enumerateColumnUIDUsingBlock:(id)block
{
  blockCopy = block;
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  p_cellUIDRangeList = &self->_cellUIDRangeList;
  begin = self->_cellUIDRangeList.__begin_;
  for (i = p_cellUIDRangeList->__end_; begin != i; begin += 6)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_221086EBC(&v12, *begin, begin[1], (begin[1] - *begin) >> 4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_221086EBC(&__p, begin[3], begin[4], (begin[4] - begin[3]) >> 4);
    v8 = v12;
    v9 = v13;
    while (v8 != v9)
    {
      v11 = *v8;
      sub_2210C2B00(v18, &v11);
      if (v10)
      {
        blockCopy[2](blockCopy, &v11, &v20);
        if (v20)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          if (v12)
          {
            v13 = v12;
            operator delete(v12);
          }

          goto LABEL_17;
        }
      }

      ++v8;
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }

LABEL_17:
  sub_2210BDEC0(v18);
}

- (vector<TSKUIDStructTract,)rowBasedSubRangesOfCellCount:(TSTCellUIDRegion *)self
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_2210BC83C(&v28, self->_cellUIDRangeList.__begin_, self->_cellUIDRangeList.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_cellUIDRangeList.__end_ - self->_cellUIDRangeList.__begin_) >> 4));
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = v28;
  for (i = v29; v6 != i; v6 += 6)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_221086EBC(&v22, *v6, v6[1], (v6[1] - *v6) >> 4);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_221086EBC(&v25, v6[3], v6[4], (v6[4] - v6[3]) >> 4);
    v8 = v25;
    if (v26 - v25 == 16 || (v9 = (v23 - v22) >> 4, v10 = (v26 - v25) >> 4, v10 * v9 <= a4))
    {
      sub_2210BAF64(retstr, &v22);
      v8 = v25;
    }

    else
    {
      v11 = a4 / v9;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      if (v26 != v25)
      {
        v13 = 0;
        do
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          if (v10 >= v13 + v12)
          {
            v14 = v13 + v12;
          }

          else
          {
            v14 = v10;
          }

          sub_2212D849C(&v19, &v8[16 * v13], &v8[16 * v14], (16 * v14 - 16 * v13) >> 4);
          sub_2210BBBE8(v16, &v22, &v19);
          sub_2210BAF64(retstr, v16);
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }

          if (v16[0])
          {
            v16[1] = v16[0];
            operator delete(v16[0]);
          }

          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }

          v8 = v25;
          v10 = (v26 - v25) >> 4;
          v13 = v14;
        }

        while (v14 < v10);
      }
    }

    if (v8)
    {
      v26 = v8;
      operator delete(v8);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  v22 = &v28;
  sub_2210BC30C(&v22);
  return result;
}

- (id)initFromMessage:(const void *)message
{
  v18.receiver = self;
  v18.super_class = TSTCellUIDRegion;
  v4 = [(TSTCellUIDRegion *)&v18 init];
  if (v4)
  {
    v5 = *(message + 4);
    v6 = v5 ? (v5 + 8) : 0;
    v7 = *(message + 6);
    if (v7)
    {
      v8 = 8 * v7;
      do
      {
        MEMORY[0x223D9FC60](v17, *v6);
        MEMORY[0x223D9F8B0](v13, v17);
        v9 = *(v4 + 2);
        if (v9 >= *(v4 + 3))
        {
          v10 = sub_22116C87C(v4 + 1, v13);
          v11 = __p[0];
          *(v4 + 2) = v10;
          if (v11)
          {
            __p[1] = v11;
            operator delete(v11);
          }
        }

        else
        {
          v9[2] = 0;
          v9[3] = 0;
          *v9 = 0;
          v9[1] = 0;
          *v9 = *v13;
          v9[2] = v14;
          v13[0] = 0;
          v13[1] = 0;
          v14 = 0;
          v9[4] = 0;
          v9[5] = 0;
          *(v9 + 3) = *__p;
          v9[5] = v16;
          __p[0] = 0;
          __p[1] = 0;
          v16 = 0;
          *(v4 + 2) = v9 + 6;
        }

        if (v13[0])
        {
          v13[1] = v13[0];
          operator delete(v13[0]);
        }

        MEMORY[0x223D9FC70](v17);
        ++v6;
        v8 -= 8;
      }

      while (v8);
    }
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  begin = self->_cellUIDRangeList.__begin_;
  end = self->_cellUIDRangeList.__end_;
  if (begin != end)
  {
    while (1)
    {
      v6 = *(message + 4);
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = *(message + 6);
      v8 = *v6;
      if (v7 >= *v6)
      {
        break;
      }

      *(message + 6) = v7 + 1;
      v9 = *&v6[2 * v7 + 2];
LABEL_9:
      TSKUIDStructTract::saveToMessage(begin++, v9);
      if (begin == end)
      {
        return;
      }
    }

    if (v8 == *(message + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
      v6 = *(message + 4);
      v8 = *v6;
    }

    *v6 = v8 + 1;
    v9 = MEMORY[0x223DA0320](*(message + 2));
    v10 = *(message + 6);
    v11 = *(message + 4) + 8 * v10;
    *(message + 6) = v10 + 1;
    *(v11 + 8) = v9;
    goto LABEL_9;
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end