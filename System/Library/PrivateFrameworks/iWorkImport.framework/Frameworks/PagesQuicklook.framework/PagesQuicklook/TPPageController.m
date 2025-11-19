@interface TPPageController
- (BOOL)okToAnchorDrawable:(id)a3 toPageIndex:(unint64_t)a4;
- (BOOL)okToAnchorDrawables:(id)a3 toPageIndex:(unint64_t)a4;
- (BOOL)textIsVerticalForFootnoteReferenceStorage:(id)a3;
- (TPDocumentRoot)documentRoot;
- (TPPageController)initWithDocumentRoot:(id)a3;
- (_NSRange)bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (id)markStringForFootnoteReferenceStorage:(id)a3 ignoreDeletedFootnotes:(BOOL)a4 forceDocumentEndnotes:(BOOL)a5;
- (id)pageInfoForPageIndex:(unint64_t)a3;
- (int64_t)nominalFootnoteKind;
- (int64_t)nominalFootnoteNumbering;
- (unint64_t)p_autoNumberForStorage:(id)a3 ignoreDeletedFootnotes:(BOOL)a4 footnoteKind:(int64_t)a5;
- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)a3;
- (unint64_t)sectionIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (void)accquireLockAndPerformAction:(id)a3;
- (void)changeTrackingVisibilityDidChange;
- (void)dealloc;
- (void)paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4;
- (void)teardown;
- (void)withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5;
@end

@implementation TPPageController

- (TPPageController)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TPPageController;
  v5 = [(TPPageController *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentRoot, v4);
    v7 = objc_alloc(MEMORY[0x277D80FA0]);
    WeakRetained = objc_loadWeakRetained(&v6->_documentRoot);
    v14 = objc_msgSend_bodyStorage(WeakRetained, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_initWithStorage_(v7, v15, v16, v17, v18, v19, v14);
    bodyTopicNumbers = v6->_bodyTopicNumbers;
    v6->_bodyTopicNumbers = v20;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_teardown(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = TPPageController;
  [(TPPageController *)&v7 dealloc];
}

- (void)teardown
{
  objc_storeWeak(&self->_documentRoot, 0);
  bodyTopicNumbers = self->_bodyTopicNumbers;
  self->_bodyTopicNumbers = 0;
}

- (void)paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController paginateThroughPageIndex:forLayoutController:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 41, 0, "subclass should override");

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v26, v21, v22, v23, v24, v25);
}

- (_NSRange)bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController bodyRangeForPageIndex:forcePagination:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 45, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = *MEMORY[0x277D81490];
  v27 = *(MEMORY[0x277D81490] + 8);
  result.length = v27;
  result.location = v26;
  return result;
}

- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController footnoteLayoutRangeForPageIndex:forcePagination:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 50, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = *MEMORY[0x277D81490];
  v27 = *(MEMORY[0x277D81490] + 8);
  result.length = v27;
  result.location = v26;
  return result;
}

- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController documentPageRangeOfSectionIndex:forcePagination:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 65, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = *MEMORY[0x277D81490];
  v27 = *(MEMORY[0x277D81490] + 8);
  result.length = v27;
  result.location = v26;
  return result;
}

- (unint64_t)sectionIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController sectionIndexForPageIndex:forcePagination:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 70, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  return 0;
}

- (id)pageInfoForPageIndex:(unint64_t)a3
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageController pageInfoForPageIndex:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 75, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21, v22, v23, v24);
  return 0;
}

- (void)withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", a4, a5);
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 94, 0, "subclass should override");

  v27 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v27, v22, v23, v24, v25, v26);
}

- (void)accquireLockAndPerformAction:(id)a3
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageController accquireLockAndPerformAction:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 100, 0, "subclass should override");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v25, v20, v21, v22, v23, v24);
}

- (BOOL)okToAnchorDrawable:(id)a3 toPageIndex:(unint64_t)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController okToAnchorDrawable:toPageIndex:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 119, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  return 0;
}

- (BOOL)okToAnchorDrawables:(id)a3 toPageIndex:(unint64_t)a4
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, v7, "[TPPageController okToAnchorDrawables:toPageIndex:]", a4);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 124, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  return 0;
}

- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, *&a3.y, v3, v4, "[TPPageController pageIndexFromCanvasPoint:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v13, v14, v15, v16, v17, v6, v12, 129, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20, v21, v22);
  return 0;
}

- (void)changeTrackingVisibilityDidChange
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_accessController(v7, v8, v9, v10, v11, v12);
  v19[0] = MEMORY[0x277D85DD0];
  v14.n128_u64[0] = 3221225472;
  v19[1] = 3221225472;
  v19[2] = sub_275FD9EEC;
  v19[3] = &unk_27A6A8648;
  v19[4] = self;
  objc_msgSend_performWrite_(v13, v15, v14, v16, v17, v18, v19);
}

- (int64_t)nominalFootnoteKind
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v8 = objc_msgSend_settings(WeakRetained, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_footnoteKind(v8, v9, v10, v11, v12, v13);

  return v14;
}

- (int64_t)nominalFootnoteNumbering
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v8 = objc_msgSend_settings(WeakRetained, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_footnoteNumbering(v8, v9, v10, v11, v12, v13);

  return v14;
}

- (id)markStringForFootnoteReferenceStorage:(id)a3 ignoreDeletedFootnotes:(BOOL)a4 forceDocumentEndnotes:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  v14 = objc_msgSend_owningAttachment(v8, v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  if (!v15)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v30, v31, v32, v33, v22, v28, 168, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37, v38);
  }

  v39 = objc_msgSend_parentStorage(v15, v16, v17, v18, v19, v20);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v46 = objc_msgSend_bodyStorage(WeakRetained, v41, v42, v43, v44, v45);

  if (v39 != v46)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v60, v61, v62, v63, v64, v53, v59, 170, 0, "Footnote reference attachment parent storage is not the body storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68, v69);
  }

  v70 = objc_msgSend_customMarkString(v15, v47, v48, v49, v50, v51);
  v76 = v70;
  if (v70)
  {
    v77 = v70;
LABEL_7:
    v78 = v77;
    goto LABEL_8;
  }

  if (a5)
  {
    v80 = objc_msgSend_p_autoNumberForStorage_ignoreDeletedFootnotes_footnoteKind_(self, v71, v72, v73, v74, v75, v8, v6, 1);
  }

  else
  {
    v86 = objc_msgSend_nominalFootnoteKind(self, v71, v72, v73, v74, v75);
    v80 = objc_msgSend_p_autoNumberForStorage_ignoreDeletedFootnotes_footnoteKind_(self, v87, v88, v89, v90, v91, v8, v6, v86);
  }

  if (v80 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v92 = MEMORY[0x277D81150];
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, v85, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v100, v101, v102, v103, v104, v93, v99, 177, 0, "Could not find the footnote auto number");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108, v109);
    v78 = @"?";
    goto LABEL_8;
  }

  v110 = v80;
  v111 = objc_loadWeakRetained(&self->_documentRoot);
  v117 = objc_msgSend_settings(v111, v112, v113, v114, v115, v116);
  v123 = objc_msgSend_footnoteFormat(v117, v118, v119, v120, v121, v122);

  switch(v123)
  {
    case 1:
      objc_msgSend_tswp_stringForValue_withListNumberFormat_(MEMORY[0x277CCACA8], v124, v125, v126, v127, v128, v110, 67);
      goto LABEL_22;
    case 2:
      objc_msgSend_tswp_stringForValue_withListNumberFormat_(MEMORY[0x277CCACA8], v124, v125, v126, v127, v128, v110, 66);
      v77 = LABEL_22:;
      goto LABEL_7;
    case 5:
      v77 = objc_msgSend_tswp_stringForValue_withPageNumberFormat_(MEMORY[0x277CCACA8], v124, v125, v126, v127, v128, v110, 5);
      goto LABEL_7;
  }

  v129 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v124, v125, v126, v127, v128, v110);
  v78 = objc_msgSend_stringValue(v129, v130, v131, v132, v133, v134);

LABEL_8:

  return v78;
}

- (BOOL)textIsVerticalForFootnoteReferenceStorage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v9 = objc_msgSend_laysOutBodyVertically(WeakRetained, v4, v5, v6, v7, v8);

  return v9;
}

- (unint64_t)p_autoNumberForStorage:(id)a3 ignoreDeletedFootnotes:(BOOL)a4 footnoteKind:(int64_t)a5
{
  v182 = a3;
  v178 = objc_msgSend_nominalFootnoteNumbering(self, v7, v8, v9, v10, v11);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  if (objc_msgSend_laysOutBodyVertically(WeakRetained, v13, v14, v15, v16, v17))
  {
    v18 = objc_loadWeakRetained(&self->_documentRoot);
    v24 = objc_msgSend_settings(v18, v19, v20, v21, v22, v23);
    hasFacingPages = objc_msgSend_hasFacingPages(v24, v25, v26, v27, v28, v29);
  }

  else
  {
    hasFacingPages = 0;
  }

  v31 = objc_loadWeakRetained(&self->_documentRoot);
  v37 = objc_msgSend_bodyStorage(v31, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_footnoteCount(v37, v38, v39, v40, v41, v42);

  if (!v43)
  {
LABEL_44:
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_45;
  }

  v176 = hasFacingPages;
  v44 = 0;
  v46 = a5 != 1 && v178 != 0;
  v48 = a5 == 2 || v178 == 2;
  v180 = v48;
  v181 = v46;
  v49 = 1;
  v177 = 0x7FFFFFFFFFFFFFFFLL;
  v179 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v184 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = objc_loadWeakRetained(&self->_documentRoot);
    v56 = objc_msgSend_bodyStorage(v50, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v56, v57, v58, v59, v60, v61, v44, &v184);

    v63 = objc_loadWeakRetained(&self->_documentRoot);
    v69 = objc_msgSend_bodyStorage(v63, v64, v65, v66, v67, v68);
    if (objc_msgSend_hasHiddenTextAtCharIndex_(v69, v70, v71, v72, v73, v74, v184))
    {

      goto LABEL_43;
    }

    if (!a4)
    {
      break;
    }

    v75 = objc_loadWeakRetained(&self->_documentRoot);
    v81 = objc_msgSend_bodyStorage(v75, v76, v77, v78, v79, v80);
    hasDeletedTextAtCharIndex_range = objc_msgSend_hasDeletedTextAtCharIndex_range_(v81, v82, v83, v84, v85, v86, v184, 0);

    if ((hasDeletedTextAtCharIndex_range & 1) == 0)
    {
      if (v62)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_43:

    if (v43 == ++v44)
    {
      goto LABEL_44;
    }
  }

  if (v62)
  {
    goto LABEL_23;
  }

LABEL_31:
  v124 = MEMORY[0x277D81150];
  v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, v92, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]");
  v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v132, v133, v134, v135, v136, v125, v131, 235, 0, "Failed to find footnote attachment");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139, v140, v141);
LABEL_23:
  if (v184 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, v92, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]");
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v101, v102, v103, v104, v105, v94, v100, 236, 0, "footnote char index should not be NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109, v110);
  }

  if (v181)
  {
    if (v180)
    {
      v111 = objc_loadWeakRetained(&self->_documentRoot);
      v117 = objc_msgSend_bodyStorage(v111, v112, v113, v114, v115, v116);
      v123 = objc_msgSend_sectionIndexForCharIndex_(v117, v118, v119, v120, v121, v122, v184);

      if (v123 != v179)
      {
        v49 = 1;
      }

      v179 = v123;
    }

    else if (v178 == 1)
    {
      PageIndexNeedingLayout = objc_msgSend_pageIndexForCharIndex_forcePagination_(self, v88, v89, v90, v91, v92, v184, 0);
      if (PageIndexNeedingLayout == 0x7FFFFFFFFFFFFFFFLL)
      {
        PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(self, v88, v89, v90, v91, v92);
      }

      v143 = v177;
      if (PageIndexNeedingLayout != v177)
      {
        v144 = (PageIndexNeedingLayout & 1) == 0;
        if ((v176 & v144) == 0)
        {
          v143 = PageIndexNeedingLayout;
        }

        v177 = v143;
        if ((v176 & v144) == 0)
        {
          v49 = 1;
        }
      }
    }
  }

  v145 = objc_msgSend_containedStorage(v62, v88, v89, v90, v91, v92);

  v151 = objc_msgSend_customMarkString(v62, v146, v147, v148, v149, v150);

  if (v145 != v182)
  {
    if (!v151)
    {
      ++v49;
    }

    goto LABEL_43;
  }

  if (v151)
  {
    v158 = MEMORY[0x277D81150];
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, v156, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]");
    v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, v164, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v166, v167, v168, v169, v170, v159, v165, 268, 0, "Tried to get the autonumber of a custom mark footnote");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173, v174, v175);
  }

LABEL_45:
  return v49;
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end