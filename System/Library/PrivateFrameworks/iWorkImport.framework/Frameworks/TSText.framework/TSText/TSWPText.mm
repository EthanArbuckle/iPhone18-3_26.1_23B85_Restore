@interface TSWPText
+ (double)columnLayoutWidthForBodyWidth:(double)width insets:(UIEdgeInsets *)insets;
- (BOOL)containsStartOfRange:(_NSRange)range;
- (BOOL)forceWesternLineBreaking;
- (BOOL)shouldHyphenate;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)measureText:(id)text;
- (CGSize)measureText:(id)text withMaxWidth:(double)width;
- (CGSize)minSize;
- (TSULocale)locale;
- (TSWPText)init;
- (TSWPText)initWithParagraphStyle:(id)style columnStyle:(id)columnStyle;
- (TSWPText)initWithParagraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle;
- (TSWPText)initWithStylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle alignmentForNaturalAlignment:(int)alignment naturalDirection:(int)direction;
- (TSWPTextDelegate)delegate;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (__CFLocale)hyphenationLocale;
- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (double)maxAnchorInBlockDirection;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)addPartitionableAttachmentLayout:(id)layout;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)layoutText:(id)text context:(id)context kind:(unsigned __int8)kind minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags;
- (id)layoutText:(id)text minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags;
- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags;
- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags;
- (id)styleProvider;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (int)verticalAlignment;
- (unint64_t)columnCount;
- (void)drawColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale renderMode:(unint64_t)mode;
- (void)drawText:(id)text inContext:(CGContext *)context minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags isFlipped:(BOOL)flipped viewScale:(double)self0;
- (void)p_setParentLayoutMaximumFrameSizeForChildren;
@end

@implementation TSWPText

- (TSWPText)initWithStylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle alignmentForNaturalAlignment:(int)alignment naturalDirection:(int)direction
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  listStyleCopy = listStyle;
  columnStyleCopy = columnStyle;
  v53.receiver = self;
  v53.super_class = TSWPText;
  v18 = [(TSWPText *)&v53 init];
  p_isa = &v18->super.isa;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paragraphStyle, style);
    objc_storeStrong(p_isa + 1, listStyle);
    objc_storeStrong(p_isa + 3, stylesheet);
    if (!columnStyleCopy)
    {
      v23 = objc_msgSend_context(styleCopy, v21, v22);
      columnStyleCopy = objc_msgSend_defaultStyleWithContext_(TSWPColumnStyle, v24, v23);
    }

    objc_storeStrong(p_isa + 2, columnStyleCopy);
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

    v20->_naturalAlignment = alignment;
    v20->_naturalDirection = direction;
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

- (TSWPText)initWithParagraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle
{
  styleCopy = style;
  listStyleCopy = listStyle;
  columnStyleCopy = columnStyle;
  v13 = objc_msgSend_stylesheet(styleCopy, v11, v12);
  v15 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(self, v14, v13, styleCopy, listStyleCopy, columnStyleCopy, 0, 0);

  return v15;
}

- (TSWPText)initWithParagraphStyle:(id)style columnStyle:(id)columnStyle
{
  styleCopy = style;
  columnStyleCopy = columnStyle;
  v10 = objc_msgSend_stylesheet(styleCopy, v8, v9);
  v12 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(self, v11, v10, styleCopy, 0, columnStyleCopy, 0, 0);

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

- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags
{
  v7 = objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(self, a2, storage, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, *&flags, size.width, size.height, maxSize.width, maxSize.height, anchor.x, anchor.y);

  return v7;
}

- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags
{
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v16 = size.height;
  v17 = size.width;
  storageCopy = storage;
  if (self->_storage)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 153, 0, "Storage should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (!storageCopy)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 154, 0, "Should probably pass some actual text to layout - it is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  objc_msgSend_setChildren_(self->_parentLayout, v20, MEMORY[0x277CBEBF8]);
  if (objc_msgSend_length(storageCopy, v35, v36))
  {
    self->_minSize.width = v17;
    self->_minSize.height = v16;
    self->_maxSize.width = width;
    self->_maxSize.height = height;
    self->_flags = flags;
    self->_anchor.x = x;
    self->_anchor.y = y;
    self->_pageNumber = number;
    self->_pageCount = count;
    objc_storeStrong(&self->_storage, storage);
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

- (id)layoutText:(id)text minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags
{
  v7 = *&flags;
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v12 = size.height;
  v13 = size.width;
  textCopy = text;
  v18 = objc_msgSend_context(self->_paragraphStyle, v16, v17);
  v20 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(self, v19, textCopy, v18, 3, v7, v13, v12, width, height, x, y);

  return v20;
}

- (id)layoutText:(id)text context:(id)context kind:(unsigned __int8)kind minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags
{
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v14 = size.height;
  v15 = size.width;
  kindCopy = kind;
  textCopy = text;
  contextCopy = context;
  if (self->_storage)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 220, 0, "Storage should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (!textCopy)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPText layoutText:context:kind:minSize:maxSize:anchor:flags:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 221, 0, "Should probably pass some actual text to layout - it is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  objc_msgSend_setChildren_(self->_parentLayout, v20, MEMORY[0x277CBEBF8]);
  if (objc_msgSend_length(textCopy, v36, v37))
  {
    self->_minSize.width = v15;
    self->_minSize.height = v14;
    self->_maxSize.width = width;
    self->_maxSize.height = height;
    self->_flags = flags;
    self->_anchor.x = x;
    self->_anchor.y = y;
    v39 = objc_msgSend_filterText_removingAttachments_removingControlCharacters_(TSWPStorage, v38, textCopy, 1, 0);

    v40 = [TSWPStorage alloc];
    v42 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v40, v41, contextCopy, v39, kindCopy, self->_stylesheet, self->_paragraphStyle, self->_listStyle, 0, 0, self->_naturalDirection);
    storage = self->_storage;
    self->_storage = v42;

    v100 = contextCopy;
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

    textCopy = v39;
    contextCopy = v100;
  }

  else
  {
    v91 = 0;
  }

  return v91;
}

- (CGSize)measureText:(id)text
{
  MEMORY[0x2821F9670](self, sel_measureText_withMaxWidth_, text);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)measureText:(id)text withMaxWidth:(double)width
{
  textCopy = text;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  if (textCopy)
  {
    v10 = objc_msgSend_layoutText_minSize_maxSize_anchor_flags_(self, v6, textCopy, 4111, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), width, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
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

- (void)drawColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale renderMode:(unint64_t)mode
{
  flippedCopy = flipped;
  columnCopy = column;
  selectionCopy = selection;
  if (!columnCopy || !context)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPText drawColumn:selection:inContext:isFlipped:viewScale:renderMode:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 311, 0, "Invalid arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (columnCopy && context)
  {
    v48 = selectionCopy;
    v23 = TSDCGContextGetPdfTagger();
    v24 = TSUProtocolCast();

    objc_msgSend_beginOneColumnText_column_limitSelection_(v24, v25, self, columnCopy, selectionCopy, &unk_28866BEF0);
    v26 = objc_opt_new();
    modeCopy = mode;
    v28 = [TSWPLineRenderer alloc];
    v30 = objc_msgSend_initWithContext_(v28, v29, context);
    objc_msgSend_setFlipShadows_(v30, v31, flippedCopy);
    objc_msgSend_setViewScale_(v30, v32, v33, scale);
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
    objc_msgSend_renderWithRenderer_currentSelection_limitSelection_listRange_rubyGlyphRange_isCanvasInteractive_isInDrawingMode_suppressedMisspellingRange_blackAndWhite_dictationInterpretations_autocorrections_markedRange_markedText_renderMode_pageCount_suppressInvisibles_currentCanvasSelection_(columnCopy, v43, v30, 0, v48, v35, v36, v35, v36, v45, v35, v36, v46, v26, v26, v39, v38, 0, modeCopy, v42, v47, 0);
    objc_msgSend_endOneColumnText_column_(v24, v44, self, columnCopy);

    selectionCopy = v48;
  }
}

- (void)drawText:(id)text inContext:(CGContext *)context minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags isFlipped:(BOOL)flipped viewScale:(double)self0
{
  flippedCopy = flipped;
  y = anchor.y;
  x = anchor.x;
  v17 = objc_msgSend_layoutText_minSize_maxSize_anchor_flags_(self, a2, text, *&flags, size.width, size.height, maxSize.width, maxSize.height);
  if (v17)
  {
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, x, y);
    objc_msgSend_drawColumn_inContext_isFlipped_viewScale_(self, v16, v17, context, flippedCopy, scale);
    CGContextRestoreGState(context);
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

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  targetCopy = target;
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

    objc_msgSend_adjustedInsetsForTarget_(columnStyle, v6, targetCopy);
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

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
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

  objc_msgSend_widthForColumnIndex_bodyWidth_(columnStyle, a2, index, width);
  return result;
}

- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width
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

  objc_msgSend_gapForColumnIndex_bodyWidth_(columnStyle, a2, index, width);
  return result;
}

+ (double)columnLayoutWidthForBodyWidth:(double)width insets:(UIEdgeInsets *)insets
{
  if (width <= 10.0)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = 10.0;
  }

  insetsCopy = MEMORY[0x277D81428];
  if (insets)
  {
    insetsCopy = insets;
  }

  left = insetsCopy->left;
  right = insetsCopy->right;
  if (width - left - right < widthCopy)
  {
    v8 = (width - widthCopy) / (left + right);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v9 = fmax(v8, 0.0);
    left = left * v9;
    right = right * v9;
  }

  if (insets)
  {
    bottom = insetsCopy->bottom;
    insets->top = insetsCopy->top;
    insets->left = left;
    insets->bottom = bottom;
    insets->right = right;
  }

  return width - left - right;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  targetCopy = target;
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
    objc_msgSend_columnLayoutWidthForBodyWidth_insets_(v20, v21, &v26, width);
    width = v22;
  }

  objc_msgSend_positionForColumnIndex_bodyWidth_target_outWidth_outGap_(self->_columnStyle, v15, index, targetCopy, outWidth, gap, width, v26);
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

- (CGRect)targetRectForCanvasRect:(CGRect)rect
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

- (id)layoutForInlineDrawable:(id)drawable
{
  drawableCopy = drawable;
  v7 = objc_msgSend_layoutController(self->_parentLayout, v5, v6);
  v9 = objc_msgSend_layoutForInfo_childOfLayout_(v7, v8, drawableCopy, self->_parentLayout);

  if (!v9)
  {
    v12 = objc_alloc(objc_msgSend_layoutClass(drawableCopy, v10, v11));
    v9 = objc_msgSend_initWithInfo_(v12, v13, drawableCopy);
    if (v9)
    {
      objc_msgSend_addChild_(self->_parentLayout, v14, v9);
    }
  }

  return v9;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPText validatedLayoutForAnchoredDrawable:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 663, 0, "Anchored attachments not yet supported in TSWPText.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)addPartitionableAttachmentLayout:(id)layout
{
  layoutCopy = layout;
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

- (BOOL)containsStartOfRange:(_NSRange)range
{
  location = range.location;
  v4 = objc_msgSend_columns(self, a2, range.location, range.length);
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