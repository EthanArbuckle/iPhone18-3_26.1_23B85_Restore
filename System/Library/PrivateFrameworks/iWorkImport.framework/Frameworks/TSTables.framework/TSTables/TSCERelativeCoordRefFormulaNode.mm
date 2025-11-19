@interface TSCERelativeCoordRefFormulaNode
- (TSCECrossTableReference)crossTableRef;
- (TSCERelativeCoordRefFormulaNode)initWithTableUID:(TSKUIDStruct)a3 refFlags:(const TSCEASTRefFlags *)a4 relativeCellCoord:(const TSCERelativeCellCoordinate *)a5 undoTractList:(id)a6;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCERelativeCoordRefFormulaNode

- (TSCERelativeCoordRefFormulaNode)initWithTableUID:(TSKUIDStruct)a3 refFlags:(const TSCEASTRefFlags *)a4 relativeCellCoord:(const TSCERelativeCellCoordinate *)a5 undoTractList:(id)a6
{
  upper = a3._upper;
  lower = a3._lower;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = TSCERelativeCoordRefFormulaNode;
  v13 = [(TSCEFormulaNode *)&v16 initWithNodeType:11];
  v14 = v13;
  if (v13)
  {
    *(v13 + 44) = *a5;
    v13[80] = a4->_flags;
    *(v13 + 7) = lower;
    *(v13 + 8) = upper;
    objc_storeStrong(v13 + 9, a6);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
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
  TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(a3, &self->_tableUID, (&self->super._nodeType + 4), &v19, self->_undoTractList, a6);
  v13 = objc_msgSend_whitespaceBefore(self, v9, v10, v11, v12);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v13);

  v18 = objc_msgSend_whitespaceAfter(self, v14, v15, v16, v17);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v18);
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