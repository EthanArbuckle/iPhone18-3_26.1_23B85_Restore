@interface TSTFunctionEndNode
- (TSTFunctionEndNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTFunctionEndNode)initWithContext:(id)a3 functionNode:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTFunctionNode)functionNode;
- (unint64_t)firstIndex;
- (unint64_t)lastIndex;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTFunctionEndNode

- (TSTFunctionEndNode)initWithContext:(id)a3 functionNode:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = TSTFunctionEndNode;
  v12 = [(TSTExpressionNode *)&v18 initWithContext:v10 children:0 firstIndex:a5 lastIndex:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_functionNode, v11);
    objc_msgSend_setFunctionEndNode_(v11, v14, v13, v15, v16);
  }

  return v13;
}

- (TSTFunctionEndNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v7.receiver = self;
  v7.super_class = TSTFunctionEndNode;
  return [(TSTExpressionNode *)&v7 initWithContext:a3 children:a4 firstIndex:a5 lastIndex:a6];
}

- (unint64_t)firstIndex
{
  v6 = objc_msgSend_functionNode(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v6, v7, v8, v9, v10);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSTFunctionEndNode;
    IndexOfSubtree = [(TSTExpressionNode *)&v15 firstIndex];
  }

  v13 = IndexOfSubtree;

  return v13;
}

- (unint64_t)lastIndex
{
  v6 = objc_msgSend_functionNode(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v6, v7, v8, v9, v10);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSTFunctionEndNode;
    IndexOfSubtree = [(TSTExpressionNode *)&v15 lastIndex];
  }

  v13 = IndexOfSubtree;

  return v13;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode insertFormulaText:printingOptions:]", *&a4, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 83, 0, "We shouldn't ever buildFormulaText: with a functionEndNode");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode buildASTNodeArray:hostCell:symbolTable:]", *&a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 89, 0, "We shouldn't ever buildASTNodeArray: with a functionEndNode");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[220], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_22130B658, off_2812E4498[220], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v5 = *(a3 + 3);
  }

  else
  {
    v5 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v6.receiver = self;
  v6.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v6 loadFromArchive:v5 unarchiver:a4];
  objc_storeWeak(&self->_functionNode, 0);
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
  v9.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:v6];
}

- (TSTFunctionNode)functionNode
{
  WeakRetained = objc_loadWeakRetained(&self->_functionNode);

  return WeakRetained;
}

@end