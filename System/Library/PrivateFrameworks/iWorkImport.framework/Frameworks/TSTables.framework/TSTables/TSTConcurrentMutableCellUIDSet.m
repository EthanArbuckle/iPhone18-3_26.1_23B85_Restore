@interface TSTConcurrentMutableCellUIDSet
- (TSTConcurrentMutableCellUIDSet)init;
- (id).cxx_construct;
- (id)reapAccumulatedCellRegionWithTable:(id)a3;
- (void)addCellUID:(const TSKUIDStructCoord *)a3;
- (void)addCellUIDRange:(const void *)a3;
- (void)p_addCellUID:(const TSKUIDStructCoord *)a3;
@end

@implementation TSTConcurrentMutableCellUIDSet

- (TSTConcurrentMutableCellUIDSet)init
{
  v3.receiver = self;
  v3.super_class = TSTConcurrentMutableCellUIDSet;
  result = [(TSTConcurrentMutableCellUIDSet *)&v3 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)p_addCellUID:(const TSKUIDStructCoord *)a3
{
  p_row = &a3->_row;
  v6 = sub_2210875C4(&self->_rowUIDToColumnUIDSetMap.__table_.__bucket_list_.__ptr_, &a3->_row._lower);
  if (v6)
  {
    v9 = v6[4];
    lower = a3->_column._lower;
    upper = a3->_column._upper;

    objc_msgSend_addUUID_(v9, v7, lower, upper, v8);
  }

  else
  {
    v12 = [TSCEMutableUIDSet alloc];
    v15 = objc_msgSend_initWithUUID_(v12, v13, a3->_column._lower, a3->_column._upper, v14);
    v16 = sub_2213EDAC0(&self->_rowUIDToColumnUIDSetMap.__table_.__bucket_list_.__ptr_, p_row);
    v17 = v16[4];
    v16[4] = v15;
  }
}

- (void)addCellUID:(const TSKUIDStructCoord *)a3
{
  os_unfair_lock_lock(&self->_unfairLock);
  objc_msgSend_p_addCellUID_(self, v5, a3, v6, v7);

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)addCellUIDRange:(const void *)a3
{
  os_unfair_lock_lock(&self->_unfairLock);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_221086EBC(&v6, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_221086EBC(&__p, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 4);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213ED35C;
  v5[3] = &unk_278464930;
  v5[4] = self;
  sub_2211A91F0(&v6, v5);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)reapAccumulatedCellRegionWithTable:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  next = self->_rowUIDToColumnUIDSetMap.__table_.__first_node_.__next_;
  if (next)
  {
    v9 = 0;
    do
    {
      if (v9 >= v39)
      {
        v10 = (v9 - v37) >> 4;
        if ((v10 + 1) >> 60)
        {
          sub_22107C148();
        }

        v11 = (v39 - v37) >> 3;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v39 - v37 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_221086F74(&v37, v12);
        }

        *(16 * v10) = next[1];
        v9 = (16 * v10 + 16);
        memcpy((16 * v10 - (v38 - v37)), v37, v38 - v37);
        v13 = v37;
        v37 = (16 * v10 - (v38 - v37));
        v38 = v9;
        v39 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v9 = next[1];
        v9 += 16;
      }

      v38 = v9;
      next = *next;
    }

    while (next);
  }

  v14 = objc_msgSend_rowIndexesForUIDs_(v4, v5, &v37, v6, v7);
  v28 = 0;
  v29 = &v28;
  v30 = 0x4812000000;
  v31 = sub_2213ED618;
  v32 = sub_2213ED63C;
  v33 = &unk_22188E88F;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2213ED654;
  v24[3] = &unk_278463BE0;
  v15 = v4;
  v25 = v15;
  v26 = self;
  v27 = &v28;
  objc_msgSend_enumerateIndexesUsingBlock_(v14, v16, v24, v17, v18);
  v22 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v19, (v29 + 6), v20, v21);
  sub_221087B24(&self->_rowUIDToColumnUIDSetMap);

  _Block_object_dispose(&v28, 8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  os_unfair_lock_unlock(&self->_unfairLock);

  return v22;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end