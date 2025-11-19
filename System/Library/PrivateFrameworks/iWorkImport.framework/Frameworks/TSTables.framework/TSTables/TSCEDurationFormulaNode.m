@interface TSCEDurationFormulaNode
- (TSCEDurationFormulaNode)initWithDuration:(TSCEDurationData *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
- (void)dealloc;
- (void)setValue:(TSCEDurationData *)a3;
@end

@implementation TSCEDurationFormulaNode

- (void)setValue:(TSCEDurationData *)a3
{
  if (a3)
  {
    value = self->_value;
    if (value)
    {
      MEMORY[0x223DA1450](value, 0x1000C40ABD28440);
    }

    operator new();
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode setValue:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 443, 0, "invalid nil value for '%{public}s'", "value");

  v17 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v17, v13, v14, v15, v16);
}

- (TSCEDurationFormulaNode)initWithDuration:(TSCEDurationData *)a3
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode initWithDuration:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 451, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v24.receiver = self;
  v24.super_class = TSCEDurationFormulaNode;
  v18 = [(TSCEFormulaNode *)&v24 initWithNodeType:5];
  v22 = v18;
  if (v18)
  {
    v18->_value = 0;
    objc_msgSend_setValue_(v18, v19, a3, v20, v21);
  }

  return v22;
}

- (void)dealloc
{
  value = self->_value;
  if (value)
  {
    MEMORY[0x223DA1450](value, 0x1000C40ABD28440);
  }

  self->_value = 0;
  v4.receiver = self;
  v4.super_class = TSCEDurationFormulaNode;
  [(TSCEDurationFormulaNode *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (!self->_value)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode copyWithZone:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 465, 0, "invalid nil value for '%{public}s'", "_value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  v18.receiver = self;
  v18.super_class = TSCEDurationFormulaNode;
  [(TSCEDurationFormulaNode *)&v18 copy];
  operator new();
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v33 = a6;
  value = self->_value;
  if (value)
  {
    TSCEASTDurationElement::appendDurationElement(a3, value->var1, &value->var2, v9, v10, value->var0);
    v16 = objc_msgSend_whitespaceBefore(self, v12, v13, v14, v15);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v16);

    v21 = objc_msgSend_whitespaceAfter(self, v17, v18, v19, v20);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v21);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEDurationFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 479, 0, "invalid nil value for '%{public}s'", "durationData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }
}

@end