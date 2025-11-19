@interface TSTWrappedFormula
- (id)copyWithZone:(_NSZone *)a3;
- (id)nodesToCheckForBareArgumentPlaceholders;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)reparseWithStorage:(id)a3 adjustExpressionTree:(id)a4;
@end

@implementation TSTWrappedFormula

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = TSTWrappedFormula;
  v4 = [(TSTFormula *)&v14 copyWithZone:a3];
  v9 = objc_msgSend_functionIndex(self, v5, v6, v7, v8);
  objc_msgSend_setFunctionIndex_(v4, v10, v9, v11, v12);
  return v4;
}

- (id)nodesToCheckForBareArgumentPlaceholders
{
  v6 = objc_msgSend_expressionTree(self, a2, v2, v3, v4);

  if (v6)
  {
    objc_opt_class();
    v11 = objc_msgSend_expressionTree(self, v7, v8, v9, v10);
    v12 = TSUDynamicCast();

    if (!v12 || objc_msgSend_functionIndex(v12, v13, v14, v15, v16) != *(&self->super._empty + 1))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTWrappedFormula nodesToCheckForBareArgumentPlaceholders]", v15, v16);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v21, v22);
      v27 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v24, *(&self->super._empty + 1), v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v28, v19, v23, 52, 0, "Expected function node for %@ at the top of parse tree", v27);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v33 = objc_msgSend_children(v12, v13, v17, v15, v16);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v31 = a3;
  objc_opt_class();
  v10 = objc_msgSend_expressionTree(self, v6, v7, v8, v9);
  v11 = TSUDynamicCast();

  if (!v11 || objc_msgSend_functionIndex(v11, v12, v13, v14, v15) != *(&self->super._empty + 1))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTWrappedFormula insertFormulaText:printingOptions:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v19, v20);
    v25 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v22, *(&self->super._empty + 1), v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v26, v17, v21, 62, 0, "Expected function node for %@ at the top of parse tree", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_insertFormulaText_printingOptions_unwrapped_(v11, v12, v31, v4, 1);
}

- (void)reparseWithStorage:(id)a3 adjustExpressionTree:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_length(v6, v8, v9, v10, v11))
  {
    v15 = objc_opt_class();
    v20 = objc_msgSend_range(v6, v16, v17, v18, v19);
    objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v6, v21, v15, v20, v21, &unk_2834B1A68);
    v26 = objc_msgSend_context(v6, v22, v23, v24, v25);
    v31 = objc_msgSend_stylesheet(v6, v27, v28, v29, v30);
    v34 = objc_msgSend_i_copyIntoContext_stylesheet_(v6, v32, v26, v31, v33);

    v35 = [TSTFunctionNode alloc];
    v40 = objc_msgSend_context(v6, v36, v37, v38, v39);
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v35, v41, v40, *(&self->super._empty + 1), 0, 0, 0);

    v43 = [TSTWPTokenAttachment alloc];
    v48 = objc_msgSend_context(v6, v44, v45, v46, v47);
    v51 = objc_msgSend_initWithContext_expressionNode_(v43, v49, v48, Index_lastIndex, v50);

    v56 = objc_msgSend_range(v6, v52, v53, v54, v55);
    objc_msgSend_insertAttachmentOrFootnote_range_(v34, v57, v51, v56, 0);
    if (!objc_msgSend_fixupFormulas(self, v58, v59, v60, v61) || (v62 = objc_opt_class(), v67 = objc_msgSend_range(v34, v63, v64, v65, v66), !objc_msgSend_formulaQuoteContextAtCharIndex_inStorage_(v62, v68, &v68[v67], v34, v69)))
    {
      v70 = [TSTWPTokenAttachment alloc];
      v75 = objc_msgSend_context(v6, v71, v72, v73, v74);
      v80 = objc_msgSend_functionEndNode(Index_lastIndex, v76, v77, v78, v79);
      v83 = objc_msgSend_initWithContext_expressionNode_(v70, v81, v75, v80, v82);

      objc_msgSend_insertUIGraphicalAttachment_(v34, v84, v83, v85, v86);
    }

    v126.receiver = self;
    v126.super_class = TSTWrappedFormula;
    [(TSTFormula *)&v126 reparseWithStorage:v34 adjustExpressionTree:v7];
    if ((objc_msgSend_isSyntaxError(self, v87, v88, v89, v90) & 1) == 0)
    {
      objc_opt_class();
      v95 = objc_msgSend_expressionTree(self, v91, v92, v93, v94);
      v96 = TSUDynamicCast();

      if (!v96 || objc_msgSend_functionIndex(v96, v97, v98, v99, v100) != *(&self->super._empty + 1))
      {
        v101 = MEMORY[0x277D81150];
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]", v99, v100);
        v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v104, v105);
        v110 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v107, *(&self->super._empty + 1), v108, v109);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v111, v102, v106, 115, 0, "Expected function node for %@ at the top of parse tree", v110);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113, v114, v115);
      }

      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = sub_221593CF0;
      v123[3] = &unk_2784671E8;
      v116 = v96;
      v124 = v116;
      v125 = 1;
      objc_msgSend_enumerateExpressionNodesUsingBlock_(v116, v117, v123, v118, v119);
    }
  }

  else
  {
    objc_msgSend_setEmpty_(self, v12, 1, v13, v14);
    objc_msgSend_setExpressionTree_(self, v120, 0, v121, v122);
  }
}

@end