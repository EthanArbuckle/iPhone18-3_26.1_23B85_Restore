@interface TSCETokenFormulaNode
- (TSCETokenFormulaNode)initWithIsOptional:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCETokenFormulaNode

- (TSCETokenFormulaNode)initWithIsOptional:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TSCETokenFormulaNode;
  result = [(TSCEFormulaNode *)&v5 initWithNodeType:7];
  if (result)
  {
    *(&result->super._nodeType + 1) = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCETokenFormulaNode;
  result = [(TSCETokenFormulaNode *)&v5 copy];
  *(result + 41) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTTokenElement::appendTokenElement(a3, *(&self->super._nodeType + 1), a3, a4, a5);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

@end