@interface TSCEUuidReferences
+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)a3;
- (BOOL)getCellRefs:(void *)a3 referringToOwnerUID:(const TSKUIDStruct *)a4 referringToUuids:(const void *)a5;
- (TSCEUuidReferences)initWithOwnerUID:(const TSKUIDStruct *)a3;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)a3 ownerUID:(const TSKUIDStruct *)a4;
- (void)addCellCoord:(const TSUCellCoord *)a3 referringToCategoryRef:(id)a4;
- (void)addCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4;
- (void)addCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4 forColumnRowUuid:(const TSKUIDStruct *)a5;
- (void)clear;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)getAllCellRefs:(void *)a3 referringToOwnerUID:(const TSKUIDStruct *)a4;
- (void)getCellRefs:(void *)a3 referringToOwner:(const TSKUIDStruct *)a4;
- (void)getCellRefs:(void *)a3 referringToOwners:(const void *)a4;
- (void)removeCellCoord:(const TSUCellCoord *)a3;
- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToCategoryRef:(id)a4;
- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4;
- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4 forColumnRowUuid:(const TSKUIDStruct *)a5;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEUuidReferences

- (TSCEUuidReferences)initWithOwnerUID:(const TSKUIDStruct *)a3
{
  v5.receiver = self;
  v5.super_class = TSCEUuidReferences;
  result = [(TSCEUuidReferences *)&v5 init];
  if (result)
  {
    result->_ownerUID = *a3;
  }

  return result;
}

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
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p> for ownerUID %@:\n", v7, v8, v4, self, v5);

  for (i = self->_coordSetsReferringToTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v11 = TSKUIDStruct::description(i + 1);
    v12 = TSCECellCoordSet::description((i + 32));
    objc_msgSend_appendFormat_(v9, v13, @"Table %@ <- %@\n", v14, v15, v11, v12);
  }

  for (j = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; j; j = j->_lower)
  {
    for (k = j[3]._lower; k; k = *k)
    {
      v18 = TSKUIDStruct::description(j + 1);
      v19 = TSKUIDStruct::description((k + 16));
      v20 = TSCECellCoordSet::description((k + 32));
      objc_msgSend_appendFormat_(v9, v21, @"Table %@, Uid: %@ <- %@\n", v22, v23, v18, v19, v20);
    }
  }

  return v9;
}

- (void)addCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4
{
  if (*a4 != 0)
  {
    v7 = sub_2213292E0(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, a4);
    TSCECellCoordSet::addCellCoord((v7 + 4), a3);
    v9._lower = a3;
    v8 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, a3);
    v9 = *a4;
    v10 = 0;
    v11 = 0;
    sub_221329838(v8 + 3, &v9);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4
{
  if (*a4 != 0)
  {
    v7 = sub_2210875C4(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, a4);
    if (v7)
    {
      TSCECellCoordSet::removeCellCoord((v7 + 4), a3);
      v9._lower = a3;
      v8 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, a3);
      v9 = *a4;
      v10 = 0;
      v11 = 0;
      sub_221329A98(v8 + 3, &v9);
    }
  }
}

- (void)addCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4 forColumnRowUuid:(const TSKUIDStruct *)a5
{
  v9 = sub_221329BB8(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, a4);
  v10 = sub_2213292E0(v9 + 4, a5);
  TSCECellCoordSet::addCellCoord((v10 + 4), a3);
  *&v13[0] = a3;
  v11 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, a3);
  v12 = *a5;
  v13[0] = *a4;
  v13[1] = v12;
  sub_221329838(v11 + 3, v13);
}

- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToTableUID:(const TSKUIDStruct *)a4 forColumnRowUuid:(const TSKUIDStruct *)a5
{
  v9 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, a4);
  if (v9)
  {
    v10 = sub_2210875C4(v9 + 4, a5);
    if (v10)
    {
      TSCECellCoordSet::removeCellCoord((v10 + 4), a3);
      *&v13[0] = a3;
      v11 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, a3);
      v12 = *a5;
      v13[0] = *a4;
      v13[1] = v12;
      sub_221329A98(v11 + 3, v13);
    }
  }
}

- (void)addCellCoord:(const TSUCellCoord *)a3 referringToCategoryRef:(id)a4
{
  v6 = a4;
  v24 = objc_msgSend_groupByUid(v6, v7, v8, v9, v10);
  v25 = v11;
  if (v24 | v11)
  {
    if (objc_msgSend_isBadRef(v6, v11, v12, v13, v14, 0, 0, v24, v25))
    {
      v19 = objc_msgSend_relativeGroupUid(v6, v15, v16, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_absoluteGroupUid(v6, v15, v16, v17, v18);
    }

    v22 = v19;
    v23 = v20;
    if (v19 | v20)
    {
      objc_msgSend_addCellCoord_referringToTableUID_forColumnRowUuid_(self, v20, a3, &v24, &v22);
    }

    objc_msgSend_addCellCoord_referringToTableUID_(self, v20, a3, &v24, v21, v22, v23);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)a3 referringToCategoryRef:(id)a4
{
  v6 = a4;
  v24 = objc_msgSend_groupByUid(v6, v7, v8, v9, v10);
  v25 = v11;
  if (v24 | v11)
  {
    if (objc_msgSend_isBadRef(v6, v11, v12, v13, v14, 0, 0, v24, v25))
    {
      v19 = objc_msgSend_relativeGroupUid(v6, v15, v16, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_absoluteGroupUid(v6, v15, v16, v17, v18);
    }

    v22 = v19;
    v23 = v20;
    if (v19 | v20)
    {
      objc_msgSend_removeCellCoord_referringToTableUID_forColumnRowUuid_(self, v20, a3, &v24, &v22);
    }

    objc_msgSend_removeCellCoord_referringToTableUID_(self, v20, a3, &v24, v21, v22, v23);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)a3
{
  v5 = sub_221087F14(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, a3);
  if (v5)
  {
    sub_221329E78(v10, (v5 + 3));
    for (i = v11; i; i = *i)
    {
      v8 = (i + 4);
      v9 = (i + 2);
      if (i[4] || i[5])
      {
        objc_msgSend_removeCellCoord_referringToTableUID_forColumnRowUuid_(self, v6, a3, v9, v8);
      }

      else
      {
        objc_msgSend_removeCellCoord_referringToTableUID_(self, v6, a3, v9, v8);
      }
    }

    sub_2210BDEC0(v10);
  }
}

- (void)clear
{
  sub_22132A150(&self->_coordSetsReferringToTable);
  sub_22132A1F4(&self->_coordSetsReferringToUuidInTable);

  sub_2210BE984(&self->_uuidsByCoord);
}

- (void)getCellRefs:(void *)a3 referringToOwner:(const TSKUIDStruct *)a4
{
  if (*a4 != 0)
  {
    v6 = sub_2210875C4(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, a4);
    if (v6)
    {

      TSCECellRefSet::addCellRefs(a3, &self->_ownerUID, (v6 + 4));
    }
  }
}

- (void)getCellRefs:(void *)a3 referringToOwners:(const void *)a4
{
  v5 = *a4;
  v6 = *(a4 + 1);
  if (*a4 != v6)
  {
    do
    {
      objc_msgSend_getCellRefs_referringToOwner_(self, a2, a3, v5, v4);
      v5 += 16;
    }

    while (v5 != v6);
  }
}

- (void)getAllCellRefs:(void *)a3 referringToOwnerUID:(const TSKUIDStruct *)a4
{
  objc_msgSend_getCellRefs_referringToOwner_(self, a2, a3, a4, v4);
  v8 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, a4);
  if (v8)
  {
    for (i = v8[6]; i; i = *i)
    {
      TSCECellRefSet::addCellRefs(a3, &self->_ownerUID, (i + 4));
    }
  }
}

- (BOOL)getCellRefs:(void *)a3 referringToOwnerUID:(const TSKUIDStruct *)a4 referringToUuids:(const void *)a5
{
  v8 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = *a5;
  v10 = *(a5 + 1);
  if (*a5 == v10)
  {
    return 0;
  }

  v11 = v8;
  v12 = 0;
  do
  {
    v13 = sub_221119F90(v11 + 4, v9);
    if (v13)
    {
      v14 = v13;
      if (!TSCECellCoordSet::isEmpty((v13 + 4)))
      {
        TSCECellRefSet::addCellRefs(a3, &self->_ownerUID, (v14 + 4));
        v12 = 1;
      }
    }

    v9 += 2;
  }

  while (v9 != v10);
  return v12;
}

- (id)initFromArchive:(const void *)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  v32 = objc_msgSend_init(self, a2, a3, a4, v4);
  if (v32)
  {
    *(v32 + 8) = *a4;
    v8 = *(v6 + 6);
    v9 = MEMORY[0x277D809E0];
    if (v8 >= 1)
    {
      v10 = 8;
      do
      {
        v11 = *(v6[4] + v10);
        v35 = 0;
        v36 = 0;
        if (*(v11 + 24))
        {
          v12 = *(v11 + 24);
        }

        else
        {
          v12 = v9;
        }

        v35 = TSKUIDStruct::loadFromMessage(v12, v7);
        v36 = v13;
        v33 = &v35;
        v14 = sub_2213292E0((v32 + 24), &v35);
        if (*(v11 + 32))
        {
          v15 = *(v11 + 32);
        }

        else
        {
          v15 = &TSCE::_CellCoordSetArchive_default_instance_;
        }

        TSCECellCoordSet::loadFromArchive((v14 + 4), v15);
        v10 += 8;
        --v8;
      }

      while (v8);
    }

    v31 = *(v6 + 12);
    if (v31 >= 1)
    {
      for (i = 0; i != v31; ++i)
      {
        v17 = v6;
        v18 = *(v6[7] + 8 * i + 8);
        v35 = 0;
        v36 = 0;
        if (*(v18 + 48))
        {
          v19 = *(v18 + 48);
        }

        else
        {
          v19 = v9;
        }

        v35 = TSKUIDStruct::loadFromMessage(v19, v7);
        v36 = v20;
        v33 = &v35;
        v21 = sub_221329BB8((v32 + 64), &v35);
        v22 = *(v18 + 32);
        if (v22 >= 1)
        {
          v23 = v21;
          v24 = 8;
          do
          {
            v25 = *(*(v18 + 40) + v24);
            if ((*(v25 + 16) & 2) != 0)
            {
              v33 = 0;
              v34 = 0;
              if (*(v25 + 24))
              {
                v26 = *(v25 + 24);
              }

              else
              {
                v26 = v9;
              }

              v33 = TSKUIDStruct::loadFromMessage(v26, v7);
              v34 = v27;
              v37 = &v33;
              v28 = sub_2213292E0(v23 + 4, &v33);
              if (*(v25 + 32))
              {
                v29 = *(v25 + 32);
              }

              else
              {
                v29 = &TSCE::_CellCoordSetArchive_default_instance_;
              }

              TSCECellCoordSet::loadFromArchive((v28 + 4), v29);
            }

            v24 += 8;
            --v22;
          }

          while (v22);
        }

        v6 = v17;
      }
    }
  }

  return v32;
}

- (void)unpackAfterUnarchive
{
  next = self->_coordSetsReferringToTable.__table_.__first_node_.__next_;
  if (next)
  {
    v4 = MEMORY[0x277D85DD0];
    do
    {
      v14 = next[1];
      v12[0] = v4;
      v12[1] = 3221225472;
      v12[2] = sub_221328E10;
      v12[3] = &unk_278462DA0;
      v12[4] = self;
      v13 = v14;
      TSCECellCoordSet::enumerateCoordsUsingBlock(next + 4, v12);
      next = *next;
    }

    while (next);
  }

  for (i = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v14 = i[1];
    v6 = *(i + 6);
    if (v6)
    {
      v7 = MEMORY[0x277D85DD0];
      do
      {
        v11 = *(v6 + 1);
        v8[0] = v7;
        v8[1] = 3221225472;
        v8[2] = sub_221328E74;
        v8[3] = &unk_27845F3B0;
        v8[4] = self;
        v9 = v14;
        v10 = v11;
        TSCECellCoordSet::enumerateCoordsUsingBlock(v6 + 4, v8);
        v6 = *v6;
      }

      while (v6);
    }
  }
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v37 = a4;
  next = self->_coordSetsReferringToTable.__table_.__first_node_.__next_;
  if (next)
  {
    while (TSCECellCoordSet::isEmpty((next + 32)))
    {
LABEL_19:
      next = *next;
      if (!next)
      {
        goto LABEL_20;
      }
    }

    v7 = *(a3 + 4);
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(a3 + 6);
    v9 = *v7;
    if (v8 < *v7)
    {
      *(a3 + 6) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
LABEL_10:
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

      TSKUIDStruct::saveToMessage(next + 1, v13);
      *(v10 + 16) |= 2u;
      v15 = *(v10 + 32);
      if (!v15)
      {
        v16 = *(v10 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v16);
        *(v10 + 32) = v15;
      }

      TSCECellCoordSet::encodeToArchive((next + 32), v15);
      goto LABEL_19;
    }

    if (v9 == *(a3 + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
      v7 = *(a3 + 4);
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableRef>(*(a3 + 2));
    v11 = *(a3 + 6);
    v12 = *(a3 + 4) + 8 * v11;
    *(a3 + 6) = v11 + 1;
    *(v12 + 8) = v10;
    goto LABEL_10;
  }

LABEL_20:
  for (i = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    if (!i[3]._upper)
    {
      continue;
    }

    v18 = *(a3 + 7);
    if (!v18)
    {
      goto LABEL_27;
    }

    v19 = *(a3 + 12);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(a3 + 12) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
      goto LABEL_29;
    }

    if (v20 == *(a3 + 13))
    {
LABEL_27:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 40));
      v18 = *(a3 + 7);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableWithUuidRef>(*(a3 + 5));
    v22 = *(a3 + 12);
    v23 = *(a3 + 7) + 8 * v22;
    *(a3 + 12) = v22 + 1;
    *(v23 + 8) = v21;
LABEL_29:
    *(v21 + 16) |= 1u;
    v24 = *(v21 + 48);
    if (!v24)
    {
      v25 = *(v21 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x223DA0360](v25);
      *(v21 + 48) = v24;
    }

    TSKUIDStruct::saveToMessage(i + 1, v24);
    lower = i[3]._lower;
    if (lower)
    {
      while (TSCECellCoordSet::isEmpty((lower + 32)))
      {
LABEL_51:
        lower = *lower;
        if (!lower)
        {
          goto LABEL_52;
        }
      }

      v27 = *(v21 + 40);
      if (!v27)
      {
        goto LABEL_40;
      }

      v28 = *(v21 + 32);
      v29 = *v27;
      if (v28 < *v27)
      {
        *(v21 + 32) = v28 + 1;
        v30 = *&v27[2 * v28 + 2];
LABEL_42:
        *(v30 + 16) |= 1u;
        v33 = *(v30 + 24);
        if (!v33)
        {
          v34 = *(v30 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0360](v34);
          *(v30 + 24) = v33;
        }

        TSKUIDStruct::saveToMessage((lower + 16), v33);
        *(v30 + 16) |= 2u;
        v35 = *(v30 + 32);
        if (!v35)
        {
          v36 = *(v30 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v36);
          *(v30 + 32) = v35;
        }

        TSCECellCoordSet::encodeToArchive((lower + 32), v35);
        goto LABEL_51;
      }

      if (v29 == *(v21 + 36))
      {
LABEL_40:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 24));
        v27 = *(v21 + 40);
        v29 = *v27;
      }

      *v27 = v29 + 1;
      v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_UuidRef>(*(v21 + 24));
      v31 = *(v21 + 32);
      v32 = *(v21 + 40) + 8 * v31;
      *(v21 + 32) = v31 + 1;
      *(v32 + 8) = v30;
      goto LABEL_42;
    }

LABEL_52:
    ;
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

@end