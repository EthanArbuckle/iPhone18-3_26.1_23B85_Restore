@interface TSCECountedInternalCellRefSet
- (BOOL)isEmpty;
- (TSCEInternalCellReference)popAnyCellRef:(unint64_t *)ref;
- (id).cxx_construct;
- (unint64_t)containsCellRef:(const TSCEInternalCellReference *)ref;
- (void)addCellRef:(const TSCEInternalCellReference *)ref;
- (void)addCellRefs:(const void *)refs;
- (void)addCellRefs:(const void *)refs fromCellRef:(const TSCEInternalCellReference *)ref;
- (void)addCellRefs:(unsigned __int16)refs cellCoords:(const void *)coords;
- (void)clear;
- (void)enumerateCellRefsUsingBlock:(id)block;
@end

@implementation TSCECountedInternalCellRefSet

- (BOOL)isEmpty
{
  p_first_node = &self->_allCellRefs._coordsForOwnerId.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
  }

  while (p_first_node && TSCECellCoordSet::isEmpty(&p_first_node[3]));
  return p_first_node == 0;
}

- (void)clear
{
  sub_2212E1650(&self->_allCellRefs);

  sub_2210BE918(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_);
}

- (void)addCellRef:(const TSCEInternalCellReference *)ref
{
  if (sub_2212E0198(&self->_allCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, ref))
  {
    v5 = sub_221123474(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_, ref);
    if (v5)
    {
      v6 = v5[4] + 1;
    }

    else
    {
      v5 = sub_2212E16AC(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_, ref);
      v6 = 2;
    }

    v5[4] = v6;
  }

  else
  {
    v7 = sub_2212E13E8(&self->_allCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &ref->tableID);
    TSCECellCoordSet::addCellCoord((v7 + 3), &ref->coordinate);
  }
}

- (void)addCellRefs:(const void *)refs
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2212E0CF4;
  v3[3] = &unk_27845F540;
  v3[4] = self;
  sub_2212DFEC0(refs, v3);
}

- (void)addCellRefs:(unsigned __int16)refs cellCoords:(const void *)coords
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2212E0D78;
  v4[3] = &unk_278462C88;
  refsCopy = refs;
  v4[4] = self;
  TSCECellCoordSet::enumerateCoordsUsingBlock(coords, v4);
}

- (unint64_t)containsCellRef:(const TSCEInternalCellReference *)ref
{
  if (!sub_2212E0198(&self->_allCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, ref))
  {
    return 0;
  }

  v5 = sub_221123474(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_, ref);
  if (v5)
  {
    return v5[4];
  }

  else
  {
    return 1;
  }
}

- (void)enumerateCellRefsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2212E0EB8;
  v6[3] = &unk_278462CB0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  sub_2212DFEC0(&self->_allCellRefs, v6);
}

- (TSCEInternalCellReference)popAnyCellRef:(unint64_t *)ref
{
  v5 = sub_2212E014C(&self->_allCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_);
  v11 = v5;
  v12 = v6;
  *ref = 1;
  if (v6 != 0xFFFF && (v5 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v8 = sub_221123474(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_, &v11);
    if (v8)
    {
      *ref = v8[4];
      sub_2210CDD3C(&self->_greaterRefCounts.__table_.__bucket_list_.__ptr_, v8);
    }
  }

  v9 = v11;
  v10 = v12;
  result.coordinate = v9;
  result.tableID = v10;
  result.reserved = HIWORD(v10);
  return result;
}

- (void)addCellRefs:(const void *)refs fromCellRef:(const TSCEInternalCellReference *)ref
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2212E103C;
  v4[3] = &unk_27845F218;
  v4[4] = self;
  v4[5] = ref;
  sub_2212DFEC0(refs, v4);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end