@interface TSTCategoryAggregateFormulaOwner
- (BOOL)isRegisteredWithCalcEngine:(id)a3;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5;
- (TSTCategoryAggregateFormulaOwner)initWithTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4;
- (TSTTableInfo)tableInfo;
- (id)linkedResolver;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (void)invalidateForCalcEngine:(id)a3;
- (void)setTableInfo:(id)a3;
- (void)unregisterFromCalcEngine;
- (void)writeResultsForCalcEngine:(id)a3;
@end

@implementation TSTCategoryAggregateFormulaOwner

- (TSTCategoryAggregateFormulaOwner)initWithTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v11.receiver = self;
  v11.super_class = TSTCategoryAggregateFormulaOwner;
  v6 = [(TSTCategoryAggregateFormulaOwner *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_tableUID = *a3;
    v6->_ownerUID = *a4;
    v8 = objc_alloc_init(TSTCellDictionary);
    cellsPendingWrite = v7->_cellsPendingWrite;
    v7->_cellsPendingWrite = v8;
  }

  return v7;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_calcEngine);

    if (!v4)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryAggregateFormulaOwner tableInfo]", v6, v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v11, v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 54, 0, "Someone is asking for a tableInfo, but we are not registered with the calcEngine yet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    }

    lower = self->_tableUID._lower;
    upper = self->_tableUID._upper;
    v21 = objc_loadWeakRetained(&self->_calcEngine);
    v23 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v22, lower, upper, v21);

    v24 = objc_loadWeakRetained(&self->_calcEngine);
    if (!v24 || v23)
    {
      if (v23)
      {
        objc_msgSend_setTableInfo_(self, v25, v23, v26, v27);
      }
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTCategoryAggregateFormulaOwner tableInfo]", v26, v27);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v31, v32);
      v34 = TSKUIDStruct::description(&self->_tableUID);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v29, v33, 57, 0, "Table %@ is not registered with the calcEngine yet", v34);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }
  }

  v40 = objc_loadWeakRetained(&self->_tableInfo);

  return v40;
}

- (void)setTableInfo:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_tableInfo);

    if (v6 != obj)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCategoryAggregateFormulaOwner setTableInfo:]", v8, v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 68, 0, "don't allow overwriting table info pointer, should go from nil -> info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTCategoryAggregateFormulaOwner setTableInfo:]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v27, v28);
    v30 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v25, v29, 69, 0, "Wrong class passed to setTableInfo: %@", v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = obj;
  if (obj)
  {
    objc_storeWeak(&self->_tableInfo, obj);
    v36 = obj;
  }
}

- (BOOL)isRegisteredWithCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_ownerUID(self, v5, v6, v7, v8);
  LOBYTE(self) = objc_msgSend_ownerIsRegistered_(v4, v10, *v9, v9[1], v11);

  return self;
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_storeWeak(&self->_calcEngine, v6);
    v14 = objc_msgSend_ownerUID(self, v10, v11, v12, v13);
    v8 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v6, v15, *v14, v14[1], self, 0, a4->_lower, a4->_upper, 9);
  }

  return v8;
}

- (void)unregisterFromCalcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v8 = objc_msgSend_ownerUID(self, v4, v5, v6, v7);
  objc_msgSend_unregisterOwner_(WeakRetained, v9, *v8, v8[1], v10);

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)writeResultsForCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cellsPendingWrite(self, v5, v6, v7, v8);
  v14 = objc_msgSend_cellMap(v9, v10, v11, v12, v13);

  if (objc_msgSend_count(v14, v15, v16, v17, v18))
  {
    objc_msgSend_willModify(v4, v19, v20, v21, v22);
  }

  objc_msgSend_setMayModifyValuesReferencedByFormulas_(v14, v19, 0, v21, v22);
  v27 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
  v32 = objc_msgSend_summaryModel(v27, v28, v29, v30, v31);
  objc_msgSend_setFormulaResultCellsWithCellMap_(v32, v33, v14, v34, v35);

  v40 = objc_msgSend_cellsPendingWrite(self, v36, v37, v38, v39);
  objc_msgSend_removeAllCells(v40, v41, v42, v43, v44);

  if (objc_msgSend_count(v14, v45, v46, v47, v48) && !objc_msgSend_dirtyCellCountInOwner_(v4, v49, &self->_ownerUID, v50, v51))
  {
    v56 = objc_msgSend_tableInfo(self, v52, v53, v54, v55);
    v101 = objc_msgSend_tableUID(v56, v57, v58, v59, v60);
    v102 = v61;
    objc_msgSend_summaryModelIsCleanPrecedentForTableUID_(TSCEHauntedOwner, v61, &v101, v62, v63);
    objc_msgSend_markCellRefAsDirty_(v4, v64, v103, v65, v66);

    v71 = objc_msgSend_tableInfo(self, v67, v68, v69, v70);
    v76 = objc_msgSend_pivotOwner(v71, v72, v73, v74, v75);
    shouldSkipNextAsyncSort = objc_msgSend_shouldSkipNextAsyncSort(v76, v77, v78, v79, v80);

    v90 = objc_msgSend_tableInfo(self, v82, v83, v84, v85);
    if (shouldSkipNextAsyncSort)
    {
      v91 = objc_msgSend_pivotOwner(v90, v86, v87, v88, v89);
      objc_msgSend_setShouldSkipNextAsyncSort_(v91, v92, 0, v93, v94);
    }

    else
    {
      v101 = objc_msgSend_tableUID(v90, v86, v87, v88, v89);
      v102 = v95;
      objc_msgSend_summaryModelIsCleanForSortPrecedentForTableUID_(TSCEHauntedOwner, v95, &v101, v96, v97);
      objc_msgSend_markCellRefAsDirty_(v4, v98, v103, v99, v100);
    }
  }
}

- (void)invalidateForCalcEngine:(id)a3
{
  v17 = a3;
  v8 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_baseTableModel(v8, v9, v10, v11, v12);
  objc_msgSend_invalidateForCalcEngine_(v13, v14, v17, v15, v16);
}

- (id)linkedResolver
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_baseTableModel(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5
{
  LOBYTE(updated) = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v14 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
    v19 = objc_msgSend_newCell(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_summaryModel(v14, v20, v21, v22, v23);
    objc_msgSend_getCell_atCellCoord_(v24, v25, v19, *&a3, v26);

    v128 = a3;
    v129 = *objc_msgSend_ownerUID(self, v27, v28, v29, v30);
    v127 = 0;
    if (objc_msgSend_shouldAbortRecalculation(v8, v31, v32, v33, v34))
    {
      v39 = 1;
      v40 = 1;
      goto LABEL_15;
    }

    if (!objc_msgSend_hasFormula(v19, v35, v36, v37, v38))
    {
      v39 = 0;
      v40 = 0;
      goto LABEL_15;
    }

    v54 = objc_msgSend_formulaObject(v19, v35, v36, v37, v38);
    v126 = 0;
    v59 = objc_msgSend_ownerUID(self, v55, v56, v57, v58);
    v124 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v60, v8, v59, *&a3, 0);
    objc_msgSend_setAllowAbort_(v124, v61, 1, v62, v63);
    v65 = objc_msgSend_evaluateWithContext_isInACycle_outErrorIsDueToCycle_(v54, v64, v124, updated & 1, &v126);
    *&v125[0] = a3;
    *(v125 + 8) = self->_ownerUID;
    updated = objc_msgSend_updateCalculatedPrecedents_forFormula_atCellRef_withState_(v8, v66, v124, v54, v125, updated);
    if (objc_msgSend_deepType_(v65, v67, v124, v68, v69) == 9)
    {
      v73 = objc_msgSend_errorWithContext_(v65, v70, v124, v71, v72);
      if (objc_msgSend_isAbortedError(v73, v74, v75, v76, v77))
      {
        v82 = v54;
        v39 = 1;
        v40 = 1;
LABEL_14:

LABEL_15:
        v110 = objc_msgSend_translator(v14, v35, v36, v37, v38);
        v114 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v110, v111, *&a3, v112, v113);

        if (v39)
        {

          if (v40)
          {
            v53 = updated & 0x5F | 0x20;
          }

          else
          {
            v53 = updated & 0x5F;
          }

          goto LABEL_19;
        }

        if (v114 == 0x7FFFFFFF || (v114 & 0xFFFF00000000) == 0x7FFF00000000)
        {
LABEL_29:

          v53 = updated & 0x5F;
          if (v40)
          {
            v53 |= 0x20u;
            if ((v39 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          else if (!v39)
          {
LABEL_33:
            v52 = 0;
            goto LABEL_34;
          }

LABEL_19:
          v52 = 0x80;
          goto LABEL_34;
        }

        if (v127 == 1)
        {
          v122 = objc_msgSend_cellsToInvalidateAfterRecalc(v14, v115, v116, v117, v118);
          if (v14)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v122 = objc_msgSend_cellsToInvalidateNonoverflowingAfterRecalc(v14, v115, v116, v117, v118);
          if (v14)
          {
LABEL_26:
            objc_msgSend_cellUIDForCellID_(v14, v119, v114, v120, v121);
LABEL_28:
            objc_msgSend_addCellUID_(v122, v119, v125, v120, v121);

            goto LABEL_29;
          }
        }

        memset(v125, 0, sizeof(v125));
        goto LABEL_28;
      }

      if ((objc_msgSend_isCircularReferenceError(v73, v78, v79, v80, v81) & 1) == 0)
      {
        v87 = objc_msgSend_valueToUseForSummaryCellFormulaError(v14, v83, v84, v85, v86);

        v65 = v87;
      }
    }

    objc_msgSend_updateErrorAndWarnings_forCell_(v8, v70, v65, &v128, v72);
    v92 = objc_msgSend_warnings(v65, v88, v89, v90, v91);
    v97 = objc_msgSend_count(v92, v93, v94, v95, v96);

    v102 = objc_msgSend_context(v14, v98, v99, v100, v101);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v19, v103, v65, v102, v97 != 0, &v127, 1);

    v73 = objc_msgSend_cellsPendingWrite(self, v104, v105, v106, v107);
    v82 = v54;
    objc_msgSend_setCell_atCellID_(v73, v108, v19, *&a3, v109);
    v39 = 0;
    v40 = (updated >> 5) & 1;
    goto LABEL_14;
  }

  v41 = MEMORY[0x277D81150];
  v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryAggregateFormulaOwner evaluateFormulaAt:withCalcEngine:recalcOptions:]", v12, v13);
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v44, v45);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 146, 0, "Table has no calc engine. Aborting recalculation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  v52 = 0;
  v53 = updated & 0x5F;
LABEL_34:

  return (v52 | v53);
}

@end