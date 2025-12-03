@interface TSCERewritingMinion
- (TSCERewritingMinion)initWithCalcEngine:(id)engine;
- (id).cxx_construct;
- (void)addPendingCellRemovalAt:(const TSCECellRef *)at;
- (void)addRewrittenCellAt:(const TSCECellRef *)at;
- (void)flushAllChanges;
- (void)markCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
@end

@implementation TSCERewritingMinion

- (TSCERewritingMinion)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = TSCERewritingMinion;
  v5 = [(TSCERewritingMinion *)&v11 init];
  if (v5)
  {
    v6 = [TSCEFormulasToSet alloc];
    v8 = objc_msgSend_initWithCalcEngine_forMinion_options_(v6, v7, engineCopy, v5, 15);
    formulasToSet = v5->_formulasToSet;
    v5->_formulasToSet = v8;
  }

  return v5;
}

- (void)addRewrittenCellAt:(const TSCECellRef *)at
{
  v3 = *&at->coordinate == 0x7FFFFFFF || (*&at->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && *&at->_tableUID != 0)
  {
    TSCECellRefSet::addCellRef(&self->_rewrittenCells, at);

    TSCECellRefSet::removeCellRef(&self->_pendingCellsToRemove, at);
  }
}

- (void)addPendingCellRemovalAt:(const TSCECellRef *)at
{
  v3 = *&at->coordinate == 0x7FFFFFFF || (*&at->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && *&at->_tableUID != 0 && (TSCECellRefSet::containsCellRef(&self->_rewrittenCells, at) & 1) == 0)
  {

    TSCECellRefSet::addCellRef(&self->_pendingCellsToRemove, at);
  }
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  options->var1 = 0;
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