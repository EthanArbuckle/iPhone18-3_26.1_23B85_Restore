@interface TSCERelativeCoordRefFormulaNode
- (TSCECrossTableReference)crossTableRef;
- (TSCERelativeCoordRefFormulaNode)initWithTableUID:(TSKUIDStruct)d refFlags:(const TSCEASTRefFlags *)flags relativeCellCoord:(const TSCERelativeCellCoordinate *)coord undoTractList:(id)list;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCERelativeCoordRefFormulaNode

- (TSCERelativeCoordRefFormulaNode)initWithTableUID:(TSKUIDStruct)d refFlags:(const TSCEASTRefFlags *)flags relativeCellCoord:(const TSCERelativeCellCoordinate *)coord undoTractList:(id)list
{
  upper = d._upper;
  lower = d._lower;
  listCopy = list;
  v16.receiver = self;
  v16.super_class = TSCERelativeCoordRefFormulaNode;
  v13 = [(TSCEFormulaNode *)&v16 initWithNodeType:11];
  v14 = v13;
  if (v13)
  {
    *(v13 + 44) = *coord;
    v13[80] = flags->_flags;
    *(v13 + 7) = lower;
    *(v13 + 8) = upper;
    objc_storeStrong(v13 + 9, list);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCERelativeCoordRefFormulaNode;
  v4 = [(TSCERelativeCoordRefFormulaNode *)&v12 copy];
  *(v4 + 44) = *(&self->super._nodeType + 4);
  v4[80] = self->_refFlags._flags;
  *(v4 + 56) = self->_tableUID;
  v9 = objc_msgSend_copy(self->_undoTractList, v5, v6, v7, v8);
  v10 = *(v4 + 9);
  *(v4 + 9) = v9;

  return v4;
}

- (TSCECrossTableReference)crossTableRef
{
  v8 = objc_msgSend_relativeCellCoord(self, a3, v3, v4, v5);
  v13 = objc_msgSend_tableUID(self, v9, v10, v11, v12);
  v15 = v14;
  v20._flags = objc_msgSend_preserveFlags(self, v14, v16, v17, v18);
  retstr->var0._lower = v13;
  retstr->var0._upper = v15;
  retstr->var1 = v8;
  return TSCERelativeCellCoordinate::setPreserveFlags(&retstr->var1, &v20);
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  if (BYTE2(self->_relativeCellCoord._row))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v19._row) = v8 | HIBYTE(self->_relativeCellCoord._row);
  TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(array, &self->_tableUID, (&self->super._nodeType + 4), &v19, self->_undoTractList, engine);
  v13 = objc_msgSend_whitespaceBefore(self, v9, v10, v11, v12);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v13);

  v18 = objc_msgSend_whitespaceAfter(self, v14, v15, v16, v17);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v18);
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 44) = 0x7FFF7FFFFFFFLL;
  *(self + 80) = 0;
  return self;
}

@end