@interface TSCECategoryRefFormulaNode
- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCECategoryRefFormulaNode

- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCECategoryRefFormulaNode;
  v6 = [(TSCEFormulaNode *)&v9 initWithNodeType:19];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryRef, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCECategoryRefFormulaNode;
  v4 = [(TSCECategoryRefFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_categoryRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTCategoryRefElement::appendCategoryRefElement(a3, self->_categoryRef, a3);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

@end