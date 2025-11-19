@interface TSCHMultiDataChartRep
- (BOOL)isHorizontalChart;
- (TSCHMultiDataChartRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)imageFromFill:(id)a3 forResolutionWithBounds:(CGRect)a4 toRepElementTransform:(CGAffineTransform *)a5 skipIntegral:(BOOL)a6 returningFillFrame:(CGRect *)a7;
- (id)layerIdToLayerMap;
- (id)p_chartModel;
- (id)p_elementLayers;
- (id)previousOutsideBodyBounds;
- (void)dealloc;
- (void)didEndZooming;
- (void)invalidateAnimationState;
- (void)willBeginZooming;
@end

@implementation TSCHMultiDataChartRep

- (TSCHMultiDataChartRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TSCHMultiDataChartRep;
  v8 = [(TSCHChartRep *)&v13 initWithLayout:v6 canvas:v7];
  v9 = v8;
  if (v8)
  {
    v8->_elementLayersMultiDataSetIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8->_gridDirection = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexedElements = v9->_indexedElements;
    v9->_indexedElements = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_referenceLinesToRender)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHMultiDataChartRep dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 184, 0, "expected nil value for '%{public}s'", "_referenceLinesToRender");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_referenceLineLabelsSearchSelectionsToRender)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHMultiDataChartRep dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 185, 0, "expected nil value for '%{public}s'", "_referenceLineLabelsSearchSelectionsToRender");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCHMultiDataChartRep;
  [(TSCHChartRep *)&v36 dealloc];
}

- (id)p_chartModel
{
  v5 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHMultiDataChartRep p_chartModel]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 190, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v10;
}

- (BOOL)isHorizontalChart
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chart(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_chartType(v10, v11, v12, v13, v14);
  isHorizontal = objc_msgSend_isHorizontal(v15, v16, v17, v18, v19);

  return isHorizontal;
}

- (id)p_elementLayers
{
  v107 = *MEMORY[0x277D85DE8];
  v99 = objc_msgSend_allKeys(self->_indexedElements, a2, v2, v3, v4);
  if (!v99)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHMultiDataChartRep p_elementLayers]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 200, 0, "invalid nil value for '%{public}s'", "keys");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v98 = objc_msgSend_sortedArrayUsingComparator_(v99, v6, v7, v8, v9, &unk_28851EFC0);
  v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
  v100 = objc_msgSend_array(MEMORY[0x277CBEB18], v30, v31, v32, v33);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v98;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, v35, v36, v37, &v102, v106, 16);
  if (v39)
  {
    v43 = *v103;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v103 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v102 + 1) + 8 * i);
        v47 = objc_msgSend_objectForKeyedSubscript_(self->_indexedElements, v38, v40, v41, v42, v45);
        if (!v47)
        {
          v51 = MEMORY[0x277D81150];
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v48, v49, v50, "[TSCHMultiDataChartRep p_elementLayers]");
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRep.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 223, 0, "invalid nil value for '%{public}s'", "element");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
        }

        v66 = objc_msgSend_elementLayer(v47, v46, v48, v49, v50);
        objc_msgSend_addObject_(v29, v67, v68, v69, v70, v66);

        v75 = objc_msgSend_seriesIndex(v45, v71, v72, v73, v74);
        if (objc_msgSend_overlayLabelsForSeriesIndex_(self, v76, v77, v78, v79, v75))
        {
          v84 = objc_msgSend_labelLayer(v47, v80, v81, v82, v83);
          objc_msgSend_addObject_(v100, v85, v86, v87, v88, v84);
        }

        else
        {
          v84 = objc_msgSend_labelLayer(v47, v80, v81, v82, v83);
          objc_msgSend_addObject_(v29, v89, v90, v91, v92, v84);
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v40, v41, v42, &v102, v106, 16);
    }

    while (v39);
  }

  objc_msgSend_addObjectsFromArray_(v29, v93, v94, v95, v96, v100);

  return v29;
}

- (id)layerIdToLayerMap
{
  layerIdToLayerMap = self->_layerIdToLayerMap;
  if (!layerIdToLayerMap)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = objc_msgSend_maxNumberOfReferenceLines(TSCHReferenceLine, v5, v6, v7, v8);
    v14 = objc_msgSend_initWithCapacity_(v4, v10, v11, v12, v13, 3 * v9);
    v15 = self->_layerIdToLayerMap;
    self->_layerIdToLayerMap = v14;

    layerIdToLayerMap = self->_layerIdToLayerMap;
  }

  return layerIdToLayerMap;
}

- (id)previousOutsideBodyBounds
{
  previousOutsideBodyBounds = self->_previousOutsideBodyBounds;
  if (!previousOutsideBodyBounds)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = objc_msgSend_maxNumberOfReferenceLines(TSCHReferenceLine, v5, v6, v7, v8);
    v14 = objc_msgSend_initWithCapacity_(v4, v10, v11, v12, v13, 3 * v9);
    v15 = self->_previousOutsideBodyBounds;
    self->_previousOutsideBodyBounds = v14;

    previousOutsideBodyBounds = self->_previousOutsideBodyBounds;
  }

  return previousOutsideBodyBounds;
}

- (id)imageFromFill:(id)a3 forResolutionWithBounds:(CGRect)a4 toRepElementTransform:(CGAffineTransform *)a5 skipIntegral:(BOOL)a6 returningFillFrame:(CGRect *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v16 = 0;
  if (v15 && width > 0.0 && height > 0.0)
  {
    v17 = *&a5->c;
    *&transform.a = *&a5->a;
    *&transform.c = v17;
    *&transform.tx = *&a5->tx;
    v18 = x;
    *&v17 = y;
    v19 = width;
    v20 = height;
    v58 = CGRectApplyAffineTransform(*(&v17 - 8), &transform);
    v22 = v58.origin.x;
    v23 = v58.origin.y;
    if (!a6)
    {
      objc_msgSend_integralFillRenderingRectFromElementRect_(TSCHRenderUtilities, v21, v58.origin.x, v58.origin.y, v58.size.width, v58.size.height);
      v22 = v24;
      v23 = v25;
    }

    sub_27628CEF8();
    v27 = v26;
    v29 = v28;
    objc_msgSend_contentsScale(self, v30, v26, v28, v31);
    v33 = v32;
    TSUMultiplySizeScalar();
    sub_27628CEF8();
    v38 = objc_msgSend_canvas(self, v34, v35, v36, v37);
    v39 = sub_276320100(v38);

    if (v39)
    {
      CGContextSaveGState(v39);
      CGContextScaleCTM(v39, v33, v33);
      v59.origin.x = v22;
      v59.origin.y = v23;
      v59.size.width = v27;
      v59.size.height = v29;
      MinX = CGRectGetMinX(v59);
      v60.origin.x = v22;
      v60.origin.y = v23;
      v60.size.width = v27;
      v60.size.height = v29;
      MinY = CGRectGetMinY(v60);
      CGContextTranslateCTM(v39, -MinX, -MinY);
      v42 = *&a5->c;
      *&transform.a = *&a5->a;
      *&transform.c = v42;
      *&transform.tx = *&a5->tx;
      CGAffineTransformInvert(&v55, &transform);
      transform = v55;
      v61.origin.x = v22;
      v61.origin.y = v23;
      v61.size.width = v27;
      v61.size.height = v29;
      v62 = CGRectApplyAffineTransform(v61, &transform);
      v43 = v62.origin.x;
      v44 = v62.origin.y;
      v45 = v62.size.width;
      v46 = v62.size.height;
      *&v62.origin.y = *&a5->c;
      *&transform.a = *&a5->a;
      *&transform.c = *&v62.origin.y;
      *&transform.tx = *&a5->tx;
      CGContextConcatCTM(v39, &transform);
      v47 = sub_2762A1EB8(v15, v39, v43, v44, v45, v46);

      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v48, v43, v44, v45, v47, v39, v46);
      CGContextRestoreGState(v39);
      Image = CGBitmapContextCreateImage(v39);
      CGContextRelease(v39);
      v16 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v50, v51, v52, v53, Image);
      CGImageRelease(Image);
      if (a7)
      {
        a7->origin.x = v22;
        a7->origin.y = v23;
        v15 = v47;
        a7->size.width = v27;
        a7->size.height = v29;
      }

      else
      {
        v15 = v47;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)willBeginZooming
{
  v2.receiver = self;
  v2.super_class = TSCHMultiDataChartRep;
  [(TSCHChartRep *)&v2 willBeginZooming];
}

- (void)didEndZooming
{
  v2.receiver = self;
  v2.super_class = TSCHMultiDataChartRep;
  [(TSCHChartRep *)&v2 didEndZooming];
}

- (void)invalidateAnimationState
{
  v3.receiver = self;
  v3.super_class = TSCHMultiDataChartRep;
  [(TSCHMultiDataChartRep *)&v3 invalidateAnimationState];
  self->_elementLayersMultiDataSetIndex = 0x7FFFFFFFFFFFFFFFLL;
}

@end