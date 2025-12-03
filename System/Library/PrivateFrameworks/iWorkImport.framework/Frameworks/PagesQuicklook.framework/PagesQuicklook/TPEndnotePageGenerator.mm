@interface TPEndnotePageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (TPEndnotePageGenerator)initWithFootnoteLayoutController:(id)controller;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPEndnotePageGenerator

- (TPEndnotePageGenerator)initWithFootnoteLayoutController:(id)controller
{
  controllerCopy = controller;
  v32.receiver = self;
  v32.super_class = TPEndnotePageGenerator;
  v6 = [(TPEndnotePageGenerator *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_footnoteLayoutController, controller);
    if (!v7->_footnoteLayoutController)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPEndnotePageGenerator initWithFootnoteLayoutController:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPEndnotePageGenerator.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 28, 0, "Endnote page generator must be created with a footnote layout controller");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  footnoteLayoutController = self->_footnoteLayoutController;
  hintCopy = hint;
  v14 = objc_msgSend_sectionCharRange(stateCopy, v9, v10, v11, v12, v13);
  v16 = v15;
  Section = objc_msgSend_onLastSection(stateCopy, v15, v17, v18, v19, v20);
  isLastSection_sectionHint = objc_msgSend_endnoteRangeForSectionCharRange_isLastSection_sectionHint_(footnoteLayoutController, v22, v23, v24, v25, v26, v14, v16, Section, hintCopy);
  v29 = v28;

  v35 = isLastSection_sectionHint != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_footnoteIndex(stateCopy, v30, v31, v32, v33, v34) < (isLastSection_sectionHint + v29);
  return v35;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v11 = objc_msgSend_pageIndex(state, v6, v7, v8, v9, v10);
  v22 = objc_msgSend_pageHintForPageIndex_(hintCopy, v12, v13, v14, v15, v16, v11);

  objc_msgSend_setPageKind_(v22, v17, v18, v19, v20, v21, 4);
}

@end