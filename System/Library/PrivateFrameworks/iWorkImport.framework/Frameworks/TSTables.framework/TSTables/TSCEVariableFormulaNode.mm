@interface TSCEVariableFormulaNode
- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEVariableFormulaNode

- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)a3 identifier:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = TSCEVariableFormulaNode;
  v7 = [(TSCEFormulaNode *)&v16 initWithNodeType:24];
  v12 = v7;
  if (v7)
  {
    v7->_symbol = a3;
    v13 = objc_msgSend_copy(v6, v8, v9, v10, v11);
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTVariableElement::appendVariableElement(a3, self->_symbol, a3, a4, a5);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

@end