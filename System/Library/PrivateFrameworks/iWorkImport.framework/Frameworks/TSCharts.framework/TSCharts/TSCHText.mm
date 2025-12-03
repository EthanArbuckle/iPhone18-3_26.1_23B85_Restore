@interface TSCHText
+ (BOOL)shouldLayoutTextForWrapWidth:(double)width textLayoutProperties:(id)properties;
+ (TSCHTextLayoutResults)initializeTextLayoutResults;
+ (id)sharedInteriorWrappingText;
+ (id)sharedText;
- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style;
- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style outErasableFrame:(CGRect *)frame;
- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style wrapWidth:(double)width layoutProperties:(id)properties styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame;
- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame;
- (CGSize)measureAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame;
- (CGSize)measureText:(id)text paragraphStyle:(id)style;
- (CGSize)measureText:(id)text paragraphStyle:(id)style outErasableFrame:(CGRect *)frame;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width checkNumberTemplates:(BOOL)templates layoutProperties:(id)properties styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame outTextLayoutResults:(TSCHTextLayoutResults *)self0;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width layoutProperties:(id)properties;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame checkNumberTemplates:(BOOL)templates;
- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame layoutProperties:(id)properties outTextLayoutResults:(TSCHTextLayoutResults *)results;
- (CGSize)p_sizeForNumberTemplate:(id)template paragraphStyle:(id)style styleProvidingSource:(id)source textCache:(id)cache layoutProperties:(id)properties;
- (TSCHText)initWithTSWPTextClass:(Class)class;
- (TSCHTextLayoutResults)textLayoutResultsForColumn:(SEL)column;
- (__CTFont)retainedCTFontForParagraphStyle:(id)style;
- (id)p_newWPColumnForText:(id)text wpTextObject:(id)object wrapWidth:(double)width layoutProperties:(id)properties;
- (id)p_textCacheForParagraphStyle:(id)style styleProvidingSource:(id)source;
- (id)p_wpColumnForText:(id)text paragraphStyle:(id)style textBlack:(BOOL)black wrapWidth:(double)width styleProvidingSource:(id)source textCache:(id)cache layoutProperties:(id)properties;
- (id)p_wpStorageForAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style;
- (id)p_wpTextForParagraphStyle:(id)style text:(id)text textBlack:(BOOL)black styleProvidingSource:(id)source cacheKey:(id)key textCache:(id)cache;
- (void)drawAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style styleProvidingSource:(id)source intoContext:(CGContext *)context atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context atPosition:(CGPoint)position viewScale:(double)scale;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context viewScale:(double)scale;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale layoutProperties:(id)self0 styleProvidingSource:(id)self1 outTextLayoutResults:(TSCHTextLayoutResults *)self2;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale layoutProperties:(id)properties;
- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale layoutProperties:(id)properties outTextLayoutResults:(TSCHTextLayoutResults *)self0;
- (void)drawTextIntoContext:(CGContext *)context position:(CGPoint)position textEngine:(id)engine column:(id)column range:(_NSRange)range viewScale:(double)scale;
@end

@implementation TSCHText

+ (BOOL)shouldLayoutTextForWrapWidth:(double)width textLayoutProperties:(id)properties
{
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "+[TSCHText shouldLayoutTextForWrapWidth:textLayoutProperties:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 434, 0, "invalid nil value for '%{public}s'", "layoutProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    propertiesCopy = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v25, width, v26, v27);
  }

  v33 = 1;
  if ((objc_msgSend_textFlags(propertiesCopy, v5, v7, v8, v9) & 1) == 0)
  {
    v32 = objc_msgSend_textFlags(propertiesCopy, v28, v29, v30, v31);
    if (width < 1.0 && (v32 & 4) == 0)
    {
      v33 = 0;
    }
  }

  return v33;
}

+ (TSCHTextLayoutResults)initializeTextLayoutResults
{
  v3 = *(MEMORY[0x277CBF398] + 16);
  retstr->var0.origin = *MEMORY[0x277CBF398];
  retstr->var0.size = v3;
  retstr->var1 = 100.0;
  retstr->var2 = 0;
  return result;
}

+ (id)sharedText
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27630CAE8;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47AA0 != -1)
  {
    dispatch_once(&qword_280A47AA0, block);
  }

  v2 = qword_280A47A98;

  return v2;
}

+ (id)sharedInteriorWrappingText
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27630CBE4;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47AB0 != -1)
  {
    dispatch_once(&qword_280A47AB0, block);
  }

  v2 = qword_280A47AA8;

  return v2;
}

- (TSCHText)initWithTSWPTextClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = TSCHText;
  result = [(TSCHText *)&v5 init];
  if (result)
  {
    result->_tswpTextClass = class;
  }

  return result;
}

- (id)p_wpTextForParagraphStyle:(id)style text:(id)text textBlack:(BOOL)black styleProvidingSource:(id)source cacheKey:(id)key textCache:(id)cache
{
  blackCopy = black;
  styleCopy = style;
  textCopy = text;
  sourceCopy = source;
  keyCopy = key;
  cacheCopy = cache;
  if (!styleCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHText p_wpTextForParagraphStyle:text:textBlack:styleProvidingSource:cacheKey:textCache:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 484, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (!cacheCopy)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHText p_wpTextForParagraphStyle:text:textBlack:styleProvidingSource:cacheKey:textCache:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 485, 0, "invalid nil value for '%{public}s'", "textCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v51 = keyCopy;
  v55 = v51;
  if (!v51)
  {
    v56 = styleCopy;
    v60 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v57, 0.0, v58, v59);
    v61 = sub_27630D740(0, v56, blackCopy, v60, 0, 0.0);

    v55 = v61;
  }

  v63 = objc_msgSend_textForKey_(cacheCopy, v50, v52, v53, v54, v55);
  if (!v63)
  {
    v109 = objc_msgSend_context(styleCopy, v62, v64, v65, v66);
    v111 = objc_msgSend_documentObject(v109, v67, v68, v69, v70);
    v110 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v71, v72, v73, v74, v109);
    isDirectionRightToLeft = TSWPGetDefaultParagraphDirectionWithArabicNumbers();
    if (isDirectionRightToLeft == -1)
    {
      isDirectionRightToLeft = objc_msgSend_isDirectionRightToLeft(v111, v75, v77, v78, v79);
    }

    if (sourceCopy)
    {
      v80 = objc_alloc_init(TSCHTSWPTextDelegate);
      objc_msgSend_setStyleProvidingSource_(v80, v81, v82, v83, v84, sourceCopy);
    }

    else
    {
      v80 = 0;
    }

    v85 = objc_alloc(self->_tswpTextClass);
    v90 = objc_msgSend_stylesheet(v111, v86, v87, v88, v89);
    v63 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v85, v91, v92, v93, v94, v90, styleCopy, 0, v110, isDirectionRightToLeft == 1, isDirectionRightToLeft);

    objc_msgSend_setDelegate_(v63, v95, v96, v97, v98, v80);
    if (blackCopy)
    {
      v103 = objc_msgSend_blackColor(MEMORY[0x277D81180], v99, v100, v101, v102);
      objc_msgSend_setTextColorOverride_(v63, v104, v105, v106, v107, v103);
    }

    if (v63)
    {
      objc_msgSend_setText_textDelegate_forKey_(cacheCopy, v99, v100, v101, v102, v63, v80, v55);
    }
  }

  return v63;
}

- (id)p_newWPColumnForText:(id)text wpTextObject:(id)object wrapWidth:(double)width layoutProperties:(id)properties
{
  textCopy = text;
  objectCopy = object;
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHText p_newWPColumnForText:wpTextObject:wrapWidth:layoutProperties:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 548, 0, "invalid nil value for '%{public}s'", "layoutProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    propertiesCopy = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v31, width, v32, v33);
  }

  v34 = propertiesCopy;
  v35 = objectCopy;
  objc_sync_enter(v35);
  objc_msgSend_minSize(v34, v36, v37, v38, v39);
  v41 = v40;
  v43 = v42;
  objc_msgSend_maxSize(v34, v44, v40, v42, v45);
  v47 = v46;
  v49 = v48;
  v50 = *MEMORY[0x277CBF348];
  v51 = *(MEMORY[0x277CBF348] + 8);
  v54 = objc_msgSend_textFlags(v34, v52, v46, v48, v53);
  v56 = objc_msgSend_layoutText_minSize_maxSize_anchor_flags_(v35, v55, v41, v43, v47, textCopy, v54, v49, v50, v51);
  objc_sync_exit(v35);

  return v56;
}

- (id)p_wpColumnForText:(id)text paragraphStyle:(id)style textBlack:(BOOL)black wrapWidth:(double)width styleProvidingSource:(id)source textCache:(id)cache layoutProperties:(id)properties
{
  blackCopy = black;
  textCopy = text;
  styleCopy = style;
  sourceCopy = source;
  cacheCopy = cache;
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHText p_wpColumnForText:paragraphStyle:textBlack:wrapWidth:styleProvidingSource:textCache:layoutProperties:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 568, 0, "invalid nil value for '%{public}s'", "layoutProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (!styleCopy)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHText p_wpColumnForText:paragraphStyle:textBlack:wrapWidth:styleProvidingSource:textCache:layoutProperties:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 569, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  if (!cacheCopy)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHText p_wpColumnForText:paragraphStyle:textBlack:wrapWidth:styleProvidingSource:textCache:layoutProperties:]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 570, 0, "invalid nil value for '%{public}s'", "textCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
  }

  tswpTextClass = self->_tswpTextClass;
  v70 = tswpTextClass == objc_opt_class();
  v71 = sub_27630D740(textCopy, styleCopy, blackCopy, propertiesCopy, v70, width);
  v76 = objc_msgSend_columnForKey_(cacheCopy, v72, v73, v74, v75, v71);
  v81 = v76;
  if (v76)
  {
    if (width == 0.0 || (objc_msgSend_frameBounds(v76, v77, v78, v79, v80), v84 = vabdd_f64(width, v83), v84 <= 0.5))
    {
      v85 = 0;
      v89 = v81;
      goto LABEL_15;
    }

    v85 = objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v82, v84, 0.5, v83, styleCopy, textCopy, blackCopy, sourceCopy, 0, cacheCopy);
    v89 = objc_msgSend_p_newWPColumnForText_wpTextObject_wrapWidth_layoutProperties_(self, v86, width, v87, v88, textCopy, v85, propertiesCopy);

    if (!v89)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v85 = objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v77, v78, v79, v80, styleCopy, textCopy, blackCopy, sourceCopy, v71, cacheCopy);
    v89 = objc_msgSend_p_newWPColumnForText_wpTextObject_wrapWidth_layoutProperties_(self, v94, width, v95, v96, textCopy, v85, propertiesCopy);
    if (!v89)
    {
      goto LABEL_15;
    }
  }

  objc_msgSend_setColumn_forKey_(cacheCopy, v90, v91, v92, v93, v89, v71);
LABEL_15:

  return v89;
}

- (CGSize)p_sizeForNumberTemplate:(id)template paragraphStyle:(id)style styleProvidingSource:(id)source textCache:(id)cache layoutProperties:(id)properties
{
  v126 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  styleCopy = style;
  sourceCopy = source;
  cacheCopy = cache;
  propertiesCopy = properties;
  if (!styleCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHText p_sizeForNumberTemplate:paragraphStyle:styleProvidingSource:textCache:layoutProperties:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 642, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (!cacheCopy)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHText p_sizeForNumberTemplate:paragraphStyle:styleProvidingSource:textCache:layoutProperties:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 643, 0, "invalid nil value for '%{public}s'", "textCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = templateCopy;
  v51 = styleCopy;
  v56 = objc_msgSend_valueForProperty_(v51, v52, v53, v54, v55, 16);
  objc_msgSend_floatValueForProperty_(v51, v57, v58, v59, v60, 17);
  snprintf(__str, 0x20uLL, "%.2f", v61);
  v62 = objc_alloc(MEMORY[0x277CCAB68]);
  v67 = objc_msgSend_initWithUTF8String_(v62, v63, v64, v65, v66, __str);
  if (objc_msgSend_length(v50, v68, v69, v70, v71))
  {
    objc_msgSend_insertString_atIndex_(v67, v72, v73, v74, v75, v50, 0);
  }

  if (objc_msgSend_length(v56, v72, v73, v74, v75))
  {
    objc_msgSend_appendString_(v67, v76, v77, v78, v79, v56);
  }

  v80 = *MEMORY[0x277CBF3A8];
  v81 = *(MEMORY[0x277CBF3A8] + 8);
  v86 = objc_msgSend_numberStringSizeForKey_(cacheCopy, v82, v83, v84, v85, v67);
  v91 = v86;
  if (v86)
  {
    objc_msgSend_CGSizeValue(v86, v87, v88, v89, v90);
    v80 = v92;
    v81 = v93;
  }

  else
  {
    v94 = objc_msgSend_p_wpColumnForText_paragraphStyle_textBlack_wrapWidth_styleProvidingSource_textCache_layoutProperties_(self, v87, 0.0, v89, v90, v50, v51, 0, sourceCopy, cacheCopy, propertiesCopy);
    v99 = v94;
    if (v94)
    {
      objc_msgSend_frameBounds(v94, v95, v96, v97, v98);
      v80 = v100;
      v81 = v101;
      v91 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v102, v100, v101, v100);
      objc_msgSend_setNumberStringSize_forKey_(cacheCopy, v103, v104, v105, v106, v91, v67);
    }

    else
    {
      v107 = MEMORY[0x277D81150];
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHText p_sizeForNumberTemplate:paragraphStyle:styleProvidingSource:textCache:layoutProperties:]");
      v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v114, v115, v116, v117, v108, v113, 652, 0, "invalid nil value for '%{public}s'", "column");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
      v91 = 0;
    }
  }

  v122 = v80;
  v123 = v81;
  result.height = v123;
  result.width = v122;
  return result;
}

- (id)p_wpStorageForAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style
{
  styleCopy = style;
  if (string)
  {
    Length = CFAttributedStringGetLength(string);
    v6 = objc_alloc(MEMORY[0x277D80F28]);
    v11 = objc_msgSend_context(styleCopy, v7, v8, v9, v10);
    String = CFAttributedStringGetString(string);
    v17 = objc_msgSend_stylesheet(styleCopy, v13, v14, v15, v16);
    CFAttributedStringGetString(string);
    v84 = TSWPGetDefaultParagraphDirectionWithArabicNumbers();
    v22 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v6, v18, v19, v20, v21, v11, String, 3, v17, styleCopy, 0, 0, 0, v84);

    if (Length)
    {
      v23 = objc_alloc(MEMORY[0x277D80DB0]);
      v28 = objc_msgSend_context(styleCopy, v24, v25, v26, v27);
      v33 = objc_msgSend_initWithContext_(v23, v29, v30, v31, v32, v28);

      v89 = v33;
      objc_msgSend_setIntValue_forProperty_(v33, v34, v35, v36, v37, 1, 37);
      valuePtr = 1;
      cf1 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      if (Length >= 1)
      {
        v38 = 0;
        v39 = *MEMORY[0x277CC4A18];
        v86 = Length;
        stringCopy = string;
        do
        {
          v94.location = 0;
          v94.length = Length;
          AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(string, v38, v94, &longestEffectiveRange);
          Count = CFDictionaryGetCount(AttributesAndLongestEffectiveRange);
          v42 = Count;
          if (Count)
          {
            v43 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
            CFDictionaryGetKeysAndValues(AttributesAndLongestEffectiveRange, v43, 0);
            v88 = v43;
            if (v42 >= 1)
            {
              do
              {
                if (CFEqual(*v43, v39))
                {
                  Value = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, *v43);
                  if (CFEqual(cf1, Value))
                  {
                    objc_msgSend_setCharacterStyle_range_undoTransaction_(v22, v49, v50, v51, v52, v89, longestEffectiveRange.location, longestEffectiveRange.length, 0);
                  }

                  else
                  {
                    v68 = MEMORY[0x277D81150];
                    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "[TSCHText p_wpStorageForAttributedString:paragraphStyle:]");
                    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 718, 0, "Unexpected value for attribute");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
                  }
                }

                else
                {
                  v53 = MEMORY[0x277D81150];
                  v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCHText p_wpStorageForAttributedString:paragraphStyle:]");
                  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v61, v62, v63, v54, v59, 721, 0, "Unknown attribute!");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
                }

                ++v43;
                --v42;
              }

              while (v42);
            }

            free(v88);
            Length = v86;
            string = stringCopy;
          }

          v38 = longestEffectiveRange.length + longestEffectiveRange.location;
        }

        while (longestEffectiveRange.length + longestEffectiveRange.location < Length);
      }

      CFRelease(cf1);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)p_textCacheForParagraphStyle:(id)style styleProvidingSource:(id)source
{
  styleCopy = style;
  sourceCopy = source;
  v12 = objc_msgSend_documentRoot(styleCopy, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHText p_textCacheForParagraphStyle:styleProvidingSource:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 735, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_tsch_textCacheForStyleProvidingSource_(v12, v11, v13, v14, v15, sourceCopy);
  if (!v32)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCHText p_textCacheForParagraphStyle:styleProvidingSource:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 737, 0, "Not able to get text cache for paragraphStyle %@ styleProvidingSource %@ from documentRoot %@", styleCopy, sourceCopy, v12);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  return v32;
}

- (CGSize)measureAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame
{
  styleCopy = style;
  sourceCopy = source;
  if (styleCopy)
  {
    if (string && CFAttributedStringGetLength(string))
    {
      v20 = objc_msgSend_p_textCacheForParagraphStyle_styleProvidingSource_(self, v16, v17, v18, v19, styleCopy, sourceCopy);
      String = CFAttributedStringGetString(string);
      v26 = objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v22, v23, v24, v25, styleCopy, String, 0, 0, 0, v20);
      v31 = objc_msgSend_p_wpStorageForAttributedString_paragraphStyle_(self, v27, v28, v29, v30, string, styleCopy);
      v32 = v26;
      objc_sync_enter(v32);
      v33 = MEMORY[0x277CBF3A8];
      v35 = objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v32, v34, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), 4294967300.0, v31, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 4111, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      objc_sync_exit(v32);

      if (v35)
      {
        objc_msgSend_frameBounds(v35, v36, v37, v38, v39);
        v41 = v40;
        v43 = v42;
        if (!frame)
        {
LABEL_16:

          goto LABEL_17;
        }

        v100 = v20;
        objc_opt_class();
        v48 = objc_msgSend_valueForProperty_(styleCopy, v44, v45, v46, v47, 40);
        v49 = TSUDynamicCast();

        LODWORD(v48) = objc_msgSend_hasShadow_(TSCHStyleUtilities, v50, v51, v52, v53, v49);
        TSURectWithSize();
        v59 = v55;
        v60 = v56;
        v61 = v57;
        v62 = v58;
        if (v48)
        {
          objc_msgSend_shadowBoundsForRect_(v49, v54, v55, v56, v57, v58);
          v59 = v63;
          v60 = v64;
          v61 = v65;
          v62 = v66;
        }
      }

      else
      {
        v100 = v20;
        v83 = MEMORY[0x277D81150];
        v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCHText measureAttributedString:paragraphStyle:styleProvidingSource:outErasableFrame:]");
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 772, 0, "invalid nil value for '%{public}s'", "column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
        v41 = *v33;
        v43 = v33[1];
        if (!frame)
        {
          v20 = v100;
          goto LABEL_16;
        }

        v61 = *(MEMORY[0x277CBF398] + 16);
        v62 = *(MEMORY[0x277CBF398] + 24);
        v59 = *MEMORY[0x277CBF398];
        v60 = *(MEMORY[0x277CBF398] + 8);
      }

      v20 = v100;
      frame->origin.x = v59;
      frame->origin.y = v60;
      frame->size.width = v61;
      frame->size.height = v62;
      goto LABEL_16;
    }
  }

  else
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHText measureAttributedString:paragraphStyle:styleProvidingSource:outErasableFrame:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 742, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  if (frame)
  {
    v82 = *(MEMORY[0x277CBF398] + 16);
    frame->origin = *MEMORY[0x277CBF398];
    frame->size = v82;
  }

  v41 = *MEMORY[0x277CBF3A8];
  v43 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_17:

  v98 = v41;
  v99 = v43;
  result.height = v99;
  result.width = v98;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame
{
  (MEMORY[0x2821F9670])(self, sel_measureText_paragraphStyle_wrapWidth_outErasableFrame_checkNumberTemplates_, width);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame checkNumberTemplates:(BOOL)templates
{
  templatesCopy = templates;
  textCopy = text;
  styleCopy = style;
  v17 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v14, width, v15, v16);
  objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(self, v18, width, v19, v20, textCopy, styleCopy, templatesCopy, v17, 0, frame, 0);
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame layoutProperties:(id)properties outTextLayoutResults:(TSCHTextLayoutResults *)results
{
  objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(self, a2, width, v8, v9, text, style, 1, properties, 0, frame, results);
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width checkNumberTemplates:(BOOL)templates layoutProperties:(id)properties styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame outTextLayoutResults:(TSCHTextLayoutResults *)self0
{
  templatesCopy = templates;
  v140 = *MEMORY[0x277D85DE8];
  textCopy = text;
  styleCopy = style;
  propertiesCopy = properties;
  sourceCopy = source;
  if (!styleCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22.width, v23, "[TSCHText measureText:paragraphStyle:wrapWidth:checkNumberTemplates:layoutProperties:styleProvidingSource:outErasableFrame:outTextLayoutResults:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 818, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (!propertiesCopy)
  {
    propertiesCopy = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v20, width, v22.width, v23);
  }

  if (frame)
  {
    v22 = *(MEMORY[0x277CBF398] + 16);
    frame->origin = *MEMORY[0x277CBF398];
    frame->size = v22;
  }

  v39 = *MEMORY[0x277CBF3A8];
  v40 = *(MEMORY[0x277CBF3A8] + 8);
  if (textCopy && styleCopy && objc_msgSend_shouldLayoutTextForWrapWidth_textLayoutProperties_(TSCHText, v20, width, v22.width, v23, propertiesCopy))
  {
    v45 = objc_msgSend_p_textCacheForParagraphStyle_styleProvidingSource_(self, v41, v42, v43, v44, styleCopy, sourceCopy);
    if (objc_msgSend_length(textCopy, v46, v47, v48, v49))
    {
      if (width == 0.0 && templatesCopy && objc_msgSend_p_styleSupportsEqualDigits_textCache_(self, v50, v51, v52, v53, styleCopy, v45))
      {
        textCopy = textCopy;
        v59 = objc_msgSend_length(textCopy, v54, v55, v56, v57);
        if ((v59 - 33) >= 0xFFFFFFFFFFFFFFE0)
        {
          objc_msgSend_getCharacters_range_(textCopy, v58, v60, v61, v62, v138, 0, v59);
          v114 = 0;
          v115 = MEMORY[0x277D85DE0];
          do
          {
            v116 = *(v138 + v114);
            if (v116 <= 0xFF && (*(v115 + 4 * v116 + 60) & 0x400) != 0)
            {
              LOWORD(v116) = 56;
            }

            else if (v116 - 32) < 0x10u && ((0xF031u >> (v116 - 32)))
            {
              LOWORD(v116) = asc_2764D6DD8[(v116 - 32)];
            }

            else if ((v116 - 162) >= 4u && (v116 - 8352) >= 0x1Bu)
            {
              goto LABEL_15;
            }

            v137[v114++] = v116;
          }

          while (v59 != v114);
          v63 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v110, v111, v112, v113, v137, v59);
        }

        else
        {
LABEL_15:
          v63 = 0;
        }

        if (v63)
        {
          objc_msgSend_p_sizeForNumberTemplate_paragraphStyle_styleProvidingSource_textCache_layoutProperties_(self, v50, v118, v52, v53, v63, styleCopy, sourceCopy, v45, propertiesCopy);
          v39 = v119;
          v40 = v120;
          if (frame)
          {
            objc_opt_class();
            v125 = objc_msgSend_valueForProperty_(styleCopy, v121, v122, v123, v124, 40);
            v126 = TSUDynamicCast();

            LODWORD(v125) = objc_msgSend_hasShadow_(TSCHStyleUtilities, v127, v128, v129, v130, v126);
            TSURectWithSize();
            if (v125)
            {
              objc_msgSend_shadowBoundsForRect_(v126, v131, v132, v133, v134);
            }

            frame->origin.x = v132;
            frame->origin.y = v133;
            frame->size.width = v134;
            frame->size.height = v135;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {

      textCopy = @"​";
    }

    v63 = objc_msgSend_p_wpColumnForText_paragraphStyle_textBlack_wrapWidth_styleProvidingSource_textCache_layoutProperties_(self, v50, width, v52, v53, textCopy, styleCopy, 0, sourceCopy, v45, propertiesCopy);
    if (v63)
    {
      if (results)
      {
        objc_msgSend_textLayoutResultsForColumn_(self, v64, v65, v66.width, v67, v63);
        v66 = v138[1];
        results->var0.origin = v138[0];
        results->var0.size = v66;
        v65 = *&v139;
        *&results->var1 = v139;
      }

      objc_msgSend_frameBounds(v63, v64, v65, v66.width, v67);
      v39 = v68;
      v40 = v69;
      if (!frame)
      {
        goto LABEL_27;
      }

      objc_opt_class();
      v74 = objc_msgSend_valueForProperty_(styleCopy, v70, v71, v72, v73, 40);
      v75 = TSUDynamicCast();

      LODWORD(v74) = objc_msgSend_hasShadow_(TSCHStyleUtilities, v76, v77, v78, v79, v75);
      TSURectWithSize();
      v85 = v81;
      v86 = v82;
      v87 = v83;
      v88 = v84;
      if (v74)
      {
        objc_msgSend_shadowBoundsForRect_(v75, v80, v81, v82, v83, v84);
        v85 = v89;
        v86 = v90;
        v87 = v91;
        v88 = v92;
      }
    }

    else
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66.width, v67, "[TSCHText measureText:paragraphStyle:wrapWidth:checkNumberTemplates:layoutProperties:styleProvidingSource:outErasableFrame:outTextLayoutResults:]");
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v100, v101, v102, v103, v94, v99, 863, 0, "invalid nil value for '%{public}s'", "column");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
      if (!frame)
      {
        goto LABEL_27;
      }

      v87 = *(MEMORY[0x277CBF398] + 16);
      v88 = *(MEMORY[0x277CBF398] + 24);
      v85 = *MEMORY[0x277CBF398];
      v86 = *(MEMORY[0x277CBF398] + 8);
    }

    frame->origin.x = v85;
    frame->origin.y = v86;
    frame->size.width = v87;
    frame->size.height = v88;
LABEL_27:
  }

  v108 = v39;
  v109 = v40;
  result.height = v109;
  result.width = v108;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width layoutProperties:(id)properties
{
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_layoutProperties_outTextLayoutResults_(self, a2, width, v6, v7, text, style, 0, properties, 0);
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style wrapWidth:(double)width
{
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_(self, a2, width, v5, v6, text, style, 0);
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style
{
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_(self, a2, 0.0, v4, v5, text, style, 0);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)measureText:(id)text paragraphStyle:(id)style outErasableFrame:(CGRect *)frame
{
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_(self, a2, 0.0, v5, v6, text, style, frame);
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style wrapWidth:(double)width outErasableFrame:(CGRect *)frame
{
  length = range.length;
  location = range.location;
  textCopy = text;
  styleCopy = style;
  v18 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v15, width, v16, v17);
  objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_layoutProperties_styleProvidingSource_outErasableFrame_(self, v19, width, v20, v21, location, length, textCopy, styleCopy, v18, 0, frame);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style wrapWidth:(double)width layoutProperties:(id)properties styleProvidingSource:(id)source outErasableFrame:(CGRect *)frame
{
  length = range.length;
  location = range.location;
  textCopy = text;
  styleCopy = style;
  propertiesCopy = properties;
  sourceCopy = source;
  if (!styleCopy)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHText frameForRange:inText:paragraphStyle:wrapWidth:layoutProperties:styleProvidingSource:outErasableFrame:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 934, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  if (!propertiesCopy)
  {
    propertiesCopy = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v19, width, v21, v22);
  }

  v150 = objc_msgSend_p_textCacheForParagraphStyle_styleProvidingSource_(self, v19, v20, v21, v22, styleCopy, sourceCopy);
  if (location + length > objc_msgSend_length(textCopy, v38, v39, v40, v41))
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "[TSCHText frameForRange:inText:paragraphStyle:wrapWidth:layoutProperties:styleProvidingSource:outErasableFrame:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    v57 = objc_msgSend_length(textCopy, v53, v54, v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v58, v59, v60, v61, v47, v52, 945, 0, "Invalid range { %lu, %lu } for string of length: %lu", location, length, v57);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
LABEL_21:
    if (frame)
    {
      v130 = *(MEMORY[0x277CBF398] + 16);
      frame->origin = *MEMORY[0x277CBF398];
      frame->size = v130;
    }

    v75 = *MEMORY[0x277CBF3A0];
    v76 = *(MEMORY[0x277CBF3A0] + 8);
    v77 = *(MEMORY[0x277CBF3A0] + 16);
    v78 = *(MEMORY[0x277CBF3A0] + 24);
    v69 = v150;
    goto LABEL_27;
  }

  if (!textCopy || !styleCopy)
  {
    goto LABEL_21;
  }

  if (!objc_msgSend_length(textCopy, v42, v43, v44, v45))
  {

    textCopy = @"​";
  }

  v69 = v150;
  v71 = objc_msgSend_p_wpColumnForText_paragraphStyle_textBlack_wrapWidth_styleProvidingSource_textCache_layoutProperties_(self, v66, width, v67, v68, textCopy, styleCopy, 0, sourceCopy, v150, propertiesCopy);
  if (v71)
  {
    v75 = *MEMORY[0x277CBF398];
    v76 = *(MEMORY[0x277CBF398] + 8);
    v77 = *(MEMORY[0x277CBF398] + 16);
    v78 = *(MEMORY[0x277CBF398] + 24);
    v79 = objc_msgSend_selectionWithRange_(MEMORY[0x277D80EF8], v70, v72, v73, v74, location, length);
    v84 = v79;
    if (v79)
    {
      v85 = objc_msgSend_DEPRECATED_range(v79, v80, v81, v82, v83);
      v87 = v86;
      v91 = objc_msgSend_type(v84, v86, v88, v89, v90);
      v96 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(v71, v92, v93, v94, v95, v85, v87, v91, 0, 0, 0);
      v101 = objc_msgSend_lastObject(v96, v97, v98, v99, v100);
      v106 = v101;
      if (v101)
      {
        objc_msgSend_CGRectValue(v101, v102, v103, v104, v105);
        v75 = v107;
        v76 = v108;
        v77 = v109;
        v78 = v110;
      }

      if (frame)
      {
        objc_opt_class();
        v115 = objc_msgSend_valueForProperty_(styleCopy, v111, v112, v113, v114, 40);
        v116 = TSUDynamicCast();

        v122 = v75;
        v123 = v76;
        v124 = v77;
        v125 = v78;
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v117, v118, v119, v120, v116))
        {
          objc_msgSend_shadowBoundsForRect_(v116, v121, v75, v76, v77, v78);
          v122 = v126;
          v123 = v127;
          v124 = v128;
          v125 = v129;
        }

        frame->origin.x = v122;
        frame->origin.y = v123;
        frame->size.width = v124;
        frame->size.height = v125;
        v69 = v150;
      }
    }
  }

  else
  {
    v131 = MEMORY[0x277D81150];
    v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v72, v73, v74, "[TSCHText frameForRange:inText:paragraphStyle:wrapWidth:layoutProperties:styleProvidingSource:outErasableFrame:]");
    v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, v134, v135, v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v138, v139, v140, v141, v132, v137, 959, 0, "invalid nil value for '%{public}s'", "column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v143, v144, v145);
    v75 = *MEMORY[0x277CBF398];
    v76 = *(MEMORY[0x277CBF398] + 8);
    v77 = *(MEMORY[0x277CBF398] + 16);
    v78 = *(MEMORY[0x277CBF398] + 24);
    if (frame)
    {
      frame->origin.x = v75;
      frame->origin.y = v76;
      frame->size.width = v77;
      frame->size.height = v78;
    }
  }

LABEL_27:
  v146 = v75;
  v147 = v76;
  v148 = v77;
  v149 = v78;
  result.size.height = v149;
  result.size.width = v148;
  result.origin.y = v147;
  result.origin.x = v146;
  return result;
}

- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style
{
  objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_outErasableFrame_(self, a2, 0.0, v5, v6, range.location, range.length, text, style, 0);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)frameForRange:(_NSRange)range inText:(id)text paragraphStyle:(id)style outErasableFrame:(CGRect *)frame
{
  objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_outErasableFrame_(self, a2, 0.0, v6, v7, range.location, range.length, text, style, frame);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)drawTextIntoContext:(CGContext *)context position:(CGPoint)position textEngine:(id)engine column:(id)column range:(_NSRange)range viewScale:(double)scale
{
  length = range.length;
  location = range.location;
  y = position.y;
  x = position.x;
  engineCopy = engine;
  columnCopy = column;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, x, y);
  v20 = objc_msgSend_selectionWithRange_(MEMORY[0x277D80EF8], v16, v17, v18, v19, location, length);
  v25 = sub_27631FD2C(context, v21, v22, v23, v24);
  objc_msgSend_drawColumn_selection_inContext_isFlipped_viewScale_(engineCopy, v26, scale, v27, v28, columnCopy, v20, context, v25);

  CGContextRestoreGState(context);
}

- (void)drawAttributedString:(__CFAttributedString *)string paragraphStyle:(id)style styleProvidingSource:(id)source intoContext:(CGContext *)context atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale
{
  length = range.length;
  location = range.location;
  y = position.y;
  x = position.x;
  styleCopy = style;
  sourceCopy = source;
  if (!styleCopy)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21, v22, "[TSCHText drawAttributedString:paragraphStyle:styleProvidingSource:intoContext:atPosition:range:viewScale:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 1025, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  if (!context)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21, v22, "[TSCHText drawAttributedString:paragraphStyle:styleProvidingSource:intoContext:atPosition:range:viewScale:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 1026, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  v53 = objc_msgSend_p_textCacheForParagraphStyle_styleProvidingSource_(self, v18, v20, v21, v22, styleCopy, sourceCopy);
  if (string)
  {
    v54 = CFAttributedStringGetLength(string);
  }

  else
  {
    v54 = 0;
  }

  v125.location = location;
  v125.length = length;
  v126.location = 0;
  v126.length = v54;
  v58 = NSIntersectionRange(v125, v126);
  if (location == v58.location && length == v58.length)
  {
    if (context && v54 && string && styleCopy)
    {
      HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
      String = CFAttributedStringGetString(string);
      v122 = objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v61, v62, v63, v64, styleCopy, String, HasBackgroundsSuppressed, 0, 0, v53);
      if (!v122)
      {
        v69 = MEMORY[0x277D81150];
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "[TSCHText drawAttributedString:paragraphStyle:styleProvidingSource:intoContext:atPosition:range:viewScale:]");
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v76, v77, v78, v79, v70, v75, 1044, 0, "invalid nil value for '%{public}s'", "textEngine");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
      }

      v84 = objc_msgSend_p_wpStorageForAttributedString_paragraphStyle_(self, v65, v66, v67, v68, string, styleCopy);
      v85 = v122;
      objc_sync_enter(v85);
      v87 = objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v85, v86, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), 4294967300.0, v84, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 4111, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      objc_sync_exit(v85);

      if (v87)
      {
        if (v122)
        {
          objc_msgSend_drawTextIntoContext_position_textEngine_column_range_viewScale_(self, v88, x, y, scale, context, v85, v87, location, length);
        }
      }

      else
      {
        v107 = MEMORY[0x277D81150];
        v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "[TSCHText drawAttributedString:paragraphStyle:styleProvidingSource:intoContext:atPosition:range:viewScale:]");
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v114, v115, v116, v117, v108, v113, 1061, 0, "invalid nil value for '%{public}s'", "column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
      }
    }
  }

  else
  {
    v92 = MEMORY[0x277D81150];
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58.length, v55, v56, v57, "[TSCHText drawAttributedString:paragraphStyle:styleProvidingSource:intoContext:atPosition:range:viewScale:]");
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v99, v100, v101, v102, v93, v98, 1033, 0, "Invalid range { %lu, %lu } for string of length: %lu", location, length, v54);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
  }
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale
{
  length = range.length;
  location = range.location;
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  v22 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v19, width, v20, v21);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_(self, v23, width, x, y, textCopy, styleCopy, context, location, length, v22, scale);
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position range:(_NSRange)range viewScale:(double)scale layoutProperties:(id)self0 styleProvidingSource:(id)self1 outTextLayoutResults:(TSCHTextLayoutResults *)self2
{
  length = range.length;
  location = range.location;
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  propertiesCopy = properties;
  sourceCopy = source;
  if (!styleCopy)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 1083, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  if (!context)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 1084, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  if (!propertiesCopy)
  {
    propertiesCopy = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v24, width, v26, v27);
  }

  if (objc_msgSend_shouldLayoutTextForWrapWidth_textLayoutProperties_(TSCHText, v24, width, v26, v27, propertiesCopy))
  {
    v165 = objc_msgSend_p_textCacheForParagraphStyle_styleProvidingSource_(self, v58, v59, v60, v61, styleCopy, sourceCopy);
    v164 = objc_msgSend_documentRoot(styleCopy, v62, v63, v64, v65);
    if (!v164)
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 1098, 0, "invalid nil value for '%{public}s'", "documentRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    }

    v170.length = objc_msgSend_length(textCopy, v66, v67, v68, v69);
    v169.location = location;
    v169.length = length;
    v170.location = 0;
    v88 = NSIntersectionRange(v169, v170);
    if (location == v88.location && length == v88.length)
    {
      if (styleCopy)
      {
        v89 = v164;
        if (!textCopy || !context)
        {
          goto LABEL_31;
        }

        if (!objc_msgSend_length(textCopy, v88.length, v85, v86, v87))
        {

          textCopy = @"​";
        }

        if (objc_msgSend_textColorShouldBeBlack(self, v90, v91, v92, v93))
        {
          HasBackgroundsSuppressed = 1;
          objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v94, v95, v96, v97, styleCopy, textCopy, 1, sourceCopy, 0, v165);
        }

        else
        {
          HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
          objc_msgSend_p_wpTextForParagraphStyle_text_textBlack_styleProvidingSource_cacheKey_textCache_(self, v119, v120, v121, v122, styleCopy, textCopy, HasBackgroundsSuppressed, sourceCopy, 0, v165);
        }
        v163 = ;
        if (!v163)
        {
          v127 = MEMORY[0x277D81150];
          v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, v124, v125, v126, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
          v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, v130, v131, v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v134, v135, v136, v137, v128, v133, 1115, 0, "invalid nil value for '%{public}s'", "textEngine");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140, v141);
        }

        v143 = objc_msgSend_p_wpColumnForText_paragraphStyle_textBlack_wrapWidth_styleProvidingSource_textCache_layoutProperties_(self, v123, width, v125, v126, textCopy, styleCopy, HasBackgroundsSuppressed, sourceCopy, v165, propertiesCopy);
        if (v143)
        {
          if (results)
          {
            objc_msgSend_textLayoutResultsForColumn_(self, v142, v144, v145, v146, v143);
            *results = v168;
          }

          v147 = v163;
          if (v163)
          {
            objc_msgSend_drawTextIntoContext_position_textEngine_column_range_viewScale_(self, v142, x, y, scale, context, v163, v143, location, length);
          }
        }

        else
        {
          v148 = MEMORY[0x277D81150];
          v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v144, v145, v146, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
          v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v155, v156, v157, v158, v149, v154, 1119, 0, "invalid nil value for '%{public}s'", "column");

          v147 = v163;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v159, v160, v161, v162);
        }
      }
    }

    else
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88.length, v85, v86, v87, "[TSCHText drawText:paragraphStyle:intoContext:wrapWidth:atPosition:range:viewScale:layoutProperties:styleProvidingSource:outTextLayoutResults:]");
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
      v110 = objc_msgSend_length(textCopy, v106, v107, v108, v109);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v111, v112, v113, v114, v100, v105, 1101, 0, "Invalid range { %lu, %lu } for string of length: %lu", location, length, v110);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116, v117, v118);
    }

    v89 = v164;
LABEL_31:
  }
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale
{
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  v20 = objc_msgSend_length(textCopy, v16, v17, v18, v19);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_(self, v21, width, x, y, textCopy, styleCopy, context, 0, v20, scale);
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale layoutProperties:(id)properties
{
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  propertiesCopy = properties;
  v23 = objc_msgSend_length(textCopy, v19, v20, v21, v22);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_outTextLayoutResults_(self, v24, width, x, y, textCopy, styleCopy, context, 0, v23, propertiesCopy, scale, 0);
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context wrapWidth:(double)width atPosition:(CGPoint)position viewScale:(double)scale layoutProperties:(id)properties outTextLayoutResults:(TSCHTextLayoutResults *)self0
{
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  propertiesCopy = properties;
  v25 = objc_msgSend_length(textCopy, v21, v22, v23, v24);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_outTextLayoutResults_(self, v26, width, x, y, textCopy, styleCopy, context, 0, v25, propertiesCopy, scale, results);
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context atPosition:(CGPoint)position viewScale:(double)scale
{
  y = position.y;
  x = position.x;
  textCopy = text;
  styleCopy = style;
  v18 = objc_msgSend_length(textCopy, v14, v15, v16, v17);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_(self, v19, 0.0, x, y, textCopy, styleCopy, context, 0, v18, scale);
}

- (void)drawText:(id)text paragraphStyle:(id)style intoContext:(CGContext *)context viewScale:(double)scale
{
  textCopy = text;
  styleCopy = style;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v17 = objc_msgSend_length(textCopy, v13, v14, v15, v16);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_(self, v18, 0.0, v11, v12, textCopy, styleCopy, context, 0, v17, scale);
}

- (__CTFont)retainedCTFontForParagraphStyle:(id)style
{
  styleCopy = style;
  FontForStyle = TSWPFastCreateFontForStyle();
  if (!FontForStyle)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHText retainedCTFontForParagraphStyle:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1170, 0, "invalid nil value for '%{public}s'", "fontRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  return FontForStyle;
}

- (TSCHTextLayoutResults)textLayoutResultsForColumn:(SEL)column
{
  v25 = a4;
  objc_msgSend_typographicBounds(v25, v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = objc_msgSend_scaleTextPercent(v25, v17, v9, v11, v13);
  v23 = objc_msgSend_layoutResultFlags(v25, v19, v20, v21, v22);
  *&retstr->var2 = 0;
  retstr->var0.origin.x = v10;
  retstr->var0.origin.y = v12;
  retstr->var0.size.width = v14;
  retstr->var0.size.height = v16;
  retstr->var1 = v18;
  retstr->var2 = (v23 & 2) != 0;

  return result;
}

@end