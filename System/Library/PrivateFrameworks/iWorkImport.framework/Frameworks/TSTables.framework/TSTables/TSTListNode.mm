@interface TSTListNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTListNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)description;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTListNode

- (TSTListNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v7.receiver = self;
  v7.super_class = TSTListNode;
  return [(TSTExpressionNode *)&v7 initWithContext:context children:children firstIndex:index lastIndex:lastIndex];
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTListNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 61, 0, "Unexpected object in initAsCopyOf:... expected TSTListNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTListNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 16, v14[16]);
    objc_storeStrong(v28 + 17, v14[17]);
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v8, v5, self);

  return v9;
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  if (objc_msgSend_subtreeContainsIndex_(self, a2, index, correspondingIndex, v4))
  {
    if (objc_msgSend_subtreeContainsIndex_(self, v8, index, v9, v10) && !objc_msgSend_subtreeContainsIndex_(self, v11, correspondingIndex, v12, v13) || objc_msgSend_subtreeContainsIndex_(self, v11, index, v12, v13) && (objc_msgSend_firstIndex(self, v14, v15, v16, v17) == correspondingIndex || objc_msgSend_lastIndex(self, v18, v19, v20, v21) == correspondingIndex))
    {
      selfCopy = self;
    }

    else
    {
      v24.receiver = self;
      v24.super_class = TSTListNode;
      selfCopy = [(TSTExpressionNode *)&v24 mostSpecificNodeContainingIndex:index correspondingIndex:correspondingIndex];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v48 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  v9 = objc_msgSend_children(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v19 = objc_msgSend_children(self, v15, v16, v17, v18);
    v24 = objc_msgSend_firstObject(v19, v20, v21, v22, v23);
    v28 = objc_msgSend_recordHashesForSubexpressions_(v24, v25, subexpressionsCopy, v26, v27);
    v30 = v29;
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = objc_msgSend_children(self, v15, v16, v17, v18, 0);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v43, v47, 16);
    if (v36)
    {
      v37 = 0;
      v38 = *v44;
      v28 = 251658240;
      do
      {
        v39 = 0;
        do
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v31);
          }

          v28 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v43 + 1) + 8 * v39), v33, subexpressionsCopy, v34, v35);
          v37 += v33;
          ++v39;
        }

        while (v36 != v39);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v43, v47, 16);
      }

      while (v36);
      v30 = v37 + 1;
    }

    else
    {
      v30 = 1;
      v28 = 251658240;
    }

    objc_msgSend_recordExpression_data_(subexpressionsCopy, v40, self, v28, v30);
  }

  v41 = v28;
  v42 = v30;
  result.var1 = v42;
  result.var0 = v41;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v9 = objc_msgSend_children(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v19 = objc_msgSend_children(self, v15, v16, v17, v18);
    v24 = objc_msgSend_firstObject(v19, v20, v21, v22, v23);
    isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v24, v25, nodeCopy, v26, v27);
  }

  else
  {
    v30.receiver = self;
    v30.super_class = TSTListNode;
    isEqualToExpressionNode = [(TSTExpressionNode *)&v30 isEqualToExpressionNode:nodeCopy];
  }

  return isEqualToExpressionNode;
}

- (id)string
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTListNode string]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 134, 0, "We shouldn't call the listNode's string method, because it won't actually return a proper tokenized string");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  v95 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v5, v6, v7, v8);

    if (v10)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v5, v11, v12, v8);
      objc_msgSend_takeText_(textCopy, v14, v13, v15, v16);
    }
  }

  v89 = *MEMORY[0x277D81448];
  objc_msgSend_takeText_withLanguage_(textCopy, v5, @"("), *MEMORY[0x277D81448], v8;
  if (v4)
  {
    whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
    if (whitespaceAfterLeftParen)
    {
      objc_msgSend_takeText_(textCopy, v17, whitespaceAfterLeftParen, v19, v20);
    }
  }

  v86 = objc_msgSend_children(self, v17, whitespaceAfterLeftParen, v19, v20);
  v25 = objc_msgSend_firstObject(v86, v21, v22, v23, v24);
  objc_msgSend_insertFormulaText_printingOptions_(v25, v26, textCopy, v4, v27);
  v32 = objc_msgSend_count(v86, v28, v29, v30, v31);
  v37 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v33, v34, v35, v36);
  if (v32 >= 2)
  {
    v42 = v37;
    v43 = objc_msgSend_context(self, v38, v39, v40, v41);
    v48 = objc_msgSend_objectLocale(v43, v44, v45, v46, v47);
    v53 = objc_msgSend_listSeparator(v48, v49, v50, v51, v52);

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = objc_msgSend_subarrayWithRange_(v86, v54, 1, v32 - 1, v55);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v90, v94, 16);
    if (v57)
    {
      v58 = 0;
      v59 = *v91;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v91 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v90 + 1) + 8 * i);

          v25 = v61;
          objc_msgSend_takeText_withLanguage_(textCopy, v62, v53, v89, v63);
          if ((v4 & 1) != 0 && v58 < v42)
          {
            v67 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v64, v58, v65, v66);
            objc_msgSend_takeText_(textCopy, v68, v67, v69, v70);
          }

          objc_msgSend_insertFormulaText_printingOptions_(v25, v64, textCopy, v4, v66);
          ++v58;
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v90, v94, 16);
      }

      while (v57);
    }

    v25 = 0;
  }

  objc_msgSend_takeText_withLanguage_(textCopy, v38, @""), v89, v41);
  if (v4)
  {
    v76 = objc_msgSend_whitespaceAfter(self, v72, v73, v74, v75);
    v77 = v76 == 0;

    if (!v77)
    {
      v82 = objc_msgSend_whitespaceAfter(self, v78, v79, v80, v81);
      objc_msgSend_takeText_(textCopy, v83, v82, v84, v85);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v14 = objc_msgSend_printingOptions(stackCopy, v10, v11, v12, v13);
  v19 = v14;
  if (!phase)
  {
    if (v14)
    {
      v20 = objc_msgSend_whitespaceBefore(self, v15, whitespaceAfterLeftParen, v17, v18);

      if (v20)
      {
        v23 = objc_msgSend_whitespaceBefore(self, v15, v21, v22, v18);
        objc_msgSend_takeText_(recursiveCopy, v24, v23, v25, v26);
      }
    }

    objc_msgSend_takeText_withLanguage_(recursiveCopy, v15, @"("), *MEMORY[0x277D81448], v18;
    if (v19)
    {
      whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
      if (whitespaceAfterLeftParen)
      {
        objc_msgSend_takeText_(recursiveCopy, v15, whitespaceAfterLeftParen, v17, v18);
      }
    }
  }

  v27 = objc_msgSend_children(self, v15, whitespaceAfterLeftParen, v17, v18);
  v32 = v27;
  if (!phase)
  {
    selfCopy2 = self;
    v97 = 1;
    objc_msgSend_push_(stackCopy, v72, &selfCopy2, v73, v74);

    selfCopy2 = objc_msgSend_firstObject(v32, v75, v76, v77, v78);
    v97 = 0;
    v79 = selfCopy2;
    objc_msgSend_push_(stackCopy, v80, &selfCopy2, v81, v82);

    goto LABEL_18;
  }

  if (objc_msgSend_count(v27, v28, v29, v30, v31) <= phase)
  {
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v33, @""), *MEMORY[0x277D81448], v36);
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    v87 = objc_msgSend_whitespaceAfter(self, v83, v84, v85, v86);

    if (!v87)
    {
      goto LABEL_19;
    }

    v79 = objc_msgSend_whitespaceAfter(self, v88, v89, v90, v91);
    objc_msgSend_takeText_(recursiveCopy, v92, v79, v93, v94);
LABEL_18:

    goto LABEL_19;
  }

  v37 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v33, v34, v35, v36);
  v42 = objc_msgSend_context(self, v38, v39, v40, v41);
  v47 = objc_msgSend_objectLocale(v42, v43, v44, v45, v46);
  v95 = objc_msgSend_listSeparator(v47, v48, v49, v50, v51);

  selfCopy2 = self;
  v97 = phase + 1;
  objc_msgSend_push_(stackCopy, v52, &selfCopy2, v53, v54);

  v58 = objc_msgSend_objectAtIndex_(v32, v55, phase, v56, v57);
  objc_msgSend_takeText_withLanguage_(recursiveCopy, v59, v95, *MEMORY[0x277D81448], v60);
  if ((v19 & 1) != 0 && phase - 1 < v37)
  {
    v64 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v61, phase - 1, v62, v63);
    objc_msgSend_takeText_(recursiveCopy, v65, v64, v66, v67);
  }

  v68 = v58;
  selfCopy2 = v68;
  v97 = 0;
  objc_msgSend_push_(stackCopy, v69, &selfCopy2, v70, v71);

LABEL_19:
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v58 = objc_msgSend_children(self, a2, array, *&cell, table);
  v13 = objc_msgSend_count(v58, v9, v10, v11, v12);
  v18 = v13;
  if (v13)
  {
    if (v13 == 1)
    {
      v19 = objc_msgSend_firstObject(v58, v14, v15, v16, v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TSCEASTListElement::appendListNode(array, 0, v20, v21, v22);
        goto LABEL_18;
      }
    }

    v23 = objc_msgSend_objectAtIndex_(v58, v14, 0, v16, v17);
    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v23, v24, array, *&cell, table);

    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, self->_whitespaceAfterLeftParen);
    v29 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v25, v26, v27, v28);
    if (v18 >= 2)
    {
      v31 = v29;
      for (i = 1; i != v18; ++i)
      {
        v33 = objc_msgSend_objectAtIndex_(v58, v30, i, v16, v17);
        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v33, v34, array, *&cell, table);

        whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
        if (whitespaceAfterDelimiters)
        {
          v36 = v31 >= i;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          v37 = objc_msgSend_objectAtIndex_(whitespaceAfterDelimiters, v30, i - 1, v16, v17);
          TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v37);
        }
      }

      if (HIDWORD(v18))
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTListNode buildASTNodeArray:hostCell:symbolTable:]", v16, v17);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v50, v51);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 251, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
        v18 = 0xFFFFFFFFLL;
      }
    }
  }

  TSCEASTListElement::appendListNode(array, v18, v15, v16, v17);
  v42 = objc_msgSend_whitespaceBefore(self, v38, v39, v40, v41);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v42);

  v19 = objc_msgSend_whitespaceAfter(self, v43, v44, v45, v46);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v19);
LABEL_18:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[210], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212CE944, off_2812E4498[210], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v4 = *(archive + 3);
  }

  else
  {
    v4 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTListNode;
  [(TSTExpressionNode *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
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
  v9.super_class = TSTListNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

@end