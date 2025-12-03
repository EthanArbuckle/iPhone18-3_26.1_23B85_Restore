@interface TSCECategoryRefFormulaNode
- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCECategoryRefFormulaNode

- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)ref
{
  refCopy = ref;
  v9.receiver = self;
  v9.super_class = TSCECategoryRefFormulaNode;
  v6 = [(TSCEFormulaNode *)&v9 initWithNodeType:19];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryRef, ref);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCECategoryRefFormulaNode;
  v4 = [(TSCECategoryRefFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_categoryRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTCategoryRefElement::appendCategoryRefElement(array, self->_categoryRef, array);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end