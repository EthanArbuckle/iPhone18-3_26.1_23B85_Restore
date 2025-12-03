@interface TSCEDateFormulaNode
- (TSCEDateFormulaNode)initWithDate:(id)date dateTimeFormat:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEDateFormulaNode

- (TSCEDateFormulaNode)initWithDate:(id)date dateTimeFormat:(id)format
{
  dateCopy = date;
  formatCopy = format;
  v18.receiver = self;
  v18.super_class = TSCEDateFormulaNode;
  v9 = [(TSCEFormulaNode *)&v18 initWithNodeType:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, date);
    v15 = objc_msgSend_copy(formatCopy, v11, v12, v13, v14);
    dateTimeFormat = v10->_dateTimeFormat;
    v10->_dateTimeFormat = v15;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEDateFormulaNode;
  v4 = [(TSCEDateFormulaNode *)&v12 copy];
  objc_storeStrong(v4 + 6, self->_value);
  v9 = objc_msgSend_copy(self->_dateTimeFormat, v5, v6, v7, v8);
  v10 = v4[7];
  v4[7] = v9;

  *(v4 + 64) = self->_suppressDateFormat;
  *(v4 + 65) = self->_suppressTimeFormat;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTDateElement::appendDateElement(array, self->_value, self->_dateTimeFormat, 0, 0);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

@end