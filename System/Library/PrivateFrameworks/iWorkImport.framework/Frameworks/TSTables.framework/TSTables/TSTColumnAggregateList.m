@interface TSTColumnAggregateList
- (BOOL)isEqual:(id)a3;
- (BOOL)isFunctionallyEquivalent:(id)a3;
- (NSArray)columnAggregateUuids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnAggregateUidList;
- (TSTColumnAggregateList)initWithArchive:(const void *)a3;
- (TSTColumnAggregateList)initWithColumnAggregates:(id)a3;
- (id)aggregateAtIndex:(unint64_t)a3;
- (id)aggregatesOnLevel:(unsigned __int8)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTColumnAggregateList

- (TSTColumnAggregateList)initWithColumnAggregates:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSTColumnAggregateList;
  v5 = [(TSTColumnAggregateList *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = objc_alloc(MEMORY[0x277CBEA60]);
      v9 = objc_msgSend_initWithArray_copyItems_(v6, v7, v4, 1, v8);
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&v5->_columnAggregates, v9);
    if (v4)
    {
    }
  }

  return v5;
}

- (id)aggregateAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_columnAggregates, a2, a3, v3, v4) <= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(self->_columnAggregates, v10, a3, v11, v12);
    }
  }

  return v6;
}

- (id)aggregatesOnLevel:(unsigned __int8)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_columnAggregates;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_level(v15, v8, v9, v10, v11, v22) == v3)
        {
          objc_msgSend_addObject_(v5, v8, v15, v10, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v22, v26, 16);
    }

    while (v12);
  }

  v16 = [TSTColumnAggregateList alloc];
  v20 = objc_msgSend_initWithColumnAggregates_(v16, v17, v5, v18, v19);

  return v20;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnAggregateUidList
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = sub_2211C92E8;
  v14 = sub_2211C930C;
  *__p = 0u;
  v16 = 0u;
  columnAggregates = self->_columnAggregates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211C9324;
  v9[3] = &unk_278460CD8;
  v9[4] = &v10;
  objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, a3, v9, v3, v4);
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

- (NSArray)columnAggregateUuids
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2211C9594;
  v26 = sub_2211C95A4;
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(self->_columnAggregates, a2, v2, v3, v4);
  v27 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  columnAggregates = self->_columnAggregates;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2211C95AC;
  v21[3] = &unk_278460CD8;
  v21[4] = &v22;
  objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v12, v21, v13, v14);
  v19 = objc_msgSend_copy(v23[5], v15, v16, v17, v18);
  _Block_object_dispose(&v22, 8);

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  columnAggregates = self->_columnAggregates;

  return objc_msgSend_initWithColumnAggregates_(v4, v5, columnAggregates, v6, v7);
}

- (TSTColumnAggregateList)initWithArchive:(const void *)a3
{
  v8 = objc_opt_new();
  v9 = *(a3 + 6);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = [TSTColumnAggregate alloc];
      v18 = objc_msgSend_initWithArchive_(v11, v12, *(*(a3 + 4) + v10), v13, v14);
      if (v18)
      {
        objc_msgSend_addObject_(v8, v15, v18, v16, v17);
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v19 = objc_msgSend_initWithColumnAggregates_(self, v5, v8, v6, v7);

  return v19;
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = *(a3 + 4);
        if (!v15)
        {
          goto LABEL_11;
        }

        v16 = *(a3 + 6);
        v17 = *v15;
        if (v16 < *v15)
        {
          *(a3 + 6) = v16 + 1;
          objc_msgSend_encodeToArchive_archiver_(v14, v9, *&v15[2 * v16 + 2], v6, v10, v23);
          goto LABEL_13;
        }

        if (v17 == *(a3 + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
          v15 = *(a3 + 4);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v18 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(a3 + 2));
        v19 = *(a3 + 6);
        v20 = *(a3 + 4) + 8 * v19;
        *(a3 + 6) = v19 + 1;
        *(v20 + 8) = v18;
        objc_msgSend_encodeToArchive_archiver_(v14, v21, v18, v6, v22, v23);
LABEL_13:
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v23, v27, 16);
    }

    while (v11);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    if (v9 && (v10 = objc_msgSend_count(self, v5, v6, v7, v8), v10 == objc_msgSend_count(v9, v11, v12, v13, v14)))
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 1;
      columnAggregates = self->_columnAggregates;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_2211C9A88;
      v21[3] = &unk_278460D00;
      v22 = v9;
      v23 = &v24;
      objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v16, v21, v17, v18);
      v19 = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v19 = 0;
    }
  }

  return v19 & 1;
}

- (BOOL)isFunctionallyEquivalent:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v18 = 1;
  }

  else
  {
    v9 = objc_msgSend_count(self, v4, v5, v6, v7);
    if (v9 == objc_msgSend_count(v8, v10, v11, v12, v13))
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      columnAggregates = self->_columnAggregates;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2211C9C74;
      v20[3] = &unk_278460D00;
      v21 = v8;
      v22 = &v23;
      objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v15, v20, v16, v17);
      v18 = *(v24 + 24);

      _Block_object_dispose(&v23, 8);
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

@end