@interface TSCEUIDSet
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isAllInvalid;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubsetOf:(id)a3;
- (BOOL)p_addUUID:(TSKUIDStruct)a3;
- (BOOL)p_removeUUID:(TSKUIDStruct)a3;
- (TSCEUIDSet)initWithTSUUUIDVector:(const void *)a3;
- (TSCEUIDSet)initWithUUID:(TSKUIDStruct)a3;
- (TSCEUIDSet)initWithUUIDSet:(id)a3;
- (TSCEUIDSet)initWithUUIDVector:(const void *)a3;
- (TSKUIDStruct)anyUuid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsAsVector;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)expandedSetWithUuid:(TSKUIDStruct)a3;
- (id)expandedSetWithUuids:(const void *)a3;
- (id)expandedSetWithUuidsFromVector:(const void *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)reducedSetMinusUuid:(TSKUIDStruct)a3;
- (id)reducedSetMinusUuids:(const void *)a3;
- (id)reducedSetMinusUuidsFromVector:(const void *)a3;
- (id)setByUnionWithSet:(id)a3;
- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsTSUVector;
- (void)foreachUuid:(id)a3;
- (void)p_addUUIDs:(const void *)a3;
- (void)p_addUUIDsFromVector:(const void *)a3;
- (void)p_removeUUIDs:(const void *)a3;
- (void)p_removeUUIDsFromVector:(const void *)a3;
@end

@implementation TSCEUIDSet

- (TSCEUIDSet)initWithUUID:(TSKUIDStruct)a3
{
  v7 = a3;
  v6.receiver = self;
  v6.super_class = TSCEUIDSet;
  v3 = [(TSCEUIDSet *)&v6 init];
  v4 = v3;
  if (v3)
  {
    sub_2210C2B00(&v3->_uuidSet.__table_.__bucket_list_.__ptr_, &v7);
  }

  return v4;
}

- (TSCEUIDSet)initWithUUIDSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSCEUIDSet;
  v5 = [(TSCEUIDSet *)&v9 init];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = v5 == v4;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v5->_uuidSet.__table_.__max_load_factor_ = v4->_uuidSet.__table_.__max_load_factor_;
      sub_2211F2900(&v5->_uuidSet.__table_.__bucket_list_.__ptr_, v4->_uuidSet.__table_.__first_node_.__next_, 0);
    }
  }

  return v6;
}

- (TSCEUIDSet)initWithUUIDVector:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = TSCEUIDSet;
  v4 = [(TSCEUIDSet *)&v13 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_p_reserve_(v4, v5, (*(a3 + 1) - *a3) >> 4, v6, v7);
    v10 = *a3;
    v9 = *(a3 + 1);
    while (v10 != v9)
    {
      v12 = *v10;
      sub_2210C2B00(&v8->_uuidSet.__table_.__bucket_list_.__ptr_, &v12);
      ++v10;
    }
  }

  return v8;
}

- (TSCEUIDSet)initWithTSUUUIDVector:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = TSCEUIDSet;
  v4 = [(TSCEUIDSet *)&v13 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_p_reserve_(v4, v5, (*(a3 + 1) - *a3) >> 4, v6, v7);
    v10 = *a3;
    v9 = *(a3 + 1);
    while (v10 != v9)
    {
      v12 = *v10;
      sub_2211D6484(&v8->_uuidSet.__table_.__bucket_list_.__ptr_, &v12);
      ++v10;
    }
  }

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsAsVector
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = sub_2211F1234;
  v19 = sub_2211F1258;
  *__p = 0u;
  v21 = 0u;
  v8 = objc_msgSend_count(self, a3, v3, v4, v5);
  sub_221083368(&__p[1], v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211F1270;
  v14[3] = &unk_2784613A8;
  v14[4] = &v15;
  objc_msgSend_foreachUuid_(self, v9, v14, v10, v11);
  v12 = v16;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v12[6], v12[7], (v12[7] - v12[6]) >> 4);
  _Block_object_dispose(&v15, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v21 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsTSUVector
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = sub_2211F14A4;
  v19 = sub_2211F14C8;
  v20 = &unk_22188E88F;
  v22 = 0;
  v23 = 0;
  __p = 0;
  v8 = objc_msgSend_count(self, a3, v3, v4, v5);
  sub_221083368(&__p, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211F14E0;
  v14[3] = &unk_2784613A8;
  v14[4] = &v15;
  objc_msgSend_foreachUuid_(self, v9, v14, v10, v11);
  v12 = v16;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211F2E78(retstr, v12[6], v12[7], (v12[7] - v12[6]) >> 4);
  _Block_object_dispose(&v15, 8);
  result = __p;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)description
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2211F16EC;
  v17 = sub_2211F16FC;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211F1704;
  v12[3] = &unk_2784613A8;
  v12[4] = &v13;
  objc_msgSend_foreachUuid_(self, a2, v12, v2, v3);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"%@<%p>: %@", v8, v9, v6, self, v14[5]);
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)intersectsSet:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    if (self->_uuidSet.__table_.__size_ >= v4[4])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_2211F18E0;
      v11[3] = &unk_2784613D0;
      v11[4] = self;
      v11[5] = &v12;
      objc_msgSend_foreachUuid_(v4, v5, v11, v6, v7);
      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v9 = objc_msgSend_intersectsSet_(v4, v5, self, v6, v7);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = v4;
  v10 = self == v4;
  if (v4 && self != v4)
  {
    v11 = objc_msgSend_count(self, v5, v6, v7, v8);
    if (v11 == objc_msgSend_count(v9, v12, v13, v14, v15))
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2211F1A54;
      v20[3] = &unk_2784613D0;
      v20[4] = self;
      v20[5] = &v21;
      objc_msgSend_foreachUuid_(v9, v16, v20, v17, v18);
      v10 = *(v22 + 24) ^ 1;
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

- (BOOL)isSubsetOf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    p_first_node = &self->_uuidSet.__table_.__first_node_;
    do
    {
      p_first_node = p_first_node->__next_;
      v6 = p_first_node == 0;
    }

    while (p_first_node && sub_221119F90(v4 + 1, &p_first_node[2].__next_));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)setByUnionWithSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mutableCopy(self, v5, v6, v7, v8);
  objc_msgSend_addUuidsFromSet_(v9, v10, v4, v11, v12);

  return v9;
}

- (TSKUIDStruct)anyUuid
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_2211F1C94;
  v13 = nullsub_28;
  v14 = &unk_22188E88F;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211F1CA4;
  v8[3] = &unk_2784613A8;
  v8[4] = &v9;
  objc_msgSend_foreachUuid_(self, a2, v8, v2, v3);
  v4 = v10[6];
  v5 = v10[7];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (BOOL)isAllInvalid
{
  if (objc_msgSend_count(self, a2, v2, v3, v4) != 1)
  {
    return 0;
  }

  v10 = objc_msgSend_anyUuid(self, v6, v7, v8, v9);
  return (v10 | v11) == 0;
}

- (id)expandedSetWithUuid:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v5 = self;
  if ((objc_msgSend_containsUuid_(v5, v6, lower, upper, v7) & 1) == 0)
  {
    v12 = objc_msgSend_copy(v5, v8, v9, v10, v11);

    v5 = v12;
    objc_msgSend_p_addUUID_(v12, v13, lower, upper, v14);
  }

  return v5;
}

- (id)reducedSetMinusUuid:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v5 = self;
  if (objc_msgSend_containsUuid_(v5, v6, lower, upper, v7))
  {
    v12 = objc_msgSend_copy(v5, v8, v9, v10, v11);

    v5 = v12;
    objc_msgSend_p_removeUUID_(v12, v13, lower, upper, v14);
  }

  return v5;
}

- (id)expandedSetWithUuids:(const void *)a3
{
  v4 = self;
  v9 = v4;
  if (*(a3 + 3))
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);

    v9 = v10;
    objc_msgSend_p_addUUIDs_(v10, v11, a3, v12, v13);
  }

  return v9;
}

- (id)reducedSetMinusUuids:(const void *)a3
{
  v4 = self;
  v9 = v4;
  if (*(a3 + 3))
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);

    v9 = v10;
    objc_msgSend_p_removeUUIDs_(v10, v11, a3, v12, v13);
  }

  return v9;
}

- (id)expandedSetWithUuidsFromVector:(const void *)a3
{
  v4 = self;
  v9 = v4;
  if (*(a3 + 1) != *a3)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);

    v9 = v10;
    objc_msgSend_p_addUUIDsFromVector_(v10, v11, a3, v12, v13);
  }

  return v9;
}

- (id)reducedSetMinusUuidsFromVector:(const void *)a3
{
  v4 = self;
  v9 = v4;
  if (*(a3 + 1) != *a3)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);

    v9 = v10;
    objc_msgSend_p_removeUUIDsFromVector_(v10, v11, a3, v12, v13);
  }

  return v9;
}

- (void)foreachUuid:(id)a3
{
  v5 = 0;
  for (i = self->_uuidSet.__table_.__first_node_.__next_; i; i = *i)
  {
    (*(a3 + 2))(a3, i[2], i[3], &v5);
    if (v5)
    {
      break;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEUIDSet alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithUUIDSet_, self, v5, v6);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSCEMutableUIDSet alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithUUIDSet_, self, v5, v6);
}

- (BOOL)p_addUUID:(TSKUIDStruct)a3
{
  v5 = a3;
  sub_2210C2B00(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &v5);
  return v3 & 1;
}

- (BOOL)p_removeUUID:(TSKUIDStruct)a3
{
  v6 = a3;
  v4 = sub_2210875C4(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &v6);
  if (v4)
  {
    sub_2211F2EF4(&self->_uuidSet.__table_.__bucket_list_.__ptr_, &v6);
  }

  return v4 != 0;
}

- (void)p_addUUIDs:(const void *)a3
{
  v7 = objc_msgSend_count(self, a2, a3, v3, v4);
  objc_msgSend_p_reserve_(self, v8, *(a3 + 3) + v7, v9, v10);
  for (i = *(a3 + 2); i; i = *i)
  {
    objc_msgSend_p_addUUID_(self, v11, i[2], i[3], v12);
  }
}

- (void)p_removeUUIDs:(const void *)a3
{
  for (i = *(a3 + 2); i; i = *i)
  {
    objc_msgSend_p_removeUUID_(self, a2, i[2], i[3], v3);
  }
}

- (void)p_addUUIDsFromVector:(const void *)a3
{
  v7 = objc_msgSend_count(self, a2, a3, v3, v4);
  objc_msgSend_p_reserve_(self, v8, v7 + ((*(a3 + 1) - *a3) >> 4), v9, v10);
  for (i = *a3; i != *(a3 + 1); i += 2)
  {
    v14 = *i;
    v15 = i[1];
    objc_msgSend_p_addUUID_(self, v11, v14, v15, v12);
  }
}

- (void)p_removeUUIDsFromVector:(const void *)a3
{
  v4 = *a3;
  v5 = *(a3 + 1);
  if (*a3 != v5)
  {
    do
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      objc_msgSend_p_removeUUID_(self, a2, v7, v8, v3);
    }

    while (v4 != v5);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end