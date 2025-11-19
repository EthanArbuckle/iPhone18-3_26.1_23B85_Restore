@interface TSCH3DChartSceneInfo
+ (id)infoWithScene:(id)a3 chartInfo:(id)a4 chartType:(id)a5 seriesType:(id)a6 layoutSettings:(id *)a7 styleProvidingSource:(id)a8;
- (TSCH3DChartSceneInfo)initWithScene:(id)a3 chartInfo:(id)a4 chartType:(id)a5 seriesType:(id)a6 layoutSettings:(id *)a7 styleProvidingSource:(id)a8;
- (TSWPStyleProviding)styleProvidingSource;
@end

@implementation TSCH3DChartSceneInfo

+ (id)infoWithScene:(id)a3 chartInfo:(id)a4 chartType:(id)a5 seriesType:(id)a6 layoutSettings:(id *)a7 styleProvidingSource:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = objc_alloc(objc_opt_class());
  v24 = *a7;
  v22 = objc_msgSend_initWithScene_chartInfo_chartType_seriesType_layoutSettings_styleProvidingSource_(v18, v19, *&v24.var0, v20, v21, v13, v14, v15, v16, &v24, v17);

  return v22;
}

- (TSCH3DChartSceneInfo)initWithScene:(id)a3 chartInfo:(id)a4 chartType:(id)a5 seriesType:(id)a6 layoutSettings:(id *)a7 styleProvidingSource:(id)a8
{
  v23 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = TSCH3DChartSceneInfo;
  v19 = [(TSCH3DChartSceneInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scene, a3);
    objc_storeStrong(&v20->_chartInfo, a4);
    objc_storeStrong(&v20->_chartType, a5);
    objc_storeStrong(&v20->_seriesType, a6);
    v21 = *&a7->var0;
    v20->_layoutSettings.max3DLimitingSeries = a7->var9;
    *&v20->_layoutSettings.forceOmitLegend = v21;
    objc_storeWeak(&v20->_styleProvidingSource, v18);
  }

  return v20;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end