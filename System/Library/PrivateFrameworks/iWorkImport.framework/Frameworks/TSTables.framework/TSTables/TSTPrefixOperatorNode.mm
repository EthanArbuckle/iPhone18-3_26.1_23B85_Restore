@interface TSTPrefixOperatorNode
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTPrefixOperatorNode

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v51 = a3;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14) != 1)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTPrefixOperatorNode insertFormulaText:printingOptions:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 36, 0, "PrefixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if (v4)
  {
    v30 = objc_msgSend_whitespaceBefore(self, v15, v16, v17, v18);

    if (v30)
    {
      v31 = objc_msgSend_whitespaceBefore(self, v15, v16, v17, v18);
      objc_msgSend_takeText_(v51, v32, v31, v33, v34);
    }
  }

  v35 = objc_msgSend_string(self, v15, v16, v17, v18);
  objc_msgSend_takeText_withLanguage_(v51, v36, v35, *MEMORY[0x277D81448], v37);

  if (v4)
  {
    v42 = objc_msgSend_whitespaceAfter(self, v38, v39, v40, v41);

    if (v42)
    {
      v44 = objc_msgSend_whitespaceAfter(self, v38, v43, v40, v41);
      objc_msgSend_takeText_(v51, v45, v44, v46, v47);
    }
  }

  v48 = objc_msgSend_objectAtIndex_(v10, v38, 0, v40, v41);
  objc_msgSend_insertFormulaText_printingOptions_(v48, v49, v51, v4, v50);
}

- (void)insertFormulaTextNonRecursive:(id)a3 phase:(unint64_t)a4 deferredWorkStack:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13 = objc_msgSend_children(self, v9, v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16, v17) != 1)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTPrefixOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v20, v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 52, 0, "PrefixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v37 = objc_msgSend_printingOptions(v8, v18, v19, v20, v21);
  if (v37)
  {
    v38 = objc_msgSend_whitespaceBefore(self, v33, v34, v35, v36);

    if (v38)
    {
      v39 = objc_msgSend_whitespaceBefore(self, v33, v34, v35, v36);
      objc_msgSend_takeText_(v7, v40, v39, v41, v42);
    }
  }

  v43 = objc_msgSend_string(self, v33, v34, v35, v36);
  objc_msgSend_takeText_withLanguage_(v7, v44, v43, *MEMORY[0x277D81448], v45);

  if (v37)
  {
    v50 = objc_msgSend_whitespaceAfter(self, v46, v47, v48, v49);

    if (v50)
    {
      v52 = objc_msgSend_whitespaceAfter(self, v46, v51, v48, v49);
      objc_msgSend_takeText_(v7, v53, v52, v54, v55);
    }
  }

  v60[0] = objc_msgSend_objectAtIndex_(v13, v46, 0, v48, v49);
  v60[1] = 0;
  v56 = v60[0];
  objc_msgSend_push_(v8, v57, v60, v58, v59);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v9 = objc_msgSend_children(self, a2, a3, *&a4, a5, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v67, v71, 16);
  if (v12)
  {
    v13 = *v68;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v67 + 1) + 8 * i), v11, a3, *&a4, a5);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v67, v71, 16);
    }

    while (v12);
  }

  v19 = objc_msgSend_whitespaceAfter(self, v15, v16, v17, v18);
  v20 = v19 == 0;

  if (!v20)
  {
    v25 = objc_msgSend_whitespaceAfter(self, v21, v22, v23, v24);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v25);
  }

  if (*MEMORY[0x277D81530] == objc_msgSend_operatorChar(self, v21, v22, v23, v24))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 14, v27, v28, v29);
  }

  else if (*MEMORY[0x277D815B0] == objc_msgSend_operatorChar(self, v26, v27, v28, v29))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 13, v35, v36, v37);
  }

  else if (*MEMORY[0x277D81568] == objc_msgSend_operatorChar(self, v34, v35, v36, v37))
  {
    v42 = objc_msgSend_argumentSpec(self, v38, v39, v40, v41);
    v47 = v42;
    if (v42)
    {
      v48 = objc_msgSend_rangeContext(v42, v43, v44, v45, v46);
    }

    else
    {
      v48 = 0;
    }

    TSCEASTIntersectionElement::appendIntersectionElement(a3, v48, v44, v45, v46);
  }

  else
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTPrefixOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v40, v41);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 86, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  }

  v60 = objc_msgSend_whitespaceBefore(self, v30, v31, v32, v33);
  v61 = v60 == 0;

  if (!v61)
  {
    v66 = objc_msgSend_whitespaceBefore(self, v62, v63, v64, v65);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v66);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[216], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_22130AB3C, off_2812E4498[216], v5);

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
  v5.super_class = TSTPrefixOperatorNode;
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
  v9.super_class = TSTPrefixOperatorNode;
  [(TSTOperatorNode *)&v9 saveToArchive:v7 archiver:v6];
}

@end