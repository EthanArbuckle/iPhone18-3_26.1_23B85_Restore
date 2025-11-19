@interface TSTConditionalStyleFormulaOwner
+ (id)allCondStyleFormulasForTable:(id)a3;
- (BOOL)checkConditionForCellID:(TSUCellCoord)a3 withConditionalStyle:(id)a4 withIndex:(unint64_t *)a5;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5;
- (TSKUIDStruct)ownerUID;
- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)a3;
- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)a3 ownerUID:(const TSKUIDStruct *)a4;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (void)addFormulaForConditionalStyle:(id)a3 atCellID:(TSUCellCoord)a4;
- (void)changedConditionForCellID:(TSUCellCoord)a3;
- (void)removeFormulasInRange:(TSUCellRect)a3;
- (void)replaceFormulaForConditionalStyle:(id)a3 atCellID:(TSUCellCoord)a4;
@end

@implementation TSTConditionalStyleFormulaOwner

- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  v38.receiver = self;
  v38.super_class = TSTConditionalStyleFormulaOwner;
  v7 = [(TSTConditionalStyleFormulaOwner *)&v38 init];
  v11 = v7;
  if (v7)
  {
    v7->_tableModel = v6;
    if (*a4 == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConditionalStyleFormulaOwner initWithTableModel:ownerUID:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleFormulaOwner.mm", v15, v16);
      v37._lower = objc_msgSend_tableUID(v6, v18, v19, v20, v21);
      v37._upper = v22;
      v23 = TSKUIDStruct::description(&v37);
      v28 = objc_msgSend_tableName(v6, v24, v25, v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v29, v13, v17, 60, 0, "TSTConditionalStyleFormulaOwner: requires a valid ownerUID, table is: %@ (%@)", v23, v28);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }

    v11->_ownerUID = *a4;
    v34 = objc_alloc_init(TSCECellCoordinateVector);
    cellsToInvalidate = v11->_cellsToInvalidate;
    v11->_cellsToInvalidate = v34;
  }

  return v11;
}

- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)a3
{
  v4 = a3;
  *&v17 = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
  *(&v17 + 1) = v9;
  v18[0] = sub_2212C4930(&v17, 3, v10, v11, v12);
  v18[1] = v13;
  v15 = objc_msgSend_initWithTableModel_ownerUID_(self, v13, v4, v18, v14);

  return v15;
}

- (BOOL)checkConditionForCellID:(TSUCellCoord)a3 withConditionalStyle:(id)a4 withIndex:(unint64_t *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v12 = objc_msgSend_calcEngine(self->_tableModel, v8, v9, v10, v11);

  if (v12)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = objc_msgSend_currentRules(v34, v13, v14, v15, v16);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v35, v39, 16);
    if (v23)
    {
      v33 = a5;
      v24 = 0;
      v25 = *v36;
      while (2)
      {
        v26 = 0;
        v27 = v24;
        v24 += v23;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v17);
          }

          v28 = *(*(&v35 + 1) + 8 * v26);
          v29 = objc_msgSend_calcEngine(self->_tableModel, v19, v20, v21, v22, v33);
          LODWORD(v28) = objc_msgSend_evaluateFormulaAtCellID_withCalcEngine_onOwnerUID_(v28, v30, *&a3, v29, &self->_ownerUID);

          if (v28)
          {
            *v33 = v27;
            v31 = 1;
            goto LABEL_12;
          }

          ++v27;
          ++v26;
        }

        while (v23 != v26);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v35, v39, 16);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0;
LABEL_12:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)addFormulaForConditionalStyle:(id)a3 atCellID:(TSUCellCoord)a4
{
  v17 = a4;
  v9 = a3;
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    *&v16.var0 = objc_msgSend_tableUID(self->_tableModel, v5, v6, v7, v8);
    v16.var6._lower = v11;
    v12 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_hostCellID_(v9, v11, calcEngine, &v16, &v17);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v16, 0, 1);
    v13 = self->_calcEngine;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v15, &v16);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v13, v14, &v17, &self->_ownerUID, v12, &v15);
  }
}

- (void)removeFormulasInRange:(TSUCellRect)a3
{
  calcEngine = self->_calcEngine;
  v12[0] = j__TSUCellRectToTSCERangeCoordinate(*&a3.origin, *&a3.size);
  v12[1] = v5;
  if (calcEngine)
  {
    objc_msgSend_formulaCoordsInRange_inOwner_(calcEngine, v5, v12, &self->_ownerUID, v6);
    v10 = v13;
    v11 = v14;
    if (v13 != v14)
    {
      do
      {
        objc_msgSend_removeFormulaAtCellID_(self, v7, *v10++, v8, v9);
      }

      while (v10 != v11);
      v10 = v13;
    }

    if (v10)
    {
      v14 = v10;
      operator delete(v10);
    }
  }
}

- (void)replaceFormulaForConditionalStyle:(id)a3 atCellID:(TSUCellCoord)a4
{
  v12 = a3;
  objc_msgSend_removeFormulaAtCellID_(self, v6, *&a4, v7, v8);
  if (v12)
  {
    objc_msgSend_addFormulaForConditionalStyle_atCellID_(self, v9, v12, *&a4, v11);
  }

  objc_msgSend_addCellCoordinate_(self->_cellsToInvalidate, v9, *&a4, v10, v11);
}

- (void)changedConditionForCellID:(TSUCellCoord)a3
{
  v5 = a3;
  ownerUID = self->_ownerUID;
  objc_msgSend_markCellRefAsDirty_(self->_calcEngine, a2, &v5, v3, v4);
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  self->_calcEngine = a3;
  v5 = 3;
  return objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(a3, a2, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, a4->_lower, a4->_upper, v5);
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5
{
  if (objc_msgSend_shouldAbortRecalculation(a4, a2, *&a3, a4, *&a5.var0))
  {
    v12 = a5.var0 & 0x5F | 0x20;
    v13 = 0x80;
  }

  else
  {
    v14 = objc_msgSend_cellsPendingWrite(self->_tableModel, v8, v9, v10, v11);
    v18 = objc_msgSend_cellAtCellID_(v14, v15, *&a3, v16, v17);

    if (v18)
    {
      v27 = objc_msgSend_copy(v18, v19, v20, v21, v22);
    }

    else
    {
      v27 = objc_msgSend_newCell(self->_tableModel, v19, v20, v21, v22);
      objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v28, v27, *&a3, 1);
    }

    v54 = 0;
    v30 = objc_msgSend_conditionalStyle(v27, v23, v24, v25, v26);
    if (v30)
    {
      if (objc_msgSend_checkConditionForCellID_withConditionalStyle_withIndex_(self, v29, *&a3, v30, &v54))
      {
        v35 = objc_msgSend_conditionalStyleAppliedRule(v27, v31, v32, v33, v34);
        v36 = v35 != v54;
        objc_msgSend_setConditionalStyleAppliedRule_(v27, v37, v54, v38, v39);
      }

      else
      {
        v36 = objc_msgSend_conditionalStyleAppliedRule(v27, v31, v32, v33, v34) != 15;
        objc_msgSend_setConditionalStyleAppliedRule_(v27, v44, 15, v45, v46);
      }

      if (v36)
      {
        v47 = objc_msgSend_cellsPendingWrite(self->_tableModel, v40, v41, v42, v43);
        objc_msgSend_setCell_atCellID_(v47, v48, v27, *&a3, v49);

        objc_msgSend_addCellCoordinate_(self->_cellsToInvalidate, v50, *&a3, v51, v52);
      }
    }

    v13 = 0;
    v12 = a5.var0 & 0x5F;
  }

  return (v13 | v12);
}

+ (id)allCondStyleFormulasForTable:(id)a3
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, v3, v4);

  return v5;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end