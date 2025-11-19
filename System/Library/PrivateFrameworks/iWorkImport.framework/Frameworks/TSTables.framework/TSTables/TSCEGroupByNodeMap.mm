@interface TSCEGroupByNodeMap
- (BOOL)getCellRefs:(void *)a3 referringToGroupNodes:(const void *)a4 inGroupBy:(const TSKUIDStruct *)a5;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)a3;
- (void)addCellRef:(const TSCEInternalCellReference *)a3 usingCategoryRef:(id)a4;
- (void)encodeToArchive:(void *)a3;
- (void)getCellRefs:(void *)a3 forGroupRootInGroupBy:(const TSKUIDStruct *)a4;
- (void)getCellRefs:(void *)a3 inGroupBy:(const TSKUIDStruct *)a4;
- (void)getCellRefs:(void *)a3 inGroupBys:(const void *)a4;
- (void)removeAllCellRefsInOwner:(unsigned __int16)a3;
- (void)removeCellRef:(const TSCEInternalCellReference *)a3;
- (void)removeCellRef:(const TSCEInternalCellReference *)a3 usingCategoryRef:(id)a4;
- (void)upgradeGroupByUid:(const TSKUIDStruct *)a3 toUid:(const TSKUIDStruct *)a4;
@end

@implementation TSCEGroupByNodeMap

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v7, v4, self);
}

- (void)addCellRef:(const TSCEInternalCellReference *)a3 usingCategoryRef:(id)a4
{
  v6 = a4;
  v27[0] = objc_msgSend_groupByUid(v6, v7, v8, v9, v10);
  v27[1] = v11;
  if (v27[0] | v11)
  {
    v25 = 0;
    v26 = 0;
    if (objc_msgSend_isBadRef(v6, v11, v12, v13, v14))
    {
      v19 = objc_msgSend_relativeGroupUid(v6, v15, v16, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_absoluteGroupUid(v6, v15, v16, v17, v18);
    }

    v25 = v19;
    v26 = v20;
    if (v19 | v20)
    {
      v21 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v27);
      v22 = sub_22147D360(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
      v24 = &v25;
      v23 = sub_22141DC04(v21 + 4, &v25);
      sub_2212DFCE8(v23 + 4, a3);
      TSKMakeUIDStructCoord();
      sub_22147D60C(v22 + 4, &v24);
    }
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)a3 usingCategoryRef:(id)a4
{
  v6 = a4;
  v30[0] = objc_msgSend_groupByUid(v6, v7, v8, v9, v10);
  v30[1] = v11;
  if (v30[0] | v11 && sub_221119F90(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v30))
  {
    v28 = 0;
    v29 = 0;
    if (objc_msgSend_isBadRef(v6, v12, v13, v14, v15))
    {
      v20 = objc_msgSend_relativeGroupUid(v6, v16, v17, v18, v19);
    }

    else
    {
      v20 = objc_msgSend_absoluteGroupUid(v6, v16, v17, v18, v19);
    }

    v22 = v20;
    v23 = v21;
    v28 = v20;
    v29 = v21;
    v24 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v30);
    v27 = a3;
    v25 = sub_22147D360(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
    if (v22 | v23)
    {
      v27 = &v28;
      v26 = sub_22141DC04(v24 + 4, &v28);
      sub_2212DFDD0(v26 + 4, a3);
      TSKMakeUIDStructCoord();
      sub_22147D86C(v25 + 4, &v27);
    }

    if (!v24[7])
    {
      sub_22147D8A4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v30);
    }

    if (!v25[7])
    {
      sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
    }
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)a3
{
  v5 = sub_221123474(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
  if (v5)
  {
    for (i = v5[6]; i; i = *i)
    {
      v7 = *(i + 1);
      v10 = *(i + 2);
      v11 = v7;
      v12 = &v11;
      v8 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, &v11);
      v12 = &v10;
      v9 = sub_22141DC04(v8 + 4, &v10);
      sub_2212DFDD0(v9 + 4, a3);
    }

    sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
  }

  sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, a3);
}

- (void)removeAllCellRefsInOwner:(unsigned __int16)a3
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  next = self->_groupNodesByCellRef.__table_.__first_node_.__next_;
  if (next)
  {
    v5 = a3;
    do
    {
      v7 = next[2];
      v8 = *(next + 6);
      if (v5 == v8)
      {
        sub_2212DFCE8(v9, &v7);
      }

      next = *next;
    }

    while (next);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22147C6B0;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(v9, v6);
  sub_221122744(v9);
}

- (BOOL)getCellRefs:(void *)a3 referringToGroupNodes:(const void *)a4 inGroupBy:(const TSKUIDStruct *)a5
{
  v7 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, a5);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!v7 || (v8 = *a4, v9 = *(a4 + 1), v8 == v9))
  {
    v12 = 0;
  }

  else
  {
    v10 = v7;
    do
    {
      v11 = sub_221119F90(v10 + 4, v8);
      if (v11)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_22147C7F0;
        v14[3] = &unk_278465940;
        v14[4] = &v15;
        v14[5] = a3;
        sub_2212DFEC0((v11 + 4), v14);
      }

      v8 += 2;
    }

    while (v8 != v9);
    v12 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v12 & 1;
}

- (void)getCellRefs:(void *)a3 forGroupRootInGroupBy:(const TSKUIDStruct *)a4
{
  v5 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, a4);
  if (v5)
  {
    v10 = v5;
    v14[0] = objc_msgSend_groupByRootUid(TSCECategoryRef, v6, v7, v8, v9);
    v14[1] = v11;
    v12 = sub_221119F90(v10 + 4, v14);
    if (v12)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_22147C8D8;
      v13[3] = &unk_27845F588;
      v13[4] = a3;
      sub_2212DFEC0((v12 + 4), v13);
    }
  }
}

- (void)getCellRefs:(void *)a3 inGroupBy:(const TSKUIDStruct *)a4
{
  v5 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, a4);
  if (v5)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = MEMORY[0x277D85DD0];
      do
      {
        v8[0] = v7;
        v8[1] = 3221225472;
        v8[2] = sub_22147C99C;
        v8[3] = &unk_27845F588;
        v8[4] = a3;
        sub_2212DFEC0((v6 + 4), v8);
        v6 = *v6;
      }

      while (v6);
    }
  }
}

- (void)getCellRefs:(void *)a3 inGroupBys:(const void *)a4
{
  v5 = *a4;
  v6 = *(a4 + 1);
  if (*a4 != v6)
  {
    do
    {
      objc_msgSend_getCellRefs_inGroupBy_(self, a2, a3, v5, v4);
      v5 += 16;
    }

    while (v5 != v6);
  }
}

- (id)initFromArchive:(const void *)a3
{
  v6 = objc_msgSend_init(self, a2, a3, v3, v4);
  if (v6)
  {
    v20 = *(a3 + 6);
    if (v20 >= 1)
    {
      v7 = 0;
      v8 = MEMORY[0x277D809E0];
      do
      {
        v22 = v7;
        v9 = *(*(a3 + 4) + 8 * v7 + 8);
        v28 = 0uLL;
        if (*(v9 + 48))
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = v8;
        }

        *&v28 = TSKUIDStruct::loadFromMessage(v10, v5);
        *(&v28 + 1) = v5;
        v11 = *(v9 + 32);
        if (v11 >= 1)
        {
          v12 = 8;
          do
          {
            v13 = *(*(v9 + 40) + v12);
            v27 = 0uLL;
            if (*(v13 + 24))
            {
              v14 = *(v13 + 24);
            }

            else
            {
              v14 = v8;
            }

            *&v27 = TSKUIDStruct::loadFromMessage(v14, v5);
            *(&v27 + 1) = v5;
            if ((*(v13 + 16) & 2) != 0)
            {
              v29 = &v28;
              v15 = sub_22147D0A0(v6 + 1, &v28);
              v29 = &v27;
              v16 = sub_22141DC04(v15 + 4, &v27);
              if (*(v13 + 32))
              {
                v17 = *(v13 + 32);
              }

              else
              {
                v17 = &TSCE::_InternalCellRefSetArchive_default_instance_;
              }

              sub_2212E0790(v16 + 4, v17);
              v29 = &v27;
              v18 = sub_22141DC04(v15 + 4, &v27);
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = sub_22147CC24;
              v23[3] = &unk_278464DA8;
              v24 = v6;
              v25 = v28;
              v26 = v27;
              sub_2212DFEC0((v18 + 4), v23);
            }

            v12 += 8;
            --v11;
          }

          while (v11);
        }

        v7 = v22 + 1;
      }

      while (v22 + 1 != v20);
    }
  }

  return v6;
}

- (void)encodeToArchive:(void *)a3
{
  for (i = self->_cellRefsByGroupNodeByGroupBy.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    v25 = i[1];
    if (!i[3]._upper)
    {
      continue;
    }

    v5 = *(a3 + 4);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *(a3 + 6);
    v7 = *v5;
    if (v6 < *v5)
    {
      *(a3 + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
      goto LABEL_10;
    }

    if (v7 == *(a3 + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
      v5 = *(a3 + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy>(*(a3 + 2));
    v9 = *(a3 + 6);
    v10 = *(a3 + 4) + 8 * v9;
    *(a3 + 6) = v9 + 1;
    *(v10 + 8) = v8;
LABEL_10:
    *(v8 + 16) |= 1u;
    v11 = *(v8 + 48);
    if (!v11)
    {
      v12 = *(v8 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(v8 + 48) = v11;
    }

    TSKUIDStruct::saveToMessage(&v25, v11);
    lower = i[3]._lower;
    if (lower)
    {
      while (1)
      {
        v24 = *(lower + 16);
        if (sub_2212E0238(lower + 32))
        {
          break;
        }

LABEL_32:
        lower = *lower;
        if (!lower)
        {
          goto LABEL_33;
        }
      }

      v14 = *(v8 + 40);
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(v8 + 32);
      v16 = *v14;
      if (v15 < *v14)
      {
        *(v8 + 32) = v15 + 1;
        v17 = *&v14[2 * v15 + 2];
LABEL_23:
        *(v17 + 16) |= 1u;
        v20 = *(v17 + 24);
        if (!v20)
        {
          v21 = *(v17 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA0360](v21);
          *(v17 + 24) = v20;
        }

        TSKUIDStruct::saveToMessage(&v24, v20);
        *(v17 + 16) |= 2u;
        v22 = *(v17 + 32);
        if (!v22)
        {
          v23 = *(v17 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v23);
          *(v17 + 32) = v22;
        }

        sub_2212E0690(lower + 32, v22);
        goto LABEL_32;
      }

      if (v16 == *(v8 + 36))
      {
LABEL_21:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 24));
        v14 = *(v8 + 40);
        v16 = *v14;
      }

      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_CellRefsForGroupNode>(*(v8 + 24));
      v18 = *(v8 + 32);
      v19 = *(v8 + 40) + 8 * v18;
      *(v8 + 32) = v18 + 1;
      *(v19 + 8) = v17;
      goto LABEL_23;
    }

LABEL_33:
    ;
  }
}

- (void)upgradeGroupByUid:(const TSKUIDStruct *)a3 toUid:(const TSKUIDStruct *)a4
{
  v7 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, a3);
  if (v7)
  {
    v8 = v7;
    sub_22141E1BC(v15, (v7 + 4));
    sub_221087680(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v8, v13);
    sub_22147D314(v13);
    v13[0] = a4;
    v9 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, a4);
    if (v9 + 4 != v15)
    {
      *(v9 + 16) = v17;
      sub_22147D93C(v9 + 4, v16, 0);
    }

    for (i = self->_groupNodesByCellRef.__table_.__first_node_.__next_; i; i = *i)
    {
      sub_22147DB74(v13, (i + 4));
      for (j = v14; j; j = *j)
      {
        if (j[2] == a3->_lower && j[3] == a3->_upper)
        {
          memset(v12, 0, sizeof(v12));
          TSKMakeUIDStructCoord();
          sub_22147D86C(i + 4, j + 2);
          sub_22147DBEC(i + 4, v12);
        }
      }

      sub_2210BDEC0(v13);
    }

    sub_22141E4F8(v15);
  }
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