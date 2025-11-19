@interface TSTListNode
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (TSTListNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (id)description;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)mostSpecificNodeContainingIndex:(unint64_t)a3 correspondingIndex:(unint64_t)a4;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTListNode

- (TSTListNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v7.receiver = self;
  v7.super_class = TSTListNode;
  return [(TSTExpressionNode *)&v7 initWithContext:a3 children:a4 firstIndex:a5 lastIndex:a6];
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTListNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 61, 0, "Unexpected object in initAsCopyOf:... expected TSTListNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTListNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
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

- (id)mostSpecificNodeContainingIndex:(unint64_t)a3 correspondingIndex:(unint64_t)a4
{
  if (objc_msgSend_subtreeContainsIndex_(self, a2, a3, a4, v4))
  {
    if (objc_msgSend_subtreeContainsIndex_(self, v8, a3, v9, v10) && !objc_msgSend_subtreeContainsIndex_(self, v11, a4, v12, v13) || objc_msgSend_subtreeContainsIndex_(self, v11, a3, v12, v13) && (objc_msgSend_firstIndex(self, v14, v15, v16, v17) == a4 || objc_msgSend_lastIndex(self, v18, v19, v20, v21) == a4))
    {
      v22 = self;
    }

    else
    {
      v24.receiver = self;
      v24.super_class = TSTListNode;
      v22 = [(TSTExpressionNode *)&v24 mostSpecificNodeContainingIndex:a3 correspondingIndex:a4];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_children(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v19 = objc_msgSend_children(self, v15, v16, v17, v18);
    v24 = objc_msgSend_firstObject(v19, v20, v21, v22, v23);
    v28 = objc_msgSend_recordHashesForSubexpressions_(v24, v25, v4, v26, v27);
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

          v28 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v43 + 1) + 8 * v39), v33, v4, v34, v35);
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

    objc_msgSend_recordExpression_data_(v4, v40, self, v28, v30);
  }

  v41 = v28;
  v42 = v30;
  result.var1 = v42;
  result.var0 = v41;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_children(self, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 == 1)
  {
    v19 = objc_msgSend_children(self, v15, v16, v17, v18);
    v24 = objc_msgSend_firstObject(v19, v20, v21, v22, v23);
    isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v24, v25, v4, v26, v27);
  }

  else
  {
    v30.receiver = self;
    v30.super_class = TSTListNode;
    isEqualToExpressionNode = [(TSTExpressionNode *)&v30 isEqualToExpressionNode:v4];
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

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v95 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v5, v6, v7, v8);

    if (v10)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v5, v11, v12, v8);
      objc_msgSend_takeText_(v9, v14, v13, v15, v16);
    }
  }

  v89 = *MEMORY[0x277D81448];
  objc_msgSend_takeText_withLanguage_(v9, v5, @"("), *MEMORY[0x277D81448], v8;
  if (v4)
  {
    whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
    if (whitespaceAfterLeftParen)
    {
      objc_msgSend_takeText_(v9, v17, whitespaceAfterLeftParen, v19, v20);
    }
  }

  v86 = objc_msgSend_children(self, v17, whitespaceAfterLeftParen, v19, v20);
  v25 = objc_msgSend_firstObject(v86, v21, v22, v23, v24);
  objc_msgSend_insertFormulaText_printingOptions_(v25, v26, v9, v4, v27);
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
          objc_msgSend_takeText_withLanguage_(v9, v62, v53, v89, v63);
          if ((v4 & 1) != 0 && v58 < v42)
          {
            v67 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v64, v58, v65, v66);
            objc_msgSend_takeText_(v9, v68, v67, v69, v70);
          }

          objc_msgSend_insertFormulaText_printingOptions_(v25, v64, v9, v4, v66);
          ++v58;
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v90, v94, 16);
      }

      while (v57);
    }

    v25 = 0;
  }

  objc_msgSend_takeText_withLanguage_(v9, v38, @""), v89, v41);
  if (v4)
  {
    v76 = objc_msgSend_whitespaceAfter(self, v72, v73, v74, v75);
    v77 = v76 == 0;

    if (!v77)
    {
      v82 = objc_msgSend_whitespaceAfter(self, v78, v79, v80, v81);
      objc_msgSend_takeText_(v9, v83, v82, v84, v85);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_printingOptions(v9, v10, v11, v12, v13);
  v19 = v14;
  if (!a4)
  {
    if (v14)
    {
      v20 = objc_msgSend_whitespaceBefore(self, v15, whitespaceAfterLeftParen, v17, v18);

      if (v20)
      {
        v23 = objc_msgSend_whitespaceBefore(self, v15, v21, v22, v18);
        objc_msgSend_takeText_(v8, v24, v23, v25, v26);
      }
    }

    objc_msgSend_takeText_withLanguage_(v8, v15, @"("), *MEMORY[0x277D81448], v18;
    if (v19)
    {
      whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
      if (whitespaceAfterLeftParen)
      {
        objc_msgSend_takeText_(v8, v15, whitespaceAfterLeftParen, v17, v18);
      }
    }
  }

  v27 = objc_msgSend_children(self, v15, whitespaceAfterLeftParen, v17, v18);
  v32 = v27;
  if (!a4)
  {
    v96 = self;
    v97 = 1;
    objc_msgSend_push_(v9, v72, &v96, v73, v74);

    v96 = objc_msgSend_firstObject(v32, v75, v76, v77, v78);
    v97 = 0;
    v79 = v96;
    objc_msgSend_push_(v9, v80, &v96, v81, v82);

    goto LABEL_18;
  }

  if (objc_msgSend_count(v27, v28, v29, v30, v31) <= a4)
  {
    objc_msgSend_takeText_withLanguage_(v8, v33, @""), *MEMORY[0x277D81448], v36);
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
    objc_msgSend_takeText_(v8, v92, v79, v93, v94);
LABEL_18:

    goto LABEL_19;
  }

  v37 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v33, v34, v35, v36);
  v42 = objc_msgSend_context(self, v38, v39, v40, v41);
  v47 = objc_msgSend_objectLocale(v42, v43, v44, v45, v46);
  v95 = objc_msgSend_listSeparator(v47, v48, v49, v50, v51);

  v96 = self;
  v97 = a4 + 1;
  objc_msgSend_push_(v9, v52, &v96, v53, v54);

  v58 = objc_msgSend_objectAtIndex_(v32, v55, a4, v56, v57);
  objc_msgSend_takeText_withLanguage_(v8, v59, v95, *MEMORY[0x277D81448], v60);
  if ((v19 & 1) != 0 && a4 - 1 < v37)
  {
    v64 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v61, a4 - 1, v62, v63);
    objc_msgSend_takeText_(v8, v65, v64, v66, v67);
  }

  v68 = v58;
  v96 = v68;
  v97 = 0;
  objc_msgSend_push_(v9, v69, &v96, v70, v71);

LABEL_19:
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v58 = objc_msgSend_children(self, a2, a3, *&a4, a5);
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
        TSCEASTListElement::appendListNode(a3, 0, v20, v21, v22);
        goto LABEL_18;
      }
    }

    v23 = objc_msgSend_objectAtIndex_(v58, v14, 0, v16, v17);
    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v23, v24, a3, *&a4, a5);

    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, self->_whitespaceAfterLeftParen);
    v29 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v25, v26, v27, v28);
    if (v18 >= 2)
    {
      v31 = v29;
      for (i = 1; i != v18; ++i)
      {
        v33 = objc_msgSend_objectAtIndex_(v58, v30, i, v16, v17);
        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v33, v34, a3, *&a4, a5);

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
          TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v37);
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

  TSCEASTListElement::appendListNode(a3, v18, v15, v16, v17);
  v42 = objc_msgSend_whitespaceBefore(self, v38, v39, v40, v41);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v42);

  v19 = objc_msgSend_whitespaceAfter(self, v43, v44, v45, v46);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v19);
LABEL_18:
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[210], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212CE944, off_2812E4498[210], v5);

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
  v5.super_class = TSTListNode;
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
  v9.super_class = TSTListNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:v6];
}

@end