@interface TSCEViewTractRefFormulaNode
- (TSCEViewTractRefFormulaNode)initWithViewTractRef:(id)ref refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEViewTractRefFormulaNode

- (TSCEViewTractRefFormulaNode)initWithViewTractRef:(id)ref refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags
{
  refCopy = ref;
  v13.receiver = self;
  v13.super_class = TSCEViewTractRefFormulaNode;
  v10 = [(TSCEFormulaNode *)&v13 initWithNodeType:20];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewTractRef, ref);
    v11->_refFlags = flags->_flags;
    v11->_colonTractFlags = tractFlags->_flags;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEViewTractRefFormulaNode;
  v4 = [(TSCEViewTractRefFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_viewTractRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  *(v4 + 56) = self->_refFlags._flags;
  *(v4 + 57) = self->_colonTractFlags._flags;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTViewTractRefElement::appendViewTractRefElement(array, self->_viewTractRef, array);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

- (id).cxx_construct
{
  *(self + 56) = 0;
  *(self + 57) = 0;
  return self;
}

@end