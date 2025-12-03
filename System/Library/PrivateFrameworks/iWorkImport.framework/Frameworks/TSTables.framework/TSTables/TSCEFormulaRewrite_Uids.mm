@interface TSCEFormulaRewrite_Uids
- (BOOL)containsIndex:(unsigned int)index;
- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids;
- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids atIndexes:(const void *)indexes;
- (TSKUIDStruct)uidForIndex:(unsigned int)index;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uidsForIndexes:(SEL)indexes;
- (id).cxx_construct;
- (id)description;
- (id)indexSetBySubtractingOurIndexesFromIndexSet:(id)set;
- (id)initFromMessage:(const void *)message;
- (unsigned)columnIndexForUid:(const TSKUIDStruct *)uid;
- (unsigned)rowIndexForUid:(const TSKUIDStruct *)uid;
- (void)loadIndexesForTable:(id)table isRows:(BOOL)rows shuffleMap:(id)map;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_Uids

- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaRewrite_Uids;
  v4 = [(TSCEFormulaRewrite_Uids *)&v8 init];
  p_uids = &v4->_uids;
  if (v4)
  {
    v6 = p_uids == uids;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_2210BD068(p_uids, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
  }

  return v4;
}

- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids atIndexes:(const void *)indexes
{
  v34.receiver = self;
  v34.super_class = TSCEFormulaRewrite_Uids;
  v6 = [(TSCEFormulaRewrite_Uids *)&v34 init];
  v10 = v6;
  if (v6)
  {
    p_uids = &v6->_uids;
    if (&v10->_uids != uids)
    {
      sub_2210BD068(p_uids, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
    }

    v12 = *indexes;
    if ((*(uids + 1) - *uids) >> 4 != (*(indexes + 1) - *indexes) >> 2)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaRewrite_Uids initWithUids:atIndexes:]", v8, v9);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 172, 0, "Size mismatch for our vectors");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      v12 = *indexes;
    }

    v24 = objc_opt_new();
    v25 = *uids;
    v26 = *(uids + 1);
    if (*uids != v26)
    {
      do
      {
        if (v12 == *(indexes + 1))
        {
          break;
        }

        v33 = *v12;
        v27 = v33;
        v35 = v25;
        *(sub_221287990(&v10->_indexesForUids.__table_.__bucket_list_.__ptr_, v25) + 8) = v27;
        v35 = &v33;
        *(sub_2212CBA68(&v10->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v33) + 3) = *v25;
        objc_msgSend_addIndex_(v24, v28, v33, v29, v30);
        v25 += 16;
      }

      while (v25 != v26);
    }

    indexes = v10->_indexes;
    v10->_indexes = v24;
  }

  return v10;
}

- (void)loadIndexesForTable:(id)table isRows:(BOOL)rows shuffleMap:(id)map
{
  rowsCopy = rows;
  tableCopy = table;
  mapCopy = map;
  objc_msgSend_unloadIndexes(self, v10, v11, v12, v13);
  v16 = objc_opt_new();
  begin = self->_uids.__begin_;
  for (i = self->_uids.__end_; begin != i; ++begin)
  {
    v50 = 0;
    lower = begin->_lower;
    upper = begin->_upper;
    if (rowsCopy)
    {
      v21 = objc_msgSend_rowIndexForRowUID_(tableCopy, v14, lower, upper, v15);
    }

    else
    {
      v21 = objc_msgSend_columnIndexForColumnUID_(tableCopy, v14, lower, upper, v15);
    }

    v25 = v21;
    v50 = v21;
    if (mapCopy)
    {
      v25 = objc_msgSend_mapIndex_(mapCopy, v22, v21, v23, v24);
      v50 = v25;
    }

    *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, begin) + 8) = v25;
    *&v48 = &v50;
    *(sub_2212CBA68(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v50) + 3) = *begin;
    objc_msgSend_addIndex_(v16, v26, v50, v27, v28);
  }

  objc_storeStrong(&self->_indexes, v16);
  if (tableCopy && rowsCopy)
  {
    v29 = tableCopy;
    if (objc_opt_respondsToSelector())
    {
      v34 = objc_msgSend_calcEngine(v29, v30, v31, v32, v33);
      *&v48 = objc_msgSend_resolverUID(v29, v35, v36, v37, v38);
      *(&v48 + 1) = v39;
      v42 = objc_msgSend_tableResolverForTableUID_(v34, v39, &v48, v40, v41);
      v46 = v42;
      if (v42)
      {
        objc_msgSend_viewOrderedRowUids_(v42, v43, &self->_uids, v44, v45);
        v47 = self->_viewOrderUids.__begin_;
        if (v47)
        {
          self->_viewOrderUids.__end_ = v47;
          operator delete(v47);
          self->_viewOrderUids.__begin_ = 0;
          self->_viewOrderUids.__end_ = 0;
          self->_viewOrderUids.__cap_ = 0;
        }

        *&self->_viewOrderUids.__begin_ = v48;
        self->_viewOrderUids.__cap_ = v49;
      }
    }
  }
}

- (void)unloadIndexes
{
  sub_2210BE918(&self->_indexesForUids.__table_.__bucket_list_.__ptr_);
  sub_2210BE918(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_);
  indexes = self->_indexes;
  self->_indexes = 0;
}

- (BOOL)containsIndex:(unsigned int)index
{
  indexes = self->_indexes;
  if (!indexes)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewrite_Uids containsIndex:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12, v13);
    v15 = NSStringFromSelector(a2);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v10, v14, 241, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v15, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    indexes = self->_indexes;
  }

  return objc_msgSend_containsIndex_(indexes, a2, index, v3, v4);
}

- (TSKUIDStruct)uidForIndex:(unsigned int)index
{
  LODWORD(v9[0]) = index;
  if (objc_msgSend_containsIndex_(self, a2, *&index, v3, v4, v9[0]))
  {
    v9[1] = v9;
    v6 = sub_2212CBA68(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_, v9);
    v7 = v6[3];
    v8 = v6[4];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result._upper = v8;
  result._lower = v7;
  return result;
}

- (unsigned)rowIndexForUid:(const TSKUIDStruct *)uid
{
  if (sub_2210875C4(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid))
  {
    return *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid) + 8);
  }

  if (*uid != 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewrite_Uids rowIndexForUid:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13, v14);
    v16 = NSStringFromSelector(a2);
    v17 = TSKUIDStruct::description(uid);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v15, 261, 0, "Warning, %{public}@ did not find the uuid: %@", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  return 0x7FFFFFFF;
}

- (unsigned)columnIndexForUid:(const TSKUIDStruct *)uid
{
  if (sub_2210875C4(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid))
  {
    return *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid) + 8);
  }

  else
  {
    if (*uid != 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewrite_Uids columnIndexForUid:]", v7, v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13, v14);
      v16 = NSStringFromSelector(a2);
      v17 = TSKUIDStruct::description(uid);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v15, 273, 0, "Warning, %{public}@ did not find the uuid: %@", v16, v17);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    LOWORD(v9) = 0x7FFF;
  }

  return v9;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uidsForIndexes:(SEL)indexes
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = sub_2212C7E00;
  v14 = sub_2212C7E24;
  *__p = 0u;
  v16 = 0u;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2212C7E3C;
  v9[3] = &unk_27845F0D8;
  v9[4] = self;
  v9[5] = &v10;
  objc_msgSend_enumerateIndexesUsingBlock_(a4, indexes, v9, v4, v5);
  v7 = v11;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v7[6], v7[7], (v7[7] - v7[6]) >> 4);
  _Block_object_dispose(&v10, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v16 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (id)indexSetBySubtractingOurIndexesFromIndexSet:(id)set
{
  setCopy = set;
  v9 = objc_msgSend_mutableCopy(setCopy, v5, v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    indexes = self->_indexes;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2212C7F78;
    v16[3] = &unk_27845E1D0;
    v17 = v9;
    objc_msgSend_enumerateRangesUsingBlock_(indexes, v12, v16, v13, v14);
  }

  return v10;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<TSKUIDStructVector: %p>", v2, v3, &self->_uids);
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"Uids: %@\nIndexes: %@", v8, v9, v6, self->_indexes);

  return v10;
}

- (id)initFromMessage:(const void *)message
{
  v24.receiver = self;
  v24.super_class = TSCEFormulaRewrite_Uids;
  v4 = [(TSCEFormulaRewrite_Uids *)&v24 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = *(message + 6);
    if (v6 >= 1)
    {
      v7 = 8;
      v8 = MEMORY[0x277D809E0];
      do
      {
        TSCE::IndexedUidsArchive_IndexedUid::IndexedUidsArchive_IndexedUid(v21, *(*(message + 4) + v7));
        v20 = v23;
        v19 = 0uLL;
        if (v22)
        {
          v10 = v22;
        }

        else
        {
          v10 = v8;
        }

        *&v19 = TSKUIDStruct::loadFromMessage(v10, v9);
        *(&v19 + 1) = v11;
        sub_221083454(&v4->_uids, &v19);
        objc_msgSend_addIndex_(v5, v12, v20, v13, v14);
        v15 = v20;
        v25 = &v19;
        *(sub_221287990(&v4->_indexesForUids.__table_.__bucket_list_.__ptr_, &v19) + 8) = v15;
        v25 = &v20;
        v16 = sub_2212CBA68(&v4->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v20);
        *(v16 + 3) = v19;
        TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid(v21);
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    indexes = v4->_indexes;
    v4->_indexes = v5;
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  next = self->_uidsForIndexes.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v5 = *(message + 4);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(message + 6);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(message + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      v11 = *(v8 + 16);
      *(v8 + 32) = *(next + 4);
      *(v8 + 16) = v11 | 3;
      v12 = *(v8 + 24);
      if (!v12)
      {
        v13 = *(v8 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0360](v13);
        *(v8 + 24) = v12;
      }

      TSKUIDStruct::saveToMessage((next + 24), v12);
      next = *next;
      if (!next)
      {
        return;
      }
    }

    if (v7 == *(message + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
      v5 = *(message + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive_IndexedUid>(*(message + 2));
    v9 = *(message + 6);
    v10 = *(message + 4) + 8 * v9;
    *(message + 6) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end