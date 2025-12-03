@interface TSCERewriteTableUIDInfo
- (TSCERewriteTableUIDInfo)initWithTableUIDMap:(const void *)map;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)originalTableUIDs;
- (id).cxx_construct;
- (id)description;
- (id)extendMappingWithTableUIDs:(const void *)ds calcEngine:(id)engine;
- (id)initFromMessage:(const void *)message;
- (void)rollbackMappings:(id)mappings;
- (void)saveToMessage:(void *)message;
- (void)tableWasAdded:(const TSKUIDStruct *)added;
@end

@implementation TSCERewriteTableUIDInfo

- (TSCERewriteTableUIDInfo)initWithTableUIDMap:(const void *)map
{
  v8.receiver = self;
  v8.super_class = TSCERewriteTableUIDInfo;
  v4 = [(TSCERewriteTableUIDInfo *)&v8 init];
  p_tableUIDMap = &v4->_tableUIDMap;
  if (v4)
  {
    v6 = p_tableUIDMap == map;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v4->_tableUIDMap.__table_.__max_load_factor_ = *(map + 8);
    sub_221417E5C(p_tableUIDMap, *(map + 2), 0);
  }

  return v4;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)originalTableUIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  for (i = self + 1; ; sub_221083454(retstr, &i->__cap_))
  {
    i = i->__begin_;
    if (!i)
    {
      break;
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = TSKUIDStructMap::description(&self->_tableUIDMap);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>:\n%@", v7, v8, v4, self, v5);

  return v9;
}

- (id)initFromMessage:(const void *)message
{
  v20.receiver = self;
  v20.super_class = TSCERewriteTableUIDInfo;
  v5 = [(TSCERewriteTableUIDInfo *)&v20 init];
  if (v5)
  {
    v6 = *(message + 6);
    if (v6 >= 1)
    {
      v7 = 8;
      v8 = MEMORY[0x277D809E0];
      do
      {
        v9 = *(*(message + 4) + v7);
        v18 = 0;
        v19 = 0;
        if (*(v9 + 24))
        {
          v10 = *(v9 + 24);
        }

        else
        {
          v10 = v8;
        }

        v18 = TSKUIDStruct::loadFromMessage(v10, v4);
        v19 = v11;
        if (*(v9 + 32))
        {
          v12 = *(v9 + 32);
        }

        else
        {
          v12 = v8;
        }

        v13 = TSKUIDStruct::loadFromMessage(v12, v11);
        v15 = v14;
        v21 = &v18;
        v16 = sub_221230440(&v5->_tableUIDMap.__table_.__bucket_list_.__ptr_, &v18);
        v16[4] = v13;
        v16[5] = v15;
        v7 += 8;
        --v6;
      }

      while (v6);
    }
  }

  return v5;
}

- (void)saveToMessage:(void *)message
{
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  next = self->_tableUIDMap.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v21._lower = (next + 2);
      *(sub_221418008(&v22, next + 2) + 48) = *(next + 2);
      next = *next;
    }

    while (next);
    v5 = v22;
    if (v22 != v23)
    {
      while (1)
      {
        v6 = *(v5 + 2);
        v20 = *(v5 + 3);
        v21 = v6;
        v7 = *(message + 4);
        if (!v7)
        {
          goto LABEL_9;
        }

        v8 = *(message + 6);
        v9 = *v7;
        if (v8 >= *v7)
        {
          break;
        }

        *(message + 6) = v8 + 1;
        v10 = *&v7[2 * v8 + 2];
LABEL_11:
        *(v10 + 16) |= 1u;
        v13 = *(v10 + 24);
        if (!v13)
        {
          v14 = *(v10 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x223DA0360](v14);
          *(v10 + 24) = v13;
        }

        TSKUIDStruct::saveToMessage(&v21, v13);
        *(v10 + 16) |= 2u;
        v15 = *(v10 + 32);
        if (!v15)
        {
          v16 = *(v10 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x223DA0360](v16);
          *(v10 + 32) = v15;
        }

        TSKUIDStruct::saveToMessage(&v20, v15);
        v17 = v5[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v5[2];
            v19 = *v18 == v5;
            v5 = v18;
          }

          while (!v19);
        }

        v5 = v18;
        if (v18 == v23)
        {
          goto LABEL_25;
        }
      }

      if (v9 == *(message + 7))
      {
LABEL_9:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
        v7 = *(message + 4);
        v9 = *v7;
      }

      *v7 = v9 + 1;
      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive>(*(message + 2));
      v11 = *(message + 6);
      v12 = *(message + 4) + 8 * v11;
      *(message + 6) = v11 + 1;
      *(v12 + 8) = v10;
      goto LABEL_11;
    }
  }

LABEL_25:
  sub_2210BC9F8(&v22, v23[0]);
}

- (id)extendMappingWithTableUIDs:(const void *)ds calcEngine:(id)engine
{
  engineCopy = engine;
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  __p = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  next = self->_tableUIDMap.__table_.__first_node_.__next_;
  if (!next)
  {
    goto LABEL_21;
  }

  do
  {
    v10 = next + 4;
    if (next[2] == next[4] && next[3] == next[5])
    {
      goto LABEL_15;
    }

    v11 = sub_221119F90(ds, next + 2);
    if (v11)
    {
      v14 = v11 + 4;
      if (v11[4] != *v10)
      {
        v15 = next[5];
LABEL_9:
        if ((objc_msgSend_ownerIsRegistered_(engineCopy, v12, *v10, v15, v13, v34) & 1) == 0)
        {
          v43 = next + 4;
          *(sub_221230440(&v34, next + 4) + 2) = *v14;
        }

        goto LABEL_11;
      }

      v15 = next[5];
      if (v11[5] != v15)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v16 = sub_221119F90(ds, next + 4);
    if (v16)
    {
      v43 = next + 2;
      *(sub_221230440(&v40, next + 2) + 2) = *v10;
      v43 = next + 2;
      *(sub_221230440(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, next + 2) + 2) = *(v16 + 2);
      if (next[2] == v16[4] && next[3] == v16[5])
      {
        sub_221083454(&__p, next + 1);
      }
    }

LABEL_15:
    next = *next;
  }

  while (next);
  for (i = v35; i; i = *i)
  {
    v18 = sub_2210875C4(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, i + 2);
    v43 = i + 2;
    if (v18)
    {
      *(sub_221230440(&v40, i + 2) + 2) = *(v18 + 2);
    }

    else
    {
      v19 = sub_221230440(&v40, i + 2);
      v19[4] = 0;
      v19[5] = 0;
    }

    v43 = i + 2;
    *(sub_221230440(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, i + 2) + 2) = *(i + 2);
  }

LABEL_21:
  v20 = __p;
  v21 = v38;
  while (v20 != v21)
  {
    v22 = sub_2210875C4(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, v20);
    sub_2210CDD3C(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, v22);
    v20 += 2;
  }

  for (j = *(ds + 2); j; j = *j)
  {
    v24 = j[2];
    v25 = j[3];
    if ((v24 != j[4] || v25 != j[5]) && (objc_msgSend_ownerIsRegistered_(engineCopy, v6, v24, v25, v7, v34) & 1) == 0)
    {
      v26 = sub_2210875C4(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, j + 2);
      v43 = j + 2;
      if (v26)
      {
        *(sub_221230440(&v40, j + 2) + 2) = *(v26 + 2);
      }

      else
      {
        v27 = sub_221230440(&v40, j + 2);
        v27[4] = 0;
        v27[5] = 0;
      }

      v43 = j + 2;
      *(sub_221230440(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, j + 2) + 2) = *(j + 2);
    }
  }

  if (*(&v41 + 1))
  {
    v28 = [TSCERewriteTableUIDInfo alloc];
    v32 = objc_msgSend_initWithTableUIDMap_(v28, v29, &v40, v30, v31);
  }

  else
  {
    v32 = 0;
  }

  sub_2210BDEC0(&v34);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  sub_2210BDEC0(&v40);

  return v32;
}

- (void)tableWasAdded:(const TSKUIDStruct *)added
{
  v4 = sub_2210875C4(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, added);
  if (v4)
  {

    sub_2210CDD3C(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, v4);
  }
}

- (void)rollbackMappings:(id)mappings
{
  mappingsCopy = mappings;
  v9 = mappingsCopy;
  if (mappingsCopy)
  {
    for (i = *(objc_msgSend_tableUIDMap(mappingsCopy, v5, v6, v7, v8) + 16); i; i = *i)
    {
      v11 = i + 2;
      if (i[4] || i[5])
      {
        *(sub_221230440(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, v11) + 2) = *(i + 2);
      }

      else
      {
        sub_2211F2EF4(&self->_tableUIDMap.__table_.__bucket_list_.__ptr_, v11);
      }
    }
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