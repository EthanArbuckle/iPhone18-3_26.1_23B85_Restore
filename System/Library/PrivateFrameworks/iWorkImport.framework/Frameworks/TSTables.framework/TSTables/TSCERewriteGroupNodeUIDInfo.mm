@interface TSCERewriteGroupNodeUIDInfo
- (TSCERewriteGroupNodeUIDInfo)initWithGroupByUid:(const TSKUIDStruct *)a3 groupNodeUIDMap:(const void *)a4;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)originalGroupNodeUIDs;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)a3;
- (void)saveToMessage:(void *)a3;
@end

@implementation TSCERewriteGroupNodeUIDInfo

- (TSCERewriteGroupNodeUIDInfo)initWithGroupByUid:(const TSKUIDStruct *)a3 groupNodeUIDMap:(const void *)a4
{
  v10.receiver = self;
  v10.super_class = TSCERewriteGroupNodeUIDInfo;
  v6 = [(TSCERewriteGroupNodeUIDInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_groupByUid = *a3;
    p_groupNodeUIDMap = &v6->_groupNodeUIDMap;
    if (&v7->_groupNodeUIDMap != a4)
    {
      v7->_groupNodeUIDMap.__table_.__max_load_factor_ = *(a4 + 8);
      sub_221417E5C(p_groupNodeUIDMap, *(a4 + 2), 0);
    }
  }

  return v7;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)originalGroupNodeUIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  for (i = &self[1].__cap_; ; sub_221083454(retstr, i + 1))
  {
    i = *i;
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
  v5 = TSKUIDStructMap::description(&self->_groupNodeUIDMap);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>:\n%@", v7, v8, v4, self, v5);

  return v9;
}

- (id)initFromMessage:(const void *)a3
{
  v11.receiver = self;
  v11.super_class = TSCERewriteGroupNodeUIDInfo;
  v5 = [(TSCERewriteGroupNodeUIDInfo *)&v11 init];
  if (v5)
  {
    if (*(a3 + 3))
    {
      v6 = *(a3 + 3);
    }

    else
    {
      v6 = MEMORY[0x277D809E0];
    }

    v5->_groupByUid._lower = TSKUIDStruct::loadFromMessage(v6, v4);
    v5->_groupByUid._upper = v7;
    if (*(a3 + 4))
    {
      v8 = *(a3 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80A38];
    }

    sub_2212696E0(v8, v7, v10);
    sub_22120A3D8(&v5->_groupNodeUIDMap, v10);
    sub_2210BDEC0(v10);
  }

  return v5;
}

- (void)saveToMessage:(void *)a3
{
  *(a3 + 4) |= 1u;
  v5 = *(a3 + 3);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(a3 + 3) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_groupByUid, v5);
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 4);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0310](v8);
    *(a3 + 4) = v7;
  }

  TSKUIDStructMap::saveToMessage(&self->_groupNodeUIDMap, v7);
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  return self;
}

@end