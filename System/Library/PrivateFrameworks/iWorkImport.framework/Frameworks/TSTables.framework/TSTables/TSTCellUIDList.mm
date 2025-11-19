@interface TSTCellUIDList
+ (id)cellUIDList;
+ (id)cellUIDListFromRange:(const void *)a3;
- (TSTCellUIDList)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4;
- (id)iterator;
- (id)pruneCellUIDListAgainstTable:(id)a3 behavior:(unint64_t)a4;
- (id)pruneCellUIDListAgainstTable:(id)a3 behavior:(unint64_t)a4 usingBlock:(id)a5;
- (unint64_t)computeValidCount;
- (void)addCellRegion:(id)a3 withColumnUIDs:(const void *)a4 rowUIDs:(const void *)a5;
- (void)addCellUID:(const TSKUIDStructCoord *)a3;
- (void)addCellUIDRanges:(const void *)a3;
- (void)addCellUIDs:(void *)a3;
- (void)compress;
- (void)compressUIDIndexListFrom:(const void *)a3 withUIDCount:(unint64_t)a4 to:(void *)a5;
- (void)enumerateCellUIDsUsingBlock:(id)a3;
- (void)p_compressUID:(const TSKUIDStruct *)a3 index:(unint64_t)a4 UIDtoIndexMap:(void *)a5 UIDs:(void *)a6 compressedIndexes:(void *)a7 lastSameUIDIndex:(void *)a8;
- (void)reserve:(unint64_t)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
- (void)setCompressedColumnIndexes:(const void *)a3;
@end

@implementation TSTCellUIDList

+ (id)cellUIDList
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)cellUIDListFromRange:(const void *)a3
{
  if (((*(a3 + 4) - *(a3 + 3)) >> 4) * ((*(a3 + 1) - *a3) >> 4))
  {
    v8 = objc_alloc_init(objc_opt_class());
    v9 = *(a3 + 3);
    v10 = *(a3 + 4);
    while (v9 != v10)
    {
      v11 = *a3;
      v12 = *(a3 + 1);
      while (v11 != v12)
      {
        v13 = v8[13];
        TSTMakeCellUID(v18);
        objc_msgSend_addCellUID_(v13, v14, v18, v15, v16);
        v11 += 16;
      }

      v9 += 16;
    }

    objc_msgSend_compress(v8, v4, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSTCellUIDList)init
{
  v8.receiver = self;
  v8.super_class = TSTCellUIDList;
  v2 = [(TSTCellUIDList *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uncompressedCellUIDs = v2->_uncompressedCellUIDs;
    v2->_uncompressedCellUIDs = v3;

    v5 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (id)initFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TSTCellUIDList;
  v7 = [(TSTCellUIDList *)&v29 init];
  if (v7)
  {
    v8 = objc_opt_new();
    uncompressedCellUIDs = v7->_uncompressedCellUIDs;
    v7->_uncompressedCellUIDs = v8;

    sub_22123EA84(&v27, a3 + 48);
    begin = v7->_columnIdList.__begin_;
    if (begin)
    {
      v7->_columnIdList.__end_ = begin;
      operator delete(begin);
      v7->_columnIdList.__begin_ = 0;
      v7->_columnIdList.__end_ = 0;
      v7->_columnIdList.__cap_ = 0;
    }

    *&v7->_columnIdList.__begin_ = v27;
    v7->_columnIdList.__cap_ = v28;
    sub_22123EA84(&v27, a3 + 24);
    v11 = v7->_rowIdList.__begin_;
    if (v11)
    {
      v7->_rowIdList.__end_ = v11;
      operator delete(v11);
      v7->_rowIdList.__begin_ = 0;
      v7->_rowIdList.__end_ = 0;
      v7->_rowIdList.__cap_ = 0;
    }

    *&v7->_rowIdList.__begin_ = v27;
    v7->_rowIdList.__cap_ = v28;
    sub_221287820(&v7->_columnUIDIndexList.__begin_, *(a3 + 12), (*(a3 + 12) + 4 * *(a3 + 22)), *(a3 + 22));
    sub_221287820(&v7->_rowUIDIndexList.__begin_, *(a3 + 10), (*(a3 + 10) + 4 * *(a3 + 18)), *(a3 + 18));
    v17 = v7->_rowIdList.__begin_;
    end = v7->_rowIdList.__end_;
    v19 = v7->_rowUIDIndexList.__begin_;
    v18 = v7->_rowUIDIndexList.__end_;
    v20 = v18 - v19;
    v7->_compressedSize = v20;
    if (v18 != v19)
    {
      v21 = -((end - v17) >> 4);
      do
      {
        if (v21 >= *v19)
        {
          v20 += v21 - *v19;
          v7->_compressedSize = v20;
        }

        ++v19;
      }

      while (v19 != v18);
    }

    if (*(a3 + 16))
    {
      v22 = objc_msgSend_UIDLookupList(v7->_uncompressedCellUIDs, v12, v13, v14, v15);
      if (*(a3 + 13))
      {
        v23 = *(a3 + 13);
      }

      else
      {
        v23 = &TST::_CellUIDLookupListArchive_default_instance_;
      }

      sub_22137B4D0(v22, v23);
    }

    v24 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    queue = v7->_queue;
    v7->_queue = v24;
  }

  return v7;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  objc_msgSend_compress(self, a2, a3, a4, v4);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2213C4808;
  v8[3] = &unk_278461DA8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_sync(queue, v8);
}

- (void)setCompressedColumnIndexes:(const void *)a3
{
  p_columnUIDIndexList = &self->_columnUIDIndexList;
  if (p_columnUIDIndexList != a3)
  {
    sub_22137BB5C(p_columnUIDIndexList, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 2);
  }
}

- (unint64_t)computeValidCount
{
  v6 = objc_msgSend_count(self->_uncompressedCellUIDs, a2, v2, v3, v4);
  v11 = v6;
  for (i = self->_rowIdList.__begin_; i != self->_rowIdList.__end_; ++i)
  {
    if (*i == 0)
    {
LABEL_9:
      v18 = objc_msgSend_iterator(self, v7, v8, v9, v10);
      if (v18)
      {
        while (1)
        {
          objc_msgSend_nextCellUID(v18, v14, v15, v16, v17);
          if (v20 == 0 || !v21 && !v22)
          {
            break;
          }

          ++v11;
        }
      }

      return v11;
    }
  }

  for (j = self->_columnIdList.__begin_; j != self->_columnIdList.__end_; ++j)
  {
    if (*j == 0)
    {
      goto LABEL_9;
    }
  }

  return self->_compressedSize + v6;
}

- (id)iterator
{
  v3 = [TSTCellUIDIterator alloc];
  v7 = objc_msgSend_initWithCellUIDList_(v3, v4, self, v5, v6);

  return v7;
}

- (void)addCellUID:(const TSKUIDStructCoord *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4B6C;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_barrier_sync(queue, v4);
}

- (void)reserve:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4BEC;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellUIDs:(void *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4C6C;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellUIDRanges:(const void *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4D58;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellRegion:(id)a3 withColumnUIDs:(const void *)a4 rowUIDs:(const void *)a5
{
  v8 = a3;
  v11 = objc_msgSend_regionByIntersectingRange_(v8, v9, 0, ((*(a5 + 1) - *a5) << 28) & 0xFFFFFFFF00000000 | ((*(a4 + 1) - *a4) >> 4), v10);

  v16 = objc_msgSend_cellCount(v11, v12, v13, v14, v15);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C4F24;
  block[3] = &unk_278464340;
  block[4] = self;
  v20 = v11;
  v21 = v16;
  v22 = a4;
  v23 = a5;
  v18 = v11;
  dispatch_barrier_sync(queue, block);
}

- (void)compress
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C5560;
  block[3] = &unk_278464368;
  block[4] = self;
  block[5] = &v65;
  block[6] = &v69;
  dispatch_sync(queue, block);
  if ((v70[3] & 1) == 0)
  {
    v63[0] = 0;
    v63[1] = 0;
    v61[1] = 0;
    v62 = v63;
    v60 = v61;
    v61[0] = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x4812000000;
    v54 = sub_2213C55B4;
    v55 = sub_2213C55D8;
    v56 = &unk_22188E88F;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x4812000000;
    v45 = sub_2213C55B4;
    v46 = sub_2213C55D8;
    v47 = &unk_22188E88F;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v4 = v66[3];
    if (v4 / 0x64 >= 0x30D40)
    {
      v5 = 200000;
    }

    else
    {
      v5 = v4 / 0x64;
    }

    if (v4 >= 0x3E8)
    {
      v6 = 1000;
    }

    else
    {
      v6 = v66[3];
    }

    sub_221083368(&v57, v5);
    sub_2211663C4(&v39, v5);
    sub_2211687C4(&v33, v5);
    sub_221083368(v43 + 6, v6);
    sub_2211663C4(&v36, v6);
    sub_2211687C4(&v30, v6);
    v11 = objc_msgSend_iterator(self, v7, v8, v9, v10);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    sub_22127D034(&v27, 0x3E8uLL);
    v14 = 0;
    while (objc_msgSend_nextCellUIDsBatch_batchSize_(v11, v12, &v27, 1000, v13))
    {
      v15 = v27;
      v16 = v28;
      while (v15 != v16)
      {
        objc_msgSend_p_compressUID_index_UIDtoIndexMap_UIDs_compressedIndexes_lastSameUIDIndex_(self, v12, (v15 + 16), v14, &v62, v52 + 6, &v39, &v33);
        objc_msgSend_p_compressUID_index_UIDtoIndexMap_UIDs_compressedIndexes_lastSameUIDIndex_(self, v17, v15, v14++, &v60, v43 + 6, &v36, &v30);
        v15 += 32;
      }
    }

    v18 = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3321888768;
    v19[2] = sub_2213C55F0;
    v19[3] = &unk_2834A7170;
    v19[4] = self;
    v19[5] = &v51;
    v19[6] = &v42;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_2212A44A0(&v20, v39, v40, (v40 - v39) >> 2);
    __p = 0;
    v24 = 0;
    v25 = 0;
    sub_2212A44A0(&__p, v36, v37, (v37 - v36) >> 2);
    v26 = v14;
    dispatch_barrier_sync(v18, v19);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    _Block_object_dispose(&v42, 8);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    _Block_object_dispose(&v51, 8);
    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    sub_2210BC9F8(&v60, v61[0]);
    sub_2210BC9F8(&v62, v63[0]);
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
}

- (void)p_compressUID:(const TSKUIDStruct *)a3 index:(unint64_t)a4 UIDtoIndexMap:(void *)a5 UIDs:(void *)a6 compressedIndexes:(void *)a7 lastSameUIDIndex:(void *)a8
{
  v14 = sub_22112C8D0(a5, &a3->_lower);
  if (a5 + 8 == v14)
  {
    v16 = *(a6 + 1) - *a6;
    v39 = a3;
    *(sub_221335730(a5, &a3->_lower) + 48) = v16 >> 4;
    v18 = *(a6 + 1);
    v17 = *(a6 + 2);
    if (v18 >= v17)
    {
      v20 = (v18 - *a6) >> 4;
      v21 = v20 + 1;
      if ((v20 + 1) >> 60)
      {
        sub_22107C148();
      }

      v22 = v17 - *a6;
      if (v22 >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        sub_221086F74(a6, v23);
      }

      v24 = (16 * v20);
      *v24 = *a3;
      v19 = 16 * v20 + 16;
      v25 = *(a6 + 1) - *a6;
      v26 = v24 - v25;
      memcpy(v24 - v25, *a6, v25);
      v27 = *a6;
      *a6 = v26;
      *(a6 + 1) = v19;
      *(a6 + 2) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v18 = *a3;
      v19 = &v18[1];
    }

    *(a6 + 1) = v19;
    LODWORD(v39) = -(v16 >> 4);
    sub_2210C47D0(a7, &v39);
    v29 = *(a8 + 1);
    v28 = *(a8 + 2);
    if (v29 >= v28)
    {
      v31 = *a8;
      v32 = v29 - *a8;
      v33 = v32 >> 3;
      v34 = (v32 >> 3) + 1;
      if (v34 >> 61)
      {
        sub_22107C148();
      }

      v35 = v28 - v31;
      if (v35 >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
      v37 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v36)
      {
        v37 = v34;
      }

      if (v37)
      {
        sub_2210874C4(a8, v37);
      }

      *(8 * v33) = a4;
      v30 = 8 * v33 + 8;
      memcpy(0, v31, v32);
      v38 = *a8;
      *a8 = 0;
      *(a8 + 1) = v30;
      *(a8 + 2) = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v29 = a4;
      v30 = (v29 + 1);
    }

    *(a8 + 1) = v30;
  }

  else
  {
    v15 = v14[6];
    if (a4 - *(*a8 + 8 * v15) > 0x3E8)
    {
      LODWORD(v39) = -v15;
    }

    else
    {
      LODWORD(v39) = a4 - *(*a8 + 8 * v15);
    }

    sub_2210C47D0(a7, &v39);
    *(*a8 + 8 * v15) = a4;
  }
}

- (void)compressUIDIndexListFrom:(const void *)a3 withUIDCount:(unint64_t)a4 to:(void *)a5
{
  v5 = *a3;
  v6 = *(a3 + 1);
  if (*a3 != v6)
  {
    v8 = -a4;
    v12 = -a4;
    do
    {
      v11 = *v5;
      if (v11 == v8)
      {
        v9 = *(a5 + 1);
        v10 = *(v9 - 4);
        if (v10 == v8)
        {
          sub_2210C47D0(a5, &v12);
        }

        else
        {
          *(v9 - 4) = v10 - 1;
        }
      }

      else
      {
        sub_2210C47D0(a5, &v11);
        v8 = v11;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

- (id)pruneCellUIDListAgainstTable:(id)a3 behavior:(unint64_t)a4
{
  v4 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(self, a2, a3, a4, 0);

  return v4;
}

- (id)pruneCellUIDListAgainstTable:(id)a3 behavior:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_cellUIDList(TSTCellUIDList, v10, v11, v12, v13);
  if ((objc_msgSend_isEmptyPivot(v8, v15, v16, v17, v18) & 1) == 0)
  {
    if (objc_msgSend_compressedSize(self, v19, v20, v21, v22))
    {
      v24 = objc_opt_new();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2213C5C8C;
      v35[3] = &unk_278464390;
      v25 = v24;
      v36 = v25;
      objc_msgSend_enumerateCellUIDsUsingBlock_(self, v26, v35, v27, v28);
      v30 = objc_msgSend_copyByPruningAgainstTable_behavior_usingBlock_(v25, v29, v8, a4, v9);
      v31 = v14[13];
      v14[13] = v30;
    }

    else
    {
      v32 = objc_msgSend_copyByPruningAgainstTable_behavior_usingBlock_(self->_uncompressedCellUIDs, v23, v8, a4, v9);
      v33 = v14[13];
      v14[13] = v32;
    }
  }

  return v14;
}

- (void)enumerateCellUIDsUsingBlock:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_iterator(self, v5, v6, v7, v8);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_22127D034(&__p, 0x3E8uLL);
  v12 = 0;
  v15 = 0;
LABEL_2:
  while (objc_msgSend_nextCellUIDsBatch_batchSize_(v9, v10, &__p, 1000, v11))
  {
    v13 = __p;
    v14 = v17;
    if (__p != v17)
    {
      while (1)
      {
        v4[2](v4, v13, v12, &v15);
        if (v15)
        {
          goto LABEL_9;
        }

        ++v12;
        v13 += 32;
        if (v13 == v14)
        {
          goto LABEL_2;
        }
      }
    }

    if (v15)
    {
      break;
    }
  }

LABEL_9:
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSTCellUIDList);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2213C5E68;
  v9[3] = &unk_27845FEF0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(queue, v9);
  v7 = v6;

  return v7;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end