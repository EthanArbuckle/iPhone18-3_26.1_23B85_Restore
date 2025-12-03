@interface TSCEEmptyFormulaNode
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsEmptyNode;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEEmptyFormulaNode

- (id)initAsEmptyNode
{
  v3.receiver = self;
  v3.super_class = TSCEEmptyFormulaNode;
  return [(TSCEFormulaNode *)&v3 initWithNodeType:6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = TSCEEmptyFormulaNode;
  return [(TSCEEmptyFormulaNode *)&v4 copy];
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTTagOnlyElement::appendTagOnlyElement(array, 23, array, ref, table);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end