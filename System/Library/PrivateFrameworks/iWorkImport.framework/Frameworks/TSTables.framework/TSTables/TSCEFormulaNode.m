@interface TSCEFormulaNode
+ (id)BOOLeanNode:(BOOL)a3;
+ (id)chartFunctionForArgs:(id)a3;
+ (id)dateNode:(id)a3;
+ (id)function:(unsigned __int16)a3 forArgs:(id)a4;
+ (id)literalStringNode:(id)a3;
+ (id)numberAsDoubleNode:(double)a3;
+ (id)numberNode:(const TSUDecimal *)a3;
- (TSCEFormulaNode)initWithNodeType:(unsigned __int8)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEFormulaNode

- (TSCEFormulaNode)initWithNodeType:(unsigned __int8)a3
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaNode;
  v4 = [(TSCEFormulaNode *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_nodeType = a3;
    children = v4->_children;
    v4->_children = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithNodeType_(v4, v5, self->_nodeType, v6, v7);
  if (self->_children)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = objc_msgSend_count(self->_children, v14, v15, v16, v17);
    v22 = objc_msgSend_initWithCapacity_(v13, v19, v18, v20, v21);
    v23 = v12[1];
    v12[1] = v22;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = self->_children;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v51, 16);
    if (v30)
    {
      v31 = *v48;
      do
      {
        v32 = 0;
        do
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = v12[1];
          v34 = objc_msgSend_copy(*(*(&v47 + 1) + 8 * v32), v26, v27, v28, v29, v47);
          objc_msgSend_addObject_(v33, v35, v34, v36, v37);

          ++v32;
        }

        while (v30 != v32);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v47, v51, 16);
      }

      while (v30);
    }
  }

  v38 = objc_msgSend_copy(self->_whitespaceBefore, v8, v9, v10, v11, v47);
  v39 = v12[2];
  v12[2] = v38;

  v44 = objc_msgSend_copy(self->_whitespaceAfter, v40, v41, v42, v43);
  v45 = v12[3];
  v12[3] = v44;

  return v12;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", a4, a5, a6);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 139, 0, "Requires override for each derived type");

  v17 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
}

+ (id)numberNode:(const TSUDecimal *)a3
{
  v4 = [TSCENumberFormulaNode alloc];
  v8 = objc_msgSend_initWithNumber_(v4, v5, a3, v6, v7);

  return v8;
}

+ (id)numberAsDoubleNode:(double)a3
{
  TSUDecimal::operator=();
  v6 = objc_msgSend_numberNode_(TSCEFormulaNode, v3, &v8, v4, v5);

  return v6;
}

+ (id)literalStringNode:(id)a3
{
  v3 = a3;
  v4 = [TSCEStringFormulaNode alloc];
  v8 = objc_msgSend_initWithString_(v4, v5, v3, v6, v7);

  return v8;
}

+ (id)dateNode:(id)a3
{
  v3 = a3;
  v4 = [TSCEDateFormulaNode alloc];
  v7 = objc_msgSend_initWithDate_dateTimeFormat_(v4, v5, v3, 0, v6);

  return v7;
}

+ (id)BOOLeanNode:(BOOL)a3
{
  v3 = a3;
  v4 = [TSCEBooleanFormulaNode alloc];
  v8 = objc_msgSend_initWithBoolean_(v4, v5, v3, v6, v7);

  return v8;
}

+ (id)function:(unsigned __int16)a3 forArgs:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [TSCEFunctionFormulaNode alloc];
  v9 = objc_msgSend_initWithFunctionIndex_children_(v6, v7, v4, v5, v8);

  return v9;
}

+ (id)chartFunctionForArgs:(id)a3
{
  v4 = objc_msgSend_function_forArgs_(TSCEFormulaNode, a2, 175, a3, v3);

  return v4;
}

@end