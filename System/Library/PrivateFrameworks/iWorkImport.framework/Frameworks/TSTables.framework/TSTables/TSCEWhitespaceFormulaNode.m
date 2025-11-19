@interface TSCEWhitespaceFormulaNode
- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)a3 whitespace:(id)a4 child:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCEWhitespaceFormulaNode

- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)a3 whitespace:(id)a4 child:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TSCEWhitespaceFormulaNode;
  v11 = [(TSCEFormulaNode *)&v19 initWithNodeType:22];
  v12 = v11;
  if (v11)
  {
    v11->_whitespaceTag = a3;
    objc_storeStrong(&v11->_whitespace, a4);
    v13 = objc_opt_new();
    children = v12->super._children;
    v12->super._children = v13;

    if (v10)
    {
      objc_msgSend_addObject_(v12->super._children, v15, v10, v16, v17);
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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