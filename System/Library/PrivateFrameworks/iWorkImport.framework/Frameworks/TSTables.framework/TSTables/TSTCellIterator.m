@interface TSTCellIterator
- (BOOL)getNextCellData:(id *)a3;
- (TSTCellIterator)initWithTableInfo:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5;
- (TSTCellIterator)initWithTableInfo:(id)a3 range:(TSUCellRect)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6;
- (TSTCellIterator)initWithTableInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6;
- (TSTCellIterator)initWithTableInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6 clampingRange:(TSUCellRect)a7;
- (TSTCellIterator)initWithTableInfo:(id)a3 tableModel:(id)a4 region:(id)a5 flags:(unint64_t)a6 searchFlags:(unint64_t)a7 clampingRange:(TSUCellRect)a8;
- (TSUCellCoord)p_getNextCellID;
- (id).cxx_construct;
- (id)nextCellData;
- (void)iterateCellsUsingBlock:(id)a3;
- (void)p_updateDataForCellID:(TSUCellCoord)a3;
- (void)p_updateDataForMergeAtCellID:(TSUCellCoord)a3;
- (void)terminate;
@end

@implementation TSTCellIterator

- (TSTCellIterator)initWithTableInfo:(id)a3 tableModel:(id)a4 region:(id)a5 flags:(unint64_t)a6 searchFlags:(unint64_t)a7 clampingRange:(TSUCellRect)a8
{
  v287 = a3;
  v286 = a4;
  v18 = a5;
  if (!v18)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v16, v17);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v65, v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v63, v67, 74, 0, "caller should pass in region pointer");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v69, v70, v71, v72);
    v18 = objc_msgSend_invalidRegion(TSTCellRegion, v73, v74, v75, v76);
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    a6 &= ~1uLL;
    goto LABEL_23;
  }

  if (a6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v19 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v14, v15, v16, v17);
  v24 = objc_msgSend_boundingCellRange(v18, v20, v21, v22, v23);
  v29 = WORD2(v24);
  if (v24 == 0x7FFFFFFF || (v24 & 0xFFFF00000000) == 0x7FFF00000000 || (v30 = v25, !(v25 >> 32)) || !v25 || (v31 = v24 + HIDWORD(v25) - 1, v31 >= objc_msgSend_maxNumberOfRows(v19, v25, v26, v27, v28)) || (v30 ? (v32 = v29 == 0x7FFF) : (v32 = 1), !v32 ? (v33 = (v30 + v29 - 1)) : (v33 = 0x7FFF), objc_msgSend_maxNumberOfColumns(v19, v25, v26, v27, v28) <= v33))
  {
    v61 = objc_msgSend_invalidRegion(TSTCellRegion, v25, v26, v27, v28);

    v18 = v61;
  }

  else
  {
    if (v31 >= objc_msgSend_maxNumberOfRows(v19, v25, v26, v27, v28))
    {
      v284 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v36, v37);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v284, v43, v38, v42, 91, 0, "Tried to create iterator with range larger than is possible.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    if (objc_msgSend_maxNumberOfColumns(v19, v34, v35, v36, v37) <= v33)
    {
      v285 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v49, v50);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v53, v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v285, v56, v51, v55, 92, 0, "Tried to create iterator with range larger than is possible.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
    }
  }

LABEL_23:
  v288.receiver = self;
  v288.super_class = TSTCellIterator;
  v77 = [(TSTCellIterator *)&v288 init];
  p_isa = &v77->super.isa;
  v79 = v77;
  if (!v77)
  {
    goto LABEL_76;
  }

  objc_storeStrong(&v77->_tableInfo, a3);
  objc_storeStrong(p_isa + 9, a4);
  v80 = objc_alloc_init(TSTMutableCellIteratorData);
  cellData = v79->_cellData;
  v79->_cellData = v80;

  v86 = objc_msgSend_newCell(v79->_tableModel, v82, v83, v84, v85);
  objc_msgSend_setCell_(v79->_cellData, v87, v86, v88, v89);

  v92 = objc_msgSend_regionByIntersectingRange_(v18, v90, *&a8.origin, *&a8.size, v91);

  if ((a6 & 2) != 0)
  {
    a6 &= 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v97 = p_isa[8];
    if (v97)
    {
      v98 = objc_msgSend_boundingCellRange(v92, v93, v94, v95, v96);
      if (objc_msgSend_anyHiddenColumnsInCellRange_(v97, v99, v98, v99, v100))
      {
        v105 = objc_msgSend_hiddenStates(p_isa[8], v101, v102, v103, v104);
        v110 = objc_msgSend_hiddenColumnIndexes(v105, v106, v107, v108, v109);
        v114 = objc_msgSend_regionBySubtractingColumnIndexes_(v92, v111, v110, v112, v113);
      }

      else
      {
        v114 = v92;
      }

      v152 = p_isa[8];
      v153 = objc_msgSend_boundingCellRange(v114, v101, v102, v103, v104);
      if (objc_msgSend_anyHiddenRowsInCellRange_(v152, v154, v153, v154, v155))
      {
        v157 = objc_msgSend_hiddenStates(p_isa[8], v93, v156, v95, v96);
        v162 = objc_msgSend_hiddenRowIndexes(v157, v158, v159, v160, v161);
        v92 = objc_msgSend_regionBySubtractingRowIndexes_(v114, v163, v162, v164, v165);
      }

      else
      {
        v92 = v114;
      }
    }

    else
    {
      v115 = objc_msgSend_hiddenStatesOwner(p_isa[9], v93, v94, v95, v96);
      v120 = objc_msgSend_hiddenStates(v115, v116, v117, v118, v119);

      v125 = objc_msgSend_boundingCellRange(v92, v121, v122, v123, v124);
      v127 = v126;
      v129 = objc_msgSend_indexesOfHiddenColumnsInBaseCellRange_(v120, v126, v125, v126, v128);
      if (objc_msgSend_count(v129, v130, v131, v132, v133))
      {
        v137 = objc_msgSend_regionBySubtractingColumnIndexes_(v92, v134, v129, v135, v136);

        v92 = v137;
      }

      v138 = objc_msgSend_indexesOfHiddenRowsInBaseCellRange_(v120, v134, v125, v127, v136);
      if (objc_msgSend_count(v138, v139, v140, v141, v142))
      {
        v147 = objc_msgSend_hiddenRowIndexes(v120, v143, v144, v145, v146);
        v151 = objc_msgSend_regionBySubtractingRowIndexes_(v92, v148, v147, v149, v150);

        v92 = v151;
      }
    }
  }

  v166 = p_isa[8];
  if (!v166)
  {
    a6 &= 0xFFFFFFFFFFFFFFE5;
    goto LABEL_43;
  }

  if ((a6 & 0x18) == 0)
  {
LABEL_43:
    v18 = v92;
    goto LABEL_46;
  }

  v167 = objc_msgSend_indexesForSummaryRowsInRegion_(v166, v93, v92, v95, v96);
  v175 = objc_msgSend_indexesForCategoryColumnsInRegion_(p_isa[8], v168, v92, v169, v170);
  if ((a6 & 8) != 0)
  {
    v180 = objc_msgSend_indexesForLabelRows(p_isa[8], v171, v172, v173, v174);
    v184 = objc_msgSend_regionBySubtractingRowIndexes_(v92, v181, v180, v182, v183);

    v188 = objc_msgSend_regionBySubtractingRowIndexes_(v184, v185, v167, v186, v187);

    v18 = objc_msgSend_regionBySubtractingColumnIndexes_(v188, v189, v175, v190, v191);

    a6 &= 0xFFFFFFFFFFFFFFF5;
  }

  else
  {
    v176 = objc_msgSend_regionByIntersectingRowIndices_(v92, v171, v167, v173, v174);

    v18 = objc_msgSend_regionBySubtractingColumnIndexes_(v176, v177, v175, v178, v179);

    a6 &= 0xFFFFFFFFFFFFFFE5;
  }

LABEL_46:
  objc_storeStrong(p_isa + 10, v18);
  if ((a7 & 0x40000000) != 0)
  {
    v196 = 50;
  }

  else
  {
    if ((a7 & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    a7 &= 0xFFFFFFFF9FFFFFFFLL;
    v196 = 49;
  }

  *(&v79->super.isa + v196) = 1;
LABEL_51:
  if ((a7 & 0x3EFF800) != 0 && (v79->_returnEmptyCells || v79->_returnOneEmptyCell))
  {
    v197 = MEMORY[0x277D81150];
    v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v194, v195);
    v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v200, v201);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v197, v203, v198, v202, 178, 0, "cannot use iterator flags to return all empty cells and also use flags to only search for specific kinds of cells");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v204, v205, v206, v207);
  }

  v208 = p_isa[8];
  if (v208)
  {
    v209 = objc_alloc(objc_msgSend_iteratorClass(v208, v192, v193, v194, v195));
    v211 = objc_msgSend_initWithInfo_region_flags_searchMask_(v209, v210, p_isa[8], p_isa[10], a6 & 0x204, a7 & 0x3EFF800);
  }

  else
  {
    v212 = [TSTDataStoreIterator alloc];
    v211 = objc_msgSend_initWithModel_region_flags_searchMask_(v212, v213, p_isa[9], p_isa[10], a6 & 0x204, a7 & 0x3EFF800);
  }

  dataStoreIterator = v79->_dataStoreIterator;
  v79->_dataStoreIterator = v211;

  if ((a7 & 0x400) != 0)
  {
    if ((a6 & 0x80) == 0)
    {
      v220 = MEMORY[0x277D81150];
      v221 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v216, v217);
      v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v222, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v223, v224);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v220, v226, v221, v225, 198, 0, "unsupported options, searching for borders but not fetching them");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v227, v228, v229, v230);
    }

    v231 = [TSTStrokeSidecarIterator alloc];
    v236 = objc_msgSend_strokeSidecar(p_isa[9], v232, v233, v234, v235);
    v219 = objc_msgSend_initWithStrokeSidecar_region_(v231, v237, v236, p_isa[10], v238);

    v239 = objc_alloc_init(TSTContentComposingIterator);
    objc_msgSend_addIterator_(v239, v240, v79->_dataStoreIterator, v241, v242);
    objc_msgSend_addIterator_(v239, v243, v219, v244, v245);
    a6 &= ~0x80uLL;
    contentIterator = v79->_contentIterator;
    v79->_contentIterator = v239;
  }

  else
  {
    v218 = v79->_dataStoreIterator;
    v219 = v79->_contentIterator;
    v79->_contentIterator = v218;
  }

  if (v79->_returnOneEmptyCell || v79->_returnEmptyCells)
  {
    v251 = p_isa[10];
    if ((a6 & 4) != 0)
    {
      v252 = objc_msgSend_newRightToLeftIterator(v251, v247, v248, v249, v250);
    }

    else
    {
      v252 = objc_msgSend_newIterator(v251, v247, v248, v249, v250);
    }

    regionIterator = v79->_regionIterator;
    v79->_regionIterator = v252;

    objc_msgSend_getNext(v79->_contentIterator, v254, v255, v256, v257);
  }

  if ((a6 & 0x40) != 0)
  {
    v79->_rowForColumnIndexesWithMerges = 0x7FFFFFFF;
    v258 = 1;
  }

  else
  {
    v258 = 0;
  }

  v79->_returnMergeRanges = v258;
  v79->_returnCellContents = (a6 & 0x120) == 0;
  v79->_returnOnlyFormulas = BYTE1(a6) & 1;
  v259 = a6 & 0xFFFFFFFFFFFFFC9BLL;
  if ((a6 & 0xFFFFFFFFFFFFFC9BLL) != 0)
  {
    v260 = MEMORY[0x277D81150];
    v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v249, v250);
    v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v262, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v263, v264);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v260, v266, v261, v265, 247, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v259);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v267, v268, v269, v270);
  }

  v271 = a7 & 0xFFFFFFFFBC1003FFLL;
  if ((a7 & 0xFFFFFFFFBC1003FFLL) != 0)
  {
    v272 = MEMORY[0x277D81150];
    v273 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v249, v250);
    v277 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v274, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v275, v276);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v272, v278, v273, v277, 248, 0, "searchFlags remain 0x%lx, searchFlags should all be consumed by this point ", v271);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v279, v280, v281, v282);
  }

LABEL_76:

  return v79;
}

- (TSTCellIterator)initWithTableInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6 clampingRange:(TSUCellRect)a7
{
  size = a7.size;
  origin = a7.origin;
  v13 = a3;
  v14 = a4;
  v19 = objc_msgSend_baseTableModel(v13, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v20, v13, v19, v14, a5, a6, origin, size);

  return v21;
}

- (TSTCellIterator)initWithTableInfo:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5
{
  v8 = a3;
  v13 = objc_msgSend_baseTableModel(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_range(v8, v14, v15, v16, v17);
  v21 = objc_msgSend_regionFromRange_(TSTCellRegion, v19, v18, v19, v20);
  v26 = objc_msgSend_range(v8, v22, v23, v24, v25);
  v28 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v27, v8, v13, v21, a4, a5, v26, v27);

  return v28;
}

- (TSTCellIterator)initWithTableInfo:(id)a3 range:(TSUCellRect)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6
{
  size = a4.size;
  origin = a4.origin;
  v11 = a3;
  v16 = objc_msgSend_baseTableModel(v11, v12, v13, v14, v15);
  v19 = objc_msgSend_regionFromRange_(TSTCellRegion, v17, origin, size, v18);
  v24 = objc_msgSend_range(v11, v20, v21, v22, v23);
  v26 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v25, v11, v16, v19, a5, a6, v24, v25);

  return v26;
}

- (TSTCellIterator)initWithTableInfo:(id)a3 region:(id)a4 flags:(unint64_t)a5 searchFlags:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v16 = objc_msgSend_baseTableModel(v10, v12, v13, v14, v15);
  v21 = objc_msgSend_range(v10, v17, v18, v19, v20);
  v23 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v22, v10, v16, v11, a5, a6, v21, v22);

  return v23;
}

- (void)iterateCellsUsingBlock:(id)a3
{
  v7 = a3;
  v8 = 0;
  v14 = 0;
  do
  {
    v13 = v8;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v13, v5, v6);
    v10 = v13;

    if (!NextCellData)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    v7[2](v7, v10, &v14);
    objc_autoreleasePoolPop(v12);
    v8 = v10;
  }

  while ((v14 & 1) == 0);
  objc_msgSend_terminate(self, v4, v11, v5, v6);
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
  NextCellID = objc_msgSend_p_getNextCellID(self, a2, a3, v3, v4);
  v11 = NextCellID == 0x7FFFFFFF || (NextCellID & 0xFFFF00000000) == 0x7FFF00000000;
  v12 = !v11;
  if (!v11)
  {
    objc_msgSend_p_updateDataForCellID_(self, v7, NextCellID, v9, v10);
    if (a3)
    {
      *a3 = self->_cellData;
    }
  }

  return v12;
}

- (void)terminate
{
  objc_msgSend_terminate(self->_contentIterator, a2, v2, v3, v4);
  regionIterator = self->_regionIterator;

  objc_msgSend_terminate(regionIterator, v6, v7, v8, v9);
}

- (TSUCellCoord)p_getNextCellID
{
  regionIterator = self->_regionIterator;
  if (!regionIterator)
  {
    goto LABEL_6;
  }

  if (!self->_terminateRegionIterator)
  {
    while (1)
    {
      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3, v4);
      v18 = objc_msgSend_advanceToCellID_(self->_contentIterator, v21, Next, v22, v23);
      if (v18 < Next || (v19 = HIDWORD(v18), v18 == Next) && WORD2(v18) < WORD2(Next))
      {
        v18 = objc_msgSend_getNext(self->_contentIterator, v24, v25, v26, v27);
        v19 = HIDWORD(v18);
      }

      if (v18 == Next && (v18 & 0x101000000000000 | (v19 << 32)) == (Next & 0x101FFFF00000000))
      {
        return (v18 & 0xFFFF0000FFFFFFFFLL | (v19 << 32));
      }

      if (!self->_returnOneEmptyCell)
      {
        break;
      }

      tableInfo = self->_tableInfo;
      if (tableInfo)
      {
        v30 = objc_msgSend_mergeRangeAtCellID_(tableInfo, v24, Next, v26, v27);
      }

      else
      {
        v30 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, v24, Next, v26, v27);
      }

      if (v30 == 0x7FFFFFFF || (v30 & 0xFFFF00000000) == 0x7FFF00000000 || !(a2 >> 32) || !a2 || v30 == Next && ((v30 ^ Next) & 0xFFFF00000000) == 0)
      {
        v19 = HIDWORD(Next);
        *&self->_returnOneEmptyCell = 256;
LABEL_27:
        v18 = Next;
        return (v18 & 0xFFFF0000FFFFFFFFLL | (v19 << 32));
      }
    }

    v19 = HIDWORD(Next);
    goto LABEL_27;
  }

  v7 = objc_msgSend_getNext(regionIterator, a2, v2, v3, v4);
  objc_msgSend_terminate(self->_regionIterator, v8, v9, v10, v11);
  objc_msgSend_setRegionIterator_(self, v12, 0, v13, v14);
  v18 = objc_msgSend_advanceToCellID_(self->_contentIterator, v15, v7, v16, v17);
  if (v18 < v7 || (v19 = HIDWORD(v18), v18 == v7) && WORD2(v18) < WORD2(v7))
  {
LABEL_6:
    v18 = objc_msgSend_getNext(self->_contentIterator, a2, v2, v3, v4);
    v19 = HIDWORD(v18);
  }

  return (v18 & 0xFFFF0000FFFFFFFFLL | (v19 << 32));
}

- (void)p_updateDataForMergeAtCellID:(TSUCellCoord)a3
{
  row = a3.row;
  v50 = a3;
  if (self->_rowForColumnIndexesWithMerges != a3.row)
  {
    self->_rowForColumnIndexesWithMerges = a3.row;
    sub_2210BE918(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_);
    v13 = objc_msgSend_boundingCellRange(self->_region, v5, v6, v7, v8);
    v14 = v9 | 0x100000000;
    tableInfo = self->_tableInfo;
    if (tableInfo)
    {
      objc_msgSend_mergeRangesIntersectingRange_(tableInfo, v9, v13 & 0xFFFFFFFF00000000 | row, v9 | 0x100000000, v12);
      origin = v48.origin;
      size = v48.size;
    }

    else
    {
      v18 = objc_msgSend_mergeOwner(self->_tableModel, v9, v10, v11, v12);
      v22 = v18;
      if (v18)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRect_(v18, v19, v13 & 0xFFFFFFFF00000000 | row, v14, v21);
      }

      else
      {
        __p = 0;
        v46 = 0;
        v47 = 0;
      }

      objc_msgSend_mergeListFromModelMergeList_(TSTMergeOwner, v19, &__p, v20, v21);
      origin = v48.origin;
      size = v48.size;
      v48.size = 0;
      v49 = 0;
      v48.origin = 0;
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }
    }

    if (origin != *&size)
    {
      v23 = origin;
      do
      {
        v48 = *v23;
        for (i = TSUCellRect::firstColumn(&v48); ; i = v44 + 1)
        {
          v44 = i;
          if (TSUCellRect::maxColumn(&v48) <= i)
          {
            break;
          }

          __p = &v44;
          v25 = sub_22112E6A0(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_, &v44);
          *(v25 + 20) = v48;
        }

        ++v23;
      }

      while (v23 != *&size);
    }

    if (origin)
    {
      operator delete(origin);
    }
  }

  v26 = sub_2210C3024(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_, &v50.column);
  if (!v26)
  {
    goto LABEL_29;
  }

  v30 = *(v26 + 20);
  v31 = v30 == 0x7FFFFFFF || (v30 & 0xFFFF00000000) == 0x7FFF00000000;
  if (v31 || ((v28 = *(v26 + 28), HIDWORD(v28)) ? (v32 = v28 == 0) : (v32 = 1), v32))
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCellIterator p_updateDataForMergeAtCellID:]", v28, v29);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 429, 0, "found this column in the cached merge ranges, so expected a merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
LABEL_29:
    v28 = 0;
    v30 = 0x7FFF7FFFFFFFLL;
  }

  objc_msgSend_setMergeRange_(self->_cellData, v27, v30, v28, v29);
}

- (void)p_updateDataForCellID:(TSUCellCoord)a3
{
  objc_msgSend_setCellID_(self->_cellData, a2, *&a3, v3, v4);
  objc_msgSend_setMergeRange_(self->_cellData, v7, 0x7FFF7FFFFFFFLL, 0, v8);
  if ((*&a3 & 0xFFF800000000) > 0x3E700000000 || a3.row >= 0xF4240)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellIterator p_updateDataForCellID:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v15, v16);
    v18 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v13, v17, 447, 0, "cell iterator was asked for cellID %@ that is outside the table bounds", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (self->_returnCellContents)
  {
    objc_msgSend_updateCellData_(self->_contentIterator, v9, self->_cellData, v10, v11);
  }

  else if (self->_returnOnlyFormulas)
  {
    objc_msgSend_updateFormulaForCellData_(self->_contentIterator, v9, self->_cellData, v10, v11);
  }

  if (self->_returnMergeRanges)
  {

    (MEMORY[0x2821F9670])(self, sel_p_updateDataForMergeAtCellID_, a3, v10, v11);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end