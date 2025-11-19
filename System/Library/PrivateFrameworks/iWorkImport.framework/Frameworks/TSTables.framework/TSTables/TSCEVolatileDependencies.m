@interface TSCEVolatileDependencies
- (BOOL)addVolatileGeometryReference:(const TSCEInternalCellReference *)a3;
- (BOOL)addVolatileLocaleReference:(TSUCellCoord)a3;
- (BOOL)addVolatileRandomReference:(TSUCellCoord)a3;
- (BOOL)addVolatileRemoteDataReference:(TSUCellCoord)a3;
- (BOOL)addVolatileSheetTableNameReference:(TSUCellCoord)a3;
- (BOOL)addVolatileTimeReference:(TSUCellCoord)a3;
- (BOOL)dirtyRemoteDataVolatileCellsForKeys:(id)a3 refsToDirty:(id)a4;
- (BOOL)isEmpty;
- (BOOL)replaceRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)a3 specifierSet:(id)a4;
- (TSCEVolatileDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4 ownerUID:(const TSKUIDStruct *)a5;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4;
- (void)addRemoteDataPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4;
- (void)clearRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)a3;
- (void)deleteVolatileReferencesFromCell:(TSUCellCoord)a3;
- (void)encodeToArchive:(void *)a3;
- (void)encodeToExpandedArchive:(void *)a3 embiggenedFormatOnly:(BOOL)a4;
- (void)readFromArchive:(const void *)a3;
- (void)readFromExpandedArchive:(const void *)a3;
- (void)removeAllPrecedents;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEVolatileDependencies

- (TSCEVolatileDependencies)initWithDependTracker:(id)a3 ownerID:(unsigned __int16)a4 ownerUID:(const TSKUIDStruct *)a5
{
  v9.receiver = self;
  v9.super_class = TSCEVolatileDependencies;
  result = [(TSCEVolatileDependencies *)&v9 init];
  if (result)
  {
    result->_dependencyTracker = a3;
    result->_internalOwnerID = a4;
    result->_ownerUID = *a5;
  }

  return result;
}

- (void)readFromArchive:(const void *)a3
{
  v7 = *(a3 + 4);
  if (v7 != *(a3 + 8))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 93, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (v7 >= 1)
  {
    v19 = 0;
    do
    {
      v89 = 0;
      v89.row = *(*(a3 + 5) + v19);
      v89.column = *(*(a3 + 3) + v19);
      TSCECellCoordSet::addCellCoord(&self->_volatileDateTimeCellCoordinates, &v89);
      v19 += 4;
    }

    while (4 * v7 != v19);
  }

  v20 = *(a3 + 12);
  if (v20 != *(a3 + 16))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3, v4);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 101, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (v20 >= 1)
  {
    v32 = 0;
    do
    {
      v89 = 0;
      v89.row = *(*(a3 + 9) + v32);
      v89.column = *(*(a3 + 7) + v32);
      TSCECellCoordSet::addCellCoord(&self->_volatileRandomCellCoordinates, &v89);
      v32 += 4;
    }

    while (4 * v20 != v32);
  }

  v33 = *(a3 + 56);
  if (v33 != *(a3 + 60))
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3, v4);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v35, v39, 109, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  if (v33 >= 1)
  {
    v45 = 0;
    do
    {
      v89 = 0;
      v89.row = *(*(a3 + 31) + v45);
      v89.column = *(*(a3 + 29) + v45);
      TSCECellCoordSet::addCellCoord(&self->_volatileLocaleCellCoordinates, &v89);
      v45 += 4;
    }

    while (4 * v33 != v45);
  }

  v46 = *(a3 + 52);
  if (v46 >= 1)
  {
    v47 = 8;
    do
    {
      sub_221269DB8(*(*(a3 + 27) + v47), &v89);
      v87 = objc_msgSend_internalCellReferenceForCellRef_(self->_dependencyTracker, v48, &v89, v49, v50);
      v88 = v51;
      objc_msgSend_addVolatileGeometryReference_(self, v51, &v87, v52, v53);
      v47 += 8;
      --v46;
    }

    while (v46);
  }

  v54 = *(a3 + 46);
  if (v54 >= 1)
  {
    v55 = 8;
    do
    {
      v56 = sub_2212697C0(*(*(a3 + 24) + v55));
      internalOwnerID = self->_internalOwnerID;
      v89 = (v56 & 0xFFFFFFFFFFFFLL);
      v90 = internalOwnerID;
      objc_msgSend_addVolatileGeometryReference_(self, v58, &v89, v59, v60);
      v55 += 8;
      --v54;
    }

    while (v54);
  }

  v61 = *(a3 + 72);
  if (v61 != *(a3 + 76))
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3, v4);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v65, v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v63, v67, 129, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
  }

  if (v61 >= 1)
  {
    v73 = 0;
    do
    {
      v89 = 0;
      v89.row = *(*(a3 + 39) + v73);
      v89.column = *(*(a3 + 37) + v73);
      TSCECellCoordSet::addCellCoord(&self->_volatileRemoteDataCellCoordinates, &v89);
      v73 += 4;
    }

    while (4 * v61 != v73);
  }

  v74 = *(a3 + 64);
  if (v74 != *(a3 + 68))
  {
    v75 = MEMORY[0x277D81150];
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3, v4);
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v78, v79);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v81, v76, v80, 137, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
  }

  if (v74 >= 1)
  {
    v86 = 0;
    do
    {
      v89 = 0;
      v89.row = *(*(a3 + 35) + v86);
      v89.column = *(*(a3 + 33) + v86);
      TSCECellCoordSet::addCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &v89);
      v86 += 4;
    }

    while (4 * v74 != v86);
  }
}

- (void)encodeToArchive:(void *)a3
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214D2BA4;
  v10[3] = &unk_27845F2D8;
  v10[4] = a3;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileDateTimeCellCoordinates._rectRepresentation.origin, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214D2C64;
  v9[3] = &unk_27845F2D8;
  v9[4] = a3;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRandomCellCoordinates._rectRepresentation.origin, v9);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214D2D24;
  v8[3] = &unk_27845F2D8;
  v8[4] = a3;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileLocaleCellCoordinates._rectRepresentation.origin, v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214D2DE4;
  v7[3] = &unk_27845F2D8;
  v7[4] = a3;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRemoteDataCellCoordinates._rectRepresentation.origin, v7);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214D2EA8;
  v6[3] = &unk_27845F2D8;
  v6[4] = a3;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileSheetTableNamesCellCoordinates._rectRepresentation.origin, v6);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214D2F6C;
  v5[3] = &unk_27845F218;
  v5[4] = self;
  v5[5] = a3;
  sub_2212DFEC0(&self->_volatileGeometryReferencesToThisTable, v5);
}

- (void)readFromExpandedArchive:(const void *)a3
{
  v5 = *(a3 + 4);
  if (v5)
  {
    TSCECellCoordSet::loadFromArchive(&self->_volatileDateTimeCellCoordinates, *(a3 + 3));
    v5 = *(a3 + 4);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  TSCECellCoordSet::loadFromArchive(&self->_volatileRandomCellCoordinates, *(a3 + 4));
  v5 = *(a3 + 4);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  TSCECellCoordSet::loadFromArchive(&self->_volatileLocaleCellCoordinates, *(a3 + 5));
  v5 = *(a3 + 4);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    TSCECellCoordSet::loadFromArchive(&self->_volatileRemoteDataCellCoordinates, *(a3 + 7));
    if ((*(a3 + 4) & 0x20) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  TSCECellCoordSet::loadFromArchive(&self->_volatileSheetTableNamesCellCoordinates, *(a3 + 6));
  v5 = *(a3 + 4);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  v6 = *(a3 + 8);

  sub_2212E0790(&self->_volatileGeometryReferencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v6);
}

- (void)unpackAfterUnarchive
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2214D323C;
  v2[3] = &unk_27845F540;
  v2[4] = self;
  sub_2212DFEC0(&self->_volatileGeometryReferencesToThisTable, v2);
}

- (void)encodeToExpandedArchive:(void *)a3 embiggenedFormatOnly:(BOOL)a4
{
  if (!a4)
  {
    *(a3 + 4) |= 1u;
    v6 = *(a3 + 3);
    if (!v6)
    {
      v7 = *(a3 + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v7);
      *(a3 + 3) = v6;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileDateTimeCellCoordinates, v6);
    *(a3 + 4) |= 2u;
    v8 = *(a3 + 4);
    if (!v8)
    {
      v9 = *(a3 + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v9);
      *(a3 + 4) = v8;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileRandomCellCoordinates, v8);
    *(a3 + 4) |= 4u;
    v10 = *(a3 + 5);
    if (!v10)
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v11);
      *(a3 + 5) = v10;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileLocaleCellCoordinates, v10);
    *(a3 + 4) |= 8u;
    v12 = *(a3 + 6);
    if (!v12)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v13);
      *(a3 + 6) = v12;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileSheetTableNamesCellCoordinates, v12);
    *(a3 + 4) |= 0x20u;
    v14 = *(a3 + 8);
    if (!v14)
    {
      v15 = *(a3 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v15);
      *(a3 + 8) = v14;
    }

    sub_2212E0690(&self->_volatileGeometryReferencesToThisTable, v14);
  }

  *(a3 + 4) |= 0x10u;
  v16 = *(a3 + 7);
  if (!v16)
  {
    v17 = *(a3 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v17);
    *(a3 + 7) = v16;
  }

  TSCECellCoordSet::encodeToArchive(&self->_volatileRemoteDataCellCoordinates, v16);
}

- (void)deleteVolatileReferencesFromCell:(TSUCellCoord)a3
{
  v25 = a3;
  TSCECellCoordSet::removeCellCoord(&self->_volatileDateTimeCellCoordinates, &v25);
  TSCECellCoordSet::removeCellCoord(&self->_volatileRandomCellCoordinates, &v25);
  TSCECellCoordSet::removeCellCoord(&self->_volatileLocaleCellCoordinates, &v25);
  TSCECellCoordSet::removeCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &v25);
  TSCECellCoordSet::removeCellCoord(&self->_volatileRemoteDataCellCoordinates, &v25);
  objc_msgSend_clearRemoteDataKeyInterestedInForReference_(self, v4, &v25, v5, v6);
  v7 = sub_2214D4730(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, &v25);
  if (v7 == v8)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = v7;
    v15 = v8;
    v13 = 0;
    v12 = 0;
    do
    {
      if (!v13 || objc_msgSend_formulaOwnerUid(v13, v8, v9, v10, v11) != *(v14 + 3) || v8 != *(v14 + 4))
      {
        v16 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self->_dependencyTracker, v8, (v14 + 24), v10, v11);

        v21 = objc_msgSend_volatileDependencies(v16, v17, v18, v19, v20);

        v12 = v21;
        v13 = v16;
      }

      if (v12)
      {
        internalOwnerID = self->_internalOwnerID;
        v23 = *(v14 + 2) & 0xFFFFFFFFFFFFLL;
        v24 = internalOwnerID;
        sub_2212DFDD0(v12 + 40, &v23);
      }

      v14 = *v14;
    }

    while (v14 != v15);
  }

  sub_2214D4790(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, &v25);
}

- (void)removeAllPrecedents
{
  TSCECellCoordSet::clear(&self->_volatileDateTimeCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileRandomCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileLocaleCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileSheetTableNamesCellCoordinates);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2214D36F0;
  v19[3] = &unk_278465A18;
  v19[4] = self;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRemoteDataCellCoordinates._rectRepresentation.origin, v19);
  TSCECellCoordSet::clear(&self->_volatileRemoteDataCellCoordinates);
  next = self->_volatileGeometryPrecedents.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (!v8 || objc_msgSend_formulaOwnerUid(v8, v3, v4, v5, v6) != next[3] || v3 != next[4])
      {
        v10 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self->_dependencyTracker, v3, (next + 3), v5, v6);

        v15 = objc_msgSend_volatileDependencies(v10, v11, v12, v13, v14);

        v9 = v15;
        v8 = v10;
      }

      if (v9)
      {
        internalOwnerID = self->_internalOwnerID;
        v17 = next[2] & 0xFFFFFFFFFFFFLL;
        v18 = internalOwnerID;
        sub_2212DFDD0(v9 + 40, &v17);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_2210BE918(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_);
}

- (void)addRemoteDataPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4
{
  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRemoteDataCellCoordinates, a3))
  {

    TSCEReferenceSet::insertRef(a4, 0xB, v5, v6, v7);
  }
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)a3 toReferenceSet:(void *)a4
{
  if (TSCECellCoordSet::containsCellCoord(&self->_volatileDateTimeCellCoordinates, a3))
  {
    TSCEReferenceSet::insertRef(a4, 5, v7, v8, v9);
    TSCEReferenceSet::insertRef(a4, 4, v10, v11, v12);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRandomCellCoordinates, a3))
  {
    TSCEReferenceSet::insertRef(a4, 6, v13, v14, v15);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileLocaleCellCoordinates, a3))
  {
    TSCEReferenceSet::insertRef(a4, 7, v16, v17, v18);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRemoteDataCellCoordinates, a3))
  {
    TSCEReferenceSet::insertRef(a4, 0xB, v19, v20, v21);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileSheetTableNamesCellCoordinates, a3))
  {
    TSCEReferenceSet::insertRef(a4, 0xD, v22, v23, v24);
  }

  v25 = sub_2214D4730(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, a3);
  if (v25 != v26)
  {
    v27 = v25;
    v28 = v26;
    do
    {
      v29 = *(v27 + 3);
      TSCEReferenceSet::insertGeometryVolatileRef(a4, &v29);
      v27 = *v27;
    }

    while (v27 != v28);
  }
}

- (BOOL)addVolatileTimeReference:(TSUCellCoord)a3
{
  v4 = a3;
  TSCECellCoordSet::addCellCoord(&self->_volatileDateTimeCellCoordinates, &v4);
  return 1;
}

- (BOOL)addVolatileRandomReference:(TSUCellCoord)a3
{
  v4 = a3;
  TSCECellCoordSet::addCellCoord(&self->_volatileRandomCellCoordinates, &v4);
  return 1;
}

- (BOOL)addVolatileLocaleReference:(TSUCellCoord)a3
{
  v4 = a3;
  TSCECellCoordSet::addCellCoord(&self->_volatileLocaleCellCoordinates, &v4);
  return 1;
}

- (BOOL)addVolatileRemoteDataReference:(TSUCellCoord)a3
{
  v4 = a3;
  TSCECellCoordSet::addCellCoord(&self->_volatileRemoteDataCellCoordinates, &v4);
  return 1;
}

- (BOOL)replaceRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)a3 specifierSet:(id)a4
{
  v6 = a4;
  size = self->_remoteDataKeysForCellCoordinate.__table_.__size_;
  if (size)
  {
    v79 = a3;
    size = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, a3)[3];
  }

  v8 = size;
  if (v6 | v8)
  {
    v12 = v8;
    if ((objc_msgSend_isEqual_(v6, v9, v8, v10, v11) & 1) == 0)
    {
      if (!v6)
      {
        v6 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v13, v14, v15, v16);
      }

      v79 = 0;
      v80 = &v79;
      v81 = 0x3032000000;
      v82 = sub_2214D3CF4;
      v83 = sub_2214D3D04;
      v84 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v13, v14, v15, v16);
      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = sub_2214D3CF4;
      v77 = sub_2214D3D04;
      v78 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v17, v18, v19, v20);
      if (!v12)
      {
        v12 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v21, v22, v23, v24);
        v85 = a3;
        v25 = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, a3);
        objc_storeStrong(v25 + 3, v12);
      }

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_2214D3D0C;
      v72[3] = &unk_2784665E8;
      v72[4] = self;
      v72[5] = &v79;
      v72[6] = a3;
      objc_msgSend_enumerateSpecifiersWithBlock_(v12, v21, v72, v23, v24);
      objc_msgSend_removeAllSpecifiers(v12, v26, v27, v28, v29);
      v63 = MEMORY[0x277D85DD0];
      v64 = 3221225472;
      v65 = sub_2214D3DF4;
      v66 = &unk_278466610;
      v69 = &v79;
      v67 = self;
      v70 = &v73;
      v71 = a3;
      v30 = v12;
      v68 = v30;
      objc_msgSend_enumerateSpecifiersWithBlock_(v6, v31, &v63, v32, v33);
      if (objc_msgSend_count(v74[5], v34, v35, v36, v37, v63, v64, v65, v66, v67))
      {
        v42 = objc_msgSend_calcEngine(self->_dependencyTracker, v38, v39, v40, v41);
        v47 = objc_msgSend_remoteDataStore(v42, v43, v44, v45, v46);
        objc_msgSend_addRemoteDataInterest_forOwner_(v47, v48, v74[5], &self->_ownerUID, v49);
      }

      if (objc_msgSend_count(v80[5], v38, v39, v40, v41))
      {
        v54 = objc_msgSend_calcEngine(self->_dependencyTracker, v50, v51, v52, v53);
        v59 = objc_msgSend_remoteDataStore(v54, v55, v56, v57, v58);
        objc_msgSend_removeRemoteDataInterest_forOwner_(v59, v60, v80[5], &self->_ownerUID, v61);
      }

      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v79, 8);

      v12 = v30;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

  return 1;
}

- (void)clearRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)a3
{
  if (self->_remoteDataKeysForCellCoordinate.__table_.__size_)
  {
    v39 = a3;
    v5 = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, a3)[3];
    v10 = v5;
    if (v5 && objc_msgSend_count(v5, v6, v7, v8, v9))
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = sub_2214D3CF4;
      v43 = sub_2214D3D04;
      v44 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v11, v12, v13, v14);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2214D40C4;
      v38[3] = &unk_2784665E8;
      v38[5] = &v39;
      v38[6] = a3;
      v38[4] = self;
      objc_msgSend_enumerateSpecifiersWithBlock_(v10, v15, v38, v16, v17);
      objc_msgSend_removeAllSpecifiers(v10, v18, v19, v20, v21);
      if (objc_msgSend_count(v40[5], v22, v23, v24, v25))
      {
        v30 = objc_msgSend_calcEngine(self->_dependencyTracker, v26, v27, v28, v29);
        v35 = objc_msgSend_remoteDataStore(v30, v31, v32, v33, v34);
        objc_msgSend_removeRemoteDataInterest_forOwner_(v35, v36, v40[5], &self->_ownerUID, v37);
      }

      _Block_object_dispose(&v39, 8);
    }
  }

  else
  {
    v10 = 0;
  }
}

- (BOOL)addVolatileSheetTableNameReference:(TSUCellCoord)a3
{
  v4 = a3;
  TSCECellCoordSet::addCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &v4);
  return 1;
}

- (BOOL)addVolatileGeometryReference:(const TSCEInternalCellReference *)a3
{
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, a2, a3->tableID, v3, v4);
  v13 = objc_msgSend_volatileDependencies(v7, v8, v9, v10, v11);
  if (v7)
  {
    goto LABEL_4;
  }

  objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v12, a3->tableID, 0, 0);
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v14, a3->tableID, v15, v16);
  v21 = objc_msgSend_volatileDependencies(v7, v17, v18, v19, v20);

  if (v21)
  {
    v13 = v21;
LABEL_4:
    v25 = v7;
    goto LABEL_5;
  }

  v27 = MEMORY[0x277D81150];
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEVolatileDependencies addVolatileGeometryReference:]", v23, v24);
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v30, v31);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 465, 0, "NULL volatile dependencies");

  v13 = 0;
  v25 = v7;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
LABEL_5:
  sub_2212DFCE8(&self->_volatileGeometryReferencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a3);
  if (v13)
  {
    sub_2214D4F5C();
  }

  return 1;
}

- (BOOL)dirtyRemoteDataVolatileCellsForKeys:(id)a3 refsToDirty:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2214D44A0;
  v12[3] = &unk_278466638;
  v13 = v6;
  v14 = &v15;
  v12[4] = self;
  v7 = v6;
  objc_msgSend_enumerateSpecifiersWithBlock_(a3, v8, v12, v9, v10);
  LOBYTE(a3) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a3;
}

- (BOOL)isEmpty
{
  isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileDateTimeCellCoordinates);
  if (isEmpty)
  {
    isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileRandomCellCoordinates);
    if (isEmpty)
    {
      isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileLocaleCellCoordinates);
      if (isEmpty)
      {
        isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileRemoteDataCellCoordinates);
        if (isEmpty)
        {
          isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileSheetTableNamesCellCoordinates);
          if (isEmpty)
          {
            isEmpty = sub_2212E0280(&self->_volatileGeometryReferencesToThisTable);
            if (isEmpty)
            {
              LOBYTE(isEmpty) = self->_volatileGeometryPrecedents.__table_.__size_ == 0;
            }
          }
        }
      }
    }
  }

  return isEmpty;
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
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = self + 64;
  *(self + 13) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = self + 104;
  *(self + 18) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 23) = 0;
  *(self + 16) = 0;
  *(self + 17) = self + 144;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = self + 184;
  *(self + 29) = 0;
  *(self + 28) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 27) = self + 224;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 68) = 1065353216;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 78) = 1065353216;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 88) = 1065353216;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 98) = 1065353216;
  return self;
}

@end