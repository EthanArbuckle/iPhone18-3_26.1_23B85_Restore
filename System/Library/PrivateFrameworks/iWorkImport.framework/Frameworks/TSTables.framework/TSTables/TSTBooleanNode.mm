@interface TSTBooleanNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTBooleanNode)initWithContext:(id)context BOOLValue:(BOOL)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setValue:(BOOL)value;
@end

@implementation TSTBooleanNode

- (TSTBooleanNode)initWithContext:(id)context BOOLValue:(BOOL)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v8.receiver = self;
  v8.super_class = TSTBooleanNode;
  result = [(TSTExpressionNode *)&v8 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  if (result)
  {
    result->_value = value;
  }

  return result;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTBooleanNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTBooleanNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTBooleanNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    v27[128] = v14[128];
  }

  return v28;
}

- (void)setValue:(BOOL)value
{
  objc_msgSend_willModify(self, a2, value, v3, v4);
  self->_value = value;
  v15 = objc_msgSend_tokenAttachment(self, v7, v8, v9, v10);
  objc_msgSend_invalidate(v15, v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  value = self->_value;
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, value | 0x1000000, 1);
  v4 = value | 0x1000000;
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
    v7.super_class = TSTBooleanNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_value == nodeCopy->_value;
  }

  return v5;
}

- (id)string
{
  v6 = objc_msgSend_context(self, a2, v2, v3, v4);
  v11 = objc_msgSend_objectLocale(v6, v7, v8, v9, v10);

  if (self->_value)
  {
    objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"true", &stru_2834BADA0, @"TSTables");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"false", &stru_2834BADA0, @"TSTables");
  }
  v13 = ;

  return v13;
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
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTBooleanNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 122, 0, "BooleanNode shouldn't have any children");

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
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTBooleanNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 137, 0, "BooleanNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTBooleanElement::appendBooleanElement(array, self->_value, v13, v14, v15);
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

- (id)exportString
{
  v6 = objc_msgSend_context(self, a2, v2, v3, v4);
  v11 = objc_msgSend_objectLocale(v6, v7, v8, v9, v10);

  if (self->_value)
  {
    objc_msgSend_localizedTrueString(v11, v12, v13, v14, v15);
  }

  else
  {
    objc_msgSend_localizedFalseString(v11, v12, v13, v14, v15);
  }
  v16 = ;

  return v16;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[200], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212C7198, off_2812E4498[200], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v6 = *(archive + 3);
  }

  else
  {
    v6 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v7.receiver = self;
  v7.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v7 loadFromArchive:v6 unarchiver:unarchiver];
  self->_value = *(archive + 32);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v10.receiver = self;
  v10.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v10 saveToArchive:v7 archiver:archiverCopy];
  value = self->_value;
  *(archive + 4) |= 2u;
  *(archive + 32) = value;
}

@end