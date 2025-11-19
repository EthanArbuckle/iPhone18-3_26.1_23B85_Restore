@interface TSCELinkedRefFormulaNode
- (TSCELinkedRefFormulaNode)initWithLinkTable:(TSKUIDStruct)a3 linkTag:(unsigned __int8)a4;
- (TSKUIDStruct)tableUID;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCELinkedRefFormulaNode

- (TSCELinkedRefFormulaNode)initWithLinkTable:(TSKUIDStruct)a3 linkTag:(unsigned __int8)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v8.receiver = self;
  v8.super_class = TSCELinkedRefFormulaNode;
  result = [(TSCEFormulaNode *)&v8 initWithNodeType:18];
  if (result)
  {
    result->_tableUID._lower = lower;
    result->_tableUID._upper = upper;
    result->_linkTag = a4;
  }

  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  TSCEASTLinkedRefElement::appendLinkedCellRefElement(a3, &self->_tableUID, a3, a4, a5);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v17);
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end