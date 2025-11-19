@interface TSCELetBindFormulaNode
- (TSCELetBindFormulaNode)initWithIdentifier:(id)a3 isContinued:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCELetBindFormulaNode

- (TSCELetBindFormulaNode)initWithIdentifier:(id)a3 isContinued:(BOOL)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = TSCELetBindFormulaNode;
  v11 = [(TSCEFormulaNode *)&v15 initWithNodeType:23];
  if (v11)
  {
    v12 = objc_msgSend_copy(v6, v7, v8, v9, v10);
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v11->_isContinued = a4;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCELetBindFormulaNode;
  v4 = [(TSCELetBindFormulaNode *)&v12 copy];
  v9 = objc_msgSend_copy(self->_identifier, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  *(v4 + 56) = self->_isContinued;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v10 = a6;
  v15 = objc_msgSend_children(self, v11, v12, v13, v14);
  v49 = objc_msgSend_lastObject(v15, v16, v17, v18, v19);
  if (objc_msgSend_count(v15, v20, v21, v22, v23) < 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(v15, v24, 0, v25, v26);
  }

  v28 = self->_identifier;
  v30 = v28;
  if (v27)
  {
    v31 = v28 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (!v31)
  {
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v27, v29, a3, a4, a5, v10);
    TSCESymbolTable::beginScope(a5);
    v48 = v10;
    Symbol = TSCESymbolTable::createSymbol(a5, &v30->var0);
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v50, 0);
    TSCEASTLetBindElement::appendLetNodeHeader(a3, v30, v50, Symbol, self->_isContinued);
    v51 = v50;
    sub_22107C2C0(&v51);
  }

  objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v49, v29, a3, a4, a5, v10, v48);
  if ((v32 & 1) == 0)
  {
    TSCEASTLetBindElement::appendEndScopeNode(a3, v34, v35, v36, v37);
    TSCESymbolTable::endScope(a5, v38, v39, v40, v41);
  }

  v42 = objc_msgSend_whitespaceBefore(self, v34, v35, v36, v37);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v42);

  v47 = objc_msgSend_whitespaceAfter(self, v43, v44, v45, v46);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v47);
}

@end