@interface TSCHChartAxisLineLayoutItem
- (CGAffineTransform)transformForRenderingOutElementSize:(SEL)size outClipRect:(CGSize *)rect;
- (CGRect)calcDrawingRect;
- (CGSize)calcMinSize;
- (TSCHChartAxisLineLayoutItem)initWithParent:(id)parent;
- (double)p_strokeWidth;
- (id)p_axis;
- (id)p_axisLayoutItemParent;
@end

@implementation TSCHChartAxisLineLayoutItem

- (TSCHChartAxisLineLayoutItem)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = TSCHChartAxisLineLayoutItem;
  return [(TSCHChartLayoutItem *)&v4 initWithParent:parent];
}

- (id)p_axisLayoutItemParent
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (id)p_axis
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_p_axisLayoutItemParent(self, v7, v8, v9, v10);
  v16 = objc_msgSend_axisID(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_axisForID_(v6, v17, v18, v19, v20, v16);

  return v21;
}

- (double)p_strokeWidth
{
  v6 = objc_msgSend_p_axis(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chart(self, v7, v8, v9, v10);
  v16 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v12, v13, v14, v15, v6, v11);

  v21 = objc_msgSend_chart(self, v17, v18, v19, v20);
  v26 = objc_msgSend_objectValueForProperty_(v21, v22, v23, v24, v25, 1080);

  v31 = 0.0;
  if (v16)
  {
    v32 = v26 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (!v32 && objc_msgSend_shouldRender(v26, v27, v28, v29, v30))
  {
    objc_msgSend_width(v26, v33, v34, v35, v36);
    *&v37 = v37;
    v31 = *&v37;
  }

  return v31;
}

- (CGSize)calcMinSize
{
  v6 = objc_msgSend_p_axisLayoutItemParent(self, a2, v2, v3, v4);
  objc_msgSend_p_strokeWidth(self, v7, v8, v9, v10);
  v12 = v11;
  v14 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  v18 = objc_msgSend_axisPosition(v6, v15, v11, v16, v17);
  if (v18 > 6)
  {
    goto LABEL_7;
  }

  if (((1 << v18) & 0x2A) != 0)
  {
    v14 = v12 * 0.5;
    goto LABEL_8;
  }

  if (((1 << v18) & 0x14) == 0)
  {
    if (v18 == 6)
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartAxisLineLayoutItem calcMinSize]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisLineLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 66, 0, "Direction not set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    goto LABEL_8;
  }

  v13 = v12 * 0.5;
LABEL_8:

  v38 = v14;
  v39 = v13;
  result.height = v39;
  result.width = v38;
  return result;
}

- (CGRect)calcDrawingRect
{
  v6 = objc_msgSend_p_axisLayoutItemParent(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisPosition(v6, v7, v8, v9, v10);
  objc_msgSend_layoutSize(self, v12, v13, v14, v15);
  TSURectWithSize();
  x = v17;
  y = v18;
  width = v19;
  height = v20;
  if (v11 <= 6)
  {
    if (((1 << v11) & 0x2A) != 0)
    {
      v17 = v17 - v19;
      if (v11 == 3)
      {
        x = x - v19;
      }

      width = v19 + v19;
    }

    else if (((1 << v11) & 0x14) != 0)
    {
      v17 = v18 - v20;
      if (v11 == 4)
      {
        y = v18 - v20;
      }

      height = v20 + v20;
    }

    else if (v11 == 6)
    {
      v25 = objc_opt_class();
      v30 = objc_msgSend_model(self, v26, v27, v28, v29);
      v35 = objc_msgSend_numberOfGroupsInAllSeries(v30, v31, v32, v33, v34);
      objc_msgSend_p_strokeWidth(self, v36, v37, v38, v39);
      objc_msgSend_halfProtrusionForRegularPolygonWithSides_strokeWidth_(v25, v40, v41, v42, v43, v35);
      v45 = v44;

      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      *&v17 = CGRectInset(v66, -v45, -v45);
      x = v17;
      y = v18;
      width = v19;
      height = v46;
    }
  }

  v47 = objc_msgSend_chartInfo(self, v16, v17, v18, v19);
  v52 = objc_msgSend_objectValueForProperty_(v47, v48, v49, v50, v51, 1079);

  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v53, v54, v55, v56, v52))
  {
    objc_msgSend_shadowBoundsForRect_(v52, v57, x, y, width, height);
    v70.origin.x = v58;
    v70.origin.y = v59;
    v70.size.width = v60;
    v70.size.height = v61;
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v68 = CGRectUnion(v67, v70);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
  }

  v62 = x;
  v63 = y;
  v64 = width;
  v65 = height;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

- (CGAffineTransform)transformForRenderingOutElementSize:(SEL)size outClipRect:(CGSize *)rect
{
  v134 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  v12 = *(MEMORY[0x277CBF398] + 16);
  v13 = *(MEMORY[0x277CBF398] + 24);
  Height = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  v121 = *(MEMORY[0x277CBF2C0] + 16);
  v123 = *MEMORY[0x277CBF2C0];
  *&v127.a = *MEMORY[0x277CBF2C0];
  *&v127.c = v121;
  v120 = *(MEMORY[0x277CBF2C0] + 32);
  *&v127.tx = v120;
  v16 = objc_msgSend_parent(self, size, *&v120, *&v121, v5);
  v21 = objc_msgSend_model(self, v17, v18, v19, v20);
  v26 = objc_msgSend_axisID(v16, v22, v23, v24, v25);
  v31 = objc_msgSend_axisForID_(v21, v27, v28, v29, v30, v26);

  v36 = objc_msgSend_chartInfo(v21, v32, v33, v34, v35);
  v41 = objc_msgSend_strokeEnabledForRenderingForAxis_chart_(TSCHRenderUtilities, v37, v38, v39, v40, v31, v36);

  v46 = objc_msgSend_chartInfo(v21, v42, v43, v44, v45);
  v51 = objc_msgSend_objectValueForProperty_(v46, v47, v48, v49, v50, 1080);

  if (!v41 || !v51 || !objc_msgSend_shouldRender(v51, v52, v53, v54, v55))
  {
    goto LABEL_20;
  }

  v60 = objc_msgSend_axisPosition(v16, v56, v57, v58, v59);
  objc_msgSend_rootedLayoutRect(self, v61, v62, v63, v64);
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v73 = v69;
  if (v60 > 3)
  {
    if (v60 != 4)
    {
      if (v60 == 5)
      {
        objc_opt_class();
        v102 = objc_msgSend_parent(self, v98, v99, v100, v101);
        v103 = TSUCheckedDynamicCast();

        objc_msgSend_chartBodySize(v103, v104, v105, v106, v107);
        v124 = v108;
        v122 = v109;
        v112 = objc_msgSend_chartInfo(self, v110, v108, v109, v111);
        objc_msgSend_floatValueForProperty_defaultValue_(v112, v113, 0.0, v114, v115, 1109);
        v117 = v116 * 0.0174532925;

        v145.origin.x = v70;
        v145.origin.y = v71;
        v145.size.width = v72;
        v145.size.height = v73;
        MaxX = CGRectGetMaxX(v145);
        v146.origin.x = v70;
        v146.origin.y = v71;
        v146.size.width = v72;
        v146.size.height = v73;
        MinY = CGRectGetMinY(v146);
        v147.origin.x = v70;
        v147.origin.y = v71;
        v147.size.width = v72;
        v147.size.height = v73;
        Height = CGRectGetHeight(v147);
        CGAffineTransformMakeRotation(&v128, 1.57079633);
        CGAffineTransformMakeRotation(&v129, v117);
        CGAffineTransformMakeScale(&v130, v124 / v122, 1.0);
        CGAffineTransformMakeScale(&v131, 1.0, -1.0);
        CGAffineTransformMakeTranslation(&v132, 0.0, Height);
        CGAffineTransformMakeTranslation(&v133, MaxX, MinY);
        sub_27628CF0C(&v128, 6, &v127);
        v125 = v127;
        CGAffineTransformInvert(&v126, &v125);
        v148.size.width = 0.0;
        v148.origin.x = MaxX;
        v148.origin.y = MinY;
        v148.size.height = Height;
        v149 = CGRectApplyAffineTransform(v148, &v126);
        v15 = v149.size.height;
      }

      else if (v60 == 6)
      {
        *&retstr->a = v123;
        *&retstr->c = v121;
        v78 = v120;
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    MinX = CGRectGetMinX(*&v66);
    v139.origin.x = v70;
    v139.origin.y = v71;
    v139.size.width = v72;
    v139.size.height = v73;
    MaxY = CGRectGetMinY(v139);
    v140.origin.x = v70;
    v140.origin.y = v71;
    v140.size.width = v72;
    v140.size.height = v73;
    Width = CGRectGetWidth(v140);
    CGAffineTransformMakeTranslation(&v128, MinX, MaxY);
    v86 = 1;
    goto LABEL_17;
  }

  switch(v60)
  {
    case 1:
      v74 = CGRectGetMaxX(*&v66);
      v137.origin.x = v70;
      v137.origin.y = v71;
      v137.size.width = v72;
      v137.size.height = v73;
      v75 = CGRectGetMinY(v137);
      v138.origin.x = v70;
      v138.origin.y = v71;
      v138.size.width = v72;
      v138.size.height = v73;
      v76 = CGRectGetHeight(v138);
      CGAffineTransformMakeRotation(&v128, 1.57079633);
      CGAffineTransformMakeTranslation(&v129, 0.0, 0.0);
      v77 = 1.0;
      goto LABEL_14;
    case 2:
      MinX = CGRectGetMinX(*&v66);
      v141.origin.x = v70;
      v141.origin.y = v71;
      v141.size.width = v72;
      v141.size.height = v73;
      MaxY = CGRectGetMaxY(v141);
      v142.origin.x = v70;
      v142.origin.y = v71;
      v142.size.width = v72;
      v142.size.height = v73;
      Width = CGRectGetWidth(v142);
      CGAffineTransformMakeScale(&v128, 1.0, -1.0);
      CGAffineTransformMakeTranslation(&v129, 0.0, 0.0);
      CGAffineTransformMakeTranslation(&v130, MinX, MaxY);
      v86 = 3;
LABEL_17:
      sub_27628CF0C(&v128, v86, &v127);
      v125 = v127;
      CGAffineTransformInvert(&v126, &v125);
      v82 = 0.0;
      v80 = MinX;
      v81 = MaxY;
      v79 = Width;
      goto LABEL_18;
    case 3:
      v74 = CGRectGetMinX(*&v66);
      v135.origin.x = v70;
      v135.origin.y = v71;
      v135.size.width = v72;
      v135.size.height = v73;
      v75 = CGRectGetMinY(v135);
      v136.origin.x = v70;
      v136.origin.y = v71;
      v136.size.width = v72;
      v136.size.height = v73;
      v76 = CGRectGetHeight(v136);
      CGAffineTransformMakeRotation(&v128, 1.57079633);
      CGAffineTransformMakeTranslation(&v129, 0.0, 0.0);
      v77 = -1.0;
LABEL_14:
      CGAffineTransformMakeScale(&v130, v77, -1.0);
      CGAffineTransformMakeTranslation(&v131, 0.0, v76);
      CGAffineTransformMakeTranslation(&v132, v74, v75);
      sub_27628CF0C(&v128, 5, &v127);
      v125 = v127;
      CGAffineTransformInvert(&v126, &v125);
      v79 = 0.0;
      v80 = v74;
      v81 = v75;
      v82 = v76;
LABEL_18:
      *&v66 = CGRectApplyAffineTransform(*&v80, &v126);
      Height = v68;
      v15 = v87;
      break;
  }

LABEL_19:
  objc_msgSend_rootedDrawingRect(self, v65, v66, v67, v68);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v126 = v127;
  CGAffineTransformInvert(&v128, &v126);
  v143.origin.x = v89;
  v143.origin.y = v91;
  v143.size.width = v93;
  v143.size.height = v95;
  v144 = CGRectApplyAffineTransform(v143, &v128);
  x = v144.origin.x;
  y = v144.origin.y;
  v12 = v144.size.width;
  v13 = v144.size.height;
LABEL_20:
  if (a5)
  {
    a5->origin.x = x;
    a5->origin.y = y;
    a5->size.width = v12;
    a5->size.height = v13;
  }

  if (rect)
  {
    rect->width = Height;
    rect->height = v15;
  }

  v96 = *&v127.c;
  *&retstr->a = *&v127.a;
  *&retstr->c = v96;
  v78 = *&v127.tx;
LABEL_25:
  *&retstr->tx = v78;

  return result;
}

@end