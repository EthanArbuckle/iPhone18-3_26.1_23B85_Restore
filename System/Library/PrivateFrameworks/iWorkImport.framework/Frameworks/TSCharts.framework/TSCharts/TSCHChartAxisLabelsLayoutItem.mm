@interface TSCHChartAxisLabelsLayoutItem
- (BOOL)p_circularStridingLabelAtIndex:(unint64_t)index inLayoutSize:(CGSize)size intersectsLabelAtIndex:(unint64_t)atIndex extraTransform:(CGAffineTransform *)transform;
- (CGAffineTransform)i_localTransformForLabel:(SEL)label range:(unint64_t)range inLayoutSize:(_NSRange *)size outElementSize:(CGSize)elementSize outClipRect:(CGSize *)rect usingString:(CGRect *)string stride:(id)stride useAngle:(unint64_t *)self0;
- (CGAffineTransform)p_localTransformForAxisLabelWithInfo:(SEL)info;
- (CGAffineTransform)p_localTransformForCartesianAxisLabelWithInfo:(SEL)info;
- (CGAffineTransform)p_localTransformForLabel:(SEL)label range:(unint64_t)range inLayoutSize:(_NSRange *)size outElementSize:(CGSize)elementSize outClipRect:(CGSize *)rect usingString:(CGRect *)string useAngle:(id)angle;
- (CGAffineTransform)p_localTransformForPolarAngleAxisLabelWithInfo:(SEL)info;
- (CGAffineTransform)p_localTransformForPolarAxisLabelWithInfo:(SEL)info;
- (CGAffineTransform)p_localTransformForPolarRadiusAxisLabelWithInfo:(SEL)info;
- (CGAffineTransform)p_rootedTransformFromLocalTransform:(SEL)transform;
- (CGAffineTransform)p_transformForLabelWithPaddingPerSide:(SEL)side outwardOrigin:(double)origin outwardDirection:(CGPoint)direction boundaryPosition:(CGPoint)position boundaryNormal:(CGPoint)normal alignWithMaxSizeAtClosestMidpoint:(CGPoint)midpoint anchorMaxSizeAtClosestMidpoint:(BOOL)closestMidpoint info:(BOOL)self0;
- (CGAffineTransform)p_transformWithOrigin:(SEL)origin verticalDirection:(CGPoint)direction;
- (CGAffineTransform)transformForRenderingLabel:(SEL)label outElementSize:(unint64_t)size outClipRect:(CGSize *)rect;
- (CGAffineTransform)transformForRenderingLabel:(SEL)label range:(unint64_t)range outElementSize:(_NSRange)size outClipRect:(CGSize *)rect;
- (CGAffineTransform)transformForRenderingLabel:(SEL)label usingString:(unint64_t)string outElementSize:(id)size outClipRect:(CGSize *)rect useAngle:(CGRect *)angle;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection;
- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value;
- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees;
- (CGPoint)p_pointWithLowerYOfPoint:(CGPoint)result andPoint:(CGPoint)point whenTransformedBy:(CGAffineTransform *)by;
- (CGPoint)p_relativeAnchorMidpointForLabelGeometry:(id)geometry;
- (CGPoint)p_relativeAnchorPointForLabelGeometry:(id)geometry useMidpoints:(BOOL)midpoints;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGRect)layoutSpaceRectForAllLabels;
- (CGRect)p_rectOfCircularStridingLabelAtIndex:(unint64_t)index inLayoutSize:(CGSize)size extraTransform:(CGAffineTransform *)transform;
- (CGSize)calcMinSize;
- (CGSize)maxLabelSizeInPoints;
- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index;
- (id)axisLayoutItem;
- (id)i_axisFromLayoutItem;
- (id)labelStringForAxis:(id)axis index:(unint64_t)index;
- (id)layoutSpaceHalosForAllLabels;
- (id)layoutSpaceKnobsForAllLabels;
- (id)p_axis;
- (id)p_chartInfoFromLayoutItem;
- (id)p_chartModelFromLayoutItem;
- (id)p_overrideLabelStringForHitTestingEmptyLabel;
- (id)selectionPathLabelType;
- (int64_t)p_labelBaselineDirectionRelativeToSpoke;
- (int64_t)p_smallestSecondValueLabelIndex:(int64_t)index start:(int64_t)start end:(int64_t)end inLayoutSize:(CGSize)size paragraphStyle:(id)style isTop:(BOOL)top;
- (unint64_t)numberOfLabelsForAxis:(id)axis;
- (unint64_t)p_computeAutoStrideInLayoutSize:(CGSize)size;
- (unint64_t)p_computeCircularAutoStrideForInvariantAngleLabelsInLayoutSize:(CGSize)size;
- (unint64_t)p_computeCircularAutoStrideForLabelDimensionPerpendicularOnSpoke:(double)spoke inLayoutSize:(CGSize)size;
- (unint64_t)p_computeCircularAutoStrideInLayoutSize:(CGSize)size;
- (unint64_t)p_computeLinearAutoStrideInLayoutSize:(CGSize)size;
- (unint64_t)p_numberOfAxisLabels;
- (unint64_t)selectionPathLabelIndexForIndex:(unint64_t)index axis:(id)axis;
- (unint64_t)snappedLabelAngleInDegree:(float)degree;
- (unint64_t)stride;
- (unint64_t)strideInLayoutSize:(CGSize)size;
- (void)clearAll;
- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block;
- (void)p_calcMaxLabelSize;
- (void)p_enumerateAxisLabelRectsWithBlock:(id)block;
- (void)p_rect:(CGRect *)p_rect andTransform:(CGAffineTransform *)transform inLayoutSize:(CGSize)size forIndex:(unint64_t)index paragraphStyle:(id)style;
- (void)setLayoutSize:(CGSize)size;
@end

@implementation TSCHChartAxisLabelsLayoutItem

- (CGSize)calcMinSize
{
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = objc_msgSend_parent(self, a2, v2, v3, v4);
  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);

  if (objc_msgSend_showLabelsForAxis_(self, v24, v25, v26, v27, v23))
  {
    v31 = objc_msgSend_floatValueForProperty_defaultValue_(v23, v28, 0.0, v29, v30, 1035);
    v33 = v32 * 0.0174532925;
    *&v33 = v33;
    v35 = sub_27628C490(v31, v34, v33, 0.0174532943, 0.0);
    memset(&v74, 0, sizeof(v74));
    CGAffineTransformMakeRotation(&v74, v35);
    v40 = objc_msgSend_intValueForProperty_defaultValue_(v23, v36, v37, v38, v39, 1034, 0);
    v45 = objc_msgSend_chartInfo(self, v41, v42, v43, v44);
    v50 = objc_msgSend_paragraphStyleAtIndex_(v45, v46, v47, v48, v49, v40);

    v55 = objc_msgSend_sharedText(TSCHText, v51, v52, v53, v54);
    v60 = objc_msgSend_numberOfLabelsForAxis_(self, v56, v57, v58, v59, v23);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_2762AD980;
    v69[3] = &unk_27A6B7598;
    v69[4] = self;
    v70 = v23;
    v71 = v55;
    v72 = v50;
    v73 = v74;
    v61 = v50;
    v62 = v55;
    objc_msgSend_maxSizeWithCount_initialSize_sizeGeneratorBlock_(TSCHRenderUtilities, v63, v7, v6, v64, v60, v69);
    v7 = v65;
    v6 = v66;
  }

  v67 = v7;
  v68 = v6;
  result.height = v68;
  result.width = v67;
  return result;
}

- (void)setLayoutSize:(CGSize)size
{
  self->_stride = 0;
  v3.receiver = self;
  v3.super_class = TSCHChartAxisLabelsLayoutItem;
  [(TSCHChartLayoutItem *)&v3 setLayoutSize:size.width, size.height];
}

- (void)clearAll
{
  self->_stride = 0;
  v2.receiver = self;
  v2.super_class = TSCHChartAxisLabelsLayoutItem;
  [(TSCHChartLayoutItem *)&v2 clearAll];
}

- (CGRect)calcDrawingRect
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);
  v11 = objc_msgSend_model(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_axisID(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_axisForID_(v11, v17, v18, v19, v20, v16);
  if (objc_msgSend_showLabelsForAxis_(self, v22, v23, v24, v25, v21))
  {
    v30 = objc_msgSend_intValueForProperty_defaultValue_(v21, v26, v27, v28, v29, 1034, 0);
    v35 = objc_msgSend_chartInfo(v6, v31, v32, v33, v34);
    v40 = objc_msgSend_paragraphStyleAtIndex_(v35, v36, v37, v38, v39, v30);

    objc_opt_class();
    v45 = objc_msgSend_boxedValueForProperty_(v40, v41, v42, v43, v44, 40);
    v46 = TSUDynamicCast();

    objc_msgSend_rootedLayoutRect(self, v47, v48, v49, v50);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    if (objc_msgSend_type(v16, v59, v51, v53, v55) == 6)
    {
      objc_msgSend_p_calcMaxLabelSize(self, v60, v61, v62, v63);
      objc_msgSend_layoutSpaceRectForAllLabels(self, v64, v65, v66, v67);
      x = v146.origin.x;
      y = v146.origin.y;
      width = v146.size.width;
      height = v146.size.height;
      if (!CGRectIsNull(v146))
      {
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v72, v73, v74, v75, v46))
        {
          objc_msgSend_shadowBoundsForRect_(v46, v102, x, y, width, height);
          v164.origin.x = v103;
          v164.origin.y = v104;
          v164.size.width = v105;
          v164.size.height = v106;
          v149.origin.x = x;
          v149.origin.y = y;
          v149.size.width = width;
          v149.size.height = height;
          v150 = CGRectUnion(v149, v164);
          x = v150.origin.x;
          y = v150.origin.y;
          width = v150.size.width;
          height = v150.size.height;
        }

        v151.origin.x = v52;
        v151.origin.y = v54;
        v151.size.width = v56;
        v151.size.height = v58;
        v165.origin.x = x;
        v165.origin.y = y;
        v165.size.width = width;
        v165.size.height = height;
        CGRectUnion(v151, v165);
      }
    }

    else
    {
      v138 = v52;
      v139 = v54;
      v136 = *(MEMORY[0x277CBF398] + 16);
      v145.origin = *MEMORY[0x277CBF398];
      origin = v145.origin;
      v145.size = v136;
      v144 = *MEMORY[0x277CBF3A8];
      v135 = v144;
      memset(&v143[2], 0, 48);
      objc_msgSend_transformForRenderingLabel_outElementSize_outClipRect_(self, v60, 0.0, v136.width, v63, 0, &v144, &v145);
      v143[0] = origin;
      v143[1] = v136;
      v142 = v135;
      v84 = *(MEMORY[0x277CBF2C0] + 16);
      *&v141.a = *MEMORY[0x277CBF2C0];
      *&v141.c = v84;
      *&v141.tx = *(MEMORY[0x277CBF2C0] + 32);
      v87 = objc_msgSend_numberOfLabelsForAxis_(self, v85, v141.tx, *&v84, v86, v21);
      v89 = origin.y;
      v88 = origin.x;
      v91 = v136.height;
      v90 = v136.width;
      v147.origin = origin;
      v147.size = v136;
      if (CGRectIsNull(v147) && v87)
      {
        v96 = v87 - 1;
        do
        {
          objc_msgSend_transformForRenderingLabel_outElementSize_outClipRect_(self, v92, v93, v94, v95, v96, &v142, v143);
          IsNull = CGRectIsNull(*v143);
          v99 = v96-- != 0;
        }

        while (IsNull && v99);
        v89 = *(v143 + 1);
        v88 = *v143;
        v91 = *(&v143[1] + 1);
        v90 = *&v143[1];
      }

      v148.origin.x = v88;
      v148.origin.y = v89;
      v148.size.width = v90;
      v148.size.height = v91;
      if (CGRectIsNull(v148))
      {
        *v143 = v145;
        v141 = *&v143[2];
        v142 = v144;
      }

      if (CGRectIsNull(v145))
      {
        v100 = v139;
        v101 = v138;
      }

      else
      {
        TSURectWithSize();
        v140 = *&v143[2];
        v153 = CGRectApplyAffineTransform(v152, &v140);
        v107 = v153.origin.x;
        v108 = v153.origin.y;
        v109 = v153.size.width;
        v110 = v153.size.height;
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v111, v153.origin.x, v153.origin.y, v153.size.width, v46))
        {
          objc_msgSend_shadowBoundsForRect_(v46, v112, v107, v108, v109, v110);
          v166.origin.x = v113;
          v166.origin.y = v114;
          v166.size.width = v115;
          v166.size.height = v116;
          v154.origin.x = v107;
          v154.origin.y = v108;
          v154.size.width = v109;
          v154.size.height = v110;
          v155 = CGRectUnion(v154, v166);
          v107 = v155.origin.x;
          v108 = v155.origin.y;
          v109 = v155.size.width;
          v110 = v155.size.height;
        }

        v156.origin.x = v138;
        v156.origin.y = v139;
        v156.size.width = v56;
        v156.size.height = v58;
        v167.origin.x = v107;
        v167.origin.y = v108;
        v167.size.width = v109;
        v167.size.height = v110;
        v157 = CGRectUnion(v156, v167);
        v101 = v157.origin.x;
        v100 = v157.origin.y;
        v56 = v157.size.width;
        v58 = v157.size.height;
      }

      if (!CGRectIsNull(*v143))
      {
        TSURectWithSize();
        v140 = v141;
        v159 = CGRectApplyAffineTransform(v158, &v140);
        v117 = v159.origin.x;
        v118 = v159.origin.y;
        v119 = v159.size.width;
        v120 = v159.size.height;
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v121, v159.origin.x, v159.origin.y, v159.size.width, v46))
        {
          objc_msgSend_shadowBoundsForRect_(v46, v122, v117, v118, v119, v120);
          v168.origin.x = v123;
          v168.origin.y = v124;
          v168.size.width = v125;
          v168.size.height = v126;
          v160.origin.x = v117;
          v160.origin.y = v118;
          v160.size.width = v119;
          v160.size.height = v120;
          v161 = CGRectUnion(v160, v168);
          v117 = v161.origin.x;
          v118 = v161.origin.y;
          v119 = v161.size.width;
          v120 = v161.size.height;
        }

        v162.origin.x = v101;
        v162.origin.y = v100;
        v162.size.width = v56;
        v162.size.height = v58;
        v169.origin.x = v117;
        v169.origin.y = v118;
        v169.size.width = v119;
        v169.size.height = v120;
        CGRectUnion(v162, v169);
      }
    }

    TSUSubtractPoints();
    TSURectWithOriginAndSize();
    v77 = v127;
    v79 = v128;
    v81 = v129;
    v83 = v130;
  }

  else
  {
    objc_msgSend_layoutSize(self, v26, v27, v28, v29);
    TSURectWithSize();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
  }

  v131 = v77;
  v132 = v79;
  v133 = v81;
  v134 = v83;
  result.size.height = v134;
  result.size.width = v133;
  result.origin.y = v132;
  result.origin.x = v131;
  return result;
}

- (CGRect)calcOverhangRect
{
  v6 = objc_msgSend_parent(self, a2, v2, v3, v4);
  v11 = objc_msgSend_parent(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_model(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_axisID(v6, v17, v18, v19, v20);
  v26 = objc_msgSend_type(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_axisForID_(v16, v27, v28, v29, v30, v21);
  v36 = objc_msgSend_numberOfLabelsForAxis_(self, v32, v33, v34, v35, v31);
  if (!objc_msgSend_showLabelsForAxis_(self, v37, v38, v39, v40, v31) || !v36)
  {
    objc_msgSend_layoutSize(self, v41, v42, v43, v44);
    TSURectWithSize();
    goto LABEL_6;
  }

  if ((v26 - 5) <= 1)
  {
    objc_msgSend_p_calcMaxLabelSize(self, v41, v42, v43, v44);
    objc_msgSend_layoutSpaceRectForAllLabels(self, v45, v46, v47, v48);
    objc_msgSend_rootedLayoutRect(self, v49, v50, v51, v52);
    TSUSubtractPoints();
    TSURectWithOriginAndSize();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    objc_msgSend_layoutSize(self, v61, v53, v55, v57);
    TSURectWithSize();
    recta = v162.origin.x;
    r1_8a = v162.origin.y;
    width = v162.size.width;
    height = v162.size.height;
    MinX = CGRectGetMinX(v162);
    v163.origin.x = v54;
    v163.origin.y = v56;
    v163.size.width = v58;
    v163.size.height = v60;
    fmax(MinX - CGRectGetMinX(v163), 0.0);
    v164.origin.x = v54;
    v164.origin.y = v56;
    v164.size.width = v58;
    v164.size.height = v60;
    CGRectGetMaxX(v164);
    v165.origin.x = recta;
    v165.origin.y = r1_8a;
    v165.size.width = width;
    v165.size.height = height;
    CGRectGetMaxX(v165);
    v166.origin.x = recta;
    v166.origin.y = r1_8a;
    v166.size.width = width;
    v166.size.height = height;
    CGRectGetMinX(v166);
    v167.origin.x = v54;
    v167.origin.y = v56;
    v167.size.width = v58;
    v167.size.height = v60;
    CGRectGetMinY(v167);
    v168.origin.x = recta;
    v168.origin.y = r1_8a;
    v168.size.width = width;
    v168.size.height = height;
    CGRectGetMaxX(v168);
    v169.origin.x = v54;
    v169.origin.y = v56;
    v169.size.width = v58;
    v169.size.height = v60;
    CGRectGetMaxY(v169);
    TSURectWithPoints();
LABEL_6:
    v69 = v65;
    v70 = v66;
    v71 = v67;
    v72 = v68;
    goto LABEL_25;
  }

  v129 = v31;
  v130 = v21;
  if (v11)
  {
    objc_msgSend_i_currentBufferAreaUnitRect(v11, v41, v42, v43, v44);
  }

  objc_msgSend_layoutSize(self, v41, v42, v43, v44);
  v74 = v73;
  v76 = v75;
  v77 = *(MEMORY[0x277CBF398] + 16);
  v161.origin = *MEMORY[0x277CBF398];
  v161.size = v77;
  v160 = *MEMORY[0x277CBF3A8];
  v78 = *(MEMORY[0x277CBF2C0] + 16);
  *&v159.a = *MEMORY[0x277CBF2C0];
  *&v159.c = v78;
  *&v159.tx = *(MEMORY[0x277CBF2C0] + 32);
  v158.origin = v161.origin;
  v158.size = v77;
  *&v156.tx = *&v159.tx;
  v157 = v160;
  *&v156.a = *&v159.a;
  *&v156.c = v78;
  TSURectWithSize();
  v80 = v79;
  v152 = v82;
  recta = v81;
  v151 = v83;
  TSUAddSizes();
  TSURectWithOriginAndSize();
  r1_8 = v84;
  r1_24 = v85;
  v87 = v86;
  v89 = v88;
  v90 = 0;
  v91 = v36 - 1;
  v92 = v36 + 0x8000000000000000;
  v93 = v36 - 2;
  v94 = v76;
  v95 = v74;
  v69 = v80;
  do
  {
    v170.origin.x = r1_8;
    v170.origin.y = r1_24;
    v188.size.height = v151;
    v170.size.width = v87;
    v170.size.height = v89;
    r1_16 = v69;
    v188.origin.x = v69;
    v188.size.width = v152;
    v188.origin.y = recta;
    v171 = CGRectUnion(v170, v188);
    r1_8 = v171.origin.x;
    r1_24 = v171.origin.y;
    v142 = v171.size.height;
    v143 = v171.size.width;
    v155 = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v128) = 1;
    objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(self, v96, v95, v94, v171.size.width, 0, 0, &v160, &v161, 0, &v155, v128);
    v99 = v93;
    v100 = v92;
    if (!v91)
    {
      goto LABEL_20;
    }

    do
    {
      LOBYTE(v128) = 1;
      objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(self, v97, v95, v94, v98, v99 + 1, 0, &v157, &v158, 0, &v155, v128);
      IsNull = CGRectIsNull(v158);
      if (v100)
      {
        v102 = IsNull;
      }

      else
      {
        v102 = 1;
      }

      v103 = v99-- != 0;
      v104 = v103;
      if (v102 != 1)
      {
        break;
      }

      --v100;
    }

    while ((v104 & 1) != 0);
    if (v102)
    {
LABEL_20:
      v158 = v161;
      v156 = v159;
      v157 = v160;
    }

    TSURectWithSize();
    rect_8 = v159;
    v173 = CGRectApplyAffineTransform(v172, &rect_8);
    r1 = v173.origin.x;
    v140 = v173.size.width;
    y = v173.origin.y;
    v139 = v173.size.height;
    TSURectWithSize();
    rect_8 = v156;
    v175 = CGRectApplyAffineTransform(v174, &rect_8);
    x = v175.origin.x;
    v106 = v175.origin.y;
    v107 = v175.size.width;
    v108 = v175.size.height;
    TSURectWithSize();
    v110 = v109;
    v112 = v111;
    v136 = v114;
    v138 = v113;
    v176.origin.x = r1;
    v176.size.width = v140;
    v176.origin.y = y;
    v176.size.height = v139;
    v189.origin.x = x;
    v189.origin.y = v106;
    v189.size.width = v107;
    v189.size.height = v108;
    v190 = CGRectUnion(v176, v189);
    v177.origin.x = v110;
    v177.origin.y = v112;
    v177.size.height = v136;
    v177.size.width = v138;
    CGRectUnion(v177, v190);
    TSUSubtractSizes();
    TSUAddSizes();
    TSURectWithOriginAndSize();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v191.size.height = v121;
    r1a = v121;
    v178.origin.x = r1_16;
    v178.size.width = v152;
    v178.origin.y = recta;
    v178.size.height = v151;
    v191.origin.x = v116;
    v191.origin.y = v118;
    v191.size.width = v120;
    v179 = CGRectUnion(v178, v191);
    r1_16a = v179.origin.x;
    v152 = v179.size.width;
    recta = v179.origin.y;
    v151 = v179.size.height;
    v179.origin.x = r1_8;
    v179.origin.y = r1_24;
    v89 = v142;
    v87 = v143;
    v179.size.width = v143;
    v179.size.height = v142;
    v137 = CGRectGetMinX(v179);
    v180.origin.x = v116;
    v180.origin.y = v118;
    v180.size.width = v120;
    v180.size.height = r1a;
    v135 = CGRectGetMinX(v180);
    v181.origin.x = v116;
    v181.origin.y = v118;
    v181.size.width = v120;
    v181.size.height = r1a;
    MaxX = CGRectGetMaxX(v181);
    v182.origin.x = r1_8;
    v182.origin.y = r1_24;
    v182.size.width = v143;
    v182.size.height = v142;
    v133 = CGRectGetMaxX(v182);
    v183.origin.x = r1_8;
    v183.origin.y = r1_24;
    v183.size.width = v143;
    v183.size.height = v142;
    MinY = CGRectGetMinY(v183);
    v184.origin.x = v116;
    v184.origin.y = v118;
    v184.size.width = v120;
    v184.size.height = r1a;
    v131 = CGRectGetMinY(v184);
    v185.origin.x = v116;
    v185.origin.y = v118;
    v185.size.width = v120;
    v185.size.height = r1a;
    MaxY = CGRectGetMaxY(v185);
    v186.origin.x = r1_8;
    v186.origin.y = r1_24;
    v186.size.width = v143;
    v186.size.height = v142;
    v123 = CGRectGetMaxY(v186);
    v69 = r1_16a;
    if (TSUNearlyContainsRect())
    {
      break;
    }

    v95 = fmax(v95 - fmax(v137 - v135, 0.0) - fmax(MaxX - v133, 0.0), 0.0);
    v94 = fmax(v94 - fmax(MinY - v131, 0.0) - fmax(MaxY - v123, 0.0), 0.0);
    v103 = v90++ >= 0x13;
  }

  while (!v103);
  v31 = v129;
  v21 = v130;
  v72 = v151;
  v71 = v152;
  v70 = recta;
LABEL_25:

  v124 = v69;
  v125 = v70;
  v126 = v71;
  v127 = v72;
  result.size.height = v127;
  result.size.width = v126;
  result.origin.y = v125;
  result.origin.x = v124;
  return result;
}

- (void)p_calcMaxLabelSize
{
  v60 = objc_msgSend_parent(self, a2, v2, v3, v4);
  v10 = objc_msgSend_axisID(v60, v6, v7, v8, v9);
  v15 = objc_msgSend_model(self, v11, v12, v13, v14);
  v20 = objc_msgSend_axisForID_(v15, v16, v17, v18, v19, v10);
  v25 = objc_msgSend_numberOfLabelsForAxis_(self, v21, v22, v23, v24, v20);
  v26 = *MEMORY[0x277CBF3A8];
  v27 = *(MEMORY[0x277CBF3A8] + 8);
  v32 = objc_msgSend_intValueForProperty_defaultValue_(v20, v28, v29, v30, v31, 1034, 0);
  v37 = objc_msgSend_chartInfo(v60, v33, v34, v35, v36);
  v42 = objc_msgSend_paragraphStyleAtIndex_(v37, v38, v39, v40, v41, v32);

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v48 = objc_msgSend_sharedText(TSCHText, v43, v44, v45, v46);
      v53 = objc_msgSend_labelStringForAxis_index_(self, v49, v50, v51, v52, v20, i);
      objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v48, v54, v55, v56, v57, v53, v42, 0);
      TSUSizeMax();
      v26 = v58;
      v27 = v59;
    }
  }

  objc_msgSend_setMaxLabelSizeInPoints_(self, v43, v26, v27, v46);
}

- (id)axisLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (id)p_chartModelFromLayoutItem
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);

  return v10;
}

- (id)p_chartInfoFromLayoutItem
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartInfo(v5, v6, v7, v8, v9);

  return v10;
}

- (id)i_axisFromLayoutItem
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_axisID(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_axisForID_(v10, v16, v17, v18, v19, v15);

  return v20;
}

- (unint64_t)numberOfLabelsForAxis:(id)axis
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartAxisLabelsLayoutItem numberOfLabelsForAxis:]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v14 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 411, 0, "%@ must be implemented by the superclass", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 0;
}

- (double)unitSpaceValueForAxis:(id)axis index:(unint64_t)index
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartAxisLabelsLayoutItem unitSpaceValueForAxis:index:]", index);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v15 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 416, 0, "%@ must be implemented by the superclass", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return NAN;
}

- (id)labelStringForAxis:(id)axis index:(unint64_t)index
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartAxisLabelsLayoutItem labelStringForAxis:index:]", index);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v15 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 421, 0, "%@ must be implemented by the superclass", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 0;
}

- (CGPoint)axisAnchorForPosition:(int)position degrees:(float)degrees inLayoutSize:(CGSize)size unrotatedSize:(CGSize)unrotatedSize unitSpaceValue:(double)value
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&degrees, size.width, size.height, "[TSCHChartAxisLabelsLayoutItem axisAnchorForPosition:degrees:inLayoutSize:unrotatedSize:unitSpaceValue:]", unrotatedSize.width, unrotatedSize.height, value);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v15 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 426, 0, "%@ must be implemented by the superclass", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  v24 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  result.y = v25;
  result.x = v24;
  return result;
}

- (unint64_t)selectionPathLabelIndexForIndex:(unint64_t)index axis:(id)axis
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartAxisLabelsLayoutItem selectionPathLabelIndexForIndex:axis:]", axis);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v15 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v9, v14, 431, 0, "%@ must be implemented by the superclass", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (CGPoint)labelAnchorForPosition:(int)position degrees:(float)degrees
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&degrees, v4, v5, "[TSCHChartAxisLabelsLayoutItem labelAnchorForPosition:degrees:]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v14 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 436, 0, "%@ must be implemented by the superclass", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  v23 = *MEMORY[0x277CBF348];
  v24 = *(MEMORY[0x277CBF348] + 8);
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)selectionPathLabelType
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartAxisLabelsLayoutItem selectionPathLabelType]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
  v13 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v14, v15, v16, v17, v7, v12, 441, 0, "%@ must be implemented by the superclass", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  return 0;
}

- (unint64_t)strideInLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  stride = self->_stride;
  objc_msgSend_layoutSize(self, a2, size.width, size.height, v3);
  v8 = TSUNearlyEqualSizes();
  v13 = v8;
  if (!v8 || !self->_stride)
  {
    v14 = objc_msgSend_axisLayoutItem(self, v9, v10, v11, v12);
    v19 = objc_msgSend_axisPosition(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_model(self, v20, v21, v22, v23);
    v29 = objc_msgSend_axisID(v14, v25, v26, v27, v28);
    v34 = objc_msgSend_axisForID_(v24, v30, v31, v32, v33, v29);

    if ((v19 - 1) <= 5 && (v39 = objc_msgSend_intValueForProperty_defaultValue_(v34, v35, v36, v37, v38, dword_2764D6BFC[v19 - 1], 0)) != 0)
    {
      stride = v39;
    }

    else
    {
      stride = objc_msgSend_p_computeAutoStrideInLayoutSize_(self, v35, width, height, v38);
    }

    v40 = stride;
    if ((v13 & 1) == 0)
    {
      v40 = self->_stride;
    }

    self->_stride = v40;
  }

  return stride;
}

- (unint64_t)stride
{
  objc_msgSend_rootedLayoutRect(self, a2, v2, v3, v4);

  return objc_msgSend_strideInLayoutSize_(self, v6, v7, v8, v7);
}

- (unint64_t)snappedLabelAngleInDegree:(float)degree
{
  v7 = objc_msgSend_axisLayoutItem(self, a2, *&degree, v3, v4);
  v12 = objc_msgSend_axisPosition(v7, v8, v9, v10, v11);

  if (v12 > 5 || ((1 << v12) & 0x2A) == 0)
  {
    v18 = objc_msgSend_chart(self, v13, v14, v15, v16);
    objc_msgSend_intValueForProperty_defaultValue_(v18, v19, v20, v21, v22, 1075, 0);
  }

  *&v14 = degree;

  return MEMORY[0x2821F9670](TSCHChartAxisLayoutUtilities, sel_snappedLabelAngleInDegrees_prefersVerticalAngles_, v14, v15, v16);
}

- (id)p_axis
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_axis(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)p_numberOfAxisLabels
{
  v6 = objc_msgSend_p_axis(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfLabelsForAxis_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (unint64_t)p_computeAutoStrideInLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_axisLayoutItem(self, a2, size.width, size.height, v3);
  v12 = objc_msgSend_axisID(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_type(v12, v13, v14, v15, v16);

  if (v17 == 6)
  {

    return MEMORY[0x2821F9670](self, sel_p_computeCircularAutoStrideInLayoutSize_, width, height, v18);
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_p_computeLinearAutoStrideInLayoutSize_, width, height, v18);
  }
}

- (void)p_rect:(CGRect *)p_rect andTransform:(CGAffineTransform *)transform inLayoutSize:(CGSize)size forIndex:(unint64_t)index paragraphStyle:(id)style
{
  height = size.height;
  width = size.width;
  v78 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  p_rect->origin = *MEMORY[0x277CBF3A0];
  p_rect->size = v14;
  v15 = MEMORY[0x277CBF2C0];
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *&transform->a = *MEMORY[0x277CBF2C0];
  *&transform->c = v16;
  v17 = *(v15 + 32);
  *&transform->tx = v17;
  v20 = objc_msgSend_axisLayoutItem(self, v18, *&v17, *&v16, v19);
  v25 = objc_msgSend_model(self, v21, v22, v23, v24);
  v30 = objc_msgSend_axisID(v20, v26, v27, v28, v29);
  v35 = objc_msgSend_axisForID_(v25, v31, v32, v33, v34, v30);

  v40 = objc_msgSend_axisPosition(v20, v36, v37, v38, v39);
  objc_msgSend_unitSpaceValueForAxis_index_(self, v41, v42, v43, v44, v35, index);
  v46 = v45;
  v51 = objc_msgSend_labelStringForAxis_index_(self, v47, v45, v48, v49, v35, index);
  if (v51)
  {
    v55 = objc_msgSend_sharedText(TSCHText, v50, v52, v53, v54);
    objc_msgSend_measureText_paragraphStyle_(v55, v56, v57, v58, v59, v51, styleCopy);
    v61 = v60;
    v63 = v62;

    *&v64 = self->_angleInDegrees;
    objc_msgSend_axisAnchorForPosition_degrees_inLayoutSize_unrotatedSize_unitSpaceValue_(self, v65, v64, width, height, v40, v61, v63, v46);
    v67 = v66;
    v69 = v68;
    *&v66 = self->_angleInDegrees;
    objc_msgSend_labelAnchorForPosition_degrees_(self, v70, v66, v68, v71, v40);
    p_rect->origin.x = -(v61 * v72);
    p_rect->origin.y = -(v63 * v73);
    p_rect->size.width = v61;
    p_rect->size.height = v63;
    CGAffineTransformMakeRotation(&v76, self->_angleInRadians);
    CGAffineTransformMakeTranslation(&v77, v67, v69);
    sub_27628CF0C(&v76, 2, v75);
    v74 = v75[1];
    *&transform->a = v75[0];
    *&transform->c = v74;
    *&transform->tx = v75[2];
  }
}

- (int64_t)p_smallestSecondValueLabelIndex:(int64_t)index start:(int64_t)start end:(int64_t)end inLayoutSize:(CGSize)size paragraphStyle:(id)style isTop:(BOOL)top
{
  height = size.height;
  width = size.width;
  styleCopy = style;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  objc_msgSend_p_rect_andTransform_inLayoutSize_forIndex_paragraphStyle_(self, v16, width, height, v17, &v45, &v42, index, styleCopy);
  if (top)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    objc_msgSend_p_rect_andTransform_inLayoutSize_forIndex_paragraphStyle_(self, v18, width, height, v19, &v40, &v37, end, styleCopy);
    v20 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
    if (*MEMORY[0x277CBF3A8] != *&v41 || v21 != *(&v41 + 1))
    {
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      if (sub_2762A1784(&v34, &v31, *&v45, *(&v45 + 1), *&v46, *(&v46 + 1), *&v40, *(&v40 + 1), *&v41, *(&v41 + 1)))
      {
        v23 = -1;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v23 = (start + (end - start) * 0.5);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  objc_msgSend_p_rect_andTransform_inLayoutSize_forIndex_paragraphStyle_(self, v18, width, height, 0.5, &v40, &v37, v23, styleCopy);
  if (v20 == *&v41 && v21 == *(&v41 + 1))
  {
    if (end == start)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v27 = sub_2762A1784(&v34, &v31, *&v45, *(&v45 + 1), *&v46, *(&v46 + 1), *&v40, *(&v40 + 1), *&v41, *(&v41 + 1));
  if (end != start)
  {
    if (v27)
    {
      if (v23 == start)
      {
        v28 = v23 + 1;
        isTop = objc_msgSend_p_smallestSecondValueLabelIndex_start_end_inLayoutSize_paragraphStyle_isTop_(self, v24, width, height, v25, index, v23 + 1, end, styleCopy, 0);
      }

      else
      {
        v28 = (start + (end - start) * 0.5);
        isTop = objc_msgSend_p_smallestSecondValueLabelIndex_start_end_inLayoutSize_paragraphStyle_isTop_(self, v24, width, height, v25, index, v28, end, styleCopy, 0);
      }

      goto LABEL_25;
    }

LABEL_24:
    isTop = objc_msgSend_p_smallestSecondValueLabelIndex_start_end_inLayoutSize_paragraphStyle_isTop_(self, v24, width, height, v25, index, start, v23 - (v23 == end), styleCopy, 0);
    v28 = -1;
LABEL_25:
    if (isTop >= 0)
    {
      v23 = isTop;
    }

    else
    {
      v23 = v28;
    }

    goto LABEL_28;
  }

  if (v27)
  {
    v23 = -1;
  }

LABEL_28:

  return v23;
}

- (unint64_t)p_computeLinearAutoStrideInLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_p_numberOfAxisLabels(self, a2, size.width, size.height, v3);
  if (v7 < 2)
  {
    return 1;
  }

  v12 = v7;
  v13 = objc_msgSend_p_axis(self, v8, v9, v10, v11);
  v18 = objc_msgSend_intValueForProperty_defaultValue_(v13, v14, v15, v16, v17, 1034, 0);
  v23 = objc_msgSend_chartInfo(self, v19, v20, v21, v22);
  v28 = objc_msgSend_paragraphStyleAtIndex_(v23, v24, v25, v26, v27, v18);

  objc_msgSend_floatValueForProperty_defaultValue_(v13, v29, 0.0, v30, v31, 1035);
  self->_angleInDegrees = v32;
  v33 = v32 * -0.0174532925;
  self->_angleInRadians = v33;
  started = objc_msgSend_p_smallestSecondValueLabelIndex_start_end_inLayoutSize_paragraphStyle_(self, v34, width, height, v35, 0, 1, v12 - 1, v28);
  if (started >= 1)
  {
    v37 = started;
    if (started < v12)
    {
      v38 = 2 * started;
      while (1)
      {
        v39 = objc_autoreleasePoolPush();
        memset(&v58, 0, sizeof(v58));
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        objc_msgSend_p_rect_andTransform_inLayoutSize_forIndex_paragraphStyle_(self, v40, width, height, v41, &v58, &v55, 0, v28);
        v44 = v38;
        v45 = v37;
        do
        {
          memset(&v54, 0, sizeof(v54));
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          objc_msgSend_p_rect_andTransform_inLayoutSize_forIndex_paragraphStyle_(self, v42, width, height, v43, &v54, &v51, v45, v28);
          if (CGRectIsEmpty(v58))
          {
            LOBYTE(v46) = 1;
          }

          else
          {
            v50[0] = v55;
            v50[1] = v56;
            v50[2] = v57;
            v49[0] = v51;
            v49[1] = v52;
            v49[2] = v53;
            v46 = !sub_2762A1784(v50, v49, v58.origin.x, v58.origin.y, v58.size.width, v58.size.height, v54.origin.x, v54.origin.y, v54.size.width, v54.size.height);
          }

          if (!CGRectIsEmpty(v54))
          {
            v58 = v54;
            v55 = v51;
            v56 = v52;
            v57 = v53;
          }

          v45 += v37;
          v47 = v44 < v12 && v46;
          v44 += v37;
        }

        while (v47);
        objc_autoreleasePoolPop(v39);
        if (v46)
        {
          break;
        }

        ++v37;
        v38 += 2;
        if (v37 == v12)
        {
          goto LABEL_17;
        }
      }
    }

    v12 = v37;
  }

LABEL_17:

  return v12;
}

- (CGRect)p_rectOfCircularStridingLabelAtIndex:(unint64_t)index inLayoutSize:(CGSize)size extraTransform:(CGAffineTransform *)transform
{
  v6 = MEMORY[0x277CBF3A8];
  v65 = *MEMORY[0x277CBF3A8];
  memset(&v64, 0, sizeof(v64));
  objc_msgSend_p_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_useAngle_(self, a2, size.width, size.height, *&v65, index, 0, &v65, 0, 0, 1);
  v8 = *v6;
  if (*&v65 == *v6 && *(&v65 + 1) == v6[1])
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, *&v65, *(&v65 + 1), v8, "[TSCHChartAxisLabelsLayoutItem p_rectOfCircularStridingLabelAtIndex:inLayoutSize:extraTransform:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 681, 0, "The label size should never be zero");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  TSURectWithSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  t1 = v64;
  memset(&v63, 0, sizeof(v63));
  v33 = *&transform->c;
  *&v61.a = *&transform->a;
  *&v61.c = v33;
  *&v61.tx = *&transform->tx;
  CGAffineTransformConcat(&v63, &t1, &v61);
  t1 = v63;
  v66.origin.x = v26;
  v66.origin.y = v28;
  v66.size.width = v30;
  v66.size.height = v32;
  v67 = CGRectApplyAffineTransform(v66, &t1);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartAxisLabelsLayoutItem p_rectOfCircularStridingLabelAtIndex:inLayoutSize:extraTransform:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 686, 0, "A pure translation shouldn't alter a rect's size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  v57 = x;
  v58 = y;
  v59 = width;
  v60 = height;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (BOOL)p_circularStridingLabelAtIndex:(unint64_t)index inLayoutSize:(CGSize)size intersectsLabelAtIndex:(unint64_t)atIndex extraTransform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  v12 = *&transform->c;
  v28 = *&transform->a;
  v29 = v12;
  v30 = *&transform->tx;
  objc_msgSend_p_rectOfCircularStridingLabelAtIndex_inLayoutSize_extraTransform_(self, a2, size.width, height, v6, index, &v28);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *&transform->c;
  v28 = *&transform->a;
  v29 = v21;
  v30 = *&transform->tx;
  objc_msgSend_p_rectOfCircularStridingLabelAtIndex_inLayoutSize_extraTransform_(self, v22, width, height, v17, atIndex, &v28);
  v33.origin.x = v23;
  v33.origin.y = v24;
  v33.size.width = v25;
  v33.size.height = v26;
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  v32 = CGRectIntersection(v31, v33);
  return !CGRectIsNull(v32);
}

- (unint64_t)p_computeCircularAutoStrideInLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_msgSend_p_numberOfAxisLabels(self, a2, size.width, size.height, v3) < 2)
  {
    return 1;
  }

  v12 = objc_msgSend_p_labelBaselineDirectionRelativeToSpoke(self, v7, v8, v9, v10);
  if (v12 == 1)
  {
    objc_msgSend_maxLabelSizeInPoints(self, v13, v14, v15, v16);
    v17 = v18;
    goto LABEL_7;
  }

  if (v12 == 2)
  {
    objc_msgSend_maxLabelSizeInPoints(self, v13, v14, v15, v16);
LABEL_7:

    return MEMORY[0x2821F9670](self, sel_p_computeCircularAutoStrideForLabelDimensionPerpendicularOnSpoke_inLayoutSize_, v17, width, height);
  }

  return MEMORY[0x2821F9670](self, sel_p_computeCircularAutoStrideForInvariantAngleLabelsInLayoutSize_, width, height, v16);
}

- (unint64_t)p_computeCircularAutoStrideForLabelDimensionPerpendicularOnSpoke:(double)spoke inLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = objc_msgSend_p_numberOfAxisLabels(self, a2, spoke, size.width, size.height);
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  v12 = v11 * 0.5;
  v13 = objc_msgSend_axisLayoutItem(self, v8, v11, 0.5, v10);
  v18 = objc_msgSend_model(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_axisID(v13, v19, v20, v21, v22);
  v28 = objc_msgSend_axisForID_(v18, v24, v25, v26, v27, v23);

  objc_msgSend_floatValueForProperty_defaultValue_(v28, v29, 0.0, v30, v31, 1033);
  v33 = atan(spoke / (v12 * (v32 + 1.0) + v12 * (v32 + 1.0)));
  v34 = v33 * 57.2957795 + v33 * 57.2957795;
  v35 = (360.0 / v34);
  if (v35)
  {
    v36 = v9 > v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v37 = vcvtpd_u64_f64(v9 / v35);
    v38 = v9 - 1;
    v39 = 360.0 / v9;
    if (v9 <= v37)
    {
      v9 = v37;
    }

    while (v9 != v37)
    {
      v40 = v39 * (v38 % v37++ + 1);
      if (v40 >= v34)
      {
        v9 = v37 - 1;
        break;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)p_computeCircularAutoStrideForInvariantAngleLabelsInLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_p_numberOfAxisLabels(self, a2, size.width, size.height, v3);
  memset(&v47, 0, sizeof(v47));
  objc_msgSend_p_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_useAngle_(self, v8, width, height, v9, 0, 0, 0, 0, 0, 1);
  v45 = v47;
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformInvert(&v46, &v45);
  v10 = v7 >> 1;
  v45 = v46;
  if (objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v11, width, height, v12, v7 >> 1, 0, &v45) && v7)
  {
    return v7;
  }

  v45 = v46;
  v15 = 1;
  if (!objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v13, width, height, v14, 1, 0, &v45))
  {
    goto LABEL_13;
  }

  if (v7 < 4)
  {
    goto LABEL_12;
  }

  v20 = 2;
  v21 = v7 >> 1;
  while (1)
  {
    v22 = v20 + v21;
    v15 = (v20 + v21) >> 1;
    v45 = v46;
    if (!objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v16, width, height, v19, v15, 0, &v45))
    {
      break;
    }

    v20 = v15 + 1;
LABEL_9:
    if (v20 > v21)
    {
      goto LABEL_12;
    }
  }

  v21 = v15 - 1;
  v45 = v46;
  if ((objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v16, width, height, v19, v15 - 1, 0, &v45) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v22 <= 1)
  {
LABEL_12:
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHChartAxisLabelsLayoutItem p_computeCircularAutoStrideForInvariantAngleLabelsInLayoutSize:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 790, 0, "Failed to find a stride");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    return v7;
  }

LABEL_13:
  if (v15 <= v10)
  {
    do
    {
      v38 = v7 / v15 - (v7 / v15 * v15 == v7);
      v45 = v46;
      v39 = objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v16, width, height, v19, v38 * v15, 0, &v45);
      if (v38)
      {
        v40 = 0;
        v41 = 0;
        while ((v39 & 1) == 0)
        {
          ++v41;
          v42 = v15 + v40;
          v39 = objc_msgSend_p_circularStridingLabelAtIndex_inLayoutSize_intersectsLabelAtIndex_extraTransform_(self, v16, width, height, v19, *&v46.a, *&v46.b, *&v46.c, *&v46.d, *&v46.tx, *&v46.ty);
          v40 = v42;
          if (v41 >= v38)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if (!v39)
        {
          return v15;
        }
      }
    }

    while (v15++ != v10);
  }

  return v7;
}

- (CGAffineTransform)p_transformWithOrigin:(SEL)origin verticalDirection:(CGPoint)direction
{
  x = direction.x;
  y = direction.y;
  if ((TSUPointIsFinite() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartAxisLabelsLayoutItem p_transformWithOrigin:verticalDirection:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 830, 0, "Non-finite origin for transform");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if ((TSUPointIsFinite() & 1) == 0)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartAxisLabelsLayoutItem p_transformWithOrigin:verticalDirection:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 833, 0, "Non-finite vertical direction for transform");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  if (TSUNearlyEqualPoints())
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCHChartAxisLabelsLayoutItem p_transformWithOrigin:verticalDirection:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 836, 0, "Vertical direction nearly zero for transform");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

  TSUAngleFromDelta();
  TSUNormalizeAngleInDegrees();
  v64 = v63;
  v65 = MEMORY[0x277CBF2C0];
  v66 = *MEMORY[0x277CBF2C0];
  v67 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v67;
  v68 = *(v65 + 32);
  *&retstr->tx = v68;
  *&v115.a = v66;
  *&v115.c = v67;
  *&v115.tx = v68;
  CGAffineTransformTranslate(retstr, &v115, x, y);
  v69 = *&retstr->c;
  *&v114.a = *&retstr->a;
  *&v114.c = v69;
  *&v114.tx = *&retstr->tx;
  CGAffineTransformRotate(&v115, &v114, v64 * 0.0174532925);
  v70 = *&v115.c;
  *&retstr->a = *&v115.a;
  *&retstr->c = v70;
  *&retstr->tx = *&v115.tx;
  v71 = *&retstr->c;
  *&v114.a = *&retstr->a;
  *&v114.c = v71;
  *&v114.tx = *&retstr->tx;
  CGAffineTransformInvert(&v115, &v114);
  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "[TSCHChartAxisLabelsLayoutItem p_transformWithOrigin:verticalDirection:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 846, 0, "Transform not mapping back origin to (0,0)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
  }

  TSUNormalizePoint();
  TSUAddPoints();
  v91 = *&retstr->c;
  *&v114.a = *&retstr->a;
  *&v114.c = v91;
  *&v114.tx = *&retstr->tx;
  CGAffineTransformInvert(&v115, &v114);
  result = TSUNearlyEqualPoints();
  if ((result & 1) == 0)
  {
    v97 = MEMORY[0x277D81150];
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "[TSCHChartAxisLabelsLayoutItem p_transformWithOrigin:verticalDirection:]");
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v104, v105, v106, v107, v98, v103, 853, 0, "Transform not mapping back end point of vertical unit vector to (0,1)");

    return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110, v111);
  }

  return result;
}

- (CGPoint)p_pointWithLowerYOfPoint:(CGPoint)result andPoint:(CGPoint)point whenTransformedBy:(CGAffineTransform *)by
{
  if (by->ty + point.y * by->d + by->b * point.x < by->ty + result.y * by->d + by->b * result.x)
  {
    return point;
  }

  return result;
}

- (CGPoint)p_relativeAnchorMidpointForLabelGeometry:(id)geometry
{
  geometryCopy = geometry;
  v8 = geometryCopy;
  v9 = 0.0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (geometryCopy)
  {
    objc_msgSend_transform(geometryCopy, v5, 0.0, v6, v7);
  }

  objc_msgSend_angle(v8, v5, v9, v6, v7);
  v11 = sin((v10 + 90.0) * -0.0174532925);
  v12 = asin(fabs(v11)) * 57.2957795;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  objc_msgSend_p_pointWithLowerYOfPoint_andPoint_whenTransformedBy_(self, v13, 0.0, 0.5, 1.0, &v23, 0.5);
  v15 = v14;
  v17 = v16;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  objc_msgSend_p_pointWithLowerYOfPoint_andPoint_whenTransformedBy_(self, v18, 0.5, 0.0, 0.5, &v23, 1.0);
  if (v12 > 50.0)
  {
    if (v12 < 75.0)
    {
      TSUMixPoints();
    }

    v15 = v19;
    v17 = v20;
  }

  v21 = v15;
  v22 = v17;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)p_relativeAnchorPointForLabelGeometry:(id)geometry useMidpoints:(BOOL)midpoints
{
  if (midpoints)
  {
    (MEMORY[0x2821F9670])(self, sel_p_relativeAnchorMidpointForLabelGeometry_);
  }

  else
  {
    v4 = 0.5;
    v5 = 0.5;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGAffineTransform)p_transformForLabelWithPaddingPerSide:(SEL)side outwardOrigin:(double)origin outwardDirection:(CGPoint)direction boundaryPosition:(CGPoint)position boundaryNormal:(CGPoint)normal alignWithMaxSizeAtClosestMidpoint:(CGPoint)midpoint anchorMaxSizeAtClosestMidpoint:(BOOL)closestMidpoint info:(BOOL)self0
{
  infoCopy = info;
  closestMidpointCopy = closestMidpoint;
  v15 = a11;
  objc_msgSend_maxLabelSizeInPoints(v15, v16, v17, v18, v19);
  TSUAddSizes();
  v21 = v20;
  v23 = v22;
  v24 = objc_alloc(MEMORY[0x277D802E8]);
  objc_msgSend_labelRotationInDegrees(v15, v25, v26, v27, v28);
  v31 = objc_msgSend_initWithPosition_size_angle_(v24, v29, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21, v23, v30);
  TSUSubtractPoints();
  TSUCrossPoints();
  TSUCrossPoints();
  objc_msgSend_labelExplosion(v15, v32, v33, v34, v35);
  TSUMultiplyPointScalar();
  TSUAddPoints();
  memset(&v129, 0, sizeof(v129));
  objc_msgSend_p_transformWithOrigin_verticalDirection_(self, v36, v37, v38, midpoint.x, midpoint.y);
  TSUAddPoints();
  v40 = v39;
  v42 = v41;
  v127 = v129;
  CGAffineTransformInvert(&v128, &v127);
  v43 = v128.tx + v42 * v128.c + v128.a * v40;
  v44 = v128.ty + v42 * v128.d + v128.b * v40;
  v127 = v129;
  CGAffineTransformInvert(&v128, &v127);
  v49 = objc_msgSend_geometryByAppendingTransform_(v31, v45, v46, v47, v48, &v128);
  objc_msgSend_transformedBounds(v49, v50, v51, v52, v53);
  MinY = CGRectGetMinY(v130);
  CGAffineTransformMakeTranslation(&v128, 0.0, -MinY);
  v59 = objc_msgSend_geometryByAppendingTransform_(v49, v55, v56, v57, v58, &v128);
  objc_msgSend_p_relativeAnchorPointForLabelGeometry_useMidpoints_(self, v60, v61, v62, v63, v49, infoCopy);
  TSUMultiplyPointBySize();
  v67 = 0uLL;
  v68 = 0uLL;
  v69 = 0uLL;
  if (v59)
  {
    v125 = v66;
    v126 = v65;
    objc_msgSend_transform(v59, v64, v65, v66, 0.0, 0.0, 0.0);
    v66 = v125;
    v65 = v126;
    v68 = *&v128.a;
    v69 = *&v128.c;
    v67 = *&v128.tx;
  }

  v70 = vaddq_f64(v67, vmlaq_n_f64(vmulq_n_f64(v69, v66), v68, v65));
  CGAffineTransformMakeTranslation(&v128, vmuld_lane_f64(v43 / v44, v70, 1) - v70.f64[0], 0.0);
  v75 = objc_msgSend_geometryByAppendingTransform_(v59, v71, v72, v73, v74, &v128);
  v128 = v129;
  v79 = objc_msgSend_geometryByAppendingTransform_(v75, v76, v129.tx, v129.c, v77, &v128);
  if (closestMidpointCopy != infoCopy)
  {
    objc_msgSend_p_relativeAnchorPointForLabelGeometry_useMidpoints_(self, v78, v80, v81, v82, v49, closestMidpointCopy);
  }

  TSUMultiplyPointBySize();
  objc_msgSend_labelSizeInPoints(v15, v83, v84, v85, v86);
  TSUMultiplyPointBySize();
  TSUSubtractPoints();
  TSUAddPoints();
  v88 = v87;
  v90 = v89;
  v91 = objc_alloc(MEMORY[0x277D802E8]);
  objc_msgSend_labelSizeInPoints(v15, v92, v93, v94, v95);
  v99 = objc_msgSend_initWithPosition_size_(v91, v96, v88, v90, v97, v98);
  v104 = objc_msgSend_geometryWithParentGeometry_(v99, v100, v101, v102, v103, v79);
  objc_msgSend_center(v15, v105, v106, v107, v108);
  v110 = v109;
  objc_msgSend_center(v15, v111, v109, v112, v113);
  CGAffineTransformMakeTranslation(&v128, v110, v114);
  v119 = objc_msgSend_geometryByAppendingTransform_(v104, v115, v116, v117, v118, &v128);
  v123 = v119;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  if (v119)
  {
    objc_msgSend_transform(v119, v120, 0.0, v121, v122);
  }

  return result;
}

- (CGAffineTransform)p_localTransformForCartesianAxisLabelWithInfo:(SEL)info
{
  v6 = MEMORY[0x277CBF2C0];
  v97 = *(MEMORY[0x277CBF2C0] + 16);
  v98 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v97;
  v96 = *(v6 + 32);
  *&retstr->tx = v96;
  v7 = a4;
  v12 = objc_msgSend_position(v7, v8, v9, v10, v11);
  objc_msgSend_labelRotationInDegrees(v7, v13, v14, v15, v16);
  *&v17 = v17;
  objc_msgSend_labelAnchorForPosition_degrees_(self, v18, v17, v19, v20, v12);
  v22 = v21;
  v24 = v23;
  objc_msgSend_labelRotationInDegrees(v7, v25, v21, v23, v26);
  *&v27 = v27 * -0.0174532925;
  memset(&v102, 0, sizeof(v102));
  angle = *&v27;
  CGAffineTransformMakeRotation(&v102, *&v27);
  objc_msgSend_labelSizeInPoints(v7, v28, v29, v30, v31);
  v33 = v32;
  objc_msgSend_labelSizeInPoints(v7, v34, v32, v35, v36);
  v37 = -(v33 * v22);
  v39 = -(v38 * v24);
  objc_msgSend_labelSizeInPoints(v7, v40, v41, v38, v42);
  v44 = v43;
  objc_msgSend_labelSizeInPoints(v7, v45, v43, v46, v47);
  v103.size.height = v48;
  v101 = v102;
  v103.origin.x = v37;
  v103.origin.y = v39;
  v103.size.width = v44;
  v104 = CGRectApplyAffineTransform(v103, &v101);
  v50 = objc_msgSend_position(v7, v49, v104.origin.x, v104.origin.y, v104.size.width);
  objc_msgSend_labelRotationInDegrees(v7, v51, v52, v53, v54);
  v56 = v55;
  objc_msgSend_labelLayoutSize(v7, v57, v55, v58, v59);
  v61 = v60;
  v63 = v62;
  objc_msgSend_labelSizeInPoints(v7, v64, v60, v62, v65);
  v67 = v66;
  v69 = v68;
  objc_msgSend_unitSpaceAnchor(v7, v70, v66, v68, v71);
  v73 = v72;
  *&v72 = v56;
  objc_msgSend_axisAnchorForPosition_degrees_inLayoutSize_unrotatedSize_unitSpaceValue_(self, v74, v72, v61, v63, v50, v67, v69, v73);
  v76 = v75;
  v78 = v77;
  TSUCenterOfRect();
  v80 = v79;
  v82 = v81;
  objc_msgSend_labelSizeInPoints(v7, v83, v79, v81, v84);

  TSURectWithCenterAndSize();
  v86 = v85;
  v88 = v87;
  *&v101.a = v98;
  *&v101.c = v97;
  *&v101.tx = v96;
  CGAffineTransformTranslate(retstr, &v101, v76, v78);
  v89 = *&retstr->c;
  *&v100.a = *&retstr->a;
  *&v100.c = v89;
  *&v100.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v101, &v100, v80, v82);
  v90 = *&v101.c;
  *&retstr->a = *&v101.a;
  *&retstr->c = v90;
  *&retstr->tx = *&v101.tx;
  v91 = *&retstr->c;
  *&v100.a = *&retstr->a;
  *&v100.c = v91;
  *&v100.tx = *&retstr->tx;
  CGAffineTransformRotate(&v101, &v100, angle);
  v92 = *&v101.c;
  *&retstr->a = *&v101.a;
  *&retstr->c = v92;
  *&retstr->tx = *&v101.tx;
  v93 = *&retstr->c;
  *&v100.a = *&retstr->a;
  *&v100.c = v93;
  *&v100.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v101, &v100, v86, v88);
  v95 = *&v101.c;
  *&retstr->a = *&v101.a;
  *&retstr->c = v95;
  *&retstr->tx = *&v101.tx;
  return result;
}

- (CGAffineTransform)p_localTransformForPolarAxisLabelWithInfo:(SEL)info
{
  v6 = a4;
  v11 = objc_msgSend_axis(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_chartInfo(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v17, v18, v19, v20, v11, v16);

  v26 = objc_msgSend_chartInfo(v6, v22, v23, v24, v25);
  v31 = objc_msgSend_objectValueForProperty_(v26, v27, v28, v29, v30, 1080);

  if (!v31)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHChartAxisLabelsLayoutItem p_localTransformForPolarAxisLabelWithInfo:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 1037, 0, "invalid nil value for '%{public}s'", "stroke");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  v51 = 0.0;
  if (v21 && objc_msgSend_shouldRender(v31, v32, v33, v34, v35))
  {
    objc_msgSend_width(v31, v32, v52, v34, v35);
    v51 = v53;
  }

  objc_msgSend_setStrokeThickness_(v6, v32, v51, v34, v35);
  v58 = objc_msgSend_chartInfo(v6, v54, v55, v56, v57);
  objc_msgSend_floatValueForProperty_defaultValue_(v58, v59, 0.0, v60, v61, 1109);
  objc_msgSend_setRadarStartAngleInDegrees_(v6, v63, v62, v64, v65);

  objc_msgSend_layoutSize(self, v66, v67, v68, v69);
  TSURectWithSize();
  TSUCenterOfRect();
  objc_msgSend_setCenter_(v6, v70, v71, v72, v73);
  objc_msgSend_layoutSize(self, v74, v75, v76, v77);
  objc_msgSend_setXSemiaxis_(v6, v79, v78 * 0.5, v80, v81);
  objc_msgSend_layoutSize(self, v82, v83, v84, v85);
  objc_msgSend_setYSemiaxis_(v6, v87, v86 * 0.5, v86, v88);
  objc_msgSend_xSemiaxis(v6, v89, v90, v91, v92);
  v94 = v93;
  objc_msgSend_ySemiaxis(v6, v95, v93, v96, v97);
  CGAffineTransformMakeScale(&v131, v94, v98);
  v130 = v131;
  objc_msgSend_setUnitCircleToEllipseTransform_(v6, v99, v131.tx, v131.c, v100, &v130);
  v101 = MEMORY[0x277CBF2C0];
  v102 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v102;
  v103 = *(v101 + 32);
  *&retstr->tx = v103;
  if (objc_msgSend_position(v6, v104, *&v103, *&v102, v105) == 5)
  {
    objc_msgSend_p_localTransformForPolarRadiusAxisLabelWithInfo_(self, v106, v107, v108, v109, v6);
  }

  else if (objc_msgSend_position(v6, v106, v107, v108, v109) == 6)
  {
    objc_msgSend_p_localTransformForPolarAngleAxisLabelWithInfo_(self, v110, v111, v112, v113, v6);
  }

  else
  {
    v114 = MEMORY[0x277D81150];
    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "[TSCHChartAxisLabelsLayoutItem p_localTransformForPolarAxisLabelWithInfo:]");
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, v117, v118, v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v121, v122, v123, v124, v115, v120, 1058, 0, "Not a polar axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
  }

  return result;
}

- (CGAffineTransform)p_localTransformForPolarRadiusAxisLabelWithInfo:(SEL)info
{
  v6 = a4;
  objc_msgSend_distanceFromAxis(self, v7, v8, v9, v10);
  memset(&v59, 0, sizeof(v59));
  objc_msgSend_radarStartAngleInDegrees(v6, v11, 0.0, v12, v13);
  CGAffineTransformMakeRotation(&v59, (v14 + 90.0) * -0.0174532925);
  a = v59.a;
  b = v59.b;
  c = v59.c;
  d = v59.d;
  tx = v59.tx;
  ty = v59.ty;
  if (v6)
  {
    objc_msgSend_unitCircleToEllipseTransform(v6, v15, v16, v17, v18);
    objc_msgSend_unitCircleToEllipseTransform(v6, v25, v58.f64[0], v56.f64[0], v26);
    v27 = v56;
    v28 = v57;
    v29 = v58;
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v30 = tx - (c - a * 0.0);
  v31 = vmlaq_n_f64(vmulq_n_f64(v28, ty - (d - b * 0.0)), v27, v30);
  objc_msgSend_unitSpaceAnchor(v6, v15, vaddq_f64(v29, v31).f64[0], v31.f64[0], v30);
  TSUMultiplyPointScalar();
  v55 = v32;
  v34 = v33;
  TSUNormalizePoint();
  v36 = v35;
  v38 = v37;
  TSUMultiplyPointScalar();
  TSUAddPoints();
  TSUNormalizePoint();
  v40 = v39;
  v42 = -v41;
  TSUDotPoints();
  objc_msgSend_strokeThickness(v6, v43, v44, v45, v46);
  TSUMultiplyPointScalar();
  TSUAddPoints();
  v48 = v47;
  v50 = v49;
  objc_msgSend_setLabelExplosion_(v6, v51, 0.0, v49, v52);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  objc_msgSend_p_transformForLabelWithPaddingPerSide_outwardOrigin_outwardDirection_boundaryPosition_boundaryNormal_alignWithMaxSizeAtClosestMidpoint_anchorMaxSizeAtClosestMidpoint_info_(self, v53, 5.0, v55, v34, 1, 1, v6, v36, v38, v48, v50, v40, *&v42);

  return result;
}

- (int64_t)p_labelBaselineDirectionRelativeToSpoke
{
  v5 = objc_msgSend_axisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_axisID(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_axisForID_(v10, v16, v17, v18, v19, v15);

  v25 = objc_msgSend_intValueForProperty_defaultValue_(v20, v21, v22, v23, v24, 1032, 0);
  return v25;
}

- (CGAffineTransform)p_localTransformForPolarAngleAxisLabelWithInfo:(SEL)info
{
  v6 = a4;
  v11 = objc_msgSend_chartModel(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfValues(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_labelIndex(v6, v17, v18, v19, v20);
  v26 = objc_msgSend_chartInfo(v6, v22, v23, v24, v25);
  v31 = objc_msgSend_intValueForProperty_defaultValue_(v26, v27, v28, v29, v30, 1108, 0);

  v32 = 360.0 / v16;
  objc_msgSend_radarStartAngleInDegrees(v6, v33, v16, 360.0, v34);
  v36 = -(v35 + 90.0 - v21 * v32) * 0.0174532925;
  memset(&v151, 0, sizeof(v151));
  CGAffineTransformMakeRotation(&v151, v36);
  v147 = v151.tx + v151.a + v151.c * 0.0;
  v146 = v151.ty + v151.b + v151.d * 0.0;
  if (v6)
  {
    objc_msgSend_unitCircleToEllipseTransform(v6, v37, 0.0, 0.0, v151.c * 0.0, 0.0);
  }

  TSUNormalizePoint();
  v145 = v38;
  v149 = v39;
  v42 = objc_msgSend_axis(v6, v40, v38, v39, v41);
  v47 = objc_msgSend_intValueForProperty_defaultValue_(v42, v43, v44, v45, v46, 1061, 2);

  if (v47 != 1)
  {
    v52 = objc_msgSend_axisLayoutItem(v6, v48, v49, v50, v51);
    v57 = objc_msgSend_axisTickMarksLayoutItem(v52, v53, v54, v55, v56);

    objc_msgSend_majorTickmarkLength(v57, v58, v59, v60, v61);
    v63 = v62;
    v64 = v63 * 0.5;
    objc_msgSend_strokeThickness(v6, v65, v63, v66, v67);
    v69 = v68 * 0.5;
    v70 = v64 + v69;
    objc_msgSend_strokeThickness(v6, v71, v69, v72, v73);
    hypot(v70, v74 * 0.5);
  }

  if (v31 || v16 <= 2)
  {
    objc_msgSend_xSemiaxis(v6, v48, v49, v50, v51);
    v98 = __sincos_stret(v36);
    objc_msgSend_ySemiaxis(v6, v99, v98.__sinval, v98.__cosval, v100);
    TSUNormalizePoint();
    v81 = v101;
    v83 = -v102;
    objc_msgSend_strokeThickness(v6, v103, v102, v101, v104);
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v90 = sinval;
    v92 = cosval;
  }

  else
  {
    CGAffineTransformMakeRotation(&v150, v32 * -0.0174532925);
    v144 = v150.tx + v146 * v150.c + v150.a * v147;
    v143 = v150.ty + v146 * v150.d + v150.b * v147;
    CGAffineTransformMakeRotation(&v150, v32 * 0.0174532925);
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    if (v6)
    {
      objc_msgSend_unitCircleToEllipseTransform(v6, v75, 0.0, 0.0, 0.0);
      v77 = *&v150.a;
      v78 = *&v150.c;
      v76 = *&v150.tx;
    }

    v148 = v36;
    *&v79 = *&vaddq_f64(v76, vmlaq_n_f64(vmulq_n_f64(v78, v143), v77, v144));
    if (v6)
    {
      objc_msgSend_unitCircleToEllipseTransform(v6, v75, 0.0, 0.0, v79);
    }

    TSUSubtractPoints();
    TSUNormalizePoint();
    TSUSubtractPoints();
    TSUNormalizePoint();
    TSUAddPoints();
    TSUNormalizePoint();
    v81 = v80;
    v83 = v82;
    TSUDotPoints();
    v85 = acos(v84);
    v86 = v85 * 57.2957795;
    objc_msgSend_strokeThickness(v6, v87, v85, 57.2957795, v88);
    sin(v86 * 0.5 * 0.0174532925);
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v90 = v89;
    v92 = v91;
    v97 = __sincos_stret(v148);
    cosval = v97.__cosval;
    sinval = v97.__sinval;
  }

  v105 = objc_msgSend_axis(v6, v93, sinval, cosval, v96);
  objc_msgSend_floatValueForProperty_defaultValue_(v105, v106, 0.0, v107, v108, 1033);
  v110 = v109;

  objc_msgSend_xSemiaxis(v6, v111, v112, v113, v114);
  objc_msgSend_ySemiaxis(v6, v116, v115 * v110, v117, v118);
  v119 = *MEMORY[0x277CBF348];
  v120 = *(MEMORY[0x277CBF348] + 8);
  TSUDistance();
  objc_msgSend_setLabelExplosion_(v6, v121, v122, v123, v124);
  TSUAngleFromDelta();
  TSUNormalizeAngleAboutZeroInRadians();
  v126 = v125 * 57.2957795;
  v129 = objc_msgSend_p_labelBaselineDirectionRelativeToSpoke(self, v127, v125, 57.2957795, v128);
  if (v129 != 1)
  {
    if (v129 != 2)
    {
      goto LABEL_20;
    }

    objc_msgSend_setLabelRotationInDegrees_(v6, v130, 90.0 - v126, v132, v133);
    if (v126 > 0.0)
    {
      goto LABEL_20;
    }

LABEL_19:
    objc_msgSend_labelRotationInDegrees(v6, v130, v131, v132, v133);
    objc_msgSend_setLabelRotationInDegrees_(v6, v135, v134 + 180.0, 180.0, v136);
    goto LABEL_20;
  }

  objc_msgSend_setLabelRotationInDegrees_(v6, v130, -v126, v132, v133);
  v131 = -90.0;
  if (v126 < -90.0)
  {
    goto LABEL_19;
  }

  v131 = 90.0;
  if (v126 >= 90.0)
  {
    goto LABEL_19;
  }

LABEL_20:
  objc_msgSend_labelSizeInPoints(v6, v130, v131, v132, v133);
  objc_msgSend_setMaxLabelSizeInPoints_(v6, v137, v138, v139, v140);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  objc_msgSend_p_transformForLabelWithPaddingPerSide_outwardOrigin_outwardDirection_boundaryPosition_boundaryNormal_alignWithMaxSizeAtClosestMidpoint_anchorMaxSizeAtClosestMidpoint_info_(self, v141, 10.0, v119, v120, 1, 1, v6, v145, v149, v90, v92, *&v81, *&v83);

  return result;
}

- (CGAffineTransform)p_localTransformForAxisLabelWithInfo:(SEL)info
{
  v64 = a4;
  v10 = objc_msgSend_axisLayoutItem(v64, v6, v7, v8, v9);
  v15 = objc_msgSend_axisPosition(v10, v11, v12, v13, v14);
  objc_msgSend_setPosition_(v64, v16, v17, v18, v19, v15);

  if (objc_msgSend_useAngle(v64, v20, v21, v22, v23))
  {
    v28 = objc_msgSend_axis(v64, v24, v25, v26, v27);
    objc_msgSend_floatValueForProperty_defaultValue_(v28, v29, 0.0, v30, v31, 1035);
    objc_msgSend_setLabelRotationInDegrees_(v64, v33, v32, v34, v35);
  }

  else
  {
    objc_msgSend_setLabelRotationInDegrees_(v64, v24, 0.0, v26, v27);
  }

  v38 = MEMORY[0x277CBF2C0];
  v39 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v39;
  v40 = *(v38 + 32);
  *&retstr->tx = v40;
  v41 = objc_msgSend_axis(v64, v36, *&v40, *&v39, v37);
  v46 = objc_msgSend_labelIndex(v64, v42, v43, v44, v45);
  objc_msgSend_unitSpaceValueForAxis_index_(self, v47, v48, v49, v50, v41, v46);
  objc_msgSend_setUnitSpaceAnchor_(v64, v51, v52, v53, v54);

  if (objc_msgSend_position(v64, v55, v56, v57, v58) - 5 > 1)
  {
    objc_msgSend_p_localTransformForCartesianAxisLabelWithInfo_(self, v59, v60, v61, v62, v64);
  }

  else
  {
    objc_msgSend_p_localTransformForPolarAxisLabelWithInfo_(self, v59, v60, v61, v62, v64);
  }

  return result;
}

- (CGAffineTransform)p_localTransformForLabel:(SEL)label range:(unint64_t)range inLayoutSize:(_NSRange *)size outElementSize:(CGSize)elementSize outClipRect:(CGSize *)rect usingString:(CGRect *)string useAngle:(id)angle
{
  v205 = a10;
  angleCopy = angle;
  v14 = MEMORY[0x277CBF2C0];
  v199 = *(MEMORY[0x277CBF2C0] + 16);
  v200 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v199;
  v201 = *(v14 + 32);
  *&retstr->tx = v201;
  v15 = objc_opt_new();
  v20 = objc_msgSend_axisLayoutItem(self, v16, v17, v18, v19);
  objc_msgSend_setAxisLayoutItem_(v15, v21, v22, v23, v24, v20);

  v29 = objc_msgSend_axisLayoutItem(v15, v25, v26, v27, v28);
  v34 = objc_msgSend_model(v29, v30, v31, v32, v33);
  objc_msgSend_setChartModel_(v15, v35, v36, v37, v38, v34);

  v43 = objc_msgSend_axisLayoutItem(v15, v39, v40, v41, v42);
  v48 = objc_msgSend_chart(v43, v44, v45, v46, v47);
  objc_msgSend_setChartInfo_(v15, v49, v50, v51, v52, v48);

  v57 = objc_msgSend_axisLayoutItem(v15, v53, v54, v55, v56);
  v62 = objc_msgSend_axisID(v57, v58, v59, v60, v61);
  objc_msgSend_setAxisID_(v15, v63, v64, v65, v66, v62);

  v71 = objc_msgSend_chartModel(v15, v67, v68, v69, v70);
  v76 = objc_msgSend_axisID(v15, v72, v73, v74, v75);
  v81 = objc_msgSend_axisForID_(v71, v77, v78, v79, v80, v76);
  objc_msgSend_setAxis_(v15, v82, v83, v84, v85, v81);

  v90 = objc_msgSend_axis(v15, v86, v87, v88, v89);

  if (!v90)
  {
    v95 = MEMORY[0x277D81150];
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "[TSCHChartAxisLabelsLayoutItem p_localTransformForLabel:range:inLayoutSize:outElementSize:outClipRect:usingString:useAngle:]");
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v102, v103, v104, v105, v96, v101, 1238, 0, "invalid nil value for '%{public}s'", "info.axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
  }

  objc_msgSend_maxLabelSizeInPoints(self, v91, v92, v93, v94);
  objc_msgSend_setMaxLabelSizeInPoints_(v15, v110, v111, v112, v113);
  v118 = objc_msgSend_axis(v15, v114, v115, v116, v117);
  v123 = objc_msgSend_intValueForProperty_defaultValue_(v118, v119, v120, v121, v122, 1034, 0);

  v128 = objc_msgSend_axisLayoutItem(v15, v124, v125, v126, v127);
  v133 = objc_msgSend_chartInfo(v128, v129, v130, v131, v132);
  v211 = objc_msgSend_paragraphStyleAtIndex_(v133, v134, v135, v136, v137, v123);

  v143 = objc_msgSend_sharedText(TSCHText, v138, v139, v140, v141);
  if (angleCopy)
  {
    v147 = angleCopy;
    v149 = angleCopy;
  }

  else
  {
    v147 = 0;
    v153 = objc_msgSend_axis(v15, v142, v144, v145, v146);
    v149 = objc_msgSend_labelStringForAxis_index_(self, v154, v155, v156, v157, v153, range);
  }

  v158 = MEMORY[0x277CBF398];
  if (size)
  {
    location = size->location;
    length = size->length;
  }

  else
  {
    location = 0;
    length = -1;
  }

  v161 = *MEMORY[0x277CBF398];
  v162 = *(MEMORY[0x277CBF398] + 8);
  v163 = *(MEMORY[0x277CBF398] + 16);
  v164 = *(MEMORY[0x277CBF398] + 24);
  v165 = *MEMORY[0x277CBF3A8];
  v166 = *(MEMORY[0x277CBF3A8] + 8);
  v167 = objc_msgSend_length(v149, v148, v150, v151, v152);
  v216.location = 0;
  v216.length = v167;
  v217.location = location;
  v217.length = length;
  v168 = NSIntersectionRange(v216, v217);
  v202 = *(v158 + 16);
  v203 = *v158;
  v215.origin = *v158;
  v215.size = v202;
  objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v143, v168.length, v215.origin.x, v202.width, v169, v149, v211, &v215);
  width = v170;
  height = v172;
  if (CGRectIsNull(v215))
  {
    height = v166;
    width = v165;
  }

  else
  {
    objc_msgSend_setLabelSizeInPoints_(v15, v174, width, height, v175);
    objc_msgSend_setLabelIndex_(v15, v176, v177, v178, v179, range);
    objc_msgSend_setLabelLayoutSize_(v15, v180, elementSize.width, elementSize.height, v181);
    objc_msgSend_setUseAngle_(v15, v182, v183, v184, v185, v205);
    objc_msgSend_p_localTransformForAxisLabelWithInfo_(self, v186, v187, v188, v189, v15);
    if (v168.location || v167 != v168.length)
    {
      v214.origin = v203;
      v214.size = v202;
      objc_msgSend_frameForRange_inText_paragraphStyle_outErasableFrame_(v143, v190, v202.width, v203.x, v191, v168.location, v168.length, v149, v211, &v214);
      width = v218.size.width;
      height = v218.size.height;
      y = v218.origin.y;
      x = v218.origin.x;
      if (CGRectIsNull(v218) || CGRectIsNull(v214))
      {
        *&retstr->a = v200;
        *&retstr->c = v199;
        height = v166;
        width = v165;
        *&retstr->tx = v201;
      }

      else
      {
        v192 = *&retstr->c;
        *&v212.a = *&retstr->a;
        *&v212.c = v192;
        *&v212.tx = *&retstr->tx;
        CGAffineTransformTranslate(&v213, &v212, x, y);
        v193 = *&v213.c;
        *&retstr->a = *&v213.a;
        *&retstr->c = v193;
        *&retstr->tx = *&v213.tx;
        TSUSubtractPoints();
        TSURectWithOriginAndSize();
        v161 = v194;
        v162 = v195;
        v163 = v196;
        v164 = v197;
      }
    }

    else
    {
      v162 = v215.origin.y;
      v161 = v215.origin.x;
      v164 = v215.size.height;
      v163 = v215.size.width;
    }
  }

  v219.origin.x = v161;
  v219.origin.y = v162;
  v219.size.width = v163;
  v219.size.height = v164;
  if (!CGRectIsNull(v219))
  {
    v220.origin.x = v161;
    v220.origin.y = v162;
    v220.size.width = v163;
    v220.size.height = v164;
    v221 = CGRectInset(v220, -1.0, -1.0);
    v161 = v221.origin.x;
    v162 = v221.origin.y;
    v163 = v221.size.width;
    v164 = v221.size.height;
  }

  if (string)
  {
    string->origin.x = v161;
    string->origin.y = v162;
    string->size.width = v163;
    string->size.height = v164;
  }

  if (rect)
  {
    rect->width = width;
    rect->height = height;
  }

  return result;
}

- (CGAffineTransform)i_localTransformForLabel:(SEL)label range:(unint64_t)range inLayoutSize:(_NSRange *)size outElementSize:(CGSize)elementSize outClipRect:(CGSize *)rect usingString:(CGRect *)string stride:(id)stride useAngle:(unint64_t *)self0
{
  height = elementSize.height;
  width = elementSize.width;
  strideCopy = stride;
  v21 = MEMORY[0x277CBF2C0];
  v22 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v22;
  v23 = *(v21 + 32);
  *&retstr->tx = v23;
  if (string)
  {
    v23 = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 16);
    string->origin = *MEMORY[0x277CBF398];
    string->size = v22;
  }

  if (rect)
  {
    v23 = *MEMORY[0x277CBF3A8];
    *rect = *MEMORY[0x277CBF3A8];
  }

  angleCopy = angle;
  v24 = objc_msgSend_axisLayoutItem(self, v19, *&v23, v22.width, v20);
  v29 = objc_msgSend_model(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_axisID(v24, v30, v31, v32, v33);
  v39 = objc_msgSend_axisForID_(v29, v35, v36, v37, v38, v34);

  if (!v39)
  {
    v44 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCHChartAxisLabelsLayoutItem i_localTransformForLabel:range:inLayoutSize:outElementSize:outClipRect:usingString:stride:useAngle:]");
    v45 = v72 = rect;
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLabelsLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 1310, 0, "invalid nil value for '%{public}s'", "axis");

    rect = v72;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }

  v59 = objc_msgSend_showLabelsForAxis_(self, v40, v41, v42, v43, v39);
  v64 = objc_msgSend_numberOfLabelsForAxis_(self, v60, v61, v62, v63, v39);
  if (v59)
  {
    v69 = v64;
    if (v64 > range)
    {
      if (angleCopy)
      {
        v70 = *angleCopy;
        if (*angleCopy == 0x7FFFFFFFFFFFFFFFLL)
        {
          v70 = objc_msgSend_strideInLayoutSize_(self, v65, width, height, v68);
        }

        *angleCopy = v70;
      }

      else
      {
        v70 = objc_msgSend_strideInLayoutSize_(self, v65, width, height, v68);
      }

      if (!(range % v70) || range + 1 == v69 && objc_msgSend_intValueForProperty_defaultValue_(v39, v65, v66, v67, v68, 1053, 0))
      {
        objc_msgSend_p_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_useAngle_(self, v65, width, height, v68, range, size, rect, string, strideCopy, a11);
      }
    }
  }

  return result;
}

- (CGAffineTransform)p_rootedTransformFromLocalTransform:(SEL)transform
{
  memset(&v12, 0, sizeof(v12));
  objc_msgSend_transformToRoot(self, transform, 0.0, v4, v5);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v8 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v8;
  *&t1.tx = *&a4->tx;
  v10 = v12;
  return CGAffineTransformConcat(retstr, &t1, &v10);
}

- (CGAffineTransform)transformForRenderingLabel:(SEL)label outElementSize:(unint64_t)size outClipRect:(CGSize *)rect
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  objc_msgSend_layoutSize(self, label, 0.0, v6, v7);
  v20 = 1;
  objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(self, v13, v14, v15, v16, size, 0, rect, a6, 0, 0, v20);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  return objc_msgSend_p_rootedTransformFromLocalTransform_(self, v17, *&v24, *&v23, v18, v21);
}

- (CGAffineTransform)transformForRenderingLabel:(SEL)label usingString:(unint64_t)string outElementSize:(id)size outClipRect:(CGSize *)rect useAngle:(CGRect *)angle
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  sizeCopy = size;
  objc_msgSend_layoutSize(self, v15, v16, v17, v18);
  v26 = a8;
  objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(self, v19, v20, v21, v22, string, 0, rect, angle, sizeCopy, 0, v26);

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v27[0] = v28;
  v27[1] = v29;
  v27[2] = v30;
  return objc_msgSend_p_rootedTransformFromLocalTransform_(self, v23, *&v30, *&v29, v24, v27);
}

- (CGAffineTransform)transformForRenderingLabel:(SEL)label range:(unint64_t)range outElementSize:(_NSRange)size outClipRect:(CGSize *)rect
{
  sizeCopy = size;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  objc_msgSend_layoutSize(self, label, 0.0, v7, v8);
  objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(self, v14, v15, v16, v17, range, &sizeCopy, rect, a7, 0, 0, 1);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  return objc_msgSend_p_rootedTransformFromLocalTransform_(self, v18, *&v24, *&v23, v19, v21);
}

- (void)p_enumerateAxisLabelRectsWithBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_parent(self, v5, v6, v7, v8);
  v14 = objc_msgSend_axisID(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_model(self, v15, v16, v17, v18);
  v24 = objc_msgSend_axisForID_(v19, v20, v21, v22, v23, v14);
  v29 = objc_msgSend_numberOfLabelsForAxis_(self, v25, v26, v27, v28, v24);
  if (v29)
  {
    v32 = v29;
    v33 = 0;
    v36 = *(MEMORY[0x277CBF398] + 16);
    v37 = *MEMORY[0x277CBF398];
    v35 = *MEMORY[0x277CBF3A8];
    do
    {
      v43.origin = v37;
      v43.size = v36;
      v41 = 0u;
      v42 = v35;
      v39 = 0u;
      v40 = 0u;
      objc_msgSend_transformForRenderingLabel_outElementSize_outClipRect_(self, v30, 0.0, *&v35, v31, v33, &v42, &v43, v35, v36, v37);
      if (!CGRectIsNull(v43))
      {
        objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v30, v43.origin.x, v43.origin.y, v43.size.width, v43.size.height, v42);
        v34 = blockCopy[2];
        v38[0] = v39;
        v38[1] = v40;
        v38[2] = v41;
        v34(blockCopy, v38);
      }

      ++v33;
    }

    while (v32 != v33);
  }
}

- (id)layoutSpaceKnobsForAllLabels
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2762B2800;
  v13[3] = &unk_27A6B75C0;
  v7 = v6;
  v14 = v7;
  objc_msgSend_p_enumerateAxisLabelRectsWithBlock_(self, v8, v9, v10, v11, v13);

  return v7;
}

- (id)layoutSpaceHalosForAllLabels
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2762B28F4;
  v13[3] = &unk_27A6B75C0;
  v7 = v6;
  v14 = v7;
  objc_msgSend_p_enumerateAxisLabelRectsWithBlock_(self, v8, v9, v10, v11, v13);

  return v7;
}

- (CGRect)layoutSpaceRectForAllLabels
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_27657B92B;
  v3 = *(MEMORY[0x277CBF398] + 16);
  v17 = *MEMORY[0x277CBF398];
  v18 = v3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2762B2A2C;
  v12[3] = &unk_27A6B75E8;
  v12[4] = &v13;
  objc_msgSend_p_enumerateAxisLabelRectsWithBlock_(self, a2, COERCE_DOUBLE(3221225472), *&v3, v2, v12);
  v4 = v14[4];
  v5 = v14[5];
  v6 = v14[6];
  v7 = v14[7];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)p_overrideLabelStringForHitTestingEmptyLabel
{
  v6 = objc_msgSend_i_axisFromLayoutItem(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfLabelsForAxis_(self, v7, v8, v9, v10, v6);
  if (v11)
  {
    v16 = v11;
    v17 = 0;
    v18 = &stru_288528678;
    do
    {
      v19 = objc_msgSend_labelStringForAxis_index_(self, v12, v13, v14, v15, v6, v17);
      v24 = objc_msgSend_length(v19, v20, v21, v22, v23);
      if (v24 > objc_msgSend_length(v18, v25, v26, v27, v28))
      {
        v29 = v19;

        v18 = v29;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  else
  {
    v18 = &stru_288528678;
  }

  if (objc_msgSend_length(v18, v12, v13, v14, v15))
  {
    v30 = v18;
  }

  else
  {
    v30 = @" ";
  }

  v31 = v30;

  return v30;
}

- (void)iterateHitChartElements:(CGPoint)elements withBlock:(id)block
{
  y = elements.y;
  x = elements.x;
  v70[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    objc_msgSend_layoutSpaceRectForAllLabels(self, v7, v9, v10, v11);
    v71.x = x;
    v71.y = y;
    if (CGRectContainsPoint(v72, v71))
    {
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = sub_2762B2E3C;
      v68[3] = &unk_27A6B7610;
      v68[4] = self;
      *&v68[5] = x;
      *&v68[6] = y;
      v12 = MEMORY[0x277C98B30](v68);
      v17 = objc_msgSend_i_axisFromLayoutItem(self, v13, v14, v15, v16);
      v22 = objc_msgSend_axisID(v17, v18, v19, v20, v21);
      v27 = objc_msgSend_numberOfLabelsForAxis_(self, v23, v24, v25, v26, v17);
      if (v27)
      {
        v32 = v27;
        v67 = v22;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v35 = objc_msgSend_labelStringForAxis_index_(self, v28, v29, v30, v31, v17, v33);
          if (objc_msgSend_length(v35, v36, v37, v38, v39))
          {
            v44 = 0;
          }

          else
          {
            if (!v34)
            {
              v34 = objc_msgSend_p_overrideLabelStringForHitTestingEmptyLabel(self, v40, v41, v42, v43);
            }

            v44 = v34;
            v34 = v44;
          }

          v45 = (v12)[2](v12, v33, v44);

          if (v45)
          {
            break;
          }

          if (v32 == ++v33)
          {
            goto LABEL_17;
          }
        }

        v46 = objc_msgSend_selectionPathLabelIndexForIndex_axis_(self, v28, v29, v30, v31, v33, v17);
        if (v46 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = v67;
          v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v48, v49, v50, &v69, 1);
        }

        else
        {
          v70[0] = v67;
          v56 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v47, v48, v49, v50, v46);
          v70[1] = v56;
          v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v58, v59, v60, v70, 2);
        }

        v61 = objc_msgSend_selectionPathLabelType(self, v51, v53, v54, v55);
        v66 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v62, v63, v64, v65, v61, v52);
        blockCopy[2](blockCopy, v66, 0);

LABEL_17:
        v22 = v67;
      }
    }
  }
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)selection
{
  v69 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  selfCopy = self;
  v67.receiver = self;
  v67.super_class = TSCHChartAxisLabelsLayoutItem;
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
          v24 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v16, v17, v18, v19, v59);
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

- (CGSize)maxLabelSizeInPoints
{
  objc_copyStruct(v4, &self->_maxLabelSizeInPoints, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end