@interface TSTArrayNode
- (TSTArrayNode)initWithContext:(id)a3 children:(id)a4 columns:(unsigned int)a5 rows:(unsigned int)a6 firstIndex:(unint64_t)a7 lastIndex:(unint64_t)a8;
- (TSTArrayNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTArrayNode

- (TSTArrayNode)initWithContext:(id)a3 children:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);
  Index_lastIndex = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(self, v17, v10, v11, v16, 1, a5, a6);

  return Index_lastIndex;
}

- (TSTArrayNode)initWithContext:(id)a3 children:(id)a4 columns:(unsigned int)a5 rows:(unsigned int)a6 firstIndex:(unint64_t)a7 lastIndex:(unint64_t)a8
{
  v8 = *&a6;
  v11.receiver = self;
  v11.super_class = TSTArrayNode;
  result = [(TSTExpressionNode *)&v11 initWithContext:a3 children:a4 firstIndex:a7 lastIndex:a8];
  if (result)
  {
    result->_dimensions = (a5 | (v8 << 32));
  }

  return result;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTArrayNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 68, 0, "Unexpected object in initAsCopyOf:... expected TSTArrayNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTArrayNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    v27[16] = *(v14 + 128);
    objc_storeStrong(v27 + 17, *(v14 + 136));
    objc_storeStrong(v28 + 18, *(v14 + 144));
  }

  return v28;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TSUHash();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  v16 = v5 ^ 0xE000000;
  if (v15)
  {
    v17 = 0;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v16 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v24 + 1) + 8 * v19), v12, v4, v13, v14);
        v17 += v12;
        ++v19;
      }

      while (v15 != v19);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v24, v28, 16);
    }

    while (v15);
    v20 = v17 + 1;
  }

  else
  {
    v20 = 1;
  }

  objc_msgSend_recordExpression_data_(v4, v21, self, v16, v20);
  v22 = v16;
  v23 = v20;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- (id)string
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTArrayNode string]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 105, 0, "We shouldn't call the arrayNode's string method, because it won't actually return a proper tokenized string");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v117 = a3;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v6, v7, v8, v9);

    if (v10)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v6, v11, v12, v9);
      objc_msgSend_takeText_(v117, v14, v13, v15, v16);
    }
  }

  v17 = *MEMORY[0x277D81448];
  objc_msgSend_takeText_withLanguage_(v117, v6, @"{", *MEMORY[0x277D81448], v9);
  if (v4)
  {
    whitespaceBeforeFirstChild = self->_whitespaceBeforeFirstChild;
    if (whitespaceBeforeFirstChild)
    {
      objc_msgSend_takeText_(v117, v18, whitespaceBeforeFirstChild, v20, v21);
    }
  }

  v22 = objc_msgSend_children(self, v18, whitespaceBeforeFirstChild, v20, v21);
  v27 = objc_msgSend_objectLocale(self, v23, v24, v25, v26);
  v116 = objc_msgSend_arrayColumnSeparator(v27, v28, v29, v30, v31);
  v114 = objc_msgSend_arrayRowSeparator(v27, v32, v33, v34, v35);
  v115 = self;
  p_dimensions = &self->_dimensions;
  width = self->_dimensions.width;
  height = p_dimensions->height;
  if (objc_msgSend_count(v22, v39, v40, v41, v42) != height * width)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTArrayNode insertFormulaText:printingOptions:]", v45, v46);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 131, 0, "invalid TSTArrayNode children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  whitespaceAfterDelimiters = v115->_whitespaceAfterDelimiters;
  if (whitespaceAfterDelimiters)
  {
    v59 = objc_msgSend_count(whitespaceAfterDelimiters, v43, v44, v45, v46);
    if (v59 + 1 != objc_msgSend_count(v22, v60, v61, v62, v63))
    {
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTArrayNode insertFormulaText:printingOptions:]", v45, v46);
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v67, v68);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v70, v65, v69, 132, 0, "expected n-1 delimiter whitespace elements");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
    }
  }

  v75 = objc_msgSend_count(v115->_whitespaceAfterDelimiters, v43, v44, v45, v46);
  v79 = p_dimensions->height;
  if (v79)
  {
    v80 = v75;
    v81 = 0;
    v82 = 0;
    do
    {
      v83 = p_dimensions->width;
      if (v83)
      {
        v84 = 0;
        do
        {
          v85 = objc_msgSend_objectAtIndex_(v22, v76, v84 + v81 * v83, v77, v78);
          objc_msgSend_insertFormulaText_printingOptions_(v85, v86, v117, v4, v87);
          if (++v84 < p_dimensions->width)
          {
            objc_msgSend_takeText_withLanguage_(v117, v88, v116, v17, v89);
            if ((v4 & 1) != 0 && v82 < v80)
            {
              v93 = objc_msgSend_objectAtIndex_(v115->_whitespaceAfterDelimiters, v90, v82, v91, v92);
              objc_msgSend_takeText_(v117, v94, v93, v95, v96);
            }

            ++v82;
          }

          v83 = p_dimensions->width;
        }

        while (v84 < v83);
        v79 = p_dimensions->height;
      }

      ++v81;
      if (v79 >= 2 && v81 < v79)
      {
        objc_msgSend_takeText_withLanguage_(v117, v76, v114, v17, v78);
        if ((v4 & 1) != 0 && v82 < v80)
        {
          v97 = objc_msgSend_objectAtIndex_(v115->_whitespaceAfterDelimiters, v76, v82, v77, v78);
          objc_msgSend_takeText_(v117, v98, v97, v99, v100);
        }

        ++v82;
        v79 = p_dimensions->height;
      }
    }

    while (v81 < v79);
  }

  objc_msgSend_takeText_withLanguage_(v117, v76, @"}", v17, v78);
  if (v4)
  {
    v105 = objc_msgSend_whitespaceAfter(v115, v101, v102, v103, v104);

    if (v105)
    {
      v110 = objc_msgSend_whitespaceAfter(v115, v106, v107, v108, v109);
      objc_msgSend_takeText_(v117, v111, v110, v112, v113);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_printingOptions(v9, v10, v11, v12, v13);
  v23 = objc_msgSend_children(self, v15, v16, v17, v18);
  if (!a4)
  {
    if (v14)
    {
      v48 = objc_msgSend_whitespaceBefore(self, v19, v20, v21, v22);

      if (v48)
      {
        v51 = objc_msgSend_whitespaceBefore(self, v19, v49, v50, v22);
        objc_msgSend_takeText_(v8, v52, v51, v53, v54);
      }
    }

    objc_msgSend_takeText_withLanguage_(v8, v19, @"{", *MEMORY[0x277D81448], v22);
    if (v14)
    {
      whitespaceBeforeFirstChild = self->_whitespaceBeforeFirstChild;
      if (whitespaceBeforeFirstChild)
      {
        objc_msgSend_takeText_(v8, v55, whitespaceBeforeFirstChild, v57, v58);
      }
    }

    width = self->_dimensions.width;
    height = self->_dimensions.height;
    if (objc_msgSend_count(v23, v55, whitespaceBeforeFirstChild, v57, v58) != height * width)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTArrayNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v21, v22);
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 177, 0, "invalid TSTArrayNode children");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
    if (whitespaceAfterDelimiters)
    {
      v73 = objc_msgSend_count(whitespaceAfterDelimiters, v19, v20, v21, v22);
      if (v73 + 1 != objc_msgSend_count(v23, v74, v75, v76, v77))
      {
        v78 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTArrayNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v21, v22);
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v81, v82);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 178, 0, "expected n-1 delimiter whitespace elements");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
      }
    }
  }

  if (objc_msgSend_count(v23, v19, v20, v21, v22) > a4)
  {
    v124 = self;
    v125 = a4 + 1;
    objc_msgSend_push_(v9, v28, &v124, v29, v30);
  }

  v35 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v24, v25, v26, v27);
  v36 = self->_dimensions.width;
  if (a4 % v36)
  {
    if (v36 < 2)
    {
      goto LABEL_27;
    }

    v37 = objc_msgSend_objectLocale(self, v31, v32, v33, v34);
    v42 = objc_msgSend_arrayColumnSeparator(v37, v38, v39, v40, v41);
    objc_msgSend_takeText_withLanguage_(v8, v43, v42, *MEMORY[0x277D81448], v44);
    if ((v14 & 1) == 0 || v35 <= a4)
    {
      goto LABEL_26;
    }

LABEL_25:
    v97 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v45, a4 - 1, v46, v47);
    objc_msgSend_takeText_(v8, v98, v97, v99, v100);

LABEL_26:
    goto LABEL_27;
  }

  if (v36 <= a4)
  {
    v89 = self->_dimensions.height;
    if (v89 >= 2 && a4 / v36 < v89)
    {
      v90 = objc_msgSend_objectLocale(self, v31, v32, v33, v34);
      v42 = objc_msgSend_arrayRowSeparator(v90, v91, v92, v93, v94);
      objc_msgSend_takeText_withLanguage_(v8, v95, v42, *MEMORY[0x277D81448], v96);
      if ((v14 & 1) == 0 || v35 <= a4)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  if (objc_msgSend_count(v23, v31, v32, v33, v34) > a4)
  {
    v124 = objc_msgSend_objectAtIndex_(v23, v101, a4, v103, v104);
    v125 = 0;
    v105 = v124;
    objc_msgSend_push_(v9, v106, &v124, v107, v108);
  }

  if (objc_msgSend_count(v23, v101, v102, v103, v104) == a4)
  {
    objc_msgSend_takeText_withLanguage_(v8, v109, @"}", *MEMORY[0x277D81448], v110);
    if (v14)
    {
      v115 = objc_msgSend_whitespaceAfter(self, v111, v112, v113, v114);

      if (v115)
      {
        v120 = objc_msgSend_whitespaceAfter(self, v116, v117, v118, v119);
        objc_msgSend_takeText_(v8, v121, v120, v122, v123);
      }
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v65 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v16 = objc_msgSend_count(v65, v9, v10, v11, v12);
  if (v16)
  {
    v17 = objc_msgSend_objectAtIndex_(v65, v13, 0, v14, v15);
    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v17, v18, a3, *&a4, a5);

    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, self->_whitespaceBeforeFirstChild);
    v23 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v19, v20, v21, v22);
    if (v16 != 1)
    {
      v24 = v23;
      for (i = 1; i != v16; ++i)
      {
        v26 = objc_msgSend_objectAtIndex_(v65, v13, i, v14, v15);
        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v26, v27, a3, *&a4, a5);

        whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
        if (whitespaceAfterDelimiters)
        {
          v29 = v24 >= i;
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          v30 = objc_msgSend_objectAtIndex_(whitespaceAfterDelimiters, v13, i - 1, v14, v15);
          TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v30);
        }
      }
    }
  }

  p_dimensions = &self->_dimensions;
  if (self->_dimensions.height >= 0x10000)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTArrayNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 238, 0, "We don't support more than UINT16_MAX rows in an array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  width = p_dimensions->width;
  if (p_dimensions->width >= 0x10000)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTArrayNode buildASTNodeArray:hostCell:symbolTable:]", v14, v15);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 239, 0, "We don't support more than UINT16_MAX columns in an array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    width = p_dimensions->width;
  }

  TSCEASTArrayElement::appendArrayNode(a3, width, LOWORD(self->_dimensions.height), v14, v15);
  v59 = objc_msgSend_whitespaceBefore(self, v55, v56, v57, v58);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v59);

  v64 = objc_msgSend_whitespaceAfter(self, v60, v61, v62, v63);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v64);
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[208], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212CD508, off_2812E4498[208], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v12.receiver = self;
  v12.super_class = TSTArrayNode;
  [(TSTExpressionNode *)&v12 loadFromArchive:v7 unarchiver:v6];
  if ((~*(a3 + 4) & 6) != 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2212CD2D8;
    v11[3] = &unk_27845E3F8;
    v11[4] = self;
    objc_msgSend_addFinalizeHandler_(v6, v8, v11, v9, v10);
  }

  else
  {
    self->_dimensions = (*(a3 + 8) | (*(a3 + 18) << 32));
  }
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
  v12.super_class = TSTArrayNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:v6];
  width = self->_dimensions.width;
  v10 = *(a3 + 4);
  *(a3 + 4) = v10 | 2;
  height = self->_dimensions.height;
  *(a3 + 4) = v10 | 6;
  *(a3 + 8) = width;
  *(a3 + 9) = height;
}

@end