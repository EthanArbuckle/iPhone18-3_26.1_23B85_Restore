@interface TSCHMultiDataBubbleChartRep
- (BOOL)overlayLabelsForSeriesIndex:(unint64_t)index;
- (id)interpolations;
- (void)updateAppearanceForElementLayer:(id)layer seriesIndex:(unint64_t)index;
@end

@implementation TSCHMultiDataBubbleChartRep

- (void)updateAppearanceForElementLayer:(id)layer seriesIndex:(unint64_t)index
{
  layerCopy = layer;
  v56.receiver = self;
  v56.super_class = TSCHMultiDataBubbleChartRep;
  [(TSCHMultiDataBubbleChartRep *)&v56 updateAppearanceForElementLayer:layerCopy seriesIndex:index];
  v11 = objc_msgSend_chartLayout(self, v7, v8, v9, v10);
  v16 = objc_msgSend_model(v11, v12, v13, v14, v15);

  if (!v16)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHMultiDataBubbleChartRep updateAppearanceForElementLayer:seriesIndex:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataBubbleChartRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 56, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = objc_msgSend_lineAreaModelCacheForSeries_(v16, v17, v18, v19, v20, index);
  objc_opt_class();
  v41 = objc_msgSend_symbolFill(v36, v37, v38, v39, v40);
  v42 = TSUDynamicCast();
  v47 = objc_msgSend_symbolStroke(v36, v43, v44, v45, v46);
  objc_msgSend_viewScale(self, v48, v49, v50, v51);
  objc_msgSend_setFill_stroke_withViewScale_(layerCopy, v52, v53, v54, v55, v42, v47);
}

- (id)interpolations
{
  v5 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], a2, v2, v3, v4, *MEMORY[0x277CDA7C8]);
  v10 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v6, v7, v8, v9, *MEMORY[0x277CDA7B8]);
  v15 = objc_msgSend_interpolationsWithOverallTimingFunction_individualTimingFunction_(TSCHMultiDataChartRepInterpolations, v11, v12, v13, v14, v5, v10);

  return v15;
}

- (BOOL)overlayLabelsForSeriesIndex:(unint64_t)index
{
  v7 = objc_msgSend_chartLayout(self, a2, v3, v4, v5);
  v12 = objc_msgSend_model(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_lineAreaModelCacheForSeries_(v12, v13, v14, v15, v16, index);
  LOBYTE(index) = objc_msgSend_showLabelsInFront(v17, v18, v19, v20, v21);

  return index;
}

@end