@interface TSCEStringFormulaNode
- (TSCEStringFormulaNode)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEStringFormulaNode

- (TSCEStringFormulaNode)initWithString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TSCEStringFormulaNode;
  v9 = [(TSCEFormulaNode *)&v13 initWithNodeType:3];
  if (v9)
  {
    v10 = objc_msgSend_copy(stringCopy, v5, v6, v7, v8);
    value = v9->_value;
    v9->_value = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEStringFormulaNode;
  v4 = [(TSCEStringFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_value, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTStringElement::appendStringElement(array, self->_value, &array->var0);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end