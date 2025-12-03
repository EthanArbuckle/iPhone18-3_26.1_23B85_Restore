@interface TSCEBooleanFormulaNode
- (TSCEBooleanFormulaNode)initWithBoolean:(BOOL)boolean;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEBooleanFormulaNode

- (TSCEBooleanFormulaNode)initWithBoolean:(BOOL)boolean
{
  v5.receiver = self;
  v5.super_class = TSCEBooleanFormulaNode;
  result = [(TSCEFormulaNode *)&v5 initWithNodeType:2];
  if (result)
  {
    *(&result->super._nodeType + 1) = boolean;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEBooleanFormulaNode;
  result = [(TSCEBooleanFormulaNode *)&v5 copy];
  *(result + 41) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTBooleanElement::appendBooleanElement(array, *(&self->super._nodeType + 1), array, ref, table);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end