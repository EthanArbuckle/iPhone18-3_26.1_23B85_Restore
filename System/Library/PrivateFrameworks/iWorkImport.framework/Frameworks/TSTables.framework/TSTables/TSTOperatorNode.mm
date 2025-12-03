@interface TSTOperatorNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTOperatorNode)initWithContext:(id)context operatorChar:(unsigned __int16)char children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOperatorChar:(unsigned __int16)char;
@end

@implementation TSTOperatorNode

- (TSTOperatorNode)initWithContext:(id)context operatorChar:(unsigned __int16)char children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  charCopy = char;
  contextCopy = context;
  childrenCopy = children;
  v14 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v15, v14, v16, v17))
  {
    v22 = objc_msgSend_count(childrenCopy, v18, v19, v20, v21);
    if (childrenCopy)
    {
      if (v22 != 2)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTOperatorNode initWithContext:operatorChar:children:firstIndex:lastIndex:]", v24, v25);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v29, v30);
        v36 = objc_msgSend_count(childrenCopy, v32, v33, v34, v35);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v37, v27, v31, 45, 0, "Operators should only have 2 children.  There are %lu arguments to operator '%hu'", v36, charCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      }
    }
  }

  v45.receiver = self;
  v45.super_class = TSTOperatorNode;
  v42 = [(TSTExpressionNode *)&v45 initWithContext:contextCopy children:childrenCopy firstIndex:index lastIndex:lastIndex];
  v43 = v42;
  if (v42)
  {
    v42->_operatorChar = charCopy;
  }

  return v43;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTOperatorNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 64, 0, "Unexpected object in initAsCopyOf:... expected TSTOperatorNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTOperatorNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    v27[64] = v14[64];
  }

  return v28;
}

- (void)setOperatorChar:(unsigned __int16)char
{
  objc_msgSend_willModify(self, a2, char, v3, v4);
  self->_operatorChar = char;
  v15 = objc_msgSend_tokenAttachment(self, v7, v8, v9, v10);
  objc_msgSend_invalidate(v15, v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v31 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  operatorChar = self->_operatorChar;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  v16 = operatorChar | 0xA000000;
  if (v15)
  {
    v17 = 0;
    v18 = *v27;
    v19 = 1;
    do
    {
      v20 = 0;
      v21 = v19;
      v19 += v15;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v16 += objc_msgSend_recordHashesForSubexpressions_(*(*(&v26 + 1) + 8 * v20), v12, subexpressionsCopy, v13, v14) * v21;
        v17 += v12;
        ++v21;
        ++v20;
      }

      while (v15 != v20);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v26, v30, 16);
    }

    while (v15);
    v22 = v17 + 1;
  }

  else
  {
    v22 = 1;
  }

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v23, self, v16, v22);
  v24 = v16;
  v25 = v22;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTOperatorNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_operatorChar == nodeCopy->_operatorChar;
  }

  return v5;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14) != 2)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTOperatorNode insertFormulaText:printingOptions:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 148, 0, "OperatorNode doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (v4)
  {
    v30 = objc_msgSend_whitespaceBefore(self, v15, v16, v17, v18);

    if (v30)
    {
      v32 = objc_msgSend_whitespaceBefore(self, v15, v31, v17, v18);
      objc_msgSend_takeText_(textCopy, v33, v32, v34, v35);
    }
  }

  v36 = objc_msgSend_objectAtIndex_(v10, v15, 0, v17, v18);
  objc_msgSend_insertFormulaText_printingOptions_(v36, v37, textCopy, v4, v38);

  v43 = objc_msgSend_string(self, v39, v40, v41, v42);
  objc_msgSend_takeText_withLanguage_(textCopy, v44, v43, *MEMORY[0x277D81448], v45);

  if (v4)
  {
    v50 = objc_msgSend_whitespaceAfter(self, v46, v47, v48, v49);

    if (v50)
    {
      v52 = objc_msgSend_whitespaceAfter(self, v46, v51, v48, v49);
      objc_msgSend_takeText_(textCopy, v53, v52, v54, v55);
    }
  }

  v56 = objc_msgSend_objectAtIndex_(v10, v46, 1, v48, v49);
  objc_msgSend_insertFormulaText_printingOptions_(v56, v57, textCopy, v4, v58);
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v14 = objc_msgSend_children(self, v10, v11, v12, v13);
  if (objc_msgSend_count(v14, v15, v16, v17, v18) != 2)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v21, v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 167, 0, "OperatorNode doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v38 = objc_msgSend_printingOptions(stackCopy, v19, v20, v21, v22);
  if (phase)
  {
    v39 = objc_msgSend_string(self, v34, v35, v36, v37);
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v40, v39, *MEMORY[0x277D81448], v41);

    if (v38)
    {
      v46 = objc_msgSend_whitespaceAfter(self, v42, v43, v44, v45);

      if (v46)
      {
        v48 = objc_msgSend_whitespaceAfter(self, v42, v47, v44, v45);
        objc_msgSend_takeText_(recursiveCopy, v49, v48, v50, v51);
      }
    }

    v73 = objc_msgSend_objectAtIndex_(v14, v42, 1, v44, v45);
    v74 = 0;
    v52 = v73;
    objc_msgSend_push_(stackCopy, v53, &v73, v54, v55);
  }

  else
  {
    selfCopy = self;
    v73 = selfCopy;
    v74 = 1;
    objc_msgSend_push_(stackCopy, v57, &v73, v58, v59);

    if (v38)
    {
      v64 = objc_msgSend_whitespaceBefore(selfCopy, v60, v61, v62, v63);

      if (v64)
      {
        v66 = objc_msgSend_whitespaceBefore(selfCopy, v60, v65, v62, v63);
        objc_msgSend_takeText_(recursiveCopy, v67, v66, v68, v69);
      }
    }

    v73 = objc_msgSend_objectAtIndex_(v14, v60, 0, v62, v63);
    v74 = 0;
    v52 = v73;
    objc_msgSend_push_(stackCopy, v70, &v73, v71, v72);
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v64 = objc_msgSend_children(self, a2, array, *&cell, table);
  if (objc_msgSend_count(v64, v9, v10, v11, v12) != 2)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 193, 0, "Operator node doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_objectAtIndex_(v64, v13, 0, v14, v15);
  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v27, v28, array, *&cell, table);

  v33 = objc_msgSend_whitespaceBefore(self, v29, v30, v31, v32);

  if (v33)
  {
    v38 = objc_msgSend_whitespaceBefore(self, v34, v35, v36, v37);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v38);
  }

  v39 = objc_msgSend_objectAtIndex_(v64, v34, 1, v36, v37);
  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v39, v40, array, *&cell, table);

  v45 = objc_msgSend_whitespaceAfter(self, v41, v42, v43, v44);

  if (v45)
  {
    v50 = objc_msgSend_whitespaceAfter(self, v46, v47, v48, v49);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v50);
  }

  operatorChar = self->_operatorChar;
  if (*MEMORY[0x277D81530] == operatorChar)
  {
    v52 = 1;
LABEL_31:
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, v52, v47, v48, v49);
    goto LABEL_32;
  }

  if (*MEMORY[0x277D815B0] == operatorChar)
  {
    v52 = 2;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81580] == operatorChar)
  {
    v52 = 3;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81548] == operatorChar)
  {
    v52 = 4;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81598] == operatorChar)
  {
    v52 = 5;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81540] == operatorChar)
  {
    v52 = 6;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81558] == operatorChar)
  {
    v52 = 7;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81560] == operatorChar)
  {
    v52 = 8;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81570] == operatorChar)
  {
    v52 = 9;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81578] == operatorChar)
  {
    v52 = 10;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81550] == operatorChar)
  {
    v52 = 11;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81588] == operatorChar)
  {
    v52 = 12;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81538] == operatorChar)
  {
    TSCEASTBinaryElement::appendBinaryElement(array, 28, v47, v48, v49);
  }

  else if (*MEMORY[0x277D815A0] == operatorChar)
  {
    TSCEASTFunctionElement::appendFunctionElement(array, 0x118, 2u, 0, v49);
  }

  else
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v48, v49);
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v56, v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 242, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

LABEL_32:
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  contextCopy = context;
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  v20 = selfCopy;
  v21 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v17, selfCopy, v18, v19);
    v21 = v20;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v27 = objc_msgSend_firstIndex(v20, v23, v24, v25, v26);
      v31 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v28, v27, v29, v30);
      v32 = TSUDynamicCast();

      v37 = v20;
      if (v32)
      {
        v38 = objc_msgSend_expressionNode(v32, v33, v34, v35, v36);
        v39 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v38, v40, v39, v41, v42);

        v37 = v20;
        if (isMemberOfClass)
        {
          v37 = objc_msgSend_expressionNode(v32, v44, v45, v46, v47);
        }
      }

      v21 = v37;
    }
  }

  v89 = v21;
  if ((objc_msgSend_containsObject_(nodesCopy, v17, v21, v18, v19) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v48, v89, v49, v50);
    if (searchCopy)
    {
      v55 = objc_msgSend_children(v20, v51, v52, v53, v54);
      v60 = objc_msgSend_count(v55, v56, v57, v58, v59);

      v61 = TSUFormulaOperatorForChar();
      v68 = objc_msgSend_functionSpecForOperator_arguments_(TSCEFunctionSpec, v62, v61, v60, v63);
      if (v60)
      {
        for (i = 0; i != v60; ++i)
        {
          v70 = objc_msgSend_children(v20, v64, v65, v66, v67);
          v74 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, i, v72, v73);

          if (TSUFormulaOperatorForChar() == 6)
          {
            v79 = 1;
          }

          else if (objc_msgSend_maxArguments(v68, v75, v76, v77, v78) == -1 || (v79 = contextCopy, i < objc_msgSend_maxArguments(v68, v75, v80, v81, v82)))
          {
            v83 = objc_msgSend_argumentSpecForIndex_numArgs_(v68, v75, i, v60, v82);
            v79 = objc_msgSend_rangeContext(v83, v84, v85, v86, v87);
          }

          objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v74, v75, setCopy, v79, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
        }
      }
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[212], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212624E0, off_2812E4498[212], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v6 = *(archive + 3);
  }

  else
  {
    v6 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v7.receiver = self;
  v7.super_class = TSTOperatorNode;
  [(TSTExpressionNode *)&v7 loadFromArchive:v6 unarchiver:unarchiver];
  self->_operatorChar = *(archive + 8);
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

  v10.receiver = self;
  v10.super_class = TSTOperatorNode;
  [(TSTExpressionNode *)&v10 saveToArchive:v7 archiver:archiverCopy];
  operatorChar = self->_operatorChar;
  *(archive + 4) |= 2u;
  *(archive + 8) = operatorChar;
}

@end