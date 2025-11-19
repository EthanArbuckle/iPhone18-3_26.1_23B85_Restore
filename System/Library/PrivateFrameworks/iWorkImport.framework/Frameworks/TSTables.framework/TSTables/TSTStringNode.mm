@interface TSTStringNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTStringNode)initWithContext:(id)a3 stringValue:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)fixStorageLanguage:(id)a3;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation TSTStringNode

- (TSTStringNode)initWithContext:(id)a3 stringValue:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = TSTStringNode;
  v12 = [(TSTExpressionNode *)&v15 initWithContext:a3 children:0 firstIndex:a5 lastIndex:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a4);
  }

  return v13;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStringNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTStringNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTStringNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 16, v14[16]);
  }

  return v28;
}

- (void)setValue:(id)a3
{
  v18 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_value, a3);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_string(self, v5, v6, v7, v8);
  v14 = objc_msgSend_hash(v9, v10, v11, v12, v13);

  objc_msgSend_recordExpression_data_(v4, v15, self, v14 ^ 0x3000000, 1);
  v16 = v14 ^ 0x3000000;
  v17 = 1;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  v10 = 1;
  if (self != v4)
  {
    v12.receiver = self;
    v12.super_class = TSTStringNode;
    if (![(TSTExpressionNode *)&v12 isEqualToExpressionNode:v4]|| (value = self->_value, v9 = v4->_value, value != v9) && !objc_msgSend_isEqualToString_(value, v5, v9, v6, v7))
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)string
{
  value = self->_value;
  if (value && (value = objc_msgSend_length(value, a2, v2, v3, v4)) != 0)
  {
    v7 = sub_2214AAEA8(value, a2, v2, v3, v4);
    v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"\\U201C%@\\U201D", &stru_2834BADA0, @"TSTables");

    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, v9, v11, v12, self->_value);
  }

  else
  {
    v9 = sub_2214AAEA8(value, a2, v2, v3, v4);
    v13 = objc_msgSend_localizedStringForKey_value_table_(v9, v14, @"\\U201C\\U2006\\U201D", &stru_2834BADA0, @"TSTables");
  }

  v15 = v13;

  return v15;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v72 = a3;
  if (qword_27CFB5400 != -1)
  {
    sub_2216F76D8();
  }

  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTStringNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 130, 0, "StringNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (v4)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v34 = objc_msgSend_whitespaceBefore(self, v16, v32, v33, v19);
      objc_msgSend_takeText_(v72, v35, v34, v36, v37);
    }
  }

  if (byte_27CFB44B8 == 1)
  {
    v38 = [TSTWPTokenAttachment alloc];
    v43 = objc_msgSend_context(self, v39, v40, v41, v42);
    v46 = objc_msgSend_initWithContext_expressionNode_(v38, v44, v43, self, v45);

    objc_msgSend_insertUIGraphicalAttachment_(v72, v47, v46, v48, v49);
  }

  else
  {
    v50 = *MEMORY[0x277D81448];
    objc_msgSend_takeText_withLanguage_(v72, v16, @"", *MEMORY[0x277D81448], v19);
    v46 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(self->_value, v51, v52, v53, v54);
    if (TSWPGetDefaultParagraphDirection() == 1)
    {
      objc_msgSend_takeText_withLanguage_(v72, v55, v46, @"he", v56);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(v72, v55, v46, @"en", v56);
    }

    objc_msgSend_takeText_withLanguage_(v72, v57, @"", v50, v58);
  }

  if (v4)
  {
    v63 = objc_msgSend_whitespaceAfter(self, v59, v60, v61, v62);

    if (v63)
    {
      v68 = objc_msgSend_whitespaceAfter(self, v64, v65, v66, v67);
      objc_msgSend_takeText_(v72, v69, v68, v70, v71);
    }
  }
}

- (id)formulaPlainText
{
  v6 = &stru_2834BADA0;
  if (objc_msgSend_length(self->_value, a2, v2, v3, v4))
  {
    v6 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(self->_value, v7, v8, v9, v10);
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@", v9, v10, v6);

  return v11;
}

- (void)fixStorageLanguage:(id)a3
{
  v41 = a3;
  Index = objc_msgSend_firstIndex(self, v4, v5, v6, v7);
  v9 = *MEMORY[0x277D81448];
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v41, v10, *MEMORY[0x277D81448], Index, 1, 0);
  v15 = objc_msgSend_lastIndex(self, v11, v12, v13, v14);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v41, v16, v9, v15, 1, 0);
  v21 = objc_msgSend_string(self, v17, v18, v19, v20);
  v22 = TSWPGetDefaultParagraphDirection();
  v23 = @"en";
  if (v22 == 1)
  {
    v23 = @"he";
  }

  v24 = v23;

  v29 = objc_msgSend_firstIndex(self, v25, v26, v27, v28);
  v34 = objc_msgSend_lastIndex(self, v30, v31, v32, v33);
  v39 = objc_msgSend_firstIndex(self, v35, v36, v37, v38);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v41, v40, v24, v29 + 1, v34 + ~v39, 0);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v40 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v11 = objc_msgSend_count(v40, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTStringNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 178, 0, "StringNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTStringElement::appendStringElement(a3, self->_value, v13);
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

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[204], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212D6310, off_2812E4498[204], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 4))
  {
    v7 = *(a3 + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v14.receiver = self;
  v14.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:v6];
  v11 = *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v11, v9, v10);
  value = self->_value;
  self->_value = v12;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 4);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(a3 + 4) = v7;
  }

  v14.receiver = self;
  v14.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v14 saveToArchive:v7 archiver:v6];
  v13 = objc_msgSend_UTF8String(self->_value, v9, v10, v11, v12);
  sub_2212D61D8(a3, v13);
}

@end