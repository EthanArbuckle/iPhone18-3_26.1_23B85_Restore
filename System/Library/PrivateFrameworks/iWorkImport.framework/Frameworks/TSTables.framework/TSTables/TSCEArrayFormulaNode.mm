@interface TSCEArrayFormulaNode
- (TSCEArrayFormulaNode)initWithNumColumns:(unsigned __int16)columns numRows:(unsigned __int16)rows;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEArrayFormulaNode

- (TSCEArrayFormulaNode)initWithNumColumns:(unsigned __int16)columns numRows:(unsigned __int16)rows
{
  v11.receiver = self;
  v11.super_class = TSCEArrayFormulaNode;
  v6 = [(TSCEFormulaNode *)&v11 initWithNodeType:9];
  v7 = v6;
  if (v6)
  {
    *(&v6->super._nodeType + 1) = columns;
    *(&v6->super._nodeType + 2) = rows;
    v8 = objc_opt_new();
    children = v7->super._children;
    v7->super._children = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEArrayFormulaNode;
  result = [(TSCEArrayFormulaNode *)&v5 copy];
  *(result + 21) = *(&self->super._nodeType + 1);
  *(result + 22) = *(&self->super._nodeType + 2);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v38 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  objc_msgSend_children(self, v11, v12, v13, v14);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v15 = v34 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v33, v37, 16);
  if (v18)
  {
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(*(*(&v33 + 1) + 8 * v20++), v17, array, ref, table, engineCopy, v33);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v33, v37, 16);
    }

    while (v18);
  }

  TSCEASTArrayElement::appendArrayNode(array, *(&self->super._nodeType + 1), *(&self->super._nodeType + 2), v21, v22);
  v27 = objc_msgSend_whitespaceBefore(self, v23, v24, v25, v26);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v27);

  v32 = objc_msgSend_whitespaceAfter(self, v28, v29, v30, v31);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v32);
}

@end