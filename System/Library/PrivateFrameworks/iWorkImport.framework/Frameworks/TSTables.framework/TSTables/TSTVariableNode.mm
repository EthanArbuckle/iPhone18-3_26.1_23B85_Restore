@interface TSTVariableNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTVariableNode)initWithContext:(id)context identifier:(id)identifier symbol:(unsigned int)symbol firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setIdentifier:(id)identifier;
@end

@implementation TSTVariableNode

- (TSTVariableNode)initWithContext:(id)context identifier:(id)identifier symbol:(unsigned int)symbol firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = TSTVariableNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_symbol = symbol;
  }

  return v15;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTVariableNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 69, 0, "Unexpected object in initAsCopyOf:... expected TSTVariableNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTVariableNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 17, *(v14 + 136));
    *(v28 + 32) = *(v14 + 128);
  }

  return v28;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_identifier, identifier);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  symbol = self->_symbol;
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, symbol ^ 0x7000000, 1);
  v4 = symbol ^ 0x7000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTVariableNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_symbol == nodeCopy->_symbol;
  }

  return v5;
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  mapCopy = map;
  v11 = TSCESymbolTable::lookup(symbolTable, self->_identifier, 0);
  v12 = [TSTVariableNode alloc];
  v17 = objc_msgSend_context(self, v13, v14, v15, v16);
  identifier = self->_identifier;
  Index = objc_msgSend_firstIndex(self, v19, v20, v21, v22);
  v28 = objc_msgSend_lastIndex(self, v24, v25, v26, v27);
  Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v12, v29, v17, identifier, v11, Index, v28);

  v35 = objc_msgSend_whitespaceBefore(self, v31, v32, v33, v34);
  objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v36, v35, v37, v38);

  v43 = objc_msgSend_whitespaceAfter(self, v39, v40, v41, v42);
  objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v44, v43, v45, v46);

  if (Index_lastIndex)
  {
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v47, Index_lastIndex, self, v48);
  }

  return Index_lastIndex;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  tableCopy = table;
  v7 = objc_msgSend_identifier(self, a2, table, v3, v4);
  LODWORD(tableCopy) = TSCESymbolTable::lookup(tableCopy, v7, 0);

  if (tableCopy)
  {
    v12 = 0;
    goto LABEL_20;
  }

  v12 = objc_msgSend_syntaxError(TSCEError, v8, v9, v10, v11);
  selfCopy = self;
  if (selfCopy)
  {
    v18 = selfCopy;
    v19 = selfCopy;
    while (1)
    {
      v20 = objc_msgSend_parentNode(v19, v14, v15, v16, v17);
      isFunctionNode = objc_msgSend_isFunctionNode(v20, v21, v22, v23, v24);

      if (isFunctionNode)
      {
        break;
      }

LABEL_15:
      v66 = objc_msgSend_parentNode(v19, v26, v27, v28, v29);

      if (v66)
      {
        v67 = isFunctionNode;
      }

      else
      {
        v67 = 1;
      }

      v19 = v66;
      if (v67 == 1)
      {

        goto LABEL_20;
      }
    }

    objc_opt_class();
    v34 = objc_msgSend_parentNode(v19, v30, v31, v32, v33);
    v35 = TSUDynamicCast();

    if (!v35)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTVariableNode variableUsageErrorWithSymbolTable:]", v38, v39);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v43, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 178, 0, "expected a function node on the stack");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    if (objc_msgSend_isLetFunction(v35, v36, v37, v38, v39))
    {
      v55 = objc_msgSend_identifier(v18, v51, v52, v53, v54);
      v58 = objc_msgSend_unboundVariableError_variableName_(TSCEError, v56, @"LET", v55, v57);
    }

    else
    {
      if (!objc_msgSend_isLambdaFunction(v35, v51, v52, v53, v54))
      {
        isFunctionNode = 0;
        goto LABEL_14;
      }

      v55 = objc_msgSend_identifier(v18, v59, v60, v61, v62);
      v58 = objc_msgSend_unboundVariableError_variableName_(TSCEError, v63, @"LAMBDA", v55, v64);
    }

    v65 = v58;

    isFunctionNode = 1;
    v12 = v65;
LABEL_14:

    goto LABEL_15;
  }

LABEL_20:

  return v12;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTVariableNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 200, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (optionsCopy)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v36 = objc_msgSend_whitespaceBefore(self, v32, v33, v34, v35);
      objc_msgSend_takeText_(textCopy, v37, v36, v38, v39);
    }
  }

  v40 = [TSTWPTokenAttachment alloc];
  v45 = objc_msgSend_context(self, v41, v42, v43, v44);
  v48 = objc_msgSend_initWithContext_expressionNode_(v40, v46, v45, self, v47);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v49, v48, v50, v51);
  if (optionsCopy)
  {
    v56 = objc_msgSend_whitespaceAfter(self, v52, v53, v54, v55);

    if (v56)
    {
      v61 = objc_msgSend_whitespaceAfter(self, v57, v58, v59, v60);
      objc_msgSend_takeText_(textCopy, v62, v61, v63, v64);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v40 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v40, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTVariableNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 228, 0, "VariableNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTVariableElement::appendVariableElement(array, self->_symbol, v13, v14, v15);
  v30 = objc_msgSend_whitespaceBefore(self, v26, v27, v28, v29);

  if (v30)
  {
    v42 = objc_msgSend_whitespaceBefore(self, v31, v32, v33, v34);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v42);
  }

  v35 = objc_msgSend_whitespaceAfter(self, v31, v32, v33, v34);

  if (v35)
  {
    v43 = objc_msgSend_whitespaceAfter(self, v36, v37, v38, v39);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v43);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[232], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2211FFFCC, off_2812E4498[232], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v13.receiver = self;
  v13.super_class = TSTVariableNode;
  [(TSTExpressionNode *)&v13 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 16))
  {
    v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v9, v10);
    identifier = self->_identifier;
    self->_identifier = v11;
  }

  self->_symbol = *(archive + 10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v19.receiver = self;
  v19.super_class = TSTVariableNode;
  [(TSTExpressionNode *)&v19 saveToArchive:v7 archiver:archiverCopy];
  if (objc_msgSend_length(self->_identifier, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_tsp_protobufString(self->_identifier, v13, v14, v15, v16);
    sub_2211FFE84(archive, v17);
  }

  symbol = self->_symbol;
  *(archive + 4) |= 4u;
  *(archive + 10) = symbol;
}

@end