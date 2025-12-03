@interface TSACaptionLayout
- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild;
- (BOOL)isInGroup;
- (BOOL)p_textIsCompletelyOverflowed;
- (BOOL)participatesInLastRowHeight;
- (BOOL)shouldValidate;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)offsetForPlacement:(id)placement;
- (CGPoint)p_pointInFrame:(CGRect)frame forAnchorLocation:(int64_t)location;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGSize)p_sizeForProposedSize:(CGSize)size zeroSize:(CGSize)zeroSize;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_captionInfo;
- (id)p_captionLayout;
- (id)p_parentInfo;
- (id)p_parentLayout;
- (id)p_titleInfo;
- (id)p_titleLayout;
- (id)pathSource;
- (id)reliedOnLayouts;
- (id)reliedOnLayoutsForTextLayout:(id)layout;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (void)invalidate;
- (void)invalidatePath;
- (void)processChangedProperty:(int)property;
- (void)setParent:(id)parent;
- (void)validate;
@end

@implementation TSACaptionLayout

- (void)setParent:(id)parent
{
  parentCopy = parent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (parentCopy && (isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSACaptionLayout setParent:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionLayout.m", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 37, 0, "Unexpected parent layout for caption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17.receiver = self;
  v17.super_class = TSACaptionLayout;
  [(TSACaptionLayout *)&v17 setParent:parentCopy];
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = TSACaptionLayout;
  return [(TSACaptionLayout *)&v4 autosizeFlagsForTextLayout:layout]| 0x40;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  layoutCopy = layout;
  v10 = objc_msgSend_p_parentLayout(self, v7, v8, v9);
  objc_msgSend_frameForCaptionPositioning(v10, v11, v12, v13);
  Width = CGRectGetWidth(v97);
  v18 = objc_msgSend_storage(layoutCopy, v15, v16, v17);

  v20 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v18, v19, 0, 0);

  v24 = 0.0;
  v25 = 0.0;
  if (v20)
  {
    objc_msgSend_floatValueForProperty_(v20, v21, 17, v23);
    v25 = v26 * 12.0;
  }

  v27 = objc_msgSend_shapeInfo(self, v21, v22, v23);
  v31 = objc_msgSend_stroke(v27, v28, v29, v30);

  if (v31 && objc_msgSend_shouldRender(v31, v32, v33, v34))
  {
    objc_msgSend_width(v31, v32, v33, v34);
    v24 = v35;
  }

  v36 = objc_msgSend_info(self, v32, v33, v34);
  v40 = objc_msgSend_parentInfo(v36, v37, v38, v39);
  if (objc_msgSend_isAttachedToBodyText(v40, v41, v42, v43))
  {
    v47 = objc_msgSend_isInGroup(self, v44, v45, v46) ^ 1;
  }

  else
  {
    v47 = 0;
  }

  v51 = objc_msgSend_layoutController(self, v48, v49, v50);
  v55 = objc_msgSend_canvas(v51, v52, v53, v54);
  v59 = objc_msgSend_delegate(v55, v56, v57, v58);
  v60 = objc_opt_respondsToSelector();

  if ((v60 & 1) != 0 && v47)
  {
    v64 = objc_msgSend_layoutController(self, v61, v62, v63);
    v68 = objc_msgSend_canvas(v64, v65, v66, v67);
    v72 = objc_msgSend_delegate(v68, v69, v70, v71);
    v76 = objc_msgSend_layoutController(self, v73, v74, v75);
    v80 = objc_msgSend_canvas(v76, v77, v78, v79);
    objc_msgSend_captionWidthForCanvas_(v72, v81, v80, v82);
    Width = v83;
  }

  else
  {
    v84 = fmax(v25, 72.0);
    if (v84 >= Width)
    {
      Width = v84;
    }
  }

  objc_msgSend_p_sizeForProposedSize_zeroSize_(self, v61, v62, v63, fmax(Width - v24, 0.0), height, 0.001, 0.001);
  TSURectWithSize();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v93 = v86;
  v94 = v88;
  v95 = v90;
  v96 = v92;
  result.size.height = v96;
  result.size.width = v95;
  result.origin.y = v94;
  result.origin.x = v93;
  return result;
}

- (BOOL)isInGroup
{
  v4 = objc_msgSend_parent(self, a2, v2, v3);
  v8 = objc_msgSend_parent(v4, v5, v6, v7);

  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    if (v9)
    {
      break;
    }

    v13 = objc_msgSend_parent(v8, v10, v11, v12);

    v8 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)shouldValidate
{
  v4 = objc_msgSend_layoutController(self, a2, v2, v3);
  v5 = v4 != 0;

  return v5;
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v15.receiver = self;
  v15.super_class = TSACaptionLayout;
  layoutsForProvidingGuidesForChildLayouts = [(TSACaptionLayout *)&v15 layoutsForProvidingGuidesForChildLayouts];
  v7 = objc_msgSend_mutableCopy(layoutsForProvidingGuidesForChildLayouts, v4, v5, v6);

  v11 = objc_msgSend_parent(self, v8, v9, v10);
  objc_msgSend_removeObject_(v7, v12, v11, v13);

  return v7;
}

- (id)reliedOnLayouts
{
  v12.receiver = self;
  v12.super_class = TSACaptionLayout;
  reliedOnLayouts = [(TSACaptionLayout *)&v12 reliedOnLayouts];
  if (!reliedOnLayouts)
  {
    reliedOnLayouts = objc_msgSend_set(MEMORY[0x277CBEB98], v3, v4, v5);
  }

  v9 = objc_msgSend_p_parentLayout(self, v3, v4, v5);
  if (v9)
  {
    v10 = objc_msgSend_setByAddingObject_(reliedOnLayouts, v7, v9, v8);

    reliedOnLayouts = v10;
  }

  return reliedOnLayouts;
}

- (id)dependentLayouts
{
  v20.receiver = self;
  v20.super_class = TSACaptionLayout;
  dependentLayouts = [(TSACaptionLayout *)&v20 dependentLayouts];
  v7 = objc_msgSend_info(self, v4, v5, v6);
  v11 = objc_msgSend_childInfoKind(v7, v8, v9, v10);

  if (v11 == 2)
  {
    v17 = objc_msgSend_p_captionLayout(self, v12, v13, v14);
    if (v17)
    {
      v18 = objc_msgSend_arrayByAddingObject_(dependentLayouts, v15, v17, v16);

      dependentLayouts = v18;
    }
  }

  return dependentLayouts;
}

- (id)reliedOnLayoutsForTextLayout:(id)layout
{
  v5 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, layout, v3);
  v12 = objc_msgSend_p_parentLayout(self, v6, v7, v8);
  if (v12)
  {
    v13 = objc_msgSend_setByAddingObject_(v5, v9, v12, v11);

    v5 = v13;
  }

  v14 = objc_msgSend_info(self, v9, v10, v11);
  v18 = objc_msgSend_childInfoKind(v14, v15, v16, v17);

  if (v18 == 1)
  {
    v24 = objc_msgSend_p_titleLayout(self, v19, v20, v21);
    if (v24)
    {
      v25 = objc_msgSend_setByAddingObject_(v5, v22, v24, v23);

      v5 = v25;
    }
  }

  return v5;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  layoutCopy = layout;
  objc_msgSend_p_sizeForProposedSize_zeroSize_(self, v7, v8, v9, 1.79769313e308, 16000.0, v4, v5);
  v11 = v10;
  objc_msgSend_adjustedInsetsForTarget_(self, v12, layoutCopy, v13);
  v15 = v14;

  result = v11 - v15;
  if (v11 - v15 < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (id)computeLayoutGeometry
{
  if (objc_msgSend_p_textIsCompletelyOverflowed(self, a2, v2, v3))
  {
    v8 = 0.001;
    v9 = 0.001;
  }

  else
  {
    v151.receiver = self;
    v151.super_class = TSACaptionLayout;
    computeLayoutGeometry = [(TSACaptionLayout *)&v151 computeLayoutGeometry];
    objc_msgSend_size(computeLayoutGeometry, v11, v12, v13);
    v8 = v14;
    v9 = v15;
  }

  v16 = objc_msgSend_p_parentLayout(self, v5, v6, v7);
  v20 = v16;
  if (!v16 || objc_msgSend_invalidGeometry(v16, v17, v18, v19))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSACaptionLayout computeLayoutGeometry]", v19);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionLayout.m", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 194, 0, "The parent must have a valid geometry before computing geometry for a child title or caption.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v31 = objc_msgSend_geometry(v20, v17, v21, v19);
  objc_msgSend_frameForCaptionPositioning(v20, v32, v33, v34);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v46 = objc_msgSend_info(self, v43, v44, v45);
  v50 = objc_msgSend_placement(v46, v47, v48, v49);

  v54 = objc_msgSend_drawableAnchorLocation(v50, v51, v52, v53);
  objc_msgSend_p_pointInFrame_forAnchorLocation_(self, v55, v54, v56, v36, v38, v40, v42);
  TSURectWithSize();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v68 = objc_msgSend_captionAnchorLocation(v50, v65, v66, v67);
  objc_msgSend_p_pointInFrame_forAnchorLocation_(self, v69, v68, v70, v58, v60, v62, v64);
  if (v31)
  {
    objc_msgSend_transform(v31, v71, v72, v73);
  }

  TSUAddPoints();
  objc_msgSend_offsetForPlacement_(self, v74, v50, v75);
  TSUAddPoints();
  TSUSubtractPoints();
  v77 = v76;
  v79 = v78;
  v83 = objc_msgSend_p_parentInfo(self, v80, v81, v82);
  v87 = objc_msgSend_geometry(v83, v84, v85, v86);

  v91 = objc_msgSend_horizontalFlip(v87, v88, v89, v90);
  v95 = objc_msgSend_verticalFlip(v87, v92, v93, v94);
  objc_opt_class();
  v99 = objc_msgSend_p_parentInfo(self, v96, v97, v98);
  v100 = TSUDynamicCast();

  if (v100 && objc_msgSend_isMasked(v100, v101, v102, v103))
  {
    v104 = objc_msgSend_maskInfo(v100, v101, v102, v103);
    v108 = objc_msgSend_geometry(v104, v105, v106, v107);

    v91 ^= objc_msgSend_horizontalFlip(v108, v109, v110, v111);
    v95 ^= objc_msgSend_verticalFlip(v108, v112, v113, v114);
  }

  if (v31)
  {
    objc_msgSend_transform(v31, v101, v102, v103);
  }

  else
  {
    memset(&v150, 0, sizeof(v150));
  }

  TSUTransformAngleInRadians();
  memset(&v150, 0, sizeof(v150));
  CGAffineTransformMakeRotation(&v150, -v115);
  if ((v91 | v95))
  {
    v116 = 1.0;
    if (v91)
    {
      v117 = -1.0;
    }

    else
    {
      v117 = 1.0;
    }

    memset(&v149, 0, sizeof(v149));
    if (v95)
    {
      v116 = -1.0;
    }

    v118 = *(MEMORY[0x277CBF2C0] + 16);
    *&v148.a = *MEMORY[0x277CBF2C0];
    *&v148.c = v118;
    *&v148.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformScale(&v149, &v148, v117, v116);
    t1 = v150;
    v146 = v149;
    CGAffineTransformConcat(&v148, &t1, &v146);
    v150 = v148;
  }

  v148 = v150;
  memset(&v149, 0, sizeof(v149));
  CGAffineTransformTranslate(&v149, &v148, v77, v79);
  v119 = objc_alloc(MEMORY[0x277D80300]);
  v148 = v149;
  v125 = objc_msgSend_initWithSize_transform_(v119, v120, &v148, v121, v8, v9);
  layoutPathSource = self->_layoutPathSource;
  if (!layoutPathSource)
  {
    v127 = objc_msgSend_shapeInfo(self, v122, v123, v124);
    v131 = objc_msgSend_pathSource(v127, v128, v129, v130);
    v135 = objc_msgSend_copy(v131, v132, v133, v134);
    v136 = self->_layoutPathSource;
    self->_layoutPathSource = v135;

    layoutPathSource = self->_layoutPathSource;
  }

  objc_msgSend_naturalSize(layoutPathSource, v122, v123, v124);
  if (v141 != v8 || v140 != v9)
  {
    objc_msgSend_scaleToNaturalSize_(self->_layoutPathSource, v137, v138, v139, v8, v9);
    objc_msgSend_invalidatePathBounds(self, v142, v143, v144);
  }

  return v125;
}

- (id)pathSource
{
  if (self->_layoutPathSource && !objc_msgSend_layoutState(self, a2, v2, v3))
  {
    pathSource = self->_layoutPathSource;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSACaptionLayout;
    pathSource = [(TSACaptionLayout *)&v7 pathSource];
  }

  return pathSource;
}

- (CGAffineTransform)computeLayoutTransform
{
  v3 = MEMORY[0x277CBF2C0];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (void)invalidate
{
  objc_msgSend_invalidateSize(self, a2, v2, v3);
  *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D80468]) |= 1u;
  v5.receiver = self;
  v5.super_class = TSACaptionLayout;
  [(TSACaptionLayout *)&v5 invalidate];
}

- (void)invalidatePath
{
  layoutPathSource = self->_layoutPathSource;
  self->_layoutPathSource = 0;

  v4.receiver = self;
  v4.super_class = TSACaptionLayout;
  [(TSACaptionLayout *)&v4 invalidatePath];
}

- (void)validate
{
  v5 = objc_msgSend_p_parentLayout(self, a2, v2, v3);
  v9 = v5;
  if (!v5 || objc_msgSend_invalidGeometry(v5, v6, v7, v8))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSACaptionLayout validate]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionLayout.m", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 278, 0, "The parent drawable needs a valid geometry before the child title or caption can be validated.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19.receiver = self;
  v19.super_class = TSACaptionLayout;
  [(TSACaptionLayout *)&v19 validate];
}

- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild
{
  objc_opt_class();
  v6 = objc_msgSend_parent(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  v13.receiver = self;
  v13.super_class = TSACaptionLayout;
  v11 = [(TSACaptionLayout *)&v13 isDynamicallyChangingAvailableSpaceForContainedChild]|| objc_msgSend_layoutState(v7, v8, v9, v10) == 3;

  return v11;
}

- (void)processChangedProperty:(int)property
{
  v4 = *&property;
  if (property == 548)
  {
    objc_msgSend_invalidateFrame(self, a2, *&property, v3);
    v9 = objc_msgSend_info(self, v6, v7, v8);
    v13 = objc_msgSend_childInfoKind(v9, v10, v11, v12);

    if (v13 == 2)
    {
      v17 = objc_msgSend_p_captionLayout(self, v14, v15, v16);
      objc_msgSend_invalidateFrame(v17, v18, v19, v20);
    }
  }

  v21.receiver = self;
  v21.super_class = TSACaptionLayout;
  [(TSACaptionLayout *)&v21 processChangedProperty:v4];
}

- (BOOL)participatesInLastRowHeight
{
  v4 = objc_msgSend_info(self, a2, v2, v3);
  v8 = objc_msgSend_placement(v4, v5, v6, v7);
  v12 = objc_msgSend_drawableAnchorLocation(v8, v9, v10, v11) == 7;

  return v12;
}

- (id)p_parentLayout
{
  objc_opt_class();
  v6 = objc_msgSend_parent(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (CGPoint)p_pointInFrame:(CGRect)frame forAnchorLocation:(int64_t)location
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (location > 3)
  {
    if (location > 5)
    {
      if (location == 6)
      {
        v19 = y;
        MinX = CGRectGetMinX(frame);
        goto LABEL_22;
      }

      if (location == 7)
      {
        v21 = y;
        MinX = CGRectGetMidX(frame);
        goto LABEL_22;
      }

      if (location != 8)
      {
        goto LABEL_24;
      }

LABEL_14:
      v14 = y;
      MinX = CGRectGetMaxX(frame);
LABEL_22:
      v9 = MinX;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      MaxY = CGRectGetMaxY(v26);
      goto LABEL_23;
    }

    if (location != 4)
    {
      goto LABEL_14;
    }

    v20 = y;
    MidX = CGRectGetMidX(frame);
    goto LABEL_20;
  }

  if (location > 1)
  {
    if (location != 2)
    {
      v12 = y;
      MidX = CGRectGetMinX(frame);
LABEL_20:
      v9 = MidX;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MaxY = CGRectGetMidY(v25);
      goto LABEL_23;
    }

    v17 = y;
    MaxX = CGRectGetMaxX(frame);
LABEL_17:
    v9 = MaxX;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MaxY = CGRectGetMinY(v24);
LABEL_23:
    v8 = MaxY;
    goto LABEL_24;
  }

  if (!location)
  {
    v16 = y;
    MaxX = CGRectGetMinX(frame);
    goto LABEL_17;
  }

  if (location == 1)
  {
    v10 = y;
    MaxX = CGRectGetMidX(frame);
    goto LABEL_17;
  }

LABEL_24:
  v22 = v9;
  result.y = v8;
  result.x = v22;
  return result;
}

- (CGPoint)offsetForPlacement:(id)placement
{
  placementCopy = placement;
  v6 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  IsCompletelyOverflowed = objc_msgSend_p_textIsCompletelyOverflowed(self, v7, v8, v9);
  v14 = objc_msgSend_info(self, v11, v12, v13);
  v18 = objc_msgSend_childInfoKind(v14, v15, v16, v17);

  if (v18 == 2)
  {
    if ((IsCompletelyOverflowed & 1) == 0)
    {
      v22 = objc_msgSend_captionAnchorLocation(placementCopy, v19, v20, v21);
      if (v22 < 9 && ((0x1C7u >> v22) & 1) != 0)
      {
        v5 = dbl_27611AB18[v22];
        v6 = 0.0;
      }
    }
  }

  else
  {
    v23 = objc_msgSend_p_titleInfo(self, v19, v20, v21);
    v27 = v23;
    if (v23 && (objc_msgSend_placement(v23, v24, v25, v26), v28 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_drawableAnchorLocation(v28, v29, v30, v31), v28, v32 == 7))
    {
      v36 = objc_msgSend_p_titleLayout(self, v33, v34, v35);
      if ((objc_msgSend_p_textIsCompletelyOverflowed(v36, v37, v38, v39) & 1) == 0)
      {
        if (IsCompletelyOverflowed)
        {
          v43 = 4.0;
        }

        else
        {
          v43 = 12.0;
        }

        objc_msgSend_frameInParent(v36, v40, v41, v42);
        v5 = v43 + CGRectGetHeight(v47);
        v6 = 0.0;
      }
    }

    else if (!IsCompletelyOverflowed)
    {
      v5 = 8.0;
      v6 = 0.0;
    }
  }

  v44 = v6;
  v45 = v5;
  result.y = v45;
  result.x = v44;
  return result;
}

- (id)p_titleInfo
{
  objc_opt_class();
  v6 = objc_msgSend_p_parentInfo(self, v3, v4, v5);
  v10 = objc_msgSend_title(v6, v7, v8, v9);
  v11 = TSUDynamicCast();

  return v11;
}

- (id)p_titleLayout
{
  v5 = objc_msgSend_p_titleInfo(self, a2, v2, v3);
  if (v5)
  {
    objc_opt_class();
    v9 = objc_msgSend_layoutController(self, v6, v7, v8);
    v13 = objc_msgSend_parent(self, v10, v11, v12);
    v15 = objc_msgSend_layoutForInfo_childOfLayout_(v9, v14, v5, v13);
    v16 = TSUDynamicCast();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)p_captionInfo
{
  objc_opt_class();
  v6 = objc_msgSend_p_parentInfo(self, v3, v4, v5);
  v10 = objc_msgSend_caption(v6, v7, v8, v9);
  v11 = TSUDynamicCast();

  return v11;
}

- (id)p_captionLayout
{
  v5 = objc_msgSend_p_captionInfo(self, a2, v2, v3);
  if (v5)
  {
    objc_opt_class();
    v9 = objc_msgSend_layoutController(self, v6, v7, v8);
    v13 = objc_msgSend_parent(self, v10, v11, v12);
    v15 = objc_msgSend_layoutForInfo_childOfLayout_(v9, v14, v5, v13);
    v16 = TSUDynamicCast();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)p_parentInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v10 = objc_msgSend_parentInfo(v6, v7, v8, v9);
  v11 = TSUCheckedDynamicCast();

  return v11;
}

- (CGSize)p_sizeForProposedSize:(CGSize)size zeroSize:(CGSize)zeroSize
{
  height = zeroSize.height;
  width = zeroSize.width;
  v8 = size.height;
  v9 = size.width;
  v11 = objc_msgSend_p_parentLayout(self, a2, v4, v5);
  objc_opt_class();
  v15 = objc_msgSend_parent(v11, v12, v13, v14);
  v16 = TSUDynamicCast();

  if (v16)
  {
    objc_msgSend_maximumFrameSizeForChild_(v16, v17, v11, v18);
    v21 = v20;
    if (v20 != 1.79769313e308 || v19 != 1.79769313e308)
    {
      v23 = v19;
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = sub_27610BEAC;
      v88[3] = &unk_27A6B0F78;
      v88[4] = v11;
      v24 = MEMORY[0x277C95D60](v88);
      v28 = v24;
      if (v9 != 1.79769313e308 && v9 + -0.01 > v21 && !(*(v24 + 16))(v24, v9 + -0.01))
      {
        goto LABEL_29;
      }

      v29 = objc_msgSend_info(self, v25, v26, v27);
      v33 = objc_msgSend_childInfoKind(v29, v30, v31, v32);

      v37 = objc_msgSend_p_titleInfo(self, v34, v35, v36);
      v41 = objc_msgSend_placement(v37, v38, v39, v40);
      v45 = objc_msgSend_drawableAnchorLocation(v41, v42, v43, v44);

      if (v33 == 1 && v45 == 1)
      {
        v49 = v23 + -8.0;
        if (v49 < 0.0)
        {
          goto LABEL_29;
        }

        v53 = objc_msgSend_p_titleLayout(self, v46, v47, v48);
        if (!v53)
        {
          v54 = MEMORY[0x277D81150];
          v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSACaptionLayout p_sizeForProposedSize:zeroSize:]", v52);
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionLayout.m", v57);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 560, 0, "Missing title layout.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
        }

        objc_msgSend_alignmentFrameInParent(v53, v50, v51, v52);
        v23 = v49 - CGRectGetHeight(v90);

        if (v23 < 0.0)
        {
          goto LABEL_29;
        }
      }

      objc_msgSend_alignmentFrame(v11, v46, v47, v48);
      MinY = CGRectGetMinY(v91);
      objc_msgSend_frameForCaptionPositioning(v11, v64, v65, v66);
      v70 = v23 - (CGRectGetMaxY(v92) - MinY);
      if (v70 < 0.0)
      {
        goto LABEL_29;
      }

      v71 = v70 + -8.0;
      if (v33 == 1 && v45 == 7)
      {
        if (v71 < 0.0)
        {
LABEL_29:

          v8 = height;
          v9 = width;
          goto LABEL_30;
        }

        v75 = objc_msgSend_p_titleLayout(self, v67, v68, v69);
        if (!v75)
        {
          v76 = MEMORY[0x277D81150];
          v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSACaptionLayout p_sizeForProposedSize:zeroSize:]", v74);
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSACaptionLayout.m", v79);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v77, v80, 597, 0, "Missing title layout.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84);
        }

        objc_msgSend_alignmentFrameInParent(v75, v72, v73, v74);
        v85 = v71 - CGRectGetHeight(v93);
        if (v85 < 0.0)
        {

          goto LABEL_29;
        }

        v71 = v85 + -4.0;
      }

      if (v71 >= 0.0)
      {
        if (v8 >= v71)
        {
          height = v71;
        }

        else
        {
          height = v8;
        }

        width = v9;
      }

      goto LABEL_29;
    }
  }

LABEL_30:

  v86 = v9;
  v87 = v8;
  result.height = v87;
  result.width = v86;
  return result;
}

- (BOOL)p_textIsCompletelyOverflowed
{
  v4 = objc_msgSend_containedLayout(self, a2, v2, v3);
  objc_msgSend_frame(v4, v5, v6, v7);
  Height = CGRectGetHeight(v11);
  v9 = fabs(Height) < 0.00999999978 || Height == 0.0;

  return v9;
}

@end