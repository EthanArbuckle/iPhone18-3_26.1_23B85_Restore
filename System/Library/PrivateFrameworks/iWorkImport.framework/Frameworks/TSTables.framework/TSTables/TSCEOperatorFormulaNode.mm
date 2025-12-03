@interface TSCEOperatorFormulaNode
- (TSCEOperatorFormulaNode)initWithTag:(unsigned __int8)tag leftArg:(id)arg rightArg:(id)rightArg;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEOperatorFormulaNode

- (TSCEOperatorFormulaNode)initWithTag:(unsigned __int8)tag leftArg:(id)arg rightArg:(id)rightArg
{
  argCopy = arg;
  rightArgCopy = rightArg;
  v18.receiver = self;
  v18.super_class = TSCEOperatorFormulaNode;
  v10 = [(TSCEFormulaNode *)&v18 initWithNodeType:8];
  v11 = v10;
  if (v10)
  {
    *(&v10->super._nodeType + 1) = tag;
    v12 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v12;

    if (argCopy)
    {
      objc_msgSend_addObject_(v11->super._children, v14, argCopy, v15, v16);
    }

    if (rightArgCopy)
    {
      objc_msgSend_addObject_(v11->super._children, v14, rightArgCopy, v15, v16);
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEOperatorFormulaNode;
  result = [(TSCEOperatorFormulaNode *)&v5 copy];
  *(result + 41) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  v14 = objc_msgSend_children(self, v10, v11, v12, v13);
  if (objc_msgSend_count(v14, v15, v16, v17, v18))
  {
    v23 = objc_msgSend_objectAtIndex_(v14, v19, 0, v21, v22);
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v23, v24, array, ref, table, engineCopy);
  }

  v25 = objc_msgSend_whitespaceBefore(self, v19, v20, v21, v22);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v25);

  if (objc_msgSend_count(v14, v26, v27, v28, v29) >= 2)
  {
    v34 = objc_msgSend_objectAtIndex_(v14, v30, 1, v32, v33);
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v34, v35, array, ref, table, engineCopy);
  }

  v36 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v36);

  TSCEASTTagOnlyElement::appendTagOnlyElement(array, *(&self->super._nodeType + 1), v37, v38, v39);
}

@end