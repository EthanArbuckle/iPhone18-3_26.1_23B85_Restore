@interface TSCENumberFormulaNode
- (TSCENumberFormulaNode)initWithNumber:(const TSUDecimal *)number;
- (TSUDecimal)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCENumberFormulaNode

- (TSCENumberFormulaNode)initWithNumber:(const TSUDecimal *)number
{
  v5.receiver = self;
  v5.super_class = TSCENumberFormulaNode;
  result = [(TSCEFormulaNode *)&v5 initWithNodeType:1];
  if (result)
  {
    result->_value = *number;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCENumberFormulaNode;
  result = [(TSCENumberFormulaNode *)&v5 copy];
  *(result + 3) = self->_value;
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTNumberElement::appendNumberElement(array, &self->_value, array, ref, table);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
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