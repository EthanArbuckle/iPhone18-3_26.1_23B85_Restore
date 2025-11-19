@interface TSCH3DChartSceneAreaLayoutItemCache
+ (id)cacheWithCacheValues:(const void *)a3;
- (CGSize)chartBodyLayoutSize;
- (CGSize)layoutSize;
- (CGSize)requestChartBodyLayoutSize;
- (CGSize)requestLayoutSize;
- (TSCH3DChartSceneAreaLayoutItemCache)initWithCacheValues:(const void *)a3;
- (id).cxx_construct;
- (tvec4<float>)infoChartScale;
@end

@implementation TSCH3DChartSceneAreaLayoutItemCache

+ (id)cacheWithCacheValues:(const void *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithCacheValues_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DChartSceneAreaLayoutItemCache)initWithCacheValues:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = TSCH3DChartSceneAreaLayoutItemCache;
  result = [(TSCH3DChartSceneAreaLayoutItemCache *)&v9 init];
  if (result)
  {
    result->_values.infoChartScale.var0.var0 = *a3;
    result->_values.infoChartScale.var1.var0 = *(a3 + 1);
    result->_values.infoChartScale.var2.var0 = *(a3 + 2);
    result->_values.infoChartScale.var3.var0 = *(a3 + 3);
    result->_values.containingViewport.var0.var0 = *(a3 + 4);
    result->_values.containingViewport.var1.var0 = *(a3 + 5);
    result->_values.chartBodyLayoutOffsetInChartAreaLayoutSpace.var0.var0 = *(a3 + 6);
    result->_values.chartBodyLayoutOffsetInChartAreaLayoutSpace.var1.var0 = *(a3 + 7);
    v5 = *(a3 + 2);
    v6 = *(a3 + 3);
    v7 = *(a3 + 4);
    result->_values.requestChartBodyLayoutSize = *(a3 + 5);
    result->_values.chartBodyLayoutSize = v7;
    result->_values.requestLayoutSize = v6;
    result->_values.layoutSize = v5;
    result->_values.modelSize.var0.var0 = *(a3 + 24);
    result->_values.modelSize.var1.var0 = *(a3 + 25);
    v8 = *(a3 + 104);
    *(&result->_values.layoutSettings.maxDepthRatioType + 1) = *(a3 + 113);
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