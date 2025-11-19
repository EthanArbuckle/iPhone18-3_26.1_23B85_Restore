@interface TSTBooleanNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTBooleanNode)initWithContext:(id)a3 BOOLValue:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (id)exportString;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setValue:(BOOL)a3;
@end

@implementation TSTBooleanNode

- (TSTBooleanNode)initWithContext:(id)a3 BOOLValue:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = TSTBooleanNode;
  result = [(TSTExpressionNode *)&v8 initWithContext:a3 children:0 firstIndex:a5 lastIndex:a6];
  if (result)
  {
    result->_value = a4;
  }

  return result;
}

- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTBooleanNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTBooleanNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTBooleanNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    v27[128] = v14[128];
  }

  return v28;
}

- (void)setValue:(BOOL)a3
{
  objc_msgSend_willModify(self, a2, a3, v3, v4);
  self->_value = a3;
  v15 = objc_msgSend_tokenAttachment(self, v7, v8, v9, v10);
  objc_msgSend_invalidate(v15, v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  value = self->_value;
  objc_msgSend_recordExpression_data_(a3, a2, self, value | 0x1000000, 1);
  v4 = value | 0x1000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTBooleanNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:v4]&& self->_value == v4->_value;
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

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v65 = a3;
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

  if (v4)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v36 = objc_msgSend_whitespaceBefore(self, v32, v33, v34, v35);
      objc_msgSend_takeText_(v65, v37, v36, v38, v39);
    }
  }

  v40 = [TSTWPTokenAttachment alloc];
  v45 = objc_msgSend_context(self, v41, v42, v43, v44);
  v48 = objc_msgSend_initWithContext_expressionNode_(v40, v46, v45, self, v47);

  objc_msgSend_insertUIGraphicalAttachment_(v65, v49, v48, v50, v51);
  if (v4)
  {
    v56 = objc_msgSend_whitespaceAfter(self, v52, v53, v54, v55);

    if (v56)
    {
      v61 = objc_msgSend_whitespaceAfter(self, v57, v58, v59, v60);
      objc_msgSend_takeText_(v65, v62, v61, v63, v64);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v40 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v11 = objc_msgSend_count(v40, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTBooleanNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 137, 0, "BooleanNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTBooleanElement::appendBooleanElement(a3, self->_value, v13, v14, v15);
  v30 = objc_msgSend_whitespaceBefore(self, v26, v27, v28, v29);

  if (v30)
  {
    v42 = objc_msgSend_whitespaceBefore(self, v31, v32, v33, v34);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v42);
  }

  v35 = objc_msgSend_whitespaceAfter(self, v31, v32, v33, v34);

  if (v35)
  {
    v43 = objc_msgSend_whitespaceAfter(self, v36, v37, v38, v39);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v43);
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

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[200], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212C7198, off_2812E4498[200], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v6 = *(a3 + 3);
  }

  else
  {
    v6 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v7.receiver = self;
  v7.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v7 loadFromArchive:v6 unarchiver:a4];
  self->_value = *(a3 + 32);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(a3 + 3) = v7;
  }

  v10.receiver = self;
  v10.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v10 saveToArchive:v7 archiver:v6];
  value = self->_value;
  *(a3 + 4) |= 2u;
  *(a3 + 32) = value;
}

@end