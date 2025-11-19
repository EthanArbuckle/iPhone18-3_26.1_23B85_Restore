@interface TSTTableTile
- (BOOL)isEmpty;
- (BOOL)lastSavedInBNC;
- (BOOL)validatedLoadFromUnarchiver:(id)a3;
- (NSIndexSet)populatedRows;
- (TSTCellStorage)cellStorageRefAtColumnIndex:(unsigned __int16)a3 tileRowIndex:(unsigned int)a4;
- (TSTTableTile)initWithRows:(id)a3 shouldUseWideRows:(BOOL)a4 context:(id)a5;
- (id)description;
- (id)findOrAddRowInfoAtTileRowIndex:(unsigned int)a3;
- (id)removeColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4;
- (id)rowInfoAtOrAfterTileRowIndex:(unsigned int)a3 outTileRowIndex:(unsigned int *)a4;
- (id)rowInfoForTileRowIndex:(unsigned int)a3;
- (id)shiftUpAndYankBy:(unsigned int)a3;
- (id)yankRowInfoAtTileRowIndex:(unsigned int)a3;
- (id)yankRowsAtTileRowIndex:(unsigned int)a3;
- (id)yankRowsAtTileRowIndex:(unsigned int)a3 count:(unsigned int)a4;
- (int)insertColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4;
- (int64_t)setCell:(id)a3 atColumnIndex:(unsigned __int16)a4 tileRowIndex:(unsigned int)a5;
- (unint64_t)archivingCompatibilityVersion;
- (unsigned)maxColumn;
- (unsigned)maxRow;
- (unsigned)numRows;
- (void)_removeRowsAtTileRowIndex:(unsigned int)a3 numberOfRows:(unsigned int)a4 shiftingContent:(BOOL)a5;
- (void)_setRowInfo:(id)a3 atTileRowIndex:(unsigned int)a4;
- (void)didApplyConcurrentCellMap:(id)a3;
- (void)enumerateRowsAndIndexesWithBlock:(id)a3;
- (void)enumerateRowsWithBlock:(id)a3;
- (void)insertRowsAtTileRowIndex:(unsigned int)a3 numberOfRows:(unsigned int)a4;
- (void)moveColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4 toDestColumnIndex:(unsigned __int16)a5;
- (void)p_pruneRowCount;
- (void)pruneEmptyRows;
- (void)saveToArchiver:(id)a3;
- (void)setShouldUseWideRows:(BOOL)a3;
- (void)shiftUpAtTileRowIndex:(unsigned int)a3 count:(unsigned int)a4;
- (void)spliceRowInfo:(id)a3 atTileRowIndex:(unsigned int)a4 overwrite:(BOOL)a5;
- (void)spliceRows:(id)a3 atTileRowIndex:(unsigned int)a4;
- (void)swapRowAtTileRowIndex:(unsigned int)a3 withRowAtTileRowIndex:(unsigned int)a4;
- (void)widenAllRowsForUpgrade;
- (void)willModify;
@end

@implementation TSTTableTile

- (unsigned)maxRow
{
  if (objc_msgSend_count(self->_rowInfos, a2, v2, v3, v4))
  {
    v13 = objc_msgSend_count(self->_rowInfos, v6, v7, v8, v9);
    while (v13-- >= 1)
    {
      if (objc_msgSend_pointerAtIndex_(self->_rowInfos, v10, v13, v11, v12))
      {
        return v13;
      }
    }
  }

  LODWORD(v13) = 0x7FFFFFFF;
  return v13;
}

- (unsigned)numRows
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ((objc_msgSend_isEmpty(self, a2, v2, v3, v4) & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2210BECB0;
    v11[3] = &unk_27845E8B8;
    v11[4] = &v12;
    objc_msgSend_enumerateRowsWithBlock_(self, v6, v11, v7, v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (BOOL)isEmpty
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2210BED88;
  v6[3] = &unk_27845E8B8;
  v6[4] = &v7;
  objc_msgSend_enumerateRowsWithBlock_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unsigned)maxColumn
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFF;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2210BEE8C;
  v6[3] = &unk_27845E8E0;
  v6[4] = &v7;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, a2, v6, v2, v3);
  v4 = *(v8 + 12);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (TSTTableTile)initWithRows:(id)a3 shouldUseWideRows:(BOOL)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = TSTTableTile;
  v14 = [(TSTTableTile *)&v18 initWithContext:v9];
  if (v14)
  {
    if (v8)
    {
      v15 = objc_msgSend_copy(v8, v10, v11, v12, v13);
    }

    else
    {
      v15 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v10, v11, v12, v13);
    }

    rowInfos = v14->_rowInfos;
    v14->_rowInfos = v15;

    v14->_lastSavedInBNC = 1;
    v14->_storageVersion = 5;
    v14->_shouldUseWideRows = a4;
  }

  return v14;
}

- (BOOL)lastSavedInBNC
{
  if (self->_lastSavedInBNC)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2210BF12C;
    v7[3] = &unk_27845E8B8;
    v7[4] = &v8;
    objc_msgSend_enumerateRowsWithBlock_(self, a2, v7, v2, v3);
    self->_lastSavedInBNC = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
    return self->_lastSavedInBNC;
  }

  else
  {
    return 0;
  }
}

- (void)p_pruneRowCount
{
  v6 = objc_msgSend_maxRow(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(self->_rowInfos, v7, v8, v9, v10);
  if (v6 == 0x7FFFFFFF)
  {
    if (!v11)
    {
      return;
    }

    v15 = 0;
  }

  else
  {
    v15 = (v6 + 1);
    if (v11 <= v15)
    {
      return;
    }
  }

  rowInfos = self->_rowInfos;

  objc_msgSend_setCount_(rowInfos, v12, v15, v13, v14);
}

- (void)_setRowInfo:(id)a3 atTileRowIndex:(unsigned int)a4
{
  v4 = *&a4;
  v31 = a3;
  if (objc_msgSend_count(self->_rowInfos, v6, v7, v8, v9) <= v4)
  {
    objc_msgSend_setCount_(self->_rowInfos, v10, (v4 + 127), v11, v12);
  }

  if (v31 && objc_msgSend_pointerAtIndex_(self->_rowInfos, v10, v4, v11, v12))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableTile _setRowInfo:atTileRowIndex:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 202, 0, "Duplicate row indexes!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_msgSend_setTileRowIndex_(v31, v10, v4, v11, v12);
  objc_msgSend_replacePointerAtIndex_withPointer_(self->_rowInfos, v24, v4, v31, v25);
  v30 = self->_pruningCount + 1;
  self->_pruningCount = v30;
  if (v30 > 0x80 || !v31 && objc_msgSend_count(self->_rowInfos, v26, v27, v28, v29) - 1 == v4)
  {
    objc_msgSend_p_pruneRowCount(self, v26, v27, v28, v29);
    self->_pruningCount = 0;
  }
}

- (id)rowInfoForTileRowIndex:(unsigned int)a3
{
  if (objc_msgSend_count(self->_rowInfos, a2, *&a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_pointerAtIndex_(self->_rowInfos, v7, a3, v8, v9);
  }

  return v10;
}

- (BOOL)validatedLoadFromUnarchiver:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v70 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v70, v4, off_2812E4498[18], v5, v6);

  v12 = *(v7 + 16);
  if ((v12 & 0x20) != 0)
  {
    v13 = *(v7 + 68);
  }

  else
  {
    v13 = 0;
  }

  self->_lastSavedInBNC = v13;
  if ((v12 & 0x10) != 0)
  {
    self->_storageVersion = *(v7 + 64);
  }

  if ((v12 & 0x40) != 0)
  {
    v14 = *(v7 + 69);
  }

  else
  {
    v14 = 0;
  }

  self->_shouldUseWideRows = v14;
  v15 = *(v7 + 32);
  v16 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10, v11);
  rowInfos = self->_rowInfos;
  self->_rowInfos = v16;

  v22 = objc_msgSend_fileFormatVersion(v70, v18, v19, v20, v21);
  if (v15 <= 0)
  {
LABEL_35:
    shouldUseWideRows = self->_shouldUseWideRows;
LABEL_36:
    if (!shouldUseWideRows && objc_msgSend_fileFormatVersion(v70, v23, v24, v25, v26) <= 0xD000000000000)
    {
      objc_msgSend_willModifyForUpgrade(self, v23, v24, v25, v26);
    }

    if (self->_storageVersion <= 4u)
    {
      objc_msgSend_willModifyForUpgrade(self, v23, v24, v25, v26);
      self->_storageVersion = 5;
    }

    objc_msgSend_p_pruneRowCount(self, v23, v24, v25, v26);
    v28 = 1;
  }

  else
  {
    v27 = v22;
    v69 = 80;
    v28 = 0;
    v29 = -1;
    v30 = 1;
    v71 = 1;
    while (1)
    {
      v31 = objc_msgSend_rowInfoFromArchive_fileFormatVersion_(TSTTableTileRowInfo, v23, *(*(v7 + 40) + 8 * v30), v27, v26, v69);
      v36 = v31;
      if (!v31)
      {
        break;
      }

      v37 = objc_msgSend_tileRowIndex(v31, v32, v33, v34, v35);
      if (objc_msgSend_cellCount(v36, v38, v39, v40, v41) && (objc_msgSend_rowInfoForTileRowIndex_(self, v42, v37, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v42, v36, v37, v45);
        if (v29 >= v37)
        {
          objc_msgSend_willModifyForUpgrade(self, v47, v48, v49, v50);
        }

        if (v29 <= v37)
        {
          v29 = v37;
        }

        v51 = objc_msgSend_usesWideOffsets(v36, v47, v48, v49, v50);
        v56 = v51;
        if (!self->_shouldUseWideRows && ((v51 ^ 1) & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(self, v52, v53, v54, v55);
          self->_shouldUseWideRows = 1;
        }

        v71 &= v56;
      }

      else
      {
        objc_msgSend_willModifyForUpgrade(self, v42, v43, v44, v45);
      }

      v28 = v30++ >= v15;
      if (v30 - v15 == 1)
      {
        shouldUseWideRows = self->_shouldUseWideRows;
        if (v71 & 1 | !shouldUseWideRows)
        {
          goto LABEL_36;
        }

        objc_msgSend_willModifyForUpgradeWithOptions_(self, v23, 2, v25, v26);
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v58 = *(&self->super.super.isa + v69);
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v72, v76, 16);
        if (v64)
        {
          v65 = *v73;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v73 != v65)
              {
                objc_enumerationMutation(v58);
              }

              v67 = *(*(&v72 + 1) + 8 * i);
              if ((objc_msgSend_usesWideOffsets(v67, v60, v61, v62, v63) & 1) == 0)
              {
                objc_msgSend_convertToWideOffsets(v67, v60, v61, v62, v63);
              }
            }

            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v72, v76, 16);
          }

          while (v64);
        }

        goto LABEL_35;
      }
    }
  }

  return v28;
}

- (void)willModify
{
  self->_lastSavedInBNC = 1;
  v2.receiver = self;
  v2.super_class = TSTTableTile;
  [(TSTTableTile *)&v2 willModify];
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2210C1B78, off_2812E4498[18], v6);

  v8 = *(v7 + 16);
  *(v7 + 48) = 0;
  *(v7 + 16) = v8 | 7;
  *(v7 + 56) = 0;
  v13 = objc_msgSend_numRows(self, v9, v10, v11, v12);
  storageVersion = self->_storageVersion;
  *(v7 + 16) |= 0x18u;
  *(v7 + 60) = v13;
  *(v7 + 64) = storageVersion;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_2210BF9C0;
  v26 = &unk_27845E908;
  v28 = v7;
  v15 = v4;
  v27 = v15;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v16, &v23, v17, v18);
  lastSavedInBNC = self->_lastSavedInBNC;
  v22 = *(v7 + 16);
  *(v7 + 16) = v22 | 0x20;
  *(v7 + 68) = lastSavedInBNC;
  if (self->_shouldUseWideRows)
  {
    *(v7 + 16) = v22 | 0x60;
    *(v7 + 69) = 1;
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v15, v19, 0xA000000000003, @"TSTExpandedTables", v20, v23, v24, v25, v26);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v15, v19, 7, v7, v20, v23, v24, v25, v26);
}

- (unint64_t)archivingCompatibilityVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x300020000000ALL;
  if (self->_shouldUseWideRows)
  {
    v4 = 0xA000000000003;
    v10 = 0xA000000000003;
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2210BFC48;
    v6[3] = &unk_27845E8B8;
    v6[4] = &v7;
    objc_msgSend_enumerateRowsWithBlock_(self, a2, v6, v2, v3);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setShouldUseWideRows:(BOOL)a3
{
  if (self->_shouldUseWideRows != a3)
  {
    if (self->_shouldUseWideRows)
    {
      TSUSetCrashReporterInfo();
      v7 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTile setShouldUseWideRows:]", v9, v10, "[TSTTableTile setShouldUseWideRows:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", 398);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 398, 1, "Table embiggening is a one-way process");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_shouldUseWideRows = a3;
  }
}

- (NSIndexSet)populatedRows
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2210BFF08;
  v16 = sub_2210BFF18;
  v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2210BFF20;
  v11[3] = &unk_27845E8E0;
  v11[4] = &v12;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v6, v11, v7, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)description
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2210C0180;
  v19[3] = &unk_27845E8E0;
  v19[4] = &v20;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, a2, v19, v2, v3);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v21[3];
  v13 = objc_msgSend_populatedRows(self, v9, v10, v11, v12);
  v17 = objc_msgSend_stringWithFormat_(v5, v14, @"<%@:%p %lu cells/ rows %@ >", v15, v16, v7, self, v8, v13);

  _Block_object_dispose(&v20, 8);

  return v17;
}

- (void)pruneEmptyRows
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2210C0318;
  v20[3] = &unk_27845E930;
  v7 = v6;
  v21 = v7;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v8, v20, v9, v10);
  if (objc_msgSend_count(v7, v11, v12, v13, v14))
  {
    objc_msgSend_willModify(self, v15, v16, v17, v18);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2210C0388;
  v19[3] = &unk_27845E958;
  v19[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v7, v15, v19, v17, v18);
}

- (id)findOrAddRowInfoAtTileRowIndex:(unsigned int)a3
{
  v5 = *&a3;
  v11 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&a3, v3, v4);
  if (!v11)
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    v11 = objc_msgSend_rowInfoWithTileRowIndex_wideOffsets_(TSTTableTileRowInfo, v12, v5, self->_shouldUseWideRows, v13);
    objc_msgSend__setRowInfo_atTileRowIndex_(self, v14, v11, v5, v15);
  }

  return v11;
}

- (void)enumerateRowsAndIndexesWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_rowInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if (v11)
      {
        v4[2](v4, v11, v8, &v16);
        if (v16)
        {
          break;
        }
      }

      v8 = (v8 + 1);
      if (v7 == ++v10)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v12, v17, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateRowsWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_rowInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v16, 16);
  if (v7)
  {
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if (v10)
      {
        v4[2](v4, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)rowInfoAtOrAfterTileRowIndex:(unsigned int)a3 outTileRowIndex:(unsigned int *)a4
{
  LODWORD(v6) = a3;
  v8 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&a3, a4, v4);
  if (v8)
  {
LABEL_4:
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = objc_msgSend_count(self->_rowInfos, v9, v10, v11, v12) - 1;
  if (v16 < v6)
  {
    v8 = 0;
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_4;
  }

  do
  {
    v6 = (v6 + 1);
    v8 = objc_msgSend_rowInfoForTileRowIndex_(self, v13, v6, v14, v15);
  }

  while (!v8 && v16 >= v6);
  if (!v8)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  if (a4)
  {
LABEL_5:
    *a4 = v6;
  }

LABEL_6:

  return v8;
}

- (TSTCellStorage)cellStorageRefAtColumnIndex:(unsigned __int16)a3 tileRowIndex:(unsigned int)a4
{
  v5 = *&a4;
  v6 = a3;
  if (objc_msgSend_isEmpty(self, a2, a3, *&a4, v4))
  {
    return 0;
  }

  v12 = objc_msgSend_rowInfoForTileRowIndex_(self, v8, v5, v9, v10);
  v16 = v12;
  if (v12)
  {
    v11 = objc_msgSend_cellStorageRefAtIndex_(v12, v13, v6, v14, v15);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)setCell:(id)a3 atColumnIndex:(unsigned __int16)a4 tileRowIndex:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  objc_msgSend_willModify(self, v9, v10, v11, v12);
  v20 = objc_msgSend_findOrAddRowInfoAtTileRowIndex_(self, v13, v5, v14, v15);
  if (!v20)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableTile setCell:atColumnIndex:tileRowIndex:]", v18, v19);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 541, 0, "Couldn't find row info for row index %lu", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (objc_msgSend_usesWideOffsets(v20, v16, v17, v18, v19))
  {
    if (!self->_shouldUseWideRows)
    {
      self->_shouldUseWideRows = 1;
    }
  }

  else if (self->_shouldUseWideRows)
  {
    objc_msgSend_convertToWideOffsets(v20, v32, v33, v34, v35);
  }

  v40 = objc_msgSend_setCell_atIndex_(v20, v32, v8, v6, v35);
  if (!self->_shouldUseWideRows && objc_msgSend_usesWideOffsets(v20, v36, v37, v38, v39))
  {
    self->_shouldUseWideRows = 1;
  }

  if (!objc_msgSend_cellCount(v20, v36, v37, v38, v39))
  {
    objc_msgSend__removeRowInfo_atTileRowIndex_(self, v41, v20, v5, v42);
  }

  return v40;
}

- (int)insertColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4
{
  if ((objc_msgSend_isEmpty(self, a2, a3, *&a4, v4) & 1) == 0)
  {
    objc_msgSend_willModify(self, v8, v9, v10, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2210C0A8C;
    v16[3] = &unk_27845E980;
    v18 = a3;
    v17 = a4;
    v16[4] = self;
    objc_msgSend_enumerateRowsWithBlock_(self, v12, v16, v13, v14);
  }

  return 0;
}

- (id)removeColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4
{
  if (objc_msgSend_isEmpty(self, a2, a3, *&a4, v4))
  {
    v12 = 0;
  }

  else
  {
    objc_msgSend_willModify(self, v8, v9, v10, v11);
    v13 = objc_opt_new();
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_2210C0C2C;
    v25 = &unk_27845E9A8;
    v28 = a3;
    v27 = a4;
    v12 = v13;
    v26 = v12;
    objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v14, &v22, v15, v16);
    objc_msgSend_pruneEmptyRows(self, v17, v18, v19, v20, v22, v23, v24, v25);
  }

  return v12;
}

- (void)moveColumnsAtColumnIndex:(unsigned __int16)a3 numberOfColumns:(unsigned int)a4 toDestColumnIndex:(unsigned __int16)a5
{
  if ((objc_msgSend_isEmpty(self, a2, a3, *&a4, a5) & 1) == 0)
  {
    objc_msgSend_willModify(self, v9, v10, v11, v12);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2210C0D58;
    v20[3] = &unk_27845E9C8;
    v22 = a3;
    v23 = a5;
    v21 = a4;
    objc_msgSend_enumerateRowsWithBlock_(self, v13, v20, v14, v15);
    objc_msgSend_pruneEmptyRows(self, v16, v17, v18, v19);
  }
}

- (void)insertRowsAtTileRowIndex:(unsigned int)a3 numberOfRows:(unsigned int)a4
{
  LODWORD(v8) = objc_msgSend_maxRow(self, a2, *&a3, *&a4, v4);
  isEmpty = objc_msgSend_isEmpty(self, v9, v10, v11, v12);
  if (a4 && (isEmpty & 1) == 0 && v8 >= a3)
  {
    objc_msgSend_willModify(self, v14, v15, v16, v17);
    objc_msgSend_setCount_(self->_rowInfos, v18, v8 + a4, v19, v20);
    v8 = v8;
    v24 = a4;
    do
    {
      v27 = objc_msgSend_rowInfoForTileRowIndex_(self, v21, v8, v22, v23);
      if (v27)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v25, 0, v8, v26);
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v28, v27, v24 + v8, v29);
      }
    }

    while (v8-- > a3);
  }
}

- (void)_removeRowsAtTileRowIndex:(unsigned int)a3 numberOfRows:(unsigned int)a4 shiftingContent:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  objc_msgSend_willModify(self, a2, *&a3, *&a4, a5);
  if ((objc_msgSend_isEmpty(self, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = objc_msgSend_maxRow(self, v13, v14, v15, v16);
    v18 = v17;
    if (v7 || v17 >= a4)
    {
      if (v17 >= v7)
      {
        v19 = a4 + v7;
        do
        {
          v22 = objc_msgSend_rowInfoForTileRowIndex_(self, v13, v7, v15, v16);
          if (v7 >= v19)
          {
            if (v5)
            {
              objc_msgSend__setRowInfo_atTileRowIndex_(self, v20, 0, v7, v21);
              objc_msgSend__setRowInfo_atTileRowIndex_(self, v23, v22, v7 - a4, v24);
            }
          }

          else
          {
            objc_msgSend__setRowInfo_atTileRowIndex_(self, v20, 0, v7, v21);
          }

          v7 = (v7 + 1);
        }

        while (v7 <= v18);
      }
    }

    else
    {
      objc_msgSend_setCount_(self->_rowInfos, v13, 0, v15, v16);
    }
  }

  objc_msgSend_p_pruneRowCount(self, v13, v14, v15, v16);
}

- (void)shiftUpAtTileRowIndex:(unsigned int)a3 count:(unsigned int)a4
{
  v5 = *&a4;
  v6 = *&a3;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&a3, *&a4, v4);
  if (v5 && (isEmpty & 1) == 0 && objc_msgSend_maxRow(self, v9, v10, v11, v12) >= v6)
  {
    objc_msgSend_willModify(self, v13, v14, v15, v16);

    MEMORY[0x2821F9670](self, sel__removeRowsAtTileRowIndex_numberOfRows_shiftingContent_, v6, v5, 1);
  }
}

- (id)shiftUpAndYankBy:(unsigned int)a3
{
  v5 = *&a3;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&a3, v3, v4);
  if (!v5 || isEmpty)
  {
    v12 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_yankRowsAtTileRowIndex_count_(self, v8, 0, v5, v11);
    objc_msgSend_shiftUpAtTileRowIndex_count_(self, v13, 0, v5, v14);
  }

  return v12;
}

- (id)yankRowInfoAtTileRowIndex:(unsigned int)a3
{
  v5 = *&a3;
  if (objc_msgSend_isEmpty(self, a2, *&a3, v3, v4))
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_rowInfoForTileRowIndex_(self, v7, v5, v8, v9);
    if (v10)
    {
      objc_msgSend_willModify(self, v11, v12, v13, v14);
      objc_msgSend__setRowInfo_atTileRowIndex_(self, v15, 0, v5, v16);
    }
  }

  return v10;
}

- (id)yankRowsAtTileRowIndex:(unsigned int)a3 count:(unsigned int)a4
{
  v8 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], a2, *&a3, *&a4, v4);
  objc_msgSend_setCount_(v8, v9, a4, v10, v11);
  isEmpty = objc_msgSend_isEmpty(self, v12, v13, v14, v15);
  if (a4)
  {
    v21 = isEmpty;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0 && objc_msgSend_maxRow(self, v17, v18, v19, v20) >= a3)
  {
    objc_msgSend_willModify(self, v22, v23, v24, v25);
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_2210BFF08;
    v54 = sub_2210BFF18;
    v55 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v26, v27, v28, v29);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2210C1338;
    v45[3] = &unk_27845E9F0;
    v48 = a3;
    v49 = a3 + a4 - 1;
    v30 = v8;
    v46 = v30;
    v47 = &v50;
    objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v31, v45, v32, v33);
    v34 = v51[5];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2210C13E4;
    v44[3] = &unk_27845E958;
    v44[4] = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v34, v35, v44, v36, v37);
    objc_msgSend_p_pruneRowCount(self, v38, v39, v40, v41);
    v42 = v30;

    _Block_object_dispose(&v50, 8);
  }

  return v8;
}

- (id)yankRowsAtTileRowIndex:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_maxRow(self, a2, *&a3, v3, v4);
  if ((objc_msgSend_isEmpty(self, v8, v9, v10, v11) & 1) != 0 || v7 < v5)
  {
    v16 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_yankRowsAtTileRowIndex_count_(self, v12, v5, v7 - v5 + 1, v15);
  }

  return v16;
}

- (void)spliceRowInfo:(id)a3 atTileRowIndex:(unsigned int)a4 overwrite:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v18 = a3;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  if (v5)
  {
    v17 = objc_msgSend_rowInfoForTileRowIndex_(self, v12, v6, v13, v14);
    if (v17)
    {
      objc_msgSend__removeRowInfo_atTileRowIndex_(self, v15, v17, v6, v16);
    }
  }

  objc_msgSend__setRowInfo_atTileRowIndex_(self, v12, v18, v6, v14);
}

- (void)spliceRows:(id)a3 atTileRowIndex:(unsigned int)a4
{
  v6 = a3;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2210C15E8;
  v14[3] = &unk_27845EA18;
  v14[4] = self;
  v15 = a4;
  objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v6, v11, v14, v12, v13);
}

- (void)swapRowAtTileRowIndex:(unsigned int)a3 withRowAtTileRowIndex:(unsigned int)a4
{
  if (a3 != a4)
  {
    v5 = *&a4;
    v6 = *&a3;
    v18 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&a3, *&a4, v4);
    v15 = objc_msgSend_rowInfoForTileRowIndex_(self, v8, v5, v9, v10);
    if (v18 | v15)
    {
      objc_msgSend_willModify(self, v11, v12, v13, v14);
      if (v18)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v16, 0, v6, v17);
      }

      if (v15)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v16, 0, v5, v17);
      }

      if (v18)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v16, v18, v5, v17);
      }

      if (v15)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v16, v15, v6, v17);
      }
    }
  }
}

- (void)didApplyConcurrentCellMap:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    objc_msgSend_willModify(self, v9, v10, v11, v12);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2210C17D0;
  v17[3] = &unk_27845E958;
  v17[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v4, v9, v17, v11, v12);
  objc_msgSend_p_pruneRowCount(self, v13, v14, v15, v16);
}

- (void)widenAllRowsForUpgrade
{
  v21 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  if (!self->_shouldUseWideRows)
  {
    self->_shouldUseWideRows = 1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_rowInfos;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ((objc_msgSend_usesWideOffsets(v15, v8, v9, v10, v11, v16) & 1) == 0)
          {
            objc_msgSend_convertToWideOffsets(v15, v8, v9, v10, v11);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v16, v20, 16);
      }

      while (v12);
    }
  }
}

@end