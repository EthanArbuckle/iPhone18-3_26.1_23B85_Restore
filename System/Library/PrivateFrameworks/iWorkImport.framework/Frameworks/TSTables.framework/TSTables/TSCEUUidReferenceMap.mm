@interface TSCEUUidReferenceMap
+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)a3;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)a3 dependencyTracker:(id)a4;
- (void)addCellRef:(const TSCEInternalCellReference *)a3 forUuid:(const TSKUIDStruct *)a4;
- (void)encodeToArchive:(void *)a3 alsoSave31Format:(BOOL)a4 archiver:(id)a5;
- (void)getCellRefs:(void *)a3 referringToUuids:(const void *)a4;
- (void)removeAllCellRefsInOwner:(unsigned __int16)a3;
- (void)removeCellRef:(const TSCEInternalCellReference *)a3;
- (void)removeCellRef:(const TSCEInternalCellReference *)a3 forUuid:(const TSKUIDStruct *)a4;
- (void)upgradeForOwners:(id)a3;
@end

@implementation TSCEUUidReferenceMap

+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)a3
{
  v3 = MEMORY[0x277CCACA8];
  tableID = a3->tableID;
  v5 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"#%lu[%@]", v7, v8, tableID, v5);

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v7, v4, self);
  for (i = self->_cellRefsByUuid.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    v24 = i[1];
    if (sub_2212E0238(&i[2]))
    {
      v10 = TSKUIDStruct::description(&v24);
      objc_msgSend_appendFormat_(v8, v11, @"[%@] = ", v12, v13, v10);

      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 1;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22141CE90;
      v19[3] = &unk_278463C98;
      v14 = v8;
      v20 = v14;
      v21 = v22;
      sub_2212DFEC0(&i[2], v19);
      objc_msgSend_appendString_(v14, v15, @"\n", v16, v17);

      _Block_object_dispose(v22, 8);
    }
  }

  return v8;
}

- (void)addCellRef:(const TSCEInternalCellReference *)a3 forUuid:(const TSKUIDStruct *)a4
{
  v7 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, a4);
  if (v7)
  {
    sub_2212DFCE8(v7 + 4, a3);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 1065353216;
    sub_2212DFCE8(v10, a3);
    v12 = a4;
    v8 = sub_22141DC04(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, a4);
    sub_2212DFCA0((v8 + 4), v10);
    sub_221122744(v10);
  }

  *&v10[0] = a3;
  v9 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, a3);
  sub_2210C2B00(v9 + 4, a4);
}

- (void)removeCellRef:(const TSCEInternalCellReference *)a3 forUuid:(const TSKUIDStruct *)a4
{
  v7 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, a4);
  if (v7)
  {
    sub_2212DFDD0(v7 + 4, a3);
    v8 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, a3);
    sub_2211F2EF4(v8 + 4, a4);
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)a3
{
  if (sub_221123474(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, a3))
  {
    v12 = a3;
    v5 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, a3);
    sub_2213FB8DC(v10, (v5 + 4));
    for (i = v11; i; i = *i)
    {
      objc_msgSend_removeCellRef_forUuid_(self, v6, a3, (i + 2), v7);
    }

    v12 = a3;
    v9 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, a3);
    sub_2210BE918(v9 + 4);
    sub_2210BDEC0(v10);
  }
}

- (void)removeAllCellRefsInOwner:(unsigned __int16)a3
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  next = self->_uuidsByCellRef.__table_.__first_node_.__next_;
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
  v6[2] = sub_22141D264;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(v9, v6);
  sub_221122744(v9);
}

- (void)getCellRefs:(void *)a3 referringToUuids:(const void *)a4
{
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    do
    {
      v8 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, v4);
      if (v8)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = sub_22141D338;
        v9[3] = &unk_27845F588;
        v9[4] = a3;
        sub_2212DFEC0((v8 + 4), v9);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

- (id)initFromArchive:(const void *)a3 dependencyTracker:(id)a4
{
  v31 = a4;
  v13 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v13)
  {
    v14 = objc_msgSend_idMap(v31, v9, v10, v11, v12);
    v16 = *(a3 + 6);
    if (v16 >= 1)
    {
      v17 = v14;
      for (i = 0; i != v16; ++i)
      {
        v19 = *(*(a3 + 4) + 8 * i + 8);
        v48 = 0uLL;
        if (*(v19 + 48))
        {
          v20 = *(v19 + 48);
        }

        else
        {
          v20 = MEMORY[0x277D809E0];
        }

        *&v48 = TSKUIDStruct::loadFromMessage(v20, v15);
        *(&v48 + 1) = v21;
        v40 = 0;
        v41 = &v40;
        v42 = 0x5812000000;
        v43 = sub_22141D658;
        v44 = sub_22141D664;
        v45 = &unk_22188E88F;
        memset(v46, 0, sizeof(v46));
        v47 = 1065353216;
        if ((*(v19 + 16) & 2) != 0)
        {
          v26 = *(v19 + 56);
          memset(v38, 0, sizeof(v38));
          v39 = 1065353216;
          sub_2212E0790(v38, v26);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = sub_22141D66C;
          v33[3] = &unk_278464D80;
          v36 = v17;
          v27 = v13;
          v37 = v48;
          v34 = v27;
          v35 = &v40;
          sub_2212DFEC0(v38, v33);

          sub_221122744(v38);
        }

        else
        {
          v22 = *(v19 + 32);
          if (v22 >= 1)
          {
            v23 = 8;
            do
            {
              DWORD2(v38[0]) = 0;
              *&v38[0] = 0;
              *&v38[0] = sub_2215C3954(*(*(v19 + 40) + v23));
              DWORD2(v38[0]) = v24;
              if (*(v17 + 144))
              {
                LOWORD(v24) = sub_2212602C8(v17, v24);
              }

              WORD4(v38[0]) = v24;
              v49 = v38;
              v25 = sub_22141DEC4(v13 + 6, v38);
              sub_2210C2B00(v25 + 4, &v48);
              sub_2212DFCE8(v41 + 6, v38);
              v23 += 8;
              --v22;
            }

            while (v22);
          }
        }

        v28 = v41;
        *&v38[0] = &v48;
        v29 = sub_22141DC04(v13 + 1, &v48);
        sub_2212DFCA0((v29 + 4), (v28 + 6));
        _Block_object_dispose(&v40, 8);
        sub_221122744(v46);
      }
    }
  }

  return v13;
}

- (void)upgradeForOwners:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_ownerUIDMap(v4, v5, v6, v7, v8);
  sub_22141E1BC(v21, &self->_cellRefsByUuid);
  for (i = v22; i; i = *i)
  {
    v20 = *(i + 1);
    v19 = 0uLL;
    v23 = v20;
    v11 = sub_221119F90(v9, &v23);
    if (v11)
    {
      v13 = v11[4];
      v12 = v11[5];
      *&v19 = v13;
      *(&v19 + 1) = v12;
      if (v13 | v12)
      {
        if (v20 != v13 || *(&v20 + 1) != v12)
        {
          sub_22141E578(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, &v20);
          *&v23 = &v19;
          v15 = sub_22141DC04(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, &v19);
          sub_2212DFCA0((v15 + 4), (i + 4));
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = sub_22141D8A0;
          v16[3] = &unk_278464DA8;
          v16[4] = self;
          v17 = v20;
          v18 = v19;
          sub_2212DFEC0((i + 4), v16);
        }
      }
    }
  }

  sub_22141E4F8(v21);
}

- (void)encodeToArchive:(void *)a3 alsoSave31Format:(BOOL)a4 archiver:(id)a5
{
  v5 = a4;
  v8 = a5;
  next = self->_cellRefsByUuid.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v21 = next[1];
      if (sub_2212E0238(&next[2]))
      {
        break;
      }

LABEL_20:
      next = next->_lower;
      if (!next)
      {
        goto LABEL_21;
      }
    }

    v10 = *(a3 + 4);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *(a3 + 6);
    v12 = *v10;
    if (v11 < *v10)
    {
      *(a3 + 6) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
LABEL_10:
      *(v13 + 16) |= 1u;
      v16 = *(v13 + 48);
      if (!v16)
      {
        v17 = *(v13 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v17);
        *(v13 + 48) = v16;
      }

      TSKUIDStruct::saveToMessage(&v21, v16);
      *(v13 + 16) |= 2u;
      v18 = *(v13 + 56);
      if (!v18)
      {
        v19 = *(v13 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v19);
        *(v13 + 56) = v18;
      }

      sub_2212E0690(&next[2], v18);
      if (v5)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22141DAF0;
        v20[3] = &unk_27845F588;
        v20[4] = v13;
        sub_2212DFEC0(&next[2], v20);
      }

      goto LABEL_20;
    }

    if (v12 == *(a3 + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
      v10 = *(a3 + 4);
      v12 = *v10;
    }

    *v10 = v12 + 1;
    v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive_CellRefsForUuid>(*(a3 + 2));
    v14 = *(a3 + 6);
    v15 = *(a3 + 4) + 8 * v14;
    *(a3 + 6) = v14 + 1;
    *(v15 + 8) = v13;
    goto LABEL_10;
  }

LABEL_21:
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