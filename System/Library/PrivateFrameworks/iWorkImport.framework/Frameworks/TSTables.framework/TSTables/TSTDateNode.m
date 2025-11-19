@interface TSTDateNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTDateNode)initWithContext:(id)a3 asBlank:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTDateNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTDateNode)initWithContext:(id)a3 dateValue:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (id)description;
- (id)exportString;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setDateFormat:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation TSTDateNode

- (TSTDateNode)initWithContext:(id)a3 dateValue:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v26.receiver = self;
  v26.super_class = TSTDateNode;
  v12 = [(TSTExpressionNode *)&v26 initWithContext:v10 children:0 firstIndex:a5 lastIndex:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a4);
    v13->_isBlank = 0;
    v14 = MEMORY[0x277D811A0];
    v19 = objc_msgSend_objectLocale(v13, v15, v16, v17, v18);
    v23 = objc_msgSend_defaultDateTimeFormatForLocale_(v14, v20, v19, v21, v22);
    dateFormat = v13->_dateFormat;
    v13->_dateFormat = v23;
  }

  return v13;
}

- (TSTDateNode)initWithContext:(id)a3 asBlank:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v11, v12, v13, v14, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v16, v10, v15, a5, a6);

  if (Index_lastIndex)
  {
    Index_lastIndex->_isBlank = a4;
  }

  return Index_lastIndex;
}

- (TSTDateNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v9 = a3;
  v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v10, v11, v12, v13, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v15, v9, v14, a5, a6);

  return Index_lastIndex;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDateNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 71, 0, "Unexpected object in initAsCopyOf:... expected TSTDateNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTDateNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 17, *(v14 + 136));
    *(v28 + 128) = *(v14 + 128);
    objc_storeStrong(v28 + 18, *(v14 + 144));
  }

  return v28;
}

- (void)setValue:(id)a3
{
  v18 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  self->_isBlank = 0;
  objc_storeStrong(&self->_value, a3);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (void)setDateFormat:(id)a3
{
  v18 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_dateFormat, a3);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_hash(self->_value, v5, v6, v7, v8);
  v14 = v9 ^ objc_msgSend_hash(self->_dateFormat, v10, v11, v12, v13);
  objc_msgSend_recordExpression_data_(v4, v15, self, v14 ^ 0x4000000, 1);

  v16 = v14 ^ 0x4000000;
  v17 = 1;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  v8 = 1;
  if (self != v4)
  {
    v12.receiver = self;
    v12.super_class = TSTDateNode;
    if (![(TSTExpressionNode *)&v12 isEqualToExpressionNode:v4]|| self->_value != v4->_value || (dateFormat = self->_dateFormat, v10 = v4->_dateFormat, dateFormat != v10) && !objc_msgSend_isEqualToString_(dateFormat, v5, v10, v6, v7))
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

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v65 = a3;
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
  v39 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v11 = objc_msgSend_count(v39, v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTDateNode buildASTNodeArray:hostCell:symbolTable:]", v13, v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v40, v19, 157, 0, "DateNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  TSCEASTDateElement::appendDateElement(a3, self->_value, self->_dateFormat, 0, 0);
  v29 = objc_msgSend_whitespaceBefore(self, v25, v26, v27, v28);

  if (v29)
  {
    v41 = objc_msgSend_whitespaceBefore(self, v30, v31, v32, v33);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v41);
  }

  v34 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);

  if (v34)
  {
    v42 = objc_msgSend_whitespaceAfter(self, v35, v36, v37, v38);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v42);
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

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[222], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212D99D8, off_2812E4498[222], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 5))
  {
    v7 = *(a3 + 5);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v14.receiver = self;
  v14.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:v6];
  TST::DateNodeArchive::DateNodeArchive(v13, a3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = sub_2212D94D4;
  v11[3] = &unk_2834A4658;
  TST::DateNodeArchive::DateNodeArchive(v12, v13);
  v11[4] = self;
  v12[6] = a3;
  objc_msgSend_addFinalizeHandler_(v6, v8, v11, v9, v10);
  TST::DateNodeArchive::~DateNodeArchive(v12);
  TST::DateNodeArchive::~DateNodeArchive(v13);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 4u;
  v7 = *(a3 + 5);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(a3 + 5) = v7;
  }

  v35.receiver = self;
  v35.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v35 saveToArchive:v7 archiver:v6];
  v9 = MEMORY[0x277D811A0];
  v14 = objc_msgSend_objectLocale(self, v10, v11, v12, v13);
  v18 = objc_msgSend_defaultDateTimeFormatForLocale_(v9, v15, v14, v16, v17);
  v23 = objc_msgSend_objectLocale(self, v19, v20, v21, v22);
  v24 = TSUDateFormatterStringFromDateWithFormat();

  v25 = v24;
  v30 = objc_msgSend_UTF8String(v25, v26, v27, v28, v29);
  if (v30)
  {
    *(a3 + 4) |= 1u;
    sub_22108CCD0(__p, v30);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = objc_msgSend_UTF8String(self->_dateFormat, v30, v31, v32, v33);
  *(a3 + 4) |= 2u;
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