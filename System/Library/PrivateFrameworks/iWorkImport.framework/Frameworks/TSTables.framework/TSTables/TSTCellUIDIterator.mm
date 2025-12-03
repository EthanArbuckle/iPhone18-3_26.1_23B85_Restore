@interface TSTCellUIDIterator
- (BOOL)nextCellUIDsBatch:(void *)batch batchSize:(unint64_t)size;
- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)list UIDs:(const void *)ds index:(unint64_t *)index remainDup:(unint64_t *)dup lastDiffPos:(unint64_t *)pos recentResults:(void *)results;
- (TSKUIDStructCoord)_nextCellUID_NoDispatch;
- (TSKUIDStructCoord)cellUID;
- (TSKUIDStructCoord)nextCellUID;
- (TSTCellUIDIterator)initWithCellUIDList:(id)list;
- (id).cxx_construct;
- (void)setCellUID:(TSKUIDStructCoord *)d;
@end

@implementation TSTCellUIDIterator

- (TSTCellUIDIterator)initWithCellUIDList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = TSTCellUIDIterator;
  v6 = [(TSTCellUIDIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cellUIDList, list);
    v7->_lastColumnDiffPos = 0;
    *&v7->_columnIndex = 0u;
    *&v7->_columnRemainDup = 0u;
    *&v7->_index = 0u;
  }

  return v7;
}

- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)list UIDs:(const void *)ds index:(unint64_t *)index remainDup:(unint64_t *)dup lastDiffPos:(unint64_t *)pos recentResults:(void *)results
{
  if (*dup)
  {
    --*dup;
    v11 = *pos;
    if (*pos < *(results + 5))
    {
LABEL_5:
      v23 = *(results + 4) + v11;
LABEL_10:
      v41 = (*(*(results + 1) + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v23);
      goto LABEL_11;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds, index);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 575, 0, "Unexpected back reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
LABEL_4:
    v11 = *pos;
    goto LABEL_5;
  }

  v25 = *ds;
  v26 = *(ds + 1);
  v27 = (*index)++;
  v28 = *(*list + 4 * v27);
  v29 = (v28 - 1);
  if (v28 >= 1)
  {
    *pos = v29;
    if (*(results + 5) <= v29)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds, index);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 585, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      v29 = *pos;
    }

    v23 = *(results + 4) + v29;
    goto LABEL_10;
  }

  v46 = (v26 - v25) >> 4;
  v47 = -v46 - v28;
  if (-v46 >= v28)
  {
    if (*pos >= *(results + 5))
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds, index);
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v63, v64);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 593, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    }

    *dup = v47;
    goto LABEL_4;
  }

  v48 = -v28;
  if (v46 <= v48)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds, index);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 589, 0, "Unexpected ID reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    v25 = *ds;
  }

  v41 = (v25 + 16 * v48);
LABEL_11:
  sub_2213C63C8(results, v41);
  v42 = *(results + 5);
  if (v42 >= 0x3E9)
  {
    *(results + 5) = v42 - 1;
    sub_2213C6EDC(results, 1);
  }

  v43 = (*(*(results + 1) + ((*(results + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(results + 4));
  v44 = *v43;
  v45 = v43[1];
  result._upper = v45;
  result._lower = v44;
  return result;
}

- (TSKUIDStructCoord)_nextCellUID_NoDispatch
{
  index = self->_index;
  if (index >= objc_msgSend_compressedSize(self->_cellUIDList, a3, v3, v4, v5))
  {
    v34 = self->_index;
    v35 = objc_msgSend_compressedSize(self->_cellUIDList, v9, v10, v11, v12);
    v40 = objc_msgSend_uncompressedCellUIDs(self->_cellUIDList, v36, v37, v38, v39);
    v45 = objc_msgSend_count(v40, v41, v42, v43, v44);
    v46 = v34 - v35;

    if (v46 >= v45)
    {
      retstr->_column = 0u;
      retstr->_row = 0u;
    }

    else
    {
      cellUIDList = self->_cellUIDList;
      ++self->_index;
      v52 = objc_msgSend_uncompressedCellUIDs(cellUIDList, v47, v48, v49, v50);
      v56 = v52;
      if (v52)
      {
        objc_msgSend_cellUIDAtIndex_(v52, v53, v46, v54, v55);
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      v57 = v59;
      retstr->_column = v58;
      retstr->_row = v57;
    }
  }

  else
  {
    v13 = objc_msgSend_compressedRowIndexes(self->_cellUIDList, v9, v10, v11, v12);
    v18 = objc_msgSend_compressedRowUIDs(self->_cellUIDList, v14, v15, v16, v17);
    objc_msgSend_p_nextCellRefIdWithUIDIndexList_UIDs_index_remainDup_lastDiffPos_recentResults_(self, v19, v13, v18, &self->_rowIndex, &self->_rowRemainDup, &self->_lastRowDiffPos, &self->_recentRowResults);
    v24 = objc_msgSend_compressedColumnIndexes(self->_cellUIDList, v20, v21, v22, v23);
    v29 = objc_msgSend_compressedColumnUIDs(self->_cellUIDList, v25, v26, v27, v28);
    objc_msgSend_p_nextCellRefIdWithUIDIndexList_UIDs_index_remainDup_lastDiffPos_recentResults_(self, v30, v24, v29, &self->_columnIndex, &self->_columnRemainDup, &self->_lastColumnDiffPos, &self->_recentColumnResults);
    ++self->_index;
    result = TSTMakeCellUID(&v58);
    v32 = v59;
    self->_cellUID._column = v58;
    self->_cellUID._row = v32;
    row = self->_cellUID._row;
    retstr->_column = self->_cellUID._column;
    retstr->_row = row;
  }

  return result;
}

- (TSKUIDStructCoord)nextCellUID
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x5012000000;
  v20 = sub_2213C6704;
  v21 = nullsub_59;
  v22 = &unk_22188E88F;
  v8 = objc_msgSend_cellUIDList(self, a3, v3, v4, v5);
  v13 = objc_msgSend_queue(v8, v9, v10, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2213C6714;
  v16[3] = &unk_27845EC10;
  v16[4] = self;
  v16[5] = &v17;
  dispatch_sync(v13, v16);

  v14 = *(v18 + 4);
  retstr->_column = *(v18 + 3);
  retstr->_row = v14;
  _Block_object_dispose(&v17, 8);
  return result;
}

- (BOOL)nextCellUIDsBatch:(void *)batch batchSize:(unint64_t)size
{
  *(batch + 1) = *batch;
  v8 = objc_msgSend_cellUIDList(self, a2, batch, size, v4);
  v13 = objc_msgSend_queue(v8, v9, v10, v11, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C6840;
  block[3] = &unk_2784643B8;
  block[4] = self;
  block[5] = batch;
  block[6] = size;
  dispatch_sync(v13, block);

  return *batch != *(batch + 1);
}

- (TSKUIDStructCoord)cellUID
{
  v3 = *&self[5]._row._upper;
  retstr->_column = *&self[5]._column._upper;
  retstr->_row = v3;
  return self;
}

- (void)setCellUID:(TSKUIDStructCoord *)d
{
  column = d->_column;
  self->_cellUID._row = d->_row;
  self->_cellUID._column = column;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end