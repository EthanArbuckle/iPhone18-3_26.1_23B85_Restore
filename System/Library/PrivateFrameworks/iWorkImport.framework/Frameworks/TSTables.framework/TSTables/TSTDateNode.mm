@interface TSTDateNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTDateNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDateNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDateNode)initWithContext:(id)context dateValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)description;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDateFormat:(id)format;
- (void)setValue:(id)value;
@end

@implementation TSTDateNode

- (TSTDateNode)initWithContext:(id)context dateValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  valueCopy = value;
  v26.receiver = self;
  v26.super_class = TSTDateNode;
  v12 = [(TSTExpressionNode *)&v26 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    v13->_isBlank = 0;
    v14 = MEMORY[0x277D811A0];
    v19 = objc_msgSend_objectLocale(v13, v15, v16, v17, v18);
    v23 = objc_msgSend_defaultDateTimeFormatForLocale_(v14, v20, v19, v21, v22);
    dateFormat = v13->_dateFormat;
    v13->_dateFormat = v23;
  }

  return v13;
}

- (TSTDateNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v11, v12, v13, v14, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v16, contextCopy, v15, index, lastIndex);

  if (Index_lastIndex)
  {
    Index_lastIndex->_isBlank = blank;
  }

  return Index_lastIndex;
}

- (TSTDateNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v10, v11, v12, v13, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v15, contextCopy, v14, index, lastIndex);

  return Index_lastIndex;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDateNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 71, 0, "Unexpected object in initAsCopyOf:... expected TSTDateNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTDateNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 17, *(v14 + 136));
    *(v28 + 128) = *(v14 + 128);
    objc_storeStrong(v28 + 18, *(v14 + 144));
  }

  return v28;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  self->_isBlank = 0;
  objc_storeStrong(&self->_value, value);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (void)setDateFormat:(id)format
{
  formatCopy = format;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_dateFormat, format);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v9 = objc_msgSend_hash(self->_value, v5, v6, v7, v8);
  v14 = v9 ^ objc_msgSend_hash(self->_dateFormat, v10, v11, v12, v13);
  objc_msgSend_recordExpression_data_(subexpressionsCopy, v15, self, v14 ^ 0x4000000, 1);

  v16 = v14 ^ 0x4000000;
  v17 = 1;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v8 = 1;
  if (self != nodeCopy)
  {
    v12.receiver = self;
    v12.super_class = TSTDateNode;
    if (![(TSTExpressionNode *)&v12 isEqualToExpressionNode:nodeCopy]|| self->_value != nodeCopy->_value || (dateFormat = self->_dateFormat, v10 = nodeCopy->_dateFormat, dateFormat != v10) && !objc_msgSend_isEqualToString_(dateFormat, v5, v10, v6, v7))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)string
{
  v5 = objc_msgSend_objectLocale(self, a2, v2, v3, v4);
  v6 = TSUDateFormatterStringFromDateWithFormat();

  return v6;
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
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTDateNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 141, 0, "DateNode shouldn't have any children");

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
  v39 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v39, v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTDateNode buildASTNodeArray:hostCell:symbolTable:]", v13, v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v40, v19, 157, 0, "DateNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  TSCEASTDateElement::appendDateElement(array, self->_value, self->_dateFormat, 0, 0);
  v29 = objc_msgSend_whitespaceBefore(self, v25, v26, v27, v28);

  if (v29)
  {
    v41 = objc_msgSend_whitespaceBefore(self, v30, v31, v32, v33);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v41);
  }

  v34 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);

  if (v34)
  {
    v42 = objc_msgSend_whitespaceAfter(self, v35, v36, v37, v38);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v42);
  }
}

- (id)exportString
{
  v6 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, v2, v3, v4);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0uLL;
  v24 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v6, v7, self->_value, &v28, &v27, &v26, &v25 + 8, &v25, &v24);
  v12 = objc_msgSend_objectLocale(self, v8, v9, v10, v11);
  v17 = objc_msgSend_listSeparator(v12, v13, v14, v15, v16);

  if (v25 != 0 || v24)
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"(DATE(%ld%@%ld%@%ld)+TIMEVALUE(TIME(%ld%@%ld%@%ld)))", v19, v20, v28, v17, v27, v17, v26, *(&v25 + 1), v17, v25, v17, v24);
  }

  else
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"DATE(%ld%@%ld%@%ld)", v19, v20, v28, v17, v27, v17, v26);
  }

  v22 = v21;

  return v22;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[222], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212D99D8, off_2812E4498[222], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 5))
  {
    v7 = *(archive + 5);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v14.receiver = self;
  v14.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:unarchiverCopy];
  TST::DateNodeArchive::DateNodeArchive(v13, archive);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = sub_2212D94D4;
  v11[3] = &unk_2834A4658;
  TST::DateNodeArchive::DateNodeArchive(v12, v13);
  v11[4] = self;
  v12[6] = archive;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v8, v11, v9, v10);
  TST::DateNodeArchive::~DateNodeArchive(v12);
  TST::DateNodeArchive::~DateNodeArchive(v13);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 4u;
  v7 = *(archive + 5);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 5) = v7;
  }

  v35.receiver = self;
  v35.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v35 saveToArchive:v7 archiver:archiverCopy];
  v9 = MEMORY[0x277D811A0];
  v14 = objc_msgSend_objectLocale(self, v10, v11, v12, v13);
  v18 = objc_msgSend_defaultDateTimeFormatForLocale_(v9, v15, v14, v16, v17);
  v23 = objc_msgSend_objectLocale(self, v19, v20, v21, v22);
  v24 = TSUDateFormatterStringFromDateWithFormat();

  v25 = v24;
  v30 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29);
  if (v30)
  {
    *(archive + 4) |= 1u;
    sub_22108CCD0(__p, v30);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = objc_msgSend_UTF8String(self->_dateFormat, v30, v31, v32, v33);
  *(archive + 4) |= 2u;
  sub_22108CCD0(__p, v34);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_string(self, v6, v7, v8, v9);
  v14 = v10;
  if (self->_isBlank)
  {
    objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p>: '%@'%@", v12, v13, v5, self, v10, @" (BLANK)");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p>: '%@'%@", v12, v13, v5, self, v10, &stru_2834BADA0);
  }
  v15 = ;

  return v15;
}

@end