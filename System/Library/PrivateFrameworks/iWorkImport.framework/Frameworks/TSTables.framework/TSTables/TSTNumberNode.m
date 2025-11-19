@interface TSTNumberNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTNumberNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTNumberNode)initWithContext:(id)a3 number:(const TSUDecimal *)a4 locale:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7;
- (TSTNumberNode)initWithContext:(id)a3 number:(const TSUDecimal *)a4 string:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7;
- (TSTNumberNode)initWithContext:(id)a3 string:(id)a4 locale:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7;
- (TSUDecimal)number;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)fixStorageLanguage:(id)a3;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setNumber:(const TSUDecimal *)a3 withLocale:(id)a4;
- (void)setString:(id)a3;
@end

@implementation TSTNumberNode

- (TSTNumberNode)initWithContext:(id)a3 number:(const TSUDecimal *)a4 string:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = TSTNumberNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:v12 children:0 firstIndex:a6 lastIndex:a7];
  v15 = v14;
  if (v14)
  {
    v14->_number = *a4;
    TSUDecimal::roundToDoublePrecision(&v14->_number);
    objc_storeStrong(&v15->_string, a5);
  }

  return v15;
}

- (TSTNumberNode)initWithContext:(id)a3 number:(const TSUDecimal *)a4 locale:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  TSUDecimal::doubleValue(a4);
  v15 = sub_22126B954(v13, v14);
  Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v16, v12, a4, v15, a6, a7);

  return Index_lastIndex;
}

- (TSTNumberNode)initWithContext:(id)a3 string:(id)a4 locale:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  TSUParsedNumber::TSUParsedNumber();
  if (v13)
  {
    MEMORY[0x223D9F8D0](v34, v14);
    TSUUnivNumberParser::parseAsNumber(v34, v13);
    *v35 = v33[0];
    *&v35[5] = *(v33 + 5);
    objc_storeStrong(&v36, v33[2]);
    objc_storeStrong(&v37, v33[3]);
    objc_storeStrong(&v38, v33[4]);
    objc_storeStrong(&v39, v33[5]);
    MEMORY[0x223D9F890](v33);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTNumberNode initWithContext:string:locale:firstIndex:lastIndex:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 85, 0, "invalid nil value for '%{public}s'", "numberString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  TSUDecimal::operator=();
  if (*&v35[8] != -999)
  {
    v29 = v37;
    if (v29 || TSUParsedNumber::isInfOrNaN(v35))
    {
    }

    else if (v35[12] == 10)
    {
      TSUDecimal::operator=();
      Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v32, v12, v34, v13, a6, a7);
      goto LABEL_9;
    }
  }

  Index_lastIndex = 0;
LABEL_9:
  MEMORY[0x223D9F890](v35);

  return Index_lastIndex;
}

- (TSTNumberNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v9 = a3;
  TSUDecimal::operator=();
  Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v10, v9, &v13, @"0", a5, a6);

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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTNumberNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 113, 0, "Unexpected object in initAsCopyOf:... expected TSTNumberNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTNumberNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    *(v27 + 9) = *(v14 + 144);
    objc_storeStrong(v27 + 17, *(v14 + 136));
  }

  return v28;
}

- (void)setNumber:(const TSUDecimal *)a3 withLocale:(id)a4
{
  v22 = a4;
  objc_msgSend_willModify(self, v6, v7, v8, v9);
  self->_number = *a3;
  TSUDecimal::doubleValue(a3);
  v11 = sub_22126B954(v22, v10);
  string = self->_string;
  self->_string = v11;

  v17 = objc_msgSend_tokenAttachment(self, v13, v14, v15, v16);
  objc_msgSend_invalidate(v17, v18, v19, v20, v21);
}

- (void)setString:(id)a3
{
  v18 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_string, a3);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v4 = a3;
  TSUDecimal::doubleValue(&self->_number);
  v5 = TSUHash();
  objc_msgSend_recordExpression_data_(v4, v6, self, v5 ^ 0x2000000, 1);

  v7 = v5 ^ 0x2000000;
  v8 = 1;
  result.var1 = v8;
  result.var0 = v7;
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
    v7.super_class = TSTNumberNode;
    if ([(TSTExpressionNode *)&v7 isEqualToExpressionNode:v4])
    {
      v5 = TSUDecimal::operator==();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)fixStorageLanguage:(id)a3
{
  v20 = a3;
  Index = objc_msgSend_firstIndex(self, v4, v5, v6, v7);
  v13 = objc_msgSend_lastIndex(self, v9, v10, v11, v12);
  v18 = objc_msgSend_firstIndex(self, v14, v15, v16, v17);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v20, v19, @"en", Index, v13 - v18 + 1, 0);
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v52 = a3;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTNumberNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 191, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (v4)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v32 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);
      objc_msgSend_takeText_(v52, v33, v32, v34, v35);
    }
  }

  v36 = objc_msgSend_string(self, v16, v17, v18, v19);
  objc_msgSend_takeText_withLanguage_(v52, v37, v36, @"en", v38);

  if (v4)
  {
    v43 = objc_msgSend_whitespaceAfter(self, v39, v40, v41, v42);

    if (v43)
    {
      v48 = objc_msgSend_whitespaceAfter(self, v44, v45, v46, v47);
      objc_msgSend_takeText_(v52, v49, v48, v50, v51);
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
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTNumberNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v41, v20, 208, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  TSCEASTNumberElement::appendNumberElement(a3, &self->_number, v13, v14, v15);
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
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[202], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_22126CA3C, off_2812E4498[202], v5);

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

  v8.receiver = self;
  v8.super_class = TSTNumberNode;
  [(TSTExpressionNode *)&v8 loadFromArchive:v6 unarchiver:a4];
  if ((*(a3 + 16) & 4) != 0)
  {
    TSUDecimal::TSUDecimal(&v7);
  }

  else
  {
    TSUDecimal::operator=();
  }

  self->_number = v7;
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

  v12.receiver = self;
  v12.super_class = TSTNumberNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:v6];
  TSUDecimal::doubleValue(&self->_number);
  *(a3 + 4) |= 2u;
  *(a3 + 4) = v9;
  v10 = TSUDecimal::low(&self->_number);
  *(a3 + 4) |= 4u;
  *(a3 + 5) = v10;
  v11 = TSUDecimal::high(&self->_number);
  *(a3 + 4) |= 8u;
  *(a3 + 6) = v11;
}

- (TSUDecimal)number
{
  objc_copyStruct(v4, &self->_number, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

@end