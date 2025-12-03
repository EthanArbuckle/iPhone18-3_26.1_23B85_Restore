@interface TSCEFormulasForUndoForOwnerKind
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addFormula:(id)formula atCellRef:(const TSCECellRef *)ref;
- (void)foreachFormula:(id)formula;
@end

@implementation TSCEFormulasForUndoForOwnerKind

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  v4->_ownerKind = self->_ownerKind;
  if (v4 != self)
  {
    v4->_formulas.__table_.__max_load_factor_ = self->_formulas.__table_.__max_load_factor_;
    sub_2214850DC(&v4->_formulas.__table_.__bucket_list_.__ptr_, self->_formulas.__table_.__first_node_.__next_, 0);
    v5->_nonFormulaCells.__table_.__max_load_factor_ = self->_nonFormulaCells.__table_.__max_load_factor_;
    sub_221485768(&v5->_nonFormulaCells.__table_.__bucket_list_.__ptr_, self->_nonFormulaCells.__table_.__first_node_.__next_, 0);
    v5->_formulaOwnerUIDs.__table_.__max_load_factor_ = self->_formulaOwnerUIDs.__table_.__max_load_factor_;
    sub_2211F2900(&v5->_formulaOwnerUIDs.__table_.__bucket_list_.__ptr_, self->_formulaOwnerUIDs.__table_.__first_node_.__next_, 0);
  }

  return v5;
}

- (void)addFormula:(id)formula atCellRef:(const TSCECellRef *)ref
{
  formulaCopy = formula;
  v10 = *&ref->coordinate & 0xFFFFFFFFFFFFLL;
  tableUID = ref->_tableUID;
  if (formulaCopy)
  {
    v9._lower = &v10;
    v8 = sub_221485B74(&self->_formulas.__table_.__bucket_list_.__ptr_, &v10);
    objc_storeStrong(v8 + 5, formula);
  }

  else if (!sub_221244B44(&self->_formulas.__table_.__bucket_list_.__ptr_, &v10))
  {
    sub_2214858FC(&self->_nonFormulaCells.__table_.__bucket_list_.__ptr_, &v10);
  }

  v9 = ref->_tableUID;
  sub_2211D6484(&self->_formulaOwnerUIDs.__table_.__bucket_list_.__ptr_, &v9);
}

- (void)foreachFormula:(id)formula
{
  p_first_node = &self->_nonFormulaCells.__table_.__first_node_;
  for (i = formula; ; i[2](i, 0, &p_first_node[2]))
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }
  }

  for (j = &self->_formulas.__table_.__first_node_; ; (i)[2](i, j[5].__next_, &j[2]))
  {
    j = j->__next_;
    if (!j)
    {
      break;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@>:\n", v6, v7, v4);
  for (i = self->_formulas.__table_.__first_node_.__next_; i; i = *i)
  {
    v10 = TSCECellRef::description((i + 16));
    objc_msgSend_appendFormat_(v8, v11, @"  %@ = %@\n", v12, v13, v10, *(i + 5));
  }

  for (j = self->_nonFormulaCells.__table_.__first_node_.__next_; j; j = *j)
  {
    v15 = TSCECellRef::description((j + 16));
    objc_msgSend_appendFormat_(v8, v16, @"  %@ = null\n", v17, v18, v15);
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end