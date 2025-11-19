@interface TNChartFormulaHelper
+ (id)cellRegionCullingToFirstFoundLevelFrom:(id)a3 inTable:(id)a4 byRows:(BOOL)a5;
+ (id)chartFormulasForSummaryRegion:(id)a3 inTable:(id)a4;
- (BOOL)p_addSeriesForRangeList:(id)a3 rowLabelRangeList:(id)a4 columnLabelRangeList:(id)a5 rowLabels:(id)a6 columnLabels:(id)a7 toFormulaMap:(id)a8;
- (BOOL)p_extendExistingSeriesWithSeriesRangeList:(id *)a3 rowLabelRangeList:(id *)a4 columnLabelRangeList:(id *)a5 toFormulaMap:(id)a6 withLocale:(id)a7;
- (BOOL)p_hasOneValuePerSeries;
- (TNChartFormulaHelper)initWithMediator:(id)a3 createSpanningReferences:(BOOL)a4;
- (id)chartFormulaByAppendingCategoryReferences:(vector<TSCECategoryRef *) toFormula:(std:(id)a4 :allocator<TSCECategoryRef *>> *)a3;
- (id)chartFormulaByAppendingRangeReference:(TSCERangeRef *)a3 toFormula:(id)a4;
- (id)chartFormulaByAppendingTractReference:(id)a3 toFormula:(id)a4;
- (id)formulaStorageForChartGridDirection:(int)a3;
- (id)formulaStorageTransformTable:(TSKUIDStruct)a3 toLevel:(unsigned __int8)a4;
- (id)p_labelsOfType:(unint64_t)a3 formulaMap:(id)a4;
- (id)p_rangeListsForFormula:(id)a3 argumentIndexes:(id)a4 byRow:(BOOL)a5 resolveSpanning:(BOOL)a6;
- (id)p_rangeListsForFormulas:(id)a3 byRow:(BOOL)a4 resolveSpanning:(BOOL)a5;
- (unsigned)p_addFormulasOfType:(unint64_t)a3 rangeList:(id)a4 byRow:(BOOL)a5 toFormulaMap:(id)a6 ofLevel:(unsigned __int8)a7;
- (unsigned)p_firstDataCategoryLevelInFormulaMap:(id)a3 forTable:(TSKUIDStruct)a4;
- (void)p_addStringFormulasOfType:(unint64_t)a3 rangeList:(id)a4 byRow:(BOOL)a5 labels:(id)a6 toFormulaMap:(id)a7;
- (void)p_rangeListsForFormula:(id)a3 argumentIndexes:(id)a4 byRow:(BOOL)a5 resolveSpanning:(BOOL)a6 orderedListOfOwnerIDs:(id)a7 ownerIDToRangeList:(id)a8;
@end

@implementation TNChartFormulaHelper

- (TNChartFormulaHelper)initWithMediator:(id)a3 createSpanningReferences:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TNChartFormulaHelper;
  v8 = [(TNChartFormulaHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_chartMediator, a3);
    v9->_createSpanningReferences = a4;
  }

  return v9;
}

- (id)formulaStorageForChartGridDirection:(int)a3
{
  v3 = *&a3;
  v65 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_chartMediator(self, a2, *&a3);
  v8 = objc_msgSend_formulaStorage(v5, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  if (objc_msgSend_scheme(v11, v12, v13) == 2)
  {
    objc_msgSend_setDirection_(v11, v14, v3);
    goto LABEL_18;
  }

  v15 = objc_msgSend_formulaListForType_(v11, v14, 1);
  if (!objc_msgSend_count(v15, v16, v17))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TNChartFormulaHelper formulaStorageForChartGridDirection:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
    v26 = objc_msgSend_chartMediator(self, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v21, v23, 73, 0, "Empty formula list with mediator %{public}p, formula store %{public}p", v26, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_direction(v11, v18, v19) == 1;
  v32 = objc_msgSend_p_rangeListsForFormulas_byRow_resolveSpanning_(self, v31, v15, v30, 1);
  objc_msgSend_setDirection_(v11, v33, v3);
  if (!objc_msgSend_count(v32, v34, v35))
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TNChartFormulaHelper formulaStorageForChartGridDirection:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 82, 0, "We shouldn't be creating a formula storage here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
  }

  objc_msgSend_clearFormulaListForKey_(v11, v36, 1);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v44 = v32;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v60, v64, 16);
  v48 = v44;
  if (v47)
  {
    v49 = 0;
    v50 = *v61;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(v44);
        }

        v49 |= objc_msgSend_p_addSeriesForRangeList_rowLabelRangeList_columnLabelRangeList_rowLabels_columnLabels_toFormulaMap_(self, v46, *(*(&v60 + 1) + 8 * i), 0, 0, 0, 0, v11);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v60, v64, 16);
    }

    while (v47);

    if ((v49 & 1) == 0)
    {
      goto LABEL_17;
    }

    v54 = objc_msgSend_chartMediator(self, v52, v53);
    objc_msgSend_repairMissingSeriesLabelsInMap_(v54, v55, v11);

    v48 = objc_msgSend_chartMediator(self, v56, v57);
    objc_msgSend_repairMissingCategoryLabelsInMap_(v48, v58, v11);
  }

LABEL_17:
LABEL_18:

  return v11;
}

- (id)formulaStorageTransformTable:(TSKUIDStruct)a3 toLevel:(unsigned __int8)a4
{
  v4 = a4;
  upper = a3._upper;
  lower = a3._lower;
  v8 = objc_msgSend_chartMediator(self, a2, a3._lower);
  v11 = objc_msgSend_calculationEngine(v8, v9, v10);

  v128 = upper;
  v130 = v11;
  v13 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v12, lower, upper, v11);
  v131 = v13;
  v16 = objc_msgSend_chartMediator(self, v14, v15);
  v19 = objc_msgSend_formulaStorage(v16, v17, v18);
  v22 = objc_msgSend_mutableCopy(v19, v20, v21);

  v25 = objc_msgSend_direction(v22, v23, v24);
  v132 = objc_msgSend_mutableFormulaListForType_(v22, v26, 1);
  v129 = objc_msgSend_mutableFormulaListForType_(v22, v27, 3);
  v133 = objc_msgSend_mutableFormulaListForType_(v22, v28, 2);
  v165 = 0;
  v166 = &v165;
  v167 = 0x4012000000;
  v168 = sub_275F21C1C;
  v169 = nullsub_10;
  v170 = "";
  v171 = 0;
  v172 = 0;
  if (v4 == 253)
  {
    v31 = objc_msgSend_numberOfBaseRows(v13, v29, v30);
    v36 = v31 - objc_msgSend_numberOfHeaderRows(v13, v32, v33);
  }

  else
  {
    v37 = objc_msgSend_groupBy(v13, v29, v30);
    v36 = objc_msgSend_numberOfGroupsAtLevel_(v37, v38, v4);
  }

  v39 = objc_msgSend_chartMediator(self, v34, v35);
  v42 = objc_msgSend_chartInfo(v39, v40, v41);
  v45 = objc_msgSend_chartType(v42, v43, v44);

  if (v36 > objc_msgSend_maxCellsForAdding(v45, v46, v47))
  {
    v50 = 0;
    v51 = v132;
    goto LABEL_28;
  }

  if (v25 == 1)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 135, 0, "Should not be allowing level transformation of chart references if rows are series!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
  }

  else
  {
    v127 = v45;
    v126 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v48, v49);
    v125 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v61, v62);
    v65 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v63, v64);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_275F21C2C;
    v156[3] = &unk_27A6A2DC0;
    v66 = v130;
    v157 = v66;
    v158 = self;
    v163 = lower;
    v164 = v128;
    v67 = v65;
    v159 = v67;
    v68 = v126;
    v160 = v68;
    v69 = v125;
    v161 = v69;
    v70 = v13;
    v162 = v70;
    objc_msgSend_enumerateObjectsUsingBlock_(v132, v71, v156);
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_275F22320;
    v147[3] = &unk_27A6A2E10;
    v155 = v4;
    v148 = v70;
    v153 = lower;
    v154 = v128;
    v149 = v66;
    v152 = &v165;
    v150 = v132;
    v151 = v129;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v69, v72, v147);

    v45 = v127;
  }

  objc_msgSend_removeAllObjects(v133, v59, v60);
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = __C();
  if (v4 == 253)
  {
    v75 = objc_msgSend_numberOfBaseHeaderColumns(v13, v73, v74);
    v78 = objc_msgSend_numberOfBaseHeaderRows(v13, v76, v77);
    v51 = v132;
    if (v75)
    {
      v81 = v78;
      v85 = (objc_msgSend_numberOfBaseRows(v131, v79, v80) - 1);
      v137 = v81;
      v138 = v85;
      v136[0] = 0;
      v136[1] = v75 - 1;
      if ((v81 & 0x80000000) == 0 && (v85 & 0x80000000) == 0 && &v85[-v81 + 1] > 0xFFFF)
      {
        goto LABEL_23;
      }

      if (!objc_msgSend_isCategorized(v131, v82, v83))
      {
        TSUIndexSet::TSUIndexSet();
        v134 = v133;
        TSUIndexSet::enumerateIndexesUsingBlock();
        TSUIndexSet::~TSUIndexSet(v135);
        v86 = v134;
        goto LABEL_22;
      }

      v86 = objc_alloc_init(MEMORY[0x277D80C38]);
      objc_msgSend_setTableUID_(v86, v87, lower, v128);
      objc_msgSend_addRowRange_(v86, v88, &v137);
      objc_msgSend_addColumnRange_(v86, v89, v136);
      v90 = sub_275F11A20(v140[3], v86);
    }

    else
    {
      v86 = objc_msgSend_stringValue_(MEMORY[0x277D80CB0], v79, &stru_2884F65E0);
      v90 = sub_275F14E00(v140[3], v86, v130);
    }
  }

  else
  {
    if (!v166[6] && !v166[7])
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]");
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v95, v92, v94, 306, 0, "Didn't capture first column UID for transforming category references!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97);
    }

    v98 = objc_alloc(MEMORY[0x277D80C30]);
    v135[0] = objc_msgSend_groupByUid(v13, v99, v100);
    v135[1] = v101;
    v102 = v13;
    v51 = v132;
    v104 = objc_msgSend_groupBy(v102, v101, v103);
    v137 = objc_msgSend_topLevelGroupUid(v104, v105, v106);
    v138 = v107;
    v86 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v98, v107, v135, &v137, MEMORY[0x277D80D68], 7, v4);

    v90 = sub_275F11AB8(v140[3], v86, v108);
  }

  v144[3] += v90;
LABEL_22:

LABEL_23:
  v109 = v144[3];
  if (v109)
  {
    v110 = v140[3];
    if (HIDWORD(v109))
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 316, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
      v109 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v110, 0xAF, v109, 0, v84);
    v111 = objc_alloc(MEMORY[0x277D80C60]);
    v113 = objc_msgSend_initWithNodeArray_(v111, v112, v140[3]);
    v51 = v132;
    v115 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v114, v113);
    TSCEASTNodeArray::freeNodeArray();
    objc_msgSend_addObject_(v133, v116, v115);
  }

  v50 = v22;
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);
LABEL_28:

  _Block_object_dispose(&v165, 8);

  return v50;
}

- (BOOL)p_hasOneValuePerSeries
{
  v3 = objc_msgSend_chartMediator(self, a2, v2);
  v6 = objc_msgSend_chartInfo(v3, v4, v5);
  v9 = objc_msgSend_chartType(v6, v7, v8);
  v12 = objc_msgSend_supportsMultipleValuesPerSeries(v9, v10, v11);

  return v12 ^ 1;
}

- (id)chartFormulaByAppendingRangeReference:(TSCERangeRef *)a3 toFormula:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v57 = a4;
  if (!v57 || (v8 = __C()) == 0)
  {
    v47 = 0;
    goto LABEL_29;
  }

  v9 = objc_msgSend_chartMediator(self, v6, v7);
  v12 = objc_msgSend_calculationEngine(v9, v10, v11);

  v15 = objc_msgSend_chartMediator(self, v13, v14);
  *&v58 = objc_msgSend_entityUID(v15, v16, v17);
  *(&v58 + 1) = v18;
  v56 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v57, v18, v12, &v58);

  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v21 = objc_msgSend_elementEnumerator(v56, v19, v20);
  v23 = 0;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v60, v64, 16);
  if (!v26)
  {
    goto LABEL_22;
  }

  v27 = *v61;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v61 != v27)
      {
        objc_enumerationMutation(v21);
      }

      v29 = *(*(&v60 + 1) + 8 * i);
      v30 = objc_msgSend_type(v29, v24, v25);
      if (v30 > 1)
      {
        switch(v30)
        {
          case 4uLL:
            v37 = objc_msgSend_staticValue(v29, v24, v25);
            v34 = sub_275F14E00(v8, v37, v12);

            break;
          case 3uLL:
            v35 = objc_msgSend_categoryReference(v29, v24, v25);
            TSCEASTCategoryRefElement::appendCategoryRefElement(v8, v35, v36);

            ++v23;
            continue;
          case 2uLL:
            v33 = objc_msgSend_tractReference(v29, v24, v25);
            v34 = sub_275F11A20(v8, v33);

            break;
          default:
            continue;
        }

        v23 += v34;
      }

      else
      {
        if (v29)
        {
          objc_msgSend_rangeReference(v29, v24, v25);
          v32 = *(&v58 + 1);
          v31 = v58;
        }

        else
        {
          v32 = 0;
          v31 = 0;
          v58 = 0u;
          v59 = 0u;
        }

        v23 += sub_275F14DBC(v8, &v59, v31, v32);
      }
    }

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v60, v64, 16);
  }

  while (v26);
LABEL_22:

  topLeft = a3->range._topLeft;
  bottomRight = a3->range._bottomRight;
  v41 = sub_275F14DBC(v8, &a3->_tableUID, topLeft, bottomRight) + v23;
  if (v41)
  {
    if (HIDWORD(v41))
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TNChartFormulaHelper chartFormulaByAppendingRangeReference:toFormula:]");
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 362, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
      v41 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v8, 0xAF, v41, 0, v42);
    v43 = objc_alloc(MEMORY[0x277D80C60]);
    v45 = objc_msgSend_initWithNodeArray_(v43, v44, v8);
    v47 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v46, v45);
  }

  else
  {
    v47 = 0;
  }

  TSCEASTNodeArray::freeNodeArray();

LABEL_29:

  return v47;
}

- (id)chartFormulaByAppendingTractReference:(id)a3 toFormula:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v56 = a4;
  if (!v56 || (v8 = __C()) == 0)
  {
    v45 = 0;
    goto LABEL_29;
  }

  v9 = objc_msgSend_chartMediator(self, v6, v7);
  v12 = objc_msgSend_calculationEngine(v9, v10, v11);

  v15 = objc_msgSend_chartMediator(self, v13, v14);
  *&v57 = objc_msgSend_entityUID(v15, v16, v17);
  *(&v57 + 1) = v18;
  v54 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v56, v18, v12, &v57);

  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = objc_msgSend_elementEnumerator(v54, v19, v20);
  v23 = 0;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v59, v63, 16);
  if (!v26)
  {
    goto LABEL_22;
  }

  v27 = *v60;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v60 != v27)
      {
        objc_enumerationMutation(v21);
      }

      v29 = *(*(&v59 + 1) + 8 * i);
      v30 = objc_msgSend_type(v29, v24, v25);
      if (v30 > 1)
      {
        switch(v30)
        {
          case 4uLL:
            v37 = objc_msgSend_staticValue(v29, v24, v25);
            v34 = sub_275F14E00(v8, v37, v12);

            break;
          case 3uLL:
            v35 = objc_msgSend_categoryReference(v29, v24, v25);
            TSCEASTCategoryRefElement::appendCategoryRefElement(v8, v35, v36);

            ++v23;
            continue;
          case 2uLL:
            v33 = objc_msgSend_tractReference(v29, v24, v25);
            v34 = sub_275F11A20(v8, v33);

            break;
          default:
            continue;
        }

        v23 += v34;
      }

      else
      {
        if (v29)
        {
          objc_msgSend_rangeReference(v29, v24, v25);
          v32 = *(&v57 + 1);
          v31 = v57;
        }

        else
        {
          v32 = 0;
          v31 = 0;
          v57 = 0u;
          v58 = 0u;
        }

        v23 += sub_275F14DBC(v8, &v58, v31, v32);
      }
    }

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v59, v63, 16);
  }

  while (v26);
LABEL_22:

  v39 = sub_275F11A20(v8, v55) + v23;
  if (v39)
  {
    if (HIDWORD(v39))
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TNChartFormulaHelper chartFormulaByAppendingTractReference:toFormula:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 401, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
      v39 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v8, 0xAF, v39, 0, v40);
    v41 = objc_alloc(MEMORY[0x277D80C60]);
    v43 = objc_msgSend_initWithNodeArray_(v41, v42, v8);
    v45 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v44, v43);
  }

  else
  {
    v45 = 0;
  }

  TSCEASTNodeArray::freeNodeArray();

LABEL_29:

  return v45;
}

- (id)chartFormulaByAppendingCategoryReferences:(vector<TSCECategoryRef *) toFormula:(std:(id)a4 :allocator<TSCECategoryRef *>> *)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v60 = a4;
  if (v60 && (v8 = __C()) != 0)
  {
    v9 = objc_msgSend_chartMediator(self, v6, v7);
    v12 = objc_msgSend_calculationEngine(v9, v10, v11);

    v15 = objc_msgSend_chartMediator(self, v13, v14);
    v58 = a3;
    *&v61 = objc_msgSend_entityUID(v15, v16, v17);
    *(&v61 + 1) = v18;
    v59 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v60, v18, v12, &v61);

    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v21 = objc_msgSend_elementEnumerator(v59, v19, v20);
    v23 = 0;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v63, v67, 16);
    if (v26)
    {
      v27 = *v64;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v64 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v63 + 1) + 8 * i);
          v30 = objc_msgSend_type(v29, v24, v25);
          if (v30 > 1)
          {
            switch(v30)
            {
              case 4uLL:
                v37 = objc_msgSend_staticValue(v29, v24, v25);
                v34 = sub_275F14E00(v8, v37, v12);

                break;
              case 3uLL:
                v35 = objc_msgSend_categoryReference(v29, v24, v25);
                TSCEASTCategoryRefElement::appendCategoryRefElement(v8, v35, v36);

                ++v23;
                continue;
              case 2uLL:
                v33 = objc_msgSend_tractReference(v29, v24, v25);
                v34 = sub_275F11A20(v8, v33);

                break;
              default:
                continue;
            }

            v23 += v34;
          }

          else
          {
            if (v29)
            {
              objc_msgSend_rangeReference(v29, v24, v25);
              v32 = *(&v61 + 1);
              v31 = v61;
            }

            else
            {
              v32 = 0;
              v31 = 0;
              v61 = 0u;
              v62 = 0u;
            }

            v23 += sub_275F14DBC(v8, &v62, v31, v32);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v63, v67, 16);
      }

      while (v26);
    }

    var0 = a3->var0;
    var1 = v58->var1;
    while (var0 != var1)
    {
      v42 = *var0;
      v44 = sub_275F11AB8(v8, v42, v43);

      v23 += v44;
      ++var0;
    }

    if (v23)
    {
      if (HIDWORD(v23))
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TNChartFormulaHelper chartFormulaByAppendingCategoryReferences:toFormula:]");
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 442, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
        v23 = 0xFFFFFFFFLL;
      }

      TSCEASTFunctionElement::appendFunctionElement(v8, 0xAF, v23, 0, v39);
      v46 = objc_alloc(MEMORY[0x277D80C60]);
      v48 = objc_msgSend_initWithNodeArray_(v46, v47, v8);
      v45 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v49, v48);
    }

    else
    {
      v45 = 0;
    }

    TSCEASTNodeArray::freeNodeArray();
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (void)p_rangeListsForFormula:(id)a3 argumentIndexes:(id)a4 byRow:(BOOL)a5 resolveSpanning:(BOOL)a6 orderedListOfOwnerIDs:(id)a7 ownerIDToRangeList:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v20 = objc_msgSend_chartMediator(self, v18, v19);
  v23 = objc_msgSend_calculationEngine(v20, v21, v22);

  v26 = objc_msgSend_chartMediator(self, v24, v25);
  v49[0] = objc_msgSend_entityUID(v26, v27, v28);
  v49[1] = v29;
  v30 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v14, v29, v23, v49);

  if (!v15)
  {
    v33 = MEMORY[0x277CCAA78];
    v34 = objc_msgSend_count(v30, v31, v32);
    v15 = objc_msgSend_indexSetWithIndexesInRange_(v33, v35, 0, v34);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_275F23B94;
  v41[3] = &unk_27A6A2F00;
  v36 = v30;
  v42 = v36;
  v37 = v17;
  v43 = v37;
  v38 = v16;
  v44 = v38;
  v45 = self;
  v47 = a6;
  v48 = a5;
  v39 = v23;
  v46 = v39;
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v40, v41);
}

- (id)p_rangeListsForFormula:(id)a3 argumentIndexes:(id)a4 byRow:(BOOL)a5 resolveSpanning:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  v17 = objc_msgSend_dictionary(MEMORY[0x277D81278], v15, v16);
  objc_msgSend_p_rangeListsForFormula_argumentIndexes_byRow_resolveSpanning_orderedListOfOwnerIDs_ownerIDToRangeList_(self, v18, v10, v11, v7, v6, v14, v17);
  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = v14;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v31, v35, 16);
  if (v25)
  {
    v26 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = objc_msgSend_objectForKey_(v17, v24, *(*(&v31 + 1) + 8 * i), v31);
        objc_msgSend_addObject_(v21, v29, v28);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v31, v35, 16);
    }

    while (v25);
  }

  return v21;
}

- (id)p_rangeListsForFormulas:(id)a3 byRow:(BOOL)a4 resolveSpanning:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v13 = objc_msgSend_dictionary(MEMORY[0x277D81278], v11, v12);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = v32;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v42, 16);
  if (v17)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_p_rangeListsForFormula_argumentIndexes_byRow_resolveSpanning_orderedListOfOwnerIDs_ownerIDToRangeList_(self, v16, *(*(&v37 + 1) + 8 * i), 0, v6, v5, v10, v13);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v37, v42, 16);
    }

    while (v17);
  }

  v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v10;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v33, v41, 16);
  if (v26)
  {
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = objc_msgSend_objectForKey_(v13, v25, *(*(&v33 + 1) + 8 * j));
        objc_msgSend_addObject_(v22, v30, v29);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v33, v41, 16);
    }

    while (v26);
  }

  return v22;
}

- (unsigned)p_firstDataCategoryLevelInFormulaMap:(id)a3 forTable:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v64 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v9 = objc_msgSend_chartMediator(self, v7, v8);
  v12 = objc_msgSend_calculationEngine(v9, v10, v11);

  v15 = objc_msgSend_chartMediator(self, v13, v14);
  v61[0] = objc_msgSend_entityUID(v15, v16, v17);
  v61[1] = v18;

  v47 = objc_msgSend_formulaListForType_(v48, v19, 1);
  if (objc_msgSend_count(v47, v20, v21))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v47;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v57, v63, 16);
    if (v23)
    {
      v52 = *v58;
LABEL_4:
      v24 = 0;
      v51 = v23;
      while (1)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v57 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        v28 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v25, v27, v12, v61);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v29 = v28;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v53, v62, 16);
        if (v32)
        {
          v50 = v9;
          v33 = *v54;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v54 != v33)
              {
                objc_enumerationMutation(v29);
              }

              v9 = *(*(&v53 + 1) + 8 * i);
              if (objc_msgSend_tableUID_(v9, v31, v12) == lower && v31 == upper)
              {
                if (objc_msgSend_isCategoryReference(v9, v31, v35))
                {
                  v42 = objc_msgSend_categoryReference(v9, v37, v38);
                  LODWORD(v9) = objc_msgSend_groupLevel(v42, v43, v44);

                  v41 = 0;
                  goto LABEL_26;
                }

                if (objc_msgSend_isTractReference(v9, v37, v38) & 1) != 0 || (objc_msgSend_isGeometricReference(v9, v39, v40))
                {
                  v41 = 0;
                  LODWORD(v9) = 253;
                  goto LABEL_26;
                }
              }
            }

            v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v53, v62, 16);
            if (v32)
            {
              continue;
            }

            break;
          }

          v41 = 1;
          LODWORD(v9) = v50;
        }

        else
        {
          v41 = 1;
        }

LABEL_26:

        objc_autoreleasePoolPop(v26);
        if (!v41)
        {
          break;
        }

        if (++v24 == v51)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v57, v63, 16);
          if (v23)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      LOBYTE(v9) = -1;
    }
  }

  else
  {
    LOBYTE(v9) = -1;
  }

  return v9;
}

- (unsigned)p_addFormulasOfType:(unint64_t)a3 rangeList:(id)a4 byRow:(BOOL)a5 toFormulaMap:(id)a6 ofLevel:(unsigned __int8)a7
{
  DataCategoryLevelInFormulaMap_forTable = a7;
  v204 = a5;
  v11 = a4;
  v202 = a6;
  if (objc_msgSend_direction(v202, v12, v13) == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = objc_msgSend_chartMediator(self, v14, v15);
  v20 = objc_msgSend_chartInfo(v17, v18, v19);
  v187 = objc_msgSend_chartType(v20, v21, v22);

  if (v16 == a3)
  {
    v191 = objc_msgSend_p_hasOneValuePerSeries(self, v23, v24) ^ 1;
  }

  else
  {
    v191 = 0;
  }

  if (a3 - 4 < 4 || a3 == 1)
  {
    v25 = v187;
    v197 = objc_msgSend_maxCellsForAdding(v187, v23, v24);
    v200 = objc_msgSend_maxSeries(v187, v26, v27);
  }

  else if (v16 == a3)
  {
    v197 = 0xFFFFLL;
    v200 = 0xFFFFLL;
    v25 = v187;
  }

  else
  {
    v25 = v187;
    v197 = objc_msgSend_maxSeries(v187, v23, v24);
    v200 = objc_msgSend_maxSeries(v187, v130, v131);
  }

  v189 = objc_msgSend_formulaListForType_(v202, v23, a3);
  v30 = objc_msgSend_chartMediator(self, v28, v29);
  v190 = objc_msgSend_calculationEngine(v30, v31, v32);

  v35 = objc_msgSend_chartMediator(self, v33, v34);
  v38 = objc_msgSend_entityUID(v35, v36, v37);
  v40 = v39;

  v43 = objc_msgSend_chartMediator(self, v41, v42);
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(v43, v44, v45);

  if (v191 && objc_msgSend_count(v189, v47, v48) && (objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(v202, v47, v16, v190, v38, v40) & 1) != 0)
  {
    v49 = -1;
    goto LABEL_195;
  }

  v207 = v11;
  v203 = objc_msgSend_count(v189, v47, v48);
  v205 = self;
  v221._lower = objc_msgSend_tableUID(v11, v50, v51);
  v221._upper = v52;
  v201 = objc_msgSend_unionRange(v11, v52, v53);
  v55 = v54;
  v56 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v54, v221._lower, v221._upper, v190);
  if (!objc_msgSend_isCategorized(v56, v57, v58))
  {
    if ((~DataCategoryLevelInFormulaMap_forTable & 0xFD) != 0)
    {
LABEL_45:
      v49 = -1;
      goto LABEL_194;
    }

    if (v191)
    {
      v64 = objc_msgSend_numberOfTotalCategoryLabelsWithCalcEngine_inEntity_shouldSkipHiddenData_(v202, v59, v190, v38, v40, shouldSkipHiddenData);
      if (HIDWORD(v64))
      {
        v168 = MEMORY[0x277D81150];
        v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TNChartFormulaHelper p_addFormulasOfType:rangeList:byRow:toFormulaMap:ofLevel:]");
        v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v168, v172, v169, v171, 847, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v173, v174);
        LODWORD(v64) = -1;
      }

      if (v197 < v64)
      {
        goto LABEL_45;
      }
    }

    else
    {
      LODWORD(v64) = 0;
    }

    if (v204)
    {
      if (v55 == 0x7FFFFFFF || v201 == 0x7FFFFFFF)
      {
        v74 = 0;
      }

      else
      {
        v74 = v55 - v201 + 1;
      }

      v76 = WORD2(v201) != 0x7FFF && WORD2(v55) != 0x7FFF;
      v77 = WORD2(v55) - WORD2(v201);
    }

    else
    {
      if (WORD2(v55) == 0x7FFF || WORD2(v201) == 0x7FFF)
      {
        v74 = 0;
      }

      else
      {
        v74 = WORD2(v55) - WORD2(v201) + 1;
      }

      v76 = v201 != 0x7FFFFFFF && v55 != 0x7FFFFFFF;
      v77 = v55 - v201;
    }

    v134 = v197 >= (v77 + 1);
    v135 = !v76;
    if (v134)
    {
      v135 = 1;
    }

    v49 = -1;
    if (v200 < v74 || !v135 || v64 >= v74)
    {
      goto LABEL_194;
    }

    v193 = v74;
    if (v204)
    {
      v136 = 1;
    }

    else
    {
      v136 = 2;
    }

    v137 = v64;
    v196 = v56;
LABEL_149:
    v138 = v137 << 32;
    v199 = v137;
    if (v204)
    {
      v139 = v137;
    }

    else
    {
      v139 = 0;
    }

    v140 = (v139 + v201);
    if (v204)
    {
      v138 = 0;
    }

    v142 = objc_msgSend_rangeStartingAtCell_direction_(v11, v59, v201 & 0xFFFF000000000000 | (v138 + v201) & 0xFFFF00000000 | v140, v136);
    v143 = v59;
    v144 = 0;
    v145 = 0;
    while (1)
    {
      v146 = HIDWORD(v142);
      v147 = v142 & 0xFFFF00000000;
      if (v142 == 0x7FFFFFFFLL || v147 == 0x7FFF00000000)
      {
        v148 = v143 & 0xFFFF00000000;
      }

      else
      {
        v148 = v143 & 0xFFFF00000000;
        if (v143 != 0x7FFFFFFF && v148 != 0x7FFF00000000 && WORD2(v142) <= WORD2(v143) && v142 <= v143)
        {
          goto LABEL_174;
        }
      }

      if (v142 != 0x7FFFFFFFLL && v147 == 0x7FFF00000000 && v148 == 0x7FFF00000000)
      {
        if (v143 == 0x7FFFFFFF || v142 > v143)
        {
          goto LABEL_183;
        }
      }

      else if (v142 != 0x7FFFFFFFLL || v147 == 0x7FFF00000000 || v148 == 0x7FFF00000000 || v143 != 0x7FFFFFFF || WORD2(v142) > WORD2(v143))
      {
LABEL_183:
        if (v144)
        {
          v56 = v196;
          if (v145 && v203 < v200)
          {
            if (HIDWORD(v145))
            {
              v160 = MEMORY[0x277D81150];
              v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TNChartFormulaHelper p_addFormulasOfType:rangeList:byRow:toFormulaMap:ofLevel:]");
              v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v162, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v160, v164, v161, v163, 916, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v165, v166);
              v145 = 0xFFFFFFFFLL;
            }

            TSCEASTFunctionElement::appendFunctionElement(v144, 0xAF, v145, 0, v141);
            v154 = objc_alloc(MEMORY[0x277D80C60]);
            v156 = objc_msgSend_initWithNodeArray_(v154, v155, v144);
            TSCEASTNodeArray::freeNodeArray();
            v158 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v157, v156);
            objc_msgSend_addFormula_withFormulaID_(v202, v159, v158, v203++ | (a3 << 32));
          }
        }

        else
        {
          v56 = v196;
        }

        v137 = v199 + 1;
        if (v199 + 1 == v193)
        {
          goto LABEL_194;
        }

        goto LABEL_149;
      }

LABEL_174:
      if (!v144)
      {
        v144 = __C();
      }

      if (a3 == 1 && v205->_createSpanningReferences)
      {
        if (v204)
        {
          v149 = (v143 & 0xFFFF0000FFFFFFFFLL | 0x7FFF00000000);
          LOWORD(v146) = 0x7FFF;
          v150 = v142;
        }

        else
        {
          v149 = (v143 & 0xFFFFFFFF00000000 | 0x7FFFFFFF);
          v150 = 0x7FFFFFFF;
        }
      }

      else
      {
        v150 = v142;
        v149 = v143;
      }

      v151 = ((v146 << 32) | v142 & 0xFFFF000000000000 | v150);
      v152 = sub_275F14DBC(v144, &v221, v151, v149);
      v142 = objc_msgSend_rangeStartingAfterCell_direction_(v11, v153, v143, v136);
      v143 = v59;
      v145 += v152;
      v49 = -3;
    }
  }

  if (v204)
  {
    v61 = v201 == 0x7FFFFFFF || v55 == 0x7FFFFFFF;
    v62 = !v61;
    v63 = v55 - v201;
  }

  else
  {
    v62 = WORD2(v201) != 0x7FFF && WORD2(v55) != 0x7FFF;
    v63 = WORD2(v55) - WORD2(v201);
  }

  if (v62)
  {
    v66 = (v63 + 1);
  }

  else
  {
    v66 = 0;
  }

  v194 = v66;
  v67 = objc_msgSend_groupBy(v56, v59, v60);
  v195 = objc_msgSend_cellRegion(v11, v68, v69);
  v192 = v67;
  if (DataCategoryLevelInFormulaMap_forTable == 255)
  {
    DataCategoryLevelInFormulaMap_forTable = objc_msgSend_p_firstDataCategoryLevelInFormulaMap_forTable_(v205, v70, v202, v221._lower, v221._upper);
    if (DataCategoryLevelInFormulaMap_forTable == 255)
    {
      v71 = objc_msgSend_cellRegionCullingToFirstFoundLevelFrom_inTable_byRows_(TNChartFormulaHelper, v70, v195, v56, v204);

      DataCategoryLevelInFormulaMap_forTable = 255;
      v195 = v71;
    }

    v67 = v192;
  }

  if (v197 < v194)
  {
    goto LABEL_44;
  }

  if (v191)
  {
    v72 = objc_msgSend_numberOfTotalCategoryLabelsWithCalcEngine_inEntity_shouldSkipHiddenData_(v202, v70, v190, v38, v40, shouldSkipHiddenData);
    if (HIDWORD(v72))
    {
      v175 = MEMORY[0x277D81150];
      v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TNChartFormulaHelper p_addFormulasOfType:rangeList:byRow:toFormulaMap:ofLevel:]");
      v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v175, v179, v176, v178, 720, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v180, v181);
      v72 = 0xFFFFFFFFLL;
      v67 = v192;
    }

    if (v197 < v72)
    {
LABEL_44:

      goto LABEL_45;
    }
  }

  else
  {
    v72 = 0;
  }

  if (!v194)
  {
    v127 = 0;
    v125 = 0;
    v49 = -1;
    goto LABEL_193;
  }

  v78 = v72;
  v79 = a3;
  v80 = 0;
  v198 = 0;
  v184 = 0;
  v185 = v79;
  v61 = v79 == 2;
  v188 = v79 & 0xFFFFFFFFFFFFFFFELL;
  v186 = v79 << 32;
  v81 = v191;
  if (!v61)
  {
    v81 = 0;
  }

  v183 = v81;
  v182 = v208;
  v49 = -1;
  do
  {
    if (v204)
    {
      v82 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v70, (v80 + v201));
      objc_msgSend_regionByIntersectingRowIndices_(v195, v83, v82);
    }

    else
    {
      v82 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v70, WORD2(v201) + v80, v182);
      objc_msgSend_regionByIntersectingColumnIndices_(v195, v84, v82);
    }
    v206 = ;

    v219 = 0uLL;
    v220 = 0;
    if (v188 == 2)
    {
      if (!v67)
      {
        goto LABEL_81;
      }

      objc_msgSend_captureCategoryLabelRefsForViewRegion_atLevel_asSpanning_forRows_(v67, v85, v206, DataCategoryLevelInFormulaMap_forTable, v191, v185 == 2);
    }

    else
    {
      if (!v67)
      {
LABEL_81:
        v214 = 0uLL;
        v215 = 0;
        goto LABEL_82;
      }

      objc_msgSend_captureAnyCategoryRefsForViewRegion_atLevel_asSpanning_(v67, v85, v206, DataCategoryLevelInFormulaMap_forTable, 1);
    }

LABEL_82:
    sub_275F28BF4(&v219);
    v219 = v214;
    v220 = v215;
    v215 = 0;
    v214 = 0uLL;
    v222 = &v214;
    sub_275F077D4(&v222);
    v88 = *(&v219 + 1);
    v89 = v219;
    if (v78 && v219 != *(&v219 + 1))
    {
      if (v78 >= (*(&v219 + 1) - v219) >> 3)
      {
        v90 = (*(&v219 + 1) - v219) >> 3;
      }

      else
      {
        v90 = v78;
      }

      sub_275F26510(&v219, v219, (v219 + 8 * v90));
      v78 -= v90;
      v88 = *(&v219 + 1);
      v89 = v219;
    }

    if (v89 == v88)
    {
      v97 = 0;
      v92 = 0;
    }

    else
    {
      v91 = 0;
      v92 = 0;
      do
      {
        v94 = *v89;
        if (!v92)
        {
          v92 = __C();
        }

        TSCEFormulaCreationMagic::categoryRef(&v214, v94, v93);
        TSCEFormulaCreator::operator()();
        if (DataCategoryLevelInFormulaMap_forTable == 0xFF)
        {
          DataCategoryLevelInFormulaMap_forTable = objc_msgSend_groupLevel(v94, v95, v96);
        }

        if (v49 == 0xFF)
        {
          v49 = objc_msgSend_groupLevel(v94, v95, v96);
        }

        ++v89;
        --v91;
      }

      while (v89 != v88);
      v97 = -v91;
    }

    if ((~DataCategoryLevelInFormulaMap_forTable & 0xFD) == 0 && v78 <= v80)
    {
      *&v214 = 0;
      *(&v214 + 1) = &v214;
      v215 = 0x3032000000;
      v216 = sub_275F2484C;
      v217 = sub_275F2485C;
      v218 = 0;
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = sub_275F2659C;
      v210[3] = &unk_27A6A2728;
      v212 = &v214;
      v213 = v204;
      v98 = v56;
      v211 = v98;
      objc_msgSend_enumerateCellRangesUsingBlock_(v206, v99, v210);
      if (objc_msgSend_isValid(*(*(&v214 + 1) + 40), v100, v101))
      {
        v104 = objc_msgSend_translator(v98, v102, v103);
        v106 = objc_msgSend_baseTractRefForViewTractRef_(v104, v105, *(*(&v214 + 1) + 40));

        if (!v183)
        {
          if (v92)
          {
            if (!v106)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v92 = __C();
            if (!v106)
            {
              goto LABEL_112;
            }
          }

          v97 += sub_275F11A20(v92, v106);
          v49 = -3;
          DataCategoryLevelInFormulaMap_forTable = 253;
          goto LABEL_112;
        }

        if (v184)
        {
          if (objc_msgSend_isValid(v106, v107, v108))
          {
            objc_msgSend_rows(v106, v109, v110);
            v208[0] = sub_275F266A0;
            v208[1] = &unk_27A6A2F28;
            v111 = v184;
            v209 = v111;
            TSUIndexSet::enumerateRangesUsingBlock();

            v184 = v111;
          }
        }

        else
        {
          v184 = v106;
        }

LABEL_112:
      }

      _Block_object_dispose(&v214, 8);
    }

    if (v92 && v97 && v203 < v200)
    {
      if (HIDWORD(v97))
      {
        v118 = MEMORY[0x277D81150];
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "[TNChartFormulaHelper p_addFormulasOfType:rangeList:byRow:toFormulaMap:ofLevel:]");
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 823, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
        v97 = 0xFFFFFFFFLL;
      }

      TSCEASTFunctionElement::appendFunctionElement(v92, 0xAF, v97, 0, v87);
      v112 = objc_alloc(MEMORY[0x277D80C60]);
      v114 = objc_msgSend_initWithNodeArray_(v112, v113, v92);
      TSCEASTNodeArray::freeNodeArray();
      v116 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v115, v114);

      objc_msgSend_addFormula_withFormulaID_(v202, v117, v116, v203++ | v186);
      v198 = v116;
    }

    *&v214 = &v219;
    sub_275F077D4(&v214);

    ++v80;
    v67 = v192;
  }

  while (v80 != v194);
  v125 = v184;
  v126 = v183;
  if (!v184)
  {
    v126 = 0;
  }

  v127 = v198;
  if (v126)
  {
    v128 = objc_msgSend_chartFormulaForTractReference_(TNChartFormulaWrapper, v70, v184);
    objc_msgSend_addFormula_withFormulaID_(v202, v129, v128, v203 | 0x200000000);
  }

LABEL_193:

LABEL_194:
  v11 = v207;
  v25 = v187;
LABEL_195:

  return v49;
}

- (id)p_labelsOfType:(unint64_t)a3 formulaMap:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v50 = v6;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartFormulaHelper p_labelsOfType:formulaMap:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
    v45 = 0;
    if (a3 > 5)
    {
      if (a3 > 254)
      {
        if (a3 == 255)
        {
          v45 = @"kTNChartFormulaHub";
        }

        else if (a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaInvalid");
          goto LABEL_31;
        }
      }

      else
      {
        if (a3 == 6)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaCustomPosXErrorBar");
          goto LABEL_31;
        }

        if (a3 == 7)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaCustomNegXErrorBar");
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaCustomPosYErrorBar");
        }

        else
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaCustomNegYErrorBar");
        }

        goto LABEL_31;
      }

      if (!a3)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaChartArea");
        goto LABEL_31;
      }

      if (a3 == 1)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", @"kTNChartFormulaChartData");
LABEL_31:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
        v25 = 0;
        goto LABEL_32;
      }
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v41, v44, 940, 0, "invalid label type: %@", v45);
    goto LABEL_31;
  }

  v49 = objc_msgSend_formulaListForType_(v6, v7, a3);
  v10 = objc_msgSend_chartMediator(self, v8, v9);
  v13 = objc_msgSend_calculationEngine(v10, v11, v12);

  v16 = objc_msgSend_chartMediator(self, v14, v15);
  v56[0] = objc_msgSend_entityUID(v16, v17, v18);
  v56[1] = v19;

  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = objc_msgSend_count(v49, v21, v22);
  v25 = objc_msgSend_initWithCapacity_(v20, v24, v23);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v49;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v52, v57, 16);
  if (v28)
  {
    v29 = *v53;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = objc_msgSend_stringValueForFormulaWithCalcEngine_inOwner_(*(*(&v52 + 1) + 8 * i), v27, v13, v56);
        if (!v32)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TNChartFormulaHelper p_labelsOfType:formulaMap:]");
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 953, 0, "label formula has a missing name");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
          v32 = &stru_2884F65E0;
        }

        objc_msgSend_addObject_(v25, v31, v32);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v52, v57, 16);
    }

    while (v28);
  }

LABEL_32:

  return v25;
}

- (void)p_addStringFormulasOfType:(unint64_t)a3 rangeList:(id)a4 byRow:(BOOL)a5 labels:(id)a6 toFormulaMap:(id)a7
{
  v9 = a5;
  v11 = a4;
  v47 = a6;
  v12 = a7;
  v44 = v11;
  v46 = v12;
  if (objc_msgSend_direction(v12, v13, v14) == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = objc_msgSend_formulaListForType_(v12, v15, a3);
  v18 = MEMORY[0x277CBEB58];
  v43 = v17;
  v20 = objc_msgSend_p_labelsOfType_formulaMap_(self, v19, a3, v12);
  v22 = objc_msgSend_setWithArray_(v18, v21, v20);

  v25 = objc_msgSend_count(v17, v23, v24);
  v28 = objc_msgSend_unionRange(v11, v26, v27);
  if (v16 == a3)
  {
    v31 = 0;
  }

  else
  {
    v31 = v25;
  }

  v48 = 1;
  if (v9)
  {
    if (v28 == 0x7FFFFFFF || v29 == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }

    v32 = v29 - v28;
  }

  else
  {
    if (WORD2(v28) == 0x7FFF || WORD2(v29) == 0x7FFF)
    {
      goto LABEL_24;
    }

    v32 = WORD2(v29) - WORD2(v28);
  }

  v33 = (v32 + 1);
  if (v32 != -1)
  {
    v34 = 0;
    do
    {
      if (v16 != a3 || v31 + v34 >= v25)
      {
        if (v47 && v34 < objc_msgSend_count(v47, v29, v30))
        {
          v35 = objc_msgSend_objectAtIndex_(v47, v29, v34);
          objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v36, v35);
        }

        else
        {
          v37 = objc_msgSend_chartMediator(self, v29, v30);
          v35 = objc_msgSend_untitledLabelOfType_formulaMap_existingLabels_runningIndex_(v37, v38, a3, v46, v22, &v48);

          objc_msgSend_addObject_(v22, v39, v35);
          objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v40, v35);
        }
        v41 = ;
        objc_msgSend_addFormula_withFormulaID_(v46, v42, v41, (v31 + v34) | (a3 << 32));
      }

      ++v34;
    }

    while (v33 != v34);
  }

LABEL_24:
}

- (BOOL)p_addSeriesForRangeList:(id)a3 rowLabelRangeList:(id)a4 columnLabelRangeList:(id)a5 rowLabels:(id)a6 columnLabels:(id)a7 toFormulaMap:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v21 = a8;
  if (!v15)
  {
    goto LABEL_25;
  }

  v22 = objc_msgSend_unionRange(v15, v19, v20);
  v23 = v22 & 0xFFFF00000000;
  if (v22 == 0x7FFFFFFFLL || v23 == 0x7FFF00000000)
  {
    v24 = v19 & 0xFFFF00000000;
  }

  else
  {
    v24 = v19 & 0xFFFF00000000;
    if (v19 != 0x7FFFFFFF && v24 != 0x7FFF00000000 && WORD2(v22) <= WORD2(v19) && v22 <= v19)
    {
      goto LABEL_25;
    }
  }

  if (v22 != 0x7FFFFFFFLL && v23 == 0x7FFF00000000 && v24 == 0x7FFF00000000)
  {
    if (v19 != 0x7FFFFFFF && v22 <= v19)
    {
      goto LABEL_25;
    }
  }

  else if (v22 == 0x7FFFFFFFLL && v23 != 0x7FFF00000000 && v24 != 0x7FFF00000000 && WORD2(v22) <= WORD2(v19) && v19 == 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  if (!v17)
  {
    v43 = objc_msgSend_chartMediator(self, v19, v20);
    v46 = objc_msgSend_calculationEngine(v43, v44, v45);
    v49 = objc_msgSend_chartMediator(self, v47, v48);
    v52 = objc_msgSend_entityUID(v49, v50, v51);
    v54 = objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(v21, v53, 2, v46, v52, v53);

    v15 = 0;
    if (v54)
    {
      v26 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v26 = 0;
    }

    if (!v16)
    {
      goto LABEL_50;
    }

    goto LABEL_26;
  }

  v15 = 0;
LABEL_25:
  v26 = v17;
  if (!v16)
  {
LABEL_50:
    v31 = v18;
    v32 = 0;
    goto LABEL_51;
  }

LABEL_26:
  v27 = objc_msgSend_unionRange(v16, v19, v20);
  v28 = v27 & 0xFFFF00000000;
  if (v27 == 0x7FFFFFFFLL || v28 == 0x7FFF00000000)
  {
    v29 = v19 & 0xFFFF00000000;
  }

  else
  {
    v29 = v19 & 0xFFFF00000000;
    if (v19 != 0x7FFFFFFF && v29 != 0x7FFF00000000 && WORD2(v27) <= WORD2(v19) && v27 <= v19)
    {
      goto LABEL_48;
    }
  }

  if (v27 == 0x7FFFFFFFLL || v28 != 0x7FFF00000000 || v29 != 0x7FFF00000000)
  {
    if (v27 != 0x7FFFFFFFLL || v28 == 0x7FFF00000000 || v29 == 0x7FFF00000000)
    {
      goto LABEL_49;
    }

    if (WORD2(v27) > WORD2(v19) || v19 != 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

LABEL_48:
    v31 = v18;
    v32 = v16;
    goto LABEL_51;
  }

  if (v19 != 0x7FFFFFFF && v27 <= v19)
  {
    goto LABEL_48;
  }

LABEL_49:

  if (v18)
  {
    goto LABEL_50;
  }

  v55 = objc_msgSend_chartMediator(self, v19, v20);
  v58 = objc_msgSend_calculationEngine(v55, v56, v57);
  v61 = objc_msgSend_chartMediator(self, v59, v60);
  v64 = objc_msgSend_entityUID(v61, v62, v63);
  v66 = objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(v21, v65, 3, v58, v64, v65);

  v32 = 0;
  if (v66)
  {
    v31 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v31 = 0;
  }

LABEL_51:
  v33 = objc_msgSend_tableUID(v14, v19, v20);
  DataCategoryLevelInFormulaMap_forTable = objc_msgSend_p_firstDataCategoryLevelInFormulaMap_forTable_(self, v34, v21, v33, v34);
  v38 = objc_msgSend_direction(v21, v36, v37) == 1;
  v40 = objc_msgSend_p_addFormulasOfType_rangeList_byRow_toFormulaMap_(self, v39, 1, v14, v38, v21);
  v42 = v40;
  if (v40 != 255 && (DataCategoryLevelInFormulaMap_forTable == 255 || DataCategoryLevelInFormulaMap_forTable == v40))
  {
    if (v15)
    {
      objc_msgSend_p_addFormulasOfType_rangeList_byRow_toFormulaMap_ofLevel_(self, v41, 2, v15, 1, v21, v40);
    }

    else if (v26)
    {
      objc_msgSend_p_addStringFormulasOfType_rangeList_byRow_labels_toFormulaMap_(self, v41, 2, v14, 1, v26, v21);
    }

    if (v32)
    {
      objc_msgSend_p_addFormulasOfType_rangeList_byRow_toFormulaMap_ofLevel_(self, v41, 3, v32, 0, v21, v42);
    }

    else if (v31)
    {
      objc_msgSend_p_addStringFormulasOfType_rangeList_byRow_labels_toFormulaMap_(self, v41, 3, v14, 0, v31, v21);
    }
  }

  return v42 != 255;
}

- (BOOL)p_extendExistingSeriesWithSeriesRangeList:(id *)a3 rowLabelRangeList:(id *)a4 columnLabelRangeList:(id *)a5 toFormulaMap:(id)a6 withLocale:(id)a7
{
  v211 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v167 = a7;
  v175 = v9;
  v192 = objc_msgSend_direction(v9, v10, v11);
  v174 = 0;
  if (!a3 || !v9 || !v192)
  {
    goto LABEL_120;
  }

  v14 = objc_msgSend_direction(v9, v12, v13);
  v208 = 0;
  v208._lower = objc_msgSend_tableUID(*a3, v15, v16);
  v208._upper = v17;
  v166 = a3;
  v170 = *a3;
  v20 = objc_msgSend_chartMediator(self, v18, v19);
  v193 = objc_msgSend_calculationEngine(v20, v21, v22);

  v25 = objc_msgSend_chartMediator(self, v23, v24);
  v207[0] = objc_msgSend_entityUID(v25, v26, v27);
  v207[1] = v28;

  v29 = MEMORY[0x277D80D40];
  v32 = objc_msgSend_tableUID(v170, v30, v31);
  v191 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v29, v33, v32, v33, v193);
  isCategorized = objc_msgSend_isCategorized(v191, v34, v35);
  v38 = objc_msgSend_tableUID(v191, v36, v37);
  DataCategoryLevelInFormulaMap_forTable = objc_msgSend_p_firstDataCategoryLevelInFormulaMap_forTable_(self, v39, v175, v38, v39);
  v177 = DataCategoryLevelInFormulaMap_forTable - 6;
  if ((DataCategoryLevelInFormulaMap_forTable - 6) < 0xFBu)
  {
    v42 = 1;
  }

  else
  {
    v42 = isCategorized;
  }

  if ((v42 & 1) == 0)
  {
    v182 = 0;
    v174 = 0;
    goto LABEL_119;
  }

  v168 = objc_msgSend_numberOfRanges(v170, v40, v41);
  if (!v168)
  {
    v182 = 0;
    goto LABEL_118;
  }

  v182 = 0;
  v44 = 0;
  if (v14 == 1)
  {
    v45 = 8;
  }

  else
  {
    v45 = 2;
  }

  v172 = 0;
  v173 = v45;
  v174 = 1;
  v169 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  do
  {
    v171 = v44;
    v46 = objc_msgSend_rangeAtIndex_(v170, v43, v44);
    v48 = WORD2(v46);
    v49 = WORD2(v43);
    v181 = v46;
    if (v192 == 1)
    {
      v48 = v46;
      v49 = v43;
    }

    v184 = v48;
    v180 = v49;
    if (v48 <= v49)
    {
      v179 = v43;
      do
      {
        v206._topLeft = v181;
        v206._bottomRight = v179;
        if (DataCategoryLevelInFormulaMap_forTable != 253)
        {
          if (v177 < 0xFBu)
          {
            goto LABEL_92;
          }

          if (v192 == 1)
          {
            v52 = objc_msgSend_rowUIDForRowIndex_(v191, v43, v184);
          }

          else
          {
            v52 = objc_msgSend_columnUIDForColumnIndex_(v191, v43, v184);
          }

          v62 = v52;
          v63 = v53;
          v64 = objc_msgSend_formulaListForType_(v175, v53, 1);
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          obj = v64;
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v200, v210, 16);
          if (v66)
          {
            v187 = *v201;
LABEL_30:
            v190 = 0;
            v186 = v66;
            while (1)
            {
              if (*v201 != v187)
              {
                objc_enumerationMutation(obj);
              }

              v189 = *(*(&v200 + 1) + 8 * v190);
              context = objc_autoreleasePoolPush();
              v68 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v189, v67, v193, v207);
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v69 = v68;
              v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v196, v209, 16);
              if (v72)
              {
                v73 = *v197;
                while (2)
                {
                  for (i = 0; i != v72; ++i)
                  {
                    if (*v197 != v73)
                    {
                      objc_enumerationMutation(v69);
                    }

                    v75 = *(*(&v196 + 1) + 8 * i);
                    v76 = objc_msgSend_tableUID_(v75, v71, v193);
                    if (v76 == v208._lower && v71 == v208._upper)
                    {
                      if (objc_msgSend_isCategoryReference(v75, v71, v77))
                      {
                        v81 = objc_msgSend_categoryReference(v75, v79, v80);
                        v84 = v81;
                        v205.range._topLeft = 0;
                        v205.range._bottomRight = &v205;
                        v205._tableUID._lower = 0x2020000000;
                        LOBYTE(v205._tableUID._upper) = 0;
                        if (v192 == 1)
                        {
                          v85 = objc_msgSend_groupBy(v191, v82, v83);
                          v88 = objc_msgSend_absoluteGroupUid(v84, v86, v87);
                          v90 = objc_msgSend_groupNodeForGroupUid_(v85, v89, v88, v89);

                          LODWORD(v85) = objc_msgSend_groupLevel(v90, v91, v92);
                          if (v85 == objc_msgSend_groupLevel(v84, v93, v94))
                          {
                            v99 = objc_msgSend_absoluteGroupUid(v84, v95, v96) == v62 && v97 == v63;
                            *(*&v205.range._bottomRight + 24) = v99;
                          }

                          else
                          {
                            v113 = objc_msgSend_groupLevel(v84, v95, v96);
                            v195[0] = MEMORY[0x277D85DD0];
                            v195[1] = 3221225472;
                            v195[2] = sub_275F28058;
                            v195[3] = &unk_27A6A2F50;
                            v195[5] = v62;
                            v195[6] = v63;
                            v195[4] = &v205;
                            objc_msgSend_enumerateGroupsAtLevel_withBlock_(v90, v114, v113, v195);
                          }

                          if (*(*&v205.range._bottomRight + 24))
                          {
LABEL_70:
                            v115 = v189;
                            _Block_object_dispose(&v205, 8);

                            goto LABEL_71;
                          }
                        }

                        else
                        {
                          v111 = objc_msgSend_columnUid(v81, v82, v83) == v62 && v110 == v63;
                          v112 = v111;
                          *(*&v205.range._bottomRight + 24) = v112;
                          if (v111)
                          {
                            goto LABEL_70;
                          }
                        }

                        _Block_object_dispose(&v205, 8);
                      }

                      else if (objc_msgSend_isReference(v75, v79, v80))
                      {
                        v100 = MEMORY[0x277D81150];
                        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TNChartFormulaHelper p_extendExistingSeriesWithSeriesRangeList:rowLabelRangeList:columnLabelRangeList:toFormulaMap:withLocale:]");
                        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
                        v106 = objc_msgSend_description(v75, v104, v105);
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v101, v103, 1206, 0, "Expected to extend a category reference but found %@ instead", v106);

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
                      }
                    }
                  }

                  v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v71, &v196, v209, 16);
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }
              }

              v115 = 0;
LABEL_71:

              objc_autoreleasePoolPop(context);
              if (v115)
              {
                break;
              }

              if (++v190 == v186)
              {
                v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v116, &v200, v210, 16);
                if (v66)
                {
                  goto LABEL_30;
                }

                goto LABEL_74;
              }
            }
          }

          else
          {
LABEL_74:
            v115 = 0;
          }

          goto LABEL_88;
        }

        if (v192 == 1)
        {
          v206._topLeft.row = v184;
          v206._bottomRight.row = v184;
          v50 = v184;
          v51 = v184 | 0x3E700000000;
        }

        else
        {
          v206._topLeft.column = v184;
          v206._bottomRight.column = v184;
          v50 = (v184 << 32);
          v51 = *&v50 | 0xF423F;
        }

        v205.range._topLeft = v50;
        v205.range._bottomRight = v51;
        v205._tableUID = v208;
        if (isCategorized)
        {
          v54 = objc_msgSend_translator(v191, v43, v47);
          v55 = objc_alloc(MEMORY[0x277D80C38]);
          v57 = objc_msgSend_initWithRangeRef_(v55, v56, &v205);
          v59 = objc_msgSend_baseTractRefForViewTractRef_(v54, v58, v57);

          if (v59)
          {
            objc_msgSend_boundingRangeRef(v59, v60, v61);
            v205 = __p;
          }

          else
          {
            v205.range = v169;
          }
        }

        if (!TSCERangeRef::isValid(&v205) || !v193)
        {
          v115 = 0;
          goto LABEL_88;
        }

        objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v193, v43, &v205, v207);
        topLeft = __p.range._topLeft;
        v119 = __p.range._topLeft;
        if (*&__p.range._topLeft == *&__p.range._bottomRight)
        {
LABEL_83:
          v115 = 0;
          if (__p.range._topLeft)
          {
            goto LABEL_87;
          }
        }

        else
        {
          while ((*v119 & 0xFFFF00000000) != 0x100000000)
          {
            if (++v119 == *&__p.range._bottomRight)
            {
              goto LABEL_83;
            }
          }

          v115 = objc_msgSend_formulaForID_(v175, v43, *v119 & 0x1FFFFFFFFLL);
          topLeft = __p.range._topLeft;
          if (__p.range._topLeft)
          {
LABEL_87:
            __p.range._bottomRight = topLeft;
            operator delete(topLeft);
          }
        }

LABEL_88:
        if (!v115)
        {
LABEL_92:
          v141 = v182;
          if (!v182)
          {
            v141 = objc_msgSend_rangeListWithTableUID_(TNChartRangeList, v43, &v208);
          }

          v182 = v141;
          objc_msgSend_addRange_coalesceFlags_(v141, v43, *&v206._topLeft, *&v206._bottomRight, v173);
          v174 = 0;
          goto LABEL_111;
        }

        v120 = objc_msgSend_chartMediator(self, v43, v117);
        shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(v120, v121, v122);

        v125 = objc_msgSend_numberOfValuesWithCalcEngine_inChart_shouldSkipHiddenData_(v115, v124, v193, v207, shouldSkipHiddenData);
        if (DataCategoryLevelInFormulaMap_forTable == 253)
        {
          v128 = v125;
          v205.range = v206;
          v205._tableUID = v208;
          v129 = objc_msgSend_chartMediator(self, v126, v127);
          v132 = objc_msgSend_chartInfo(v129, v130, v131);
          v135 = objc_msgSend_chartType(v132, v133, v134);

          TSCERangeCoordinate::asCellRect(&v206);
          if ((HIDWORD(v139) * v139) + v128 > objc_msgSend_maxCellsForAdding(v135, v139, v136))
          {
            goto LABEL_91;
          }

          if (isCategorized)
          {
            v148 = objc_msgSend_translator(v191, v137, v138);
            v149 = objc_alloc(MEMORY[0x277D80C38]);
            v151 = objc_msgSend_initWithRangeRef_(v149, v150, &v205);
            v153 = objc_msgSend_baseTractRefForViewTractRef_(v148, v152, v151);

            if (v153)
            {
              v140 = objc_msgSend_chartFormulaByAppendingTractReference_toFormula_(self, v154, v153, v115);
            }

            else
            {
              v140 = 0;
            }
          }

          else if (TSCERangeRef::isValid(&v205))
          {
            __p = v205;
            v140 = objc_msgSend_chartFormulaByAppendingRangeReference_toFormula_(self, v155, &__p, v115);
          }

          else
          {
LABEL_91:
            v140 = 0;
          }

LABEL_108:
          if (v140)
          {
            v158 = objc_msgSend_mutableFormulaListForType_(v175, v157, 1);
            v160 = objc_msgSend_indexOfObject_(v158, v159, v115);
            objc_msgSend_replaceObjectAtIndex_withObject_(v158, v161, v160, v140);

            v172 = 1;
          }

          goto LABEL_110;
        }

        if (v177 >= 0xFBu)
        {
          v142 = objc_msgSend_groupBy(v191, v126, v127);
          v143 = MEMORY[0x277D80CE0];
          v144 = TSUCellRectFromTSCERangeCoordinate();
          v147 = objc_msgSend_regionFromRange_(v143, v145, v144, v145);
          if (v142)
          {
            objc_msgSend_captureAnyCategoryRefsForViewRegion_atLevel_asSpanning_(v142, v146, v147, DataCategoryLevelInFormulaMap_forTable, 0);
          }

          else
          {
            memset(&v205, 0, 24);
          }

          memset(v194, 0, sizeof(v194));
          sub_275F079B8(v194, *&v205.range._topLeft, *&v205.range._bottomRight, (*&v205.range._bottomRight - *&v205.range._topLeft) >> 3);
          v140 = objc_msgSend_chartFormulaByAppendingCategoryReferences_toFormula_(self, v156, v194, v115);
          __p.range._topLeft = v194;
          sub_275F077D4(&__p);
          __p.range._topLeft = &v205;
          sub_275F077D4(&__p);
          goto LABEL_108;
        }

LABEL_110:

LABEL_111:
        ++v184;
      }

      while (v184 <= v180);
    }

    v44 = v171 + 1;
  }

  while (v171 + 1 != v168);
  if ((v172 & 1) == 0)
  {
    goto LABEL_119;
  }

  v162 = objc_msgSend_chartMediator(self, v43, v44);
  objc_msgSend_repairMissingCategoryLabelsInMap_ignoringNonVisibleLabels_(v162, v163, v175, 1);

  if ((v174 & 1) == 0)
  {
    v164 = v182;
    v174 = 0;
    *v166 = v182;
    goto LABEL_119;
  }

LABEL_118:
  v174 = 1;
LABEL_119:

LABEL_120:
  return v174 & 1;
}

+ (id)cellRegionCullingToFirstFoundLevelFrom:(id)a3 inTable:(id)a4 byRows:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = -1;
  v11 = objc_msgSend_indexesForNonSummaryBodyRows(v8, v9, v10);
  v14 = objc_msgSend_indexesForSummaryRows(v8, v12, v13);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_275F2838C;
  v32[3] = &unk_27A6A2F78;
  v36 = &v37;
  v15 = v11;
  v33 = v15;
  v16 = v14;
  v34 = v16;
  v17 = v8;
  v35 = v17;
  v19 = MEMORY[0x277C91D00](v32);
  if (v5)
  {
    objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v17, v18, v7, 0, 4325376, v19);
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_275F2857C;
    v28[3] = &unk_27A6A2FA0;
    v29 = v17;
    v30 = v7;
    v31 = v19;
    objc_msgSend_enumerateColumnsUsingBlock_(v30, v21, v28);
  }

  v22 = *(v38 + 24);
  if (v22 == 255 || (v22 != 253 ? (objc_msgSend_indexesForSummaryRowsAtGroupLevel_(v17, v20, v22), v23 = objc_claimAutoreleasedReturnValue()) : (v23 = v15), (v25 = v23) == 0))
  {
    v26 = v7;
  }

  else
  {
    v26 = objc_msgSend_regionByIntersectingRowIndices_(v7, v24, v23);
  }

  _Block_object_dispose(&v37, 8);

  return v26;
}

+ (id)chartFormulasForSummaryRegion:(id)a3 inTable:(id)a4
{
  v96[3] = *MEMORY[0x277D85DE8];
  v79 = a3;
  v78 = a4;
  v7 = objc_msgSend_groupBy(v78, v5, v6);
  v80 = v7;
  if (v7)
  {
    objc_msgSend_captureCategoryRefsForViewRegion_atLevel_asSpanning_(v7, v8, v79, 255, 1);
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v94 = 0;
  }

  v9 = __C();
  v83 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v81 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  v84 = objc_alloc_init(MEMORY[0x277D80C90]);
  v14 = v92;
  v15 = v93;
  if (v92 == v93)
  {
    goto LABEL_11;
  }

  v82 = v9;
  v16 = 0;
  do
  {
    v17 = *v14;
    v18 = objc_alloc(MEMORY[0x277D80C30]);
    v90 = objc_msgSend_groupByUid(v17, v19, v20);
    v91 = v21;
    v88 = objc_msgSend_absoluteGroupUid(v17, v21, v22);
    v89 = v23;
    v25 = objc_msgSend_groupLevel(v17, v23, v24);
    v27 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v18, v26, &v90, &v88, MEMORY[0x277D80D68], 7, v25);
    TSCEFormulaCreationMagic::categoryRef(&v87, v17, v28);
    TSCEFormulaCreator::operator()();
    v29 = __C();
    TSCEFormulaCreationMagic::categoryRef(&v86, v27, v30);
    TSCEFormulaCreator::operator()();
    TSCEASTFunctionElement::appendFunctionElement(v29, 0xAF, 1, 0, v31);
    v32 = objc_alloc(MEMORY[0x277D80C60]);
    v34 = objc_msgSend_initWithNodeArray_(v32, v33, v29);
    v36 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v35, v34);
    objc_msgSend_addObject_(v83, v37, v36);

    TSCEASTNodeArray::freeNodeArray();
    v40 = objc_msgSend_columnUid(v17, v38, v39);
    if ((objc_msgSend_containsUuid_(v84, v41, v40, v41) & 1) == 0)
    {
      v42 = objc_alloc(MEMORY[0x277D80C30]);
      v90 = objc_msgSend_groupByUid(v17, v43, v44);
      v91 = v45;
      v88 = objc_msgSend_topLevelGroupUid(v80, v45, v46);
      v89 = v47;
      v85[0] = objc_msgSend_columnUid(v17, v47, v48);
      v85[1] = v49;
      v51 = objc_msgSend_groupLevel(v17, v49, v50);
      v53 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v42, v52, &v90, &v88, v85, 12, v51);
      TSCEFormulaCreationMagic::categoryRef(&v90, v53, v54);
      v55 = __C();
      TSCEFormulaCreator::operator()();
      TSCEASTFunctionElement::appendFunctionElement(v55, 0xAF, 1, 0, v56);
      v57 = objc_alloc(MEMORY[0x277D80C60]);
      v59 = objc_msgSend_initWithNodeArray_(v57, v58, v55);
      v61 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v60, v59);
      objc_msgSend_addObject_(v81, v62, v61);

      TSCEASTNodeArray::freeNodeArray();
      v65 = objc_msgSend_columnUid(v17, v63, v64);
      objc_msgSend_addUUID_(v84, v66, v65, v66);
    }

    ++v14;
    --v16;
  }

  while (v14 != v15);
  if (!v16)
  {
LABEL_11:
    v76 = &unk_2884FDAF0;
  }

  else
  {
    TSCEASTFunctionElement::appendFunctionElement(v82, 0xAF, -v16, 0, v67);
    v68 = objc_alloc(MEMORY[0x277D80C60]);
    v70 = objc_msgSend_initWithNodeArray_(v68, v69, v82);
    TSCEASTNodeArray::freeNodeArray();
    v72 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v71, v70);
    v95 = v72;
    v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v73, &v95, 1);
    v96[0] = v74;
    v96[1] = v81;
    v96[2] = v83;
    v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, v96, 3);
  }

  v90 = &v92;
  sub_275F077D4(&v90);

  return v76;
}

@end