@interface TSTDataStoreIterator
- (BOOL)getNextCellData:(id *)data;
- (TSTDataStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSTDataStoreIterator)initWithModel:(id)model region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSTPerformanceLoggingToken)logToken;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (_NSRange)curTileRange;
- (id)nextCellData;
- (void)iterateCellsUsingBlock:(id)block;
- (void)p_setupTileAndRowAtCellID:(TSUCellCoord)d;
- (void)setLogToken:(TSTPerformanceLoggingToken)token;
- (void)terminate;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTDataStoreIterator

- (TSTDataStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  regionCopy = region;
  v15 = objc_msgSend_baseTableModel(info, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithModel_region_flags_searchMask_(self, v16, v15, regionCopy, flags, mask);

  return v17;
}

- (TSTDataStoreIterator)initWithModel:(id)model region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  modelCopy = model;
  regionCopy = region;
  v97.receiver = self;
  v97.super_class = TSTDataStoreIterator;
  v13 = [(TSTDataStoreIterator *)&v97 init];
  v14 = v13;
  v15 = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v13->_logToken.logHandle, MEMORY[0x277D86228]);
  v15->_logToken.signpostID = 0;
  objc_storeStrong(&v14->_tableModel, model);
  v20 = objc_msgSend_dataStore(v15->_tableModel, v16, v17, v18, v19);
  dataStore = v15->_dataStore;
  v15->_dataStore = v20;

  if (!v15->_dataStore)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v23, v24);
    v96 = modelCopy;
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 77, 0, "invalid nil value for '%{public}s'", "_dataStore");

    modelCopy = v96;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  objc_storeStrong(&v14->_region, region);
  if (objc_msgSend_cellCount(regionCopy, v36, v37, v38, v39) >= 0x10)
  {
    v44 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v40, v15->_dataStore, v42, v43);
    dataListCache = v15->_dataListCache;
    v15->_dataListCache = v44;
  }

  if ((~flags & 0x204) == 0)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v42, v43);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v49, v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 91, 0, "cannot specify both walk right to left and walk bottom to top");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v53, v54, v55, v56);
    v15->_columnOrderReversed = 1;
LABEL_11:
    v58 = objc_msgSend_newRightToLeftIterator(v14->_region, v40, v41, v42, v43);
    goto LABEL_12;
  }

  v15->_columnOrderReversed = (flags & 4) != 0;
  if ((flags & 4) != 0)
  {
    goto LABEL_11;
  }

  region = v14->_region;
  if ((flags & 0x200) != 0)
  {
    v94 = objc_msgSend_newBottomToTopIterator(region, v40, v41, v42, v43);
    regionIterator = v15->_regionIterator;
    v15->_regionIterator = v94;

    flags &= 0xFFFFFFFFFFFFFDFBLL;
    goto LABEL_13;
  }

  v58 = objc_msgSend_newIterator(region, v40, v41, v42, v43);
LABEL_12:
  v59 = v15->_regionIterator;
  v15->_regionIterator = v58;

LABEL_13:
  v64 = flags & 0xFFFFFFFFFFFFFFFBLL;
  if ((flags & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v62, v63);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v70, 103, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v64);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v72, v73, v74, v75);
  }

  if (mask == 66058240)
  {
    maskCopy = 0;
  }

  else
  {
    maskCopy = mask;
  }

  v15->_searchMask = maskCopy;
  v77 = mask & 0xFFFFFFFFFC1007FFLL;
  if ((mask & 0xFFFFFFFFFC1007FFLL) != 0)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v62, v63);
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 107, 0, "searchMask remain 0x%x, should be consumed by this point", v77);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v85, v86, v87, v88);
  }

  CellID = objc_msgSend_firstCellID(v14->_region, v60, v61, v62, v63);
  objc_msgSend_p_setupTileAndRowAtCellID_(v15, v90, CellID, v91, v92);
LABEL_21:

  return v15;
}

- (void)p_setupTileAndRowAtCellID:(TSUCellCoord)d
{
  v4 = MEMORY[0x277D81490];
  self->_curCellID = d;
  self->_curTileRange = *v4;
  self->_curRowIndex = 0x7FFFFFFF;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_dataStore, a2, *&d, &v13, v3);
    v10 = v6;
    if (v6)
    {
      row = self->_curCellID.row;
      if (row >= v13.location && row - v13.location < v13.length)
      {
        v12 = objc_msgSend_rowInfoForTileRowIndex_(v6, v7, (row - LODWORD(v13.location)), v8, v9);
        if (v12)
        {
          objc_storeStrong(&self->_curRow, v12);
          self->_curRowIndex = self->_curCellID.row;
        }

        objc_storeStrong(&self->_curTile, v10);
        self->_curTileRange = v13;
      }
    }
  }
}

- (void)updateCellData:(id)data
{
  dataCopy = data;
  v12 = objc_msgSend_cellID(dataCopy, v4, v5, v6, v7);
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTDataStoreIterator updateCellData:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 147, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v28 = objc_msgSend_cell(dataCopy, v8, v9, v10, v11);
  if (!v28)
  {
    v29 = objc_msgSend_newCell(self->_tableModel, v24, v25, v26, v27);
    objc_msgSend_setCell_(dataCopy, v30, v29, v31, v32);

    v28 = objc_msgSend_cell(dataCopy, v33, v34, v35, v36);
  }

  v37 = objc_msgSend_cellID(dataCopy, v24, v25, v26, v27);
  v42 = HIDWORD(v12);
  curCellID = self->_curCellID;
  if (v37 == curCellID.row && ((*&curCellID ^ v37) & 0x101FFFF00000000) == 0)
  {
    if (!self->_curTile)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTDataStoreIterator updateCellData:]", v40, v41);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v60, v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v63, v58, v62, 157, 0, "invalid nil value for '%{public}s'", "_curTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    }

    curRow = self->_curRow;
    if (!curRow)
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTDataStoreIterator updateCellData:]", v40, v41);
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 158, 0, "invalid nil value for '%{public}s'", "_curRow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
      curRow = self->_curRow;
    }

    v81 = objc_msgSend_cellStorageRefAtIndex_(curRow, v38, v42, v40, v41);
    if (v81)
    {
      objc_msgSend_inflateFromStorageRef_dataStore_cache_suppressingTransmutation_(v28, v80, v81, self->_dataStore, self->_dataListCache, 0);
    }

    else
    {
      v84 = MEMORY[0x277D81150];
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSTDataStoreIterator updateCellData:]", v82, v83);
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v87, v88);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v90, v85, v89, 161, 0, "invalid nil value for '%{public}s'", "cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
      v95 = MEMORY[0x277D81150];
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSTDataStoreIterator updateCellData:]", v97, v98);
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v101, v102);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v104, v99, v103, 166, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
      objc_msgSend_clear(v28, v109, v110, v111, v112);
    }
  }

  else
  {
    if (curCellID.row <= v12 && (curCellID.row != v12 || WORD2(*&self->_curCellID) <= WORD2(v12)))
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTDataStoreIterator updateCellData:]", v40, v41);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v47, v48);
      v50 = NSStringFromTSUCellCoord();
      v51 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v45, v49, 171, 0, "cellID %@ should be before cursor cellID %@", v50, v51);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    objc_msgSend_clear(v28, v38, v39, v40, v41);
  }
}

- (void)updateFormulaForCellData:(id)data
{
  dataCopy = data;
  v8 = objc_msgSend_cellID(dataCopy, v4, v5, v6, v7);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTDataStoreIterator updateFormulaForCellData:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 179, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_cellID(dataCopy, v9, v10, v11, v12);
  curCellID = self->_curCellID;
  if (v24 == curCellID.row && ((*&curCellID ^ v24) & 0x101FFFF00000000) == 0)
  {
    if (!self->_curTile)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTDataStoreIterator updateFormulaForCellData:]", v27, v28);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 182, 0, "invalid nil value for '%{public}s'", "_curTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    }

    curRow = self->_curRow;
    if (!curRow)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTDataStoreIterator updateFormulaForCellData:]", v27, v28);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 183, 0, "invalid nil value for '%{public}s'", "_curRow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
      curRow = self->_curRow;
    }

    v53 = objc_msgSend_cellID(dataCopy, v25, v26, v27, v28);
    v58 = objc_msgSend_cellStorageRefAtIndex_(curRow, v54, WORD2(v53), v55, v56);
    if (v58)
    {
      v61 = objc_msgSend_formulaSpecForStorageRef_(self->_dataStore, v57, v58, v59, v60);
      objc_msgSend_setFormulaSpec_(dataCopy, v62, v61, v63, v64);
    }

    else
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSTDataStoreIterator updateFormulaForCellData:]", v59, v60);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v68, v69);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v70, 186, 0, "invalid nil value for '%{public}s'", "cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
    }
  }
}

- (TSUCellCoord)getNext
{
  v6 = 0;
  location_low = 0;
  LOWORD(v8) = 0;
  v9 = 0;
  v10 = 1;
  while (1)
  {
    if (v10)
    {
      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3, v4);
      v12 = Next;
      curRow = self->_curRow;
      if (curRow && self->_curRowIndex != Next)
      {
        self->_curRow = 0;

        self->_curRowIndex = 0x7FFFFFFF;
      }

      v8 = HIDWORD(v12);
      v9 = HIWORD(v12);
      curTile = self->_curTile;
      if (curTile)
      {
        location = self->_curTileRange.location;
        if (v12 < location || v12 - location >= self->_curTileRange.length)
        {
          self->_curTile = 0;

          self->_curTileRange = *MEMORY[0x277D81490];
        }
      }

      goto LABEL_55;
    }

    if (!self->_curTile)
    {
      v17 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_dataStore, a2, location_low, &v103, v4);
      v18 = self->_curTile;
      self->_curTile = v17;

      if (!self->_curTile)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3, v4);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 226, 0, "invalid nil value for '%{public}s'", "_curTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
        if (!self->_curTile)
        {
          goto LABEL_61;
        }
      }

      v31 = v103.location;
      if (v6 < v103.location || v6 - v103.location >= v103.length)
      {
        v32 = objc_msgSend_i_tileStartingAtOrAfterRowIndex_outTileRange_(self->_dataStore, a2, location_low, &v103, v4);
        v33 = self->_curTile;
        self->_curTile = v32;

        v31 = v103.location;
        v34 = self->_curTile;
        if (v34)
        {
          location_low = LODWORD(v103.location);
        }

        else
        {
          location_low = 0x7FFF7FFFFFFFLL;
        }

        if (!v34)
        {
LABEL_61:
          objc_msgSend_terminate(self, a2, v19, v3, v4);
          v9 = 0;
          LODWORD(v12) = 0x7FFFFFFF;
          LOWORD(v8) = 0x7FFF;
          goto LABEL_71;
        }

        v9 = 0;
        v8 = HIDWORD(location_low);
      }

      if (v31 > objc_msgSend_lastCellID(self->_region, a2, v19, v3, v4))
      {
        goto LABEL_61;
      }

      self->_curTileRange = v103;
      if (!self->_curTile)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3, v4);
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v38, v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 249, 0, "invalid nil value for '%{public}s'", "_curTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
      }
    }

    if (!self->_curRow)
    {
      LODWORD(v103.location) = location_low - LODWORD(self->_curTileRange.location);
      v51 = objc_msgSend_rowInfoAtOrAfterTileRowIndex_outTileRowIndex_(self->_curTile, a2, LODWORD(v103.location), &v103, v4);
      v52 = self->_curRow;
      self->_curRow = v51;

      if (!self->_curRow)
      {
        v98 = self->_curTileRange.location;
        length = self->_curTileRange.length;
        v12 = length + v98;
        objc_msgSend_advanceToCellID_(self->_regionIterator, v53, (length + v98), v55, v56);
        goto LABEL_52;
      }

      v57 = LODWORD(v103.location) + LODWORD(self->_curTileRange.location);
      self->_curRowIndex = v57;
      if (v57 <= location_low)
      {
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v57 <= location_low)
      {
        location_low = location_low;
      }

      else
      {
        LOWORD(v8) = 0;
        location_low = v57;
      }

      if (v57 > objc_msgSend_lastCellID(self->_region, v53, v54, v55, v56))
      {
        goto LABEL_61;
      }

      if ((objc_msgSend_intersectsRow_(self->_region, a2, self->_curRowIndex, v3, v4) & 1) == 0)
      {
        objc_msgSend_advanceToCellID_(self->_regionIterator, v58, (v8 << 32) | (v9 << 48) | location_low, v59, v60);
        goto LABEL_54;
      }

      if (!self->_curRow)
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTDataStoreIterator getNext]", v59, v60);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v64, v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 287, 0, "invalid nil value for '%{public}s'", "_curRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
      }

      if ((objc_msgSend_intersectsRow_(self->_region, v58, self->_curRowIndex, v59, v60) & 1) == 0)
      {
        v72 = MEMORY[0x277D81150];
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3, v4);
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v75, v76);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v78, v73, v77, 288, 0, "should now have a row that intersects the region");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
      }
    }

    v46 = self->_curRow;
    v47 = self->_columnOrderReversed ? objc_msgSend_cellIndexAtOrBeforeIndex_(v46, a2, v8, v3, v4) : objc_msgSend_cellIndexAtOrAfterIndex_(v46, a2, v8, v3, v4);
    v8 = v47;
    if (v47 != 0x7FFF)
    {
      break;
    }

    v12 = self->_curRowIndex + 1;
    objc_msgSend_advanceToCellID_(self->_regionIterator, v48, v12, v49, v50);
LABEL_52:
    v9 = 0;
    LOWORD(v8) = 0;
LABEL_55:
    v10 ^= 1u;
    v6 = v12;
    v100 = v8 == 0x7FFF || v12 == 0x7FFFFFFF;
    location_low = v12;
    if (v100)
    {
      goto LABEL_71;
    }
  }

  if (location_low == 0x7FFFFFFF)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTDataStoreIterator getNext]", v49, v50);
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v86, v87);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v89, v84, v88, 311, 0, "should now have a valid cellID at this point");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
  }

  v94 = (v9 << 48) | (v8 << 32);
  if ((objc_msgSend_containsCellID_(self->_region, v48, v94 | location_low, v49, v50) & 1) == 0 || (searchMask = self->_searchMask) != 0 && (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(self->_curRow, v95, v8, searchMask, v97) & 1) == 0)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v95, v94 | location_low, searchMask, v97);
LABEL_54:
    v12 = location_low;
    goto LABEL_55;
  }

  if (self->_columnOrderReversed)
  {
    if (v8)
    {
      v101 = v8 - 1;
      goto LABEL_68;
    }

    objc_msgSend_advanceToCellID_(self->_regionIterator, v95, (location_low + 1) | 0x3E700000000, searchMask, v97);
  }

  else if (v8 == 999)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v95, (location_low + 1), searchMask, v97);
  }

  else
  {
    v101 = v8 + 1;
LABEL_68:
    objc_msgSend_advanceToCellID_(self->_regionIterator, v95, location_low | (v101 << 32), searchMask, v97);
  }

  LODWORD(v12) = location_low;
LABEL_71:
  self->_curCellID.row = v12;
  self->_curCellID.column = v8;
  *&self->_curCellID._preserveRow = v9;
  return ((v9 << 48) | (v8 << 32) | v12);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  curCellID = self->_curCellID;
  v8 = curCellID.row != 0x7FFFFFFF && (*&curCellID & 0xFFFF00000000) != 0x7FFF00000000 && curCellID.row >= d.row;
  if (!v8 || curCellID.row == d.row && curCellID.column < d.column)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, a2, *&d, v3, v4);
    return self->_curCellID;
  }

  return curCellID;
}

- (void)iterateCellsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  v13 = 0;
  do
  {
    v12 = v8;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v12, v5, v6);
    v10 = v12;

    if (!NextCellData)
    {
      break;
    }

    v11 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v10, &v13);
    objc_autoreleasePoolPop(v11);
    v8 = v10;
  }

  while ((v13 & 1) == 0);
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

- (BOOL)getNextCellData:(id *)data
{
  Next = objc_msgSend_getNext(self, a2, data, v3, v4);
  v8 = Next == 0x7FFFFFFF || (Next & 0xFFFF00000000) == 0x7FFF00000000;
  v9 = !v8;
  if (!v8)
  {
    v10 = objc_alloc_init(TSTMutableCellIteratorData);
    objc_msgSend_setCellID_(v10, v11, Next, v12, v13);
    objc_msgSend_updateCellData_(self, v14, v10, v15, v16);
    if (data)
    {
      v17 = v10;
      *data = v10;
    }
  }

  return v9;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    objc_msgSend_terminate(self->_regionIterator, a2, v2, v3, v4);
    self->_terminated = 1;
  }
}

- (_NSRange)curTileRange
{
  length = self->_curTileRange.length;
  location = self->_curTileRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTPerformanceLoggingToken)logToken
{
  v3 = self->_logToken.logHandle;
  signpostID = self->_logToken.signpostID;
  result.signpostID = signpostID;
  result.logHandle = v3;
  return result;
}

- (void)setLogToken:(TSTPerformanceLoggingToken)token
{
  signpostID = token.signpostID;
  logHandle = self->_logToken.logHandle;
  self->_logToken.logHandle = token.logHandle;
  v6 = token.logHandle;

  self->_logToken.signpostID = signpostID;
}

@end