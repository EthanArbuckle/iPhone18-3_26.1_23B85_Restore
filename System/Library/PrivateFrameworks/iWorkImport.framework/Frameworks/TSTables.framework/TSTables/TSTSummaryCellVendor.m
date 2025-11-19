@interface TSTSummaryCellVendor
+ (BOOL)canBeVendorStorageUid:(const TSKUIDStructCoord *)a3;
- (TSKUIDStructCoord)p_resolveCellUIDToVendorCellUID:(SEL)a3;
- (TSTSummaryCellVendor)initWithContext:(id)a3 tableInfo:(id)a4;
- (TSTSummaryCellVendor)initWithTableInfo:(id)a3;
- (id).cxx_construct;
- (id)cellAtCellUID:(const TSKUIDStructCoord *)a3;
- (id)cellMapForWildcardCells;
- (id)cellSpecForAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3;
- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)enumerateCellsUsingBlock:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)removeCellsInColumnUid:(TSKUIDStruct *)a3;
- (void)runChange:(id)a3 withSummaryCellMap:(id)a4 migrationHelper:(id)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5;
- (void)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4;
- (void)setTableInfoForGSSP:(id)a3;
@end

@implementation TSTSummaryCellVendor

- (TSTSummaryCellVendor)initWithContext:(id)a3 tableInfo:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSTSummaryCellVendor;
  result = [(TSTSummaryCellVendor *)&v6 initWithContext:a3];
  if (result)
  {
    result->_tableInfo = a4;
  }

  return result;
}

- (TSTSummaryCellVendor)initWithTableInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_tableInfo_(self, v10, v9, v4, v11);

  return v12;
}

+ (BOOL)canBeVendorStorageUid:(const TSKUIDStructCoord *)a3
{
  row = a3->_row;
  v6[0] = a3->_column;
  v6[1] = row;
  if (sub_2211A90B0(v6))
  {
    return 1;
  }

  if (a3->_column._lower == *"category column")
  {
    return a3->_column._upper == *" column";
  }

  return 0;
}

- (void)setTableInfoForGSSP:(id)a3
{
  if (self->_tableInfo != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_tableInfo = a3;
  }
}

- (void)enumerateCellsUsingBlock:(id)a3
{
  v10 = a3;
  self = (self + 80);
  isa = self->super.super.isa;
  p_delegate = &self->super._delegate;
  v5 = isa;
  if (isa != p_delegate)
  {
    do
    {
      v10[2](v10, v5 + 32, *(v5 + 8));
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != p_delegate);
  }
}

- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5
{
  v5 = a5;
  upper = a4._upper;
  lower = a4._lower;
  v8 = a3;
  v10 = objc_msgSend_tableInfo(self, a2, a3, a4._lower, a4._upper);
  isAPivotTable = objc_msgSend_isAPivotTable(v10, v11, v12, v13, v14);

  if (isAPivotTable)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTSummaryCellVendor setAggregateType:forColumnUID:atGroupLevel:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 122, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  memset(v55, 0, sizeof(v55));
  sub_2211A8F64(v5, 0, v55);
  v30 = sub_221432460(&self->_cellUIDMap, v55);
  objc_msgSend_willModify(self, v31, v32, v33, v34);
  if (&self->_cellUIDMap.__tree_.__end_node_ == v30)
  {
    v41 = objc_msgSend_tableInfo(self, v35, v36, v37, v38);
    v40 = objc_msgSend_newCell(v41, v42, v43, v44, v45);

    v56 = v55;
    v46 = sub_221432548(&self->_cellUIDMap, v55);
    objc_storeStrong((v46 + 64), v40);
  }

  else
  {
    v40 = *(v30 + 64);
  }

  v47 = objc_msgSend_cellSpecForAggregateType_forColumnUID_atGroupLevel_(self, v39, v8, lower, upper, v5);
  objc_msgSend_setCellSpec_(v40, v48, v47, v49, v50);

  if (objc_msgSend_isEmpty(v40, v51, v52, v53, v54))
  {
    sub_2214326D4(&self->_cellUIDMap, v55);
  }
}

- (id)cellSpecForAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a3;
  v68 = a4;
  v8 = objc_msgSend_tableInfo(self, a2, a3, a4._lower, a4._upper);
  isAPivotTable = objc_msgSend_isAPivotTable(v8, v9, v10, v11, v12);

  if (isAPivotTable)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTSummaryCellVendor cellSpecForAggregateType:forColumnUID:atGroupLevel:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 145, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v67 = xmmword_2217E18D0;
  if (v6)
  {
    v28 = [TSCECategoryRef alloc];
    v33 = objc_msgSend_tableInfo(self, v29, v30, v31, v32);
    v66[0] = objc_msgSend_groupByUid(v33, v34, v35, v36, v37);
    v66[1] = v38;
    v39 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v28, v38, v66, &v67, &v68, v6, v5);

    v40 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::categoryRef(v39, &v65);
    v44 = objc_msgSend_initWithCreator_(v40, v41, &v65, v42, v43);

    v45 = [TSTCellFormulaSpec alloc];
    v50 = objc_msgSend_context(self, v46, v47, v48, v49);
    v55 = objc_msgSend_documentRoot(v50, v51, v52, v53, v54);
    v60 = objc_msgSend_documentLocale(v55, v56, v57, v58, v59);
    v63 = objc_msgSend_initWithFormulaObject_locale_(v45, v61, v44, v60, v62);
  }

  else
  {
    v63 = 0;
  }

  return v63;
}

- (TSKUIDStructCoord)p_resolveCellUIDToVendorCellUID:(SEL)a3
{
  v8 = objc_msgSend_groupByForRows(self->_tableInfo, a3, a4, v4, v5);
  row = a4->_row;
  v17[0] = a4->_column;
  v17[1] = row;
  if (sub_2211A8FF4(v17) == 255)
  {
    v10 = sub_2211A8DC8(a4->_row._lower, a4->_row._upper);
    v13 = objc_msgSend_groupLevelForGroupUid_(v8, v11, v10, v11, v12);
    if (v13 == 255)
    {
      if (a4->_column._lower != *"category column" || a4->_column._upper != *" column")
      {
        retstr->_column = 0u;
        retstr->_row = 0u;
        goto LABEL_10;
      }
    }

    else if (sub_2211A8E20(a4->_row._lower, a4->_row._upper))
    {
      v14 = sub_2211A8DB0(v13);
      sub_2211A8DF4(v14, v15);
    }

    else
    {
      sub_2211A8DB0(v13);
    }
  }

  TSTMakeCellUID(retstr);
LABEL_10:

  return result;
}

- (void)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4
{
  v195 = a3;
  v194 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  if (objc_msgSend_isAPivotTable(v194, v10, v11, v12, v13))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTSummaryCellVendor setCell:atCellUID:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 201, 0, "Setting vendor cell for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v29 = a4->_column._lower == *"category column" && a4->_column._upper == *" column";
  row = a4->_row;
  column = a4->_column;
  v197 = row;
  if (!sub_2211A90B0(&column) && !v29)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTSummaryCellVendor setCell:atCellUID:]", v33, v34);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 205, 0, "Setting vendor cell with an invalid cellUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  if (!v195)
  {
    goto LABEL_32;
  }

  v46 = a4->_row;
  column = a4->_column;
  v197 = v46;
  if (!sub_2211A9038(&column))
  {
    goto LABEL_20;
  }

  v47 = a4->_row;
  column = a4->_column;
  v197 = v47;
  v48 = sub_2211A8FF4(&column);
  v53 = objc_msgSend_cellSpec(v195, v49, v50, v51, v52);
  v58 = objc_msgSend_asFormulaSpec(v53, v54, v55, v56, v57);

  v63 = objc_msgSend_categoryAggregateType(v58, v59, v60, v61, v62);
  v69 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v194, v64, a4->_column._lower, a4->_column._upper, v48);
  if (v63 == 12)
  {
    v77 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTSummaryCellVendor setCell:atCellUID:]", v67, v68);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v79, v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v81, v71, v75, 218, 0, "Invalid aggregate type in summary cell vendor - Label");
  }

  else
  {
    if (v63 != 10)
    {
      goto LABEL_18;
    }

    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTSummaryCellVendor setCell:atCellUID:]", v67, v68);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v73, v74);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v76, v71, v75, 217, 0, "Invalid aggregate type in summary cell vendor - BodyRows");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
LABEL_18:
  if (v63 == v69)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (objc_msgSend_interactionType(v58, v65, v66, v67, v68) != 3)
  {
    if (!v29)
    {
      objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v194, v100, 0, a4->_column._lower, a4->_column._upper, v48);
    }

    goto LABEL_19;
  }

  if ((v63 - 10) <= 2)
  {

    v63 = 0;
    v195 = 0;
  }

  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v194, v100, v63, a4->_column._lower, a4->_column._upper, v48);

  if (!v195)
  {
LABEL_32:
    v195 = 0;
    goto LABEL_33;
  }

LABEL_20:
  if (objc_msgSend_isEmpty(v195, v31, v32, v33, v34))
  {
LABEL_33:
    objc_msgSend_willModify(self, v31, v32, v33, v34);
    sub_2214326D4(&self->_cellUIDMap, a4);
    goto LABEL_34;
  }

  if (*&a4->_column != 0 && *&a4->_row != 0)
  {
    if (!v29 || (v86 = a4->_row, column = a4->_column, v197 = v86, sub_2211A90B0(&column)) || (objc_msgSend_baseTableModel(v194, v31, v32, v33, v34), v87 = objc_claimAutoreleasedReturnValue(), objc_msgSend_columnRowUIDMap(v87, v88, v89, v90, v91), v92 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend_rowIndexForRowUID_(v92, v93, a4->_row._lower, a4->_row._upper, v94), v92, v87, v95 != 0x7FFFFFFF))
    {
      objc_msgSend_willModify(self, v31, v32, v33, v34);
      if (objc_msgSend_isEmpty(v195, v96, v97, v98, v99))
      {
        sub_2214326D4(&self->_cellUIDMap, a4);
        goto LABEL_34;
      }

      v101 = sub_221432460(&self->_cellUIDMap, a4);
      if (&self->_cellUIDMap.__tree_.__end_node_ == v101)
      {
        v110 = objc_msgSend_newCell(v194, v102, v103, v104, v105);
        column._lower = a4;
        v111 = sub_221432548(&self->_cellUIDMap, a4);
        objc_storeStrong((v111 + 64), v110);
      }

      else
      {
        v110 = *(v101 + 64);
      }

      v112 = objc_msgSend_cellSpec(v110, v106, v107, v108, v109);
      v117 = objc_msgSend_asFormulaSpec(v112, v113, v114, v115, v116);

      v122 = objc_msgSend_cellSpec(v195, v118, v119, v120, v121);
      v127 = objc_msgSend_asFormulaSpec(v122, v123, v124, v125, v126);

      if (objc_msgSend_upgradingToSubOwnerUIDs(self, v128, v129, v130, v131))
      {
        if (v127 || !v117)
        {
          goto LABEL_50;
        }

        v136 = objc_msgSend_formulaObject(v117, v132, v133, v134, v135);

        if (!v136)
        {
          v127 = 0;
          goto LABEL_50;
        }

        v137 = [TSTCellFormulaSpec alloc];
        v142 = objc_msgSend_formulaObject(v117, v138, v139, v140, v141);
        v147 = objc_msgSend_context(self, v143, v144, v145, v146);
        v152 = objc_msgSend_documentRoot(v147, v148, v149, v150, v151);
        v157 = objc_msgSend_documentLocale(v152, v153, v154, v155, v156);
        v127 = objc_msgSend_initWithFormulaObject_locale_(v137, v158, v142, v157, v159);
      }

      else
      {
        if (!v117)
        {
          goto LABEL_50;
        }

        v160 = objc_msgSend_formulaObject(v117, v132, v133, v134, v135);

        if (!v160)
        {
          goto LABEL_50;
        }

        v161 = [TSTCellFormulaSpec alloc];
        v142 = objc_msgSend_formulaObject(v117, v162, v163, v164, v165);
        v147 = objc_msgSend_context(self, v166, v167, v168, v169);
        v152 = objc_msgSend_documentRoot(v147, v170, v171, v172, v173);
        v157 = objc_msgSend_documentLocale(v152, v174, v175, v176, v177);
        v180 = objc_msgSend_initWithFormulaObject_locale_(v161, v178, v142, v157, v179);

        v127 = v180;
      }

LABEL_50:
      objc_msgSend_copyToCell_(v195, v132, v110, v134, v135);
      objc_msgSend_setCellSpec_(v110, v181, v127, v182, v183);
      objc_msgSend_clearValue(v110, v184, v185, v186, v187);
      objc_msgSend_setCurrentFormat_isExplicit_(v110, v188, 0, 0, v189);
      objc_msgSend_validateAndRepair(v110, v190, v191, v192, v193);
    }
  }

LABEL_34:
}

- (id)cellAtCellUID:(const TSKUIDStructCoord *)a3
{
  v7 = objc_msgSend_tableInfo(self, a2, a3, v3, v4);
  v12 = objc_msgSend_newCell(v7, v8, v9, v10, v11);

  if (objc_msgSend_getCell_atCellUID_(self, v13, v12, a3, v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4
{
  v6 = a3;
  objc_msgSend_clear(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
  if (objc_msgSend_isAPivotTable(v15, v16, v17, v18, v19))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTSummaryCellVendor getCell:atCellUID:]", v21, v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 312, 0, "Getting vendor cell for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (v6)
  {
    v99 = 0;
    v100 = 0;
    objc_msgSend_p_resolveCellUIDToVendorCellUID_(self, v20, a4, v21, v22);
    column = v99;
    v98 = v100;
    v34 = sub_2211A90B0(&column);
    lower = v99._lower;
    if (!v34 && v99 != *"category column")
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTSummaryCellVendor getCell:atCellUID:]", v36, v37);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 321, 0, "Getting vendor cell with an invalid cellUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
      lower = v99._lower;
    }

    if (!(lower | v99._upper) || v100 == 0uLL || (p_cellUIDMap = &self->_cellUIDMap, v51 = sub_221432460(p_cellUIDMap, &v99), &p_cellUIDMap->__tree_.__end_node_ == v51))
    {
      v84 = 2;
    }

    else
    {
      objc_msgSend_copyToCell_(*(v51 + 64), v52, v6, v53, v54);
      row = a4->_row;
      column = a4->_column;
      v98 = row;
      if (!sub_2211A9038(&column) && objc_msgSend_hasFormula(v6, v56, v57, v58, v59))
      {
        v64 = objc_msgSend_formulaObject(v6, v60, v61, v62, v63);
        column._lower = objc_msgSend_groupByUid(v15, v65, v66, v67, v68);
        column._upper = v69;
        v71 = objc_msgSend_copyByRewritingGroupUid_groupByUID_(v64, v69, &a4->_row, &column, v70);

        v72 = [TSTCellFormulaSpec alloc];
        v77 = objc_msgSend_locale(v6, v73, v74, v75, v76);
        v80 = objc_msgSend_initWithFormulaObject_locale_(v72, v78, v71, v77, v79);

        objc_msgSend_setCellSpec_(v6, v81, v80, v82, v83);
      }

      v84 = 0;
    }
  }

  else
  {
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTSummaryCellVendor getCell:atCellUID:]", v21, v22);
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v88, v89);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v91, v86, v90, 315, 0, "cell should never be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95);
    v84 = 1;
  }

  return v84;
}

- (void)removeCellsInColumnUid:(TSKUIDStruct *)a3
{
  v6 = objc_msgSend_tableInfo(self, a2, a3, v3, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v6, v7, v8, v9, v10);

  if (isAPivotTable)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTSummaryCellVendor removeCellsInColumnUid:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 350, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_willModify(self, v12, v13, v14, v15);
  v27 = 1;
  do
  {
    memset(v30, 0, sizeof(v30));
    v28 = v27;
    sub_2211A8F64(v27, 0, v30);
    sub_2214326D4(&self->_cellUIDMap, v30);
    memset(v29, 0, sizeof(v29));
    sub_2211A8F64(v27, 1, v29);
    sub_2214326D4(&self->_cellUIDMap, v29);
    ++v27;
  }

  while (v28 < 5);
}

- (id)cellMapForWildcardCells
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v6, v7, v8, v9, v10);

  if (isAPivotTable)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTSummaryCellVendor cellMapForWildcardCells]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 368, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_context(self, v12, v13, v14, v15);
  v31 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v28, v27, v29, v30);

  p_cellUIDMap = &self->_cellUIDMap;
  begin_node = p_cellUIDMap->__tree_.__begin_node_;
  p_end_node = &p_cellUIDMap->__tree_.__end_node_;
  v34 = begin_node;
  if (begin_node != p_end_node)
  {
    do
    {
      v36 = *&v34[6].__left_;
      v43[0] = *&v34[4].__left_;
      v43[1] = v36;
      if (sub_2211A8FF4(v43) != 255)
      {
        objc_msgSend_addCell_andCellUID_(v31, v37, v34[8].__left_, &v34[4], v38);
      }

      left = v34[1].__left_;
      if (left)
      {
        do
        {
          v40 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v40 = v34[2].__left_;
          v41 = v40->__left_ == v34;
          v34 = v40;
        }

        while (!v41);
      }

      v34 = v40;
    }

    while (v40 != p_end_node);
  }

  return v31;
}

- (void)runChange:(id)a3 withSummaryCellMap:(id)a4 migrationHelper:(id)a5
{
  v5 = objc_msgSend_tableInfo(self, a2, a3, a4, a5);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8, v9);

  if (isAPivotTable)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTSummaryCellVendor runChange:withSummaryCellMap:migrationHelper:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 379, 0, "Not implemented for pivot tables.");

    v25 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v25, v21, v22, v23, v24);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3
{
  v4 = a3;
  objc_msgSend_setHasCustomFormatsToPaste_(self, v5, 0, v6, v7);
  if (!v4)
  {
    v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10, v11);
  }

  objc_msgSend_willModify(self, v8, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2214317C0;
  v18[3] = &unk_278465278;
  v12 = v4;
  v19 = v12;
  v20 = self;
  objc_msgSend_enumerateCellsUsingBlock_(self, v13, v18, v14, v15);
  v16 = v12;

  return v12;
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  if (objc_msgSend_hasCustomFormatsToPaste(self, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_documentRoot(self, v11, v12, v13, v14);
    v20 = objc_msgSend_customFormatList(v15, v16, v17, v18, v19);

    objc_msgSend_willModify(self, v21, v22, v23, v24);
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = sub_221431B30;
    v32 = &unk_278465278;
    v33 = v6;
    v25 = v20;
    v34 = v25;
    objc_msgSend_enumerateCellsUsingBlock_(self, v26, &v29, v27, v28);
  }

  objc_msgSend_setHasCustomFormatsToPaste_(self, v11, 0, v13, v14, v29, v30, v31, v32);
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[302], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (objc_msgSend_fileFormatVersion(v6, v7, v8, v9, v10) <= 0x400000000000BLL)
  {
    objc_msgSend_willModifyForUpgrade(self, v11, v12, v13, v14);
  }

  v15 = *(a3 + 6);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_221432070;
  v43[3] = &unk_278462738;
  v43[4] = self;
  v16 = v6;
  v18 = objc_opt_class();
  if (v15)
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v16, v17, v15, v18, 0, v43);
  }

  else
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v16, v17, MEMORY[0x277D80A18], v18, 0, v43);
  }

  v20 = *(a3 + 5);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + 8);
  if (v22)
  {
    v23 = 8 * v22;
    v24 = MEMORY[0x277D809E0];
    do
    {
      v25 = *v21;
      memset(v42, 0, sizeof(v42));
      if (v25[4])
      {
        v26 = v25[4];
      }

      else
      {
        v26 = v24;
      }

      TSKUIDStruct::loadFromMessage(v26, v19);
      if (v25[3])
      {
        v28 = v25[3];
      }

      else
      {
        v28 = v24;
      }

      TSKUIDStruct::loadFromMessage(v28, v27);
      TSTMakeCellUID(v42);
      v29 = [TSTCell alloc];
      v34 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v30, v31, v32, v33);
      v38 = objc_msgSend_initWithLocale_(v29, v35, v34, v36, v37);

      if (v25[5])
      {
        v39 = v25[5];
      }

      else
      {
        v39 = &TST::_Cell_default_instance_;
      }

      sub_221123AF0(v39, v38, v16);
      v43[6] = v42;
      v40 = sub_221432548(&self->_cellUIDMap, v42);
      v41 = *(v40 + 64);
      *(v40 + 64) = v38;

      ++v21;
      v23 -= 8;
    }

    while (v23);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, 0x300020000000ALL, v6, v7);
  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(v13, v8, sub_221432758, off_2812E4498[302], v9);

  objc_msgSend_saveToArchive_archiver_(self, v11, v10, v13, v12);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v37 = a4;
  v12 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  *(a3 + 4) |= 1u;
  v13 = *(a3 + 6);
  if (!v13)
  {
    v14 = *(a3 + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0390](v14);
    *(a3 + 6) = v13;
  }

  objc_msgSend_setWeakReference_message_(v37, v10, v12, v13, v11);

  p_end_node = &self->_cellUIDMap.__tree_.__end_node_;
  begin_node = self->_cellUIDMap.__tree_.__begin_node_;
  if (begin_node != &self->_cellUIDMap.__tree_.__end_node_)
  {
    while ((objc_msgSend_isEmpty(begin_node[8].__left_, v15, v16, v17, v18) & 1) != 0)
    {
LABEL_27:
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v35 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v35 = begin_node[2].__left_;
          v36 = v35->__left_ == begin_node;
          begin_node = v35;
        }

        while (!v36);
      }

      begin_node = v35;
      if (v35 == p_end_node)
      {
        goto LABEL_33;
      }
    }

    v21 = *(a3 + 5);
    if (!v21)
    {
      goto LABEL_12;
    }

    v22 = *(a3 + 8);
    v23 = *v21;
    if (v22 < *v21)
    {
      *(a3 + 8) = v22 + 1;
      v24 = *&v21[2 * v22 + 2];
LABEL_14:
      *(v24 + 16) |= 1u;
      v27 = *(v24 + 24);
      if (!v27)
      {
        v28 = *(v24 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x223DA0360](v28);
        *(v24 + 24) = v27;
      }

      TSKUIDStruct::saveToMessage(&begin_node[6], v27);
      *(v24 + 16) |= 2u;
      v29 = *(v24 + 32);
      if (!v29)
      {
        v30 = *(v24 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x223DA0360](v30);
        *(v24 + 32) = v29;
      }

      TSKUIDStruct::saveToMessage(&begin_node[4], v29);
      v31 = begin_node[8].__left_;
      *(v24 + 16) |= 4u;
      v32 = *(v24 + 40);
      if (!v32)
      {
        v33 = *(v24 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v33);
        *(v24 + 40) = v32;
      }

      sub_2211243E4(v31, v32, v37);
      goto LABEL_27;
    }

    if (v23 == *(a3 + 9))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
      v21 = *(a3 + 5);
      v23 = *v21;
    }

    *v21 = v23 + 1;
    v24 = google::protobuf::Arena::CreateMaybeMessage<TST::SummaryCellVendorArchive_SummaryCellEntry>(*(a3 + 3));
    v25 = *(a3 + 8);
    v26 = *(a3 + 5) + 8 * v25;
    *(a3 + 8) = v25 + 1;
    *(v26 + 8) = v24;
    goto LABEL_14;
  }

LABEL_33:
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 10) = self + 88;
  return self;
}

@end