@interface TSCEUnknownFunctionFormulaNode
- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)a3 children:(id)a4;
- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)a3 numArgs:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEUnknownFunctionFormulaNode

- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)a3 numArgs:(unsigned int)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = TSCEUnknownFunctionFormulaNode;
  v11 = [(TSCEFormulaNode *)&v17 initWithNodeType:15];
  if (v11)
  {
    v12 = objc_msgSend_copy(v6, v7, v8, v9, v10);
    functionName = v11->_functionName;
    v11->_functionName = v12;

    v14 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v14;

    v11->_numArgs = a4;
  }

  return v11;
}

- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)a3 children:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = TSCEUnknownFunctionFormulaNode;
  v12 = [(TSCEFormulaNode *)&v26 initWithNodeType:15];
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v8, v9, v10, v11);
    functionName = v12->_functionName;
    v12->_functionName = v13;

    if (v7)
    {
      v19 = objc_msgSend_mutableCopy(v7, v15, v16, v17, v18);
    }

    else
    {
      v19 = objc_opt_new();
    }

    children = v12->super._children;
    v12->super._children = v19;

    v12->_numArgs = objc_msgSend_count(v12->super._children, v21, v22, v23, v24);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCEUnknownFunctionFormulaNode;
  v4 = [(TSCEUnknownFunctionFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_functionName, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  *(v4 + 14) = self->_numArgs;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v53 = a6;
  v14 = objc_msgSend_children(self, v10, v11, v12, v13);
  v23 = objc_msgSend_count(v14, v15, v16, v17, v18);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(v14, v19, i, v21, v22);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v25, v26, a3, a4, a5, v53);
    }
  }

  functionName = self->_functionName;
  v29 = objc_msgSend_count(v14, v19, v20, v21, v22);
  if (HIDWORD(v29))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEUnknownFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v30, v31);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 906, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    v29 = 0xFFFFFFFFLL;
  }

  TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(a3, functionName, v29);
  v36 = objc_msgSend_whitespaceBefore(self, v32, v33, v34, v35);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v36);

  v41 = objc_msgSend_whitespaceAfter(self, v37, v38, v39, v40);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v41);
}

@end