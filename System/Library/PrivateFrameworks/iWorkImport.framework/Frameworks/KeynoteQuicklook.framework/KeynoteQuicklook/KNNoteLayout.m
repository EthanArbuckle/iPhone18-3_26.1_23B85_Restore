@interface KNNoteLayout
- (BOOL)p_isForPrint;
- (BOOL)shrinkTextToFit;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (Class)repClassForTextLayout:(id)a3;
- (TSWPPadding)layoutMargins;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4;
- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)children;
- (id)dependentsOfTextLayout:(id)a3;
- (id)dropCapStyleAtParIndex:(unint64_t)a3;
- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (int)verticalAlignmentForTextLayout:(id)a3;
- (unint64_t)autosizeFlagsForTextLayout:(id)a3;
- (unint64_t)initialCharIndex;
- (void)addChild:(id)a3;
- (void)createContainedLayoutForEditing;
- (void)dealloc;
- (void)insertChild:(id)a3 above:(id)a4;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChild:(id)a3 below:(id)a4;
- (void)invalidateForAutosizingTextLayout:(id)a3;
- (void)invalidatePadding;
- (void)invalidateSize;
- (void)replaceChild:(id)a3 with:(id)a4;
- (void)setChildren:(id)a3;
- (void)updateChildrenFromInfo;
@end

@implementation KNNoteLayout

- (void)dealloc
{
  objc_msgSend_setParent_(self->_containedLayout, a2, 0);
  v3.receiver = self;
  v3.super_class = KNNoteLayout;
  [(KNNoteLayout *)&v3 dealloc];
}

- (id)children
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_containedLayout)
  {
    v4[0] = self->_containedLayout;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)setChildren:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout setChildren:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 74, 0, "not supported");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)addChild:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout addChild:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 78, 0, "not supported");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout insertChild:atIndex:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 82, 0, "not supported");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)insertChild:(id)a3 below:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout insertChild:below:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 86, 0, "not supported");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)insertChild:(id)a3 above:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout insertChild:above:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 90, 0, "not supported");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNNoteLayout replaceChild:with:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteLayout.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 94, 0, "not supported");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)invalidateSize
{
  v5.receiver = self;
  v5.super_class = KNNoteLayout;
  [(KNNoteLayout *)&v5 invalidateSize];
  objc_msgSend_invalidateSize(self->_containedLayout, v3, v4);
}

- (void)createContainedLayoutForEditing
{
  v4 = objc_msgSend_info(self, a2, v2);
  v29 = objc_msgSend_containedStorage(v4, v5, v6);

  containedLayout = self->_containedLayout;
  if (!containedLayout || (objc_msgSend_info(containedLayout, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v29))
  {
    objc_msgSend_invalidate(self, v7, v8);
    v12 = self->_containedLayout;
    if (v12)
    {
      objc_msgSend_setParent_(v12, v11, 0);
      v13 = self->_containedLayout;
      self->_containedLayout = 0;
    }

    if (v29)
    {
      objc_msgSend_nonAutosizedFrameForTextLayout_(self, v11, 0);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v24 = objc_alloc(objc_msgSend_layoutClass(v29, v22, v23));
      v26 = objc_msgSend_initWithInfo_frame_(v24, v25, v29, v15, v17, v19, v21);
      v27 = self->_containedLayout;
      self->_containedLayout = v26;

      objc_msgSend_setParent_(self->_containedLayout, v28, self);
    }
  }
}

- (void)updateChildrenFromInfo
{
  containedLayout = self->_containedLayout;
  if (!containedLayout)
  {
    objc_msgSend_createContainedLayoutForEditing(self, a2, v2);
    containedLayout = self->_containedLayout;
  }

  MEMORY[0x2821F9670](containedLayout, sel_updateChildrenFromInfo, v2);
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)p_isForPrint
{
  v3 = objc_msgSend_layoutController(self, a2, v2);
  v6 = objc_msgSend_canvas(v3, v4, v5);
  v9 = objc_msgSend_delegate(v6, v7, v8);

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    isPrintingCanvas = objc_msgSend_isPrintingCanvas(v9, v10, v11);
  }

  else
  {
    isPrintingCanvas = 0;
  }

  return isPrintingCanvas;
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = objc_msgSend_info(self, a2, a3);
  v10 = objc_msgSend_containedStorage(v7, v8, v9);

  v12 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v10, v11, a3, a4);
  if (!objc_msgSend_darkModeEnabled(self, v13, v14))
  {
    isVariation = v12;
    goto LABEL_14;
  }

  v17 = objc_msgSend_propertyMap(v12, v15, v16);
  v20 = objc_msgSend_copy(v17, v18, v19);

  v22 = objc_msgSend_objectForProperty_(v20, v21, 48);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_msgSend_color(v22, v23, v24);
    v28 = objc_msgSend_grayscaleColor(v25, v26, v27);
    isAlmostEqualToColor = objc_msgSend_isAlmostEqualToColor_(v25, v29, v28);

    if (isAlmostEqualToColor)
    {
      v33 = MEMORY[0x277D801F8];
      v34 = objc_msgSend_invertedColor(v25, v31, v32);
      v36 = objc_msgSend_colorWithColor_(v33, v35, v34);

      objc_msgSend_setObject_forProperty_(v20, v37, v36, 48);
      v22 = v36;
    }

LABEL_10:

    goto LABEL_11;
  }

  v39 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
  isEqual = objc_msgSend_isEqual_(v22, v40, v39);

  if (isEqual)
  {
    objc_opt_class();
    v43 = objc_msgSend_objectForProperty_(v20, v42, 50);
    v25 = TSUDynamicCast();

    v46 = objc_msgSend_color(v25, v44, v45);
    v49 = objc_msgSend_grayscaleColor(v46, v47, v48);
    v51 = objc_msgSend_isAlmostEqualToColor_(v46, v50, v49);

    if (v51)
    {
      v54 = objc_msgSend_mutableCopy(v25, v52, v53);
      v57 = objc_msgSend_invertedColor(v46, v55, v56);
      objc_msgSend_setColor_(v54, v58, v57);

      v61 = objc_msgSend_copy(v54, v59, v60);
      objc_msgSend_setObject_forProperty_(v20, v62, v61, 50);
    }

    goto LABEL_10;
  }

LABEL_11:
  v63 = objc_alloc(MEMORY[0x277D80EC8]);
  v66 = objc_msgSend_context(v10, v64, v65);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v63, v67, v66, 0, v20, 0);

  invertedParagraphsStyles = self->_invertedParagraphsStyles;
  if (!invertedParagraphsStyles)
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v71 = self->_invertedParagraphsStyles;
    self->_invertedParagraphsStyles = v70;

    invertedParagraphsStyles = self->_invertedParagraphsStyles;
  }

  objc_msgSend_addObject_(invertedParagraphsStyles, v68, isVariation);

LABEL_14:

  return isVariation;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = objc_msgSend_info(self, a2, a3);
  v10 = objc_msgSend_containedStorage(v7, v8, v9);
  v12 = objc_msgSend_paragraphIndexAtCharIndex_(v10, v11, a3);

  return objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v13, v12, a4);
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = objc_msgSend_info(self, a2, a3);
  v9 = objc_msgSend_containedStorage(v6, v7, v8);
  v11 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v9, v10, a3, a4);

  return v11;
}

- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = objc_msgSend_info(self, a2, a3);
  v9 = objc_msgSend_containedStorage(v6, v7, v8);
  v11 = objc_msgSend_listStyleAtParIndex_effectiveRange_(v9, v10, a3, a4);

  return v11;
}

- (id)dropCapStyleAtParIndex:(unint64_t)a3
{
  v4 = objc_msgSend_info(self, a2, a3);
  v7 = objc_msgSend_containedStorage(v4, v5, v6);
  v9 = objc_msgSend_dropCapStyleAtParIndex_(v7, v8, a3);

  return v9;
}

- (unint64_t)autosizeFlagsForTextLayout:(id)a3
{
  if (objc_msgSend_p_isForPrint(self, a2, a3))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (int)verticalAlignmentForTextLayout:(id)a3
{
  v3 = objc_msgSend_info(self, a2, a3);
  v6 = objc_msgSend_verticalAlignment(v3, v4, v5);

  return v6;
}

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  v4 = objc_msgSend_computeLayoutGeometry(self, a2, a3);
  objc_msgSend_setGeometry_(self, v5, v4);

  objc_msgSend_invalidateSize(self, v6, v7);
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  if (objc_msgSend_p_isForPrint(self, a2, a3))
  {
    v6 = objc_msgSend_info(self, v4, v5);
    objc_msgSend_frameForPrinting(v6, v7, v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    objc_msgSend_sizeOfScrollViewEnclosingCanvas(self, v4, v5);
    TSURectWithSize();
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
  objc_msgSend_nonAutosizedFrameForTextLayout_(self, a2, a3, a4.width);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  v8 = CGRectGetHeight(v13);
  if (v8 >= height)
  {
    v9 = v8;
  }

  else
  {
    v9 = height;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)dependentsOfTextLayout:(id)a3
{
  v3 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], a2, self);

  return v3;
}

- (Class)repClassForTextLayout:(id)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (unint64_t)initialCharIndex
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_initialCharacterIndexForExporting(v3, v4, v5);

  return v6;
}

- (void)invalidatePadding
{
  padding = self->_padding;
  self->_padding = 0;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v4 = objc_msgSend_geometry(self, a2, a3);
  objc_msgSend_size(v4, v5, v6);
  v8 = v7;

  v11 = objc_msgSend_p_adjustedPaddingForBodyWidth_(self, v9, v10, v8);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_edgeInsets(v11, v12, v13);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x277D81428];
    v18 = *(MEMORY[0x277D81428] + 8);
    v20 = *(MEMORY[0x277D81428] + 16);
    v22 = *(MEMORY[0x277D81428] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (TSWPPadding)layoutMargins
{
  if (objc_msgSend_p_isForPrint(self, a2, v2))
  {
    v6 = objc_msgSend_padding(self, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)widthForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4
{
  v5 = objc_msgSend_geometry(self, a2, a3, a4);
  objc_msgSend_size(v5, v6, v7);
  v9 = v8;

  v12 = objc_msgSend_p_adjustedPaddingForBodyWidth_(self, v10, v11, v9);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_leftInset(v12, v13, v14);
    v17 = v16;
    objc_msgSend_rightInset(v15, v18, v19);
  }

  else
  {
    v17 = 0.0;
    v20 = 0.0;
  }

  v21 = v9 - v17 - v20;

  return v21;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  v10 = objc_msgSend_p_adjustedPaddingForBodyWidth_(self, a2, a3, a5);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_leftInset(v10, v11, v12);
    v15 = v14;
    objc_msgSend_rightInset(v13, v16, v17);
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0.0;
  v18 = 0.0;
  if (a6)
  {
LABEL_3:
    *a6 = a4 - v15 - v18;
  }

LABEL_4:
  if (a7)
  {
    *a7 = 0.0;
  }

  return v15;
}

- (BOOL)shrinkTextToFit
{
  if (!objc_msgSend_p_isForPrint(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_info(self, v4, v5);
  v9 = objc_msgSend_shrinkTextForPrinting(v6, v7, v8);

  return v9;
}

- (CGSize)sizeOfScrollViewEnclosingCanvas
{
  width = self->_sizeOfScrollViewEnclosingCanvas.width;
  height = self->_sizeOfScrollViewEnclosingCanvas.height;
  result.height = height;
  result.width = width;
  return result;
}

@end