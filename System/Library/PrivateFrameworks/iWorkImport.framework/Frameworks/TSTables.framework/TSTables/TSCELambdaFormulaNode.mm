@interface TSCELambdaFormulaNode
- (TSCELambdaFormulaNode)initWithIdentifiers:(id)identifiers firstSymbol:(unsigned int)symbol;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCELambdaFormulaNode

- (TSCELambdaFormulaNode)initWithIdentifiers:(id)identifiers firstSymbol:(unsigned int)symbol
{
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = TSCELambdaFormulaNode;
  v7 = [(TSCEFormulaNode *)&v18 initWithNodeType:26];
  v12 = v7;
  if (v7)
  {
    v7->_firstSymbol = symbol;
    v13 = objc_msgSend_copy(identifiersCopy, v8, v9, v10, v11);
    identifiers = v12->_identifiers;
    v12->_identifiers = v13;

    v15 = objc_opt_new();
    children = v12->super._children;
    v12->super._children = v15;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCELambdaFormulaNode;
  v4 = [(TSCELambdaFormulaNode *)&v12 copy];
  v4[14] = self->_firstSymbol;
  v9 = objc_msgSend_copy(self->_identifiers, v5, v6, v7, v8);
  v10 = *(v4 + 6);
  *(v4 + 6) = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v32 = *MEMORY[0x277D85DE8];
  engine;
  v26 = objc_msgSend_children(self, v9, v10, v11, v12);
  objc_msgSend_lastObject(v26, v13, v14, v15, v16);
  objc_claimAutoreleasedReturnValue();
  TSCESymbolTable::beginScope(table);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_identifiers;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16, 48, ref);
  if (v19)
  {
    v20 = 0;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        if (v23)
        {
          Symbol = TSCESymbolTable::createSymbol(table, v23);
          if (!v20)
          {
            self->_firstSymbol = Symbol;
            v20 = Symbol;
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v27, v31, 16);
    }

    while (v19);
  }

  __C();
}

@end