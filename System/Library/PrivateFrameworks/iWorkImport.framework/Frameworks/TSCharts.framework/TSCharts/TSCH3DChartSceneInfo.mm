@interface TSCH3DChartSceneInfo
+ (id)infoWithScene:(id)scene chartInfo:(id)info chartType:(id)type seriesType:(id)seriesType layoutSettings:(id *)settings styleProvidingSource:(id)source;
- (TSCH3DChartSceneInfo)initWithScene:(id)scene chartInfo:(id)info chartType:(id)type seriesType:(id)seriesType layoutSettings:(id *)settings styleProvidingSource:(id)source;
- (TSWPStyleProviding)styleProvidingSource;
@end

@implementation TSCH3DChartSceneInfo

+ (id)infoWithScene:(id)scene chartInfo:(id)info chartType:(id)type seriesType:(id)seriesType layoutSettings:(id *)settings styleProvidingSource:(id)source
{
  sceneCopy = scene;
  infoCopy = info;
  typeCopy = type;
  seriesTypeCopy = seriesType;
  sourceCopy = source;
  v18 = objc_alloc(objc_opt_class());
  v24 = *settings;
  v22 = objc_msgSend_initWithScene_chartInfo_chartType_seriesType_layoutSettings_styleProvidingSource_(v18, v19, *&v24.var0, v20, v21, sceneCopy, infoCopy, typeCopy, seriesTypeCopy, &v24, sourceCopy);

  return v22;
}

- (TSCH3DChartSceneInfo)initWithScene:(id)scene chartInfo:(id)info chartType:(id)type seriesType:(id)seriesType layoutSettings:(id *)settings styleProvidingSource:(id)source
{
  sceneCopy = scene;
  infoCopy = info;
  typeCopy = type;
  seriesTypeCopy = seriesType;
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = TSCH3DChartSceneInfo;
  v19 = [(TSCH3DChartSceneInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scene, scene);
    objc_storeStrong(&v20->_chartInfo, info);
    objc_storeStrong(&v20->_chartType, type);
    objc_storeStrong(&v20->_seriesType, seriesType);
    v21 = *&settings->var0;
    v20->_layoutSettings.max3DLimitingSeries = settings->var9;
    *&v20->_layoutSettings.forceOmitLegend = v21;
    objc_storeWeak(&v20->_styleProvidingSource, sourceCopy);
  }

  return v20;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvidingSource);

  return WeakRetained;
}

@end