@interface TPFootnoteContainerLayout
- (BOOL)isEmpty;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)footnoteSeparatorLineFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (TPFootnoteContainerLayout)initWithFootnoteMarkProvider:(id)provider vertical:(BOOL)vertical lineWidth:(double)width maxFootnoteBlockHeight:(double)height footnoteSpacing:(double)spacing;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)blockHeight;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)computeLayoutGeometry;
- (id)dependentsOfTextLayout:(id)layout;
- (id)markStringForFootnoteReferenceStorage:(id)storage;
- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes;
- (void)addFootnoteLayout:(id)layout;
- (void)removeAllFootnoteLayouts;
- (void)removeFootnoteLayout:(id)layout;
- (void)removeFootnoteLayoutWithInfo:(id)info;
- (void)setFootnoteSpacing:(int64_t)spacing;
- (void)setIncludeFootnoteSeparatorLine:(BOOL)line;
- (void)trimFootnoteLayoutsFromIndex:(unint64_t)index;
- (void)validate;
@end

@implementation TPFootnoteContainerLayout

- (TPFootnoteContainerLayout)initWithFootnoteMarkProvider:(id)provider vertical:(BOOL)vertical lineWidth:(double)width maxFootnoteBlockHeight:(double)height footnoteSpacing:(double)spacing
{
  providerCopy = provider;
  v13 = objc_alloc_init(TPFootnoteContainerInfo);
  v39.receiver = self;
  v39.super_class = TPFootnoteContainerLayout;
  v15 = [(TPFootnoteContainerLayout *)&v39 initWithInfo:v13];
  if (v15)
  {
    if (!providerCopy)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, v19, "[TPFootnoteContainerLayout initWithFootnoteMarkProvider:vertical:lineWidth:maxFootnoteBlockHeight:footnoteSpacing:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v28, v29, v30, v31, v32, v21, v27, 48, 0, "invalid nil value for '%{public}s'", "footnoteMarkProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36, v37);
    }

    v15->_vertical = vertical;
    v15->_lineWidth = width;
    v15->_maxFootnoteBlockHeight = height;
    v15->_footnoteSpacing = spacing;
    v15->_includeFootnoteSeparatorLine = 1;
    objc_storeWeak(&v15->_footnoteMarkProvider, providerCopy);
  }

  return v15;
}

- (void)addFootnoteLayout:(id)layout
{
  layoutCopy = layout;
  v10 = objc_msgSend_children(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_containsObject_(v10, v11, v12, v13, v14, v15, layoutCopy);

  if (v16)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "[TPFootnoteContainerLayout addFootnoteLayout:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v31, v32, v33, v34, v23, v29, 63, 0, "Footnote container layout already has this footnote layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38, v39);
  }

  else
  {
    v45.receiver = self;
    v45.super_class = TPFootnoteContainerLayout;
    [(TPFootnoteContainerLayout *)&v45 addChild:layoutCopy];
    objc_msgSend_invalidateSize(self, v40, v41, v42, v43, v44);
  }
}

- (void)removeFootnoteLayout:(id)layout
{
  layoutCopy = layout;
  v9 = objc_msgSend_children(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_containsObject_(v9, v10, v11, v12, v13, v14, layoutCopy);

  if (v15)
  {
    objc_msgSend_removeFromParent(layoutCopy, v16, v17, v18, v19, v20);
    objc_msgSend_invalidateSize(self, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "[TPFootnoteContainerLayout removeFootnoteLayout:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 92, 0, "Footnote container layout doesn't have this footnote layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
  }
}

- (void)removeFootnoteLayoutWithInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = objc_msgSend_children(self, v5, 0, v6, v7, v8, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v32, v36, 16);
  if (v15)
  {
    v21 = v15;
    v22 = *v33;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v33 != v22)
      {
        objc_enumerationMutation(v9);
      }

      v24 = *(*(&v32 + 1) + 8 * v23);
      v25 = objc_msgSend_info(v24, v16, v17, v18, v19, v20);

      if (v25 == infoCopy)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, v17, v18, v19, v20, &v32, v36, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v26 = v24;

    if (!v26)
    {
      goto LABEL_13;
    }

    objc_msgSend_removeFootnoteLayout_(self, v27, v28, v29, v30, v31, v26);
    v9 = v26;
  }

LABEL_12:

LABEL_13:
}

- (void)removeAllFootnoteLayouts
{
  if ((objc_msgSend_isEmpty(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    objc_msgSend_setChildren_(self, v7, v8, v9, v10, v11, MEMORY[0x277CBEBF8]);

    objc_msgSend_invalidateSize(self, v12, v13, v14, v15, v16);
  }
}

- (void)setFootnoteSpacing:(int64_t)spacing
{
  v3.n128_f64[0] = spacing;
  self->_footnoteSpacing = spacing;
  objc_msgSend_invalidateFrame(self, a2, v3, v4, v5, v6);
}

- (void)trimFootnoteLayoutsFromIndex:(unint64_t)index
{
  v27 = objc_msgSend_children(self, a2, v3, v4, v5, v6);
  v14 = objc_msgSend_count(v27, v9, v10, v11, v12, v13);
  if (v14 > index)
  {
    v20 = v14;
    do
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(v27, v15, v16, v17, v18, v19, --v20);
      objc_msgSend_removeFootnoteLayout_(self, v22, v23, v24, v25, v26, v21);
    }

    while (v20 > index);
  }
}

- (BOOL)isEmpty
{
  v6 = objc_msgSend_children(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11) == 0;

  return v12;
}

- (double)blockHeight
{
  if (objc_msgSend_isEmpty(self, a2, v2, v3, v4, v5))
  {
    return 0.0;
  }

  vertical = self->_vertical;
  objc_msgSend_frame(self, v7, v8, v9, v10, v11);
  if (vertical)
  {

    return CGRectGetWidth(*&v14);
  }

  else
  {

    return CGRectGetHeight(*&v14);
  }
}

- (void)setIncludeFootnoteSeparatorLine:(BOOL)line
{
  if (self->_includeFootnoteSeparatorLine != line)
  {
    self->_includeFootnoteSeparatorLine = line;
    objc_msgSend_invalidateSize(self, a2, v3, v4, v5, v6);
  }
}

- (CGRect)footnoteSeparatorLineFrame
{
  if (self->_includeFootnoteSeparatorLine)
  {
    if (self->_vertical)
    {
      v6 = objc_msgSend_geometry(self, a2, v2, v3, v4, v5);
      objc_msgSend_frame(v6, v7, v8, v9, v10, v11);
      v13 = v12;
      v15 = v14;

      v16 = v13 + -8.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = v15 / 3.0;
    }

    else
    {
      v18 = 8.0;
      v19 = 0.0;
      v17 = 100.0;
      v16 = 0.0;
    }
  }

  else
  {
    v16 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v17 = *(MEMORY[0x277CBF398] + 16);
    v19 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (void)validate
{
  v102 = *MEMORY[0x277D85DE8];
  if (self->_vertical)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v6 = objc_msgSend_children(self, a2, 0, v2, v3, v4);
    v12 = objc_msgSend_reverseObjectEnumerator(v6, v7, v8, v9, v10, v11);

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v96, v101, 16);
    if (v18)
    {
      v24 = v18;
      v25 = *v97;
      v26 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v97 != v25)
          {
            objc_enumerationMutation(v12);
          }

          v28 = *(*(&v96 + 1) + 8 * i);
          v29 = objc_msgSend_geometry(v28, v19, v20, v21, v22, v23);
          v35 = objc_msgSend_mutableCopy(v29, v30, v31, v32, v33, v34);

          CGAffineTransformMakeTranslation(&v95, v26, 0.0);
          v94 = v95;
          objc_msgSend_setTransform_(v35, v36, *&v95.tx, *&v95.c, v37, v38, &v94);
          objc_msgSend_setGeometry_(v28, v39, v40, v41, v42, v43, v35);
          objc_msgSend_size(v35, v44, v45, v46, v47, v48);
          v26 = v26 + v49 + self->_footnoteSpacing;
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, v20, v21, v22, v23, &v96, v101, 16);
      }

      while (v24);
    }
  }

  else
  {
    includeFootnoteSeparatorLine = self->_includeFootnoteSeparatorLine;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v12 = objc_msgSend_children(self, a2, 0, v2, v3, v4);
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v51, v52, v53, v54, v55, &v90, v100, 16);
    if (v56)
    {
      v62 = v56;
      v58.n128_u64[0] = 0;
      v59.n128_u64[0] = 16.0;
      if (includeFootnoteSeparatorLine)
      {
        v63 = 16.0;
      }

      else
      {
        v63 = 0.0;
      }

      v64 = *v91;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v91 != v64)
          {
            objc_enumerationMutation(v12);
          }

          v66 = *(*(&v90 + 1) + 8 * j);
          v67 = objc_msgSend_geometry(v66, v57, v58, v59, v60, v61);
          v73 = objc_msgSend_mutableCopy(v67, v68, v69, v70, v71, v72);

          CGAffineTransformMakeTranslation(&v89, 0.0, v63);
          v94 = v89;
          objc_msgSend_setTransform_(v73, v74, *&v89.tx, *&v89.c, v75, v76, &v94);
          objc_msgSend_setGeometry_(v66, v77, v78, v79, v80, v81, v73);
          objc_msgSend_size(v73, v82, v83, v84, v85, v86);
          v63 = v63 + v87 + self->_footnoteSpacing;
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v57, v58, v59, v60, v61, &v90, v100, 16);
      }

      while (v62);
    }
  }

  v88.receiver = self;
  v88.super_class = TPFootnoteContainerLayout;
  [(TPFootnoteContainerLayout *)&v88 validate];
}

- (id)computeLayoutGeometry
{
  v3.n128_u64[0] = 1.0;
  if (self->_vertical)
  {
    lineWidth = self->_lineWidth;
  }

  else
  {
    lineWidth = 1.0;
  }

  if (self->_vertical)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = self->_lineWidth;
  }

  v2.n128_u64[0] = *&self->_lineWidth;
  if ((objc_msgSend_isEmpty(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    vertical = self->_vertical;
    v15 = objc_msgSend_children(self, v9, v10, v11, v12, v13);
    v21 = v15;
    if (vertical)
    {
      v22 = objc_msgSend_firstObject(v15, v16, v17, v18, v19, v20);

      objc_msgSend_frame(v22, v23, v24, v25, v26, v27);
      MaxX = CGRectGetMaxX(v61);
      if (self->_includeFootnoteSeparatorLine)
      {
        v8 = MaxX + 16.0;
      }

      else
      {
        v8 = MaxX;
      }
    }

    else
    {
      v22 = objc_msgSend_lastObject(v15, v16, v17, v18, v19, v20);

      objc_msgSend_frame(v22, v29, v30, v31, v32, v33);
      lineWidth = CGRectGetMaxY(v62);
    }
  }

  if (self->_vertical)
  {
    v10.n128_f64[0] = v8;
  }

  else
  {
    v10.n128_f64[0] = lineWidth;
  }

  if (v10.n128_f64[0] <= 0.0)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPFootnoteContainerLayout computeLayoutGeometry]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 250, 0, "Can't have a layout with zero height");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
  }

  v52 = objc_alloc(MEMORY[0x277D80300]);
  v53.n128_u64[0] = 0;
  v54.n128_u64[0] = 0;
  v55.n128_f64[0] = v8;
  v56.n128_f64[0] = lineWidth;
  v58 = objc_msgSend_initWithFrame_(v52, v57, v53, v54, v55, v56);

  return v58;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v3.n128_u64[0] = *MEMORY[0x277CBF3A8];
  v4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
  (MEMORY[0x2821F9670])(self, sel_autosizedFrameForTextLayout_textSize_, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  lineWidth = self->_lineWidth;
  if (self->_vertical)
  {
    width = size.width;
  }

  else
  {
    width = self->_lineWidth;
  }

  if (!self->_vertical)
  {
    lineWidth = size.height;
  }

  v6 = 0.0;
  v7 = 0.0;
  result.size.height = lineWidth;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = self;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v3, v4, v5, v6, v9, 1);

  return v7;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout
{
  result = self->_maxFootnoteBlockHeight;
  if (self->_includeFootnoteSeparatorLine)
  {
    return result + -16.0;
  }

  return result;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
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

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (id)markStringForFootnoteReferenceStorage:(id)storage
{
  storageCopy = storage;
  WeakRetained = objc_loadWeakRetained(&self->_footnoteMarkProvider);
  v11 = objc_msgSend_markStringForFootnoteReferenceStorage_(WeakRetained, v6, v7, v8, v9, v10, storageCopy);

  return v11;
}

- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes
{
  endnotesCopy = endnotes;
  footnotesCopy = footnotes;
  storageCopy = storage;
  WeakRetained = objc_loadWeakRetained(&self->_footnoteMarkProvider);
  v15 = objc_msgSend_markStringForFootnoteReferenceStorage_ignoreDeletedFootnotes_forceDocumentEndnotes_(WeakRetained, v10, v11, v12, v13, v14, storageCopy, footnotesCopy, endnotesCopy);

  return v15;
}

@end