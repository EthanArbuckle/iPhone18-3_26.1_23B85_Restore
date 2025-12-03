@interface TSCH3DChartSceneAreaLayoutItemCache
+ (id)cacheWithCacheValues:(const void *)values;
- (CGSize)chartBodyLayoutSize;
- (CGSize)layoutSize;
- (CGSize)requestChartBodyLayoutSize;
- (CGSize)requestLayoutSize;
- (TSCH3DChartSceneAreaLayoutItemCache)initWithCacheValues:(const void *)values;
- (id).cxx_construct;
- (tvec4<float>)infoChartScale;
@end

@implementation TSCH3DChartSceneAreaLayoutItemCache

+ (id)cacheWithCacheValues:(const void *)values
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithCacheValues_(v4, v5, v6, v7, v8, values);

  return v9;
}

- (TSCH3DChartSceneAreaLayoutItemCache)initWithCacheValues:(const void *)values
{
  v9.receiver = self;
  v9.super_class = TSCH3DChartSceneAreaLayoutItemCache;
  result = [(TSCH3DChartSceneAreaLayoutItemCache *)&v9 init];
  if (result)
  {
    result->_values.infoChartScale.var0.var0 = *values;
    result->_values.infoChartScale.var1.var0 = *(values + 1);
    result->_values.infoChartScale.var2.var0 = *(values + 2);
    result->_values.infoChartScale.var3.var0 = *(values + 3);
    result->_values.containingViewport.var0.var0 = *(values + 4);
    result->_values.containingViewport.var1.var0 = *(values + 5);
    result->_values.chartBodyLayoutOffsetInChartAreaLayoutSpace.var0.var0 = *(values + 6);
    result->_values.chartBodyLayoutOffsetInChartAreaLayoutSpace.var1.var0 = *(values + 7);
    v5 = *(values + 2);
    v6 = *(values + 3);
    v7 = *(values + 4);
    result->_values.requestChartBodyLayoutSize = *(values + 5);
    result->_values.chartBodyLayoutSize = v7;
    result->_values.requestLayoutSize = v6;
    result->_values.layoutSize = v5;
    result->_values.modelSize.var0.var0 = *(values + 24);
    result->_values.modelSize.var1.var0 = *(values + 25);
    v8 = *(values + 104);
    *(&result->_values.layoutSettings.maxDepthRatioType + 1) = *(values + 113);
    *&result->_values.layoutSettings.forceOmitLegend = v8;
  }

  return result;
}

- (tvec4<float>)infoChartScale
{
  *v2 = self->_values.infoChartScale;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (CGSize)layoutSize
{
  width = self->_values.layoutSize.width;
  height = self->_values.layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)requestLayoutSize
{
  width = self->_values.requestLayoutSize.width;
  height = self->_values.requestLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)chartBodyLayoutSize
{
  width = self->_values.chartBodyLayoutSize.width;
  height = self->_values.chartBodyLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)requestChartBodyLayoutSize
{
  width = self->_values.requestLayoutSize.width;
  height = self->_values.requestLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end