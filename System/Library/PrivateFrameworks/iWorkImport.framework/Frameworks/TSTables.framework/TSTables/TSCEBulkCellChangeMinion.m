@interface TSCEBulkCellChangeMinion
- (TSCEBulkCellChangeMinion)initWithCalcEngine:(id)a3;
- (void)markCellRefAsDirty:(const TSCECellRef *)a3;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)a3;
- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
@end

@implementation TSCEBulkCellChangeMinion

- (TSCEBulkCellChangeMinion)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSCEBulkCellChangeMinion;
  v5 = [(TSCEBulkCellChangeMinion *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [TSCEFormulasToSet alloc];
      v9 = objc_msgSend_initWithCalcEngine_forMinion_options_(v7, v8, v4, v6, 15);
      formulasToSet = v6->_formulasToSet;
      v6->_formulasToSet = v9;
    }

    else
    {
      formulasToSet = v5;
      v6 = 0;
    }
  }

  return v6;
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

@end