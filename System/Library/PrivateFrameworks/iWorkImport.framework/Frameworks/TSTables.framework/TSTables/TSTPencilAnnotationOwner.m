@interface TSTPencilAnnotationOwner
- (TSCECalculationEngine)calculationEngine;
- (TSKUIDStruct)ownerUID;
- (TSTPencilAnnotationOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forTableModel:(id)a5;
- (TSTPencilAnnotationOwner)initWithTableModel:(id)a3;
- (TSTPencilAnnotationOwner)initWithTableModel:(id)a3 ownerUID:(TSKUIDStruct)a4 annotations:(id)a5 formulaStore:(id)a6;
- (TSTTableModel)tableModel;
- (TSUCellRect)cellRangeForAnnotation:(id)a3;
- (id)_annotationsForIndexes:(id)a3;
- (id)_annotationsInRows:(id)a3;
- (id)_annotationsIntersectingButNotContainingBaseCellRegion:(id)a3;
- (id)_indexesContainedByRegion:(id)a3;
- (id)_indexesForRange:(TSUModelCellRect)a3 startingOnly:(BOOL)a4;
- (id)_indexesForRows:(id)a3;
- (id)_indexesIntersectingButNotContainingBaseCellRegion:(id)a3;
- (id)annotationsContainedByRegion:(id)a3;
- (id)annotationsStartingInRange:(TSUModelCellRect)a3;
- (id)removeAnnotation:(id)a3;
- (id)removeAnnotationAtIndex:(unint64_t)a3;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (unint64_t)addAnnotation:(id)a3 withAnchorRange:(TSUCellRect)a4;
- (unint64_t)count;
- (unint64_t)indexOfAnnotation:(id)a3;
- (unint64_t)markForRollback;
- (void)_enumerateAnnotationsAndFormulasWithIndexes:(id)a3 block:(id)a4;
- (void)_enumerateIndexesIntersectingRegion:(id)a3 block:(id)a4;
- (void)addAnnotation:(id)a3 withFormula:(id)a4 atIndex:(unint64_t)a5;
- (void)addAnnotation:(id)a3 withFormulaObject:(id)a4 atIndex:(unint64_t)a5;
- (void)enumerateAnnotationsAndFormulasContainedInRegion:(id)a3 withBlock:(id)a4;
- (void)enumerateAnnotationsAndFormulasInRange:(TSUModelCellRect)a3 withBlock:(id)a4;
- (void)enumerateAnnotationsWithBlock:(id)a3;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3;
- (void)removeAllAnnotations;
- (void)removeAnnotations:(id)a3;
- (void)rollbackToMark:(unint64_t)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setOwnerUID:(TSKUIDStruct)a3;
- (void)unregisterFromCalcEngine;
@end

@implementation TSTPencilAnnotationOwner

- (TSTPencilAnnotationOwner)initWithTableModel:(id)a3
{
  v4 = a3;
  *&v27 = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
  *(&v27 + 1) = v9;
  v13 = sub_2212C4930(&v27, 0xA, v10, v11, v12);
  v15 = v14;
  v19 = objc_msgSend_array(MEMORY[0x277D81330], v14, v16, v17, v18);
  v20 = [TSTFormulaStore alloc];
  v23 = objc_msgSend_initWithOwnerUID_(v20, v21, v13, v15, v22);
  v25 = objc_msgSend_initWithTableModel_ownerUID_annotations_formulaStore_(self, v24, v4, v13, v15, v19, v23);

  return v25;
}

- (TSTPencilAnnotationOwner)initWithTableModel:(id)a3 ownerUID:(TSKUIDStruct)a4 annotations:(id)a5 formulaStore:(id)a6
{
  upper = a4._upper;
  lower = a4._lower;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TSTPencilAnnotationOwner;
  v14 = [(TSTPencilAnnotationOwner *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_tableModel, v11);
    v15->_ownerUID._lower = lower;
    v15->_ownerUID._upper = upper;
    objc_storeStrong(&v15->_annotations, a5);
    objc_storeStrong(&v15->_formulaStore, a6);
  }

  return v15;
}

- (void)setOwnerUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78C0();
  }

  v7 = objc_msgSend_tableModel(self, a2, a3._lower, a3._upper, v3);
  objc_msgSend_willModify(v7, v8, v9, v10, v11);

  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {

    objc_msgSend_setFormulaOwnerUID_(formulaStore, v12, lower, upper, v13);
  }
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  objc_storeWeak(&self->_calculationEngine, v6);
  v11 = objc_msgSend_formulaStore(self, v7, v8, v9, v10);
  objc_msgSend_setCalcEngine_(v11, v12, v6, v13, v14);

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v20 = objc_msgSend_ownerUID(self, v16, v17, v18, v19);
  v22 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(WeakRetained, v21, v20, v21, self, 0, a4->_lower, a4->_upper, 10);

  v27 = objc_msgSend_formulaStore(self, v23, v24, v25, v26);

  if (v27)
  {
    memset(v55, 0, sizeof(v55));
    v56 = 1065353216;
    v54 = xmmword_2217E18D0;
    v32 = objc_msgSend_tableModel(self, v28, v29, v30, v31);
    v37 = objc_msgSend_tableUID(v32, v33, v34, v35, v36);
    v39 = v38;
    v57 = &v54;
    v40 = sub_221230440(v55, &v54);
    v40[4] = v37;
    v40[5] = v39;

    objc_msgSend_remapTableUIDsInFormulasWithMap_(self, v41, v55, v42, v43);
    if (!v22)
    {
      v48 = objc_msgSend_formulaStore(self, v44, v45, v46, v47);
      objc_msgSend_registerAllFormulaToCalculationEngine(v48, v49, v50, v51, v52);
    }

    sub_2210BDEC0(v55);
  }

  return v22;
}

- (void)unregisterFromCalcEngine
{
  v6 = objc_msgSend_formulaStore(self, a2, v2, v3, v4);
  objc_msgSend_setCalcEngine_(v6, v7, 0, v8, v9);

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v11, self->_ownerUID._lower, self->_ownerUID._upper, v12);

  objc_storeWeak(&self->_calculationEngine, 0);
}

- (unint64_t)addAnnotation:(id)a3 withAnchorRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v7 = a3;
  v12 = objc_msgSend_formulaStore(self, v8, v9, v10, v11);
  Index = objc_msgSend_reserveNextIndex(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_formulaStore(self, v18, v19, v20, v21);
  v27 = objc_msgSend_tableModel(self, v23, v24, v25, v26);
  v36[0] = objc_msgSend_tableUID(v27, v28, v29, v30, v31);
  v36[1] = v32;
  v33 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(v22, v32, origin, size, Index, v36);

  objc_msgSend_addAnnotation_withFormulaObject_atIndex_(self, v34, v7, v33, Index);
  return Index;
}

- (void)addAnnotation:(id)a3 withFormula:(id)a4 atIndex:(unint64_t)a5
{
  v52 = a3;
  v8 = a4;
  v13 = objc_msgSend_annotations(self, v9, v10, v11, v12);
  hasObjectForKey = objc_msgSend_hasObjectForKey_(v13, v14, a5, v15, v16);

  if (hasObjectForKey)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTPencilAnnotationOwner addAnnotation:withFormula:atIndex:]", v20, v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 133, 0, "Adding a formula at an index that already has an annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_tableModel(self, v18, v19, v20, v21);
  objc_msgSend_willModify(v33, v34, v35, v36, v37);

  v42 = objc_msgSend_formulaStore(self, v38, v39, v40, v41);
  objc_msgSend_setFormulaObject_atIndex_(v42, v43, v8, a5, v44);

  v49 = objc_msgSend_annotations(self, v45, v46, v47, v48);
  objc_msgSend_setObject_atIndexedSubscript_(v49, v50, v52, a5, v51);

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78D4();
  }
}

- (void)addAnnotation:(id)a3 withFormulaObject:(id)a4 atIndex:(unint64_t)a5
{
  v52 = a3;
  v8 = a4;
  v13 = objc_msgSend_annotations(self, v9, v10, v11, v12);
  hasObjectForKey = objc_msgSend_hasObjectForKey_(v13, v14, a5, v15, v16);

  if (hasObjectForKey)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTPencilAnnotationOwner addAnnotation:withFormulaObject:atIndex:]", v20, v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 143, 0, "Adding a formula at an index that already has an annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_tableModel(self, v18, v19, v20, v21);
  objc_msgSend_willModify(v33, v34, v35, v36, v37);

  v42 = objc_msgSend_formulaStore(self, v38, v39, v40, v41);
  objc_msgSend_setFormulaObject_atIndex_(v42, v43, v8, a5, v44);

  v49 = objc_msgSend_annotations(self, v45, v46, v47, v48);
  objc_msgSend_setObject_atIndexedSubscript_(v49, v50, v52, a5, v51);

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78E8();
  }
}

- (id)removeAnnotation:(id)a3
{
  v6 = objc_msgSend_indexOfAnnotation_(self, a2, a3, v3, v4);
  v11 = objc_msgSend_formulaStore(self, v7, v8, v9, v10);
  v15 = objc_msgSend_formulaObjectAtIndex_(v11, v12, v6, v13, v14);

  if (!v15)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPencilAnnotationOwner removeAnnotation:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 155, 0, "invalid nil value for '%{public}s'", "formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78FC();
  }

  v31 = objc_msgSend_tableModel(self, v16, v17, v18, v19);
  objc_msgSend_willModify(v31, v32, v33, v34, v35);

  v40 = objc_msgSend_annotations(self, v36, v37, v38, v39);
  objc_msgSend_setObject_atIndexedSubscript_(v40, v41, 0, v6, v42);

  v47 = objc_msgSend_formulaStore(self, v43, v44, v45, v46);
  objc_msgSend_clearFormulaAtIndex_(v47, v48, v6, v49, v50);

  v55 = objc_msgSend_annotations(self, v51, v52, v53, v54);
  v60 = objc_msgSend_count(v55, v56, v57, v58, v59);
  v65 = objc_msgSend_formulaStore(self, v61, v62, v63, v64);
  v70 = objc_msgSend_formulaCount(v65, v66, v67, v68, v69);

  if (v60 != v70)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSTPencilAnnotationOwner removeAnnotation:]", v72, v73);
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v77, v78);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 164, 0, "Annotations and formulas out of sync!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  }

  return v15;
}

- (void)removeAllAnnotations
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213D58C8;
  v4[3] = &unk_278464570;
  v4[4] = self;
  objc_msgSend_enumerateAnnotationsWithBlock_(self, a2, v4, v2, v3);
}

- (void)removeAnnotations:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_removeAnnotation_(self, v6, *(*(&v13 + 1) + 8 * v11++), v7, v8, v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
    }

    while (v9);
  }
}

- (id)removeAnnotationAtIndex:(unint64_t)a3
{
  v7 = objc_msgSend_annotations(self, a2, a3, v3, v4);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a3, v9, v10);

  if (!v11)
  {
    TSUSetCrashReporterInfo();
    v17 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTPencilAnnotationOwner removeAnnotationAtIndex:]", v19, v20, "[TSTPencilAnnotationOwner removeAnnotationAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", 183, a3);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v26, v21, v25, 183, 1, "Attempting to remove annotation at bad index %tu!", a3);

    TSUCrashBreakpoint();
    abort();
  }

  v15 = objc_msgSend_removeAnnotation_(self, v12, v11, v13, v14);

  return v15;
}

- (TSUCellRect)cellRangeForAnnotation:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_indexOfAnnotation_(self, v5, v4, v6, v7);
  origin = 0x7FFF7FFFFFFFLL;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend_annotations(self, v8, v9, v10, v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v14, v15, v12, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v14, v18 == v4))
  {
    v26 = objc_msgSend_formulaStore(self, v19, v20, v21, v22);
    v29 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v26, v27, v12, 0, v28);
    size = v30;
    v56.origin = v29;
    v56.size = v30;

    v35 = objc_msgSend_tableModel(self, v31, v32, v33, v34);
    v55.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v35, v36, v29, v37, v38);
    v55.size = v39;

    if (TSUCellRect::isValid(&v55))
    {
      if (TSUCellRect::contains(&v55, &v56))
      {
        if (v55.origin.row != v56.origin.row || ((*&v56.origin ^ *&v55.origin) & 0x101FFFF00000000) != 0)
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTPencilAnnotationOwner cellRangeForAnnotation:]", v41, v42, *&v55.origin);
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v46, v47);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 251, 0, "Unexpected merge range!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
        }

        v54 = &v55;
        size = v55.size;
      }

      else
      {
        v54 = &v56;
        size = v56.size;
      }
    }

    else
    {
      v54 = &v56;
    }

    origin = v54->origin;
  }

  else
  {
    size = 0;
  }

  v24 = origin;
  v25 = size;
  result.size = v25;
  result.origin = v24;
  return result;
}

- (unint64_t)count
{
  v5 = objc_msgSend_annotations(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (void)enumerateAnnotationsWithBlock:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_tableModel(self, v9, v10, v11, v12);
    v18 = objc_msgSend_tableInfo(v13, v14, v15, v16, v17);

    if (!v18)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTPencilAnnotationOwner enumerateAnnotationsWithBlock:]", v21, v22);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 269, 0, "invalid nil value for '%{public}s'", "tableInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }

    v34 = objc_msgSend_annotations(self, v19, v20, v21, v22);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2213D5F9C;
    v39[3] = &unk_278464598;
    v35 = v18;
    v40 = v35;
    v41 = v4;
    objc_msgSend_foreach_(v34, v36, v39, v37, v38);
  }
}

- (void)_enumerateAnnotationsAndFormulasWithIndexes:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_tableModel(self, v8, v9, v10, v11);
  v17 = objc_msgSend_tableInfo(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_annotations(self, v18, v19, v20, v21);
  v27 = objc_msgSend_formulaStore(self, v23, v24, v25, v26);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2213D62A0;
  v35[3] = &unk_2784645C0;
  v28 = v22;
  v36 = v28;
  v29 = v17;
  v37 = v29;
  v38 = v27;
  v30 = v7;
  v39 = v30;
  v31 = v27;
  objc_msgSend_enumerateIndexesUsingBlock_(v6, v32, v35, v33, v34);
}

- (void)enumerateAnnotationsAndFormulasInRange:(TSUModelCellRect)a3 withBlock:(id)a4
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v11 = a4;
  v8 = objc_msgSend__indexesForRange_startingOnly_(self, v7, origin, size, 0);
  objc_msgSend__enumerateAnnotationsAndFormulasWithIndexes_block_(self, v9, v8, v11, v10);
}

- (void)enumerateAnnotationsAndFormulasContainedInRegion:(id)a3 withBlock:(id)a4
{
  v12 = a4;
  v9 = objc_msgSend__indexesContainedByRegion_(self, v6, a3, v7, v8);
  objc_msgSend__enumerateAnnotationsAndFormulasWithIndexes_block_(self, v10, v9, v12, v11);
}

- (unint64_t)indexOfAnnotation:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = objc_msgSend_uuid(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_annotations(self, v10, v11, v12, v13);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2213D66C0;
  v21[3] = &unk_2784645E8;
  v15 = v9;
  v22 = v15;
  v23 = &v24;
  objc_msgSend_foreach_(v14, v16, v21, v17, v18);

  v19 = v25[3];
  _Block_object_dispose(&v24, 8);

  return v19;
}

- (id)_annotationsForIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_tableModel(self, v5, v6, v7, v8);
  v14 = objc_msgSend_tableInfo(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_annotations(self, v15, v16, v17, v18);
  v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22, v23);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2213D68EC;
  v37[3] = &unk_278464610;
  v25 = v19;
  v38 = v25;
  v26 = v14;
  v39 = v26;
  v27 = v24;
  v40 = v27;
  objc_msgSend_enumerateIndexesUsingBlock_(v4, v28, v37, v29, v30);
  v35 = objc_msgSend_copy(v27, v31, v32, v33, v34);

  return v35;
}

- (id)annotationsStartingInRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  if (objc_msgSend_count(self->_annotations, a2, *&a3.var0.origin, *&a3.var0.size, v3))
  {
    v11 = objc_msgSend__indexesForRange_startingOnly_(self, v7, origin, size, 1);
    v15 = objc_msgSend__annotationsForIndexes_(self, v12, v11, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_array(MEMORY[0x277CBEA60], v7, v8, v9, v10);
  }

  return v15;
}

- (id)_annotationsInRows:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7, v8) && objc_msgSend_count(v4, v9, v10, v11, v12))
  {
    v13 = objc_msgSend__indexesForRows_(self, v9, v4, v11, v12);
    v17 = objc_msgSend__annotationsForIndexes_(self, v14, v13, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_array(MEMORY[0x277CBEA60], v9, v10, v11, v12);
  }

  return v17;
}

- (id)annotationsContainedByRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_count(self->_annotations, v5, v6, v7, v8);
  if (v4 && v9 && !objc_msgSend_isEmpty(v4, v10, v11, v12, v13))
  {
    v15 = objc_msgSend__indexesContainedByRegion_(self, v10, v4, v12, v13);
    v14 = objc_msgSend__annotationsForIndexes_(self, v16, v15, v17, v18);
  }

  else
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEA60], v10, v11, v12, v13);
  }

  return v14;
}

- (id)_annotationsIntersectingButNotContainingBaseCellRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_count(self->_annotations, v5, v6, v7, v8);
  if (v4 && v9 && !objc_msgSend_isEmpty(v4, v10, v11, v12, v13))
  {
    v15 = objc_msgSend__indexesIntersectingButNotContainingBaseCellRegion_(self, v10, v4, v12, v13);
    v14 = objc_msgSend__annotationsForIndexes_(self, v16, v15, v17, v18);
  }

  else
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEA60], v10, v11, v12, v13);
  }

  return v14;
}

- (id)_indexesForRange:(TSUModelCellRect)a3 startingOnly:(BOOL)a4
{
  v4 = a4;
  var0 = a3.var0;
  if (objc_msgSend_count(self->_annotations, a2, *&a3.var0.origin, *&a3.var0.size, a4))
  {
    v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8, v9);
    v15 = objc_msgSend_tableModel(self, v11, v12, v13, v14);

    if (!v15)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPencilAnnotationOwner _indexesForRange:startingOnly:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 394, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    if (TSUCellRect::isValid(&var0))
    {
      v34 = objc_msgSend_calculationEngine(self, v30, v31, v32, v33);

      if (!v34)
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTPencilAnnotationOwner _indexesForRange:startingOnly:]", v36, v37);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v41, v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 398, 0, "invalid nil value for '%{public}s'", "self.calculationEngine");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
      }

      origin = var0.origin;
      size = var0.size;
      v51 = __C(origin, size);
      v53 = v52;
      v57 = objc_msgSend_tableModel(self, v52, v54, v55, v56);
      v91[0] = v51;
      v91[1] = v53;
      v91[2] = objc_msgSend_tableUID(v57, v58, v59, v60, v61);
      v91[3] = v62;

      v67 = objc_msgSend_calculationEngine(self, v63, v64, v65, v66);
      v87.origin = objc_msgSend_ownerUID(self, v68, v69, v70, v71);
      v87.size = v72;
      if (v67)
      {
        objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v67, v72, v91, &v87, v73);
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
      }

      v75 = v88;
      v76 = v89;
      if (v88 != v89)
      {
        do
        {
          v78 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v30, v75, v32, v33);
          if (!v4 || (objc_msgSend_formulaStore(self, v30, v77, v32, v33), v79 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v79, v80, v78, 0, v81), v84 = v83, v79, v87.origin = v82, v87.size = v84, (TSUCellRect::isSpanning(&v87) & 1) != 0) || (v85 = v82, (TSUCellRect::contains(&var0, v85) & 1) != 0))
          {
            objc_msgSend_addIndex_(v10, v30, v78, v32, v33);
          }

          v75 += 8;
        }

        while (v75 != v76);
        v75 = v88;
      }

      if (v75)
      {
        v89 = v75;
        operator delete(v75);
      }
    }

    v74 = objc_msgSend_copy(v10, v30, v31, v32, v33);
  }

  else
  {
    v74 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v6, v7, v8, v9);
  }

  return v74;
}

- (id)_indexesForRows:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7, v8) && objc_msgSend_count(v4, v9, v10, v11, v12))
  {
    v13 = objc_msgSend_tableModel(self, v9, v10, v11, v12);

    if (!v13)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTPencilAnnotationOwner _indexesForRows:]", v16, v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 427, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    v29 = objc_msgSend_tableModel(self, v14, v15, v16, v17);
    v34 = objc_msgSend_numberOfColumns(v29, v30, v31, v32, v33);

    v39 = objc_msgSend_tableModel(self, v35, v36, v37, v38);
    v44 = objc_msgSend_tableUID(v39, v40, v41, v42, v43);
    v46 = v45;

    v51 = objc_msgSend_ownerUID(self, v47, v48, v49, v50);
    v53 = v52;
    v61 = objc_msgSend_calculationEngine(self, v52, v54, v55, v56);
    if (!v61)
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSTPencilAnnotationOwner _indexesForRows:]", v59, v60);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v63, v67, 432, 0, "invalid nil value for '%{public}s'", "calcEngine");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = sub_2213D74A4;
    v95 = sub_2213D74B4;
    v96 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v57, v58, v59, v60);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2213D74BC;
    v83[3] = &unk_278464638;
    v90 = v34;
    v86 = v44;
    v87 = v46;
    v73 = v61;
    v88 = v51;
    v89 = v53;
    v84 = v73;
    v85 = &v91;
    objc_msgSend_enumerateRangesUsingBlock_(v4, v74, v83, v75, v76);
    v81 = objc_msgSend_copy(v92[5], v77, v78, v79, v80);

    _Block_object_dispose(&v91, 8);
  }

  else
  {
    v81 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v9, v10, v11, v12);
  }

  return v81;
}

- (void)_enumerateIndexesIntersectingRegion:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_count(self->_annotations, v8, v9, v10, v11);
  if (v6 && v12 && (objc_msgSend_isEmpty(v6, v13, v14, v15, v16) & 1) == 0)
  {
    v21 = objc_msgSend_tableModel(self, v17, v18, v19, v20);

    if (!v21)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTPencilAnnotationOwner _enumerateIndexesIntersectingRegion:block:]", v24, v25);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 458, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    v37 = objc_msgSend_tableModel(self, v22, v23, v24, v25);
    v42 = objc_msgSend_tableUID(v37, v38, v39, v40, v41);
    v93 = v43;
    v44 = v42;

    v49 = objc_msgSend_ownerUID(self, v45, v46, v47, v48);
    v51 = v50;
    v58 = objc_msgSend_calculationEngine(self, v50, v52, v53, v54);
    if (!v58)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTPencilAnnotationOwner _enumerateIndexesIntersectingRegion:block:]", v56, v57);
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v62, v63);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 462, 0, "invalid nil value for '%{public}s'", "calcEngine");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    }

    v70 = v6;
    v75 = objc_msgSend_tableModel(self, v71, v72, v73, v74);
    v80 = objc_msgSend_mergeOwner(v75, v76, v77, v78, v79);

    if (objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v80, v81, v70, v82, v83))
    {
      v87 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v80, v84, v70, v85, v86);

      v70 = v87;
    }

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_2213D797C;
    v94[3] = &unk_278464660;
    v99 = v44;
    v100 = v93;
    v88 = v58;
    v101 = v49;
    v102 = v51;
    v95 = v88;
    v96 = self;
    v98 = v7;
    v89 = v70;
    v97 = v89;
    objc_msgSend_enumerateCellRangesUsingBlock_(v89, v90, v94, v91, v92);
  }
}

- (id)_indexesContainedByRegion:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2213D74A4;
  v22 = sub_2213D74B4;
  v23 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213D7CA0;
  v17[3] = &unk_278464688;
  v17[4] = &v18;
  objc_msgSend__enumerateIndexesIntersectingRegion_block_(self, v9, v4, v17, v10);
  v15 = objc_msgSend_copy(v19[5], v11, v12, v13, v14);
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)_indexesIntersectingButNotContainingBaseCellRegion:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_2213D74A4;
  v27 = sub_2213D74B4;
  v28 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v13 = objc_msgSend_boundingCellRange(v4, v9, v10, v11, v12);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2213D7E94;
  v22[3] = &unk_2784646B0;
  v22[5] = v13;
  v22[6] = v14;
  v22[4] = &v23;
  objc_msgSend__enumerateIndexesIntersectingRegion_block_(self, v14, v4, v22, v15);
  v20 = objc_msgSend_copy(v24[5], v16, v17, v18, v19);
  _Block_object_dispose(&v23, 8);

  return v20;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3
{
  v33 = objc_msgSend_ownerUID(self, a2, a3, v3, v4);
  v34 = v7;
  v8 = sub_221119F90(a3, &v33);
  if (v8)
  {
    v13 = v8[4];
    v14 = v8[5];
    if (TSTPencilCat_init_token != -1)
    {
      sub_2216F7910();
    }

    objc_msgSend_setOwnerUID_(self, v9, v13, v14, v12);
  }

  v15 = objc_msgSend_tableModel(self, v9, v10, v11, v12);
  objc_msgSend_willModify(v15, v16, v17, v18, v19);

  v24 = objc_msgSend_formulaStore(self, v20, v21, v22, v23);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v33 = objc_msgSend_tableUID(WeakRetained, v26, v27, v28, v29);
  v34 = v30;
  objc_msgSend_remapRangeFormulasToOwnerUID_(v24, v30, &v33, v31, v32);
}

- (unint64_t)markForRollback
{
  v5 = objc_msgSend_formulaStore(self, a2, v2, v3, v4);
  v10 = objc_msgSend_markForRollback(v5, v6, v7, v8, v9);

  return v10;
}

- (void)rollbackToMark:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v5, v6, v7, v8);

  v17 = objc_msgSend_formulaStore(self, v9, v10, v11, v12);
  objc_msgSend_rollbackToMark_(v17, v13, a3, v14, v15);
}

- (TSTPencilAnnotationOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forTableModel:(id)a5
{
  v48 = a4;
  v8 = a5;
  v9 = TSKUIDStruct::loadFromMessage();
  v11 = v10;
  v54 = v9;
  v55 = v10;
  if ((*(a3 + 16) & 2) != 0)
  {
    v20 = [TSTFormulaStore alloc];
    if (*(a3 + 7))
    {
      v15 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v20, v21, &v54, *(a3 + 7), v48, v48);
    }

    else
    {
      v15 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v20, v21, &v54, &TST::_FormulaStoreArchive_default_instance_, v48, v48);
    }
  }

  else
  {
    v12 = [TSTFormulaStore alloc];
    v15 = objc_msgSend_initWithOwnerUID_(v12, v13, v9, v11, v14);
  }

  v22 = v15;
  v23 = objc_msgSend_array(MEMORY[0x277D81330], v16, v17, v18, v19, v48);
  v24 = *(a3 + 8);
  if (objc_msgSend_formulaCount(v22, v25, v26, v27, v28) != v24)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTPencilAnnotationOwner initWithArchive:unarchiver:forTableModel:]", v30, v31);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 716, 0, "Mismatched number of annotations and formulas.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  if (v24)
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_2213D8428;
    v50[3] = &unk_278464700;
    v51 = v22;
    v52 = v23;
    v53 = v8;
    v43 = v49;
    v44 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v43, v45, a3 + 24, v44, 0, v50);
  }

  v46 = objc_msgSend_initWithTableModel_ownerUID_annotations_formulaStore_(self, v29, v8, v54, v55, v23, v22);

  return v46;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 6);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0300](v8);
    *(a3 + 6) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v7);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(a3 + 4) |= 2u;
    v12 = *(a3 + 7);
    if (!v12)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v13);
      *(a3 + 7) = v12;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v9, v12, v6, v10);
  }

  annotations = self->_annotations;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_2213D87D4;
  v27 = &unk_278464728;
  v15 = v6;
  v28 = v15;
  v29 = a3;
  objc_msgSend_foreach_(annotations, v16, &v24, v17, v18);
  if (objc_msgSend_count(self->_annotations, v19, v20, v21, v22, v24, v25, v26, v27))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v15, v23, 0x300020000000ALL, *MEMORY[0x277D809A0], @"TSKCellPencilAnnotations");
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

@end