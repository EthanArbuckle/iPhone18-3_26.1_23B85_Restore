@interface TSCEWholeOwnerDependencies
- (BOOL)addOwnerReference:(const TSCEInternalCellReference *)a3;
- (TSCEWholeOwnerDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4;
- (id).cxx_construct;
- (void)addPrecedentsOfCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4;
- (void)deleteOwnerReferencesFromCell:(TSUCellCoord)a3;
- (void)encodeToArchive:(void *)a3;
- (void)encodeToExpandedArchive:(void *)a3;
- (void)readFromArchive:(const void *)a3;
- (void)removeAllPrecedents;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEWholeOwnerDependencies

- (TSCEWholeOwnerDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = TSCEWholeOwnerDependencies;
  result = [(TSCEWholeOwnerDependencies *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = a3;
    result->_internalOwnerID = a4;
    result->_unarchivedRefSet = 0;
  }

  return result;
}

- (void)readFromArchive:(const void *)a3
{
  v3 = *(a3 + 6);
  if (v3 >= 1)
  {
    v6 = 8;
    do
    {
      v37 = 0;
      v36 = 0;
      v36 = sub_2215C3954(*(*(a3 + 4) + v6));
      v37 = v7;
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        v12 = objc_msgSend_idMap(dependencyTracker, v7, v8, v9, v10);
        v13 = v37;
        if (*(v12 + 144))
        {
          v13 = sub_2212602C8(v12, v37);
        }

        LOWORD(v37) = v13;
      }

      if ((sub_2212E0198(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v36) & 1) == 0)
      {
        sub_2212DFCE8(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v36);
        objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v14, v37, v15, v16);
        if (objc_claimAutoreleasedReturnValue() || (v18 = v37, objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v17, v37, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v19, v18, v20, v21), objc_claimAutoreleasedReturnValue()))
        {
          sub_2213A09F0();
        }

        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEWholeOwnerDependencies readFromArchive:]", v23, v24);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v28, v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 68, 0, "NULL whole owner dependencies");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      }

      v6 += 8;
      --v3;
    }

    while (v3);
  }
}

- (void)encodeToArchive:(void *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2213A00D4;
  v3[3] = &unk_27845F588;
  v3[4] = a3;
  sub_2212DFEC0(&self->_referencesToThisTable, v3);
}

- (void)unpackAfterUnarchive
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_2213A0314;
  v7[4] = sub_2213A0324;
  v8 = 0;
  unarchivedRefSet = self->_unarchivedRefSet;
  if (unarchivedRefSet)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2213A032C;
    v6[3] = &unk_278463C98;
    v6[4] = self;
    v6[5] = v7;
    sub_2212DFEC0(unarchivedRefSet, v6);
    v4 = self->_unarchivedRefSet;
    if (v4)
    {
      v5 = sub_221122744(v4);
      MEMORY[0x223DA1450](v5, 0x10A0C408EF24B1CLL);
    }
  }

  self->_unarchivedRefSet = 0;
  _Block_object_dispose(v7, 8);
}

- (void)encodeToExpandedArchive:(void *)a3
{
  *(a3 + 4) |= 1u;
  v4 = *(a3 + 3);
  if (!v4)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v6);
    *(a3 + 3) = v4;
  }

  sub_2212E0690(&self->_referencesToThisTable, v4);
}

- (BOOL)addOwnerReference:(const TSCEInternalCellReference *)a3
{
  sub_2212DFCE8(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a3);
  objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v5, a3->tableID, v6, v7);
  if (objc_claimAutoreleasedReturnValue() || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v8, a3->tableID, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v9, a3->tableID, v10, v11), objc_claimAutoreleasedReturnValue()))
  {
    sub_2213A09F0();
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEWholeOwnerDependencies addOwnerReference:]", v13, v14);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v19, v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 145, 0, "NULL whole owner dependencies");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  return 1;
}

- (void)deleteOwnerReferencesFromCell:(TSUCellCoord)a3
{
  v23 = a3;
  internalOwnerID = self->_internalOwnerID;
  v21 = *&a3 & 0xFFFFFFFFFFFFLL;
  v22 = internalOwnerID;
  v5 = sub_2213A0EB0(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, &v23);
  if (v5 == v6)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = v5;
    v13 = v6;
    v11 = 0;
    v10 = 0;
    do
    {
      v14 = *(v12 + 12);
      if (!v11 || objc_msgSend_formulaOwnerId(v11, v6, v7, v8, v9) != v14)
      {
        v15 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v6, v14, v8, v9);

        v20 = objc_msgSend_wholeOwnerDependencies(v15, v16, v17, v18, v19);

        v10 = v20;
        v11 = v15;
      }

      if (v10)
      {
        sub_2212DFDD0(v10 + 3, &v21);
      }

      v12 = *v12;
    }

    while (v12 != v13);
  }

  sub_2213A0FCC(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, &v23);
}

- (void)removeAllPrecedents
{
  next = self->_referencesFromThisTable.__table_.__first_node_.__next_;
  if (next)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(next + 12);
      internalOwnerID = self->_internalOwnerID;
      v17 = next[2] & 0xFFFFFFFFFFFFLL;
      LODWORD(v18) = internalOwnerID;
      if (!v7 || objc_msgSend_formulaOwnerId(v7, a2, v2, v3, v4, v17, v18) != v9)
      {
        v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, a2, v9, v3, v4, v17, v18);

        v16 = objc_msgSend_wholeOwnerDependencies(v11, v12, v13, v14, v15);

        v8 = v16;
        v7 = v11;
      }

      if (v8)
      {
        sub_2212DFDD0(v8 + 3, &v17);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_2210BE918(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_);
}

- (void)addPrecedentsOfCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4
{
  v6 = sub_2213A0EB0(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, a3);
  if (v6 != v7)
  {
    v10 = v6;
    v11 = v7;
    do
    {
      v13._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, v7, *(v10 + 12), v8, v9, 0, 0);
      v13._upper = v12;
      TSCEReferenceSet::insertWholeOwnerRef(a4, &v13);
      v10 = *v10;
    }

    while (v10 != v11);
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end