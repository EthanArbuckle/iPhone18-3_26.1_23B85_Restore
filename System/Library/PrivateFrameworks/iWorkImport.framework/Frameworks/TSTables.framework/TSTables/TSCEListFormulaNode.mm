@interface TSCEListFormulaNode
- (TSCEListFormulaNode)initWithNumArgs:(unsigned int)args;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEListFormulaNode

- (TSCEListFormulaNode)initWithNumArgs:(unsigned int)args
{
  v9.receiver = self;
  v9.super_class = TSCEListFormulaNode;
  v4 = [(TSCEFormulaNode *)&v9 initWithNodeType:10];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._nodeType + 1) = args;
    v6 = objc_opt_new();
    children = v5->super._children;
    v5->super._children = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEListFormulaNode;
  result = [(TSCEListFormulaNode *)&v5 copy];
  *(result + 11) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v72 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v15 = objc_msgSend_children(self, v11, v12, v13, v14);
  if (objc_msgSend_count(v15, v16, v17, v18, v19) == 1)
  {
    v24 = objc_msgSend_firstObject(v15, v20, v21, v22, v23);
    if (objc_msgSend_nodeType(v24, v25, v26, v27, v28) == 6)
    {
      TSCEASTListElement::appendListNode(array, 0, v29, v30, v31);

      goto LABEL_15;
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v32 = v15;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v67, v71, 16);
  if (v35)
  {
    v36 = *v68;
    do
    {
      v37 = 0;
      do
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(*(*(&v67 + 1) + 8 * v37++), v34, array, ref, table, engineCopy, v67);
      }

      while (v35 != v37);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v67, v71, 16);
    }

    while (v35);
  }

  v42 = objc_msgSend_count(v32, v38, v39, v40, v41);
  if (HIDWORD(v42))
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCEListFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v44, v45);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v59, v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 1502, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    v42 = 0xFFFFFFFFLL;
  }

  TSCEASTListElement::appendListNode(array, v42, v43, v44, v45);
  v50 = objc_msgSend_whitespaceBefore(self, v46, v47, v48, v49);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v50);

  v55 = objc_msgSend_whitespaceAfter(self, v51, v52, v53, v54);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v55);

LABEL_15:
}

@end