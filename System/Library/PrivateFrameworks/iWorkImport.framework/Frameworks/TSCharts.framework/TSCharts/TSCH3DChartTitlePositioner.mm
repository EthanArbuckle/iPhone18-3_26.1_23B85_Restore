@interface TSCH3DChartTitlePositioner
+ (TSCH3DChartTitlePositioner)positionerWithInfo:(id)a3 scene:(id)a4;
- (BOOL)hasScene:(id)a3;
- (TSCH3DChartTitlePositioner)initWithInfo:(id)a3 scene:(id)a4;
- (TSCH3DScene)scene;
- (double)wrapWidthForSize:(CGSize)a3 labelTransform:(const void *)a4;
- (id).cxx_construct;
- (tvec2<float>)sizeOfCategoryAxisLabels;
- (tvec2<float>)sizeOfSeriesLabels;
- (tvec2<float>)sizeOfValueAxisLabels;
- (void)applyParagraphStyle:(id)a3 onLabelTransform:(void *)a4 alignmentDimension:(int)a5;
@end

@implementation TSCH3DChartTitlePositioner

+ (TSCH3DChartTitlePositioner)positionerWithInfo:(id)a3 scene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithInfo_scene_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DChartTitlePositioner)initWithInfo:(id)a3 scene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = TSCH3DChartTitlePositioner;
  v9 = [(TSCH3DChartTitlePositioner *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_info, a3);
    objc_storeWeak(&v10->_weakScene, v8);
    __asm { FMOV            V0.2S, #-1.0 }

    v10->_cachedSeriesLabelsSize = _D0;
    __asm { FMOV            V0.4S, #-1.0 }

    *&v10->_cachedCategoryAxisLabelsSize.var0.var0 = _Q0;
  }

  return v10;
}

- (TSCH3DScene)scene
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v4 = TSUCheckedDynamicCast();

  if (!v4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartTitlePositioner scene]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartTitleSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 628, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  return v4;
}

- (BOOL)hasScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartTitlePositioner hasScene:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartTitleSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 633, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  if (WeakRetained)
  {
    v25 = WeakRetained == v5;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v26;
}

- (void)applyParagraphStyle:(id)a3 onLabelTransform:(void *)a4 alignmentDimension:(int)a5
{
  v10 = objc_msgSend_intValueForProperty_(a3, a2, v5, v6, v7, 86);
  if (v10)
  {
    if (v10 != 1)
    {
      return;
    }

    v11 = 32;
    v12 = 1.0;
  }

  else
  {
    v11 = 16;
    v12 = 0.0;
  }

  *(a4 + a5) = v12;
  *(a4 + 5) |= v11;
}

- (double)wrapWidthForSize:(CGSize)a3 labelTransform:(const void *)a4
{
  if (*(a4 + 28))
  {
    a3.width = a3.height;
  }

  return a3.width;
}

- (tvec2<float>)sizeOfCategoryAxisLabels
{
  v6 = v2;
  *&v3 = self->_cachedCategoryAxisLabelsSize.var0.var0;
  *&v4 = self->_cachedCategoryAxisLabelsSize.var1.var0;
  LODWORD(v5) = -1.0;
  if (*&v3 == -1.0 && *&v4 == -1.0)
  {
    v8 = self;
    self = objc_msgSend_sizeOfLabelsForInfo_onlyHeight_(TSCHChartCategoryAxis, a2, v3, v4, v5, self->_info, 0);
    *&v3 = v9;
    LODWORD(v4) = v10;
    v8->_cachedCategoryAxisLabelsSize.var0.var0 = v9;
    v8->_cachedCategoryAxisLabelsSize.var1.var0 = *&v4;
  }

  *v6 = LODWORD(v3);
  v6[1] = LODWORD(v4);
  return self;
}

- (tvec2<float>)sizeOfValueAxisLabels
{
  v6 = v2;
  *&v3 = self->_cachedValueAxisLabelsSize.var0.var0;
  *&v4 = self->_cachedValueAxisLabelsSize.var1.var0;
  LODWORD(v5) = -1.0;
  if (*&v3 == -1.0 && *&v4 == -1.0)
  {
    v8 = self;
    self = objc_msgSend_sizeOfLabelsForInfo_onlyHeight_(TSCHChartValueAxis, a2, v3, v4, v5, self->_info, 0);
    *&v3 = v9;
    LODWORD(v4) = v10;
    v8->_cachedValueAxisLabelsSize.var0.var0 = v9;
    v8->_cachedValueAxisLabelsSize.var1.var0 = *&v4;
  }

  *v6 = LODWORD(v3);
  v6[1] = LODWORD(v4);
  return self;
}

- (tvec2<float>)sizeOfSeriesLabels
{
  v6 = v2;
  *&v3 = self->_cachedSeriesLabelsSize.var0.var0;
  *&v4 = self->_cachedSeriesLabelsSize.var1.var0;
  LODWORD(v5) = -1.0;
  if (*&v3 == -1.0 && *&v4 == -1.0)
  {
    v8 = self;
    self = objc_msgSend_sizeOfSeriesLabelsForInfo_onlyHeight_(TSCHChartCategoryAxis, a2, v3, v4, v5, self->_info, 0);
    *&v3 = v9;
    LODWORD(v4) = v10;
    v8->_cachedSeriesLabelsSize.var0.var0 = v9;
    v8->_cachedSeriesLabelsSize.var1.var0 = *&v4;
  }

  *v6 = LODWORD(v3);
  v6[1] = LODWORD(v4);
  return self;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end