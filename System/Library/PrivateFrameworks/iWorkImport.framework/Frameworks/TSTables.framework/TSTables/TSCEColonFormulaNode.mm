@interface TSCEColonFormulaNode
- (TSCEColonFormulaNode)initWithLeftArg:(id)arg rightArg:(id)rightArg undoTractList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEColonFormulaNode

- (TSCEColonFormulaNode)initWithLeftArg:(id)arg rightArg:(id)rightArg undoTractList:(id)list
{
  argCopy = arg;
  rightArgCopy = rightArg;
  listCopy = list;
  v18.receiver = self;
  v18.super_class = TSCEColonFormulaNode;
  v11 = [(TSCEFormulaNode *)&v18 initWithNodeType:12];
  if (v11)
  {
    v12 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v12;

    objc_storeStrong(&v11->_undoTractList, list);
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
  v12.receiver = self;
  v12.super_class = TSCEColonFormulaNode;
  v4 = [(TSCEColonFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_undoTractList, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  return v4;
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

  TSCEASTColonElement::appendColonWithUidTractListElement(array, self->_undoTractList, v37);
}

@end