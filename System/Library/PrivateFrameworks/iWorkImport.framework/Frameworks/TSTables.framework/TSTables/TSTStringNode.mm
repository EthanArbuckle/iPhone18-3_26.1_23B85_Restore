@interface TSTStringNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTStringNode)initWithContext:(id)context stringValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)fixStorageLanguage:(id)language;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setValue:(id)value;
@end

@implementation TSTStringNode

- (TSTStringNode)initWithContext:(id)context stringValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = TSTStringNode;
  v12 = [(TSTExpressionNode *)&v15 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
  }

  return v13;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStringNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTStringNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTStringNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 16, v14[16]);
  }

  return v28;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_value, value);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v9 = objc_msgSend_string(self, v5, v6, v7, v8);
  v14 = objc_msgSend_hash(v9, v10, v11, v12, v13);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v15, self, v14 ^ 0x3000000, 1);
  v16 = v14 ^ 0x3000000;
  v17 = 1;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v10 = 1;
  if (self != nodeCopy)
  {
    v12.receiver = self;
    v12.super_class = TSTStringNode;
    if (![(TSTExpressionNode *)&v12 isEqualToExpressionNode:nodeCopy]|| (value = self->_value, v9 = nodeCopy->_value, value != v9) && !objc_msgSend_isEqualToString_(value, v5, v9, v6, v7))
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

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
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

  if (optionsCopy)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v34 = objc_msgSend_whitespaceBefore(self, v16, v32, v33, v19);
      objc_msgSend_takeText_(textCopy, v35, v34, v36, v37);
    }
  }

  if (byte_27CFB44B8 == 1)
  {
    v38 = [TSTWPTokenAttachment alloc];
    v43 = objc_msgSend_context(self, v39, v40, v41, v42);
    v46 = objc_msgSend_initWithContext_expressionNode_(v38, v44, v43, self, v45);

    objc_msgSend_insertUIGraphicalAttachment_(textCopy, v47, v46, v48, v49);
  }

  else
  {
    v50 = *MEMORY[0x277D81448];
    objc_msgSend_takeText_withLanguage_(textCopy, v16, @"", *MEMORY[0x277D81448], v19);
    v46 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(self->_value, v51, v52, v53, v54);
    if (TSWPGetDefaultParagraphDirection() == 1)
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v55, v46, @"he", v56);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v55, v46, @"en", v56);
    }

    objc_msgSend_takeText_withLanguage_(textCopy, v57, @"", v50, v58);
  }

  if (optionsCopy)
  {
    v63 = objc_msgSend_whitespaceAfter(self, v59, v60, v61, v62);

    if (v63)
    {
      v68 = objc_msgSend_whitespaceAfter(self, v64, v65, v66, v67);
      objc_msgSend_takeText_(textCopy, v69, v68, v70, v71);
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

- (void)fixStorageLanguage:(id)language
{
  languageCopy = language;
  Index = objc_msgSend_firstIndex(self, v4, v5, v6, v7);
  v9 = *MEMORY[0x277D81448];
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v10, *MEMORY[0x277D81448], Index, 1, 0);
  v15 = objc_msgSend_lastIndex(self, v11, v12, v13, v14);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v16, v9, v15, 1, 0);
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
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v40, v24, v29 + 1, v34 + ~v39, 0);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v40 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v40, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTStringNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 178, 0, "StringNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTStringElement::appendStringElement(array, self->_value, v13);
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
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[204], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212D6310, off_2812E4498[204], v5);

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

  v14.receiver = self;
  v14.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v11 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v11, v9, v10);
  value = self->_value;
  self->_value = v12;
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

  v14.receiver = self;
  v14.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v14 saveToArchive:v7 archiver:archiverCopy];
  v13 = objc_msgSend_UTF8String(self->_value, v9, v10, v11, v12);
  sub_2212D61D8(archive, v13);
}

@end