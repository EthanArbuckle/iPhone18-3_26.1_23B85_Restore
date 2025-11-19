@interface TSCEViewTractRefFormulaNode
- (TSCEViewTractRefFormulaNode)initWithViewTractRef:(id)a3 refFlags:(const TSCEASTRefFlags *)a4 colonTractFlags:(const TSCEASTColonTractFlags *)a5;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEViewTractRefFormulaNode

- (TSCEViewTractRefFormulaNode)initWithViewTractRef:(id)a3 refFlags:(const TSCEASTRefFlags *)a4 colonTractFlags:(const TSCEASTColonTractFlags *)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TSCEViewTractRefFormulaNode;
  v10 = [(TSCEFormulaNode *)&v13 initWithNodeType:20];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewTractRef, a3);
    v11->_refFlags = a4->_flags;
    v11->_colonTractFlags = a5->_flags;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCEViewTractRefFormulaNode;
  v4 = [(TSCEViewTractRefFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_viewTractRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  *(v4 + 56) = self->_refFlags._flags;
  *(v4 + 57) = self->_colonTractFlags._flags;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTViewTractRefElement::appendViewTractRefElement(a3, self->_viewTractRef, a3);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

- (id).cxx_construct
{
  *(self + 56) = 0;
  *(self + 57) = 0;
  return self;
}

@end