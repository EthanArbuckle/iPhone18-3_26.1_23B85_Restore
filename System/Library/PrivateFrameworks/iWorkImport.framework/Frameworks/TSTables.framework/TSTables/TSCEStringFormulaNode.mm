@interface TSCEStringFormulaNode
- (TSCEStringFormulaNode)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEStringFormulaNode

- (TSCEStringFormulaNode)initWithString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCEStringFormulaNode;
  v9 = [(TSCEFormulaNode *)&v13 initWithNodeType:3];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    value = v9->_value;
    v9->_value = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCEStringFormulaNode;
  v4 = [(TSCEStringFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_value, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTStringElement::appendStringElement(a3, self->_value, &a3->var0);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

@end