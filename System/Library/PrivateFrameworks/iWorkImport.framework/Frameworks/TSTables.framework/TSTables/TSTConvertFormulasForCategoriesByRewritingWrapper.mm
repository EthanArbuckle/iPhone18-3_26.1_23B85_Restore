@interface TSTConvertFormulasForCategoriesByRewritingWrapper
- (TSTConvertFormulasForCategoriesByRewritingWrapper)initWithCalcEngine:(id)engine rewriteSpec:(id)spec;
- (id)convertFromBaseToChromeForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)convertFromChromeToBaseForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell;
@end

@implementation TSTConvertFormulasForCategoriesByRewritingWrapper

- (TSTConvertFormulasForCategoriesByRewritingWrapper)initWithCalcEngine:(id)engine rewriteSpec:(id)spec
{
  engineCopy = engine;
  specCopy = spec;
  v39.receiver = self;
  v39.super_class = TSTConvertFormulasForCategoriesByRewritingWrapper;
  v9 = [(TSTConvertFormulasForCategoriesByRewritingWrapper *)&v39 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calcEngine, engine);
    objc_storeStrong(&v10->_rewriteSpec, spec);
    v15 = objc_msgSend_rewriteType(v10->_rewriteSpec, v11, v12, v13, v14);
    if ((objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v16, v15, v17, v18) & 1) == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTConvertFormulasForCategoriesByRewritingWrapper initWithCalcEngine:rewriteSpec:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v25, v26);
      v32 = objc_msgSend_rewriteType(v10->_rewriteSpec, v28, v29, v30, v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v23, v27, 26, 0, "Why are we even being created for a non-move rewriteSpec: %d", v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }
  }

  return v10;
}

- (id)convertFromBaseToChromeForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell
{
  moveCopy = move;
  v7 = moveCopy;
  if (!moveCopy)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v8 = moveCopy;
  v13 = objc_msgSend_rewriteType(self->_rewriteSpec, v9, v10, v11, v12);
  if (!objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v14, v13, v15, v16))
  {
    goto LABEL_38;
  }

  rewriteSpecBaseToChrome = self->_rewriteSpecBaseToChrome;
  if (rewriteSpecBaseToChrome)
  {
    v20 = rewriteSpecBaseToChrome;
  }

  else
  {
    objc_opt_class();
    v25 = objc_msgSend_rewriteSpecBaseToChrome(self->_rewriteSpec, v21, v22, v23, v24);
    v20 = TSUDynamicCast();
  }

  *&v170.var0 = cell->var0._tableUID;
  v26 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v18, &v170, self->_calcEngine, v19);
  v31 = objc_msgSend_tableInfo(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_translator(v31, v32, v33, v34, v35);
  v169 = objc_msgSend_coordinateMapper(v36, v37, v38, v39, v40);

  if (v20)
  {
    v45 = v169;
    v46 = objc_msgSend_coordMapper(v20, v41, v42, v43, v44);

    if (v46 != v169)
    {
      objc_msgSend_setCoordMapper_(v20, v47, v169, v48, v49);
      objc_storeStrong(&self->_rewriteSpecBaseToChrome, v20);
    }
  }

  else
  {
    v50 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v41, v42, v43, v44);
    v55 = objc_msgSend_srcTableUID(v50, v51, v52, v53, v54);
    v57 = v56;
    if (v55 == objc_msgSend_tableUID(v26, v56, v58, v59, v60) && v57 == v61)
    {
      v165 = v26;
    }

    else
    {
      v170.var0 = objc_msgSend_srcTableUID(v50, v61, v62, v63, v64);
      v170.var1 = v69;
      v165 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v69, &v170, self->_calcEngine, v70);
    }

    v71 = objc_msgSend_srcColumnUids(v50, v65, v66, v67, v68);
    v164 = v71;
    v168 = objc_msgSend_srcRowUids(v50, v72, v73, v74, v75);
    v167 = objc_msgSend_dstColumnUids(v50, v76, v77, v78, v79);
    v166 = objc_msgSend_dstRowUids(v50, v80, v81, v82, v83);
    if (v71 && v168 && v167 && v166)
    {
      v88 = v71;
      v45 = v169;
      v89 = objc_msgSend_uids(v88, v84, v85, v86, v87);
      v94 = objc_msgSend_uids(v168, v90, v91, v92, v93);
      sub_2210BBBE8(&v170, v89, v94);
      v99 = objc_msgSend_uids(v167, v95, v96, v97, v98);
      v104 = objc_msgSend_uids(v166, v100, v101, v102, v103);
      sub_2210BBBE8(v173, v99, v104);
      v105 = [TSTFormulaRewriteSpec alloc];
      v172[0] = objc_msgSend_tableUID(v165, v106, v107, v108, v109);
      v172[1] = v110;
      v171[0] = objc_msgSend_dstTableUID(v50, v110, v111, v112, v113);
      v171[1] = v114;
      v20 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v105, v114, v172, &v170, v171, v173, v169);
      objc_msgSend_setRewriteSpecBaseToChrome_(self->_rewriteSpec, v115, v20, v116, v117);
      objc_storeStrong(&self->_rewriteSpecBaseToChrome, v20);
      if (v174)
      {
        v175 = v174;
        operator delete(v174);
      }

      if (v173[0])
      {
        v173[1] = v173[0];
        operator delete(v173[0]);
      }

      if (v170.var2.var0.var0._tableUID._lower)
      {
        v170.var2.var0.var0._tableUID._upper = v170.var2.var0.var0._tableUID._lower;
        operator delete(v170.var2.var0.var0._tableUID._lower);
      }

      if (v170.var0)
      {
        v170.var1 = v170.var0;
        operator delete(v170.var0);
      }
    }

    else
    {
      if (!v71)
      {
        v118 = MEMORY[0x277D81150];
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v86, v87);
        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v121, v122);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v124, v119, v123, 73, 0, "invalid nil value for '%{public}s'", "srcColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
      }

      if (!v168)
      {
        v129 = MEMORY[0x277D81150];
        v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v86, v87);
        v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v132, v133);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v135, v130, v134, 74, 0, "invalid nil value for '%{public}s'", "srcRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137, v138, v139);
      }

      if (!v167)
      {
        v140 = MEMORY[0x277D81150];
        v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v86, v87);
        v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v143, v144);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v146, v141, v145, 75, 0, "invalid nil value for '%{public}s'", "dstColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150);
      }

      if (!v166)
      {
        v151 = MEMORY[0x277D81150];
        v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v86, v87);
        v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v154, v155);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v157, v152, v156, 76, 0, "invalid nil value for '%{public}s'", "dstRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v158, v159, v160, v161);
      }

      v20 = 0;
      v45 = v169;
    }

    if (!v20)
    {
      goto LABEL_37;
    }
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v170, self->_calcEngine, cell);
  v162 = sub_221491A58(v8, &v170, v20, 2);

  v8 = v162;
LABEL_37:

LABEL_38:

  return v8;
}

- (id)convertFromChromeToBaseForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell
{
  moveCopy = move;
  v7 = moveCopy;
  if (!moveCopy)
  {
    v8 = 0;
    goto LABEL_51;
  }

  v8 = moveCopy;
  v13 = objc_msgSend_rewriteType(self->_rewriteSpec, v9, v10, v11, v12);
  v18 = objc_msgSend_rewriteType(self->_rewriteSpec, v14, v15, v16, v17);
  if (v13 != 6 && v18 != 4)
  {
    goto LABEL_51;
  }

  v213 = v18;
  p_rewriteSpecChromeToBase = &self->_rewriteSpecChromeToBase;
  rewriteSpecChromeToBase = self->_rewriteSpecChromeToBase;
  if (rewriteSpecChromeToBase)
  {
    v24 = rewriteSpecChromeToBase;
  }

  else
  {
    objc_opt_class();
    v29 = objc_msgSend_rewriteSpecChromeToBase(self->_rewriteSpec, v25, v26, v27, v28);
    v24 = TSUDynamicCast();
  }

  *&v216.var0 = cell->var1._tableUID;
  v215 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v22, &v216, self->_calcEngine, v23);
  v34 = objc_msgSend_tableInfo(v215, v30, v31, v32, v33);
  v39 = objc_msgSend_translator(v34, v35, v36, v37, v38);
  v214 = objc_msgSend_coordinateMapper(v39, v40, v41, v42, v43);

  if (!v24)
  {
    v54 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v44, v45, v46, v47);
    v217 = 0uLL;
    v207 = v54;
    v217.n128_u64[0] = objc_msgSend_srcTableUID(v54, v55, v56, v57, v58);
    v217.n128_u64[1] = v59;
    v63 = objc_msgSend_tableUID(v215, v59, v60, v61, v62);
    if (*&v217 == __PAIR128__(v64, v63))
    {
      v208 = v215;
    }

    else
    {
      v208 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v64, &v217, self->_calcEngine, v65);
    }

    v53 = v207;
    v212 = objc_msgSend_srcColumnUids(v207, v66, v67, v68, v69);
    v211 = objc_msgSend_srcRowUids(v207, v70, v71, v72, v73);
    v210 = objc_msgSend_dstColumnUids(v207, v74, v75, v76, v77);
    v209 = objc_msgSend_dstRowUids(v207, v78, v79, v80, v81);
    if (v212 && v211 && v210 && v209)
    {
      v86 = objc_msgSend_uids(v212, v82, v83, v84, v85);
      v91 = objc_msgSend_uids(v211, v87, v88, v89, v90);
      sub_2210BBBE8(&v216, v86, v91);
      v96 = objc_msgSend_uids(v210, v92, v93, v94, v95);
      v101 = objc_msgSend_uids(v209, v97, v98, v99, v100);
      sub_2210BBBE8(&v219, v96, v101);
      v205 = [TSTFormulaRewriteSpec alloc];
      v221[0] = objc_msgSend_dstTableUID(v207, v102, v103, v104, v105);
      v221[1] = v106;
      v206 = objc_msgSend_tableInfo(v208, v106, v107, v108, v109);
      v114 = objc_msgSend_translator(v206, v110, v111, v112, v113);
      v119 = objc_msgSend_coordinateMapper(v114, v115, v116, v117, v118);
      v220[0] = objc_msgSend_fromTableUID(v208, v120, v121, v122, v123);
      v220[1] = v124;
      v24 = objc_msgSend_initForCategorizedTableChromeToBaseRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_srcCoordMapper_fromTableUID_(v205, v124, &v217, &v216, v221, &v219, v214, v119, v220);

      objc_msgSend_setRewriteSpecChromeToBase_(self->_rewriteSpec, v125, v24, v126, v127);
      objc_storeStrong(&self->_rewriteSpecChromeToBase, v24);
      if (v219.var1.coordinate)
      {
        v219.var1._tableUID._lower = v219.var1.coordinate;
        operator delete(*&v219.var1.coordinate);
      }

      if (v219.var0.coordinate)
      {
        v219.var0._tableUID._lower = v219.var0.coordinate;
        operator delete(*&v219.var0.coordinate);
      }

      if (v216.var2.var0.var0._tableUID._lower)
      {
        v216.var2.var0.var0._tableUID._upper = v216.var2.var0.var0._tableUID._lower;
        operator delete(v216.var2.var0.var0._tableUID._lower);
      }

      if (v216.var0)
      {
        v216.var1 = v216.var0;
        operator delete(v216.var0);
      }
    }

    else
    {
      if (!v212)
      {
        v128 = MEMORY[0x277D81150];
        v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v84, v85);
        v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v131, v132);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v134, v129, v133, 128, 0, "invalid nil value for '%{public}s'", "srcColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136, v137, v138);
      }

      if (!v211)
      {
        v139 = MEMORY[0x277D81150];
        v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v84, v85);
        v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v142, v143);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v145, v140, v144, 129, 0, "invalid nil value for '%{public}s'", "srcRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v147, v148, v149);
      }

      if (!v210)
      {
        v150 = MEMORY[0x277D81150];
        v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v84, v85);
        v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v153, v154);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v156, v151, v155, 130, 0, "invalid nil value for '%{public}s'", "dstColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v157, v158, v159, v160);
      }

      if (!v209)
      {
        v161 = MEMORY[0x277D81150];
        v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v84, v85);
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v164, v165);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v167, v162, v166, 131, 0, "invalid nil value for '%{public}s'", "dstRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v168, v169, v170, v171);
      }

      v24 = 0;
      v53 = v207;
    }

    goto LABEL_39;
  }

  v48 = objc_msgSend_coordMapper(v24, v44, v45, v46, v47);

  v52 = v214;
  if (v48 != v214)
  {
    objc_msgSend_setCoordMapper_(v24, v49, v214, v50, v51);
    v24 = v24;
    v53 = *p_rewriteSpecChromeToBase;
    *p_rewriteSpecChromeToBase = v24;
LABEL_39:
  }

  if (v13 == 6)
  {
    v172 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v49, v52, v50, v51);
    v177 = objc_msgSend_finalDstTableUID(v172, v173, v174, v175, v176);
    v179 = v178;
    v183 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v178, v180, v181, v182);
    if (v177 == objc_msgSend_dstTableUID(v183, v184, v185, v186, v187))
    {
      v189 = v188;

      v190 = 4;
      if (v179 == v189)
      {
        v190 = 12;
      }
    }

    else
    {

      v190 = 4;
    }
  }

  else
  {
    v190 = 0;
  }

  if (v213 == 4)
  {
    v191 = v190 | 0x10;
  }

  else
  {
    v191 = v190;
  }

  coordinate = cell->var1.coordinate;
  v193 = objc_msgSend_tableInfo(v215, v49, v52, v50, v51);
  v198 = objc_msgSend_translator(v193, v194, v195, v196, v197);
  v202 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v198, v199, coordinate, v200, v201);

  v216.var0 = v202;
  *&v216.var1 = cell->var1._tableUID;
  v217 = *&cell->var1.coordinate.row;
  upper = cell->var1._tableUID._upper;
  sub_2212C726C(&v219, &v216, &v217);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v216, self->_calcEngine, &v219);
  v203 = sub_22149252C(v8, &v216, v24, 2, v191);

  v8 = v203;
LABEL_51:

  return v8;
}

@end