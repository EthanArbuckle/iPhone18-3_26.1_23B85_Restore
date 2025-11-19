@interface TSCERewritingMinion
- (TSCERewritingMinion)initWithCalcEngine:(id)a3;
- (id).cxx_construct;
- (void)addPendingCellRemovalAt:(const TSCECellRef *)a3;
- (void)addRewrittenCellAt:(const TSCECellRef *)a3;
- (void)flushAllChanges;
- (void)markCellRefAsDirty:(const TSCECellRef *)a3;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)a3;
- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
@end

@implementation TSCERewritingMinion

- (TSCERewritingMinion)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSCERewritingMinion;
  v5 = [(TSCERewritingMinion *)&v11 init];
  if (v5)
  {
    v6 = [TSCEFormulasToSet alloc];
    v8 = objc_msgSend_initWithCalcEngine_forMinion_options_(v6, v7, v4, v5, 15);
    formulasToSet = v5->_formulasToSet;
    v5->_formulasToSet = v8;
  }

  return v5;
}

- (void)addRewrittenCellAt:(const TSCECellRef *)a3
{
  v3 = *&a3->coordinate == 0x7FFFFFFF || (*&a3->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && *&a3->_tableUID != 0)
  {
    TSCECellRefSet::addCellRef(&self->_rewrittenCells, a3);

    TSCECellRefSet::removeCellRef(&self->_pendingCellsToRemove, a3);
  }
}

- (void)addPendingCellRemovalAt:(const TSCECellRef *)a3
{
  v3 = *&a3->coordinate == 0x7FFFFFFF || (*&a3->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && *&a3->_tableUID != 0 && (TSCECellRefSet::containsCellRef(&self->_rewrittenCells, a3) & 1) == 0)
  {

    TSCECellRefSet::addCellRef(&self->_pendingCellsToRemove, a3);
  }
}

- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6
{
  v10 = a3;
  a6->var1 = 0;
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
  if ((TSCECellRefSet::isEmpty(&self->_pendingCellsToRemove) & 1) == 0)
  {
    TSCECellRefSet::removeCellRefs(&self->_pendingCellsToRemove, &self->_rewrittenCells);
    objc_msgSend_removeFormulasAt_(self, v7, &self->_pendingCellsToRemove, v8, v9);
  }

  formulasToSet = self->_formulasToSet;

  objc_msgSend_flushAllFormulaChanges(formulasToSet, v3, v4, v5, v6);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end