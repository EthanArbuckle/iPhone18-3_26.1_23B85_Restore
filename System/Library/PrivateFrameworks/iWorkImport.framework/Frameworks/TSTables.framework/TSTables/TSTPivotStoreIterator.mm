@interface TSTPivotStoreIterator
- (TSTPivotStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTPivotStoreIterator

- (TSTPivotStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  infoCopy = info;
  regionCopy = region;
  v105.receiver = self;
  v105.super_class = TSTPivotStoreIterator;
  v16 = [(TSTCategoryStoreIterator *)&v105 initWithInfo:infoCopy region:regionCopy flags:flags searchMask:mask];
  if (v16)
  {
    v17 = objc_msgSend_newCell(infoCopy, v12, v13, v14, v15);
    v18 = *(v16 + 40);
    *(v16 + 40) = v17;

    objc_opt_class();
    v23 = objc_msgSend_translator(infoCopy, v19, v20, v21, v22);
    v24 = TSUCheckedDynamicCast();
    v25 = *(v16 + 47);
    *(v16 + 47) = v24;

    v30 = objc_msgSend_baseTableModel(infoCopy, v26, v27, v28, v29);
    v35 = objc_msgSend_dataStore(v30, v31, v32, v33, v34);

    if (!v35)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTPivotStoreIterator initWithInfo:region:flags:searchMask:]", v38, v39);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v43, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 53, 0, "invalid nil value for '%{public}s'", "info.baseTableModel.dataStore");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    v51 = objc_msgSend_summaryModel(infoCopy, v36, v37, v38, v39);
    v56 = objc_msgSend_dataStore(v51, v52, v53, v54, v55);

    if (!v56)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSTPivotStoreIterator initWithInfo:region:flags:searchMask:]", v59, v60);
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 54, 0, "invalid nil value for '%{public}s'", "info.summaryModel.dataStore");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    v72 = objc_msgSend_baseTableModel(infoCopy, v57, v58, v59, v60);
    v77 = objc_msgSend_dataStore(v72, v73, v74, v75, v76);
    v78 = *(v16 + 41);
    *(v16 + 41) = v77;

    v83 = objc_msgSend_summaryModel(infoCopy, v79, v80, v81, v82);
    v88 = objc_msgSend_dataStore(v83, v84, v85, v86, v87);
    v89 = *(v16 + 42);
    *(v16 + 42) = v88;

    v93 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v90, *(v16 + 41), v91, v92);
    v94 = *(v16 + 43);
    *(v16 + 43) = v93;

    v98 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v95, *(v16 + 42), v96, v97);
    v99 = *(v16 + 44);
    *(v16 + 44) = v98;

    *(v16 + 36) = objc_msgSend_firstCellID(regionCopy, v100, v101, v102, v103);
  }

  return v16;
}

- (void)updateCellData:(id)data
{
  dataCopy = data;
  v8 = objc_msgSend_cellID(dataCopy, v4, v5, v6, v7);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotStoreIterator updateCellData:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 68, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_cellID(dataCopy, v9, v10, v11, v12);
  currentViewCellID = self->_currentViewCellID;
  v31 = v24 == currentViewCellID._coord.row;
  v30 = (*&currentViewCellID ^ v24) & 0x101FFFF00000000;
  v31 = v31 && v30 == 0;
  if (v31)
  {
    if (self->_currentCellIDIsBase)
    {
      baseRow = self->_baseRow;
      if (!baseRow)
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTPivotStoreIterator updateCellData:]", v27, v28);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v62, v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 72, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
        baseRow = self->_baseRow;
      }

      v71 = objc_msgSend_cellStorageRefAtIndex_(baseRow, v25, self->_currentBaseCellID._coord.column, v27, v28);
      if (v71)
      {
        objc_msgSend_inflateFromStorageRef_dataStore_cache_(self->_cell, v70, v71, self->_baseDataStore, self->_baseDataListCache);
      }

      else
      {
        v90 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSTPivotStoreIterator updateCellData:]", v72, v73);
        v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v93, v94);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v96, v91, v95, 74, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
        v101 = MEMORY[0x277D81150];
        v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "[TSTPivotStoreIterator updateCellData:]", v103, v104);
        v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v107, v108);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v110, v105, v109, 79, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
        objc_msgSend_clear(self->_cell, v115, v116, v117, v118);
      }
    }

    else
    {
      summaryRow = self->_summaryRow;
      if (!summaryRow)
      {
        v75 = MEMORY[0x277D81150];
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTPivotStoreIterator updateCellData:]", v27, v28);
        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v78, v79);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v81, v76, v80, 83, 0, "invalid nil value for '%{public}s'", "_summaryRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
        summaryRow = self->_summaryRow;
      }

      v87 = objc_msgSend_cellStorageRefAtIndex_(summaryRow, v25, self->_currentSummaryCellID._coord.column, v27, v28);
      if (v87)
      {
        objc_msgSend_inflateFromStorageRef_dataStore_cache_(self->_cell, v86, v87, self->_summaryDataStore, self->_summaryDataListCache);
      }

      else
      {
        v119 = MEMORY[0x277D81150];
        v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "[TSTPivotStoreIterator updateCellData:]", v88, v89);
        v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v122, v123);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v125, v120, v124, 85, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128, v129);
        v130 = MEMORY[0x277D81150];
        v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "[TSTPivotStoreIterator updateCellData:]", v132, v133);
        v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v136, v137);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v139, v134, v138, 90, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141, v142, v143);
        objc_msgSend_clear(self->_cell, v144, v145, v146, v147);
      }
    }
  }

  else
  {
    v32 = objc_msgSend_cellID(dataCopy, v25, v26, v27, v28);
    v37 = self->_currentViewCellID;
    if (v32 >= v37._coord.row && (v32 != v37._coord.row || WORD2(v32) >= v37._coord.column))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTPivotStoreIterator updateCellData:]", v35, v36);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v41, v42);
      objc_msgSend_cellID(dataCopy, v44, v45, v46, v47);
      v48 = NSStringFromTSUCellCoord();
      v49 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v50, v39, v43, 96, 0, "cellID %@ should be before cursor cellID %@", v48, v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    objc_msgSend_clear(self->_cell, v33, v34, v35, v36);
  }

  objc_msgSend_setCell_(dataCopy, v55, self->_cell, v56, v57);
}

- (void)updateFormulaForCellData:(id)data
{
  dataCopy = data;
  v8 = objc_msgSend_cellID(dataCopy, v4, v5, v6, v7);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotStoreIterator updateFormulaForCellData:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 104, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_cellID(dataCopy, v9, v10, v11, v12);
  currentViewCellID = self->_currentViewCellID;
  v30 = v24 == currentViewCellID._coord.row;
  v29 = (*&currentViewCellID ^ v24) & 0x101FFFF00000000;
  v30 = v30 && v29 == 0;
  if (v30)
  {
    if (self->_currentCellIDIsBase)
    {
      baseRow = self->_baseRow;
      if (!baseRow)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTPivotStoreIterator updateFormulaForCellData:]", v26, v27);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 109, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
        baseRow = self->_baseRow;
      }

      v44 = objc_msgSend_cellStorageRefAtIndex_(baseRow, v25, self->_currentBaseCellID._coord.column, v26, v27);
      if (!v44)
      {
        v70 = MEMORY[0x277D81150];
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTPivotStoreIterator updateFormulaForCellData:]", v45, v46);
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v73, v74);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v76, v71, v75, 111, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
        v81 = MEMORY[0x277D81150];
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTPivotStoreIterator updateFormulaForCellData:]", v83, v84);
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v87, v88);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v90, v85, v89, 116, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
        goto LABEL_8;
      }

      v47 = objc_msgSend_formulaSpecForStorageRef_(self->_baseDataStore, v43, v44, v45, v46);
      objc_msgSend_setFormulaSpec_(dataCopy, v48, v47, v49, v50);
    }

    else
    {
      summaryRow = self->_summaryRow;
      if (!summaryRow)
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTPivotStoreIterator updateFormulaForCellData:]", v26, v27);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v55, v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 119, 0, "invalid nil value for '%{public}s'", "_summaryRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
        summaryRow = self->_summaryRow;
      }

      v64 = objc_msgSend_cellStorageRefAtIndex_(summaryRow, v25, self->_currentSummaryCellID._coord.column, v26, v27);
      if (!v64)
      {
        v95 = MEMORY[0x277D81150];
        v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSTPivotStoreIterator updateFormulaForCellData:]", v65, v66);
        v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v98, v99);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v101, v96, v100, 121, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
        v106 = MEMORY[0x277D81150];
        v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "[TSTPivotStoreIterator updateFormulaForCellData:]", v108, v109);
        v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v112, v113);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v115, v110, v114, 126, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119);
        goto LABEL_8;
      }

      v47 = objc_msgSend_formulaSpecForStorageRef_(self->_summaryDataStore, v63, v64, v65, v66);
      objc_msgSend_setFormulaSpec_(dataCopy, v67, v47, v68, v69);
    }
  }

LABEL_8:
}

- (TSUCellCoord)getNext
{
  v10 = objc_msgSend_regionIterator(self, a2, v2, v3, v4);
  do
  {
    Next = objc_msgSend_getNext(v10, v6, v7, v8, v9);
    v15 = Next;
    v16 = Next;
    v17 = Next & 0xFFFF00000000;
    if (Next == 0x7FFFFFFFLL || v17 == 0x7FFF00000000)
    {
      break;
    }

    if (self->_currentRowIndex != Next)
    {
      self->_currentRowIndex = Next;
      baseRow = self->_baseRow;
      self->_baseRow = 0;

      summaryRow = self->_summaryRow;
      self->_summaryRow = 0;
    }

    self->_currentViewCellID._coord = v15;
    self->_currentBaseCellID = objc_msgSend_baseCellCoordForViewCellCoord_(self->_translator, v12, *&v15, v13, v14);
    p_currentSummaryCellID = &self->_currentSummaryCellID;
    self->_currentSummaryCellID = objc_msgSend_summaryCellCoordForViewCellCoord_(self->_translator, v21, *&self->_currentViewCellID, v22, v23);
    currentBaseCellID = self->_currentBaseCellID;
    v29 = currentBaseCellID == 0x7FFFFFFF || (currentBaseCellID & 0xFFFF00000000) == 0x7FFF00000000;
    v30 = !v29;
    self->_currentCellIDIsBase = v30;
    if (v29)
    {
      currentBaseCellID = *p_currentSummaryCellID;
      if (p_currentSummaryCellID->_coord.row == 0x7FFFFFFF || (currentBaseCellID & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTPivotStoreIterator getNext]", v26, v27);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v36, v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 178, 0, "Unexpected cell coordinate while iterating.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
        goto LABEL_25;
      }

      v31 = self->_summaryRow;
      if (v31)
      {
        v32 = HIDWORD(currentBaseCellID);
      }

      else
      {
        v49 = objc_msgSend_i_rowInfoAtIndex_(self->_summaryDataStore, v25, currentBaseCellID, v26, v27);
        v50 = self->_summaryRow;
        self->_summaryRow = v49;

        v31 = self->_summaryRow;
        LOWORD(v32) = self->_currentSummaryCellID._coord.column;
      }
    }

    else
    {
      v31 = self->_baseRow;
      if (v31)
      {
        v32 = HIDWORD(currentBaseCellID);
      }

      else
      {
        v47 = objc_msgSend_i_rowInfoAtIndex_(self->_baseDataStore, v25, currentBaseCellID, v26, v27);
        v48 = self->_baseRow;
        self->_baseRow = v47;

        v31 = self->_baseRow;
        LOWORD(v32) = self->_currentBaseCellID._coord.column;
      }
    }

    v51 = objc_msgSend_searchMask(self, v25, currentBaseCellID, v26, v27);
    if (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(v31, v52, v32, v51, v53))
    {
      if (v17 == 0x3E700000000)
      {
        objc_msgSend_advanceToCellID_(v10, v44, v15.row + 1, v45, v46);
      }

      else
      {
        objc_msgSend_advanceToCellID_(v10, v44, (*&v15 + 0x100000000) & 0xFFFF00000000 | v16, v45, v46);
      }

      break;
    }

LABEL_25:
    self->_currentViewCellID = 0x7FFF7FFFFFFFLL;
    objc_msgSend_advanceToCellID_(v10, v44, *&v15, v45, v46);
  }

  while (v15.row != 0x7FFFFFFF);

  return v15;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  currentViewCellID = self->_currentViewCellID;
  v8 = currentViewCellID._coord.row != 0x7FFFFFFF && (*&currentViewCellID & 0xFFFF00000000) != 0x7FFF00000000 && currentViewCellID._coord.row >= d.row;
  if (!v8 || currentViewCellID._coord.row == d.row && WORD2(*&self->_currentViewCellID) < d.column)
  {
    v9 = objc_msgSend_regionIterator(self, a2, *&d, v3, v4);
    objc_msgSend_advanceToCellID_(v9, v10, *&d, v11, v12);
  }

  return currentViewCellID._coord;
}

@end