@interface TSCENumberFormulaNode
- (TSCENumberFormulaNode)initWithNumber:(const TSUDecimal *)a3;
- (TSUDecimal)value;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCENumberFormulaNode

- (TSCENumberFormulaNode)initWithNumber:(const TSUDecimal *)a3
{
  v5.receiver = self;
  v5.super_class = TSCENumberFormulaNode;
  result = [(TSCEFormulaNode *)&v5 initWithNodeType:1];
  if (result)
  {
    result->_value = *a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCENumberFormulaNode;
  result = [(TSCENumberFormulaNode *)&v5 copy];
  *(result + 3) = self->_value;
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTNumberElement::appendNumberElement(a3, &self->_value, a3, a4, a5);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

- (TSUDecimal)value
{
  p_value = &self->_value;
  v3 = self->_value._decimal.w[0];
  v4 = p_value->_decimal.w[1];
  result._decimal.w[1] = v4;
  result._decimal.w[0] = v3;
  return result;
}

@end