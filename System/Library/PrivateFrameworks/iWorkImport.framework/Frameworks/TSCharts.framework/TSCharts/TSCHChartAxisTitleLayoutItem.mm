@interface TSCHChartAxisTitleLayoutItem
- (BOOL)isTitleOn;
- (CGAffineTransform)p_transformForRenderingRangePtr:(SEL)ptr outElementSize:(_NSRange *)size outClipRect:(CGSize *)rect;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection;
- (CGRect)calcDrawingRect;
- (CGSize)calcMinSize;
- (CGSize)chartBodySize;
- (TSCHChartAxisTitleLayoutItem)initWithParent:(id)parent;
- (double)titlePaddingForAxis:(id)axis;
- (id)axisLayoutItem;
- (id)subselectionHaloPositionsForSelections:(id)selections;
- (id)subselectionKnobPositionsForSelection:(id)selection;
- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block;
@end

@implementation TSCHChartAxisTitleLayoutItem

- (TSCHChartAxisTitleLayoutItem)initWithParent:(id)parent
{
  v5.receiver = self;
  v5.super_class = TSCHChartAxisTitleLayoutItem;
  v3 = [(TSCHChartLayoutItem *)&v5 initWithParent:parent];
  if (v3)
  {
    v3->_minHitSize = sub_276277000();
  }

  return v3;
}

- (id)axisLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (BOOL)isTitleOn
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_model(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);
  v28 = objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1060, 0) != 0;

  return v28;
}

- (CGSize)calcMinSize
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_model(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);
  v28 = objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1060, 0);
  v34 = *MEMORY[0x277CBF3A8];
  v33 = *(MEMORY[0x277CBF3A8] + 8);
  if (v28)
  {
    v35 = objc_msgSend_sharedText(TSCHText, v29, v30, v31, v32);
    objc_msgSend_titlePaddingForAxis_(self, v36, v37, v38, v39, v23);
    v41 = v40;
    v45 = objc_msgSend_objectValueForProperty_(v23, v42, v40, v43, v44, 1062);
    v50 = objc_msgSend_intValueForProperty_defaultValue_(v23, v46, v47, v48, v49, 1063, 0);
    v55 = objc_msgSend_chartInfo(v8, v51, v52, v53, v54);
    v60 = objc_msgSend_paragraphStyleAtIndex_(v55, v56, v57, v58, v59, v50);

    p_chartBodySize = &self->_chartBodySize;
    width = p_chartBodySize->width;
    if (objc_msgSend_type(v18, v63, v64, v65, v66) == 2)
    {
      width = p_chartBodySize->height;
    }

    objc_msgSend_measureText_paragraphStyle_wrapWidth_(v35, v67, width, v68, v69, v45, v60);
    v71 = v70;
    if (objc_msgSend_type(v18, v72, v73, v70, v74) == 2)
    {
      v34 = v41 + v71;
    }

    else if (objc_msgSend_type(v18, v75, v76, v77, v78) == 1)
    {
      v33 = v41 + v71;
    }

    else if (objc_msgSend_type(v18, v79, v80, v81, v82) != 6 && objc_msgSend_type(v18, v83, v84, v85, v86) != 5)
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "[TSCHChartAxisTitleLayoutItem calcMinSize]");
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTitleLayoutItem.m");
      v102 = objc_msgSend_type(v18, v98, v99, v100, v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v103, v104, v105, v106, v92, v97, 96, 0, "unknown axis type: %ld", v102);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
    }
  }

  v111 = v34;
  v112 = v33;
  result.height = v112;
  result.width = v111;
  return result;
}

- (CGRect)calcDrawingRect
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  TSURectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_opt_class();
  v18 = objc_msgSend_parent(self, v14, v15, v16, v17);
  v19 = TSUDynamicCast();

  v24 = objc_msgSend_model(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_axisID(v19, v25, v26, v27, v28);
  v34 = objc_msgSend_axisForID_(v24, v30, v31, v32, v33, v29);
  v39 = objc_msgSend_intValueForProperty_defaultValue_(v34, v35, v36, v37, v38, 1063, 0);
  v44 = objc_msgSend_chartInfo(self, v40, v41, v42, v43);
  v49 = objc_msgSend_paragraphStyleAtIndex_(v44, v45, v46, v47, v48, v39);
  objc_opt_class();
  v54 = objc_msgSend_boxedValueForProperty_(v49, v50, v51, v52, v53, 40);
  v55 = TSUDynamicCast();

  hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v56, v57, v58, v59, v55);
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  if (hasShadow)
  {
    objc_msgSend_shadowBoundsForRect_(v55, v61, v7, v9, v11, v13, v7, v9, v11, v13);
    v83.origin.x = v66;
    v83.origin.y = v67;
    v83.size.width = v68;
    v83.size.height = v69;
    v78.origin.x = v7;
    v78.origin.y = v9;
    v78.size.width = v11;
    v78.size.height = v13;
    v79 = CGRectUnion(v78, v83);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
  }

  v80.origin.x = v7;
  v80.origin.y = v9;
  v80.size.width = v11;
  v80.size.height = v13;
  v81 = CGRectUnion(v80, *&x);
  v70 = v81.origin.x;
  v71 = v81.origin.y;
  v72 = v81.size.width;
  v73 = v81.size.height;

  v74 = v70;
  v75 = v71;
  v76 = v72;
  v77 = v73;
  result.size.height = v77;
  result.size.width = v76;
  result.origin.y = v75;
  result.origin.x = v74;
  return result;
}

- (CGAffineTransform)p_transformForRenderingRangePtr:(SEL)ptr outElementSize:(_NSRange *)size outClipRect:(CGSize *)rect
{
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v13 = MEMORY[0x277CBF398];
  v14 = *MEMORY[0x277CBF398];
  v15 = *(MEMORY[0x277CBF398] + 8);
  v16 = *(MEMORY[0x277CBF398] + 16);
  v17 = *(MEMORY[0x277CBF398] + 24);
  v151 = *(MEMORY[0x277CBF2C0] + 16);
  v152 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v151;
  v153 = v12;
  *&retstr->tx = v12;
  objc_opt_class();
  v22 = objc_msgSend_parent(self, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_model(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_axisID(v23, v29, v30, v31, v32);
  v38 = objc_msgSend_axisForID_(v28, v34, v35, v36, v37);
  if (!objc_msgSend_intValueForProperty_defaultValue_(v38, v39, v40, v41, v42, 1060, 0))
  {
    rectCopy3 = rect;
    selfCopy = self;
    v97 = v33;
    goto LABEL_46;
  }

  v148 = a6;
  selfCopy2 = self;
  v144 = v17;
  v145 = v16;
  v150 = v28;
  objc_msgSend_rootedLayoutRect(self, v43, v44, v45, v46);
  v48 = v47;
  v50 = v49;
  v54 = objc_msgSend_objectValueForProperty_(v38, v51, v52, v53, v47, 1062);
  v147 = v38;
  v59 = objc_msgSend_intValueForProperty_defaultValue_(v38, v55, v56, v57, v58, 1063, 0);
  v64 = objc_msgSend_chartInfo(v23, v60, v61, v62, v63);
  v69 = objc_msgSend_paragraphStyleAtIndex_(v64, v65, v66, v67, v68, v59);

  v74 = objc_msgSend_sharedText(TSCHText, v70, v71, v72, v73);
  v141 = *(v13 + 16);
  v142 = *v13;
  v158.origin = *v13;
  v158.size = v141;
  v146 = v23;
  v77 = objc_msgSend_axisPosition(v23, v75, v158.origin.x, v141.width, v76);
  v81 = v77;
  if ((v77 & 0xFFFFFFFD) == 1 || v77 == 5)
  {
    width = v50;
  }

  else
  {
    width = v48;
  }

  v84 = v74;
  v85 = v74;
  v86 = v54;
  v87 = v69;
  objc_msgSend_measureText_paragraphStyle_wrapWidth_outErasableFrame_(v85, v78, width, v79, v80, v54, v69, &v158);
  height = v89;
  v143 = width;
  if (size)
  {
    width = v88;
  }

  if (CGRectIsNull(v158))
  {
    height = v11;
    width = v10;
    rectCopy3 = rect;
    selfCopy = selfCopy2;
    v28 = v150;
    v97 = v33;
LABEL_44:
    v17 = v144;
    v16 = v145;
    goto LABEL_45;
  }

  v97 = v33;
  if (size)
  {
    location = size->location;
    length = size->length;
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 0;
    location = 0;
    length = -1;
  }

  v159.length = objc_msgSend_length(v86, v91, v92, v93, v94, *&v15, *&v14, *&v11, *&v10);
  v159.location = 0;
  v140 = v159.length;
  v160.location = location;
  v160.length = length;
  v101 = NSIntersectionRange(v159, v160);
  TSURectWithSize();
  TSUCenterRectOverRect();
  v105 = v104;
  v107 = v106;
  if (v81 <= 5 && ((1 << v81) & 0x2A) != 0)
  {
    v108 = v48 - height;
  }

  else
  {
    v109 = v81 == 4 || v81 == 2;
    v108 = v50 - height;
    v103 = 0.0;
    if (!v109)
    {
      v108 = 0.0;
    }
  }

  if (v81 > 2)
  {
    if (v81 != 3)
    {
      if (v81 != 4)
      {
        goto LABEL_35;
      }

      v103 = 0.5;
      goto LABEL_31;
    }

    v103 = 0.5;
  }

  else
  {
    if (v81 != 1)
    {
      if (v81 != 2)
      {
        goto LABEL_35;
      }

      v103 = -0.5;
LABEL_31:
      v108 = v108 * v103;
      goto LABEL_35;
    }

    v103 = -0.5;
  }

  v108 = v108 * v103;
LABEL_35:
  rectCopy3 = rect;
  v28 = v150;
  v110 = objc_msgSend_type(v97, v102, v108, v103, v104);
  TSUCenterOfRect();
  v111 = v105 * -0.5;
  v112 = v107 * -0.5;
  *&v157.a = v152;
  *&v157.c = v151;
  *&v157.tx = v153;
  CGAffineTransformTranslate(retstr, &v157, v113, v114);
  v115 = -0.0;
  if (v110 == 2)
  {
    v115 = -1.57079637;
  }

  v116 = *&retstr->c;
  *&v156.a = *&retstr->a;
  *&v156.c = v116;
  *&v156.tx = *&retstr->tx;
  CGAffineTransformRotate(&v157, &v156, v115);
  v117 = *&v157.c;
  *&retstr->a = *&v157.a;
  *&retstr->c = v117;
  *&retstr->tx = *&v157.tx;
  v118 = *&retstr->c;
  *&v156.a = *&retstr->a;
  *&v156.c = v118;
  *&v156.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v157, &v156, v111, v112);
  v121 = *&v157.c;
  *&retstr->a = *&v157.a;
  *&retstr->c = v121;
  *&retstr->tx = *&v157.tx;
  if (sizeCopy || v101.location || v140 != v101.length)
  {
    v155.origin = v142;
    v155.size = v141;
    objc_msgSend_frameForRange_inText_paragraphStyle_wrapWidth_outErasableFrame_(v84, v119, v143, v142.x, v120, v101.location, v101.length, v86, v87, &v155);
    x = v161.origin.x;
    y = v161.origin.y;
    width = v161.size.width;
    height = v161.size.height;
    selfCopy = selfCopy2;
    if (!CGRectIsNull(v161) && !CGRectIsNull(v155))
    {
      v130 = *&retstr->c;
      *&v156.a = *&retstr->a;
      *&v156.c = v130;
      *&v156.tx = *&retstr->tx;
      CGAffineTransformTranslate(&v157, &v156, x, y);
      v131 = *&v157.c;
      *&retstr->a = *&v157.a;
      *&retstr->c = v131;
      *&retstr->tx = *&v157.tx;
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      v14 = v132;
      v15 = v133;
      v16 = v134;
      v17 = v135;
      goto LABEL_45;
    }

    *&retstr->a = v152;
    *&retstr->c = v151;
    height = v138;
    width = v139;
    *&retstr->tx = v153;
    v15 = v136;
    v14 = v137;
    goto LABEL_44;
  }

  v15 = v158.origin.y;
  v14 = v158.origin.x;
  v17 = v158.size.height;
  v16 = v158.size.width;
  selfCopy = selfCopy2;
LABEL_45:

  v11 = height;
  v10 = width;
  v38 = v147;
  a6 = v148;
  v23 = v146;
LABEL_46:
  v162.origin.x = v14;
  v162.origin.y = v15;
  v162.size.width = v16;
  v162.size.height = v17;
  if (!CGRectIsNull(v162))
  {
    memset(&v157, 0, sizeof(v157));
    v124 = *&retstr->c;
    *&v156.a = *&retstr->a;
    *&v156.c = v124;
    *&v156.tx = *&retstr->tx;
    CGAffineTransformInvert(&v157, &v156);
    objc_msgSend_rootedDrawingRect(selfCopy, v125, v126, v127, v128);
    v156 = v157;
    v164 = CGRectApplyAffineTransform(v163, &v156);
    v14 = v164.origin.x;
    v15 = v164.origin.y;
    v16 = v164.size.width;
    v17 = v164.size.height;
  }

  if (a6)
  {
    a6->origin.x = v14;
    a6->origin.y = v15;
    a6->size.width = v16;
    a6->size.height = v17;
  }

  if (rectCopy3)
  {
    rectCopy3->width = v10;
    rectCopy3->height = v11;
  }

  return result;
}

- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block
{
  y = elements.y;
  point = elements.x;
  v67[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    objc_opt_class();
    v10 = objc_msgSend_parent(self, v6, v7, v8, v9);
    v11 = TSUDynamicCast();

    v16 = objc_msgSend_axisID(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_model(self, v17, v18, v19, v20);
    v26 = objc_msgSend_axisForID_(v21, v22, v23, v24, v25, v16);

    if (objc_msgSend_intValueForProperty_defaultValue_(v26, v27, v28, v29, v30, 1060, 0))
    {
      v33 = *(MEMORY[0x277CBF398] + 16);
      v66.origin = *MEMORY[0x277CBF398];
      v66.size = v33;
      v65 = *MEMORY[0x277CBF3A8];
      memset(&v64, 0, sizeof(v64));
      objc_msgSend_transformForRenderingOutElementSize_outClipRect_(self, v31, 0.0, v33.width, v32, &v65, &v66);
      if (!CGRectIsNull(v66))
      {
        v62 = v64;
        CGAffineTransformInvert(&v63, &v62);
        pointa = vaddq_f64(*&v63.tx, vmlaq_n_f64(vmulq_n_f64(*&v63.c, y), *&v63.a, point));
        TSURectWithSize();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        objc_msgSend_minHitSize(self, v42, v34, v36, v38);
        v68.origin.x = sub_276276FD0(v35, v37, v39, v41, v43);
        if (CGRectContainsPoint(v68, pointa))
        {
          v48 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v44, v45, v46, v47);
          v67[0] = v16;
          v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v50, v51, v52, v67, 1);
          v58 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v54, v55, v56, v57, v48, v53);

          blockCopy[2](blockCopy, v58, 0);
        }
      }
    }
  }
}

- (id)subselectionKnobPositionsForSelection:(id)selection
{
  v104 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selfCopy = self;
  v102.receiver = self;
  v102.super_class = TSCHChartAxisTitleLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v102 subselectionKnobPositionsForSelection:selectionCopy];
  v86 = v5;
  if (v5)
  {
    v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  }

  v87 = v10;
  objc_opt_class();
  v15 = objc_msgSend_parent(self, v11, v12, v13, v14);
  v16 = TSUDynamicCast();

  v85 = v16;
  v89 = objc_msgSend_axisID(v16, v17, v18, v19, v20);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = selectionCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v98, v103, 16);
  if (v25)
  {
    v30 = v25;
    v31 = *v99;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v99 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v98 + 1) + 8 * i);
        v34 = objc_msgSend_type(v33, v26, v27, v28, v29);
        if (objc_msgSend_isEqual_(@"text", v35, v36, v37, v38, v34))
        {
          v43 = objc_msgSend_name(v33, v39, v40, v41, v42);
          if (objc_msgSend_isEqual_(@"axisTitle", v44, v45, v46, v47, v43))
          {
            v52 = objc_msgSend_argumentAtIndex_(v33, v48, v49, v50, v51, 0);
            isEqual = objc_msgSend_isEqual_(v52, v53, v54, v55, v56, v89);

            if (!isEqual)
            {
              continue;
            }

            v58 = *(MEMORY[0x277CBF398] + 16);
            v96 = *MEMORY[0x277CBF398];
            v97 = v58;
            v59 = *MEMORY[0x277CBF3A8];
            v94 = 0u;
            v95 = v59;
            v92 = 0u;
            v93 = 0u;
            objc_msgSend_transformForRenderingOutElementSize_outClipRect_(selfCopy, v26, 0.0, *&v59, v29, &v95, &v96);
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v60, *&v96, *(&v96 + 1), *&v97, *(&v97 + 1), v95);
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v34 = objc_msgSend_array(MEMORY[0x277CBEB18], v69, v61, v63, v65);
            v91[0] = v92;
            v91[1] = v93;
            v91[2] = v94;
            objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v70, v62, v64, v66, v34, v91, v68);
            v75 = objc_msgSend_objectForKey_(v87, v71, v72, v73, v74, v33);
            v43 = objc_msgSend_arrayByAddingObjectsFromArray_(v34, v76, v77, v78, v79, v75);

            if (v43)
            {
              objc_msgSend_setObject_forKey_(v87, v80, v81, v82, v83, v43, v33);
            }
          }
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v27, v28, v29, &v98, v103, 16);
    }

    while (v30);
  }

  return v87;
}

- (id)subselectionHaloPositionsForSelections:(id)selections
{
  v104 = *MEMORY[0x277D85DE8];
  selectionsCopy = selections;
  selfCopy = self;
  v102.receiver = self;
  v102.super_class = TSCHChartAxisTitleLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v102 subselectionHaloPositionsForSelections:selectionsCopy];
  v86 = v5;
  if (v5)
  {
    v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
  }

  v87 = v10;
  objc_opt_class();
  v15 = objc_msgSend_parent(self, v11, v12, v13, v14);
  v16 = TSUDynamicCast();

  v85 = v16;
  v89 = objc_msgSend_axisID(v16, v17, v18, v19, v20);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = selectionsCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v98, v103, 16);
  if (v25)
  {
    v30 = v25;
    v31 = *v99;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v99 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v98 + 1) + 8 * i);
        v34 = objc_msgSend_type(v33, v26, v27, v28, v29);
        if (objc_msgSend_isEqual_(@"text", v35, v36, v37, v38, v34))
        {
          v43 = objc_msgSend_name(v33, v39, v40, v41, v42);
          if (objc_msgSend_isEqual_(@"axisTitle", v44, v45, v46, v47, v43))
          {
            v52 = objc_msgSend_argumentAtIndex_(v33, v48, v49, v50, v51, 0);
            isEqual = objc_msgSend_isEqual_(v52, v53, v54, v55, v56, v89);

            if (!isEqual)
            {
              continue;
            }

            v58 = *(MEMORY[0x277CBF398] + 16);
            v96 = *MEMORY[0x277CBF398];
            v97 = v58;
            v59 = *MEMORY[0x277CBF3A8];
            v94 = 0u;
            v95 = v59;
            v92 = 0u;
            v93 = 0u;
            objc_msgSend_transformForRenderingOutElementSize_outClipRect_(selfCopy, v26, 0.0, *&v59, v29, &v95, &v96);
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v60, *&v96, *(&v96 + 1), *&v97, *(&v97 + 1), v95);
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v34 = objc_msgSend_array(MEMORY[0x277CBEB18], v69, v61, v63, v65);
            v91[0] = v92;
            v91[1] = v93;
            v91[2] = v94;
            objc_msgSend_addTextSubselectionHalosToArray_rect_transform_(TSCHRenderUtilities, v70, v62, v64, v66, v34, v91, v68);
            v75 = objc_msgSend_objectForKey_(v87, v71, v72, v73, v74, v33);
            v43 = objc_msgSend_arrayByAddingObjectsFromArray_(v34, v76, v77, v78, v79, v75);

            if (v43)
            {
              objc_msgSend_setObject_forKey_(v87, v80, v81, v82, v83, v43, v33);
            }
          }
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v27, v28, v29, &v98, v103, 16);
    }

    while (v30);
  }

  return v87;
}

- (double)titlePaddingForAxis:(id)axis
{
  v7 = objc_msgSend_intValueForProperty_defaultValue_(axis, a2, v3, v4, v5, 1034, 0);
  v12 = objc_msgSend_chartInfo(self, v8, v9, v10, v11);
  v17 = objc_msgSend_paragraphStyleAtIndex_(v12, v13, v14, v15, v16, v7);

  v22 = objc_msgSend_sharedText(TSCHText, v18, v19, v20, v21);
  objc_msgSend_measureText_paragraphStyle_(v22, v23, v24, v25, v26, @"X", v17);
  v28 = v27 * 0.5;

  return v28;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection
{
  v69 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selfCopy = self;
  v67.receiver = self;
  v67.super_class = TSCHChartAxisTitleLayoutItem;
  v5 = [(TSCHChartLayoutItem *)&v67 newDragAndDropHighlightPathForSelection:selectionCopy];
  if (objc_msgSend_count(selectionCopy, v6, v7, v8, v9))
  {
    if (v5)
    {
      MutableCopy = CGPathCreateMutableCopy(v5);
      CGPathRelease(v5);
      Mutable = MutableCopy;
    }

    else
    {
      Mutable = CGPathCreateMutable();
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v59 = selectionCopy;
    obj = selectionCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v12, v13, v14, &v63, v68, 16);
    if (v15)
    {
      v20 = v15;
      v21 = *v64;
      do
      {
        v22 = 0;
        do
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v63 + 1) + 8 * v22);
          v24 = objc_msgSend_axisTitleType(TSCHSelectionPathType, v16, v17, v18, v19, v59);
          v29 = objc_msgSend_pathType(v23, v25, v26, v27, v28);
          if (objc_msgSend_isEqual_(v24, v30, v31, v32, v33, v29) && objc_msgSend_argumentsCount(v23, v34, v35, v36, v37))
          {
            v42 = objc_msgSend_axisLayoutItem(selfCopy, v38, v39, v40, v41);
            v47 = objc_msgSend_axisID(v42, v43, v44, v45, v46);
            v52 = objc_msgSend_argumentAtIndex_(v23, v48, v49, v50, v51, 0);
            isEqual = objc_msgSend_isEqual_(v47, v53, v54, v55, v56, v52);

            if (isEqual)
            {
              objc_msgSend_rootedDrawingRect(selfCopy, v16, v17, v18, v19);
              CGPathAddRectSafe();
            }
          }

          else
          {
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, &v63, v68, 16);
      }

      while (v20);
    }

    selectionCopy = v59;
    v5 = Mutable;
  }

  return v5;
}

- (CGSize)chartBodySize
{
  width = self->_chartBodySize.width;
  height = self->_chartBodySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end