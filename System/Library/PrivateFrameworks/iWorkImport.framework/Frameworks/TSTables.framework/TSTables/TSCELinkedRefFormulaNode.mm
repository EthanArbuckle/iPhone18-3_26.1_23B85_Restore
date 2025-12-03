@interface TSCELinkedRefFormulaNode
- (TSCELinkedRefFormulaNode)initWithLinkTable:(TSKUIDStruct)table linkTag:(unsigned __int8)tag;
- (TSKUIDStruct)tableUID;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCELinkedRefFormulaNode

- (TSCELinkedRefFormulaNode)initWithLinkTable:(TSKUIDStruct)table linkTag:(unsigned __int8)tag
{
  upper = table._upper;
  lower = table._lower;
  v8.receiver = self;
  v8.super_class = TSCELinkedRefFormulaNode;
  result = [(TSCEFormulaNode *)&v8 initWithNodeType:18];
  if (result)
  {
    result->_tableUID._lower = lower;
    result->_tableUID._upper = upper;
    result->_linkTag = tag;
  }

  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTLinkedRefElement::appendLinkedCellRefElement(array, &self->_tableUID, array, ref, table);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
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