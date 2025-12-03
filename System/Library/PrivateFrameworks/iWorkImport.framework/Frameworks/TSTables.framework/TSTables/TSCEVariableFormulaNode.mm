@interface TSCEVariableFormulaNode
- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)symbol identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEVariableFormulaNode

- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)symbol identifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = TSCEVariableFormulaNode;
  v7 = [(TSCEFormulaNode *)&v16 initWithNodeType:24];
  v12 = v7;
  if (v7)
  {
    v7->_symbol = symbol;
    v13 = objc_msgSend_copy(identifierCopy, v8, v9, v10, v11);
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEVariableFormulaNode;
  v4 = [(TSCEVariableFormulaNode *)&v12 copy];
  v4[14] = self->_symbol;
  v9 = objc_msgSend_copy(self->_identifier, v5, v6, v7, v8);
  v10 = *(v4 + 6);
  *(v4 + 6) = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTVariableElement::appendVariableElement(array, self->_symbol, array, ref, table);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end