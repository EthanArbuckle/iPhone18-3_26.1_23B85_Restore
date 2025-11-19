@interface TSCEEmptyFormulaNode
- (id)copyWithZone:(_NSZone *)a3;
- (id)initAsEmptyNode;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEEmptyFormulaNode

- (id)initAsEmptyNode
{
  v3.receiver = self;
  v3.super_class = TSCEEmptyFormulaNode;
  return [(TSCEFormulaNode *)&v3 initWithNodeType:6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = TSCEEmptyFormulaNode;
  return [(TSCEEmptyFormulaNode *)&v4 copy];
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 23, a3, a4, a5);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

@end