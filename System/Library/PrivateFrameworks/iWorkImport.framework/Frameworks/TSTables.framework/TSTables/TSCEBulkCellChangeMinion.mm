@interface TSCEBulkCellChangeMinion
- (TSCEBulkCellChangeMinion)initWithCalcEngine:(id)engine;
- (void)markCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
@end

@implementation TSCEBulkCellChangeMinion

- (TSCEBulkCellChangeMinion)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = TSCEBulkCellChangeMinion;
  v5 = [(TSCEBulkCellChangeMinion *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (engineCopy)
    {
      v7 = [TSCEFormulasToSet alloc];
      v9 = objc_msgSend_initWithCalcEngine_forMinion_options_(v7, v8, engineCopy, v6, 15);
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

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, options);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(formulasToSet, v12, formulaCopy, coord, owner, &v13);
}

- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  precedentsCopy = precedents;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, options);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(formulasToSet, v12, at, owner, precedentsCopy, &v13);
}

- (void)markCellRefAsDirty:(const TSCECellRef *)dirty
{
  v9 = objc_msgSend_calcEngine(self->_formulasToSet, a2, dirty, v3, v4);
  objc_msgSend_markCellRefAsDirty_(v9, v6, dirty, v7, v8);
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v9 = objc_msgSend_calcEngine(self->_formulasToSet, a2, dirty, v3, v4);
  objc_msgSend_markRangeRefAsDirty_(v9, v6, dirty, v7, v8);
}

@end