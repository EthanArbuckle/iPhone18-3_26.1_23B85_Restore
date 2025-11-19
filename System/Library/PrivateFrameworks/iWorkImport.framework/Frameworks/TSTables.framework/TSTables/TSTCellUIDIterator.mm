@interface TSTCellUIDIterator
- (BOOL)nextCellUIDsBatch:(void *)a3 batchSize:(unint64_t)a4;
- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)a3 UIDs:(const void *)a4 index:(unint64_t *)a5 remainDup:(unint64_t *)a6 lastDiffPos:(unint64_t *)a7 recentResults:(void *)a8;
- (TSKUIDStructCoord)_nextCellUID_NoDispatch;
- (TSKUIDStructCoord)cellUID;
- (TSKUIDStructCoord)nextCellUID;
- (TSTCellUIDIterator)initWithCellUIDList:(id)a3;
- (id).cxx_construct;
- (void)setCellUID:(TSKUIDStructCoord *)a3;
@end

@implementation TSTCellUIDIterator

- (TSTCellUIDIterator)initWithCellUIDList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSTCellUIDIterator;
  v6 = [(TSTCellUIDIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cellUIDList, a3);
    v7->_lastColumnDiffPos = 0;
    *&v7->_columnIndex = 0u;
    *&v7->_columnRemainDup = 0u;
    *&v7->_index = 0u;
  }

  return v7;
}

- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)a3 UIDs:(const void *)a4 index:(unint64_t *)a5 remainDup:(unint64_t *)a6 lastDiffPos:(unint64_t *)a7 recentResults:(void *)a8
{
  if (*a6)
  {
    --*a6;
    v11 = *a7;
    if (*a7 < *(a8 + 5))
    {
LABEL_5:
      v23 = *(a8 + 4) + v11;
LABEL_10:
      v41 = (*(*(a8 + 1) + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v23);
      goto LABEL_11;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", a4, a5);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 575, 0, "Unexpected back reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
LABEL_4:
    v11 = *a7;
    goto LABEL_5;
  }

  v25 = *a4;
  v26 = *(a4 + 1);
  v27 = (*a5)++;
  v28 = *(*a3 + 4 * v27);
  v29 = (v28 - 1);
  if (v28 >= 1)
  {
    *a7 = v29;
    if (*(a8 + 5) <= v29)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", a4, a5);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 585, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      v29 = *a7;
    }

    v23 = *(a8 + 4) + v29;
    goto LABEL_10;
  }

  v46 = (v26 - v25) >> 4;
  v47 = -v46 - v28;
  if (-v46 >= v28)
  {
    if (*a7 >= *(a8 + 5))
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", a4, a5);
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v63, v64);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 593, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    }

    *a6 = v47;
    goto LABEL_4;
  }

  v48 = -v28;
  if (v46 <= v48)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", a4, a5);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 589, 0, "Unexpected ID reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    v25 = *a4;
  }

  v41 = (v25 + 16 * v48);
LABEL_11:
  sub_2213C63C8(a8, v41);
  v42 = *(a8 + 5);
  if (v42 >= 0x3E9)
  {
    *(a8 + 5) = v42 - 1;
    sub_2213C6EDC(a8, 1);
  }

  v43 = (*(*(a8 + 1) + ((*(a8 + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a8 + 4));
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

- (BOOL)nextCellUIDsBatch:(void *)a3 batchSize:(unint64_t)a4
{
  *(a3 + 1) = *a3;
  v8 = objc_msgSend_cellUIDList(self, a2, a3, a4, v4);
  v13 = objc_msgSend_queue(v8, v9, v10, v11, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C6840;
  block[3] = &unk_2784643B8;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v13, block);

  return *a3 != *(a3 + 1);
}

- (TSKUIDStructCoord)cellUID
{
  v3 = *&self[5]._row._upper;
  retstr->_column = *&self[5]._column._upper;
  retstr->_row = v3;
  return self;
}

- (void)setCellUID:(TSKUIDStructCoord *)a3
{
  column = a3->_column;
  self->_cellUID._row = a3->_row;
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