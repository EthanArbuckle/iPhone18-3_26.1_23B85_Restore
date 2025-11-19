@interface TSWPTOCLayout
- (BOOL)isLastLayoutInTOC;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)boundsForStandardKnobs;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)maxSize;
- (TSWPTOCLayout)initWithInfo:(id)a3;
- (TSWPTOCLayout)initWithInfo:(id)a3 initialCharIndex:(unint64_t)a4 textIsVertical:(BOOL)a5 maxSize:(CGSize)a6;
- (TSWPTOCLayoutHint)hint;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)a3;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)computeLayoutGeometry;
- (unint64_t)initialCharIndex;
- (void)invalidateForAutosizingTextLayout:(id)a3;
@end

@implementation TSWPTOCLayout

- (TSWPTOCLayout)initWithInfo:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPTOCLayout initWithInfo:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 33, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[TSWPTOCLayout initWithInfo:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (TSWPTOCLayout)initWithInfo:(id)a3 initialCharIndex:(unint64_t)a4 textIsVertical:(BOOL)a5 maxSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v20.receiver = self;
  v20.super_class = TSWPTOCLayout;
  v12 = [(TSWPShapeLayout *)&v20 initWithInfo:v11];
  v15 = v12;
  if (v12)
  {
    v12->_initialCharIndex = a4;
    v12->_maxSize.width = width;
    v12->_maxSize.height = height;
    v16 = objc_msgSend_textStorage(v11, v13, v14);
    v15->_storageChangeCount = objc_msgSend_changeCount(v16, v17, v18);

    v15->_textIsVertical = a5;
  }

  return v15;
}

- (TSWPTOCLayoutHint)hint
{
  v4 = objc_msgSend_containedLayout(self, a2, v2);
  v7 = objc_msgSend_columns(v4, v5, v6);

  if (objc_msgSend_count(v7, v8, v9) != 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPTOCLayout hint]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 50, 0, "unexpected column count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_firstObject(v7, v10, v11);
  v22 = v19;
  if (v19)
  {
    v23 = objc_msgSend_range(v19, v20, v21);
    v24 = v20;
  }

  else
  {
    v23 = *MEMORY[0x277D81490];
    v24 = *(MEMORY[0x277D81490] + 8);
  }

  hint = self->_hint;
  if (!hint || (v23 == objc_msgSend_charRange(hint, v20, v21) ? (v27 = v24 == v26) : (v27 = 0), !v27))
  {
    v28 = [TSWPTOCLayoutHint alloc];
    v31 = objc_msgSend_range(v22, v29, v30);
    v33 = objc_msgSend_initWithRange_(v28, v32, v31, v32);
    v34 = self->_hint;
    self->_hint = v33;
  }

  v35 = self->_hint;
  v36 = v35;

  return v35;
}

- (unint64_t)initialCharIndex
{
  initialCharIndex = self->_initialCharIndex;
  if (initialCharIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objc_msgSend_info(self, a2, v2);
    v8 = objc_msgSend_textStorage(v5, v6, v7);
    v11 = objc_msgSend_length(v8, v9, v10);

    if (initialCharIndex >= v11)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPTOCLayout initialCharIndex]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
      v17 = self->_initialCharIndex;
      v20 = objc_msgSend_info(self, v18, v19);
      v23 = objc_msgSend_textStorage(v20, v21, v22);
      v26 = objc_msgSend_length(v23, v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v27, v14, v16, 62, 0, "Bad _initialCharIndex.  %lu should be less than %lu", v17, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }
  }

  return self->_initialCharIndex;
}

- (BOOL)isLastLayoutInTOC
{
  objc_msgSend_updateChildrenFromInfo(self, a2, v2);
  v6 = objc_msgSend_containedLayout(self, v4, v5);
  objc_msgSend_validate(v6, v7, v8);

  v11 = objc_msgSend_containedLayout(self, v9, v10);
  v14 = objc_msgSend_columns(v11, v12, v13);

  if (objc_msgSend_count(v14, v15, v16) != 1)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPTOCLayout isLastLayoutInTOC]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 72, 0, "unexpected column count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = objc_msgSend_firstObject(v14, v17, v18);
  v29 = v26;
  if (v26)
  {
    v30 = objc_msgSend_range(v26, v27, v28);
    v32 = &v31[v30];
    v34 = objc_msgSend_info(self, v31, v33);
    v37 = objc_msgSend_textStorage(v34, v35, v36);
    v40 = v32 == objc_msgSend_length(v37, v38, v39);
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)computeLayoutGeometry
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_msgSend_maximumFrameSizeForChild_(v6, v7, self);
    v10 = v9;
  }

  else
  {
    v10 = 1.79769313e308;
  }

  objc_msgSend_maxSize(self, v7, v8);
  v12 = fmin(v10, v11);
  objc_msgSend_maxSize(self, v13, v14);
  v17 = objc_msgSend_containedLayout(self, v15, v16);
  v20 = objc_msgSend_geometry(v17, v18, v19);
  objc_msgSend_size(v20, v21, v22);
  v24 = v23;

  v27 = objc_msgSend_geometry(self, v25, v26, fmin(v12, v24));
  objc_msgSend_frame(v27, v28, v29);
  TSURectWithOriginAndSize();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = objc_alloc(MEMORY[0x277D80300]);
  v41 = objc_msgSend_initWithFrame_(v38, v39, v40, v31, v33, v35, v37);

  return v41;
}

- (CGRect)boundsForStandardKnobs
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_frame(v3, v4, v5);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPTOCLayout commandToClampModelToLayoutSizeWithAdditionalTransform:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 123, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPTOCLayout commandToClampModelToLayoutSizeWithAdditionalTransform:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  storageChangeCount = self->_storageChangeCount;
  v5 = objc_msgSend_info(self, a2, a3);
  v8 = objc_msgSend_textStorage(v5, v6, v7);
  v11 = objc_msgSend_changeCount(v8, v9, v10);

  if (storageChangeCount != v11)
  {
    self->_initialCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  v3 = objc_msgSend_info(self, a2, a3);
  v6 = objc_msgSend_geometry(v3, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  TSURectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    objc_msgSend_maximumFrameSizeForChild_(v8, v9, self);
  }

  objc_msgSend_maxSize(self, v9, v10);
  objc_msgSend_maxSize(self, v11, v12);
  TSURectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)a3
{
  textIsVertical = self->_textIsVertical;
  objc_msgSend_maxSize(self, a2, a3);
  if (!textIsVertical)
  {
    return v5;
  }

  return result;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  if (a3 != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPTOCLayout widthForColumnIndex:bodyWidth:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 205, 0, "unexpected column index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return a4;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  if (a6)
  {
    *a6 = a4;
  }

  if (a7)
  {
    *a7 = 0.0;
  }

  return 0.0;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end