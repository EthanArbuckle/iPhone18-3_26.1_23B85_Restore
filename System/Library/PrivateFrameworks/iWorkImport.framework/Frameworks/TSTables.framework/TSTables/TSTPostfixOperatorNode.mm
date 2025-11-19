@interface TSTPostfixOperatorNode
- (void)addTSTCanvasReferencesToSet:(id)a3 inRangeContext:(unsigned __int8)a4 withColorHelper:(id)a5 preferringNodesFromStorage:(id)a6 showingSpillRanges:(BOOL)a7 deepSearch:(BOOL)a8 calcEngine:(id)a9 allVisitedNodes:(id)a10;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTPostfixOperatorNode

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v59 = a3;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14) != 1)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTPostfixOperatorNode insertFormulaText:printingOptions:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 38, 0, "PostfixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (v4)
  {
    v30 = objc_msgSend_whitespaceBefore(self, v15, v16, v17, v18);

    if (v30)
    {
      v32 = objc_msgSend_whitespaceBefore(self, v15, v31, v17, v18);
      objc_msgSend_takeText_(v59, v33, v32, v34, v35);
    }
  }

  v36 = objc_msgSend_objectAtIndex_(v10, v15, 0, v17, v18);
  objc_msgSend_insertFormulaText_printingOptions_(v36, v37, v59, v4, v38);

  v43 = objc_msgSend_string(self, v39, v40, v41, v42);
  objc_msgSend_takeText_withLanguage_(v59, v44, v43, *MEMORY[0x277D81448], v45);

  if (v4)
  {
    v50 = objc_msgSend_whitespaceAfter(self, v46, v47, v48, v49);

    if (v50)
    {
      v55 = objc_msgSend_whitespaceAfter(self, v51, v52, v53, v54);
      objc_msgSend_takeText_(v59, v56, v55, v57, v58);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_children(self, v10, v11, v12, v13);
  if (objc_msgSend_count(v14, v15, v16, v17, v18) != 1)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTPostfixOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v21, v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 58, 0, "PostfixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v38 = objc_msgSend_printingOptions(v9, v19, v20, v21, v22);
  if (!a4)
  {
    v55 = self;
    v72 = v55;
    v73 = 1;
    objc_msgSend_push_(v9, v56, &v72, v57, v58);

    if (v38)
    {
      v63 = objc_msgSend_whitespaceBefore(v55, v59, v60, v61, v62);

      if (v63)
      {
        v65 = objc_msgSend_whitespaceBefore(v55, v59, v64, v61, v62);
        objc_msgSend_takeText_(v8, v66, v65, v67, v68);
      }
    }

    v72 = objc_msgSend_objectAtIndex_(v14, v59, 0, v61, v62);
    v73 = 0;
    v51 = v72;
    objc_msgSend_push_(v9, v69, &v72, v70, v71);

    goto LABEL_11;
  }

  v39 = objc_msgSend_string(self, v34, v35, v36, v37);
  objc_msgSend_takeText_withLanguage_(v8, v40, v39, *MEMORY[0x277D81448], v41);

  if (v38)
  {
    v46 = objc_msgSend_whitespaceAfter(self, v42, v43, v44, v45);

    if (v46)
    {
      v51 = objc_msgSend_whitespaceAfter(self, v47, v48, v49, v50);
      objc_msgSend_takeText_(v8, v52, v51, v53, v54);
LABEL_11:
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = objc_msgSend_children(self, a2, a3, *&a4, a5, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v56, v60, 16);
  if (v12)
  {
    v13 = *v57;
    do
    {
      v14 = 0;
      do
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v56 + 1) + 8 * v14++), v11, a3, *&a4, a5);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v56, v60, 16);
    }

    while (v12);
  }

  v19 = objc_msgSend_whitespaceBefore(self, v15, v16, v17, v18);
  v20 = v19 == 0;

  if (!v20)
  {
    v25 = objc_msgSend_whitespaceBefore(self, v21, v22, v23, v24);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v25);
  }

  if (*MEMORY[0x277D81590] == objc_msgSend_operatorChar(self, v21, v22, v23, v24))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 15, v27, v28, v29);
  }

  else if (*MEMORY[0x277D815A8] == objc_msgSend_operatorChar(self, v26, v27, v28, v29))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 70, v35, v36, v37);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTPostfixOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v36, v37);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 91, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);
  v50 = v49 == 0;

  if (!v50)
  {
    v55 = objc_msgSend_whitespaceAfter(self, v51, v52, v53, v54);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v55);
  }
}

- (void)addTSTCanvasReferencesToSet:(id)a3 inRangeContext:(unsigned __int8)a4 withColorHelper:(id)a5 preferringNodesFromStorage:(id)a6 showingSpillRanges:(BOOL)a7 deepSearch:(BOOL)a8 calcEngine:(id)a9 allVisitedNodes:(id)a10
{
  v10 = a8;
  v14 = a4;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v24 = a10;
  v25 = a7 || objc_msgSend_operatorChar(self, v20, v21, v22, v23) == *MEMORY[0x277D815A8];
  v26.receiver = self;
  v26.super_class = TSTPostfixOperatorNode;
  [(TSTOperatorNode *)&v26 addTSTCanvasReferencesToSet:v16 inRangeContext:v14 withColorHelper:v17 preferringNodesFromStorage:v18 showingSpillRanges:v25 deepSearch:v10 calcEngine:v19 allVisitedNodes:v24];
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[214], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212F78FC, off_2812E4498[214], v5);

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
    v4 = &TST::_OperatorNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTPostfixOperatorNode;
  [(TSTOperatorNode *)&v5 loadFromArchive:v4 unarchiver:a4];
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

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v8);
    *(a3 + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSTPostfixOperatorNode;
  [(TSTOperatorNode *)&v9 saveToArchive:v7 archiver:v6];
}

@end