@interface TSTCategoryStoreIterator
- (BOOL)checkCell:(id)a3 searchFlags:(unint64_t)a4;
- (BOOL)getNextCellData:(id *)a3;
- (TSKUIDStruct)uuid;
- (TSTCategoryStoreIterator)initWithInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchMask:(unint64_t)a6;
- (TSTColumnRowUIDMap)baseMap;
- (TSTColumnRowUIDMap)summaryMap;
- (TSTColumnRowUIDMap)viewMap;
- (TSTGroupBy)groupBy;
- (TSTSummaryCellVendor)summaryCellVendor;
- (TSTTableDataStore)baseDataStore;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
- (_NSRange)baseTileRange;
- (id).cxx_construct;
- (id)nextCellData;
- (id)tempSummaryCell;
- (void)dealloc;
- (void)iterateCellsUsingBlock:(id)a3;
- (void)terminate;
- (void)updateCellData:(id)a3;
- (void)updateFormulaForCellData:(id)a3;
@end

@implementation TSTCategoryStoreIterator

- (TSTCategoryStoreIterator)initWithInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchMask:(unint64_t)a6
{
  v11 = a3;
  v185 = a4;
  v188.receiver = self;
  v188.super_class = TSTCategoryStoreIterator;
  v12 = [(TSTCategoryStoreIterator *)&v188 init];
  p_isa = &v12->super.isa;
  v14 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_info, a3);
    v19 = objc_msgSend_groupBy(v14->_info, v15, v16, v17, v18);
    objc_storeWeak(p_isa + 12, v19);

    objc_opt_class();
    v24 = objc_msgSend_translator(p_isa[9], v20, v21, v22, v23);
    v25 = TSUCheckedDynamicCast();
    translator = v14->_translator;
    v14->_translator = v25;

    v31 = objc_msgSend_baseTableModel(v14->_info, v27, v28, v29, v30);
    v36 = objc_msgSend_dataStore(v31, v32, v33, v34, v35);

    if (!v36)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v39, v40);
      v43 = v11;
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v42, v47, 115, 0, "invalid nil value for '%{public}s'", "_info.baseTableModel.dataStore");

      v11 = v43;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    v53 = objc_msgSend_summaryModel(p_isa[9], v37, v38, v39, v40);
    v58 = objc_msgSend_dataStore(v53, v54, v55, v56, v57);

    if (!v58)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v61, v62);
      v65 = v11;
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v67, v68);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v64, v69, 116, 0, "invalid nil value for '%{public}s'", "_info.summaryModel.dataStore");

      v11 = v65;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
    }

    v75 = objc_msgSend_baseTableModel(p_isa[9], v59, v60, v61, v62);
    v80 = objc_msgSend_dataStore(v75, v76, v77, v78, v79);
    objc_storeWeak(p_isa + 14, v80);

    v85 = objc_msgSend_baseTableModel(v14->_info, v81, v82, v83, v84);
    v90 = objc_msgSend_columnRowUIDMap(v85, v86, v87, v88, v89);
    objc_storeWeak(p_isa + 16, v90);

    v95 = objc_msgSend_columnRowUIDMap(v14->_info, v91, v92, v93, v94);
    objc_storeWeak(p_isa + 17, v95);

    v100 = objc_msgSend_summaryMap(v14->_translator, v96, v97, v98, v99);
    objc_storeWeak(p_isa + 19, v100);

    v105 = objc_msgSend_summaryModel(v14->_info, v101, v102, v103, v104);
    v110 = objc_msgSend_summaryCellVendor(v105, v106, v107, v108, v109);
    objc_storeWeak(p_isa + 18, v110);

    v115 = objc_msgSend_range(v14->_info, v111, v112, v113, v114);
    v118 = objc_msgSend_regionByIntersectingRange_(v185, v116, v115, v116, v117);
    region = v14->_region;
    v14->_region = v118;

    WeakRetained = objc_loadWeakRetained(p_isa + 14);
    v124 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v121, WeakRetained, v122, v123);
    baseDataListCache = v14->_baseDataListCache;
    v14->_baseDataListCache = v124;

    v14->_columnOrderReversed = (a5 & 4) != 0;
    v130 = v14->_region;
    if ((a5 & 4) != 0)
    {
      v131 = objc_msgSend_newRightToLeftIterator(v130, v126, v127, v128, v129);
    }

    else
    {
      v131 = objc_msgSend_newIterator(v130, v126, v127, v128, v129);
    }

    regionIterator = v14->_regionIterator;
    v14->_regionIterator = v131;

    v137 = a5 & 0xFFFFFFFFFFFFFFFBLL;
    if ((a5 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v138 = MEMORY[0x277D81150];
      v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v135, v136);
      v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v141, v142);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v144, v139, v143, 130, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v137);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v145, v146, v147, v148);
    }

    if (a6 == 66058240)
    {
      v149 = 0;
    }

    else
    {
      v149 = a6;
    }

    v14->_searchMask = v149;
    v150 = a6 & 0xFFFFFFFFFC1007FFLL;
    if ((a6 & 0xFFFFFFFFFC1007FFLL) != 0)
    {
      v151 = MEMORY[0x277D81150];
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v135, v136);
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v154, v155);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v157, v152, v156, 134, 0, "searchMask remain 0x%x, should be consumed by this point", v150);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v158, v159, v160, v161);
    }

    CellID = objc_msgSend_firstCellID(v14->_region, v133, v134, v135, v136);
    v163 = MEMORY[0x277D81490];
    v14->_curCellID = CellID;
    v14->_baseTileRange = *v163;
    *&v14->_curRowIndex = 0x8000000080000000;
    v14->_categoryColumnIndex = objc_msgSend_categoryColumnIndex(v14->_info, v164, v165, v166, v167);
    v172 = objc_msgSend_newCell(v14->_info, v168, v169, v170, v171);
    cell = v14->_cell;
    v14->_cell = v172;

    v174 = objc_alloc_init(TSTMutableCellIteratorData);
    cellData = v14->_cellData;
    v14->_cellData = v174;

    v180 = objc_msgSend_intersectingColumnsIndexSet(v14->_region, v176, v177, v178, v179);
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = sub_22142210C;
    v186[3] = &unk_27845E958;
    v187 = v14;
    objc_msgSend_enumerateIndexesUsingBlock_(v180, v181, v186, v182, v183);
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_terminated)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator dealloc]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 167, 0, "iteration should be terminated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  v16.receiver = self;
  v16.super_class = TSTCategoryStoreIterator;
  [(TSTCategoryStoreIterator *)&v16 dealloc];
}

- (id)tempSummaryCell
{
  tempSummaryCell = self->_tempSummaryCell;
  if (tempSummaryCell)
  {
    objc_msgSend_clear(tempSummaryCell, a2, v2, v3, v4);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_summaryCellVendor);
    v12 = objc_msgSend_tableInfo(WeakRetained, v8, v9, v10, v11);
    v17 = objc_msgSend_newCell(v12, v13, v14, v15, v16);
    v18 = self->_tempSummaryCell;
    self->_tempSummaryCell = v17;
  }

  v19 = self->_tempSummaryCell;

  return v19;
}

- (BOOL)checkCell:(id)a3 searchFlags:(unint64_t)a4
{
  v5 = a3;
  v10 = v5;
  v11 = v5 && (!a4 || (a4 & 0x420000) != 0 && (objc_msgSend_hasFormula(v5, v6, v7, v8, v9) & 1) != 0 || (a4 & 0x800) != 0 && (objc_msgSend_hasCellStyle(v10, v6, v7, v8, v9) & 1) != 0 || (a4 & 0x200000) != 0 && (objc_msgSend_hasTextStyle(v10, v6, v7, v8, v9) & 1) != 0 || (a4 & 0x8000) != 0 && (objc_msgSend_hasAnyFormats(v10, v6, v7, v8, v9) & 1) != 0 || (a4 & 0x4000) != 0 && (objc_msgSend_hasAnyCustomFormat(v10, v6, v7, v8, v9) & 1) != 0);

  return v11;
}

- (void)updateCellData:(id)a3
{
  v7 = objc_msgSend_cellID(a3, a2, a3, v3, v4);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCategoryStoreIterator updateCellData:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 202, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  objc_msgSend_clear(self->_cell, v8, v9, v10, v11);
  v27 = objc_msgSend_cellID(a3, v23, v24, v25, v26);
  curCellID = self->_curCellID;
  if (v27 != curCellID || ((curCellID ^ v27) & 0x101FFFF00000000) != 0)
  {
    v32 = objc_msgSend_cellID(a3, v28, v29, curCellID, v30);
    row = self->_curCellID.row;
    if (row <= v32 && (row != v32 || self->_curCellID.column <= WORD2(v32)))
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCategoryStoreIterator updateCellData:]", v34, v35);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v40, v41);
      objc_msgSend_cellID(a3, v43, v44, v45, v46);
      v47 = NSStringFromTSUCellCoord();
      v48 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v49, v38, v42, 231, 0, "cellID %@ should be before cursor cellID %@", v47, v48);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    goto LABEL_14;
  }

  if (self->_isSummaryRow || self->_isLabelRow || (v54 = HIDWORD(curCellID), self->_categoryColumnIndex == WORD2(curCellID)))
  {
    objc_msgSend_getCell_atCellID_(self->_translator, v28, self->_cell, curCellID, v30);
LABEL_14:
    cell = self->_cell;

    objc_msgSend_setCell_(a3, v33, cell, v34, v35);
    return;
  }

  if (!self->_baseTile)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTCategoryStoreIterator updateCellData:]", curCellID, v30);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v59, v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 212, 0, "invalid nil value for '%{public}s'", "_baseTile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  if (!self->_baseRow)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTCategoryStoreIterator updateCellData:]", curCellID, v30);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v70, v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v73, v68, v72, 213, 0, "invalid nil value for '%{public}s'", "_baseRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
  }

  v137 = v54;
  if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v137))
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTCategoryStoreIterator updateCellData:]", v79, v80);
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v84, v85);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v87, v82, v86, 214, 0, "incomplete map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
  }

  v136 = v54;
  v138 = &v136;
  v92 = sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v136);
  v96 = objc_msgSend_cellStorageRefAtIndex_(self->_baseRow, v93, *(v92 + 9), v94, v95);
  if (v96)
  {
    v100 = v96;
    v101 = self->_cell;
    WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);
    objc_msgSend_inflateFromStorageRef_dataStore_cache_(v101, v103, v100, WeakRetained, self->_baseDataListCache);
  }

  else
  {
    v107 = MEMORY[0x277D81150];
    v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSTCategoryStoreIterator updateCellData:]", v98, v99);
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v110, v111);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v113, v108, v112, 217, 0, "invalid nil value for '%{public}s'", "cellRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
    v118 = MEMORY[0x277D81150];
    v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "[TSTCategoryStoreIterator updateCellData:]", v120, v121);
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v124, v125);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v127, v122, v126, 224, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130, v131);
    objc_msgSend_clear(self->_cell, v132, v133, v134, v135);
  }

  objc_msgSend_setCell_(a3, v104, self->_cell, v105, v106);
}

- (void)updateFormulaForCellData:(id)a3
{
  v7 = objc_msgSend_cellID(a3, a2, a3, v3, v4);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 238, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_cellID(a3, v8, v9, v10, v11);
  curCellID = self->_curCellID;
  if (v23 == curCellID && ((curCellID ^ v23) & 0x101FFFF00000000) == 0)
  {
    if (self->_isSummaryRow || self->_isLabelRow || (v28 = HIDWORD(curCellID), self->_categoryColumnIndex == WORD2(curCellID)))
    {
      objc_msgSend_getCell_atCellID_(self->_translator, v24, self->_cell, curCellID, v25);
      if (objc_msgSend_hasFormula(self->_cell, v29, v30, v31, v32))
      {
        v123 = objc_msgSend_cellSpec(self->_cell, v33, v34, v35, v36);
        v41 = objc_msgSend_asFormulaSpec(v123, v37, v38, v39, v40);
        objc_msgSend_setFormulaSpec_(a3, v42, v41, v43, v44);
      }
    }

    else
    {
      if (!self->_baseTile)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCategoryStoreIterator updateFormulaForCellData:]", curCellID, v25);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v48, v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 249, 0, "invalid nil value for '%{public}s'", "_baseTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
      }

      if (!self->_baseRow)
      {
        v56 = MEMORY[0x277D81150];
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCategoryStoreIterator updateFormulaForCellData:]", curCellID, v25);
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v59, v60);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 250, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
      }

      v125 = v28;
      if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v125))
      {
        v70 = MEMORY[0x277D81150];
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v68, v69);
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v73, v74);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v76, v71, v75, 251, 0, "incomplete map.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
      }

      v124 = v28;
      v126 = &v124;
      v81 = sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v124);
      v85 = objc_msgSend_cellStorageRefAtIndex_(self->_baseRow, v82, *(v81 + 9), v83, v84);
      if (v85)
      {
        v89 = v85;
        WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);
        v94 = objc_msgSend_formulaSpecForStorageRef_(WeakRetained, v91, v89, v92, v93);
        objc_msgSend_setFormulaSpec_(a3, v95, v94, v96, v97);
      }

      else
      {
        v98 = MEMORY[0x277D81150];
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v87, v88);
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v101, v102);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v104, v99, v103, 254, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
        v109 = MEMORY[0x277D81150];
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v111, v112);
        v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v115, v116);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v118, v113, v117, 259, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
      }
    }
  }
}

- (TSUCellCoord)getNext
{
  v6 = 0;
  LOWORD(v7) = 0;
  v161 = 0;
  v8 = 1;
  while (1)
  {
    while (1)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_29;
      }

      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3, v4);
      v6 = Next;
      v7 = HIDWORD(Next);
      v161 = HIWORD(Next);
      v10 = Next;
      if (Next == 0x7FFFFFFFLL || (Next & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v8 = 0;
        goto LABEL_48;
      }

      if (self->_curRowIndex != Next)
      {
        self->_curRowIndex = Next;
        objc_msgSend_setBaseRow_(self, a2, 0, v3, v4);
        WeakRetained = objc_loadWeakRetained(&self->_viewMap);
        self->_uuid._lower = objc_msgSend_rowUIDForRowIndex_(WeakRetained, v13, v6, v14, v15);
        self->_uuid._upper = v16;

        if (self->_uuid._lower || self->_uuid._upper)
        {
          v17 = objc_loadWeakRetained(&self->_baseMap);
          self->_baseRowIndex = objc_msgSend_rowIndexForRowUID_(v17, v18, self->_uuid._lower, self->_uuid._upper, v19);

          if (self->_baseRowIndex == 0x7FFFFFFF)
          {
            v20 = sub_2211A8E4C(self->_uuid._lower, self->_uuid._upper);
            baseRowIndex = self->_baseRowIndex;
            self->_isSummaryRow = v20;
            if (baseRowIndex == 0x7FFFFFFF)
            {
              v22 = sub_2211A8E20(self->_uuid._lower, self->_uuid._upper);
              isSummaryRow = self->_isSummaryRow;
              self->_isLabelRow = v22;
              if (!isSummaryRow)
              {
                if (v22)
                {
                  v24 = objc_msgSend_groupLevelAtLabelRow_(self->_translator, a2, v10, v3, v4);
LABEL_22:
                  self->_groupLevel = v24;
                  goto LABEL_23;
                }

LABEL_21:
                v24 = -1;
                goto LABEL_22;
              }
            }

            else
            {
              self->_isLabelRow = 0;
              if (!v20)
              {
                goto LABEL_21;
              }
            }

            v24 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, a2, v10, v3, v4);
            goto LABEL_22;
          }
        }

        else
        {
          self->_baseRowIndex = 0x7FFFFFFF;
        }

        *&self->_isSummaryRow = 0;
        goto LABEL_21;
      }

LABEL_23:
      if (!self->_isSummaryRow)
      {
        if (self->_baseTile)
        {
          v25 = self->_baseRowIndex;
          location = self->_baseTileRange.location;
          v27 = v25 >= location;
          v28 = v25 - location;
          if (!v27 || v28 >= self->_baseTileRange.length)
          {
            objc_msgSend_setBaseTile_(self, a2, 0, v3, v4);
            self->_baseTileRange = *MEMORY[0x277D81490];
          }
        }
      }

LABEL_29:
      if (self->_categoryColumnIndex != v7)
      {
        break;
      }

      if (self->_isSummaryRow || self->_isLabelRow)
      {
        searchMask = self->_searchMask;
        if (!searchMask || (searchMask & 0x400000) != 0)
        {
LABEL_90:
          v38 = v6;
          goto LABEL_91;
        }
      }

      v30 = objc_msgSend_tempSummaryCell(self, a2, v2, v3, v4);
      v31 = objc_loadWeakRetained(&self->_summaryCellVendor);
      TSTMakeCellUID(v163);
      Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v31, v32, v30, v163, v33);

      if (Cell_atCellUID)
      {
      }

      else
      {
        v73 = objc_msgSend_checkCell_searchFlags_(self, v35, v30, self->_searchMask, v36);

        if (v73)
        {
          goto LABEL_90;
        }
      }

      objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v161 << 48) | (v7 << 32) | v6, v3, v4);
      v8 = 1;
LABEL_48:
      if (v7 == 0x7FFF || v6 == 0x7FFFFFFF)
      {
        v38 = v6;
        goto LABEL_92;
      }
    }

    if (!self->_isSummaryRow && !self->_isLabelRow)
    {
      baseTile = self->_baseTile;
      if (!baseTile)
      {
        v76 = objc_loadWeakRetained(&self->_baseDataStore);
        v79 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(v76, v77, self->_baseRowIndex, v163, v78);
        objc_msgSend_setBaseTile_(self, v80, v79, v81, v82);

        baseTile = self->_baseTile;
        if (baseTile || (v83 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator getNext]", v3, v4), v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v86, v87), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v89, v84, v88, 392, 0, "invalid nil value for '%{public}s'", "_baseTile"), v88, v84, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93), (baseTile = self->_baseTile) != 0))
        {
          v94 = self->_baseRowIndex;
          v27 = v94 >= *&v163[0];
          v95 = v94 - *&v163[0];
          if (!v27 || v95 >= *(&v163[0] + 1))
          {
            objc_msgSend_setBaseTile_(self, a2, 0, v3, v4);
            self->_baseTileRange = *MEMORY[0x277D81490];
            v6 = (v6 + 1);
            objc_msgSend_advanceToCellID_(self->_regionIterator, v157, v6, v158, v159);
            v161 = 0;
            LOWORD(v7) = 0;
            v8 = 1;
            goto LABEL_48;
          }
        }

        self->_baseTileRange = v163[0];
      }

      if (!self->_baseRow)
      {
        v135 = objc_msgSend_rowInfoForTileRowIndex_(baseTile, a2, self->_baseRowIndex - LODWORD(self->_baseTileRange.location), v3, v4);
        objc_msgSend_setBaseRow_(self, v136, v135, v137, v138);

        if (!self->_baseRow)
        {
          self->_baseRowIndex = 0x7FFFFFFF;
          v6 = (v6 + 1);
          objc_msgSend_advanceToCellID_(self->_regionIterator, v139, v6, v140, v141);
          v161 = 0;
          LOWORD(v7) = 0;
          v8 = 1;
          goto LABEL_48;
        }

        if ((objc_msgSend_intersectsRow_(self->_region, v139, v6, v140, v141) & 1) == 0)
        {
          v145 = MEMORY[0x277D81150];
          v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "[TSTCategoryStoreIterator getNext]", v143, v144);
          v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v148, v149);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v151, v146, v150, 426, 0, "should now have a row that intersects the region");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
        }
      }

      LOWORD(v163[0]) = v7;
      if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, v163))
      {
        v99 = MEMORY[0x277D81150];
        v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSTCategoryStoreIterator getNext]", v97, v98);
        v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v102, v103);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v105, v100, v104, 430, 0, "couldn't find offset, that's not good.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
      }

      v162 = v7;
      *&v163[0] = &v162;
      v110 = *(sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v162) + 9);
      if (objc_msgSend_cellIndexAtOrAfterIndex_(self->_baseRow, v111, v110, v112, v113) == v110)
      {
        if (v7 == 0x7FFF || v6 == 0x7FFFFFFF)
        {
          v115 = MEMORY[0x277D81150];
          v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator getNext]", v114, v4);
          v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v118, v119);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v121, v116, v120, 443, 0, "should now have a valid cellID at this point");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
        }

        v38 = v6;
        v3 = self->_searchMask;
        if (!v3 || (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(self->_baseRow, a2, v110, v3, v4) & 1) != 0)
        {
          if (v7 == 999)
          {
            objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v6 + 1), v3, v4);
            goto LABEL_92;
          }

LABEL_91:
          objc_msgSend_advanceToCellID_(self->_regionIterator, a2, v6 | ((v7 + 1) << 32), v3, v4);
          goto LABEL_92;
        }

        objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v161 << 48) | (v7 << 32) | v6, v3, v4);
      }

      else
      {
        LOWORD(v7) = v7 + 1;
        objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v161 << 48) | (v7 << 32) | v6, v114, v4);
      }

      goto LABEL_45;
    }

    v37 = (v161 << 48) | (v7 << 32);
    v38 = v6;
    if ((objc_msgSend_containsCellID_(self->_region, a2, v37 | v6, v3, v4) & 1) == 0)
    {
      objc_msgSend_advanceToCellID_(self->_regionIterator, v39, v37 | v6, v40, v41);
LABEL_45:
      v8 = 1;
      goto LABEL_48;
    }

    v42 = objc_loadWeakRetained(&self->_viewMap);
    v46 = objc_msgSend_columnUIDForColumnIndex_(v42, v43, v7, v44, v45);
    v48 = v47;

    if (!(v46 | v48))
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTCategoryStoreIterator getNext]", v51, v52);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v56, v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 345, 0, "invalid columnUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    v64 = objc_msgSend_tempSummaryCell(self, v49, v50, v51, v52);
    v65 = objc_loadWeakRetained(&self->_summaryCellVendor);
    sub_2211A8F64(self->_groupLevel, 0, v163);
    v68 = objc_msgSend_getCell_atCellUID_(v65, v66, v64, v163, v67);

    if (v68)
    {

      v64 = 0;
      if (self->_isSummaryRow)
      {
        goto LABEL_85;
      }

      goto LABEL_75;
    }

    if (self->_isSummaryRow)
    {
      break;
    }

LABEL_75:
    if (objc_msgSend_hasFormula(v64, v69, v70, v71, v72))
    {
      v127 = self->_searchMask;
      if (!v127 || (v127 & 0x400000) != 0)
      {
        goto LABEL_93;
      }
    }

    v128 = objc_msgSend_tempSummaryCell(self, v69, v126, v71, v72);
    v129 = objc_loadWeakRetained(&self->_summaryCellVendor);
    TSTMakeCellUID(v163);
    v132 = objc_msgSend_getCell_atCellUID_(v129, v130, v128, v163, v131);

    if (v132)
    {
    }

    else
    {
      v156 = objc_msgSend_checkCell_searchFlags_(self, v133, v128, self->_searchMask, v134);

      if (v156)
      {
        goto LABEL_93;
      }
    }

LABEL_85:
    objc_msgSend_advanceToCellID_(self->_regionIterator, v69, v37 | v6, v71, v72);

    if (v7 != 0x7FFF)
    {
      v8 = 1;
      if (v6 != 0x7FFFFFFF)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  if (!v64 || (objc_msgSend_checkCell_searchFlags_(self, v69, v64, self->_searchMask, v72) & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_93:
  if (v7 == 999)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v69, (v6 + 1), v71, v72);
  }

  else
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v69, v6 | ((v7 + 1) << 32), v71, v72);
  }

LABEL_92:
  self->_curCellID.row = v6;
  self->_curCellID.column = v7;
  *&self->_curCellID._preserveRow = v161;
  return ((v161 << 48) | (v7 << 32) | v38);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3
{
  curCellID = self->_curCellID;
  v8 = curCellID.row != 0x7FFFFFFF && (*&curCellID & 0xFFFF00000000) != 0x7FFF00000000 && curCellID.row >= a3.row;
  if (!v8 || curCellID.row == a3.row && curCellID.column < a3.column)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, a2, *&a3, v3, v4);
    return self->_curCellID;
  }

  return curCellID;
}

- (void)iterateCellsUsingBlock:(id)a3
{
  v7 = a3;
  v8 = 0;
  v12 = 0;
  do
  {
    v11 = v8;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v11, v5, v6);
    v10 = v11;

    if (!NextCellData)
    {
      break;
    }

    v7[2](v7, v10, &v12);
    v8 = v10;
  }

  while ((v12 & 1) == 0);
}

- (id)nextCellData
{
  v9 = 0;
  NextCellData = objc_msgSend_getNextCellData_(self, a2, &v9, v2, v3);
  v5 = v9;
  v6 = v5;
  v7 = 0;
  if (NextCellData)
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)getNextCellData:(id *)a3
{
  Next = objc_msgSend_getNext(self, a2, a3, v3, v4);
  v11 = Next == 0x7FFFFFFF || (Next & 0xFFFF00000000) == 0x7FFF00000000;
  v12 = !v11;
  if (!v11)
  {
    objc_msgSend_setCellID_(self->_cellData, v7, Next, v9, v10);
    objc_msgSend_updateCellData_(self, v13, self->_cellData, v14, v15);
    if (a3)
    {
      *a3 = self->_cellData;
    }
  }

  return v12;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    objc_msgSend_terminate(self->_regionIterator, a2, v2, v3, v4);
    self->_terminated = 1;
  }
}

- (TSTGroupBy)groupBy
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);

  return WeakRetained;
}

- (TSTTableDataStore)baseDataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)baseMap
{
  WeakRetained = objc_loadWeakRetained(&self->_baseMap);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)viewMap
{
  WeakRetained = objc_loadWeakRetained(&self->_viewMap);

  return WeakRetained;
}

- (TSTSummaryCellVendor)summaryCellVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryCellVendor);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)summaryMap
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryMap);

  return WeakRetained;
}

- (TSKUIDStruct)uuid
{
  upper = self->_uuid._upper;
  lower = self->_uuid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (_NSRange)baseTileRange
{
  length = self->_baseTileRange.length;
  location = self->_baseTileRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end