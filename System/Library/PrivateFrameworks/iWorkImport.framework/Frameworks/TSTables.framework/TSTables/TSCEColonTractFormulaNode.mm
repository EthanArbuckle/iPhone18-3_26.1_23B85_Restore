@interface TSCEColonTractFormulaNode
- (TSCEColonTractFormulaNode)initWithColonTract:(id)a3 refFlags:(const TSCEASTRefFlags *)a4 colonTractFlags:(const TSCEASTColonTractFlags *)a5 undoTractList:(id)a6;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEColonTractFormulaNode

- (TSCEColonTractFormulaNode)initWithColonTract:(id)a3 refFlags:(const TSCEASTRefFlags *)a4 colonTractFlags:(const TSCEASTColonTractFlags *)a5 undoTractList:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = TSCEColonTractFormulaNode;
  v13 = [(TSCEFormulaNode *)&v16 initWithNodeType:13];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_relativeTractRef, a3);
    objc_storeStrong(&v14->_undoTractList, a6);
    v14->_refFlags = a4->_flags;
    v14->_colonTractFlags = a5->_flags;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = TSCEColonTractFormulaNode;
  v4 = [(TSCEColonTractFormulaNode *)&v18 copy];
  v9 = objc_msgSend_copy(self->_relativeTractRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  v15 = objc_msgSend_copy(self->_undoTractList, v11, v12, v13, v14);
  v16 = v4[7];
  v4[7] = v15;

  *(v4 + 64) = self->_refFlags._flags;
  *(v4 + 65) = self->_colonTractFlags._flags;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTColonTractElement::appendColonTractElement(a3, self->_relativeTractRef, self->_undoTractList, a4);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

- (id).cxx_construct
{
  *(self + 64) = 0;
  *(self + 65) = 0;
  return self;
}

@end