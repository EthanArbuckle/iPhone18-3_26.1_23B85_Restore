@interface TSCEFormulaRewriteInfo_RowColumnInfo
- (BOOL)indexIsAffected:(unsigned int)a3;
- (BOOL)isForTable:(const TSKUIDStruct *)a3;
- (NSIndexSet)rowOrColumnIndices;
- (TSCECellRef)originalCellRefForRewriteType:(SEL)a3 updatedCellRef:(unsigned int)a4;
- (TSCECellRef)updatedCellRefForRewriteType:(SEL)a3 originalCellRef:(unsigned int)a4;
- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithFormulaOwnerUID:(const TSKUIDStruct *)a3 uuids:(const void *)a4 areRows:(BOOL)a5;
- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithTableUID:(const TSKUIDStruct *)a3 condStyleOwnerUID:(const TSKUIDStruct *)a4 groupByUID:(const TSKUIDStruct *)a5 uuids:(const void *)a6 atIndexes:(const void *)a7 areRows:(BOOL)a8;
- (TSCERangeCoordinate)affectedRangeForInsertRows;
- (TSCERangeCoordinate)affectedRangeForMoveRows;
- (TSCERangeCoordinate)affectedRangeForRemoveRows;
- (TSCERangeCoordinate)tableRange;
- (TSKUIDStruct)insertAtUid;
- (TSKUIDStruct)insertOppositeUid;
- (TSKUIDStruct)uuidForIndex:(unsigned int)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUuidsForRange:(SEL)a3 inTable:(_NSRange)a4 areRows:(id)a5 shuffleMap:(BOOL)a6;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsForIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsInRange:(SEL)a3;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)a3;
- (unsigned)columnIndexForUuid:(const TSKUIDStruct *)a3;
- (unsigned)offsetForRowIndex:(unsigned int)a3;
- (unsigned)offsetForUpdatedRowIndex:(unsigned int)a3 isRemoveRows:(BOOL)a4;
- (unsigned)rowIndexForUuid:(const TSKUIDStruct *)a3;
- (vector<TSCERangeCoordinate,)coordRangesForInsertRemove;
- (void)createAuxRowColumnInfoForMove;
- (void)loadIndexesForTable:(id)a3 uidResolver:(id)a4 forRemoveRows:(BOOL)a5 shuffleMap:(id)a6;
- (void)saveToMessage:(void *)a3;
- (void)setInsertAtUid:(TSKUIDStruct)a3;
- (void)setInsertOppositeUid:(TSKUIDStruct)a3;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewriteInfo_RowColumnInfo

- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithFormulaOwnerUID:(const TSKUIDStruct *)a3 uuids:(const void *)a4 areRows:(BOOL)a5
{
  v17.receiver = self;
  v17.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v8 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v17 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = *a3;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    v10 = [TSCEFormulaRewrite_Uids alloc];
    v14 = objc_msgSend_initWithUids_(v10, v11, a4, v12, v13);
    rowOrColumnUids = v9->_rowOrColumnUids;
    v9->_rowOrColumnUids = v14;

    if (&v9->_rowOrColumnUuids != a4)
    {
      sub_2210BD068(&v9->_rowOrColumnUuids.__begin_, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 4);
    }

    v9->_isRows = a5;
  }

  return v9;
}

- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithTableUID:(const TSKUIDStruct *)a3 condStyleOwnerUID:(const TSKUIDStruct *)a4 groupByUID:(const TSKUIDStruct *)a5 uuids:(const void *)a6 atIndexes:(const void *)a7 areRows:(BOOL)a8
{
  v41.receiver = self;
  v41.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v14 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v41 init];
  v15 = v14;
  if (v14)
  {
    v14->_tableUID = *a3;
    v14->_conditionalStyleOwnerUID = *a4;
    v14->_groupByUID = *a5;
    v16 = [TSCEFormulaRewrite_Uids alloc];
    v19 = objc_msgSend_initWithUids_atIndexes_(v16, v17, a6, a7, v18);
    rowOrColumnUids = v15->_rowOrColumnUids;
    v15->_rowOrColumnUids = v19;

    if (&v15->_rowOrColumnUuids != a6)
    {
      sub_2210BD068(&v15->_rowOrColumnUuids.__begin_, *a6, *(a6 + 1), (*(a6 + 1) - *a6) >> 4);
    }

    v15->_isRows = a8;
    v21 = objc_opt_new();
    objc_storeStrong(&v15->_rangeEntries, v21);
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    v26 = objc_msgSend_indexes(v15->_rowOrColumnUids, v22, v23, v24, v25);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2212C8868;
    v32[3] = &unk_278462A58;
    v33 = v15;
    v35 = v39;
    v36 = v37;
    v27 = v21;
    v34 = v27;
    objc_msgSend_enumerateRangesUsingBlock_(v26, v28, v32, v29, v30);

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);
  }

  return v15;
}

- (BOOL)isForTable:(const TSKUIDStruct *)a3
{
  lower = a3->_lower;
  if (a3->_lower == self->_tableUID._lower && a3->_upper == self->_tableUID._upper || lower == self->_conditionalStyleOwnerUID._lower && a3->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    return 1;
  }

  if (lower == self->_groupByUID._lower)
  {
    return a3->_upper == self->_groupByUID._upper;
  }

  return 0;
}

- (id)initFromMessage:(const void *)a3
{
  v43.receiver = self;
  v43.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v5 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v43 init];
  if (v5)
  {
    v6 = MEMORY[0x277D809E0];
    if (*(a3 + 6))
    {
      v7 = *(a3 + 6);
    }

    else
    {
      v7 = MEMORY[0x277D809E0];
    }

    v5->_tableUID._lower = TSKUIDStruct::loadFromMessage(v7, v4);
    v5->_tableUID._upper = v8;
    if (*(a3 + 7))
    {
      v9 = *(a3 + 7);
    }

    else
    {
      v9 = v6;
    }

    v5->_conditionalStyleOwnerUID._lower = TSKUIDStruct::loadFromMessage(v9, v8);
    v5->_conditionalStyleOwnerUID._upper = v10;
    if (*(a3 + 8))
    {
      v11 = *(a3 + 8);
    }

    else
    {
      v11 = v6;
    }

    v5->_groupByUID._lower = TSKUIDStruct::loadFromMessage(v11, v10);
    v5->_groupByUID._upper = v12;
    v5->_isRows = *(a3 + 104);
    v13 = [TSCEFormulaRewrite_Uids alloc];
    if (*(a3 + 9))
    {
      v17 = objc_msgSend_initFromMessage_(v13, v14, *(a3 + 9), v15, v16);
    }

    else
    {
      v17 = objc_msgSend_initFromMessage_(v13, v14, &TSCE::_IndexedUidsArchive_default_instance_, v15, v16);
    }

    rowOrColumnUids = v5->_rowOrColumnUids;
    v5->_rowOrColumnUids = v17;

    v26 = objc_msgSend_uids(v5->_rowOrColumnUids, v19, v20, v21, v22);
    if (&v5->_rowOrColumnUuids != v26)
    {
      sub_2210BD068(&v5->_rowOrColumnUuids.__begin_, *v26, v26[1], (v26[1] - *v26) >> 4);
    }

    v27 = *(a3 + 8);
    v28 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v23, v27, v24, v25);
    if (v27 >= 1)
    {
      v29 = 8;
      do
      {
        v30 = [TSCEFormulaRewriteInfo_RangeEntry alloc];
        v34 = objc_msgSend_initFromMessage_(v30, v31, *(*(a3 + 5) + v29), v32, v33);
        objc_msgSend_addObject_(v28, v35, v34, v36, v37);

        v29 += 8;
        --v27;
      }

      while (v27);
    }

    objc_storeStrong(&v5->_rangeEntries, v28);
    if (*(a3 + 10))
    {
      v38 = *(a3 + 10);
    }

    else
    {
      v38 = &TSCE::_RangeCoordinateArchive_default_instance_;
    }

    v5->_tableRange._topLeft = sub_22126987C(v38);
    v5->_tableRange._bottomRight = v39;
    v40 = *(a3 + 4);
    if ((v40 & 0x20) != 0)
    {
      v5->_insertAtUid._lower = TSKUIDStruct::loadFromMessage(*(a3 + 11), v39);
      v5->_insertAtUid._upper = v39;
      v40 = *(a3 + 4);
    }

    if ((v40 & 0x40) != 0)
    {
      v5->_insertOppositeUid._lower = TSKUIDStruct::loadFromMessage(*(a3 + 12), v39);
      v5->_insertOppositeUid._upper = v41;
    }
  }

  return v5;
}

- (void)saveToMessage:(void *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  *(a3 + 4) |= 1u;
  v5 = *(a3 + 6);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(a3 + 6) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 7);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(a3 + 7) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_conditionalStyleOwnerUID, v7);
  *(a3 + 4) |= 4u;
  v9 = *(a3 + 8);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0360](v10);
    *(a3 + 8) = v9;
  }

  TSKUIDStruct::saveToMessage(&self->_groupByUID, v9);
  isRows = self->_isRows;
  v15 = *(a3 + 4) | 0x80;
  *(a3 + 4) = v15;
  *(a3 + 104) = isRows;
  rowOrColumnUids = self->_rowOrColumnUids;
  if (!rowOrColumnUids)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaRewriteInfo_RowColumnInfo saveToMessage:]", v12, v13);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 542, 0, "Cannot archive until we have called loadIndexesForTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    rowOrColumnUids = self->_rowOrColumnUids;
    v15 = *(a3 + 4);
  }

  *(a3 + 4) = v15 | 8;
  v28 = *(a3 + 9);
  if (!v28)
  {
    v29 = *(a3 + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v29);
    *(a3 + 9) = v28;
  }

  objc_msgSend_saveToMessage_(rowOrColumnUids, v11, v28, v12, v13);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = self->_rangeEntries;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v54, v58, 16);
  if (v35)
  {
    v36 = *v55;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = *(*(&v54 + 1) + 8 * i);
        v39 = *(a3 + 5);
        if (!v39)
        {
          goto LABEL_29;
        }

        v40 = *(a3 + 8);
        v41 = *v39;
        if (v40 < *v39)
        {
          *(a3 + 8) = v40 + 1;
          objc_msgSend_saveToMessage_(v38, v32, *&v39[2 * v40 + 2], v33, v34, v54);
          continue;
        }

        if (v41 == *(a3 + 9))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v39 = *(a3 + 5);
          v41 = *v39;
        }

        *v39 = v41 + 1;
        v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteRangeEntryArchive>(*(a3 + 3));
        v43 = *(a3 + 8);
        v44 = *(a3 + 5) + 8 * v43;
        *(a3 + 8) = v43 + 1;
        *(v44 + 8) = v42;
        objc_msgSend_saveToMessage_(v38, v45, v42, v46, v47, v54);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v54, v58, 16);
    }

    while (v35);
  }

  *(a3 + 4) |= 0x10u;
  v48 = *(a3 + 10);
  if (!v48)
  {
    v49 = *(a3 + 1);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v49);
    *(a3 + 10) = v48;
  }

  sub_221269844(&self->_tableRange, v48);
  if (self->_insertAtUid._lower || self->_insertAtUid._upper)
  {
    *(a3 + 4) |= 0x20u;
    v50 = *(a3 + 11);
    if (!v50)
    {
      v51 = *(a3 + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x223DA0360](v51);
      *(a3 + 11) = v50;
    }

    TSKUIDStruct::saveToMessage(&self->_insertAtUid, v50);
  }

  if (self->_insertOppositeUid._lower || self->_insertOppositeUid._upper)
  {
    *(a3 + 4) |= 0x40u;
    v52 = *(a3 + 12);
    if (!v52)
    {
      v53 = *(a3 + 1);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA0360](v53);
      *(a3 + 12) = v52;
    }

    TSKUIDStruct::saveToMessage(&self->_insertOppositeUid, v52);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUuidsForRange:(SEL)a3 inTable:(_NSRange)a4 areRows:(id)a5 shuffleMap:(BOOL)a6
{
  v8 = a6;
  length = a4.length;
  location = a4.location;
  v12 = a5;
  v16 = a7;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if (!v16)
  {
    if (v8)
    {
      if (v12)
      {
        objc_msgSend_rowUIDsForRowRange_(v12, v13, location, length, v15);
LABEL_15:
        v28 = v31;
        *&retstr->__begin_ = v30;
        retstr->__cap_ = v28;
        goto LABEL_16;
      }
    }

    else if (v12)
    {
      objc_msgSend_columnUIDsForColumnRange_(v12, v13, location, length, v15);
      goto LABEL_15;
    }

    v30 = 0uLL;
    v31 = 0;
    goto LABEL_15;
  }

  v17 = location + length;
  if (v8)
  {
    if (location < v17)
    {
      do
      {
        v18 = objc_msgSend_reverseMapIndex_(v16, v13, location, v14, v15);
        *&v30 = objc_msgSend_rowUIDForRowIndex_(v12, v19, v18, v20, v21, 0, 0);
        *(&v30 + 1) = v22;
        sub_221083454(retstr, &v30);
        location = (location + 1);
        LODWORD(length) = length - 1;
      }

      while (length);
    }
  }

  else if (location < v17)
  {
    do
    {
      v23 = objc_msgSend_reverseMapIndex_(v16, v13, location, v14, v15);
      *&v30 = objc_msgSend_columnUIDForColumnIndex_(v12, v24, v23, v25, v26, 0, 0);
      *(&v30 + 1) = v27;
      sub_221083454(retstr, &v30);
      location = (location + 1);
      LODWORD(length) = length - 1;
    }

    while (length);
  }

LABEL_16:

  return result;
}

- (void)loadIndexesForTable:(id)a3 uidResolver:(id)a4 forRemoveRows:(BOOL)a5 shuffleMap:(id)a6
{
  v10 = a3;
  v11 = a4;
  v48 = a6;
  objc_msgSend_unloadIndexes(self, v12, v13, v14, v15);
  self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(v10, v16, v17, v18, v19);
  self->_conditionalStyleOwnerUID._upper = v20;
  self->_groupByUID._lower = objc_msgSend_groupByUID(v10, v20, v21, v22, v23);
  self->_groupByUID._upper = v24;
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_rowOrColumnUids, v24, v11, self->_isRows, v48);
  self->_tableRange._topLeft = objc_msgSend_tableRangeCoordinate(v11, v25, v26, v27, v28);
  self->_tableRange._bottomRight = v29;
  v30 = objc_opt_new();
  objc_storeStrong(&self->_rangeEntries, v30);
  v31 = objc_opt_new();
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v36 = objc_msgSend_indexes(self->_rowOrColumnUids, v32, v33, v34, v35);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2212C94A4;
  v49[3] = &unk_278462A80;
  v49[4] = self;
  v37 = v11;
  v50 = v37;
  v38 = v48;
  v51 = v38;
  v54 = v59;
  v55 = v57;
  v56 = a5;
  v39 = v30;
  v52 = v39;
  v40 = v31;
  v53 = v40;
  objc_msgSend_enumerateRangesUsingBlock_(v36, v41, v49, v42, v43);

  v46 = objc_msgSend_UIDSetForIndexes_isRows_(v37, v44, v40, self->_isRows, v45);
  expandedRowColumnUuids = self->_expandedRowColumnUuids;
  self->_expandedRowColumnUuids = v46;

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
}

- (void)setInsertAtUid:(TSKUIDStruct)a3
{
  self->_insertAtUid = a3;
  auxRowColumnInfo = self->_auxRowColumnInfo;
  if (auxRowColumnInfo)
  {
    (MEMORY[0x2821F9670])(auxRowColumnInfo, sel_setInsertAtUid_, a3._lower, a3._upper);
  }
}

- (void)setInsertOppositeUid:(TSKUIDStruct)a3
{
  self->_insertOppositeUid = a3;
  auxRowColumnInfo = self->_auxRowColumnInfo;
  if (auxRowColumnInfo)
  {
    (MEMORY[0x2821F9670])(auxRowColumnInfo, sel_setInsertOppositeUid_, a3._lower, a3._upper);
  }
}

- (void)createAuxRowColumnInfoForMove
{
  v3 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_tableUID(self, v4, v5, v6, v7);
  v13 = objc_msgSend_rowOrColumnUuids(self, v9, v10, v11, v12);
  isRows = objc_msgSend_isRows(self, v14, v15, v16, v17);
  v20 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v3, v19, v8, v13, isRows);
  auxRowColumnInfo = self->_auxRowColumnInfo;
  self->_auxRowColumnInfo = v20;

  self->_auxRowColumnInfo->_conditionalStyleOwnerUID = *objc_msgSend_conditionalStyleOwnerUID(self, v22, v23, v24, v25);
  self->_auxRowColumnInfo->_groupByUID = *objc_msgSend_groupByUID(self, v26, v27, v28, v29);
  v34 = objc_msgSend_insertAtUid(self, v30, v31, v32, v33);
  v35 = self->_auxRowColumnInfo;
  v35->_insertAtUid._lower = v34;
  v35->_insertAtUid._upper = v36;
  inserted = objc_msgSend_insertOppositeUid(self, v36, v37, v38, v39);
  v41 = self->_auxRowColumnInfo;
  v41->_insertOppositeUid._lower = inserted;
  v41->_insertOppositeUid._upper = v42;
}

- (void)unloadIndexes
{
  rangeEntries = self->_rangeEntries;
  self->_rangeEntries = 0;

  auxRowColumnInfo = self->_auxRowColumnInfo;
  self->_auxRowColumnInfo = 0;

  expandedRowColumnUuids = self->_expandedRowColumnUuids;
  self->_expandedRowColumnUuids = 0;
}

- (unsigned)offsetForRowIndex:(unsigned int)a3
{
  v44 = *MEMORY[0x277D85DE8];
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForRowIndex:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12, v13);
    v15 = NSStringFromSelector(a2);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v10, v14, 670, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v15, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    rangeEntries = self->_rangeEntries;
  }

  if (objc_msgSend_count(rangeEntries, a2, *&a3, v3, v4) >= 0xA && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F76B0();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_rangeEntries;
  v24 = 0;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v39, v43, 16);
  if (v29)
  {
    v30 = *v40;
    v31 = a3;
LABEL_8:
    v32 = 0;
    while (1)
    {
      if (*v40 != v30)
      {
        objc_enumerationMutation(v22);
      }

      v33 = *(*(&v39 + 1) + 8 * v32);
      if (objc_msgSend_range(v33, v25, v26, v27, v28) > v31)
      {
        break;
      }

      v24 = objc_msgSend_offset(v33, v34, v35, v36, v37);
      if (v29 == ++v32)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v39, v43, 16);
        if (v29)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  return v24;
}

- (unsigned)offsetForUpdatedRowIndex:(unsigned int)a3 isRemoveRows:(BOOL)a4
{
  v5 = a4;
  v80 = *MEMORY[0x277D85DE8];
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForUpdatedRowIndex:isRemoveRows:]", a4, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13, v14);
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v15, 692, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    rangeEntries = self->_rangeEntries;
  }

  if (objc_msgSend_count(rangeEntries, a2, *&a3, a4, v4) >= 0xA && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F76C4();
  }

  if (v5)
  {
    v76 = 0uLL;
    v77 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    v23 = self->_rangeEntries;
    v25 = 0;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v74, v79, 16);
    if (v30)
    {
      v31 = *v75;
LABEL_9:
      v32 = 0;
      while (1)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v23);
        }

        v33 = *(*(&v74 + 1) + 8 * v32);
        if (objc_msgSend_range(v33, v26, v27, v28, v29) > (v25 + a3))
        {
          break;
        }

        v25 = objc_msgSend_offset(v33, v34, v35, v36, v37);
        if (v30 == ++v32)
        {
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v74, v79, 16);
          if (v30)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    if (objc_msgSend_offsetForRowIndex_(self, v38, v25 + a3, v39, v40) != v25)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForUpdatedRowIndex:isRemoveRows:]", v42, v43);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 712, 0, "This should be the same offset, then, right");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }
  }

  else
  {
    v72 = 0uLL;
    v73 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v55 = self->_rangeEntries;
    v25 = 0;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v70, v78, 16);
    if (v61)
    {
      v62 = *v71;
LABEL_19:
      v63 = 0;
      while (1)
      {
        if (*v71 != v62)
        {
          objc_enumerationMutation(v55);
        }

        v64 = *(*(&v70 + 1) + 8 * v63);
        if (objc_msgSend_range(v64, v57, v58, v59, v60) > (a3 - v25))
        {
          break;
        }

        v25 = objc_msgSend_offset(v64, v65, v66, v67, v68);
        if (v61 == ++v63)
        {
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v70, v78, 16);
          if (v61)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }
  }

  return v25;
}

- (TSCECellRef)updatedCellRefForRewriteType:(SEL)a3 originalCellRef:(unsigned int)a4
{
  v8 = self;
  *retstr = *a5;
  if (!*&self[4].coordinate)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5, v5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v14, v15);
    v17 = NSStringFromSelector(a3);
    v18 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 730, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v17, v18);

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (a4 <= 0x11)
  {
    if (((1 << a4) & 0x20380) != 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5, v5);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 776, 0, "Should not see this call, its more complex than that");
      goto LABEL_21;
    }

    if (((1 << a4) & 0x1030) != 0)
    {
      v31 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5, v5);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v25, v29, 769, 0, "Should not see this call, we should get either the insert or remove rewrite types");
      goto LABEL_21;
    }

    if (((1 << a4) & 0x12400) != 0)
    {
      return self;
    }
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      tableUID = a5->_tableUID;
      self = objc_msgSend_isForTable_(v8, a3, &tableUID, a5, v5);
      if (self)
      {
        isRows = objc_msgSend_isRows(v8, v36, v37, v38, v39);
        coordinate = a5->coordinate;
        if (isRows)
        {
          self = objc_msgSend_offsetForRowIndex_(v8, v41, coordinate, v42, v43);
          v45 = retstr->coordinate.row + self;
LABEL_19:
          retstr->coordinate.row = v45;
          return self;
        }

        self = objc_msgSend_offsetForRowIndex_(v8, v41, WORD2(coordinate), v42, v43);
        v79 = retstr->coordinate.column + self;
LABEL_28:
        retstr->coordinate.column = v79;
        return self;
      }

      return self;
    }

    v65 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5, v5);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v25, v29, 734, 0, "Not implemented for this rewrite type");
LABEL_21:

    v74 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v74, v70, v71, v72, v73);
  }

  tableUID = a5->_tableUID;
  self = objc_msgSend_isForTable_(v8, a3, &tableUID, a5, v5);
  if (self)
  {
    v50 = objc_msgSend_isRows(v8, v46, v47, v48, v49);
    v55 = objc_msgSend_rowOrColumnUids(v8, v51, v52, v53, v54);
    v59 = v55;
    v60 = retstr->coordinate;
    if (v50)
    {
      v61 = objc_msgSend_containsIndex_(v55, v56, *&retstr->coordinate, v57, v58);

      if (!v61)
      {
        self = objc_msgSend_offsetForRowIndex_(v8, v62, a5->coordinate.row, v63, v64);
        v45 = v60.row - self;
        goto LABEL_19;
      }
    }

    else
    {
      v75 = objc_msgSend_containsIndex_(v55, v56, v60.column, v57, v58);

      if (!v75)
      {
        self = objc_msgSend_offsetForRowIndex_(v8, v76, a5->coordinate.column, v77, v78);
        v79 = v60.column - self;
        goto LABEL_28;
      }
    }

    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
    retstr->coordinate = 0x7FFF7FFFFFFFLL;
  }

  return self;
}

- (TSCECellRef)originalCellRefForRewriteType:(SEL)a3 updatedCellRef:(unsigned int)a4
{
  v8 = self;
  *retstr = *a5;
  if (!*&self[4].coordinate)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5, v5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v14, v15);
    v17 = NSStringFromSelector(a3);
    v18 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 792, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v17, v18);

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (a4 <= 0x11)
  {
    if (((1 << a4) & 0x20380) != 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5, v5);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 841, 0, "Should not see this call, its more complex than that");
      goto LABEL_21;
    }

    if (((1 << a4) & 0x1030) != 0)
    {
      v31 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5, v5);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v25, v29, 834, 0, "Should not see this call, we should get either the insert or remove rewrite types");
      goto LABEL_21;
    }

    if (((1 << a4) & 0x12400) != 0)
    {
      return self;
    }
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      tableUID = a5->_tableUID;
      self = objc_msgSend_isForTable_(v8, a3, &tableUID, a5, v5);
      if (self)
      {
        isRows = objc_msgSend_isRows(v8, v36, v37, v38, v39);
        v45 = objc_msgSend_rowOrColumnUids(v8, v41, v42, v43, v44);
        v49 = v45;
        coordinate = a5->coordinate;
        if (isRows)
        {
          v51 = objc_msgSend_containsIndex_(v45, v46, coordinate, v47, v48);

          if (!v51)
          {
            self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(v8, v52, a5->coordinate.row, 0, v53);
            v54 = retstr->coordinate.row - self;
LABEL_19:
            retstr->coordinate.row = v54;
            return self;
          }

LABEL_26:
          retstr->_tableUID._lower = 0;
          retstr->_tableUID._upper = 0;
          retstr->coordinate = 0x7FFF7FFFFFFFLL;
          return self;
        }

        v74 = objc_msgSend_containsIndex_(v45, v46, WORD2(coordinate), v47, v48);

        if (v74)
        {
          goto LABEL_26;
        }

        self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(v8, v75, a5->coordinate.column, 0, v76);
        v73 = retstr->coordinate.column - self;
LABEL_28:
        retstr->coordinate.column = v73;
        return self;
      }

      return self;
    }

    v63 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5, v5);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v65, v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v25, v29, 796, 0, "Not implemented for this rewrite type");
LABEL_21:

    v72 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v72, v68, v69, v70, v71);
  }

  tableUID = a5->_tableUID;
  self = objc_msgSend_isForTable_(v8, a3, &tableUID, a5, v5);
  if (self)
  {
    v59 = objc_msgSend_isRows(v8, v55, v56, v57, v58);
    v62 = a5->coordinate;
    if (v59)
    {
      self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(v8, v60, v62, 1, v61);
      v54 = retstr->coordinate.row + self;
      goto LABEL_19;
    }

    self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(v8, v60, WORD2(v62), 1, v61);
    v73 = retstr->coordinate.column + self;
    goto LABEL_28;
  }

  return self;
}

- (BOOL)indexIsAffected:(unsigned int)a3
{
  v5 = *&a3;
  if (!self->_rangeEntries)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo indexIsAffected:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11, v12);
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v9, v13, 855, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_containsIndex_(rowOrColumnUids, a2, v5, v3, v4);
}

- (TSKUIDStruct)uuidForIndex:(unsigned int)a3
{
  v5 = *&a3;
  if (!self->_rangeEntries)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidForIndex:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11, v12);
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v9, v13, 860, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  v22 = objc_msgSend_uidForIndex_(rowOrColumnUids, a2, v5, v3, v4);
  result._upper = v23;
  result._lower = v22;
  return result;
}

- (unsigned)columnIndexForUuid:(const TSKUIDStruct *)a3
{
  if (!self->_rangeEntries)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo columnIndexForUuid:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11, v12);
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v9, v13, 865, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_columnIndexForUid_(rowOrColumnUids, a2, a3, v3, v4);
}

- (unsigned)rowIndexForUuid:(const TSKUIDStruct *)a3
{
  if (!self->_rangeEntries)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo rowIndexForUuid:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11, v12);
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v9, v13, 870, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_rowIndexForUid_(rowOrColumnUids, a2, a3, v3, v4);
}

- (NSIndexSet)rowOrColumnIndices
{
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo rowOrColumnIndices]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10, v11);
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v8, v12, 875, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v13, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_indexes(rowOrColumnUids, a2, v2, v3, v4);
}

- (TSCERangeCoordinate)tableRange
{
  if (!self->_rangeEntries)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo tableRange]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v9, v10);
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v14, v7, v11, 880, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForRemoveRows
{
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForRemoveRows]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10, v11);
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v8, v12, 885, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v13, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  v22 = objc_msgSend_indexes(self->_rowOrColumnUids, a2, v2, v3, v4);
  v31 = HIDWORD(*&topLeft);
  if (!objc_msgSend_count(v22, v23, v24, v25, v26))
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_isRows(self, v27, v28, v29, v30))
  {
    LOWORD(v31) = objc_msgSend_firstIndex(v22, v32, v33, v34, v35);
LABEL_7:
    row = topLeft.row;
    goto LABEL_8;
  }

  row = objc_msgSend_firstIndex(v22, v32, v33, v34, v35);
LABEL_8:

  v37 = *&topLeft & 0xFFFF000000000000 | row | (v31 << 32);
  v38 = bottomRight;
  result._bottomRight = v38;
  result._topLeft = v37;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForInsertRows
{
  if (self->_useWholeTableForInsertionDependencies)
  {
    topLeft = self->_tableRange._topLeft;
    bottomRight = self->_tableRange._bottomRight;
  }

  else
  {
    topLeft = objc_msgSend_affectedRangeForRemoveRows(self, a2, v2, v3, v4);
  }

  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForMoveRows
{
  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  v13 = objc_msgSend_auxRowColumnInfo(self, a2, v2, v3, v4);
  if (!self->_rangeEntries)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForMoveRows]", v11, v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v17, v18);
    v20 = NSStringFromSelector(a2);
    v21 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v15, v19, 918, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v20, v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = HIDWORD(*&topLeft);
  if (v13)
  {
    v28 = objc_msgSend_indexes(self->_rowOrColumnUids, v9, v10, v11, v12);
    Index = objc_msgSend_firstIndex(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_rowOrColumnUids(v13, v34, v35, v36, v37);
    v43 = objc_msgSend_indexes(v38, v39, v40, v41, v42);
    v48 = objc_msgSend_firstIndex(v43, v44, v45, v46, v47);
    if (v48 >= Index)
    {
      v49 = Index;
    }

    else
    {
      v49 = v48;
    }

    v54 = objc_msgSend_indexes(self->_rowOrColumnUids, v50, v51, v52, v53);
    v59 = objc_msgSend_lastIndex(v54, v55, v56, v57, v58);
    v64 = objc_msgSend_rowOrColumnUids(v13, v60, v61, v62, v63);
    v69 = objc_msgSend_indexes(v64, v65, v66, v67, v68);
    v74 = objc_msgSend_lastIndex(v69, v70, v71, v72, v73);
    if (v59 <= v74)
    {
      LODWORD(v59) = v74;
    }

    if (objc_msgSend_isRows(self, v75, v76, v77, v78))
    {
      bottomRight = bottomRight & 0xFFFFFFFF00000000 | v59;
      row = v49;
    }

    else
    {
      bottomRight = bottomRight & 0xFFFF0000FFFFFFFFLL | (v59 << 32);
      row = topLeft.row;
      LOWORD(v27) = v49;
    }
  }

  else
  {
    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForMoveRows]", v11, v12);
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v83, v84);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v86, v81, v85, 920, 0, "invalid nil value for '%{public}s'", "insertInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
    row = topLeft.row;
  }

  v91 = *&topLeft & 0xFFFF000000000000 | row | (v27 << 32);
  v92 = bottomRight;
  result._bottomRight = v92;
  result._topLeft = v91;
  return result;
}

- (vector<TSCERangeCoordinate,)coordRangesForInsertRemove
{
  v8 = objc_msgSend_rowOrColumnIndices(self, a3, v3, v4, v5);
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_2212CB1FC;
  v26 = sub_2212CB220;
  v27 = &unk_22188E88F;
  v29 = 0;
  v30 = 0;
  __p = 0;
  if (objc_msgSend_isRows(self, v9, v10, v11, v12))
  {
    v16 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v17 = sub_2212CB238;
  }

  else
  {
    v16 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v17 = sub_2212CB2A8;
  }

  v16[2] = v17;
  v16[3] = &unk_278462AA8;
  v16[4] = &v22;
  objc_msgSend_enumerateRangesUsingBlock_(v8, v13, v16, v14, v15);
  v18 = v23;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2212CBCA0(retstr, v18[6], v18[7], (v18[7] - v18[6]) >> 4);
  _Block_object_dispose(&v22, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsInRange:(SEL)a3
{
  range2 = a4.length;
  location = a4.location;
  v58 = *MEMORY[0x277D85DE8];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidsInRange:]", a4.length, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13, v14);
    v16 = NSStringFromSelector(a3);
    v17 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v15, 969, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v16, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    rangeEntries = self->_rangeEntries;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = rangeEntries;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v53, v57, 16);
  if (v28)
  {
    v29 = 0;
    v51 = *v54;
LABEL_5:
    v30 = 0;
    while (1)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v53 + 1) + 8 * v30);
      v59.location = objc_msgSend_range(v31, v24, v25, v26, v27);
      v61.location = location;
      v61.length = range2;
      v36 = NSIntersectionRange(v59, v61);
      length = v36.length;
      if (v36.length)
      {
        v60.location = objc_msgSend_range(v31, v36.length, v33, v34, v35);
        v62.location = location;
        v62.length = range2;
        v37 = NSIntersectionRange(v60, v62);
        v38 = v37.length;
        v42 = v29;
        if (v37.location != objc_msgSend_range(v31, v37.length, v39, v40, v41))
        {
          v42 = v37.location + v29 - objc_msgSend_range(v31, length, v33, v34, v35);
        }

        if (v42 < v42 + v37.length)
        {
          v43 = v42;
          do
          {
            begin = self->_rowOrColumnUuids.__begin_;
            if (v42 >= self->_rowOrColumnUuids.__end_ - begin)
            {
              sub_2211E631C();
            }

            sub_221083454(retstr, &begin[v43]._lower);
            ++v42;
            ++v43;
            --v38;
          }

          while (v38);
        }
      }

      if (objc_msgSend_range(v31, length, v33, v34, v35) > location + range2)
      {
        break;
      }

      objc_msgSend_range(v31, v45, v46, v47, v48);
      v29 += v24;
      if (++v30 == v28)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v53, v57, 16);
        if (v28)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsForIndexes:(SEL)a3
{
  v10 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4812000000;
  v30 = sub_2212C7E00;
  v31 = sub_2212C7E24;
  *__p = 0u;
  v33 = 0u;
  if (!self->_rangeEntries)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidsForIndexes:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v14, v15);
    v17 = NSStringFromSelector(a3);
    v18 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 1005, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v17, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2212CB830;
  v26[3] = &unk_2784623E0;
  v26[4] = self;
  v26[5] = &v27;
  objc_msgSend_enumerateRangesUsingBlock_(v10, v7, v26, v8, v9);
  v24 = v28;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v24[6], v24[7], (v24[7] - v24[6]) >> 4);
  _Block_object_dispose(&v27, 8);
  if (__p[1])
  {
    *&v33 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (id)description
{
  v6 = MEMORY[0x277CCAB68];
  if (objc_msgSend_isRows(self, a2, v2, v3, v4))
  {
    v11 = @"row";
  }

  else
  {
    v11 = @"column";
  }

  v12 = objc_msgSend_rowOrColumnUids(self, v7, v8, v9, v10);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@ uuids: %@", v14, v15, v11, v12);

  return v16;
}

- (TSKUIDStruct)insertAtUid
{
  upper = self->_insertAtUid._upper;
  lower = self->_insertAtUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)insertOppositeUid
{
  upper = self->_insertOppositeUid._upper;
  lower = self->_insertOppositeUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end