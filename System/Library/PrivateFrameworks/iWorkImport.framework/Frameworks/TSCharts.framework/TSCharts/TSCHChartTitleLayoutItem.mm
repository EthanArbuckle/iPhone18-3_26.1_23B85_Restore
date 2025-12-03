@interface TSCHChartTitleLayoutItem
- (BOOL)pointHitsTitleRect:(CGPoint)rect;
- (CGAffineTransform)p_transformForRenderingRangePtr:(SEL)ptr outElementSize:(_NSRange *)size outClipRect:(CGSize *)rect forSubselection:(CGRect *)subselection forSearchSelection:(BOOL)selection;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGSize)calcMinSize;
- (CGSize)calcMinSizeForModel:(id)model;
- (TSCHChartTitleLayoutItem)initWithParent:(id)parent;
- (id)p_titleParagraphStyle;
- (id)renderersWithRep:(id)rep;
- (id)subselectionHaloPositionsForSelections:(id)selections;
- (id)subselectionKnobPositionsForSelection:(id)selection;
- (id)titleText;
- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block;
@end

@implementation TSCHChartTitleLayoutItem

- (TSCHChartTitleLayoutItem)initWithParent:(id)parent
{
  v5.receiver = self;
  v5.super_class = TSCHChartTitleLayoutItem;
  v3 = [(TSCHChartLayoutItem *)&v5 initWithParent:parent];
  if (v3)
  {
    v3->_minHitSize = sub_276277000();
  }

  return v3;
}

- (id)p_titleParagraphStyle
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_titleParagraphStyleIndex(self, v7, v8, v9, v10);
  v16 = objc_msgSend_paragraphStyleAtIndex_(v6, v12, v13, v14, v15, v11);

  return v16;
}

- (id)titleText
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_titleTextForModel_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (CGSize)calcMinSize
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  objc_msgSend_calcMinSizeForModel_(self, v7, v8, v9, v10, v6);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)calcMinSizeForModel:(id)model
{
  modelCopy = model;
  if (objc_msgSend_isTitleOn(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_titleTextForModel_(self, v9, v10, v11, v12, modelCopy);
    v18 = objc_msgSend_p_titleParagraphStyle(self, v14, v15, v16, v17);
    objc_msgSend_chartBodyWidth(self, v19, v20, v21, v22);
    v24 = v23;
    if (objc_msgSend_shouldPlaceTitleAtCenter(self, v25, v23, v26, v27) && (objc_msgSend_layoutSettings(self, v28, v29, v30, v31), (v56 & 1) == 0))
    {
      v43 = objc_msgSend_chartInfo(self, v28, v29, v30, v31);
      objc_msgSend_defaultInnerRadiusPercentage(TSCHStyleUtilities, v44, v45, v46, v47);
      objc_msgSend_floatValueForProperty_defaultValue_(v43, v48, v49, v50, v51, 1103);
      v53 = v52;

      v42 = v24 * v53;
      v24 = v42;
    }

    else
    {
      v32 = objc_msgSend_sharedText(TSCHText, v28, v29, v30, v31);
      v37 = objc_msgSend_textStyleProvidingSource(self, v33, v34, v35, v36);
      objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v32, v38, v24, v39, v40, v13, v18, 1, 0, v37, 0, 0);
      v42 = v41;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF3A8];
    v42 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v54 = v24;
  v55 = v42;
  result.height = v55;
  result.width = v54;
  return result;
}

- (CGRect)calcDrawingRect
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  TSURectWithSize();
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  v15 = objc_msgSend_p_titleParagraphStyle(self, v14, v6, v8, v10);
  objc_opt_class();
  v20 = objc_msgSend_boxedValueForProperty_(v15, v16, v17, v18, v19, 40);
  v21 = TSUDynamicCast();

  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v22, v23, v24, v25, v21))
  {
    objc_msgSend_shadowBoundsForRect_(v21, v26, x, y, width, height);
    v38.origin.x = v27;
    v38.origin.y = v28;
    v38.size.width = v29;
    v38.size.height = v30;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectUnion(v35, v38);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)calcOverhangRect
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  if (!objc_msgSend_shouldPlaceTitleAtCenter(self, v6, v7, v8, v9) || (objc_msgSend_layoutSettings(self, v10, v11, v12, v13), v72 == 1))
  {
    v14 = objc_msgSend_chartInfo(self, v10, v11, v12, v13);
    v19 = objc_msgSend_model(self, v15, v16, v17, v18);
    v24 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v20, v21, v22, v23, 1, 0);
    v29 = objc_msgSend_axisForID_(v19, v25, v26, v27, v28, v24);
    if (!v29)
    {
      v34 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v30, v31, v32, v33, 2, 0);

      v39 = objc_msgSend_axisForID_(v19, v35, v36, v37, v38, v34);
      if (v39)
      {
        v44 = v39;
        v24 = v34;
        v45 = objc_msgSend_intValueForProperty_defaultValue_(v39, v40, v41, v42, v43, 1034, 0);
LABEL_8:
        v54 = objc_msgSend_paragraphStyleAtIndex_(v14, v46, v47, v48, v49, v45);
        v59 = objc_msgSend_sharedText(TSCHText, v55, v56, v57, v58);
        v64 = objc_msgSend_textStyleProvidingSource(self, v60, v61, v62, v63);
        objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v59, v65, 0.0, v66, v67, @"X", v54, 1, 0, v64, 0, 0);

LABEL_9:
        goto LABEL_10;
      }

      v24 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v40, v41, v42, v43, 6, 0);

      v29 = objc_msgSend_axisForID_(v19, v50, v51, v52, v53, v24);
      if (!v29)
      {
        goto LABEL_9;
      }
    }

    v44 = v29;
    v45 = objc_msgSend_intValueForProperty_defaultValue_(v29, v30, v31, v32, v33, 1034, 0);
    goto LABEL_8;
  }

LABEL_10:
  TSURectWithSize();
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_new();
  v6 = [TSCHChartTitleRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, repCopy, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

- (CGAffineTransform)p_transformForRenderingRangePtr:(SEL)ptr outElementSize:(_NSRange *)size outClipRect:(CGSize *)rect forSubselection:(CGRect *)subselection forSearchSelection:(BOOL)selection
{
  selectionCopy = selection;
  v16 = MEMORY[0x277CBF398];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v21 = *MEMORY[0x277CBF3A8];
  v22 = *(MEMORY[0x277CBF3A8] + 8);
  v23 = MEMORY[0x277CBF2C0];
  v135 = *(MEMORY[0x277CBF2C0] + 16);
  v136 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v135;
  v137 = *(v23 + 32);
  *&retstr->tx = v137;
  if (objc_msgSend_isTitleOn(self, ptr, *&v137, *&v135, v8))
  {
    sizeCopy = size;
    v28 = objc_msgSend_titleText(self, v24, v25, v26, v27);
    v33 = objc_msgSend_p_titleParagraphStyle(self, v29, v30, v31, v32);
    v127 = *(v16 + 16);
    v128 = *v16;
    v142.origin = *v16;
    v142.size = v127;
    objc_msgSend_rootedLayoutRect(self, v34, v142.origin.x, v127.width, v35);
    v131 = v36;
    v38 = v37;
    memset(v141, 0, sizeof(v141));
    objc_msgSend_initializeTextLayoutResults(TSCHText, v39, 0.0, v36, v37);
    shouldPlaceTitleAtCenter = objc_msgSend_shouldPlaceTitleAtCenter(self, v40, v41, v42, v43);
    v132 = v21;
    if (shouldPlaceTitleAtCenter)
    {
      v48 = v28;
      rectCopy = rect;
      if (selectionCopy || a8)
      {
        v49 = objc_msgSend_sharedInteriorWrappingText(TSCHText, v44, v45, v46, v47);
      }

      else
      {
        v49 = objc_msgSend_sharedText(TSCHText, v44, v45, v46, v47);
      }

      v68 = v49;
      v69 = objc_msgSend_placeTitleAtCenterPropertiesForWrapWidth_(TSCHTextLayoutProperties, v50, v38, v51, v52);
      v74 = objc_msgSend_textStyleProvidingSource(self, v70, v71, v72, v73);
      v133 = v69;
      v134 = v68;
      objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v68, v75, v38, v76, v77, v28, v33, 1, v69, v74, &v142, v141);
      v21 = v78;
      v67 = v79;

      if (selectionCopy)
      {
        objc_msgSend_rootedLayoutRect(self, v80, v81, v82, v83);
        x = v84;
        y = v85;
        v87 = v86;
        v67 = v88;
        if (TSURectIsFinite())
        {
          TSURectWithOriginAndSize();
          x = v89;
          y = v90;
          v21 = v91;
          v67 = v92;
        }

        else
        {
          v21 = v87;
        }

        v106 = v69;
        rect = rectCopy;
        *&v140.a = v136;
        *&v140.c = v135;
        *&v140.tx = v137;
        CGAffineTransformTranslate(retstr, &v140, x, y);
        height = v67;
        width = v21;
        goto LABEL_29;
      }

      rect = rectCopy;
    }

    else
    {
      v53 = objc_msgSend_sharedText(TSCHText, v44, v45, v46, v47);
      v133 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v54, v38, v55, v56);
      v61 = objc_msgSend_textStyleProvidingSource(self, v57, v58, v59, v60);
      v134 = v53;
      v48 = v28;
      objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v53, v62, v38, v63, v64, v28, v33, 1, 0, v61, &v142, 0);
      v21 = v65;
      v67 = v66;
    }

    if (CGRectIsNull(v142))
    {
      v67 = v22;
      v21 = v132;
    }

    else
    {
      v125 = v33;
      v124 = v22;
      if (sizeCopy)
      {
        location = sizeCopy->location;
        length = sizeCopy->length;
      }

      else
      {
        location = 0;
        length = -1;
      }

      v99 = objc_msgSend_length(v48, v93, v94, v95, v96);
      v143.location = 0;
      v143.length = v99;
      v144.location = location;
      v144.length = length;
      v100 = NSIntersectionRange(v143, v144);
      TSURectWithSize();
      TSUCenterRectOverRect();
      if (!shouldPlaceTitleAtCenter)
      {
        v102 = v131;
      }

      v103 = *&retstr->c;
      *&v140.a = *&retstr->a;
      *&v140.c = v103;
      *&v140.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v140, v101, v102);
      if (sizeCopy || v100.location || v99 != v100.length)
      {
        v139.origin = v128;
        v139.size = v127;
        v107 = objc_msgSend_textStyleProvidingSource(self, v104, v127.width, v128.x, v105);
        v33 = v125;
        v106 = v133;
        objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_layoutProperties_styleProvidingSource_outErasableFrame_(v134, v108, v38, v109, v110, v100.location, v100.length, v48, v125, v133, v107, &v139);
        v112 = v111;
        v114 = v113;
        v21 = v115;
        v67 = v116;

        v145.origin.x = v112;
        v145.origin.y = v114;
        v145.size.width = v21;
        v145.size.height = v67;
        if (CGRectIsNull(v145) || CGRectIsNull(v139))
        {
          *&retstr->a = v136;
          *&retstr->c = v135;
          v67 = v124;
          v21 = v132;
          *&retstr->tx = v137;
        }

        else
        {
          v118 = *&retstr->c;
          *&v138.a = *&retstr->a;
          *&v138.c = v118;
          *&v138.tx = *&retstr->tx;
          CGAffineTransformTranslate(&v140, &v138, v112, v114);
          v119 = *&v140.c;
          *&retstr->a = *&v140.a;
          *&retstr->c = v119;
          *&retstr->tx = *&v140.tx;
          TSUSubtractPoints();
          TSURectWithOriginAndSize();
          x = v120;
          y = v121;
          width = v122;
          height = v123;
        }

        goto LABEL_29;
      }

      y = v142.origin.y;
      x = v142.origin.x;
      height = v142.size.height;
      width = v142.size.width;
      v33 = v125;
    }

    v106 = v133;
LABEL_29:

    v22 = v67;
  }

  v146.origin.x = x;
  v146.origin.y = y;
  v146.size.width = width;
  v146.size.height = height;
  result = CGRectIsNull(v146);
  if ((result & 1) == 0)
  {
    v147.origin.x = x;
    v147.origin.y = y;
    v147.size.width = width;
    v147.size.height = height;
    v148 = CGRectInset(v147, -1.0, -1.0);
    x = v148.origin.x;
    y = v148.origin.y;
    width = v148.size.width;
    height = v148.size.height;
  }

  if (subselection)
  {
    subselection->origin.x = x;
    subselection->origin.y = y;
    subselection->size.width = width;
    subselection->size.height = height;
  }

  if (rect)
  {
    rect->width = v21;
    rect->height = v22;
  }

  return result;
}

- (BOOL)pointHitsTitleRect:(CGPoint)rect
{
  y = rect.y;
  point = rect.x;
  v5 = *(MEMORY[0x277CBF398] + 16);
  v24.origin = *MEMORY[0x277CBF398];
  v24.size = v5;
  v23 = *MEMORY[0x277CBF3A8];
  memset(&v22, 0, sizeof(v22));
  objc_msgSend_transformForRenderingOutElementSize_outClipRect_(self, a2, 0.0, v5.width, v3, &v23, &v24);
  result = 0;
  if (!CGRectIsNull(v24))
  {
    v20 = v22;
    CGAffineTransformInvert(&v21, &v20);
    pointa = vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, y), *&v21.a, point));
    TSURectWithSize();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    objc_msgSend_minHitSize(self, v14, v6, v8, v10);
    v25.origin.x = sub_276276FD0(v7, v9, v11, v13, v15);
    if (CGRectContainsPoint(v25, pointa))
    {
      return 1;
    }
  }

  return result;
}

- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block
{
  y = elements.y;
  x = elements.x;
  blockCopy = block;
  if (blockCopy && objc_msgSend_isTitleOn(self, v7, v8, v9, v10) && objc_msgSend_pointHitsTitleRect_(self, v11, x, y, v12))
  {
    v17 = objc_msgSend_titleSelectionPath(self, v13, v14, v15, v16);
    blockCopy[2](blockCopy, v17, 0);
  }
}

- (id)subselectionKnobPositionsForSelection:(id)selection
{
  v75 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selfCopy = self;
  v73.receiver = self;
  v73.super_class = TSCHChartTitleLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v73 subselectionKnobPositionsForSelection:selectionCopy];
  v59 = v5;
  if (v5)
  {
    v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  }

  v15 = v10;
  v16 = objc_msgSend_titleSelectionPath(self, v11, v12, v13, v14);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = selectionCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, v18, v19, v20, &v69, v74, 16);
  if (v21)
  {
    v26 = v21;
    v27 = *v70;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v70 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v69 + 1) + 8 * i);
        if (objc_msgSend_isEqual_(v29, v22, v23, v24, v25, v16))
        {
          v30 = *(MEMORY[0x277CBF398] + 16);
          v67 = *MEMORY[0x277CBF398];
          v68 = v30;
          v31 = *MEMORY[0x277CBF3A8];
          v65 = 0u;
          v66 = v31;
          v63 = 0u;
          v64 = 0u;
          objc_msgSend_transformForRenderingOutElementSize_outClipRect_forSubselection_(selfCopy, v22, 0.0, *&v31, v25, &v66, &v67, 1);
          objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v32, *&v67, *(&v67 + 1), *&v68, *(&v68 + 1), v66);
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v33, v35, v37);
          v62[0] = v63;
          v62[1] = v64;
          v62[2] = v65;
          objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v43, v34, v36, v38, v42, v62, v40);
          v48 = objc_msgSend_objectForKey_(v15, v44, v45, v46, v47, v29);
          v53 = objc_msgSend_arrayByAddingObjectsFromArray_(v42, v49, v50, v51, v52, v48);

          if (v53)
          {
            objc_msgSend_setObject_forKey_(v15, v54, v55, v56, v57, v53, v29);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, v24, v25, &v69, v74, 16);
    }

    while (v26);
  }

  return v15;
}

- (id)subselectionHaloPositionsForSelections:(id)selections
{
  v75 = *MEMORY[0x277D85DE8];
  selectionsCopy = selections;
  selfCopy = self;
  v73.receiver = self;
  v73.super_class = TSCHChartTitleLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v73 subselectionHaloPositionsForSelections:selectionsCopy];
  v59 = v5;
  if (v5)
  {
    v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  }

  v15 = v10;
  v16 = objc_msgSend_titleSelectionPath(self, v11, v12, v13, v14);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = selectionsCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, v18, v19, v20, &v69, v74, 16);
  if (v21)
  {
    v26 = v21;
    v27 = *v70;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v70 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v69 + 1) + 8 * i);
        if (objc_msgSend_isEqual_(v29, v22, v23, v24, v25, v16))
        {
          v30 = *(MEMORY[0x277CBF398] + 16);
          v67 = *MEMORY[0x277CBF398];
          v68 = v30;
          v31 = *MEMORY[0x277CBF3A8];
          v65 = 0u;
          v66 = v31;
          v63 = 0u;
          v64 = 0u;
          objc_msgSend_transformForRenderingOutElementSize_outClipRect_forSubselection_(selfCopy, v22, 0.0, *&v31, v25, &v66, &v67, 1);
          objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v32, *&v67, *(&v67 + 1), *&v68, *(&v68 + 1), v66);
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v33, v35, v37);
          v62[0] = v63;
          v62[1] = v64;
          v62[2] = v65;
          objc_msgSend_addTextSubselectionHalosToArray_rect_transform_(TSCHRenderUtilities, v43, v34, v36, v38, v42, v62, v40);
          v48 = objc_msgSend_objectForKey_(v15, v44, v45, v46, v47, v29);
          v53 = objc_msgSend_arrayByAddingObjectsFromArray_(v42, v49, v50, v51, v52, v48);

          if (v53)
          {
            objc_msgSend_setObject_forKey_(v15, v54, v55, v56, v57, v53, v29);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, v24, v25, &v69, v74, 16);
    }

    while (v26);
  }

  return v15;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection
{
  v44 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v42.receiver = self;
  v42.super_class = TSCHChartTitleLayoutItem;
  Mutable = [(TSCHChartLayoutItem *)&v42 newDragAndDropHighlightPathForSelection:selectionCopy];
  if (objc_msgSend_count(selectionCopy, v6, v7, v8, v9))
  {
    if (Mutable)
    {
      MutableCopy = CGPathCreateMutableCopy(Mutable);
      CGPathRelease(Mutable);
      Mutable = MutableCopy;
    }

    else
    {
      Mutable = CGPathCreateMutable();
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = selectionCopy;
    v11 = selectionCopy;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v38, v43, 16);
    if (v16)
    {
      v21 = v16;
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v11);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          v25 = objc_msgSend_chartTitleType(TSCHSelectionPathType, v17, v18, v19, v20);
          v30 = objc_msgSend_pathType(v24, v26, v27, v28, v29);
          isEqual = objc_msgSend_isEqual_(v25, v31, v32, v33, v34, v30);

          if (isEqual)
          {
            objc_msgSend_rootedDrawingRect(self, v17, v18, v19, v20);
            CGPathAddRectSafe();
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v18, v19, v20, &v38, v43, 16);
      }

      while (v21);
    }

    selectionCopy = v37;
  }

  return Mutable;
}

@end