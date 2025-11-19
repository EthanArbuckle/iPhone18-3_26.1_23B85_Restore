@interface TSWPText
+ (double)columnLayoutWidthForBodyWidth:(double)a3 insets:(UIEdgeInsets *)a4;
- (BOOL)containsStartOfRange:(_NSRange)a3;
- (BOOL)forceWesternLineBreaking;
- (BOOL)shouldHyphenate;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)a3;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)measureText:(id)a3;
- (CGSize)measureText:(id)a3 withMaxWidth:(double)a4;
- (CGSize)minSize;
- (TSULocale)locale;
- (TSWPText)init;
- (TSWPText)initWithParagraphStyle:(id)a3 columnStyle:(id)a4;
- (TSWPText)initWithParagraphStyle:(id)a3 listStyle:(id)a4 columnStyle:(id)a5;
- (TSWPText)initWithStylesheet:(id)a3 paragraphStyle:(id)a4 listStyle:(id)a5 columnStyle:(id)a6 alignmentForNaturalAlignment:(int)a7 naturalDirection:(int)a8;
- (TSWPTextDelegate)delegate;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (__CFLocale)hyphenationLocale;
- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (double)maxAnchorInBlockDirection;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (id)addPartitionableAttachmentLayout:(id)a3;
- (id)layoutForInlineDrawable:(id)a3;
- (id)layoutText:(id)a3 context:(id)a4 kind:(unsigned __int8)a5 minSize:(CGSize)a6 maxSize:(CGSize)a7 anchor:(CGPoint)a8 flags:(int)a9;
- (id)layoutText:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 flags:(int)a7;
- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 flags:(int)a7;
- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9;
- (id)styleProvider;
- (id)validatedLayoutForAnchoredDrawable:(id)a3;
- (int)verticalAlignment;
- (unint64_t)columnCount;
- (void)drawColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7 renderMode:(unint64_t)a8;
- (void)drawText:(id)a3 inContext:(CGContext *)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8 isFlipped:(BOOL)a9 viewScale:(double)a10;
- (void)p_setParentLayoutMaximumFrameSizeForChildren;
@end

@implementation TSWPText

- (TSWPText)initWithStylesheet:(id)a3 paragraphStyle:(id)a4 listStyle:(id)a5 columnStyle:(id)a6 alignmentForNaturalAlignment:(int)a7 naturalDirection:(int)a8
{
  v52 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v53.receiver = self;
  v53.super_class = TSWPText;
  v18 = [(TSWPText *)&v53 init];
  p_isa = &v18->super.isa;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paragraphStyle, a4);
    objc_storeStrong(p_isa + 1, a5);
    objc_storeStrong(p_isa + 3, a3);
    if (!v17)
    {
      v23 = objc_msgSend_context(v15, v21, v22);
      v17 = objc_msgSend_defaultStyleWithContext_(TSWPColumnStyle, v24, v23);
    }

    objc_storeStrong(p_isa + 2, v17);
    if (objc_msgSend_columnCount(v20->_columnStyle, v25, v26) != 1)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPText initWithStylesheet:paragraphStyle:listStyle:columnStyle:alignmentForNaturalAlignment:naturalDirection:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 114, 0, "TSWPText - only supporting a single column of text at this time");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }

    v35 = objc_opt_new();
    columns = v20->_columns;
    v20->_columns = v35;

    v20->_naturalAlignment = a7;
    v20->_naturalDirection = a8;
    v37 = objc_alloc_init(TSWPTextParentInfo);
    parentInfo = v20->_parentInfo;
    v20->_parentInfo = v37;

    v39 = objc_alloc(MEMORY[0x277D802F8]);
    v41 = objc_msgSend_initWithCanvas_(v39, v40, 0);
    layoutController = v20->_layoutController;
    v20->_layoutController = v41;

    v43 = [TSWPTextParentLayout alloc];
    v45 = objc_msgSend_initWithInfo_(v43, v44, v20->_parentInfo);
    parentLayout = v20->_parentLayout;
    v20->_parentLayout = v45;

    v49 = objc_msgSend_rootLayout(v20->_layoutController, v47, v48);
    objc_msgSend_addChild_(v49, v50, v20->_parentLayout);
  }

  return v20;
}

- (TSWPText)initWithParagraphStyle:(id)a3 listStyle:(id)a4 columnStyle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_stylesheet(v8, v11, v12);
  v15 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(self, v14, v13, v8, v9, v10, 0, 0);

  return v15;
}

- (TSWPText)initWithParagraphStyle:(id)a3 columnStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_stylesheet(v6, v8, v9);
  v12 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(self, v11, v10, v6, 0, v7, 0, 0);

  return v12;
}

- (TSWPText)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 136, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSWPText init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 flags:(int)a7
{
  v7 = objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(self, a2, a3, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, *&a7, a4.width, a4.height, a5.width, a5.height, a6.x, a6.y);

  return v7;
}

- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9
{
  y = a6.y;
  x = a6.x;
  height = a5.height;
  width = a5.width;
  v16 = a4.height;
  v17 = a4.width;
  v77 = a3;
  if (self->_storage)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 153, 0, "Storage should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (!v77)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 154, 0, "Should probably pass some actual text to layout - it is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  objc_msgSend_setChildren_(self->_parentLayout, v20, MEMORY[0x277CBEBF8]);
  if (objc_msgSend_length(v77, v35, v36))
  {
    self->_minSize.width = v17;
    self->_minSize.height = v16;
    self->_maxSize.width = width;
    self->_maxSize.height = height;
    self->_flags = a9;
    self->_anchor.x = x;
    self->_anchor.y = y;
    self->_pageNumber = a7;
    self->_pageCount = a8;
    objc_storeStrong(&self->_storage, a3);
    objc_msgSend_p_setParentLayoutMaximumFrameSizeForChildren(self, v37, v38);
    v39 = [TSWPLayoutManager alloc];
    v41 = objc_msgSend_initWithStorage_owner_(v39, v40, self->_storage, self);
    v43 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v41, v42, self, 0, 0);
    v46 = objc_msgSend_columns(self, v44, v45);
    v49 = objc_msgSend_count(v46, v47, v48);

    if (v49 != 1)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      v58 = objc_msgSend_columns(self, v56, v57);
      v61 = objc_msgSend_count(v58, v59, v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v62, v53, v55, 180, 0, "Invalid column count: %lu", v61);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
    }

    v65 = objc_msgSend_columns(self, v50, v51);
    v68 = objc_msgSend_firstObject(v65, v66, v67);

    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v71 = objc_msgSend_columns(self, v69, v70);
    objc_msgSend_removeAllObjects(v71, v72, v73);

    v74 = *MEMORY[0x277CBF3A8];
    self->_minSize = *MEMORY[0x277CBF3A8];
    self->_maxSize = v74;
    self->_flags = 0;
    self->_anchor = *MEMORY[0x277CBF348];
    storage = self->_storage;
    self->_storage = 0;
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

- (id)layoutText:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 flags:(int)a7
{
  v7 = *&a7;
  y = a6.y;
  x = a6.x;
  height = a5.height;
  width = a5.width;
  v12 = a4.height;
  v13 = a4.width;
  v15 = a3;
  v18 = objc_msgSend_context(self->_paragraphStyle, v16, v17);
  v20 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(self, v19, v15, v18, 3, v7, v13, v12, width, height, x, y);

  return v20;
}

- (id)layoutText:(id)a3 context:(id)a4 kind:(unsigned __int8)a5 minSize:(CGSize)a6 maxSize:(CGSize)a7 anchor:(CGPoint)a8 flags:(int)a9
{
  y = a8.y;
  x = a8.x;
  height = a7.height;
  width = a7.width;
  v14 = a6.height;
  v15 = a6.width;
  v16 = a5;
  v19 = a3;
  v21 = a4;
  if (self->_storage)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 220, 0, "Storage should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (!v19)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 221, 0, "Should probably pass some actual text to layout - it is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  objc_msgSend_setChildren_(self->_parentLayout, v20, MEMORY[0x277CBEBF8]);
  if (objc_msgSend_length(v19, v36, v37))
  {
    self->_minSize.width = v15;
    self->_minSize.height = v14;
    self->_maxSize.width = width;
    self->_maxSize.height = height;
    self->_flags = a9;
    self->_anchor.x = x;
    self->_anchor.y = y;
    v39 = objc_msgSend_filterText_removingAttachments_removingControlCharacters_(TSWPStorage, v38, v19, 1, 0);

    v40 = [TSWPStorage alloc];
    v42 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v40, v41, v21, v39, v16, self->_stylesheet, self->_paragraphStyle, self->_listStyle, 0, 0, self->_naturalDirection);
    storage = self->_storage;
    self->_storage = v42;

    v100 = v21;
    if (!self->_storage)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 251, 0, "invalid nil value for '%{public}s'", "_storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
    }

    objc_msgSend_p_setParentLayoutMaximumFrameSizeForChildren(self, v44, v45);
    v53 = [TSWPLayoutManager alloc];
    v56 = objc_msgSend_initWithStorage_owner_(v53, v54, self->_storage, self);
    if (!v56)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 260, 0, "invalid nil value for '%{public}s'", "lm");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
    }

    v64 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v56, v55, self, 0, 0);
    v67 = objc_msgSend_columns(self, v65, v66);
    v70 = objc_msgSend_count(v67, v68, v69);

    if (v70 != 1)
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      v79 = objc_msgSend_columns(self, v77, v78);
      v82 = objc_msgSend_count(v79, v80, v81);
      if (objc_msgSend_layoutFinished(v56, v83, v84))
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v85, v74, v76, 263, 0, "Invalid column count: %lu maxSize: {%g, %g} layoutFinished: %c", v82, *&width, *&height, 89);
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v85, v74, v76, 263, 0, "Invalid column count: %lu maxSize: {%g, %g} layoutFinished: %c", v82, *&width, *&height, 78);
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
    }

    v88 = objc_msgSend_columns(self, v71, v72);
    v91 = objc_msgSend_firstObject(v88, v89, v90);

    if (v64)
    {
      (*(*v64 + 8))(v64);
    }

    v94 = objc_msgSend_columns(self, v92, v93);
    objc_msgSend_removeAllObjects(v94, v95, v96);

    v97 = *MEMORY[0x277CBF3A8];
    self->_minSize = *MEMORY[0x277CBF3A8];
    self->_maxSize = v97;
    self->_flags = 0;
    self->_anchor = *MEMORY[0x277CBF348];
    v98 = self->_storage;
    self->_storage = 0;

    v19 = v39;
    v21 = v100;
  }

  else
  {
    v91 = 0;
  }

  return v91;
}

- (CGSize)measureText:(id)a3
{
  MEMORY[0x2821F9670](self, sel_measureText_withMaxWidth_, a3);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)measureText:(id)a3 withMaxWidth:(double)a4
{
  v7 = a3;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  if (v7)
  {
    v10 = objc_msgSend_layoutText_minSize_maxSize_anchor_flags_(self, v6, v7, 4111, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), a4, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    objc_msgSend_frameBounds(v10, v11, v12);
    v8 = v13;
    v9 = v14;
  }

  v15 = v8;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)drawColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7 renderMode:(unint64_t)a8
{
  v10 = a6;
  v49 = a3;
  v15 = a4;
  if (!v49 || !a5)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPText drawColumn:selection:inContext:isFlipped:viewScale:renderMode:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 311, 0, "Invalid arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (v49 && a5)
  {
    v48 = v15;
    v23 = TSDCGContextGetPdfTagger();
    v24 = TSUProtocolCast();

    objc_msgSend_beginOneColumnText_column_limitSelection_(v24, v25, self, v49, v15, &unk_28866BEF0);
    v26 = objc_opt_new();
    v27 = a8;
    v28 = [TSWPLineRenderer alloc];
    v30 = objc_msgSend_initWithContext_(v28, v29, a5);
    objc_msgSend_setFlipShadows_(v30, v31, v10);
    objc_msgSend_setViewScale_(v30, v32, v33, a7);
    v34 = MEMORY[0x277D81490];
    v35 = *MEMORY[0x277D81490];
    v36 = *(MEMORY[0x277D81490] + 8);
    HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
    v39 = *v34;
    v38 = v34[1];
    v42 = objc_msgSend_pageCount(self, v40, v41);
    v47 = 0;
    v46 = HasBackgroundsSuppressed;
    v45 = 0;
    objc_msgSend_renderWithRenderer_currentSelection_limitSelection_listRange_rubyGlyphRange_isCanvasInteractive_isInDrawingMode_suppressedMisspellingRange_blackAndWhite_dictationInterpretations_autocorrections_markedRange_markedText_renderMode_pageCount_suppressInvisibles_currentCanvasSelection_(v49, v43, v30, 0, v48, v35, v36, v35, v36, v45, v35, v36, v46, v26, v26, v39, v38, 0, v27, v42, v47, 0);
    objc_msgSend_endOneColumnText_column_(v24, v44, self, v49);

    v15 = v48;
  }
}

- (void)drawText:(id)a3 inContext:(CGContext *)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8 isFlipped:(BOOL)a9 viewScale:(double)a10
{
  v11 = a9;
  y = a7.y;
  x = a7.x;
  v17 = objc_msgSend_layoutText_minSize_maxSize_anchor_flags_(self, a2, a3, *&a8, a5.width, a5.height, a6.width, a6.height);
  if (v17)
  {
    CGContextSaveGState(a4);
    CGContextTranslateCTM(a4, x, y);
    objc_msgSend_drawColumn_inContext_isFlipped_viewScale_(self, v16, v17, a4, v11, a10);
    CGContextRestoreGState(a4);
  }
}

- (TSULocale)locale
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_msgSend_locale(WeakRetained, v4, v5);

  if (!v6)
  {
    v11 = objc_msgSend_documentRoot(self->_columnStyle, v7, v8);
    if (!v11)
    {
      v11 = objc_msgSend_documentRoot(self->_storage, v9, v10);
      if (!v11)
      {
        v12 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self->_storage, v9, 0, 0);
        v11 = objc_msgSend_documentRoot(v12, v13, v14);
      }
    }

    v6 = objc_msgSend_typesettingLocale(v11, v9, v10);
  }

  return v6;
}

- (BOOL)shouldHyphenate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  shouldHyphenate = objc_msgSend_shouldHyphenate(WeakRetained, v3, v4);

  return shouldHyphenate;
}

- (__CFLocale)hyphenationLocale
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_locale(WeakRetained, v3, v4);
  v8 = objc_msgSend_cfLocale(v5, v6, v7);

  return v8;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_msgSend_padding(v7, v8, v9);
    objc_msgSend_edgeInsets(v10, v11, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    columnStyle = self->_columnStyle;
    if (!columnStyle)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPText adjustedInsetsForTarget:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 464, 0, "invalid nil value for '%{public}s'", "_columnStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      columnStyle = self->_columnStyle;
    }

    objc_msgSend_adjustedInsetsForTarget_(columnStyle, v6, v4);
    v14 = v29;
    v16 = v30;
    v18 = v31;
    v20 = v32;
  }

  v33 = v14;
  v34 = v16;
  v35 = v18;
  v36 = v20;
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (unint64_t)columnCount
{
  columnStyle = self->_columnStyle;
  if (!columnStyle)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText columnCount]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 476, 0, "invalid nil value for '%{public}s'", "_columnStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    columnStyle = self->_columnStyle;
    if (!columnStyle)
    {
      return 1;
    }
  }

  return objc_msgSend_columnCount(columnStyle, a2, v2);
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  columnStyle = self->_columnStyle;
  if (!columnStyle)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText widthForColumnIndex:bodyWidth:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 481, 0, "invalid nil value for '%{public}s'", "_columnStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    columnStyle = self->_columnStyle;
  }

  objc_msgSend_widthForColumnIndex_bodyWidth_(columnStyle, a2, a3, a4);
  return result;
}

- (double)gapForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  columnStyle = self->_columnStyle;
  if (!columnStyle)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText gapForColumnIndex:bodyWidth:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 486, 0, "invalid nil value for '%{public}s'", "_columnStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    columnStyle = self->_columnStyle;
  }

  objc_msgSend_gapForColumnIndex_bodyWidth_(columnStyle, a2, a3, a4);
  return result;
}

+ (double)columnLayoutWidthForBodyWidth:(double)a3 insets:(UIEdgeInsets *)a4
{
  if (a3 <= 10.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 10.0;
  }

  v5 = MEMORY[0x277D81428];
  if (a4)
  {
    v5 = a4;
  }

  left = v5->left;
  right = v5->right;
  if (a3 - left - right < v4)
  {
    v8 = (a3 - v4) / (left + right);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v9 = fmax(v8, 0.0);
    left = left * v9;
    right = right * v9;
  }

  if (a4)
  {
    bottom = v5->bottom;
    a4->top = v5->top;
    a4->left = left;
    a4->bottom = bottom;
    a4->right = right;
  }

  return a3 - left - right;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  v12 = a5;
  v13 = *(MEMORY[0x277D81428] + 16);
  v26 = *MEMORY[0x277D81428];
  v27 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_msgSend_adjustedInsetsForTarget_(self, v15, self, v26);
    *&v26 = v16;
    *(&v26 + 1) = v17;
    *&v27 = v18;
    *(&v27 + 1) = v19;
    v20 = objc_opt_class();
    objc_msgSend_columnLayoutWidthForBodyWidth_insets_(v20, v21, &v26, a4);
    a4 = v22;
  }

  objc_msgSend_positionForColumnIndex_bodyWidth_target_outWidth_outGap_(self->_columnStyle, v15, a3, v12, a6, a7, a4, v26);
  v24 = v23 + *(&v26 + 1);

  return v24;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)currentSize
{
  if (!objc_msgSend_autosizeFlags(self, a2, v2))
  {
    objc_msgSend_minSize(self, v4, v5);
    v7 = v6;
    v9 = v8;
    objc_msgSend_maxSize(self, v10, v11);
    if (v7 != v13 || v9 != v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPText currentSize]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 594, 0, "autosizeFlags set to no autosize but min and max sizes are unequal. They should be the same.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  objc_msgSend_maxSize(self, v4, v5);
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGPoint)position
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchor.x;
  y = self->_anchor.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)verticalAlignment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_msgSend_verticalAlignment(v5, v6, v7);

    return v8;
  }

  else
  {
    columnStyle = self->_columnStyle;

    return objc_msgSend_intValueForProperty_(columnStyle, v4, 149);
  }
}

- (CGRect)targetRectForCanvasRect:(CGRect)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)layoutForInlineDrawable:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_layoutController(self->_parentLayout, v5, v6);
  v9 = objc_msgSend_layoutForInfo_childOfLayout_(v7, v8, v4, self->_parentLayout);

  if (!v9)
  {
    v12 = objc_alloc(objc_msgSend_layoutClass(v4, v10, v11));
    v9 = objc_msgSend_initWithInfo_(v12, v13, v4);
    if (v9)
    {
      objc_msgSend_addChild_(self->_parentLayout, v14, v9);
    }
  }

  return v9;
}

- (id)validatedLayoutForAnchoredDrawable:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText validatedLayoutForAnchoredDrawable:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 663, 0, "Anchored attachments not yet supported in TSWPText.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)addPartitionableAttachmentLayout:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPText addPartitionableAttachmentLayout:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  v12 = objc_msgSend_wpKind(self->_storage, v10, v11);
  v13 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v7, v9, 674, 0, "Partitioned attachments not yet supported in non-body text: %u %{public}@", v12, v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  return 0;
}

- (double)maxAnchorInBlockDirection
{
  objc_msgSend_position(self, a2, v2);
  v5 = v4;
  objc_msgSend_maxSize(self, v6, v7);
  return v5 + v8;
}

- (BOOL)containsStartOfRange:(_NSRange)a3
{
  location = a3.location;
  v4 = objc_msgSend_columns(self, a2, a3.location, a3.length);
  v6 = objc_msgSend_rangeOfColumns_(TSWPColumn, v5, v4);
  v8 = v7;

  return location >= v6 && location - v6 < v8;
}

- (BOOL)forceWesternLineBreaking
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_forceWesternLineBreaking(WeakRetained, v3, v4);

  return v5;
}

- (void)p_setParentLayoutMaximumFrameSizeForChildren
{
  v4 = *MEMORY[0x277D81428];
  v5 = *(MEMORY[0x277D81428] + 8);
  v6 = *(MEMORY[0x277D81428] + 16);
  v7 = *(MEMORY[0x277D81428] + 24);
  objc_msgSend_maxSize(self, a2, v2);
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_opt_class();
    v14 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_msgSend_padding(v14, v15, v16);
    v18 = TSUDynamicCast();

    if (v18)
    {
      objc_msgSend_topInset(v18, v19, v20);
      v4 = v21;
      objc_msgSend_leftInset(v18, v22, v23);
      v5 = v24;
      objc_msgSend_bottomInset(v18, v25, v26);
      v6 = v27;
      objc_msgSend_rightInset(v18, v28, v29);
      v7 = v30;
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_maxWidthForChildren(v31, v32, v33);
    v35 = v34;

    if (v35 < v9)
    {
      v36 = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_maxWidthForChildren(v36, v37, v38);
      v9 = v39;
    }
  }

  else
  {
    objc_msgSend_adjustedInsetsForTarget_(self->_columnStyle, v13, self);
    v4 = v42;
    v5 = v43;
    v6 = v44;
    v7 = v45;
  }

  v46 = fmax(v9 - v5 - v7, 0.0);
  v47 = fmax(v11 - v4 - v6, 0.0);
  parentLayout = self->_parentLayout;

  objc_msgSend_setMaximumFrameSizeForChildren_(parentLayout, v40, v41, v46, v47);
}

- (id)styleProvider
{
  v3 = [TSWPLayout alloc];
  v6 = objc_msgSend_storage(self, v4, v5);
  v8 = objc_msgSend_initWithInfo_storage_frame_(v3, v7, 0, v6, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));

  v11 = objc_msgSend_delegate(self, v9, v10);
  v14 = objc_msgSend_styleProvidingSource(v11, v12, v13);
  v16 = objc_msgSend_styleProviderForTextLayout_(v14, v15, v8);

  return v16;
}

- (TSWPTextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end