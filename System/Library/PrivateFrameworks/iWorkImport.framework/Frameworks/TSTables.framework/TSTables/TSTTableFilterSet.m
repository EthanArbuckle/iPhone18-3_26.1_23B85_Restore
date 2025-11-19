@interface TSTTableFilterSet
- (BOOL)containsFilterRulesInUIDForm;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_thresholdComparisonMatchesFilter:(int64_t)a3 withPredicateType:(unsigned __int8)a4;
- (BOOL)preventsRowInsertion;
- (BOOL)rowIsShown:(unsigned int)a3 withHiddenStateExtent:(id)a4 withCalcEngine:(id)a5;
- (TSTTableFilterSet)initWithFilterRules:(id)a3 type:(int)a4 context:(id)a5;
- (TSTTableFilterSet)initWithNotBlankColumnGroupsWithContext:(id)a3 withPivotTable:(id)a4;
- (TSTTableFilterSet)initWithNotBlankRowGroupsWithContext:(id)a3 withPivotTable:(id)a4;
- (id).cxx_construct;
- (id)absoluteRuleIndicesForColumn:(TSUModelColumnIndex)a3 inTable:(id)a4;
- (id)baseColumnIndicesForRulesInTable:(id)a3;
- (id)copyByRewritingFilterRulesToGeometricFormWithContext:(id)a3 withTableInfo:(id)a4;
- (id)copyByRewritingFilterRulesToUidFormWithContext:(id)a3 withTableInfo:(id)a4;
- (id)copyByRewritingFilterRulesWithContext:(id)a3 fromTableModel:(id)a4 toTableModel:(id)a5;
- (id)copyWithContext:(id)a3;
- (id)downgradeFilterSetForBackwardCompatWithLocale:(id)a3;
- (id)filterAtIndex:(unint64_t)a3 inTable:(id)a4;
- (id)filterIndicesForBaseColumn:(TSUModelColumnIndex)a3 inTable:(id)a4;
- (id)p_downgradedFilterRuleForListItem:(id)a3 fromPredicate:(id)a4;
- (id)removeRulesWithAbsoluteIndices:(id)a3;
- (id)ruleAtAbsoluteIndex:(unint64_t)a3;
- (id)ruleInFilter:(unint64_t)a3 atIndex:(unint64_t)a4;
- (id)viewColumnIndicesForRulesInTable:(id)a3;
- (unint64_t)firstFilterIndexForBaseColumn:(TSUModelColumnIndex)a3 inTable:(id)a4;
- (unint64_t)hash;
- (unint64_t)numberOfRulesInFilter:(unint64_t)a3;
- (unint64_t)ruleIndexInFilter:(unint64_t)a3 matchingCell:(id)a4;
- (void)addRules:(id)a3 inFilter:(unint64_t)a4;
- (void)enumerateFilterIndicesInTable:(id)a3 usingBlock:(id)a4;
- (void)enumerateFiltersForColumn:(TSUModelColumnIndex)a3 withTable:(id)a4 usingBlock:(id)a5;
- (void)enumerateFiltersInTable:(id)a3 usingBlock:(id)a4;
- (void)enumerateRulesInFilterIndex:(unint64_t)a3 usingBlock:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_addRules:(id)a3 atRuleIndices:(id)a4 inFilter:(unint64_t)a5 isNew:(BOOL)a6;
- (void)removeRulesForBaseColumnIndices:(id)a3 withTableInfo:(id)a4;
- (void)removeRulesWithIndices:(id)a3 inFilter:(unint64_t)a4;
- (void)replaceRule:(id)a3 atRuleIndex:(unint64_t)a4 inFilter:(unint64_t)a5;
- (void)replaceRuleAtAbsoluteIndex:(unint64_t)a3 withRule:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTTableFilterSet

- (TSTTableFilterSet)initWithFilterRules:(id)a3 type:(int)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = TSTTableFilterSet;
  v11 = [(TSTTableFilterSet *)&v30 initWithContext:v10];
  v12 = v11;
  if (v11)
  {
    v11->_type = a4;
    objc_storeStrong(&v11->_rules, a3);
    v12->_needsFormulaRewriteForImport = 0;
    rules = v12->_rules;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_221433BD4;
    v28[3] = &unk_27845DB98;
    v14 = v12;
    v29 = v14;
    objc_msgSend_enumerateObjectsUsingBlock_(rules, v15, v28, v16, v17);
    v27 = objc_msgSend_count(v12->_rules, v18, v19, v20, v21);
    sub_2211531C0(&v14->_filterOffsets.__begin_, &v27);
    v14->_isEnabled = objc_msgSend_count(v12->_rules, v22, v23, v24, v25) != 0;
  }

  return v12;
}

- (TSTTableFilterSet)initWithNotBlankColumnGroupsWithContext:(id)a3 withPivotTable:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25[0] = 0;
  v25[1] = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  v25[2] = v12;
  v13 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(TSTFormulaPredicate, v12, 51, v25, 0);
  v14 = [TSTTableFilterRule alloc];
  v18 = objc_msgSend_initWithFormulaPredicate_(v14, v15, v13, v16, v17);
  v26[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v26, 1, v20);
  v23 = objc_msgSend_initWithFilterRules_type_context_(self, v22, v21, 0, v6);

  return v23;
}

- (TSTTableFilterSet)initWithNotBlankRowGroupsWithContext:(id)a3 withPivotTable:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25[0] = 0;
  v25[1] = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  v25[2] = v12;
  v13 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(TSTFormulaPredicate, v12, 50, v25, 0);
  v14 = [TSTTableFilterRule alloc];
  v18 = objc_msgSend_initWithFormulaPredicate_(v14, v15, v13, v16, v17);
  v26[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v26, 1, v20);
  v23 = objc_msgSend_initWithFilterRules_type_context_(self, v22, v21, 0, v6);

  return v23;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v8 = objc_msgSend_initWithArray_copyItems_(v5, v6, self->_rules, 1, v7);
  v9 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithFilterRules_type_context_(v9, v10, v8, self->_type, v4);
  objc_msgSend_setIsEnabled_(v11, v12, self->_isEnabled, v13, v14);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v11, v15, self->_needsFormulaRewriteForImport, v16, v17);
  if (v11 != self)
  {
    sub_22128026C(&v11->_filterOffsets.__begin_, self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  v11->_downgradedForPrePivot = self->_downgradedForPrePivot;

  return v11;
}

- (id)copyByRewritingFilterRulesToUidFormWithContext:(id)a3 withTableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_count(self->_rules, v8, v9, v10, v11);
  v19 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, v12, v14, v15);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v21 = objc_msgSend_objectAtIndex_(self->_rules, v16, i, v17, v18);
      v25 = objc_msgSend_copyByRewritingToUidFormWithTableInfo_(v21, v22, v7, v23, v24);
      objc_msgSend_addObject_(v19, v26, v25, v27, v28);
    }
  }

  v29 = objc_alloc(objc_opt_class());
  v31 = objc_msgSend_initWithFilterRules_type_context_(v29, v30, v19, self->_type, v6);
  objc_msgSend_setIsEnabled_(v31, v32, self->_isEnabled, v33, v34);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v31, v35, self->_needsFormulaRewriteForImport, v36, v37);
  if (v31 != self)
  {
    sub_22128026C(&v31->_filterOffsets.__begin_, self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  return v31;
}

- (id)copyByRewritingFilterRulesToGeometricFormWithContext:(id)a3 withTableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_count(self->_rules, v8, v9, v10, v11);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, v12, v14, v15);
  v20 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v22 = objc_msgSend_objectAtIndex_(self->_rules, v17, i, v18, v19);
      v47 = 0;
      v28 = objc_msgSend_copyByRewritingToGeometricFormWithTableInfo_containsBadRef_(v22, v23, v7, &v47, v24);
      if (v47 == 1)
      {
        objc_msgSend_addIndex_(v20, v25, i, v26, v27);
      }

      objc_msgSend_addObject_(v16, v25, v28, v26, v27);
    }
  }

  v29 = objc_alloc(objc_opt_class());
  v31 = objc_msgSend_initWithFilterRules_type_context_(v29, v30, v16, self->_type, v6);
  objc_msgSend_setIsEnabled_(v31, v32, self->_isEnabled, v33, v34);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v31, v35, self->_needsFormulaRewriteForImport, v36, v37);
  if (v31 != self)
  {
    sub_22128026C(&v31->_filterOffsets.__begin_, self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  if (objc_msgSend_count(v20, v38, v39, v40, v41))
  {
    v45 = objc_msgSend_removeRulesWithAbsoluteIndices_(v31, v42, v20, v43, v44);
  }

  return v31;
}

- (id)copyByRewritingFilterRulesWithContext:(id)a3 fromTableModel:(id)a4 toTableModel:(id)a5
{
  v57 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_count(self->_rules, v10, v11, v12, v13);
  v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v15, v14, v16, v17);
  v58 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v23 = objc_msgSend_objectAtIndex_(self->_rules, v19, i, v20, v21, v57);
      v30 = objc_msgSend_copyByRewritingFromTableModel_toTableModel_(v23, v24, v8, v9, v25);
      if (v30)
      {
        objc_msgSend_addObject_(v18, v26, v30, v28, v29);
      }

      else
      {
        v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27, v28, v29);
        objc_msgSend_addObject_(v18, v32, v31, v33, v34);

        objc_msgSend_addIndex_(v58, v35, i, v36, v37);
      }
    }
  }

  v38 = v57;
  v39 = objc_alloc(objc_opt_class());
  v41 = objc_msgSend_initWithFilterRules_type_context_(v39, v40, v18, self->_type, v57);
  objc_msgSend_setIsEnabled_(v41, v42, self->_isEnabled, v43, v44);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v41, v45, self->_needsFormulaRewriteForImport, v46, v47);
  if (v41 != self)
  {
    sub_22128026C(&v41->_filterOffsets.__begin_, self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  if (objc_msgSend_count(v58, v48, v49, v50, v51, v57))
  {
    v55 = objc_msgSend_removeRulesWithAbsoluteIndices_(v41, v52, v58, v53, v54);
  }

  return v41;
}

- (id)p_downgradedFilterRuleForListItem:(id)a3 fromPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_predArg0(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_copy(v12, v13, v14, v15, v16);

  if (v17)
  {
    objc_msgSend_crossTableRef(v17, v18, v19, v20, v21);
  }

  else
  {
    v141[0] = 0;
    v141[1] = 0;
    v142 = 0;
  }

  v142 = *(objc_msgSend_relativeCellRef(v17, v18, v19, v20, v21) + 4) << 32;
  v22 = [TSTFormulaPredArg alloc];
  v26 = objc_msgSend_initWithCrossTableRef_(v22, v23, v141, v24, v25);

  v31 = objc_msgSend_predicateType(v7, v27, v28, v29, v30);
  v36 = objc_msgSend_dataType(v6, v32, v33, v34, v35);
  v41 = 0;
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      if (v31 == 53)
      {
        v52 = 36;
      }

      else
      {
        v52 = 37;
      }

      v69 = objc_msgSend_string(v6, v37, v38, v39, v40);
      if (v69)
      {
        v74 = v69;
        v75 = objc_msgSend_length(v69, v70, v71, v72, v73);
      }

      else
      {
        v74 = &stru_2834BADA0;
        v75 = objc_msgSend_length(&stru_2834BADA0, v70, v71, v72, v73);
      }

      v76 = v75;
      v77 = [TSTFormulaPredArg alloc];
      v51 = objc_msgSend_initWithString_(v77, v78, v74, v79, v80);

      if (!v76)
      {
        if (v31 == 53)
        {
          v81 = 34;
        }

        else
        {
          v81 = 35;
        }

        v82 = [TSTFormulaPredicate alloc];
        v139 = objc_msgSend_forConditionalStyle(v7, v83, v84, v85, v86);
        v88 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v82, v87, v81, v26, 0, 0, 0, 0, v139);
        v89 = [TSTTableFilterRule alloc];
        v93 = objc_msgSend_initWithFormulaPredicate_(v89, v90, v88, v91, v92);
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (v36 != 5)
    {
      if (v36 != 6)
      {
        goto LABEL_45;
      }

      if (v31 == 53)
      {
        v52 = 36;
      }

      else
      {
        v52 = 37;
      }

      v53 = objc_msgSend_objectLocale(self, v37, v38, v39, v40);
      v47 = objc_msgSend_trueString(v53, v54, v55, v56, v57);

      v58 = [TSTFormulaPredArg alloc];
      v51 = objc_msgSend_initWithString_(v58, v59, v47, v60, v61);
      goto LABEL_17;
    }

    if (v31 == 53)
    {
      v52 = 38;
    }

    else
    {
      v52 = 39;
    }

    v104 = [TSTFormulaPredArg alloc];
    objc_msgSend_durationValue(v6, v105, v106, v107, v108);
    v110 = v109;
    v115 = objc_msgSend_durationUnits(v6, v111, v112, v113, v114);
    v103 = objc_msgSend_initWithDuration_units_(v104, v116, v115, v117, v118, v110);
  }

  else
  {
    if (!v36)
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTTableFilterSet p_downgradedFilterRuleForListItem:fromPredicate:]", v39, v40);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v63, v67, 253, 0, "Invalid Predicate Arg Data for list item");
      goto LABEL_43;
    }

    if (v36 != 1)
    {
      if (v36 != 2)
      {
        goto LABEL_45;
      }

      if (v31 == 53)
      {
        v42 = [TSTFormulaPredArg alloc];
        v47 = objc_msgSend_date(v6, v43, v44, v45, v46);
        v51 = objc_msgSend_initWithDate_(v42, v48, v47, v49, v50);
        v52 = 20;
LABEL_17:

        goto LABEL_39;
      }

      v129 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTTableFilterSet p_downgradedFilterRuleForListItem:fromPredicate:]", v39, v40);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v131, v132);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v133, v63, v67, 224, 0, "Don't have a TSTFormulaPredicateTypeDateIsNotTheDate predicate type, but need one.");
LABEL_43:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135, v136, v137);
      goto LABEL_44;
    }

    if (v31 == 53)
    {
      v52 = 5;
    }

    else
    {
      v52 = 6;
    }

    v94 = [TSTFormulaPredArg alloc];
    objc_msgSend_doubleValue(v6, v95, v96, v97, v98);
    v103 = objc_msgSend_initWithDouble_(v94, v99, v100, v101, v102);
  }

  v51 = v103;
LABEL_39:
  if (v51)
  {
    v119 = [TSTFormulaPredicate alloc];
    v140 = objc_msgSend_forConditionalStyle(v7, v120, v121, v122, v123);
    v88 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v119, v124, v52, v26, v51, 0, 0, 0, v140);
    v125 = [TSTTableFilterRule alloc];
    v93 = objc_msgSend_initWithFormulaPredicate_(v125, v126, v88, v127, v128);
LABEL_41:
    v41 = v93;

    goto LABEL_45;
  }

LABEL_44:
  v41 = 0;
LABEL_45:

  return v41;
}

- (id)downgradeFilterSetForBackwardCompatWithLocale:(id)a3
{
  v264 = *MEMORY[0x277D85DE8];
  v228 = a3;
  v8 = objc_msgSend_filterSetType(self, v4, v5, v6, v7);
  v230 = objc_msgSend_filterCount(self, v9, v10, v11, v12);
  v17 = objc_msgSend_count(self->_rules, v13, v14, v15, v16);
  v21 = v17;
  v238 = self;
  v227 = v8;
  v22 = 0;
  if (!v17)
  {
    v72 = 0;
    v73 = 0;
    v74 = 1;
    goto LABEL_31;
  }

  v234 = 0;
  v236 = v17;
  v231 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  obj = 1;
  do
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v18, v25, v19, v20);
    v31 = objc_msgSend_predicate(v26, v27, v28, v29, v30);
    if ((objc_msgSend_backwardCompatiblePrePivot(v31, v32, v33, v34, v35) & 1) == 0 && (objc_msgSend_canDowngradeForPrePivotFormat(v31, v36, v37, v38, v39) & 1) == 0)
    {
LABEL_29:

      obj = 0;
      self = v238;
      if (v23)
      {
        goto LABEL_26;
      }

LABEL_30:
      v72 = v234;
      v73 = v231;
      v74 = obj;
      goto LABEL_31;
    }

    if (objc_msgSend_needsThreshold(v26, v36, v37, v38, v39))
    {
      if (++v22 > 8)
      {
        goto LABEL_29;
      }
    }

    else if (objc_msgSend_predicateType(v31, v40, v41, v42, v43) == 53)
    {
      v48 = objc_msgSend_dataList1(v31, v44, v45, v46, v47);
      v53 = objc_msgSend_count(v48, v49, v50, v51, v52);

      v234 += v53;
      v23 = 1;
    }

    else if (objc_msgSend_predicateType(v31, v44, v45, v46, v47) == 54)
    {
      v58 = objc_msgSend_dataList1(v31, v54, v55, v56, v57);
      v229 = objc_msgSend_count(v58, v59, v60, v61, v62);
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v63 = v58;
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v255, v263, 16);
      if (v69)
      {
        v70 = *v256;
        while (2)
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v256 != v70)
            {
              objc_enumerationMutation(v63);
            }

            if (objc_msgSend_dataType(*(*(&v255 + 1) + 8 * i), v65, v66, v67, v68) == 2)
            {
              obj = 0;
              goto LABEL_22;
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v255, v263, 16);
          if (v69)
          {
            continue;
          }

          break;
        }

LABEL_22:
        v21 = v236;
      }

      v234 += v229;
      obj &= v230 >= v21;
      v24 = 1;
    }

    else
    {
      ++v231;
    }

    ++v25;
    v21 = v236;
    self = v238;
  }

  while (v25 != v236);
  if ((v23 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v72 = v234;
  v73 = v231;
  v74 = obj;
  if (v24)
  {
    v75 = 0;
    goto LABEL_109;
  }

LABEL_31:
  v75 = 0;
  if ((v72 + v73 + v22) > 8 || (v74 & 1) == 0)
  {
    goto LABEL_109;
  }

  v76 = objc_opt_new();
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  obja = self->_rules;
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v77, &v251, v262, 16);
  v83 = 0;
  v84 = 0;
  if (!v78)
  {
    v164 = 1;
    goto LABEL_81;
  }

  v237 = *v252;
  while (2)
  {
    v235 = v78;
    v85 = 0;
    while (2)
    {
      if (*v252 != v237)
      {
        objc_enumerationMutation(obja);
      }

      v86 = *(*(&v251 + 1) + 8 * v85);
      v87 = objc_msgSend_predicate(v86, v79, v80, v81, v82);
      if (objc_msgSend_canDowngradeForPrePivotFormat(v87, v88, v89, v90, v91))
      {
        v96 = objc_msgSend_predicateType(v87, v92, v93, v94, v95);
        if ((v96 - 53) > 1u)
        {
          if ((v96 - 57) <= 1u)
          {
            v117 = objc_msgSend_predicate(v86, v97, v98, v99, v100);
            v109 = objc_msgSend_downgradeForPrePivotFormatForLocale_(v117, v118, v228, v119, v120);

            v121 = [TSTTableFilterRule alloc];
            v125 = objc_msgSend_initWithFormulaPredicate_(v121, v122, v109, v123, v124);
            objc_msgSend_addObject_(v76, v126, v125, v127, v128);

            goto LABEL_73;
          }

          v153 = MEMORY[0x277D81150];
          v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v99, v100);
          v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v156, v157);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v159, v154, v158, 423, 0, "Unexpected predicate type during downgrade!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163);
        }

        else
        {
          v101 = v227;
          if (v96 == 53 && !v227)
          {
            if (v230 != 1)
            {
              v227 = 0;
              goto LABEL_79;
            }

            v227 = 1;
            if (!v84)
            {
LABEL_64:
              v84 = objc_opt_new();
            }
          }

          else
          {
            v103 = v96 == 54 && v227;
            if (v96 == 54 && v227)
            {
              v101 = v230 != 1;
            }

            v227 = v101;
            if (v103 && v230 != 1)
            {
              v227 = v230 != 1;
LABEL_79:

              v164 = 0;
              goto LABEL_81;
            }

            if (!v84)
            {
              goto LABEL_64;
            }
          }

          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          v109 = objc_msgSend_dataList1(v87, v97, v98, v99, v100);
          v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v140, &v247, v261, 16);
          if (v143)
          {
            v144 = *v248;
            while (2)
            {
              for (j = 0; j != v143; ++j)
              {
                if (*v248 != v144)
                {
                  objc_enumerationMutation(v109);
                }

                v149 = objc_msgSend_p_downgradedFilterRuleForListItem_fromPredicate_(v238, v141, *(*(&v247 + 1) + 8 * j), v87, v142);
                if (!v149)
                {
                  v165 = MEMORY[0x277D81150];
                  v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v147, v148);
                  v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v168, v169);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v171, v166, v170, 407, 0, "invalid nil value for '%{public}s'", "newRule");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v172, v173, v174, v175);
                  goto LABEL_79;
                }

                objc_msgSend_addObject_(v84, v146, v149, v147, v148);
                objc_msgSend_addObject_(v76, v150, v149, v151, v152);
              }

              v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v141, &v247, v261, 16);
              if (v143)
              {
                continue;
              }

              break;
            }
          }

LABEL_73:
        }
      }

      else
      {
        if (objc_msgSend_backwardCompatiblePrePivot(v87, v92, v93, v94, v95))
        {
          v109 = objc_msgSend_copy(v86, v105, v106, v107, v108);
          if (objc_msgSend_needsThreshold(v86, v110, v111, v112, v113))
          {
            if (!v83)
            {
              v83 = objc_opt_new();
            }

            objc_msgSend_addObject_(v83, v114, v109, v115, v116);
          }

          objc_msgSend_addObject_(v76, v114, v109, v115, v116);
          goto LABEL_73;
        }

        v129 = MEMORY[0x277D81150];
        v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v107, v108);
        v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v132, v133);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v135, v130, v134, 438, 0, "Unexpected predicate type during downgrade!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137, v138, v139);
      }

      if (++v85 != v235)
      {
        continue;
      }

      break;
    }

    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v79, &v251, v262, 16);
    v164 = 1;
    if (v78)
    {
      continue;
    }

    break;
  }

LABEL_81:

  if (objc_msgSend_count(v76, v176, v177, v178, v179) < 9)
  {
    v180 = v164;
  }

  else
  {
    v180 = 0;
  }

  if (v180)
  {
    v181 = objc_opt_new();
    if (objc_msgSend_count(v76, v182, v183, v184, v185) >= 9 && objc_msgSend_count(v83, v186, v187, v188, v189))
    {
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v190 = v83;
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v190, v191, &v243, v260, 16);
      if (v195)
      {
        v196 = *v244;
        do
        {
          for (k = 0; k != v195; ++k)
          {
            if (*v244 != v196)
            {
              objc_enumerationMutation(v190);
            }

            objc_msgSend_addObject_(v181, v192, *(*(&v243 + 1) + 8 * k), v193, v194);
          }

          v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v190, v192, &v243, v260, 16);
        }

        while (v195);
      }

      v198 = 1;
    }

    else
    {
      v198 = 0;
    }

    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v199 = v76;
    v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v200, &v239, v259, 16);
    if (v204)
    {
      v205 = *v240;
      do
      {
        for (m = 0; m != v204; ++m)
        {
          if (*v240 != v205)
          {
            objc_enumerationMutation(v199);
          }

          v207 = *(*(&v239 + 1) + 8 * m);
          if (!v198 || (objc_msgSend_containsObject_(v83, v201, *(*(&v239 + 1) + 8 * m), v202, v203) & 1) == 0)
          {
            objc_msgSend_addObject_(v181, v201, v207, v202, v203);
          }
        }

        v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v201, &v239, v259, 16);
      }

      while (v204);
    }

    v208 = [TSTTableFilterSet alloc];
    v213 = objc_msgSend_context(v238, v209, v210, v211, v212);
    v75 = objc_msgSend_initWithFilterRules_type_context_(v208, v214, v181, v227, v213);

    isEnabled = objc_msgSend_isEnabled(v238, v215, v216, v217, v218);
    objc_msgSend_setIsEnabled_(v75, v220, isEnabled, v221, v222);
    objc_msgSend_setDowngradedForPrePivot_(v75, v223, 1, v224, v225);
  }

  else
  {
    v75 = 0;
  }

LABEL_109:

  return v75;
}

- (BOOL)containsFilterRulesInUIDForm
{
  v6 = objc_msgSend_count(self->_rules, a2, v2, v3, v4);
  if (v6)
  {
    v10 = v6;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = objc_msgSend_objectAtIndex_(self->_rules, v7, v11, v8, v9);
      v18 = objc_msgSend_formula(v13, v14, v15, v16, v17);
      v23 = objc_msgSend_containsUidReferences(v18, v19, v20, v21, v22);

      if (v23)
      {
        break;
      }

      v12 = ++v11 < v10;
    }

    while (v10 != v11);
  }

  else
  {
    return 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5 && (type = self->_type, type == objc_msgSend_filterSetType(v5, v6, v7, v8, v9)) && (isEnabled = self->_isEnabled, isEnabled == objc_msgSend_isEnabled(v10, v12, v13, v14, v15)) && (needsFormulaRewriteForImport = self->_needsFormulaRewriteForImport, needsFormulaRewriteForImport == objc_msgSend_needsFormulaRewriteForImport(v10, v17, v18, v19, v20)) && (begin = self->_filterOffsets.__begin_, v23 = (self->_filterOffsets.__end_ - begin), v24 = v10[11], v23 == (v10[12] - v24)) && !memcmp(begin, v24, v23) && (v29 = objc_msgSend_count(self->_rules, v25, v26, v27, v28), v29 == objc_msgSend_ruleCount(v10, v30, v31, v32, v33)))
  {
    if (v29)
    {
      v37 = 0;
      v38 = v29 - 1;
      do
      {
        v39 = objc_msgSend_objectAtIndex_(self->_rules, v34, v37, v35, v36);
        v43 = objc_msgSend_ruleAtAbsoluteIndex_(v10, v40, v37, v41, v42);
        isEqual = objc_msgSend_isEqual_(v39, v44, v43, v45, v46);

        if (isEqual)
        {
          v48 = v38 == v37;
        }

        else
        {
          v48 = 1;
        }

        ++v37;
      }

      while (!v48);
    }

    else
    {
      LOBYTE(isEqual) = 1;
    }
  }

  else
  {
    LOBYTE(isEqual) = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_count(self->_rules, v3, v4, v5, v6);
  return TSUHashWithSeed();
}

- (BOOL)p_thresholdComparisonMatchesFilter:(int64_t)a3 withPredicateType:(unsigned __int8)a4
{
  if (a4 > 45)
  {
    if (a4 <= 47)
    {
      if (a4 != 46)
      {
        return a3 == -1;
      }

      return a3 == 1;
    }

    if (a4 != 48)
    {
      if (a4 != 49)
      {
        goto LABEL_11;
      }

LABEL_14:
      v18 = (a3 + 1) >= 2;
      return !v18;
    }
  }

  else
  {
    if (a4 <= 29)
    {
      if (a4 != 11)
      {
        if (a4 != 12)
        {
          goto LABEL_11;
        }

        return a3 == -1;
      }

      return a3 == 1;
    }

    if (a4 != 30)
    {
      if (a4 != 31)
      {
LABEL_11:
        v6 = MEMORY[0x277D81150];
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet p_thresholdComparisonMatchesFilter:withPredicateType:]", a4, v4);
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v9, v10);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 582, 0, "Unexpected predicate type found when calculating threshold");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
        return 0;
      }

      goto LABEL_14;
    }
  }

  v18 = a3 >= 2;
  return !v18;
}

- (BOOL)rowIsShown:(unsigned int)a3 withHiddenStateExtent:(id)a4 withCalcEngine:(id)a5
{
  v7 = a4;
  v202 = a5;
  if (self->_isEnabled)
  {
    v199 = v7;
    v211[0] = objc_msgSend_hiddenStateExtentUid(v7, v8, v9, v10, v11);
    v211[1] = v12;
    v16 = objc_msgSend_tableModel(v7, v12, v13, v14, v15);
    type = self->_type;
    v203 = v16;
    v22 = objc_msgSend_filterCount(self, v18, v19, v20, v21);
    if (v22)
    {
      v26 = 0;
      v27 = type == 0;
      v195 = v22;
      v28 = 1;
      while (1)
      {
        begin = self->_filterOffsets.__begin_;
        v198 = v26 + 1;
        v204 = begin[v26 + 1];
        if (!self->_type && !v27)
        {
          break;
        }

        v30 = begin[v26];
        if (v30 < v204)
        {
          v200 = v27;
          while (1)
          {
            v31 = objc_msgSend_ruleAtAbsoluteIndex_(self, v23, v30, v24, v25);
            if ((objc_msgSend_needsThreshold(v31, v32, v33, v34, v35) & 1) == 0)
            {
              v54 = objc_msgSend_matchesRow_withFormulaTableUID_withCalculationEngine_(v31, v36, a3, v211, v202);
              goto LABEL_53;
            }

            if (!objc_msgSend_isUniquesOrDuplicates(v31, v36, v37, v38, v39))
            {
              break;
            }

            v43 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v31, v40, v203, v41, v42);
            v209 = 0u;
            v210 = 0u;
            v48 = objc_msgSend_columnRowUIDMap(v203, v44, v45, v46, v47);
            v52 = v48;
            v53 = a3 | (v43 << 32);
            if (v48)
            {
              objc_msgSend_cellUIDForCellID_(v48, v49, v53, v50, v51);
            }

            else
            {
              v209 = 0u;
              v210 = 0u;
            }

            v208 = 0;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v203, v97, &v208, v53, 0);
            v58 = v208;
            if (!RichTextAttributesIfPlainText)
            {
              v103 = objc_msgSend_documentLocale(v202, v99, v100, v101, v102);
              v107 = objc_msgSend_asStringWithLocale_(v58, v104, v103, v105, v106);

              if (objc_msgSend_length(v107, v108, v109, v110, v111))
              {
                v116 = objc_msgSend_predicate(v31, v112, v113, v114, v115);
                v121 = objc_msgSend_predicateType(v116, v117, v118, v119, v120);

                objc_msgSend_uniqueValuesLock(v7, v122, v123, v124, v125);
                v129 = objc_msgSend_uniqueValuesForColumnUID_(v7, v126, &v209, v127, v128);
                v197 = objc_msgSend_uniqueValueToRowUids(v129, v130, v131, v132, v133);
                v138 = objc_msgSend_uniqueValueToRowIndexes(v129, v134, v135, v136, v137);
                v146 = objc_msgSend_objectForKey_(v138, v139, v107, v140, v141);
                if (!v146)
                {
                  v193 = objc_msgSend_objectForKey_(v197, v142, v107, v144, v145);
                  v151 = objc_msgSend_columnRowUIDMap(v203, v147, v148, v149, v150);
                  v146 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v151, v152, v193, 1, v153);

                  if (!v146)
                  {
                    v146 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v154, v155, v156, v157);
                  }

                  objc_msgSend_setObject_forKey_(v138, v154, v146, v107, v157);
                }

                objc_msgSend_uniqueValuesUnlock(v199, v142, v143, v144, v145);
                switch(v121)
                {
                  case 15:
                    v54 = objc_msgSend_count(v146, v158, v159, v160, v161) > 1;
                    break;
                  case 52:
                    v162 = objc_msgSend_firstIndex(v146, v158, v159, v160, v161) == a3;
                    goto LABEL_45;
                  case 16:
                    v162 = objc_msgSend_count(v146, v158, v159, v160, v161) == 1;
LABEL_45:
                    v54 = v162;
                    break;
                  default:
                    v54 = 0;
                    break;
                }

                v7 = v199;
              }

              else
              {
                v54 = 0;
              }

              goto LABEL_52;
            }

            v54 = 0;
LABEL_52:

LABEL_53:
            v183 = self->_type;
            if (v183 == 1)
            {
              if (v54)
              {

                v191 = 1;
                v16 = v203;
                goto LABEL_69;
              }
            }

            else if (!v183)
            {
              if (v54)
              {

                v28 = 0;
                v27 = 1;
                goto LABEL_63;
              }

              v200 = 0;
            }

            if (v204 == ++v30)
            {
              v28 = 0;
              v27 = v200;
              goto LABEL_63;
            }
          }

          v55 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v31, v40, v203, v41, v42);
          v207 = 0;
          v57 = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v203, v56, &v207, a3 | (v55 << 32), 0);
          v58 = v207;
          v63 = objc_msgSend_thresholdCellValues(v7, v59, v60, v61, v62);
          if (v30 >= objc_msgSend_count(v63, v64, v65, v66, v67))
          {
            v72 = 0;
            v77 = objc_msgSend_valueType(0, v68, v69, v70, v71);
          }

          else
          {
            v72 = objc_msgSend_objectAtIndex_(v63, v68, v30, v70, v71);
            v77 = objc_msgSend_valueType(v72, v73, v74, v75, v76);
          }

          if (!v77)
          {
            v54 = 1;
            goto LABEL_42;
          }

          if (v77 == 3)
          {
            if (!v57 && objc_msgSend_deepType_(v58, v78, 0, v79, v80) == 3)
            {
              v196 = objc_msgSend_dateValue(v72, v163, v164, v165, v166);
              v169 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v167, 2, v55, v168);
              v89 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v170, v202, v211, v169, 0);
              v206 = 0;
              v91 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v171, v58, v196, v89, &v206);
              v96 = v206;
              if (!v96)
              {
                goto LABEL_60;
              }

              goto LABEL_38;
            }
          }

          else if (v77 == 5)
          {
            if (!v57 && objc_msgSend_deepType_(v58, v78, 0, v79, v80) == 5)
            {
              v196 = objc_msgSend_numberValue(v72, v81, v82, v83, v84);
              v87 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v85, 2, v55, v86);
              v89 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v88, v202, v211, v87, 0);
              v205 = 0;
              v91 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v90, v58, v196, v89, &v205);
              v96 = v205;
              if (!v96)
              {
LABEL_60:
                v194 = objc_msgSend_predicate(v31, v92, v93, v94, v95);
                v188 = objc_msgSend_predicateType(v194, v184, v185, v186, v187);

                v54 = objc_msgSend_p_thresholdComparisonMatchesFilter_withPredicateType_(self, v189, v91, v188, v190);
LABEL_61:

LABEL_42:
                v7 = v199;
                goto LABEL_52;
              }

LABEL_38:
              v54 = 0;
              goto LABEL_61;
            }
          }

          else
          {
            v172 = MEMORY[0x277D81150];
            v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTTableFilterSet rowIsShown:withHiddenStateExtent:withCalcEngine:]", v79, v80);
            v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v175, v176);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v178, v173, v177, 718, 0, "Unexpected threshold value type found");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v180, v181, v182);
          }

          v54 = 0;
          goto LABEL_42;
        }

LABEL_63:
        v26 = v198;
        v16 = v203;
        if (v198 == v195)
        {
          v191 = v27 | v28;
          goto LABEL_69;
        }
      }

      v191 = 0;
    }

    else
    {
      v191 = 1;
    }

LABEL_69:
  }

  else
  {
    v191 = 1;
  }

  return v191 & 1;
}

- (id)ruleAtAbsoluteIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_rules, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(self->_rules, v7, a3, v8, v9);
  }

  return v10;
}

- (id)ruleInFilter:(unint64_t)a3 atIndex:(unint64_t)a4
{
  p_filterOffsets = &self->_filterOffsets;
  begin = self->_filterOffsets.__begin_;
  if (a3 >= self->_filterOffsets.__end_ - begin)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet ruleInFilter:atIndex:]", a4, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 750, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    begin = p_filterOffsets->__begin_;
  }

  v22 = &begin[a3];
  v21 = *v22;
  if (v22[1] - *v22 <= a4)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet ruleInFilter:atIndex:]", a4, v4);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 751, 0, "rule index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v21 = p_filterOffsets->__begin_[a3];
  }

  return objc_msgSend_ruleAtAbsoluteIndex_(self, a2, v21 + a4, a4, v4);
}

- (id)filterAtIndex:(unint64_t)a3 inTable:(id)a4
{
  v9 = a4;
  p_filterOffsets = &self->_filterOffsets;
  if (a3 >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet filterAtIndex:inTable:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 759, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = MEMORY[0x277CBEB18];
  v23 = objc_msgSend_numberOfRulesInFilter_(self, v6, a3, v7, v8);
  v30 = objc_msgSend_arrayWithCapacity_(v22, v24, v23, v25, v26);
  v31 = &p_filterOffsets->__begin_[a3];
  v32 = *v31;
  if (*v31 < v31[1])
  {
    do
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v27, v32, v28, v29);
      objc_msgSend_addObject_(v30, v34, v33, v35, v36);

      ++v32;
      v37 = &p_filterOffsets->__begin_[a3];
    }

    while (v32 < v37[1]);
    v32 = *v37;
  }

  v38 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v27, v32, v28, v29);
  v43 = objc_msgSend_filteringTableModel(v9, v39, v40, v41, v42);
  v47 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v38, v44, v43, v45, v46);

  v49 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(TSTEphemeralFilter, v48, a3, v47, v30);

  return v49;
}

- (id)removeRulesWithAbsoluteIndices:(id)a3
{
  v4 = a3;
  Index = objc_msgSend_lastIndex(v4, v5, v6, v7, v8);
  if (Index >= objc_msgSend_count(self->_rules, v10, v11, v12, v13))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableFilterSet removeRulesWithAbsoluteIndices:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 803, 0, "invalid rule index passed in");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_willModify(self, v14, v15, v16, v17);
  v65 = 0;
  v66 = &v65;
  v67 = 0x4812000000;
  v68 = sub_221436B60;
  v69 = sub_221436B84;
  v70 = &unk_22188E88F;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  begin = self->_filterOffsets.__begin_;
  end = self->_filterOffsets.__end_;
  v64[3] = *begin;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_221436C2C;
  v63[3] = &unk_2784652F0;
  v63[4] = &v65;
  v63[5] = v64;
  v31 = sub_221436B9C(begin + 1, end, v63);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_221436C88;
  v62[3] = &unk_27845F0D8;
  v62[4] = self;
  v62[5] = &v65;
  objc_msgSend_enumerateIndexesUsingBlock_(v4, v32, v62, v33, v34);
  v61[0] = 0;
  sub_221436CF8(&self->_filterOffsets.__begin_, 1uLL, v61);
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v61[3] = 0;
  v35 = v66[6];
  v36 = v66[7];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_221436EEC;
  v60[3] = &unk_278465318;
  v60[4] = self;
  v60[5] = v61;
  v37 = sub_221436B9C(v35, v36, v60);
  v38 = objc_alloc(MEMORY[0x277CBEA60]);
  v42 = objc_msgSend_objectsAtIndexes_(self->_rules, v39, v4, v40, v41);
  v45 = objc_msgSend_initWithArray_copyItems_(v38, v43, v42, 1, v44);

  v46 = objc_alloc(MEMORY[0x277CBEB18]);
  v50 = objc_msgSend_initWithArray_(v46, v47, self->_rules, v48, v49);
  objc_msgSend_removeObjectsAtIndexes_(v50, v51, v4, v52, v53);
  objc_storeStrong(&self->_rules, v50);
  rules = self->_rules;
  if (!rules || !objc_msgSend_count(rules, v54, v55, v56, v57))
  {
    self->_isEnabled = 0;
  }

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v65, 8);
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  return v45;
}

- (void)removeRulesWithIndices:(id)a3 inFilter:(unint64_t)a4
{
  v57 = a3;
  if (objc_msgSend_filterCount(self, v6, v7, v8, v9) <= a4)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableFilterSet removeRulesWithIndices:inFilter:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 862, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (objc_msgSend_count(v57, v10, v11, v12, v13) && objc_msgSend_lastIndex(v57, v25, v26, v27, v28) >= self->_filterOffsets.__begin_[a4 + 1] - self->_filterOffsets.__begin_[a4])
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTableFilterSet removeRulesWithIndices:inFilter:]", v27, v28);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 864, 0, "rule indices are out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  if (!v57 || !objc_msgSend_count(v57, v25, v26, v27, v28))
  {
    v40 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v25, 0, self->_filterOffsets.__begin_[a4 + 1] - self->_filterOffsets.__begin_[a4], v28);

    v57 = v40;
  }

  v41 = objc_alloc(MEMORY[0x277CCAB58]);
  v45 = objc_msgSend_initWithIndexSet_(v41, v42, v57, v43, v44);
  Index = objc_msgSend_firstIndex(v45, v46, v47, v48, v49);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(v45, v51, Index, self->_filterOffsets.__begin_[a4], v52);
  v56 = objc_msgSend_removeRulesWithAbsoluteIndices_(self, v53, v45, v54, v55);
}

- (void)removeRulesForBaseColumnIndices:(id)a3 withTableInfo:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = objc_msgSend_ruleCount(self, v8, v9, v10, v11);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = objc_msgSend_ruleAtAbsoluteIndex_(self, v12, i, v14, v15);
      v23 = objc_msgSend_filteringTableModel(v6, v19, v20, v21, v22);
      v27 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v18, v24, v23, v25, v26);

      if (objc_msgSend_containsIndex_(v38, v28, v27, v29, v30))
      {
        objc_msgSend_addIndex_(v7, v31, i, v32, v33);
      }
    }
  }

  if (objc_msgSend_count(v7, v12, v13, v14, v15))
  {
    v37 = objc_msgSend_removeRulesWithAbsoluteIndices_(self, v34, v7, v35, v36);
  }
}

- (void)p_addRules:(id)a3 atRuleIndices:(id)a4 inFilter:(unint64_t)a5 isNew:(BOOL)a6
{
  v6 = a6;
  v84 = a3;
  v10 = a4;
  objc_msgSend_willModify(self, v11, v12, v13, v14);
  p_filterOffsets = &self->_filterOffsets;
  if (a5 >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableFilterSet p_addRules:atRuleIndices:inFilter:isNew:]", v17, v18);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 899, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (!objc_msgSend_count(v84, v15, v16, v17, v18))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTableFilterSet p_addRules:atRuleIndices:inFilter:isNew:]", v33, v34);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 900, 0, "no rules given");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  begin = p_filterOffsets->__begin_;
  v47 = &p_filterOffsets->__begin_[a5];
  if (v6)
  {
    sub_221437618(&self->_filterOffsets.__begin_, &p_filterOffsets->__begin_[a5], &p_filterOffsets->__begin_[a5]);
    begin = p_filterOffsets->__begin_;
    v47 = &p_filterOffsets->__begin_[a5];
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_count(v10, v31, v32, v33, v34))
  {
    begin = p_filterOffsets->__begin_;
LABEL_10:
    v48 = MEMORY[0x277CCAA78];
    v49 = &begin[a5];
    v51 = *v49;
    v50 = v49[1];
    v52 = objc_msgSend_count(v84, v31, v32, v33, v34);
    v55 = objc_msgSend_indexSetWithIndexesInRange_(v48, v53, v50 - v51, v52, v54);

    v10 = v55;
  }

  for (i = (v47 + 8); i != self->_filterOffsets.__end_; ++i)
  {
    *i += objc_msgSend_count(v84, v31, v32, v33, v34);
  }

  v57 = objc_alloc(MEMORY[0x277CCAB58]);
  v61 = objc_msgSend_initWithIndexSet_(v57, v58, v10, v59, v60);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(v61, v62, 0, p_filterOffsets->__begin_[a5], v63);
  if (!objc_msgSend_count(self->_rules, v64, v65, v66, v67) && objc_msgSend_count(v84, v68, v69, v70, v71))
  {
    self->_isEnabled = 1;
  }

  v72 = objc_alloc(MEMORY[0x277CBEA60]);
  v75 = objc_msgSend_initWithArray_copyItems_(v72, v73, v84, 1, v74);
  v76 = objc_alloc(MEMORY[0x277CBEB18]);
  v80 = objc_msgSend_initWithArray_(v76, v77, self->_rules, v78, v79);
  objc_msgSend_insertObjects_atIndexes_(v80, v81, v75, v61, v82);
  rules = self->_rules;
  self->_rules = v80;

  self->_downgradedForPrePivot = 0;
}

- (void)addRules:(id)a3 inFilter:(unint64_t)a4
{
  v28 = a3;
  if (a4 >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet addRules:inFilter:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 941, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v22 = objc_msgSend_count(v28, v6, v7, v8, v9);
  if (v22)
  {
    v24 = a4 + 1;
    v25 = self->_filterOffsets.__end_ - self->_filterOffsets.__begin_;
    if (a4 + 1 == v25 >> 3)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v21, 0, v22, v23);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v21, self->_filterOffsets.__begin_[v24] - self->_filterOffsets.__begin_[a4], v22, v23);
    }
    v26 = ;
    objc_msgSend_p_addRules_atRuleIndices_inFilter_isNew_(self, v27, v28, v26, a4, v24 == v25 >> 3);
  }
}

- (void)replaceRule:(id)a3 atRuleIndex:(unint64_t)a4 inFilter:(unint64_t)a5
{
  v38 = a3;
  if (objc_msgSend_filterCount(self, v8, v9, v10, v11) <= a5)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableFilterSet replaceRule:atRuleIndex:inFilter:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 957, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = self->_filterOffsets.__begin_[a5];
  if (self->_filterOffsets.__begin_[a5 + 1] - v26 <= a4)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableFilterSet replaceRule:atRuleIndex:inFilter:]", v13, v14);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 958, 0, "rule indices are out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    v26 = self->_filterOffsets.__begin_[a5];
  }

  objc_msgSend_replaceRuleAtAbsoluteIndex_withRule_(self, v12, v26 + a4, v38, v14);
}

- (void)replaceRuleAtAbsoluteIndex:(unint64_t)a3 withRule:(id)a4
{
  v48 = a4;
  objc_msgSend_willModify(self, v6, v7, v8, v9);
  if (objc_msgSend_count(self->_rules, v10, v11, v12, v13) <= a3)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableFilterSet replaceRuleAtAbsoluteIndex:withRule:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 969, 0, "Insufficient rules to replaceRuleAtAbsoluteIndex: %lu", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (objc_msgSend_count(self->_rules, v14, v15, v16, v17) <= a3)
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v42 = MEMORY[0x277CBEB18];
    v41 = objc_msgSend_copy(v48, v29, v30, v31, v32);
    v46 = objc_msgSend_arrayWithObject_(v42, v43, v41, v44, v45);
    rules = self->_rules;
    self->_rules = v46;
  }

  else
  {
    v33 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v29, self->_rules, v31, v32);
    v38 = objc_msgSend_copy(v48, v34, v35, v36, v37);
    objc_msgSend_replaceObjectAtIndex_withObject_(v33, v39, a3, v38, v40);

    v41 = self->_rules;
    self->_rules = v33;
  }

LABEL_8:
  self->_downgradedForPrePivot = 0;
}

- (void)enumerateFiltersInTable:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v9 = a4;
  v16 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v11 = 0;
    v12 = begin + 2;
    do
    {
      v13 = objc_msgSend_filterAtIndex_inTable_(self, v7, v11, v6, v8);
      v9[2](v9, v13, &v16);
      v14 = v16;

      if (v14)
      {
        break;
      }

      ++v11;
    }

    while (self->_filterOffsets.__end_ != v12++);
  }
}

- (void)enumerateFilterIndicesInTable:(id)a3 usingBlock:(id)a4
{
  v24 = a3;
  v9 = a4;
  v25 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v11 = 0;
    v12 = begin + 2;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v6, begin[v11], v7, v8);
      v18 = objc_msgSend_filteringTableModel(v24, v14, v15, v16, v17);
      v22 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v13, v19, v18, v20, v21);

      v9[2](v9, v22, v11, &v25);
      if (v25)
      {
        break;
      }

      ++v11;
    }

    while (self->_filterOffsets.__end_ != v12++);
  }
}

- (void)enumerateFiltersForColumn:(TSUModelColumnIndex)a3 withTable:(id)a4 usingBlock:(id)a5
{
  v27 = a4;
  v26 = a5;
  v28 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v12 = 0;
    v25 = v26 + 16;
    v13 = begin + 2;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v8, begin[v12], v9, v10, v25);
      v19 = objc_msgSend_filteringTableModel(v27, v15, v16, v17, v18);
      v23 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v14, v20, v19, v21, v22);

      if (v23 == a3._column)
      {
        (*(v26 + 2))(v26, v12, &v28);
      }

      if (v28)
      {
        break;
      }

      ++v12;
    }

    while (self->_filterOffsets.__end_ != v13++);
  }
}

- (void)enumerateRulesInFilterIndex:(unint64_t)a3 usingBlock:(id)a4
{
  v9 = a4;
  p_filterOffsets = &self->_filterOffsets;
  if (a3 >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet enumerateRulesInFilterIndex:usingBlock:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1036, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v29 = 0;
  v25 = objc_autoreleasePoolPush();
  v26 = &p_filterOffsets->__begin_[a3];
  v27 = *v26;
  if (*v26 < v26[1])
  {
    do
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v22, v27, v23, v24);
      v9[2](v9, v28, v27 - p_filterOffsets->__begin_[a3], &v29);

      if (v29)
      {
        break;
      }

      ++v27;
    }

    while (v27 < p_filterOffsets->__begin_[a3 + 1]);
  }

  objc_autoreleasePoolPop(v25);
}

- (id)filterIndicesForBaseColumn:(TSUModelColumnIndex)a3 inTable:(id)a4
{
  v6 = a4;
  v33 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v15 = self->_filterOffsets.__begin_;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v11, *v15, v12, v13);
      v21 = objc_msgSend_filteringTableModel(v6, v17, v18, v19, v20);
      v25 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v16, v22, v21, v23, v24);

      if (v25 == a3._column)
      {
        objc_msgSend_addIndex_(v33, v11, begin - self->_filterOffsets.__begin_, v12, v13);
      }

      ++v15;
      v26 = begin + 2;
      ++begin;
    }

    while (self->_filterOffsets.__end_ != v26);
  }

  v27 = objc_alloc(MEMORY[0x277CCAA78]);
  v31 = objc_msgSend_initWithIndexSet_(v27, v28, v33, v29, v30);

  return v31;
}

- (unint64_t)firstFilterIndexForBaseColumn:(TSUModelColumnIndex)a3 inTable:(id)a4
{
  v9 = a4;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ == begin + 1)
  {
LABEL_5:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = self->_filterOffsets.__begin_;
    while (1)
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v6, *v11, v7, v8);
      v17 = objc_msgSend_filteringTableModel(v9, v13, v14, v15, v16);
      v21 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v12, v18, v17, v19, v20);

      if (v21 == a3._column)
      {
        break;
      }

      ++v11;
      v22 = begin + 2;
      ++begin;
      if (self->_filterOffsets.__end_ == v22)
      {
        goto LABEL_5;
      }
    }

    v23 = begin - self->_filterOffsets.__begin_;
  }

  return v23;
}

- (unint64_t)ruleIndexInFilter:(unint64_t)a3 matchingCell:(id)a4
{
  v6 = a4;
  if (objc_msgSend_filterCount(self, v7, v8, v9, v10) <= a3)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableFilterSet ruleIndexInFilter:matchingCell:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 1082, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = &self->_filterOffsets.__begin_[a3];
  v26 = *v25;
  if (*v25 >= v25[1])
  {
LABEL_6:
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v11, v26, v12, v13);
      v31 = objc_msgSend_matchesCell_(v27, v28, v6, v29, v30);

      if (v31)
      {
        break;
      }

      if (++v26 >= self->_filterOffsets.__begin_[a3 + 1])
      {
        goto LABEL_6;
      }
    }

    v32 = v26 - self->_filterOffsets.__begin_[a3];
  }

  return v32;
}

- (unint64_t)numberOfRulesInFilter:(unint64_t)a3
{
  if (objc_msgSend_filterCount(self, a2, a3, v3, v4) <= a3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableFilterSet numberOfRulesInFilter:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1095, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = self->_filterOffsets.__begin_[a3 + 1] - self->_filterOffsets.__begin_[a3];
  if (v22 >= 0xFFFFFFFF)
  {
    v24 = objc_msgSend_filterCount(self, v7, v8, v9, v10);
    begin = self->_filterOffsets.__begin_;
    v42 = begin[a3];
    v43 = begin[a3 + 1];
    v41 = v24;
    v44 = v22;
    TSUSetCrashReporterInfo();
    v26 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableFilterSet numberOfRulesInFilter:]", v28, v29, "[TSTTableFilterSet numberOfRulesInFilter:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", 1114, v22, a3, v41, v42, v43);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v32, v33);
    v39 = objc_msgSend_filterCount(self, v35, v36, v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v40, v30, v34, 1114, 1, "numRules is out of bounds! \n numRules: %lu \n filterIndex: %lu \n filterCount: %lu \n filterOffsetAtIndex: %lu \n filterOffsetAfterIndex: %lu", v44, a3, v39, self->_filterOffsets.__begin_[a3], self->_filterOffsets.__begin_[a3 + 1]);

    TSUCrashBreakpoint();
    abort();
  }

  return self->_filterOffsets.__begin_[a3 + 1] - self->_filterOffsets.__begin_[a3];
}

- (id)absoluteRuleIndicesForColumn:(TSUModelColumnIndex)a3 inTable:(id)a4
{
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2214389C8;
  v26 = sub_2214389D8;
  v27 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
  rules = self->_rules;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2214389E0;
  v18[3] = &unk_278465340;
  v12 = v6;
  column = a3._column;
  v19 = v12;
  v20 = &v22;
  objc_msgSend_enumerateObjectsUsingBlock_(rules, v13, v18, v14, v15);
  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)baseColumnIndicesForRulesInTable:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_rules;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v33, v37, 16);
  if (v16)
  {
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = objc_msgSend_filteringTableModel(v4, v12, v13, v14, v15, v33);
        LOWORD(v19) = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v19, v21, v20, v22, v23);

        objc_msgSend_addIndex_(v9, v24, v19, v25, v26);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v33, v37, 16);
    }

    while (v16);
  }

  v27 = objc_alloc(MEMORY[0x277CCAA78]);
  v31 = objc_msgSend_initWithIndexSet_(v27, v28, v9, v29, v30);

  return v31;
}

- (id)viewColumnIndicesForRulesInTable:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_baseColumnIndicesForRulesInTable_(self, v5, v4, v6, v7);
  v13 = objc_msgSend_filteringTableTranslator(v4, v9, v10, v11, v12);
  v17 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v13, v14, v8, v15, v16);

  return v17;
}

- (BOOL)preventsRowInsertion
{
  if (!self->_isEnabled || objc_msgSend_ruleCount(self, a2, v2, v3, v4) < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = objc_msgSend_ruleAtAbsoluteIndex_(self, v6, v9, v7, v8);
    v15 = objc_msgSend_predicate(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_predicateType(v15, v16, v17, v18, v19);

    if (v20 - 11) < 0x2A && ((0x27800180023uLL >> (v20 - 11)))
    {
      break;
    }

    if (++v9 >= objc_msgSend_ruleCount(self, v21, v22, v23, v24))
    {
      return 0;
    }
  }

  return 1;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_fileFormatVersion(v4, v5, v6, v7, v8) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10, v11, v12);
  }

  v19 = v4;
  google::protobuf::internal::AssignDescriptors();
  v16 = objc_msgSend_messageWithDescriptor_(v19, v13, off_2812E4498[180], v14, v15);

  objc_msgSend_loadFromArchive_unarchiver_(self, v17, v16, v19, v18);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_221439884, off_2812E4498[180], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v9 = a4;
  self->_type = *(a3 + 26) == 1;
  self->_needsFormulaRewriteForImport = *(a3 + 108);
  self->_isEnabled = *(a3 + 109);
  v10 = *(a3 + 8);
  v11 = *(a3 + 22);
  if (v11)
  {
    if (v10)
    {
      TSUSetCrashReporterInfo();
      v47 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTTableFilterSet loadFromArchive:unarchiver:]", v49, v50, "[TSTTableFilterSet loadFromArchive:unarchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", 1220);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v53, v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v56, v51, v55, 1220, 1, "Modern filter sets shouldn't have pre-pivot rules!");

      TSUCrashBreakpoint();
      abort();
    }

    self->_downgradedForPrePivot = 0;
    v15 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v11, v7, v8);
    v16 = *(a3 + 12);
    if (v16)
    {
      v17 = (v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a3 + 22);
    if (v18)
    {
      v19 = 8 * v18;
      do
      {
        v20 = *v17;
        v21 = [TSTTableFilterRule alloc];
        v28 = objc_msgSend_initFromArchive_(v21, v22, v20, v23, v24);
        if (v28)
        {
          objc_msgSend_addObject_(v15, v25, v28, v26, v27);
        }

        ++v17;
        v19 -= 8;
      }

      while (v19);
    }

LABEL_21:
    v42 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v12, v15, v13, v14);
    rules = self->_rules;
    self->_rules = v42;

    goto LABEL_22;
  }

  if (v10)
  {
    self->_downgradedForPrePivot = 1;
    v15 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v10, v7, v8);
    v29 = *(a3 + 5);
    if (v29)
    {
      v30 = (v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a3 + 8);
    if (v31)
    {
      v32 = 8 * v31;
      do
      {
        v33 = *v30;
        v34 = [TSTTableFilterRule alloc];
        v41 = objc_msgSend_initFromPrePivotArchive_(v34, v35, v33, v36, v37);
        if (v41)
        {
          objc_msgSend_addObject_(v15, v38, v41, v39, v40);
        }

        ++v30;
        v32 -= 8;
      }

      while (v32);
    }

    goto LABEL_21;
  }

  self->_isEnabled = 0;
LABEL_22:
  v44 = *(a3 + 12);
  if (v44)
  {
    if (v44 >= 1)
    {
      v45 = 0;
      do
      {
        v57 = *(*(a3 + 7) + 4 * v45);
        sub_2211531C0(&self->_filterOffsets.__begin_, &v57);
        ++v45;
      }

      while (v45 < *(a3 + 12));
    }
  }

  else
  {
    for (i = 0; ; i = v57 + 1)
    {
      v57 = i;
      if (i > objc_msgSend_count(self->_rules, v6, v10, v7, v8))
      {
        break;
      }

      sub_2211531C0(&self->_filterOffsets.__begin_, &v57);
    }
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v7 = *(a3 + 4);
  *(a3 + 26) = self->_type == 1;
  *(a3 + 109) = self->_isEnabled;
  needsFormulaRewriteForImport = self->_needsFormulaRewriteForImport;
  *(a3 + 4) = v7 | 7;
  *(a3 + 108) = needsFormulaRewriteForImport;
  v13 = objc_msgSend_count(self->_rules, v9, v10, v11, v12);
  v17 = v13;
  if (!self->_downgradedForPrePivot)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    v28 = 0;
    while (1)
    {
      v29 = *(a3 + 12);
      if (!v29)
      {
        goto LABEL_20;
      }

      v30 = *(a3 + 22);
      v31 = *v29;
      if (v30 >= *v29)
      {
        break;
      }

      *(a3 + 22) = v30 + 1;
      v32 = *&v29[2 * v30 + 2];
LABEL_22:
      v35 = objc_msgSend_objectAtIndex_(self->_rules, v14, v28, v15, v16);
      objc_msgSend_encodeToArchive_archiver_(v35, v36, v32, v6, v37);

      if (v17 == ++v28)
      {
        goto LABEL_23;
      }
    }

    if (v31 == *(a3 + 23))
    {
LABEL_20:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 80));
      v29 = *(a3 + 12);
      v31 = *v29;
    }

    *v29 = v31 + 1;
    v32 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRuleArchive>(*(a3 + 10));
    v33 = *(a3 + 22);
    v34 = *(a3 + 12) + 8 * v33;
    *(a3 + 22) = v33 + 1;
    *(v34 + 8) = v32;
    goto LABEL_22;
  }

  if (v13)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(a3 + 5);
      if (!v19)
      {
        goto LABEL_9;
      }

      v20 = *(a3 + 8);
      v21 = *v19;
      if (v20 >= *v19)
      {
        break;
      }

      *(a3 + 8) = v20 + 1;
      v22 = *&v19[2 * v20 + 2];
LABEL_11:
      v25 = objc_msgSend_objectAtIndex_(self->_rules, v14, v18, v15, v16);
      objc_msgSend_encodeToPrePivotArchive_archiver_(v25, v26, v22, v6, v27);

      if (v17 == ++v18)
      {
        goto LABEL_23;
      }
    }

    if (v21 == *(a3 + 9))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
      v19 = *(a3 + 5);
      v21 = *v19;
    }

    *v19 = v21 + 1;
    v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRulePrePivotArchive>(*(a3 + 3));
    v23 = *(a3 + 8);
    v24 = *(a3 + 5) + 8 * v23;
    *(a3 + 8) = v23 + 1;
    *(v24 + 8) = v22;
    goto LABEL_11;
  }

LABEL_23:
  begin = self->_filterOffsets.__begin_;
  end = self->_filterOffsets.__end_;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_221439638;
  v41[3] = &unk_278465360;
  v41[4] = a3;
  v40 = sub_221436B9C(begin, end, v41);
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end