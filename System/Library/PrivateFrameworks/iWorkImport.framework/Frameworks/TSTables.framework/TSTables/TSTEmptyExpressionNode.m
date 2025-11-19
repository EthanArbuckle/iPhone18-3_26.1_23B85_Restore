@interface TSTEmptyExpressionNode
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTEmptyExpressionNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (id)description;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTEmptyExpressionNode

- (TSTEmptyExpressionNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v7.receiver = self;
  v7.super_class = TSTEmptyExpressionNode;
  return [(TSTExpressionNode *)&v7 initWithContext:a3 children:a4 firstIndex:0x7FFFFFFFFFFFFFFFLL lastIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  objc_msgSend_recordExpression_data_(a3, a2, self, 218103808, 1);
  v3 = 218103808;
  v4 = 1;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v28 = a3;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v6, v7, v8, v9);

    if (v10)
    {
      v15 = objc_msgSend_whitespaceBefore(self, v11, v12, v13, v14);
      objc_msgSend_takeText_(v28, v16, v15, v17, v18);
    }

    v19 = objc_msgSend_whitespaceAfter(self, v11, v12, v13, v14);

    if (v19)
    {
      v24 = objc_msgSend_whitespaceAfter(self, v20, v21, v22, v23);
      objc_msgSend_takeText_(v28, v25, v24, v26, v27);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 23, a3, *&a4, a5);
  v11 = objc_msgSend_whitespaceBefore(self, v7, v8, v9, v10);

  if (v11)
  {
    v21 = objc_msgSend_whitespaceBefore(self, v12, v13, v14, v15);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v21);
  }

  v16 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);

  if (v16)
  {
    v22 = objc_msgSend_whitespaceAfter(self, v17, v18, v19, v20);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v22);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[230], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_221380740, off_2812E4498[230], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTEmptyExpressionNode;
  [(TSTExpressionNode *)&v5 loadFromArchive:v4 unarchiver:a4];
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

  v9.receiver = self;
  v9.super_class = TSTEmptyExpressionNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v8, v5, self);

  return v9;
}

@end