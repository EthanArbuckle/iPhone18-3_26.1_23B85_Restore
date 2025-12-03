@interface TSTFormulaRewriteSpec
- (TSTFormulaRewriteSpec)initWithOwnerDeletion:(const TSKUIDStruct *)deletion;
- (TSTFormulaRewriteSpec)initWithOwnerInsertion:(const TSKUIDStruct *)insertion fromOwnerUID:(const TSKUIDStruct *)d;
- (TSTFormulaRewriteSpec)initWithPivotRuleChange:(const TSKUIDStruct *)change;
- (TSTFormulaRewriteSpec)initWithTransposeTable:(const TSKUIDStruct *)table transposedBodyRange:(TSCERangeCoordinate)range numberOfFooterRows:(unsigned int)rows;
- (id)initForCategorizedTableBaseToChromeRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper;
- (id)initForCategorizedTableChromeToBaseRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper srcCoordMapper:(id)coordMapper fromTableUID:(const TSKUIDStruct *)uID;
- (id)initForGroupBy:(const TSKUIDStruct *)by groupNodeUIDReassignment:(const void *)reassignment;
- (id)initForGroupBy:(const TSKUIDStruct *)by withGroupByChange:(id)change;
- (id)initForInsertingRowsOrColumnsIntoTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows;
- (id)initForMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source;
- (id)initForMergeOriginsMovedWithMap:(const void *)map reverseMap:(const void *)reverseMap inTableUID:(const TSKUIDStruct *)d;
- (id)initForMovingRegionWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract;
- (id)initForMovingRowsOrColumnsInTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids shuffleMap:(id)map areRows:(BOOL)rows srcTract:(const void *)tract destTract:(const void *)destTract;
- (id)initForPastingCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids;
- (id)initForRemoveRowsOrColumnsFromTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows;
- (id)initForReorderRowsWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map;
- (id)initForSortWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map;
- (id)initForTableUIDReassignment:(const void *)reassignment;
- (id)initForUndoMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSTFormulaRewriteSpec

- (TSTFormulaRewriteSpec)initWithOwnerDeletion:(const TSKUIDStruct *)deletion
{
  v9.receiver = self;
  v9.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v9 initWithRewriteType:1];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setTableUID_(v4, v5, deletion->_lower, deletion->_upper, v6);
  }

  return v7;
}

- (TSTFormulaRewriteSpec)initWithOwnerInsertion:(const TSKUIDStruct *)insertion fromOwnerUID:(const TSKUIDStruct *)d
{
  v13.receiver = self;
  v13.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v13 initWithRewriteType:0];
  v9 = v6;
  if (v6)
  {
    objc_msgSend_setTableUID_(v6, v7, insertion->_lower, insertion->_upper, v8);
    objc_msgSend_setFromTableUID_(v9, v10, d->_lower, d->_upper, v11);
  }

  return v9;
}

- (TSTFormulaRewriteSpec)initWithTransposeTable:(const TSKUIDStruct *)table transposedBodyRange:(TSCERangeCoordinate)range numberOfFooterRows:(unsigned int)rows
{
  v5 = *&rows;
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v23.receiver = self;
  v23.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v23 initWithRewriteType:11];
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, table->_lower, table->_upper, v11);
    v13 = objc_opt_new();
    objc_msgSend_setTransposedBodyRange_(v13, v14, topLeft, bottomRight, v15);
    objc_msgSend_setNumberOfFooterRows_(v13, v16, v5, v17, v18);
    objc_msgSend_setTransposedInfo_(v12, v19, v13, v20, v21);
  }

  return v12;
}

- (id)initForRemoveRowsOrColumnsFromTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows
{
  rowsCopy = rows;
  v19.receiver = self;
  v19.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v19 initWithRewriteType:2];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, table->_lower, table->_upper, v10);
    v12 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v14 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v12, v13, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v11, v15, v14, v16, v17);
  }

  return v11;
}

- (id)initForInsertingRowsOrColumnsIntoTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows
{
  rowsCopy = rows;
  v19.receiver = self;
  v19.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v19 initWithRewriteType:3];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, table->_lower, table->_upper, v10);
    v12 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v14 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v12, v13, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v11, v15, v14, v16, v17);
  }

  return v11;
}

- (id)initForMovingRowsOrColumnsInTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids shuffleMap:(id)map areRows:(BOOL)rows srcTract:(const void *)tract destTract:(const void *)destTract
{
  rowsCopy = rows;
  mapCopy = map;
  v35.receiver = self;
  v35.super_class = TSTFormulaRewriteSpec;
  v15 = [(TSCEFormulaRewriteSpec *)&v35 initWithRewriteType:4];
  v18 = v15;
  if (v15)
  {
    objc_msgSend_setTableUID_(v15, v16, table->_lower, table->_upper, v17);
    v19 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v21 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v19, v20, table, tract, table, destTract);
    objc_msgSend_setRegionMovedInfo_(v18, v22, v21, v23, v24);

    v25 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v27 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v25, v26, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v18, v28, v27, v29, v30);

    objc_msgSend_setShuffleMap_(v18, v31, mapCopy, v32, v33);
  }

  return v18;
}

- (id)initForSortWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map
{
  mapCopy = map;
  v23.receiver = self;
  v23.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v23 initWithRewriteType:5];
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, d->_lower, d->_upper, v11);
    v13 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v15 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v13, v14, d, uids, 1);
    objc_msgSend_setRowColumnInfo_(v12, v16, v15, v17, v18);

    objc_msgSend_setShuffleMap_(v12, v19, mapCopy, v20, v21);
  }

  return v12;
}

- (id)initForReorderRowsWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map
{
  mapCopy = map;
  v23.receiver = self;
  v23.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v23 initWithRewriteType:12];
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, d->_lower, d->_upper, v11);
    v13 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v15 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v13, v14, d, uids, 1);
    objc_msgSend_setRowColumnInfo_(v12, v16, v15, v17, v18);

    objc_msgSend_setShuffleMap_(v12, v19, mapCopy, v20, v21);
  }

  return v12;
}

- (id)initForMovingRegionWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract
{
  v21.receiver = self;
  v21.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v21 initWithRewriteType:6];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper, v12);
    v14 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v16 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v14, v15, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v13, v17, v16, v18, v19);
  }

  return v13;
}

- (id)initForCategorizedTableBaseToChromeRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper
{
  mapperCopy = mapper;
  v30.receiver = self;
  v30.super_class = TSTFormulaRewriteSpec;
  v13 = [(TSCEFormulaRewriteSpec *)&v30 initWithRewriteType:14];
  v16 = v13;
  if (v13)
  {
    objc_msgSend_setTableUID_(v13, v14, d->_lower, d->_upper, v15);
    v17 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v19 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v17, v18, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v16, v20, v19, v21, v22);

    objc_msgSend_setCoordMapper_(v16, v23, mapperCopy, v24, v25);
    objc_msgSend_addCoordMapper_(v16, v26, mapperCopy, v27, v28);
  }

  return v16;
}

- (id)initForCategorizedTableChromeToBaseRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper srcCoordMapper:(id)coordMapper fromTableUID:(const TSKUIDStruct *)uID
{
  mapperCopy = mapper;
  coordMapperCopy = coordMapper;
  v40.receiver = self;
  v40.super_class = TSTFormulaRewriteSpec;
  v17 = [(TSCEFormulaRewriteSpec *)&v40 initWithRewriteType:15];
  v20 = v17;
  if (v17)
  {
    objc_msgSend_setTableUID_(v17, v18, d->_lower, d->_upper, v19);
    v21 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v23 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v21, v22, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v20, v24, v23, v25, v26);

    if (*uID == 0)
    {
      uIDCopy = d;
    }

    else
    {
      uIDCopy = uID;
    }

    objc_msgSend_setFromTableUID_(v20, v27, uIDCopy->_lower, uIDCopy->_upper, v28);
    objc_msgSend_setCoordMapper_(v20, v30, mapperCopy, v31, v32);
    objc_msgSend_setSrcCoordMapper_(v20, v33, coordMapperCopy, v34, v35);
    objc_msgSend_addCoordMapper_(v20, v36, mapperCopy, v37, v38);
  }

  return v20;
}

- (id)initForMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source
{
  v25.receiver = self;
  v25.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v25 initWithRewriteType:7];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper, v12);
    v14 = [TSCEFormulaRewrite_RegionInfo alloc];
    v16 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v14, v15, d, uids, rowUids);
    v17 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v20 = objc_msgSend_initWithMergeRegion_mergeSource_(v17, v18, v16, *&source, v19);
    objc_msgSend_setMergeInfo_(v13, v21, v20, v22, v23);
  }

  return v13;
}

- (id)initForUndoMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source
{
  v25.receiver = self;
  v25.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v25 initWithRewriteType:8];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper, v12);
    v14 = [TSCEFormulaRewrite_RegionInfo alloc];
    v16 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v14, v15, d, uids, rowUids);
    v17 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v20 = objc_msgSend_initWithMergeRegion_mergeSource_(v17, v18, v16, *&source, v19);
    objc_msgSend_setMergeInfo_(v13, v21, v20, v22, v23);
  }

  return v13;
}

- (id)initForMergeOriginsMovedWithMap:(const void *)map reverseMap:(const void *)reverseMap inTableUID:(const TSKUIDStruct *)d
{
  v20.receiver = self;
  v20.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v20 initWithRewriteType:9];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, d->_lower, d->_upper, v10);
    v12 = [TSCEFormulaRewrite_MergeOriginMovedInfo alloc];
    v15 = objc_msgSend_initWithMergeOriginsMap_reverseMap_(v12, v13, map, reverseMap, v14);
    objc_msgSend_setMergeOriginMovedInfo_(v11, v16, v15, v17, v18);
  }

  return v11;
}

- (id)initForPastingCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids
{
  v23.receiver = self;
  v23.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v23 initWithRewriteType:17];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, d->_lower, d->_upper, v10);
    v12 = [TSCEFormulaRewrite_RegionInfo alloc];
    v14 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v12, v13, d, uids, rowUids);
    v15 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v18 = objc_msgSend_initWithMergeRegion_mergeSource_(v15, v16, v14, 0, v17);
    objc_msgSend_setMergeInfo_(v11, v19, v18, v20, v21);
  }

  return v11;
}

- (id)initForTableUIDReassignment:(const void *)reassignment
{
  v14.receiver = self;
  v14.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v14 initWithRewriteType:10];
  if (v4)
  {
    v5 = [TSCERewriteTableUIDInfo alloc];
    v9 = objc_msgSend_initWithTableUIDMap_(v5, v6, reassignment, v7, v8);
    objc_msgSend_setTableUIDInfo_(v4, v10, v9, v11, v12);
  }

  return v4;
}

- (id)initForGroupBy:(const TSKUIDStruct *)by withGroupByChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v15 initWithRewriteType:16];
  v10 = v6;
  if (v6)
  {
    objc_msgSend_setGroupByChange_(v6, v7, changeCopy, v8, v9);
    objc_msgSend_setCanBeNested_(v10, v11, 0, v12, v13);
  }

  return v10;
}

- (id)initForGroupBy:(const TSKUIDStruct *)by groupNodeUIDReassignment:(const void *)reassignment
{
  v15.receiver = self;
  v15.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v15 initWithRewriteType:13];
  if (v6)
  {
    v7 = [TSCERewriteGroupNodeUIDInfo alloc];
    v10 = objc_msgSend_initWithGroupByUid_groupNodeUIDMap_(v7, v8, by, reassignment, v9);
    objc_msgSend_setGroupNodeUIDInfo_(v6, v11, v10, v12, v13);
  }

  return v6;
}

- (TSTFormulaRewriteSpec)initWithPivotRuleChange:(const TSKUIDStruct *)change
{
  v9.receiver = self;
  v9.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v9 initWithRewriteType:18];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setTableUID_(v4, v5, change->_lower, change->_upper, v6);
  }

  return v7;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  v5 = *(message + 32);
  v175.receiver = self;
  v175.super_class = TSTFormulaRewriteSpec;
  unarchiver = [(TSCEFormulaRewriteSpec *)&v175 initWithRewriteType:v5, unarchiver];
  if (unarchiver)
  {
    v10 = *(message + 4);
    if (v10)
    {
      v11 = TSKUIDStruct::loadFromMessage(*(message + 3), v6);
      objc_msgSend_setTableUID_(unarchiver, v12, v11, v12, v13);
      v10 = *(message + 4);
    }

    if ((v10 & 2) != 0)
    {
      v14 = TSKUIDStruct::loadFromMessage(*(message + 4), v6);
      objc_msgSend_setConditionalStyleOwnerUID_(unarchiver, v15, v14, v15, v16);
      v10 = *(message + 4);
    }

    if ((v10 & 4) != 0)
    {
      v17 = TSKUIDStruct::loadFromMessage(*(message + 5), v6);
      objc_msgSend_setGroupByUID_(unarchiver, v18, v17, v18, v19);
      v10 = *(message + 4);
    }

    if ((v10 & 0x4000) != 0)
    {
      objc_msgSend_setIsInverse_(unarchiver, v6, *(message + 132), v7, v8);
    }

    switch(v5)
    {
      case 2:
      case 3:
        v66 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v70 = objc_msgSend_initFromMessage_(v66, v67, *(message + 6), v68, v69);
        }

        else
        {
          v70 = objc_msgSend_initFromMessage_(v66, v67, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v68, v69);
        }

        v28 = v70;
        objc_msgSend_setRowColumnInfo_(unarchiver, v71, v70, v72, v73);
        goto LABEL_60;
      case 4:
        v106 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v110 = objc_msgSend_initFromMessage_(v106, v107, *(message + 6), v108, v109);
        }

        else
        {
          v110 = objc_msgSend_initFromMessage_(v106, v107, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v108, v109);
        }

        v114 = v110;
        objc_msgSend_setRowColumnInfo_(unarchiver, v111, v110, v112, v113);

        if ((*(message + 16) & 0x10) == 0)
        {
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSTFormulaRewriteSpec initFromMessage:unarchiver:]", v116, v117);
          v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaRewriteSpec.mm", v121, v122);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v124, v119, v123, 415, 0, "Move rewriteSpec should have AUX rowColumnInfo in archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
        }

        v129 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 7))
        {
          v133 = objc_msgSend_initFromMessage_(v129, v130, *(message + 7), v131, v132);
        }

        else
        {
          v133 = objc_msgSend_initFromMessage_(v129, v130, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v131, v132);
        }

        v28 = v133;
        v138 = objc_msgSend_rowColumnInfo(unarchiver, v134, v135, v136, v137);
        objc_msgSend_setAuxRowColumnInfo_(v138, v139, v28, v140, v141);

        v142 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
        if (*(message + 8))
        {
          v146 = objc_msgSend_initFromMessage_(v142, v143, *(message + 8), v144, v145);
        }

        else
        {
          v146 = objc_msgSend_initFromMessage_(v142, v143, &TSCE::_RegionMovedInfoArchive_default_instance_, v144, v145);
        }

        v62 = v146;
        objc_msgSend_setRegionMovedInfo_(unarchiver, v147, v146, v148, v149);
        goto LABEL_59;
      case 5:
      case 12:
        v30 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v34 = objc_msgSend_initFromMessage_(v30, v31, *(message + 6), v32, v33);
        }

        else
        {
          v34 = objc_msgSend_initFromMessage_(v30, v31, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v32, v33);
        }

        v38 = v34;
        objc_msgSend_setRowColumnInfo_(unarchiver, v35, v34, v36, v37);

        if ((*(message + 16) & 0x10) == 0)
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTFormulaRewriteSpec initFromMessage:unarchiver:]", v40, v41);
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaRewriteSpec.mm", v45, v46);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 424, 0, "Sort/Reorder rewriteSpec should have AUX rowColumnInfo in archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
        }

        v53 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 7))
        {
          v57 = objc_msgSend_initFromMessage_(v53, v54, *(message + 7), v55, v56);
        }

        else
        {
          v57 = objc_msgSend_initFromMessage_(v53, v54, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v55, v56);
        }

        v28 = v57;
        v62 = objc_msgSend_rowColumnInfo(unarchiver, v58, v59, v60, v61);
        objc_msgSend_setAuxRowColumnInfo_(v62, v63, v28, v64, v65);
        goto LABEL_59;
      case 6:
      case 14:
      case 15:
        v20 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
        if (*(message + 8))
        {
          v24 = objc_msgSend_initFromMessage_(v20, v21, *(message + 8), v22, v23);
        }

        else
        {
          v24 = objc_msgSend_initFromMessage_(v20, v21, &TSCE::_RegionMovedInfoArchive_default_instance_, v22, v23);
        }

        v28 = v24;
        objc_msgSend_setRegionMovedInfo_(unarchiver, v25, v24, v26, v27);
        goto LABEL_60;
      case 7:
      case 8:
      case 17:
        if ((*(message + 17) & 4) != 0)
        {
          v29 = *(*(message + 13) + 28) | (*(*(message + 13) + 24) << 32);
        }

        else
        {
          v29 = 0x7FFF7FFFFFFFLL;
        }

        v74 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
        v75 = [TSCEFormulaRewrite_RegionInfo alloc];
        if (*(message + 9))
        {
          v79 = objc_msgSend_initFromMessage_(v75, v76, *(message + 9), v77, v78);
        }

        else
        {
          v79 = objc_msgSend_initFromMessage_(v75, v76, TSCE::_RegionInfoArchive_default_instance_, v77, v78);
        }

        v28 = v79;
        v62 = objc_msgSend_initWithMergeRegion_mergeSource_(v74, v80, v79, v29, v81);
        objc_msgSend_setMergeInfo_(unarchiver, v82, v62, v83, v84);
LABEL_59:

        goto LABEL_60;
      case 9:
        v151 = [TSCEFormulaRewrite_MergeOriginMovedInfo alloc];
        if (*(message + 12))
        {
          v155 = objc_msgSend_initFromMessage_(v151, v152, *(message + 12), v153, v154);
        }

        else
        {
          v155 = objc_msgSend_initFromMessage_(v151, v152, &TSCE::_MergeOriginMovedArchive_default_instance_, v153, v154);
        }

        v28 = v155;
        objc_msgSend_setMergeOriginMovedInfo_(unarchiver, v156, v155, v157, v158);
        goto LABEL_60;
      case 10:
        v167 = [TSCERewriteTableUIDInfo alloc];
        if (*(message + 10))
        {
          v171 = objc_msgSend_initFromMessage_(v167, v168, *(message + 10), v169, v170);
        }

        else
        {
          v171 = objc_msgSend_initFromMessage_(v167, v168, &TSCE::_RewriteTableUIDInfoArchive_default_instance_, v169, v170);
        }

        v28 = v171;
        objc_msgSend_setTableUIDInfo_(unarchiver, v172, v171, v173, v174);
        goto LABEL_60;
      case 11:
        v28 = objc_opt_new();
        v93 = *(message + 11);
        if (!v93)
        {
          v93 = TSCE::_TableTransposeInfoArchive_default_instance_;
        }

        v94 = v93[3];
        if (v94)
        {
          v95 = v94;
        }

        else
        {
          v95 = &TSCE::_RangeCoordinateArchive_default_instance_;
        }

        v96 = sub_22126987C(v95);
        objc_msgSend_setTransposedBodyRange_(v28, v97, v96, v97, v98);
        v102 = *(message + 11);
        if (!v102)
        {
          v102 = TSCE::_TableTransposeInfoArchive_default_instance_;
        }

        objc_msgSend_setNumberOfFooterRows_(v28, v99, *(v102 + 8), v100, v101);
        objc_msgSend_setTransposedInfo_(unarchiver, v103, v28, v104, v105);
        goto LABEL_60;
      case 13:
        v159 = [TSCERewriteGroupNodeUIDInfo alloc];
        if (*(message + 14))
        {
          v163 = objc_msgSend_initFromMessage_(v159, v160, *(message + 14), v161, v162);
        }

        else
        {
          v163 = objc_msgSend_initFromMessage_(v159, v160, &TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_, v161, v162);
        }

        v28 = v163;
        objc_msgSend_setGroupNodeUIDInfo_(unarchiver, v164, v163, v165, v166);
        goto LABEL_60;
      case 16:
        v85 = [TSCEGroupByChange alloc];
        if (*(message + 15))
        {
          v89 = objc_msgSend_initWithArchive_(v85, v86, *(message + 15), v87, v88);
        }

        else
        {
          v89 = objc_msgSend_initWithArchive_(v85, v86, &TSCE::_GroupByChangeArchive_default_instance_, v87, v88);
        }

        v28 = v89;
        objc_msgSend_setGroupByChange_(unarchiver, v90, v89, v91, v92);
        goto LABEL_60;
      case 18:
        return unarchiver;
      default:
        v28 = unarchiver;
        unarchiver = 0;
LABEL_60:

        break;
    }
  }

  return unarchiver;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v11 = objc_msgSend_tableUID(self, v7, v8, v9, v10);
  if (v11 | v12)
  {
    v156._lower = objc_msgSend_tableUID(self, v12, v13, v14, v15);
    v156._upper = v16;
    *(message + 4) |= 1u;
    v17 = *(message + 3);
    if (!v17)
    {
      v18 = *(message + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x223DA0360](v18);
      *(message + 3) = v17;
    }

    TSKUIDStruct::saveToMessage(&v156, v17);
  }

  v19 = objc_msgSend_conditionalStyleOwnerUID(self, v12, v13, v14, v15, v156._lower, v156._upper);
  if (v19 | v20)
  {
    v156._lower = objc_msgSend_conditionalStyleOwnerUID(self, v20, v21, v22, v23);
    v156._upper = v24;
    *(message + 4) |= 2u;
    v25 = *(message + 4);
    if (!v25)
    {
      v26 = *(message + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0360](v26);
      *(message + 4) = v25;
    }

    TSKUIDStruct::saveToMessage(&v156, v25);
  }

  v27 = objc_msgSend_groupByUID(self, v20, v21, v22, v23, v156._lower, v156._upper);
  if (v27 | v28)
  {
    v156._lower = objc_msgSend_groupByUID(self, v28, v29, v30, v31);
    v156._upper = v32;
    *(message + 4) |= 4u;
    v33 = *(message + 5);
    if (!v33)
    {
      v34 = *(message + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x223DA0360](v34);
      *(message + 5) = v33;
    }

    TSKUIDStruct::saveToMessage(&v156, v33);
  }

  isInverse = objc_msgSend_isInverse(self, v28, v29, v30, v31, v156._lower, v156._upper);
  *(message + 4) |= 0x4000u;
  *(message + 132) = isInverse;
  v40 = objc_msgSend_rewriteType(self, v36, v37, v38, v39);
  *(message + 4) |= 0x2000u;
  *(message + 32) = v40;
  switch(objc_msgSend_rewriteType(self, v41, v42, v43, v44))
  {
    case 2u:
    case 3u:
      v52 = objc_msgSend_rowColumnInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 8u;
      v53 = *(message + 6);
      if (!v53)
      {
        v82 = *(message + 1);
        if (v82)
        {
          v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>(v82);
        *(message + 6) = v53;
      }

      goto LABEL_82;
    case 4u:
      v114 = objc_msgSend_rowColumnInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 8u;
      v115 = *(message + 6);
      if (!v115)
      {
        v116 = *(message + 1);
        if (v116)
        {
          v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
        }

        v115 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>(v116);
        *(message + 6) = v115;
      }

      objc_msgSend_saveToMessage_(v114, v111, v115, v112, v113);

      v121 = objc_msgSend_rowColumnInfo(self, v117, v118, v119, v120);
      v129 = objc_msgSend_auxRowColumnInfo(v121, v122, v123, v124, v125);
      *(message + 4) |= 0x10u;
      v130 = *(message + 7);
      if (!v130)
      {
        v131 = *(message + 1);
        if (v131)
        {
          v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
        }

        v130 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>(v131);
        *(message + 7) = v130;
      }

      objc_msgSend_saveToMessage_(v129, v126, v130, v127, v128);

      v52 = objc_msgSend_regionMovedInfo(self, v132, v133, v134, v135);
      *(message + 4) |= 0x20u;
      v53 = *(message + 8);
      if (!v53)
      {
        v136 = *(message + 1);
        if (v136)
        {
          v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionMovedInfoArchive>(v136);
        *(message + 8) = v53;
      }

      goto LABEL_82;
    case 5u:
    case 0xCu:
      v86 = objc_msgSend_rowColumnInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 8u;
      v87 = *(message + 6);
      if (!v87)
      {
        v88 = *(message + 1);
        if (v88)
        {
          v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
        }

        v87 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>(v88);
        *(message + 6) = v87;
      }

      objc_msgSend_saveToMessage_(v86, v83, v87, v84, v85);

      v52 = objc_msgSend_rowColumnInfo(self, v89, v90, v91, v92);
      v100 = objc_msgSend_auxRowColumnInfo(v52, v93, v94, v95, v96);
      *(message + 4) |= 0x10u;
      v101 = *(message + 7);
      if (!v101)
      {
        v102 = *(message + 1);
        if (v102)
        {
          v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
        }

        v101 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>(v102);
        *(message + 7) = v101;
      }

      objc_msgSend_saveToMessage_(v100, v97, v101, v98, v99);

      goto LABEL_92;
    case 6u:
    case 0xEu:
    case 0xFu:
      v52 = objc_msgSend_regionMovedInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 0x20u;
      v53 = *(message + 8);
      if (!v53)
      {
        v54 = *(message + 1);
        if (v54)
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionMovedInfoArchive>(v54);
        *(message + 8) = v53;
      }

      goto LABEL_82;
    case 7u:
    case 8u:
    case 0x11u:
      v52 = objc_msgSend_mergeInfo(self, v45, v46, v47, v48);
      v62 = objc_msgSend_mergeRegion(v52, v55, v56, v57, v58);
      *(message + 4) |= 0x40u;
      v63 = *(message + 9);
      if (!v63)
      {
        v64 = *(message + 1);
        if (v64)
        {
          v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
        }

        v63 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v64);
        *(message + 9) = v63;
      }

      objc_msgSend_saveToMessage_(v62, v59, v63, v60, v61);

      v73 = *objc_msgSend_mergeSource(v52, v65, v66, v67, v68);
      if (v73 != 0x7FFFFFFF && (v73 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        *(message + 4) |= 0x400u;
        v74 = *(message + 13);
        if (!v74)
        {
          v75 = *(message + 1);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = google::protobuf::Arena::CreateMaybeMessage<TSCE::MergeSourceArchive>(v75);
          *(message + 13) = v74;
        }

        v76 = *(objc_msgSend_mergeSource(v52, v69, v70, v71, v72) + 4);
        v74[4] |= 1u;
        v74[6] = v76;
        v81 = *objc_msgSend_mergeSource(v52, v77, v78, v79, v80);
        v74[4] |= 2u;
        v74[7] = v81;
      }

      goto LABEL_92;
    case 9u:
      v52 = objc_msgSend_mergeOriginMovedInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 0x200u;
      v53 = *(message + 12);
      if (!v53)
      {
        v104 = *(message + 1);
        if (v104)
        {
          v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::MergeOriginMovedArchive>(v104);
        *(message + 12) = v53;
      }

      goto LABEL_82;
    case 0xAu:
      v52 = objc_msgSend_tableUIDInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 0x80u;
      v53 = *(message + 10);
      if (!v53)
      {
        v105 = *(message + 1);
        if (v105)
        {
          v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v105);
        *(message + 10) = v53;
      }

      goto LABEL_82;
    case 0xBu:
      *(message + 4) |= 0x100u;
      v137 = *(message + 11);
      if (!v137)
      {
        v138 = *(message + 1);
        if (v138)
        {
          v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
        }

        v137 = google::protobuf::Arena::CreateMaybeMessage<TSCE::TableTransposeInfoArchive>(v138);
        *(message + 11) = v137;
      }

      v139 = objc_msgSend_transposedInfo(self, v45, v46, v47, v48);
      v156._lower = objc_msgSend_transposedBodyRange(v139, v140, v141, v142, v143);
      v156._upper = v144;
      *(v137 + 16) |= 1u;
      v145 = *(v137 + 24);
      if (!v145)
      {
        v146 = *(v137 + 8);
        if (v146)
        {
          v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
        }

        v145 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v146);
        *(v137 + 24) = v145;
      }

      sub_221269844(&v156, v145);

      v52 = objc_msgSend_transposedInfo(self, v147, v148, v149, v150, v156._lower, v156._upper);
      v155 = objc_msgSend_numberOfFooterRows(v52, v151, v152, v153, v154);
      *(v137 + 16) |= 2u;
      *(v137 + 32) = v155;
      goto LABEL_92;
    case 0xDu:
      v52 = objc_msgSend_groupNodeUIDInfo(self, v45, v46, v47, v48);
      *(message + 4) |= 0x800u;
      v53 = *(message + 14);
      if (!v53)
      {
        v103 = *(message + 1);
        if (v103)
        {
          v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteGroupNodeUIDInfoArchive>(v103);
        *(message + 14) = v53;
      }

LABEL_82:
      objc_msgSend_saveToMessage_(v52, v49, v53, v50, v51);
      goto LABEL_92;
    case 0x10u:
      v52 = objc_msgSend_groupByChange(self, v45, v46, v47, v48);
      *(message + 4) |= 0x1000u;
      v109 = *(message + 15);
      if (!v109)
      {
        v110 = *(message + 1);
        if (v110)
        {
          v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
        }

        v109 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive>(v110);
        *(message + 15) = v109;
      }

      objc_msgSend_saveToArchive_(v52, v106, v109, v107, v108);
LABEL_92:

      break;
    default:
      break;
  }
}

@end