@interface TSTFunctionEndNode
- (TSTFunctionEndNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionEndNode)initWithContext:(id)context functionNode:(id)node firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionNode)functionNode;
- (unint64_t)firstIndex;
- (unint64_t)lastIndex;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTFunctionEndNode

- (TSTFunctionEndNode)initWithContext:(id)context functionNode:(id)node firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  nodeCopy = node;
  v18.receiver = self;
  v18.super_class = TSTFunctionEndNode;
  v12 = [(TSTExpressionNode *)&v18 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_functionNode, nodeCopy);
    objc_msgSend_setFunctionEndNode_(nodeCopy, v14, v13, v15, v16);
  }

  return v13;
}

- (TSTFunctionEndNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v7.receiver = self;
  v7.super_class = TSTFunctionEndNode;
  return [(TSTExpressionNode *)&v7 initWithContext:context children:children firstIndex:index lastIndex:lastIndex];
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

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode insertFormulaText:printingOptions:]", *&options, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 83, 0, "We shouldn't ever buildFormulaText: with a functionEndNode");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode buildASTNodeArray:hostCell:symbolTable:]", *&cell, table);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 89, 0, "We shouldn't ever buildASTNodeArray: with a functionEndNode");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[220], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22130B658, off_2812E4498[220], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v5 = *(archive + 3);
  }

  else
  {
    v5 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v6.receiver = self;
  v6.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v6 loadFromArchive:v5 unarchiver:unarchiver];
  objc_storeWeak(&self->_functionNode, 0);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

- (TSTFunctionNode)functionNode
{
  WeakRetained = objc_loadWeakRetained(&self->_functionNode);

  return WeakRetained;
}

@end