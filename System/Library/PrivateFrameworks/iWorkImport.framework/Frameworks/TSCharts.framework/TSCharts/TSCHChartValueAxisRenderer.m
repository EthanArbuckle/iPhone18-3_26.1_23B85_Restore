@interface TSCHChartValueAxisRenderer
- (double)unitSpaceValueForAxis:(id)a3 index:(unint64_t)a4;
- (id)labelStringForAxis:(id)a3 index:(unint64_t)a4;
- (id)labelsLayoutItem;
- (id)transparencyLayers;
- (id)valueAxisLayoutItem;
- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5;
@end

@implementation TSCHChartValueAxisRenderer

- (id)valueAxisLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (id)transparencyLayers
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v20.receiver = self;
  v20.super_class = TSCHChartValueAxisRenderer;
  v4 = [(TSCHChartAxisRenderer *)&v20 transparencyLayers];
  v9 = objc_msgSend_initWithArray_(v3, v5, v6, v7, v8, v4);

  objc_msgSend_addObject_(v9, v10, v11, v12, v13, &unk_28856BFC0);
  v18 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v14, v15, v16, v17, v9);

  return v18;
}

- (id)labelsLayoutItem
{
  v5 = objc_msgSend_valueAxisLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_axisValueLabelsLayoutItem(v5, v6, v7, v8, v9);

  return v10;
}

- (double)unitSpaceValueForAxis:(id)a3 index:(unint64_t)a4
{
  v5 = a3;
  v10 = objc_msgSend_majorGridLocations(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v12, v13, v14, a4);

  if (v15)
  {
    objc_msgSend_doubleValue(v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = NAN;
  }

  objc_msgSend_unitSpaceValueForDataSpaceValue_(v5, v16, v20, v18, v19);
  v22 = v21;

  return v22;
}

- (id)labelStringForAxis:(id)a3 index:(unint64_t)a4
{
  v5 = a3;
  v10 = objc_msgSend_majorGridLocations(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v12, v13, v14, a4);

  v20 = objc_msgSend_formattedStringForAxisValue_(v5, v16, v17, v18, v19, v15);

  return v20;
}

- (void)drawIntoLayer:(int)a3 inContext:(CGContext *)a4 visible:(CGRect)a5
{
  v97.receiver = self;
  v97.super_class = TSCHChartValueAxisRenderer;
  [(TSCHChartAxisRenderer *)&v97 drawIntoLayer:a5.origin.x inContext:a5.origin.y visible:a5.size.width, a5.size.height];
  if (a3 == 0x7FFFFFFF)
  {
    v12 = objc_msgSend_valueAxisLayoutItem(self, v8, v9, v10, v11);
    v17 = objc_msgSend_labelsLayoutItem(self, v13, v14, v15, v16);
    v22 = objc_msgSend_model(self, v18, v19, v20, v21);
    v27 = objc_msgSend_axisID(v12, v23, v24, v25, v26);
    v32 = objc_msgSend_axisForID_(v22, v28, v29, v30, v31, v27);

    v37 = objc_msgSend_numberOfLabelsForAxis_(v17, v33, v34, v35, v36, v32);
    if (objc_msgSend_intValueForProperty_defaultValue_(v32, v38, v39, v40, v41, 1052, 1) && v37)
    {
      v88 = v12;
      v46 = objc_msgSend_intValueForProperty_defaultValue_(v32, v42, v43, v44, v45, 1034, 0);
      v51 = objc_msgSend_chartInfo(self, v47, v48, v49, v50);
      v89 = objc_msgSend_paragraphStyleAtIndex_(v51, v52, v53, v54, v55, v46);

      v60 = objc_msgSend_sharedText(TSCHText, v56, v57, v58, v59);
      LODWORD(v46) = objc_msgSend_intValueForProperty_defaultValue_(v32, v61, v62, v63, v64, 1056, 1);
      v69 = objc_msgSend_stride(v17, v65, v66, v67, v68);
      if (v46)
      {
        v70 = 0;
      }

      else
      {
        v70 = v69;
      }

      if (v70 < v37)
      {
        v71 = v69;
        v72 = *MEMORY[0x277CBF348];
        v73 = *(MEMORY[0x277CBF348] + 8);
        v91 = *(MEMORY[0x277CBF398] + 16);
        v92 = *MEMORY[0x277CBF398];
        v90 = *MEMORY[0x277CBF3A8];
        do
        {
          v75 = objc_autoreleasePoolPush();
          v96.origin = v92;
          v96.size = v91;
          v95 = v90;
          memset(&v94, 0, sizeof(v94));
          if (v17)
          {
            objc_msgSend_transformForRenderingLabel_outElementSize_outClipRect_(v17, v74, 0.0, *&v90, v76, v70, &v95, &v96);
          }

          if (!CGRectIsNull(v96))
          {
            v81 = objc_msgSend_labelStringForAxis_index_(v17, v77, v78, v79, v80, v32, v70);
            CGContextSaveGState(a4);
            transform = v94;
            CGContextConcatCTM(a4, &transform);
            CGContextClipToRectSafe();
            objc_msgSend_viewScale(self, v82, v83, v84, v85);
            objc_msgSend_drawText_paragraphStyle_intoContext_atPosition_viewScale_(v60, v86, v72, v73, v87, v81, v89, a4);
            CGContextRestoreGState(a4);
          }

          objc_autoreleasePoolPop(v75);
          v70 += v71;
        }

        while (v70 < v37);
      }

      v12 = v88;
    }
  }
}

@end