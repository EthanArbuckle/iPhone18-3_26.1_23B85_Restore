@interface TSCEWhitespaceFormulaNode
- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)tag whitespace:(id)whitespace child:(id)child;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEWhitespaceFormulaNode

- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)tag whitespace:(id)whitespace child:(id)child
{
  whitespaceCopy = whitespace;
  childCopy = child;
  v19.receiver = self;
  v19.super_class = TSCEWhitespaceFormulaNode;
  v11 = [(TSCEFormulaNode *)&v19 initWithNodeType:22];
  v12 = v11;
  if (v11)
  {
    v11->_whitespaceTag = tag;
    objc_storeStrong(&v11->_whitespace, whitespace);
    v13 = objc_opt_new();
    children = v12->super._children;
    v12->super._children = v13;

    if (childCopy)
    {
      objc_msgSend_addObject_(v12->super._children, v15, childCopy, v16, v17);
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEWhitespaceFormulaNode;
  v4 = [(TSCEWhitespaceFormulaNode *)&v12 copy];
  v4[56] = self->_whitespaceTag;
  v9 = objc_msgSend_copy(self->_whitespace, v5, v6, v7, v8);
  v10 = *(v4 + 6);
  *(v4 + 6) = v9;

  return v4;
}

@end