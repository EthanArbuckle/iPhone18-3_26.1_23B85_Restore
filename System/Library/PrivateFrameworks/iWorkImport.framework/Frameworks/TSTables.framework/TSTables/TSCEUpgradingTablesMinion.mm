@interface TSCEUpgradingTablesMinion
- (TSCEUpgradingTablesMinion)initWithCalcEngine:(id)a3;
- (void)flushAllChanges;
- (void)markCellRefAsDirty:(const TSCECellRef *)a3;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)a3;
- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
@end

@implementation TSCEUpgradingTablesMinion

- (TSCEUpgradingTablesMinion)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSCEUpgradingTablesMinion;
  v5 = [(TSCEUpgradingTablesMinion *)&v11 init];
  if (v5)
  {
    v6 = [TSCEFormulasToSet alloc];
    v8 = objc_msgSend_initWithCalcEngine_forMinion_options_(v6, v7, v4, v5, 2);
    formulasToSet = v5->_formulasToSet;
    v5->_formulasToSet = v8;
  }

  return v5;
}

- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6
{
  v10 = a3;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, a6);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(formulasToSet, v12, v10, a4, a5, &v13);
}

- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6
{
  v10 = a5;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, a6);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(formulasToSet, v12, a3, a4, v10, &v13);
}

- (void)markCellRefAsDirty:(const TSCECellRef *)a3
{
  v9 = objc_msgSend_calcEngine(self->_formulasToSet, a2, a3, v3, v4);
  objc_msgSend_markCellRefAsDirty_(v9, v6, a3, v7, v8);
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)a3
{
  v9 = objc_msgSend_calcEngine(self->_formulasToSet, a2, a3, v3, v4);
  objc_msgSend_markRangeRefAsDirty_(v9, v6, a3, v7, v8);
}

- (void)flushAllChanges
{
  v38 = objc_msgSend_calcEngine(self->_formulasToSet, a2, v2, v3, v4);
  objc_msgSend_beginSuppressingWillModifyCalls(v38, v6, v7, v8, v9);
  objc_msgSend_beginBatchingGroupCellDirtying(v38, v10, v11, v12, v13);
  objc_msgSend_flushRemoveFormulas(self->_formulasToSet, v14, v15, v16, v17);
  objc_msgSend_flushResetFormulas(self->_formulasToSet, v18, v19, v20, v21);
  objc_msgSend_flushReplaceFormulas(self->_formulasToSet, v22, v23, v24, v25);
  objc_msgSend_willClose(self->_formulasToSet, v26, v27, v28, v29);
  objc_msgSend_endBatchingGroupCellDirtying(v38, v30, v31, v32, v33);
  objc_msgSend_endSuppressingWillModifyCalls(v38, v34, v35, v36, v37);
}

@end