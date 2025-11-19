@interface TSTSpillOriginRefNode
+ (id)spillRangeColor;
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTSpillOriginRefNode)initWithContext:(id)a3 spillOrigin:(TSUChromeCellCoord)a4 isRTL:(BOOL)a5;
- (TSTSpillOriginRefNode)initWithContext:(id)a3 spillOrigin:(TSUChromeCellCoord)a4 spillingRange:(id)a5 isRTL:(BOOL)a6;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTSpillOriginRefNode

- (TSTSpillOriginRefNode)initWithContext:(id)a3 spillOrigin:(TSUChromeCellCoord)a4 isRTL:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = TSTSpillOriginRefNode;
  result = [(TSTExpressionNode *)&v8 initWithContext:a3 children:0 firstIndex:0 lastIndex:0];
  if (result)
  {
    result->_spillOrigin = a4;
    result->_isRTL = a5;
  }

  return result;
}

- (TSTSpillOriginRefNode)initWithContext:(id)a3 spillOrigin:(TSUChromeCellCoord)a4 spillingRange:(id)a5 isRTL:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  isRTL = objc_msgSend_initWithContext_spillOrigin_isRTL_(self, v12, v10, *&a4, v6);
  if (isRTL)
  {
    v18 = objc_msgSend_copy(v11, v13, v14, v15, v16);
    chromeSpillingRange = isRTL->_chromeSpillingRange;
    isRTL->_chromeSpillingRange = v18;

    isRTL->_isRTL = v6;
  }

  return isRTL;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTSpillOriginRefNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSpillOriginRefNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 80, 0, "Unexpected object in initAsCopyOf:... expected TSTSpillOriginRefNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v36.receiver = self;
  v36.super_class = TSTSpillOriginRefNode;
  v27 = [(TSTExpressionNode *)&v36 initAsCopyOf:v8 intoContext:v9 children:v10];
  v32 = v27;
  if (v27)
  {
    v27[16] = *(v14 + 128);
    v33 = objc_msgSend_copy(*(v14 + 136), v28, v29, v30, v31);
    v34 = v32[17];
    v32[17] = v33;
  }

  return v32;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  objc_msgSend_recordExpression_data_(a3, a2, self, 0, 1);
  v3 = 0;
  v4 = 1;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSTSpillOriginRefNode;
    if ([(TSTExpressionNode *)&v15 isEqualToExpressionNode:v4])
    {
      v8 = v4;
      spillOrigin = self->_spillOrigin;
      v10 = v8->_spillOrigin;
      v11 = 0;
      if (spillOrigin._coord.row == v10._coord.row && ((*&v10 ^ *&spillOrigin) & 0x101FFFF00000000) == 0)
      {
        chromeSpillingRange = self->_chromeSpillingRange;
        v14 = v8->_chromeSpillingRange;
        if (chromeSpillingRange == v14 || objc_msgSend_isEqual_(chromeSpillingRange, v5, v14, v6, v7))
        {
          v11 = 1;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)string
{
  if (!self->_chromeSpillingRange)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isRTL(self, a2, v2, v3, v4))
  {
    if (self->_chromeSpillingRange && objc_msgSend_isRTL(self, a2, v2, v3, v4))
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = objc_msgSend_description(self->_chromeSpillingRange, a2, v2, v3, v4);
      v11 = objc_msgSend_stringWithFormat_(v6, v8, @"↲ (%@):", v9, v10, v7);
      goto LABEL_11;
    }

LABEL_6:
    isRTL = objc_msgSend_isRTL(self, a2, v2, v3, v4);
    v13 = MEMORY[0x277CCACA8];
    v14 = NSStringFromTSUCellCoord();
    v7 = v14;
    if (isRTL)
    {
      objc_msgSend_stringWithFormat_(v13, v15, @"↱ %@:", v16, v17, v14);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v13, v15, @"↰ %@:", v16, v17, v14);
    }
    v11 = ;
    goto LABEL_11;
  }

  v18 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_description(self->_chromeSpillingRange, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v18, v19, @"↳ (%@):", v20, v21, v7);
LABEL_11:
  v22 = v11;

  return v22;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v44 = a3;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v6, v7, v8, v9);

    if (v10)
    {
      v15 = objc_msgSend_whitespaceBefore(self, v11, v12, v13, v14);
      objc_msgSend_takeText_(v44, v16, v15, v17, v18);
    }
  }

  v19 = [TSTWPTokenAttachment alloc];
  v24 = objc_msgSend_context(self, v20, v21, v22, v23);
  v27 = objc_msgSend_initWithContext_expressionNode_(v19, v25, v24, self, v26);

  objc_msgSend_insertUIGraphicalAttachment_(v44, v28, v27, v29, v30);
  if (v4)
  {
    v35 = objc_msgSend_whitespaceAfter(self, v31, v32, v33, v34);

    if (v35)
    {
      v40 = objc_msgSend_whitespaceAfter(self, v36, v37, v38, v39);
      objc_msgSend_takeText_(v44, v41, v40, v42, v43);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTSpillOriginRefNode buildASTNodeArray:hostCell:symbolTable:]", *&a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSpillOriginRefNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 167, 0, "TSTSpillOriginRef should NOT be in a normal TSTFormula");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[234], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2214C4BE0, off_2812E4498[234], v5);

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
  v8.super_class = TSTSpillOriginRefNode;
  [(TSTExpressionNode *)&v8 loadFromArchive:v6 unarchiver:a4];
  if (*(a3 + 4))
  {
    v7 = *(a3 + 4);
  }

  else
  {
    v7 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  self->_spillOrigin = sub_2212697C0(v7);
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
  v12.super_class = TSTSpillOriginRefNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:v6];
  spillOrigin = self->_spillOrigin;
  *(a3 + 4) |= 2u;
  v9 = *(a3 + 4);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v10);
    *(a3 + 4) = v9;
  }

  sub_221269820(&spillOrigin, v9);
}

+ (id)spillRangeColor
{
  if (qword_27CFB5668 != -1)
  {
    sub_2216F7F60();
  }

  v3 = qword_27CFB5660;

  return v3;
}

@end