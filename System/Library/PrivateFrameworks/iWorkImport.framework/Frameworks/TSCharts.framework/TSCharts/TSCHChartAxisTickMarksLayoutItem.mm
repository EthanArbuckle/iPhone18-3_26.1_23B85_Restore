@interface TSCHChartAxisTickMarksLayoutItem
- (CGAffineTransform)transformForRenderingOutElementSize:(SEL)size outClipRect:(CGSize *)rect;
- (CGRect)calcDrawingRect;
- (CGRect)p_effectiveRootedLayoutRect;
- (CGSize)calcMinSize;
- (TSCHChartAxisTickMarksLayoutItem)initWithParent:(id)parent;
- (float)majorTickmarkLength;
- (float)minorTickmarkLength;
- (int)location;
@end

@implementation TSCHChartAxisTickMarksLayoutItem

- (TSCHChartAxisTickMarksLayoutItem)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = TSCHChartAxisTickMarksLayoutItem;
  return [(TSCHChartLayoutItem *)&v4 initWithParent:parent];
}

- (float)majorTickmarkLength
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);

  if (objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1055, 0))
  {
    v32 = objc_msgSend_chartInfo(self, v28, v29, v30, v31);
    v37 = objc_msgSend_objectValueForProperty_(v32, v33, v34, v35, v36, 1080);

    if (v37)
    {
      shouldRender = objc_msgSend_shouldRender(v37, v38, v39, v40, v41);
      v46 = 0.0;
      if (shouldRender)
      {
        objc_msgSend_width(v37, v43, 0.0, v44, v45);
      }
    }

    else
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartAxisTickMarksLayoutItem majorTickmarkLength]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTickMarksLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 52, 0, "invalid nil value for '%{public}s'", "stroke");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
      v46 = 0.0;
    }

    if (v46 <= 1.0)
    {
      v47 = 5.0;
    }

    else
    {
      v63 = v46 * 4.0;
      v47 = v63;
    }
  }

  else
  {
    v47 = 0.0;
  }

  return v47;
}

- (float)minorTickmarkLength
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);

  if (objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1058, 0))
  {
    v32 = objc_msgSend_chartInfo(self, v28, v29, v30, v31);
    v37 = objc_msgSend_objectValueForProperty_(v32, v33, v34, v35, v36, 1080);

    if (v37)
    {
      shouldRender = objc_msgSend_shouldRender(v37, v38, v39, v40, v41);
      v46 = 3.0;
      if (shouldRender)
      {
        objc_msgSend_width(v37, v43, 3.0, v44, v45);
        v46 = v47 * 3.0;
      }
    }

    else
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartAxisTickMarksLayoutItem minorTickmarkLength]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTickMarksLayoutItem.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 80, 0, "invalid nil value for '%{public}s'", "stroke");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
      v46 = 3.0;
    }

    v48 = fmax(v46, 1.0);
  }

  else
  {
    v48 = 0.0;
  }

  return v48;
}

- (int)location
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_axisID(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_axisForID_(v13, v19, v20, v21, v22, v18);

  if (v23)
  {
    v28 = objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1061, 2);
  }

  else
  {
    v28 = 2;
  }

  return v28;
}

- (CGSize)calcMinSize
{
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  objc_msgSend_majorTickmarkLength(self, a2, v2, v3, v4);
  v9 = *&v8;
  objc_msgSend_minorTickmarkLength(self, v10, v8, v11, v12);
  if (v9 < v13)
  {
    v9 = v13;
  }

  objc_opt_class();
  v18 = objc_msgSend_parent(self, v14, v15, v16, v17);
  v19 = TSUDynamicCast();

  v24 = objc_msgSend_axisPosition(v19, v20, v21, v22, v23);
  v29 = v24;
  if (v24 > 6)
  {
    goto LABEL_10;
  }

  v26 = v9;
  if (((1 << v24) & 0x2A) != 0)
  {
    v6 = v26 * 0.5;
    goto LABEL_11;
  }

  if (((1 << v24) & 0x14) == 0)
  {
    if (v24 == 6)
    {
      objc_opt_class();
      v34 = objc_msgSend_parent(self, v30, v31, v32, v33);
      v35 = TSUCheckedDynamicCast();

      objc_msgSend_chartBodySize(v35, v36, v37, v38, v39);
      v6 = v40;
      v7 = v41;

      goto LABEL_11;
    }

LABEL_10:
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHChartAxisTickMarksLayoutItem calcMinSize]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTickMarksLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 118, 0, "unknown axis position: %ld", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    goto LABEL_11;
  }

  v7 = v26 * 0.5;
LABEL_11:

  v57 = v6;
  v58 = v7;
  result.height = v58;
  result.width = v57;
  return result;
}

- (CGRect)p_effectiveRootedLayoutRect
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_axisPosition(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_location(self, v14, v15, v16, v17);
  objc_msgSend_rootedLayoutRect(v8, v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  objc_msgSend_majorTickmarkLength(self, v31, v23, v25, v27);
  v33 = v32;
  v54 = v32 * 0.5;
  objc_msgSend_layoutOffset(self, v34, v54, v35, v36);
  v38 = v37;
  v39 = *MEMORY[0x277CBF398];
  Width = *(MEMORY[0x277CBF398] + 16);
  Height = *(MEMORY[0x277CBF398] + 24);
  if (v18 == 1)
  {
    if (v13 > 3)
    {
      if (v13 == 4)
      {
        v70.origin.x = v24;
        v70.origin.y = v26;
        v70.size.width = v28;
        v70.size.height = v30;
        MinX = CGRectGetMinX(v70);
        v71.origin.x = v24;
        v71.origin.y = v26;
        v71.size.width = v28;
        v71.size.height = v30;
        MinY = CGRectGetMinY(v71);
        goto LABEL_46;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          Height = v30;
          Width = v28;
          y = v26;
        }

        else
        {
          y = *(MEMORY[0x277CBF398] + 8);
        }

        if (v13 == 6)
        {
          v39 = v24;
        }

        MinX = v39;
        goto LABEL_53;
      }

LABEL_35:
      v61.origin.x = v24;
      v61.origin.y = v26;
      v61.size.width = v28;
      v61.size.height = v30;
      MaxX = v38 + CGRectGetMinX(v61);
      goto LABEL_40;
    }

    if (v13 == 1)
    {
      v67.origin.x = v24;
      v67.origin.y = v26;
      v67.size.width = v28;
      v67.size.height = v30;
      MaxX = CGRectGetMaxX(v67);
      goto LABEL_40;
    }

    if (v13 != 2)
    {
      MinX = *MEMORY[0x277CBF398];
      y = *(MEMORY[0x277CBF398] + 8);
      if (v13 != 3)
      {
        goto LABEL_53;
      }

      v58.origin.x = v24;
      v58.origin.y = v26;
      v58.size.width = v28;
      v58.size.height = v30;
      v45 = CGRectGetMinX(v58);
      goto LABEL_37;
    }

    v78.origin.x = v24;
    v78.origin.y = v26;
    v78.size.width = v28;
    v78.size.height = v30;
    MinX = CGRectGetMinX(v78);
    v79.origin.x = v24;
    v79.origin.y = v26;
    v79.size.width = v28;
    v79.size.height = v30;
    MaxY = CGRectGetMaxY(v79);
LABEL_48:
    y = MaxY;
    v80.origin.x = v24;
    v80.origin.y = v26;
    v80.size.width = v28;
    v80.size.height = v30;
    Width = CGRectGetWidth(v80);
    Height = v54;
    goto LABEL_53;
  }

  if (v18 == 3)
  {
    if (v13 <= 3)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          MinX = *MEMORY[0x277CBF398];
          y = *(MEMORY[0x277CBF398] + 8);
          if (v13 != 3)
          {
            goto LABEL_53;
          }

          v57.origin.x = v24;
          v57.origin.y = v26;
          v57.size.width = v28;
          v57.size.height = v30;
          MaxX = CGRectGetMinX(v57);
LABEL_40:
          MinX = MaxX;
          v68.origin.x = v24;
          v68.origin.y = v26;
          v68.size.width = v28;
          v68.size.height = v30;
          y = CGRectGetMinY(v68);
          v69.origin.x = v24;
          v69.origin.y = v26;
          v69.size.width = v28;
          v69.size.height = v30;
          Height = CGRectGetHeight(v69);
          Width = v54;
          goto LABEL_53;
        }

        v75.origin.x = v24;
        v75.origin.y = v26;
        v75.size.width = v28;
        v75.size.height = v30;
        MinX = CGRectGetMinX(v75);
        v76.origin.x = v24;
        v76.origin.y = v26;
        v76.size.width = v28;
        v76.size.height = v30;
        MinY = CGRectGetMaxY(v76);
LABEL_46:
        Height = v54;
        y = MinY - v54;
        v77.origin.x = v24;
        v77.origin.y = v26;
        v77.size.width = v28;
        v77.size.height = v30;
        Width = CGRectGetWidth(v77);
        goto LABEL_53;
      }

      v62.origin.x = v24;
      v62.origin.y = v26;
      v62.size.width = v28;
      v62.size.height = v30;
      v45 = CGRectGetMaxX(v62);
LABEL_37:
      Width = v54;
      MinX = v45 - v54;
      v63.origin.x = v24;
      v63.origin.y = v26;
      v63.size.width = v28;
      v63.size.height = v30;
      y = CGRectGetMinY(v63);
      v64.origin.x = v24;
      v64.origin.y = v26;
      v64.size.width = v28;
      v64.size.height = v30;
      Height = CGRectGetHeight(v64);
      goto LABEL_53;
    }

    if (v13 != 4)
    {
      if (v13 != 5)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    v65.origin.x = v24;
    v65.origin.y = v26;
    v65.size.width = v28;
    v65.size.height = v30;
    MinX = CGRectGetMinX(v65);
    v66.origin.x = v24;
    v66.origin.y = v26;
    v66.size.width = v28;
    v66.size.height = v30;
    MaxY = CGRectGetMinY(v66);
    goto LABEL_48;
  }

  if (v18 != 2)
  {
    MinX = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    goto LABEL_53;
  }

  if (v13 > 3)
  {
    if (v13 == 4)
    {
      v73.origin.x = v24;
      v73.origin.y = v26;
      v73.size.width = v28;
      v73.size.height = v30;
      MinX = CGRectGetMinX(v73);
      v74.origin.x = v24;
      v74.origin.y = v26;
      v74.size.width = v28;
      v74.size.height = v30;
      v49 = CGRectGetMinY(v74);
LABEL_50:
      y = v49 - v54;
      v83.origin.x = v24;
      v83.origin.y = v26;
      v83.size.width = v28;
      v83.size.height = v30;
      Width = CGRectGetWidth(v83);
      Height = v33;
      goto LABEL_53;
    }

    if (v13 == 5)
    {
      v84.origin.x = v24;
      v84.origin.y = v26;
      v84.size.width = v28;
      v84.size.height = v30;
      v48 = v38 + CGRectGetMinX(v84);
      goto LABEL_52;
    }

LABEL_33:
    MinX = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    if (v13 == 6)
    {
      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      v60 = CGRectInset(v59, -v33, -v33);
      MinX = v60.origin.x;
      y = v60.origin.y;
      Width = v60.size.width;
      Height = v60.size.height;
    }

    goto LABEL_53;
  }

  if (v13 == 1)
  {
    v72.origin.x = v24;
    v72.origin.y = v26;
    v72.size.width = v28;
    v72.size.height = v30;
    v43 = CGRectGetMaxX(v72);
    goto LABEL_43;
  }

  if (v13 == 2)
  {
    v81.origin.x = v24;
    v81.origin.y = v26;
    v81.size.width = v28;
    v81.size.height = v30;
    MinX = CGRectGetMinX(v81);
    v82.origin.x = v24;
    v82.origin.y = v26;
    v82.size.width = v28;
    v82.size.height = v30;
    v49 = CGRectGetMaxY(v82);
    goto LABEL_50;
  }

  MinX = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  if (v13 == 3)
  {
    v56.origin.x = v24;
    v56.origin.y = v26;
    v56.size.width = v28;
    v56.size.height = v30;
    v43 = CGRectGetMinX(v56);
LABEL_43:
    v48 = v43 - v54;
LABEL_52:
    MinX = v48;
    v85.origin.x = v24;
    v85.origin.y = v26;
    v85.size.width = v28;
    v85.size.height = v30;
    y = CGRectGetMinY(v85);
    v86.origin.x = v24;
    v86.origin.y = v26;
    v86.size.width = v28;
    v86.size.height = v30;
    Height = CGRectGetHeight(v86);
    Width = v33;
  }

LABEL_53:

  v50 = MinX;
  v51 = y;
  v52 = Width;
  v53 = Height;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (CGRect)calcDrawingRect
{
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  v13 = objc_msgSend_axisPosition(v8, v9, v10, v11, v12);
  objc_msgSend_p_effectiveRootedLayoutRect(self, v14, v15, v16, v17);
  rect = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_msgSend_rootedLayoutRect(self, v25, v18, v19, v21);
  v26 = MEMORY[0x277CBF398];
  v31 = objc_msgSend_chartInfo(self, v27, v28, v29, v30);
  v36 = objc_msgSend_objectValueForProperty_(v31, v32, v33, v34, v35, 1080);

  v41 = 0.0;
  if (v36 && objc_msgSend_shouldRender(v36, v37, v38, v39, v40))
  {
    objc_msgSend_width(v36, v37, v38, v39, v40);
    v39 = 0.5;
    v41 = v38 * 0.5;
  }

  width = *(v26 + 16);
  height = *(v26 + 24);
  v44 = objc_msgSend_cap(v36, v37, v38, v39, v40);
  if (v13 <= 6)
  {
    if (((1 << v13) & 0x2A) != 0)
    {
      v46 = -v41;
      if (v44)
      {
        v45 = -v41;
      }

      else
      {
        v45 = 0.0;
      }

      goto LABEL_13;
    }

    if (((1 << v13) & 0x14) != 0)
    {
      v45 = -v41;
      if (v44)
      {
        v46 = -v41;
      }

      else
      {
        v46 = 0.0;
      }

LABEL_13:
      v56.origin.x = rect;
      v56.origin.y = v20;
      v56.size.width = v22;
      v56.size.height = v24;
      v57 = CGRectInset(v56, v45, v46);
      width = v57.size.width;
      height = v57.size.height;
      goto LABEL_16;
    }

    if (v13 == 6)
    {
      height = v24;
      width = v22;
    }
  }

LABEL_16:
  TSUSubtractPoints();
  v48 = v47;
  v50 = v49;

  v51 = v48;
  v52 = v50;
  v53 = width;
  v54 = height;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (CGAffineTransform)transformForRenderingOutElementSize:(SEL)size outClipRect:(CGSize *)rect
{
  v122 = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CBF398];
  v11 = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  v13 = *(MEMORY[0x277CBF398] + 24);
  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = MEMORY[0x277CBF2C0];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v17;
  v18 = *(v16 + 32);
  *&retstr->tx = v18;
  v19 = objc_msgSend_parent(self, size, *&v18, *&v17, v5);
  v24 = objc_msgSend_model(self, v20, v21, v22, v23);
  v29 = objc_msgSend_axisID(v19, v25, v26, v27, v28);
  v34 = objc_msgSend_axisForID_(v24, v30, v31, v32, v33, v29);

  LODWORD(v29) = objc_msgSend_intValueForProperty_defaultValue_(v34, v35, v36, v37, v38, 1055, 0);
  v43 = objc_msgSend_chartInfo(self, v39, v40, v41, v42);
  v48 = objc_msgSend_objectValueForProperty_(v43, v44, v45, v46, v47, 1080);

  if (v29)
  {
    if (v48)
    {
      if (objc_msgSend_shouldRender(v48, v49, v50, v51, v52))
      {
        v57 = objc_msgSend_axisPosition(v19, v53, v54, v55, v56);
        objc_msgSend_p_effectiveRootedLayoutRect(self, v58, v59, v60, v61);
        x = v123.origin.x;
        y = v123.origin.y;
        rect = v123.size.width;
        height = v123.size.height;
        if (!CGRectIsNull(v123))
        {
          if (v57 <= 3)
          {
            switch(v57)
            {
              case 1:
                CGAffineTransformMakeRotation(&v117, 1.57079633);
                rectCopy3 = rect;
                CGAffineTransformMakeTranslation(&v118, rect, 0.0);
                CGAffineTransformMakeScale(&v119, 1.0, -1.0);
                rectCopy4 = 0.0;
                goto LABEL_15;
              case 2:
                CGAffineTransformMakeScale(&v117, 1.0, -1.0);
                v81 = height;
                CGAffineTransformMakeTranslation(&v118, 0.0, height);
                CGAffineTransformMakeTranslation(&v119, x, y);
                sub_27628CF0C(&v117, 3, retstr);
                v88 = *&retstr->c;
                *&v115.a = *&retstr->a;
                *&v115.c = v88;
                *&v115.tx = *&retstr->tx;
                CGAffineTransformInvert(&v116, &v115);
                v83 = x;
                v84 = y;
                rectCopy5 = rect;
                goto LABEL_18;
              case 3:
                CGAffineTransformMakeRotation(&v117, 1.57079633);
                rectCopy3 = rect;
                CGAffineTransformMakeTranslation(&v118, rect, 0.0);
                CGAffineTransformMakeScale(&v119, -1.0, -1.0);
                rectCopy4 = rect;
LABEL_15:
                v81 = height;
                CGAffineTransformMakeTranslation(&v120, rectCopy4, height);
                CGAffineTransformMakeTranslation(&v121, x, y);
                sub_27628CF0C(&v117, 5, retstr);
                v82 = *&retstr->c;
                *&v115.a = *&retstr->a;
                *&v115.c = v82;
                *&v115.tx = *&retstr->tx;
                CGAffineTransformInvert(&v116, &v115);
                v83 = x;
                v84 = y;
                rectCopy5 = rectCopy3;
LABEL_18:
                v87 = v81;
                goto LABEL_19;
            }

LABEL_22:
            objc_msgSend_rootedDrawingRect(self, v64, v65, v66, v67, *&rect);
            v104 = v103;
            v106 = v105;
            v108 = v107;
            v110 = v109;
            v111 = *&retstr->c;
            *&v116.a = *&retstr->a;
            *&v116.c = v111;
            *&v116.tx = *&retstr->tx;
            CGAffineTransformInvert(&v117, &v116);
            v124.origin.x = v104;
            v124.origin.y = v106;
            v124.size.width = v108;
            v124.size.height = v110;
            v125 = CGRectApplyAffineTransform(v124, &v117);
            v10 = v125.origin.x;
            v11 = v125.origin.y;
            width = v125.size.width;
            v13 = v125.size.height;
            goto LABEL_23;
          }

          switch(v57)
          {
            case 4:
              CGAffineTransformMakeTranslation(&v117, x, y);
              sub_27628CF0C(&v117, 1, retstr);
              v86 = *&retstr->c;
              *&v115.a = *&retstr->a;
              *&v115.c = v86;
              *&v115.tx = *&retstr->tx;
              CGAffineTransformInvert(&v116, &v115);
              v83 = x;
              v84 = y;
              rectCopy5 = rect;
              v87 = height;
LABEL_19:
              *&v65 = CGRectApplyAffineTransform(*&v83, &v116);
              v14 = v67;
              v15 = v89;
              goto LABEL_22;
            case 5:
              v90 = MEMORY[0x277D81150];
              v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCHChartAxisTickMarksLayoutItem transformForRenderingOutElementSize:outClipRect:]");
              v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTickMarksLayoutItem.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v95, v96, v97, v98, v71, v76, 315, 0, "Polar radius tick marks rendering isn't expected to call this API", *&rect);
              break;
            case 6:
              v70 = MEMORY[0x277D81150];
              v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCHChartAxisTickMarksLayoutItem transformForRenderingOutElementSize:outClipRect:]");
              v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisTickMarksLayoutItem.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 319, 0, "Polar angle tick marks rendering isn't expected to call this API", *&rect);
              break;
            default:
              goto LABEL_22;
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101, v102);
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  if (a5)
  {
    a5->origin.x = v10;
    a5->origin.y = v11;
    a5->size.width = width;
    a5->size.height = v13;
  }

  if (rect)
  {
    rect->width = v14;
    rect->height = v15;
  }

  return result;
}

@end