@interface TSTDurationNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTDurationNode)initWithContext:(id)a3 asBlank:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTDurationNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTDurationNode)initWithContext:(id)a3 durationInterval:(double)a4 durationFormat:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7;
- (id)date;
- (id)description;
- (id)exportString;
- (id)format;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setDurationFormat:(id)a3;
- (void)setDurationInterval:(double)a3;
@end

@implementation TSTDurationNode

- (TSTDurationNode)initWithContext:(id)a3 durationInterval:(double)a4 durationFormat:(id)a5 firstIndex:(unint64_t)a6 lastIndex:(unint64_t)a7
{
  v13 = a5;
  v17.receiver = self;
  v17.super_class = TSTDurationNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:a3 children:0 firstIndex:a6 lastIndex:a7];
  v15 = v14;
  if (v14)
  {
    v14->_durationInterval = a4;
    objc_storeStrong(&v14->_durationFormat, a5);
    v15->_blank = 0;
  }

  return v15;
}

- (TSTDurationNode)initWithContext:(id)a3 asBlank:(BOOL)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  *&v15 = 1057;
  *(&v15 + 2) = 1;
  v11 = TSCEDurationFormat::asTSKDurationFormat(&v15);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(self, v12, v10, v11, a5, a6, 0.0);

  if (Index_lastIndex)
  {
    Index_lastIndex->_blank = a4;
  }

  return Index_lastIndex;
}

- (TSTDurationNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v9 = a3;
  *&v14 = 1057;
  *(&v14 + 2) = 1;
  v10 = TSCEDurationFormat::asTSKDurationFormat(&v14);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(self, v11, v9, v10, a5, a6, 0.0);

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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDurationNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 81, 0, "Unexpected object in initAsCopyOf:... expected TSTDurationNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTDurationNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    v27[17] = *(v14 + 136);
    objc_storeStrong(v27 + 18, *(v14 + 144));
    *(v28 + 128) = *(v14 + 128);
  }

  return v28;
}

- (void)setDurationInterval:(double)a3
{
  objc_msgSend_willModify(self, a2, v3, v4, v5);
  self->_blank = 0;
  self->_durationInterval = a3;
  v16 = objc_msgSend_tokenAttachment(self, v8, v9, v10, v11);
  objc_msgSend_invalidate(v16, v12, v13, v14, v15);
}

- (void)setDurationFormat:(id)a3
{
  v18 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  self->_blank = 0;
  objc_storeStrong(&self->_durationFormat, a3);
  v13 = objc_msgSend_tokenAttachment(self, v9, v10, v11, v12);
  objc_msgSend_invalidate(v13, v14, v15, v16, v17);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v4 = a3;
  v5 = TSUHash();
  v10 = v5 ^ objc_msgSend_hash(self->_durationFormat, v6, v7, v8, v9);
  objc_msgSend_recordExpression_data_(v4, v11, self, v10 ^ 0x5000000, 1);

  v12 = v10 ^ 0x5000000;
  v13 = 1;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = TSTDurationNode;
    if ([(TSTExpressionNode *)&v23 isEqualToExpressionNode:v4])
    {
      v5 = v4;
      durationInterval = self->_durationInterval;
      objc_msgSend_durationInterval(v5, v7, v8, v9, v10);
      if (durationInterval == v15)
      {
        durationFormat = self->_durationFormat;
        v17 = objc_msgSend_durationFormat(v5, v11, v12, v13, v14);
        isEqual = objc_msgSend_isEqual_(durationFormat, v18, v17, v19, v20);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)string
{
  objc_msgSend_durationUnitLargest(self->_durationFormat, a2, v2, v3, v4);
  TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
  objc_msgSend_durationStyle(self->_durationFormat, v6, v7, v8, v9);
  v10 = TSUDurationFormatterFormatFromDurationUnits();
  v15 = objc_msgSend_context(self, v11, v12, v13, v14);
  v20 = objc_msgSend_objectLocale(v15, v16, v17, v18, v19);
  v21 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

  return v21;
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
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTDurationNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 152, 0, "DurationNode shouldn't have any children");

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
  v7 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTDurationNode buildASTNodeArray:hostCell:symbolTable:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 167, 0, "DurationNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  durationInterval = self->_durationInterval;
  v29 = objc_msgSend_durationUnitLargest(self->_durationFormat, v13, v14, v15, v16);
  v30 = sub_221387C78(v29);
  TSCEDurationFormat::TSCEDurationFormat(&v49, self->_durationFormat);
  TSCEASTDurationElement::appendDurationElement(a3, v30, &v49, v31, v32, durationInterval);
  v37 = objc_msgSend_whitespaceBefore(self, v33, v34, v35, v36);

  if (v37)
  {
    v42 = objc_msgSend_whitespaceBefore(self, v38, v39, v40, v41);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v42);
  }

  v43 = objc_msgSend_whitespaceAfter(self, v38, v39, v40, v41);

  if (v43)
  {
    v48 = objc_msgSend_whitespaceAfter(self, v44, v45, v46, v47);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v48);
  }
}

- (id)exportString
{
  v6 = objc_msgSend_durationUnitLargest(self->_durationFormat, a2, v2, v3, v4);
  v11 = v6;
  durationInterval = self->_durationInterval;
  v13 = 0.0;
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v13 = floor(durationInterval / 604800.0);
      durationInterval = durationInterval - v13 * 604800.0;
    }

    else
    {
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      if (v6 != 2)
      {
        goto LABEL_12;
      }
    }

    v17 = v13;
    v13 = floor(durationInterval / 86400.0);
    durationInterval = durationInterval - v13 * 86400.0;
    goto LABEL_10;
  }

  v17 = 0.0;
  if (v6 == 4)
  {
LABEL_10:
    v18 = v13;
    v13 = floor(durationInterval / 3600.0);
    durationInterval = durationInterval - v13 * 3600.0;
    goto LABEL_11;
  }

  v18 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v6 == 8)
  {
LABEL_11:
    v16 = floor(durationInterval / 60.0);
    durationInterval = durationInterval - v16 * 60.0;
    v11 = 16;
    v14 = v17;
    v15 = v18;
  }

LABEL_12:
  v19 = objc_msgSend_objectLocale(self, v7, v8, v9, v10);
  v24 = objc_msgSend_listSeparator(v19, v20, v21, v22, v23);
  v25 = trunc(durationInterval);
  v26 = durationInterval - v25;
  if (v11 == 16)
  {
    v27 = v25;
  }

  else
  {
    v26 = durationInterval;
    v27 = 0.0;
  }

  if (v11 == 32 || v11 == 16)
  {
    v29 = v26 * 1000.0;
  }

  else
  {
    v29 = 0.0;
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"DURATION(%g%@%g%@%g%@%g%@%g%@%g)", v31, v32, *&v14, v24, *&v15, v24, *&v13, v24, *&v16, v24, *&v27, v24, *&v29);

  return v33;
}

- (id)date
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDurationNode date]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 223, 0, "We shouldn't ask a Duration for its date.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v19 = MEMORY[0x277CBEAA8];

  return objc_msgSend_date(v19, v15, v16, v17, v18);
}

- (id)format
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDurationNode format]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 228, 0, "We shouldn't ask a Duration for its format.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v16 = MEMORY[0x277D811A0];
  v21 = objc_msgSend_context(self, v17, v18, v19, v20);
  v26 = objc_msgSend_objectLocale(v21, v22, v23, v24, v25);
  v30 = objc_msgSend_defaultDateTimeFormatForLocale_(v16, v27, v26, v28, v29);

  return v30;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[226], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212E8C14, off_2812E4498[226], v5);

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

  v14.receiver = self;
  v14.super_class = TSTDurationNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v6 unarchiver:a4];
  self->_durationInterval = *(a3 + 4);
  v7 = *(a3 + 40);
  v8 = *(a3 + 44);
  v9 = *(a3 + 48);
  v10 = objc_alloc(MEMORY[0x277D80678]);
  v12 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v10, v11, 0, v7, v8, v9);
  durationFormat = self->_durationFormat;
  self->_durationFormat = v12;
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

  v25.receiver = self;
  v25.super_class = TSTDurationNode;
  [(TSTExpressionNode *)&v25 saveToArchive:v7 archiver:v6];
  durationInterval = self->_durationInterval;
  *(a3 + 4) |= 2u;
  *(a3 + 4) = durationInterval;
  v14 = objc_msgSend_durationUnitSmallest(self->_durationFormat, v10, v11, v12, v13);
  *(a3 + 4) |= 4u;
  *(a3 + 10) = v14;
  v19 = objc_msgSend_durationUnitLargest(self->_durationFormat, v15, v16, v17, v18);
  *(a3 + 4) |= 8u;
  *(a3 + 11) = v19;
  v24 = objc_msgSend_durationStyle(self->_durationFormat, v20, v21, v22, v23);
  *(a3 + 4) |= 0x10u;
  *(a3 + 12) = v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_string(self, v6, v7, v8, v9);
  v14 = v10;
  if (self->_blank)
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